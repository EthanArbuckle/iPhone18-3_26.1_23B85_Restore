void sub_29CD27794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F6FF8;
  v13 = 22;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken22ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F6FF8;
  LODWORD(v7) = 22;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken22ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F6FF8, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)22,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F6FF8;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F6FF8;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CD27A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F7038;
  v13 = 23;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken23ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F7038;
  LODWORD(v7) = 23;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken23ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F7038, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)23,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F7038;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F7038;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CD27BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  ProgramKey<(_AGCStreamToken)23,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, &v13, &v12);
  v8 = a4;
  v9 = v6;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CD27E2C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29ED520D0](v1, v3);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)23,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 24);
  if (v8 && *(v8 + 120) == 1)
  {
    v9 = [objc_msgSend(a3 "binaryArchives")];
    v10 = 0x200000000000;
    if (!v9)
    {
      v10 = 1;
    }

    atomic_fetch_or(v8, v10);
    v11 = *(a1 + 24);
    v12 = [a3 destinationBinaryArchive];
    v13 = 0x400000000000;
    if (!v12)
    {
      v13 = 1;
    }

    atomic_fetch_or(v11, v13);
  }

  if ([a3 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [a3 setUseAIRNTInterfaces:0];
    }
  }

  v31 = 0;
  v32 = 0;
  (*(*a2 + 16))(a2, &v32, &v31);
  v14 = dispatch_data_create(v32, v31, 0, 0);
  [a3 setDriverKeyData:v14];
  if ([a3 airScript])
  {
    v29 = 0;
    v30 = 0;
    object = dispatch_data_create_map([a3 airScript], &v29, &v30);
    v15 = v29;
    v16 = *v29;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v15 + v16), &data, len, v17, v18))
    {
      v19 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v19);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v36;
    [a3 setVendorPluginFunctionId:&c];
  }

  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v27[3] = &unk_29F3422D0;
  v27[4] = a3;
  v27[5] = a4;
  if ([a3 function])
  {
    v20 = mach_absolute_time();
    v21 = *a1;
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v25[3] = &unk_29F342320;
    v25[4] = v27;
    v25[5] = v20;
    [v21 compileFunctionRequest:a3 compilerTask:0 completionHandler:v25];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v26[3] = &unk_29F3422F8;
    v26[4] = v27;
    v22 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v23 = *a1;
    v24 = [a3 driverKeyData];
    if (v22)
    {
      [v23 compileRequest:v24 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v26}];
    }

    else
    {
      [v23 compileRequest:v24 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v26}];
    }
  }

  dispatch_release(v14);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CD28564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken23ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[4] = &unk_2A23F7038;
  v1 = a1[6];
  if (v1)
  {
    a1[7] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken23ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 32) = &unk_2A23F7038;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  v3 = *(a2 + 48);
  v2 = *(a2 + 56);
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

void ProgramKey<(_AGCStreamToken)23,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  ProgramKey<(_AGCStreamToken)22,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, &v13, &v12);
  v8 = a4;
  v9 = v6;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CD28910(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29ED520D0](v1, v3);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)22,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 24);
  if (v8 && *(v8 + 120) == 1)
  {
    v9 = [objc_msgSend(a3 "binaryArchives")];
    v10 = 0x200000000000;
    if (!v9)
    {
      v10 = 1;
    }

    atomic_fetch_or(v8, v10);
    v11 = *(a1 + 24);
    v12 = [a3 destinationBinaryArchive];
    v13 = 0x400000000000;
    if (!v12)
    {
      v13 = 1;
    }

    atomic_fetch_or(v11, v13);
  }

  if ([a3 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [a3 setUseAIRNTInterfaces:0];
    }
  }

  v31 = 0;
  v32 = 0;
  (*(*a2 + 16))(a2, &v32, &v31);
  v14 = dispatch_data_create(v32, v31, 0, 0);
  [a3 setDriverKeyData:v14];
  if ([a3 airScript])
  {
    v29 = 0;
    v30 = 0;
    object = dispatch_data_create_map([a3 airScript], &v29, &v30);
    v15 = v29;
    v16 = *v29;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v15 + v16), &data, len, v17, v18))
    {
      v19 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v19);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v36;
    [a3 setVendorPluginFunctionId:&c];
  }

  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v27[3] = &unk_29F3422D0;
  v27[4] = a3;
  v27[5] = a4;
  if ([a3 function])
  {
    v20 = mach_absolute_time();
    v21 = *a1;
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v25[3] = &unk_29F342320;
    v25[4] = v27;
    v25[5] = v20;
    [v21 compileFunctionRequest:a3 compilerTask:0 completionHandler:v25];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v26[3] = &unk_29F3422F8;
    v26[4] = v27;
    v22 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v23 = *a1;
    v24 = [a3 driverKeyData];
    if (v22)
    {
      [v23 compileRequest:v24 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v26}];
    }

    else
    {
      [v23 compileRequest:v24 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v26}];
    }
  }

  dispatch_release(v14);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CD29048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken22ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[4] = &unk_2A23F6FF8;
  v1 = a1[6];
  if (v1)
  {
    a1[7] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken22ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 32) = &unk_2A23F6FF8;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  v3 = *(a2 + 48);
  v2 = *(a2 + 56);
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

void ProgramKey<(_AGCStreamToken)22,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

unsigned __int8 *AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(int a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, int8x16_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a1;
  v19 = a2;
  v383 = a3;
  if (a13)
  {
    v379 = a8;
    v21 = *(a13 + 44);
    v20 = *(a13 + 48);
    v22 = v21 == 0;
    v23 = v20 == 10 && v21 == 0;
    v303 = v23;
    v24 = v21 == 1;
    v25 = v20 == 9 && v21 == 0;
    v301 = v25;
    v26 = v20 == 9 && v21 == 1;
    v347 = v26;
    v27 = v21 == 2;
    v28 = v20 == 8 && v21 == 0;
    v357 = v28;
    v29 = v20 == 8 && v21 == 1;
    v348 = v29;
    v30 = v20 == 8 && v21 == 2;
    v317 = v30;
    v31 = v21 == 3;
    v32 = v20 == 7 && v21 == 0;
    v358 = v32;
    v33 = v20 == 7 && v21 == 1;
    v349 = v33;
    v34 = v20 == 7 && v21 == 2;
    v315 = v34;
    v35 = v20 == 7 && v21 == 3;
    v326 = v35;
    v36 = v21 == 4;
    v37 = v20 == 6 && v21 == 0;
    v359 = v37;
    v38 = v20 == 6 && v21 == 1;
    v350 = v38;
    v39 = v20 == 6 && v21 == 2;
    v312 = v39;
    v40 = v20 == 6 && v21 == 3;
    v322 = v40;
    v41 = v20 == 6 && v21 == 4;
    v333 = v41;
    v42 = v21 == 5;
    v43 = v20 == 5 && v21 == 0;
    v360 = v43;
    v44 = v20 == 5 && v21 == 1;
    v351 = v44;
    v45 = v20 == 5 && v21 == 2;
    v309 = v45;
    v46 = v20 == 5 && v21 == 3;
    v319 = v46;
    v47 = v20 == 5 && v21 == 4;
    v329 = v47;
    v48 = v20 == 5 && v21 == 5;
    v339 = v48;
    v49 = v21 == 6;
    v50 = v20 == 4 && v21 == 0;
    v361 = v50;
    v51 = v20 == 4 && v21 == 1;
    v352 = v51;
    v52 = v20 == 4 && v21 == 2;
    v306 = v52;
    v53 = v20 == 4 && v21 == 3;
    v314 = v53;
    v54 = v20 == 4 && v21 == 4;
    v324 = v54;
    v55 = v20 == 4 && v21 == 5;
    v334 = v55;
    v56 = v20 == 4 && v21 == 6;
    v342 = v56;
    v57 = v21 == 7;
    v58 = v20 == 3 && v21 == 0;
    v362 = v58;
    v59 = v20 == 3 && v21 == 1;
    v353 = v59;
    v60 = v20 == 3 && v21 == 2;
    v304 = v60;
    v61 = v20 == 3 && v21 == 3;
    v311 = v61;
    v62 = v20 == 3 && v21 == 4;
    v320 = v62;
    v63 = v20 == 3 && v21 == 5;
    v328 = v63;
    v64 = v20 == 3 && v21 == 6;
    v336 = v64;
    v65 = v20 == 3 && v21 == 7;
    v344 = v65;
    v66 = v21 == 8;
    v67 = v20 == 2 && v21 == 0;
    v363 = v67;
    v68 = v20 == 2 && v21 == 1;
    v354 = v68;
    v69 = v20 == 2 && v21 == 2;
    v300 = v69;
    v70 = v20 == 2 && v21 == 3;
    v308 = v70;
    v71 = v20 == 2 && v21 == 4;
    v316 = v71;
    v72 = v20 == 2 && v21 == 5;
    v323 = v72;
    v73 = v20 == 2 && v21 == 6;
    v330 = v73;
    v74 = v20 == 2 && v21 == 7;
    v338 = v74;
    v75 = v20 == 2 && v21 == 8;
    v343 = v75;
    v76 = v21 == 9;
    if (v20 != 1)
    {
      v22 = 0;
    }

    v376 = v22;
    v77 = v20 == 1 && v21 == 1;
    v355 = v77;
    v78 = v20 == 1 && v21 == 2;
    v346 = v78;
    v79 = v20 == 1 && v21 == 3;
    v305 = v79;
    v80 = v20 == 1 && v21 == 4;
    v310 = v80;
    v81 = v20 == 1 && v21 == 5;
    v318 = v81;
    v82 = v20 == 1 && v21 == 6;
    v325 = v82;
    v83 = v20 == 1 && v21 == 7;
    v332 = v83;
    v84 = v20 == 1 && v21 == 8;
    v337 = v84;
    v85 = v20 == 1 && v21 == 9;
    v341 = v85;
    v86 = v21 == 10;
    if (v20)
    {
      v87 = 0;
    }

    else
    {
      v87 = v24;
    }

    v356 = v87;
    if (v20)
    {
      v88 = 0;
    }

    else
    {
      v88 = v27;
    }

    v345 = v88;
    if (v20)
    {
      v31 = 0;
    }

    v302 = v31;
    if (v20)
    {
      v89 = 0;
    }

    else
    {
      v89 = v36;
    }

    v307 = v89;
    if (v20)
    {
      v90 = 0;
    }

    else
    {
      v90 = v42;
    }

    v313 = v90;
    if (v20)
    {
      v91 = 0;
    }

    else
    {
      v91 = v49;
    }

    v321 = v91;
    if (v20)
    {
      v92 = 0;
    }

    else
    {
      v92 = v57;
    }

    v327 = v92;
    if (v20)
    {
      v93 = 0;
    }

    else
    {
      v93 = v66;
    }

    v331 = v93;
    if (v20)
    {
      v94 = 0;
    }

    else
    {
      v94 = v76;
    }

    v335 = v94;
    if (v20)
    {
      v95 = 0;
    }

    else
    {
      v95 = v86;
    }

    v340 = v95;
    v96 = *(a13 + 20);
    v97 = *(a13 + 8);
    v98 = v96 != 0;
    v99 = *(a13 + 16);
    v100 = v97 == 0;
    v101 = *(a13 + 12);
    v102 = v96 | v99 | v101;
    v103 = *(a13 + 4);
    v104 = v97 | v103;
    v105 = *(a13 + 16) != 0;
    v299 = (v102 | v97 | v103) == 0;
    v106 = v97 == 1;
    v107 = v97 == 2;
    if (v103)
    {
      v108 = 0;
    }

    else
    {
      v108 = v106;
    }

    if (v103)
    {
      v109 = 0;
    }

    else
    {
      v109 = v107;
    }

    v110 = v103 == 1 && v100;
    v111 = v103 == 1 && v106;
    v112 = v103 == 1 && v107;
    if (v103 != 2)
    {
      v100 = 0;
      v106 = 0;
      v107 = 0;
    }

    v288 = v108;
    v289 = v100;
    if (v102)
    {
      v113 = 0;
    }

    else
    {
      v113 = v100;
    }

    v298 = v113;
    v286 = v106;
    v287 = v111;
    if (v102)
    {
      v114 = 0;
    }

    else
    {
      v114 = v106;
    }

    v297 = v114;
    if (v102)
    {
      v115 = 0;
    }

    else
    {
      v115 = v108;
    }

    v296 = v115;
    if (v102)
    {
      v116 = 0;
    }

    else
    {
      v116 = v110;
    }

    v295 = v116;
    if (v102)
    {
      v117 = 0;
    }

    else
    {
      v117 = v111;
    }

    v284 = v112;
    v285 = v109;
    if (v102)
    {
      v109 = 0;
    }

    v293 = v109;
    v294 = v117;
    if (v102)
    {
      v118 = 0;
    }

    else
    {
      v118 = v112;
    }

    v292 = v118;
    v283 = v107;
    if (v102)
    {
      v119 = 0;
    }

    else
    {
      v119 = v107;
    }

    v290 = v110;
    v291 = v119;
    v120 = v96 != 1;
    v121 = v96 != 2;
    if (v99)
    {
      v122 = 1;
    }

    else
    {
      v122 = v120;
    }

    if (v99)
    {
      v123 = 1;
    }

    else
    {
      v123 = v121;
    }

    v124 = v99 != 1 || v98;
    v125 = v99 != 1 || v120;
    v126 = v99 != 1 || v121;
    v127 = v99 == 2;
    v128 = v99 != 2 || v98;
    v129 = !v127 || v120;
    if (!v127)
    {
      v121 = 1;
    }

    if (v101)
    {
      v130 = 1;
    }

    else
    {
      v130 = v124;
    }

    if (v101)
    {
      v131 = 1;
    }

    else
    {
      v131 = v128;
    }

    if (v101)
    {
      v132 = 1;
    }

    else
    {
      v132 = v122;
    }

    if (v101)
    {
      v133 = 1;
    }

    else
    {
      v133 = v125;
    }

    if (v101)
    {
      v134 = 1;
    }

    else
    {
      v134 = v129;
    }

    v366 = v134;
    if (v101)
    {
      v135 = 1;
    }

    else
    {
      v135 = v123;
    }

    v370 = v135;
    if (v101)
    {
      v136 = 1;
    }

    else
    {
      v136 = v126;
    }

    v374 = v136;
    if (v101)
    {
      v137 = 1;
    }

    else
    {
      v137 = v121;
    }

    v380 = v137;
    v138 = v101 != 1 || *(a13 + 16) != 0;
    if (v101 == 1)
    {
      v139 = v124;
    }

    else
    {
      v139 = 1;
    }

    if (v101 == 1)
    {
      v140 = v128;
    }

    else
    {
      v140 = 1;
    }

    if (v101 == 1)
    {
      v141 = v122;
    }

    else
    {
      v141 = 1;
    }

    if (v101 == 1)
    {
      v142 = v125;
    }

    else
    {
      v142 = 1;
    }

    if (v101 == 1)
    {
      v143 = v129;
    }

    else
    {
      v143 = 1;
    }

    if (v101 == 1)
    {
      v144 = v123;
    }

    else
    {
      v144 = 1;
    }

    if (v101 == 1)
    {
      v145 = v126;
    }

    else
    {
      v145 = 1;
    }

    v368 = v145;
    v146 = v101 != 1 || v121;
    v372 = v146;
    if (v101 == 2)
    {
      v147 = v122;
    }

    else
    {
      v105 = 1;
      v124 = 1;
      v128 = 1;
      v147 = 1;
    }

    if (v101 == 2)
    {
      v148 = v123;
    }

    else
    {
      v125 = 1;
      v129 = 1;
      v148 = 1;
    }

    if (v101 == 2)
    {
      v149 = v126;
    }

    else
    {
      v149 = 1;
    }

    v150 = v101 != 2 || v121;
    v364 = v150;
    v151 = v104 == 0;
    v152 = !v138;
    v153 = !v105;
    v154 = v130 ^ 1;
    v155 = v139 ^ 1;
    v156 = v124 ^ 1;
    v157 = v131 ^ 1;
    v158 = v140 ^ 1;
    v159 = v128 ^ 1;
    v160 = v132 ^ 1;
    v161 = v141 ^ 1;
    v162 = v147 ^ 1;
    v163 = v133 ^ 1;
    v164 = v125 ^ 1;
    v165 = v366 ^ 1;
    v166 = v143 ^ 1;
    v167 = v129 ^ 1;
    v168 = v370 ^ 1;
    v169 = v144 ^ 1;
    v170 = v148 ^ 1;
    v171 = v374 ^ 1;
    v172 = v368 ^ 1;
    v173 = v149 ^ 1;
    v174 = v372 ^ 1;
    v175 = v364 ^ 1;
    v375 = v152;
    if (!v151)
    {
      v152 = 0;
    }

    v373 = v152;
    v371 = v153;
    if (!v151)
    {
      v153 = 0;
    }

    v369 = v153;
    if (v151)
    {
      v176 = v154;
    }

    else
    {
      v176 = 0;
    }

    v268 = v139 ^ 1;
    if (!v151)
    {
      v155 = 0;
    }

    v264 = v155;
    v270 = v156;
    if (!v151)
    {
      v156 = 0;
    }

    v265 = v156;
    v266 = v154;
    v273 = v157;
    if (!v151)
    {
      v157 = 0;
    }

    v267 = v157;
    v275 = v158;
    v276 = v159;
    if (v151)
    {
      v177 = v158;
    }

    else
    {
      v177 = 0;
    }

    if (v151)
    {
      v178 = v159;
    }

    else
    {
      v178 = 0;
    }

    v277 = v161;
    if (v151)
    {
      v179 = v160;
    }

    else
    {
      v179 = 0;
    }

    v274 = v179;
    if (v151)
    {
      v180 = v161;
    }

    else
    {
      v180 = 0;
    }

    v262 = v180;
    v263 = v170;
    v282 = v162;
    if (v151)
    {
      v181 = v162;
    }

    else
    {
      v181 = 0;
    }

    v367 = v133 ^ 1;
    if (!v151)
    {
      v163 = 0;
    }

    v280 = v163;
    v182 = v142 ^ 1;
    if (v151)
    {
      v183 = v142 ^ 1;
    }

    else
    {
      v183 = 0;
    }

    v184 = v164;
    if (v151)
    {
      v185 = v164;
    }

    else
    {
      v185 = 0;
    }

    if (v151)
    {
      v186 = v165;
    }

    else
    {
      v186 = 0;
    }

    if (v151)
    {
      v187 = v166;
    }

    else
    {
      v187 = 0;
    }

    if (v151)
    {
      v188 = v167;
    }

    else
    {
      v188 = 0;
    }

    if (v151)
    {
      v189 = v168;
    }

    else
    {
      v189 = 0;
    }

    if (v151)
    {
      v190 = v169;
    }

    else
    {
      v190 = 0;
    }

    if (v151)
    {
      v191 = v171;
    }

    else
    {
      v170 = 0;
      v191 = 0;
    }

    v278 = v191;
    if (v151)
    {
      v192 = v172;
    }

    else
    {
      v192 = 0;
    }

    v279 = v192;
    v269 = v173;
    if (v151)
    {
      v193 = v173;
    }

    else
    {
      v193 = 0;
    }

    v281 = v193;
    v271 = v380 ^ 1;
    v272 = v364 ^ 1;
    if (v151)
    {
      v194 = v380 ^ 1;
    }

    else
    {
      v194 = 0;
    }

    v365 = v194;
    if (v151)
    {
      v195 = v174;
    }

    else
    {
      v195 = 0;
    }

    if (v151)
    {
      v196 = v175;
    }

    else
    {
      v196 = 0;
    }

    v197 = 3072;
    if (*(a13 + 32) == 3)
    {
      v198 = v178;
      LOWORD(v381) = 7;
      if (*(a13 + 28) == 165)
      {
        v253 = v177;
        v254 = v181;
        v255 = v172;
        v256 = v174;
        v257 = v183;
        v258 = v196;
        v259 = v185;
        v260 = v186;
        v261 = v187;
        v199 = 0;
        v200 = 0;
        a8 = v379;
        v14 = a7;
        v15 = a6;
        v201 = a2;
        v16 = a5;
        v17 = a4;
        v18 = a1;
        if (*(a13 + 44) == 0 || v376 || v363 || v362 || v361 || v360 || v359 || v358 || v357 || v301 || v303 || v356 || v355 || v354 || v353 || v352 || v351 || v350 || v349 || v348 || v347 || v345 || v346 || v300 || v304 || v306 || v309 || v312 || v315 || v317 || v302 || v305 || v308 || v311 || v314 || v319 || v322 || v326 || v307 || v310 || v316 || v320 || v324 || v329 || v333 || v313 || v318 || v323 || v328 || v334 || v339 || v321 || v325 || v330 || v336 || v342 || v327 || v332 || v338 || v344 || v331 || v337 || v343 || v335 || v341 || v340)
        {
          v252 = v190;
          v202 = *(a13 + 36);
          v203 = *(a13 + 24);
          v204 = ((v202 >> 16) >> 8) & 0xF8;
          v197 = v204 | 0xC00;
          v381 = (8 * (v202 & 1)) | (32 * (v202 >> 16)) | (v202 >> 28) & 0x10 | 7;
          v199 = (*(a13 + 56) << 8) | ((*(a13 + 52) & 3) << 6) | *a13 & 1 | (v203 >> 5) & 6;
          if (!*(a13 + 44))
          {
LABEL_394:
            v205 = v375;
            goto LABEL_419;
          }

          v205 = v375;
          if (v376)
          {
            v197 = v204 | 0x1C00;
            goto LABEL_419;
          }

          if (v363)
          {
            v197 = v204 | 0x2C00;
            goto LABEL_419;
          }

          if (v362)
          {
            v197 = v204 | 0x3C00;
            goto LABEL_419;
          }

          if (v361)
          {
            v197 = v204 | 0x4C00;
            goto LABEL_419;
          }

          if (v360)
          {
            v197 = v204 | 0x5C00;
            goto LABEL_419;
          }

          if (v359)
          {
            v197 = v204 | 0x6C00;
            goto LABEL_419;
          }

          if (v358)
          {
            v197 = v204 | 0x7C00;
            goto LABEL_419;
          }

          if (v357)
          {
            v197 = v204 | 0x8C00;
            goto LABEL_419;
          }

          if (v301)
          {
            v197 = v204 | 0x9C00;
            goto LABEL_419;
          }

          if (v303)
          {
            v197 = v204 | 0xAC00;
            goto LABEL_419;
          }

          if (v356)
          {
            v197 = v204 | 0xBC00;
            goto LABEL_419;
          }

          if (v355)
          {
            v206 = -13312;
          }

          else if (v354)
          {
            v206 = -9216;
          }

          else
          {
            if (!v353)
            {
              if (v352)
              {
                v197 = v204 | 0xFC00;
                goto LABEL_454;
              }

              if (v351)
              {
                v199 = v199 | 8;
                goto LABEL_454;
              }

              if (v350)
              {
                v197 = v204 | 0x1C00;
                v199 = v199 | 8;
                goto LABEL_454;
              }

              if (v349)
              {
                v207 = 11264;
              }

              else
              {
                if (v348)
                {
                  v197 = v204 | 0x3C00;
                  v199 = v199 | 8;
                  goto LABEL_454;
                }

                if (v347)
                {
                  v207 = 19456;
                }

                else if (v345)
                {
                  v207 = 23552;
                }

                else if (v346)
                {
                  v207 = 27648;
                }

                else
                {
                  if (v300)
                  {
                    v197 = v204 | 0x7C00;
                    v199 = v199 | 8;
                    goto LABEL_454;
                  }

                  if (v304)
                  {
                    v207 = -29696;
                  }

                  else if (v306)
                  {
                    v207 = -25600;
                  }

                  else if (v309)
                  {
                    v207 = -21504;
                  }

                  else if (v312)
                  {
                    v207 = -17408;
                  }

                  else if (v315)
                  {
                    v207 = -13312;
                  }

                  else if (v317)
                  {
                    v207 = -9216;
                  }

                  else
                  {
                    if (!v302)
                    {
                      if (v305)
                      {
                        v197 = v204 | 0xFC00;
                        v199 = v199 | 8;
                        goto LABEL_454;
                      }

                      if (v308)
                      {
                        v199 = v199 | 0x10;
                        goto LABEL_454;
                      }

                      if (v311)
                      {
                        v197 = v204 | 0x1C00;
                        v199 = v199 | 0x10;
                        goto LABEL_454;
                      }

                      if (v314)
                      {
                        v208 = 11264;
                      }

                      else
                      {
                        if (v319)
                        {
                          v197 = v204 | 0x3C00;
                          v199 = v199 | 0x10;
                          goto LABEL_454;
                        }

                        if (v322)
                        {
                          v208 = 19456;
                        }

                        else if (v326)
                        {
                          v208 = 23552;
                        }

                        else if (v307)
                        {
                          v208 = 27648;
                        }

                        else
                        {
                          if (v310)
                          {
                            v197 = v204 | 0x7C00;
                            v199 = v199 | 0x10;
                            goto LABEL_454;
                          }

                          if (v316)
                          {
                            v208 = -29696;
                          }

                          else if (v320)
                          {
                            v208 = -25600;
                          }

                          else if (v324)
                          {
                            v208 = -21504;
                          }

                          else if (v329)
                          {
                            v208 = -17408;
                          }

                          else if (v333)
                          {
                            v208 = -13312;
                          }

                          else if (v313)
                          {
                            v208 = -9216;
                          }

                          else
                          {
                            if (!v318)
                            {
                              if (v323)
                              {
                                v197 = v204 | 0xFC00;
                                v199 = v199 | 0x10;
                                goto LABEL_454;
                              }

                              if (v328)
                              {
                                v199 = v199 | 0x18;
                                goto LABEL_454;
                              }

                              if (v334)
                              {
                                v197 = v204 | 0x1C00;
                                v199 = v199 | 0x18;
                                goto LABEL_454;
                              }

                              if (v339)
                              {
                                v209 = 11264;
                              }

                              else
                              {
                                if (v321)
                                {
                                  v197 = v204 | 0x3C00;
                                  v199 = v199 | 0x18;
                                  goto LABEL_454;
                                }

                                if (v325)
                                {
                                  v209 = 19456;
                                }

                                else if (v330)
                                {
                                  v209 = 23552;
                                }

                                else if (v336)
                                {
                                  v209 = 27648;
                                }

                                else
                                {
                                  if (v342)
                                  {
                                    v197 = v204 | 0x7C00;
                                    v199 = v199 | 0x18;
                                    goto LABEL_454;
                                  }

                                  if (v327)
                                  {
                                    v209 = -29696;
                                  }

                                  else if (v332)
                                  {
                                    v209 = -25600;
                                  }

                                  else if (v338)
                                  {
                                    v209 = -21504;
                                  }

                                  else if (v344)
                                  {
                                    v209 = -17408;
                                  }

                                  else if (v331)
                                  {
                                    v209 = -13312;
                                  }

                                  else if (v337)
                                  {
                                    v209 = -9216;
                                  }

                                  else
                                  {
                                    if (!v343)
                                    {
                                      if (v335)
                                      {
                                        v197 = v204 | 0xFC00;
                                        v199 = v199 | 0x18;
                                      }

                                      else
                                      {
                                        if (!v341)
                                        {
                                          a8 = v379;
                                          v14 = a7;
                                          v15 = a6;
                                          v201 = a2;
                                          v16 = a5;
                                          v17 = a4;
                                          v205 = v375;
                                          if (v340)
                                          {
                                            v197 = v204 | 0x1C00;
                                            v199 = v199 | 0x20;
                                          }

LABEL_419:
                                          v200 = ((v203 >> 5) << 15) | (((v203 >> 4) & 1) << 14) | (((v203 >> 3) & 1) << 13) | (((v203 >> 2) & 1) << 12) | (((v203 >> 1) & 1) << 11) | ((v203 & 1) << 10);
                                          if (v299)
                                          {
                                            v200 = ((v203 >> 5) << 15) | (((v203 >> 4) & 1) << 14) | (((v203 >> 3) & 1) << 13) | (((v203 >> 2) & 1) << 12) | (((v203 >> 1) & 1) << 11) | ((v203 & 1) << 10);
                                            v18 = a1;
                                            goto LABEL_1020;
                                          }

                                          v18 = a1;
                                          if (v298)
                                          {
                                            v200 = v200 & 0xFC03 | 4;
                                            goto LABEL_1020;
                                          }

                                          if (v297)
                                          {
                                            v200 = v200 & 0xFC03 | 8;
                                            goto LABEL_1020;
                                          }

                                          if (v296)
                                          {
                                            v200 = v200 & 0xFC03 | 0xC;
                                            goto LABEL_1020;
                                          }

                                          if (v295)
                                          {
                                            v200 = v200 & 0xFC03 | 0x10;
                                            goto LABEL_1020;
                                          }

                                          if (v294)
                                          {
                                            v200 = v200 & 0xFC03 | 0x14;
                                            goto LABEL_1020;
                                          }

                                          if (v293)
                                          {
                                            v200 = v200 & 0xFC03 | 0x18;
                                            goto LABEL_1020;
                                          }

                                          if (v292)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1C;
                                            goto LABEL_1020;
                                          }

                                          if (v291)
                                          {
                                            v200 = v200 & 0xFC03 | 0x20;
                                            goto LABEL_1020;
                                          }

                                          if (v373)
                                          {
                                            v200 = v200 & 0xFC03 | 0x24;
                                            goto LABEL_1020;
                                          }

                                          if ((v205 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x28;
                                            goto LABEL_1020;
                                          }

                                          if ((v205 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x2C;
                                            goto LABEL_1020;
                                          }

                                          if ((v205 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x30;
                                          }

                                          else if ((v375 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x34;
                                          }

                                          else if ((v375 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x38;
                                          }

                                          else if ((v375 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x3C;
                                          }

                                          else if ((v375 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x40;
                                          }

                                          else if ((v375 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x44;
                                          }

                                          else if (v369)
                                          {
                                            v200 = v200 & 0xFC03 | 0x48;
                                          }

                                          else if ((v371 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x4C;
                                          }

                                          else if ((v371 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x50;
                                          }

                                          else if ((v371 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x54;
                                          }

                                          else if ((v371 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x58;
                                          }

                                          else if ((v371 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x5C;
                                          }

                                          else if ((v371 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x60;
                                          }

                                          else if ((v371 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x64;
                                          }

                                          else if ((v371 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x68;
                                          }

                                          else if (v176)
                                          {
                                            v200 = v200 & 0xFC03 | 0x6C;
                                          }

                                          else if ((v266 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x70;
                                          }

                                          else if ((v266 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x74;
                                          }

                                          else if ((v266 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x78;
                                          }

                                          else if ((v266 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x7C;
                                          }

                                          else if ((v266 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x80;
                                          }

                                          else if ((v266 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x84;
                                          }

                                          else if ((v266 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x88;
                                          }

                                          else if ((v266 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x8C;
                                          }

                                          else if (v264)
                                          {
                                            v200 = v200 & 0xFC03 | 0x90;
                                          }

                                          else if ((v268 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x94;
                                          }

                                          else if ((v268 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x98;
                                          }

                                          else if ((v268 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x9C;
                                          }

                                          else if ((v268 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xA0;
                                          }

                                          else if ((v268 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xA4;
                                          }

                                          else if ((v268 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xA8;
                                          }

                                          else if ((v268 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xAC;
                                          }

                                          else if ((v268 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xB0;
                                          }

                                          else if (v265)
                                          {
                                            v200 = v200 & 0xFC03 | 0xB4;
                                          }

                                          else if ((v270 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xB8;
                                          }

                                          else if ((v270 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xBC;
                                          }

                                          else if ((v270 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xC0;
                                          }

                                          else if ((v270 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xC4;
                                          }

                                          else if ((v270 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xC8;
                                          }

                                          else if ((v270 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xCC;
                                          }

                                          else if ((v270 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xD0;
                                          }

                                          else if ((v270 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xD4;
                                          }

                                          else if (v267)
                                          {
                                            v200 = v200 & 0xFC03 | 0xD8;
                                          }

                                          else if ((v273 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xDC;
                                          }

                                          else if ((v273 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xE0;
                                          }

                                          else if ((v273 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xE4;
                                          }

                                          else if ((v273 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xE8;
                                          }

                                          else if ((v273 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xEC;
                                          }

                                          else if ((v273 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xF0;
                                          }

                                          else if ((v273 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xF4;
                                          }

                                          else if ((v273 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0xF8;
                                          }

                                          else if (v253)
                                          {
                                            v200 = v200 & 0xFC03 | 0xFC;
                                          }

                                          else if ((v275 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x100;
                                          }

                                          else if ((v275 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x104;
                                          }

                                          else if ((v275 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x108;
                                          }

                                          else if ((v275 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x10C;
                                          }

                                          else if ((v275 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x110;
                                          }

                                          else if ((v275 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x114;
                                          }

                                          else if ((v275 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x118;
                                          }

                                          else if ((v275 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x11C;
                                          }

                                          else if (v198)
                                          {
                                            v200 = v200 & 0xFC03 | 0x120;
                                          }

                                          else if ((v276 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x124;
                                          }

                                          else if ((v276 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x128;
                                          }

                                          else if ((v276 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x12C;
                                          }

                                          else if ((v276 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x130;
                                          }

                                          else if ((v276 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x134;
                                          }

                                          else if ((v276 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x138;
                                          }

                                          else if ((v276 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x13C;
                                          }

                                          else if ((v276 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x140;
                                          }

                                          else if (v274)
                                          {
                                            v200 = v200 & 0xFC03 | 0x144;
                                          }

                                          else if ((v160 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x148;
                                          }

                                          else if ((v160 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x14C;
                                          }

                                          else if ((v160 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x150;
                                          }

                                          else if ((v160 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x154;
                                          }

                                          else if ((v160 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x158;
                                          }

                                          else if ((v160 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x15C;
                                          }

                                          else if ((v160 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x160;
                                          }

                                          else if ((v160 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x164;
                                          }

                                          else if (v262)
                                          {
                                            v200 = v200 & 0xFC03 | 0x168;
                                          }

                                          else if ((v277 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x16C;
                                          }

                                          else if ((v277 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x170;
                                          }

                                          else if ((v277 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x174;
                                          }

                                          else if ((v277 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x178;
                                          }

                                          else if ((v277 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x17C;
                                          }

                                          else if ((v277 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x180;
                                          }

                                          else if ((v277 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x184;
                                          }

                                          else if ((v277 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x188;
                                          }

                                          else if (v254)
                                          {
                                            v200 = v200 & 0xFC03 | 0x18C;
                                          }

                                          else if ((v282 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x190;
                                          }

                                          else if ((v282 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x194;
                                          }

                                          else if ((v282 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x198;
                                          }

                                          else if ((v282 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x19C;
                                          }

                                          else if ((v282 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1A0;
                                          }

                                          else if ((v282 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1A4;
                                          }

                                          else if ((v282 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1A8;
                                          }

                                          else if ((v282 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1AC;
                                          }

                                          else if (v280)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1B0;
                                          }

                                          else if ((v367 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1B4;
                                          }

                                          else if ((v367 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1B8;
                                          }

                                          else if ((v367 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1BC;
                                          }

                                          else if ((v367 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1C0;
                                          }

                                          else if ((v367 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1C4;
                                          }

                                          else if ((v367 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1C8;
                                          }

                                          else if ((v367 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1CC;
                                          }

                                          else if ((v367 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1D0;
                                          }

                                          else if (v257)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1D4;
                                          }

                                          else if ((v182 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1D8;
                                          }

                                          else if ((v182 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1DC;
                                          }

                                          else if ((v182 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1E0;
                                          }

                                          else if ((v182 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1E4;
                                          }

                                          else if ((v182 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1E8;
                                          }

                                          else if ((v182 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1EC;
                                          }

                                          else if ((v182 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1F0;
                                          }

                                          else if ((v182 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1F4;
                                          }

                                          else if (v259)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1F8;
                                          }

                                          else if ((v184 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x1FC;
                                          }

                                          else if ((v184 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x200;
                                          }

                                          else if ((v184 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x204;
                                          }

                                          else if ((v184 & v287) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x208;
                                          }

                                          else if ((v184 & v286) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x20C;
                                          }

                                          else if ((v184 & v285) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x210;
                                          }

                                          else if ((v184 & v284) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x214;
                                          }

                                          else if ((v184 & v283) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x218;
                                          }

                                          else if (v260)
                                          {
                                            v200 = v200 & 0xFC03 | 0x21C;
                                          }

                                          else if ((v165 & v290) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x220;
                                          }

                                          else if ((v165 & v289) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x224;
                                          }

                                          else if ((v165 & v288) != 0)
                                          {
                                            v200 = v200 & 0xFC03 | 0x228;
                                          }

                                          else
                                          {
                                            if ((v165 & v287) == 0)
                                            {
                                              if ((v165 & v286) != 0)
                                              {
                                                v210 = -116;
                                              }

                                              else if ((v165 & v285) != 0)
                                              {
                                                v210 = -115;
                                              }

                                              else if ((v165 & v284) != 0)
                                              {
                                                v210 = -114;
                                              }

                                              else if ((v165 & v283) != 0)
                                              {
                                                v210 = -113;
                                              }

                                              else if (v261)
                                              {
                                                v210 = -112;
                                              }

                                              else if ((v166 & v290) != 0)
                                              {
                                                v210 = -111;
                                              }

                                              else if ((v166 & v289) != 0)
                                              {
                                                v210 = -110;
                                              }

                                              else if ((v166 & v288) != 0)
                                              {
                                                v210 = -109;
                                              }

                                              else if ((v166 & v287) != 0)
                                              {
                                                v210 = -108;
                                              }

                                              else if ((v166 & v286) != 0)
                                              {
                                                v210 = -107;
                                              }

                                              else if ((v166 & v285) != 0)
                                              {
                                                v210 = -106;
                                              }

                                              else if ((v166 & v284) != 0)
                                              {
                                                v210 = -105;
                                              }

                                              else if ((v166 & v283) != 0)
                                              {
                                                v210 = -104;
                                              }

                                              else if (v188)
                                              {
                                                v210 = -103;
                                              }

                                              else if ((v167 & v290) != 0)
                                              {
                                                v210 = -102;
                                              }

                                              else if ((v167 & v289) != 0)
                                              {
                                                v210 = -101;
                                              }

                                              else if ((v167 & v288) != 0)
                                              {
                                                v210 = -100;
                                              }

                                              else if ((v167 & v287) != 0)
                                              {
                                                v210 = -99;
                                              }

                                              else if ((v167 & v286) != 0)
                                              {
                                                v210 = -98;
                                              }

                                              else if ((v167 & v285) != 0)
                                              {
                                                v210 = -97;
                                              }

                                              else if ((v167 & v284) != 0)
                                              {
                                                v210 = -96;
                                              }

                                              else if ((v167 & v283) != 0)
                                              {
                                                v210 = -95;
                                              }

                                              else if (v189)
                                              {
                                                v210 = -94;
                                              }

                                              else if ((v168 & v290) != 0)
                                              {
                                                v210 = -93;
                                              }

                                              else if ((v168 & v289) != 0)
                                              {
                                                v210 = -92;
                                              }

                                              else if ((v168 & v288) != 0)
                                              {
                                                v210 = -91;
                                              }

                                              else if ((v168 & v287) != 0)
                                              {
                                                v210 = -90;
                                              }

                                              else if ((v168 & v286) != 0)
                                              {
                                                v210 = -89;
                                              }

                                              else if ((v168 & v285) != 0)
                                              {
                                                v210 = -88;
                                              }

                                              else if ((v168 & v284) != 0)
                                              {
                                                v210 = -87;
                                              }

                                              else if ((v168 & v283) != 0)
                                              {
                                                v210 = -86;
                                              }

                                              else if (v252)
                                              {
                                                v210 = -85;
                                              }

                                              else if ((v169 & v290) != 0)
                                              {
                                                v210 = -84;
                                              }

                                              else if ((v169 & v289) != 0)
                                              {
                                                v210 = -83;
                                              }

                                              else if ((v169 & v288) != 0)
                                              {
                                                v210 = -82;
                                              }

                                              else if ((v169 & v287) != 0)
                                              {
                                                v210 = -81;
                                              }

                                              else if ((v169 & v286) != 0)
                                              {
                                                v210 = -80;
                                              }

                                              else if ((v169 & v285) != 0)
                                              {
                                                v210 = -79;
                                              }

                                              else if ((v169 & v284) != 0)
                                              {
                                                v210 = -78;
                                              }

                                              else if ((v169 & v283) != 0)
                                              {
                                                v210 = -77;
                                              }

                                              else if (v170)
                                              {
                                                v210 = -76;
                                              }

                                              else if ((v263 & v290) != 0)
                                              {
                                                v210 = -75;
                                              }

                                              else if ((v263 & v289) != 0)
                                              {
                                                v210 = -74;
                                              }

                                              else if ((v263 & v288) != 0)
                                              {
                                                v210 = -73;
                                              }

                                              else if ((v263 & v287) != 0)
                                              {
                                                v210 = -72;
                                              }

                                              else if ((v263 & v286) != 0)
                                              {
                                                v210 = -71;
                                              }

                                              else if ((v263 & v285) != 0)
                                              {
                                                v210 = -70;
                                              }

                                              else if ((v263 & v284) != 0)
                                              {
                                                v210 = -69;
                                              }

                                              else if ((v263 & v283) != 0)
                                              {
                                                v210 = -68;
                                              }

                                              else if (v278)
                                              {
                                                v210 = -67;
                                              }

                                              else if ((v171 & v290) != 0)
                                              {
                                                v210 = -66;
                                              }

                                              else if ((v171 & v289) != 0)
                                              {
                                                v210 = -65;
                                              }

                                              else
                                              {
                                                if ((v171 & v288) != 0)
                                                {
                                                  v200 = v200 & 0xFC03 | 0x300;
                                                  goto LABEL_1019;
                                                }

                                                if ((v171 & v287) != 0)
                                                {
                                                  v210 = -63;
                                                }

                                                else if ((v171 & v286) != 0)
                                                {
                                                  v210 = -62;
                                                }

                                                else if ((v171 & v285) != 0)
                                                {
                                                  v210 = -61;
                                                }

                                                else if ((v171 & v284) != 0)
                                                {
                                                  v210 = -60;
                                                }

                                                else if ((v171 & v283) != 0)
                                                {
                                                  v210 = -59;
                                                }

                                                else if (v279)
                                                {
                                                  v210 = -58;
                                                }

                                                else if ((v255 & v290) != 0)
                                                {
                                                  v210 = -57;
                                                }

                                                else if ((v255 & v289) != 0)
                                                {
                                                  v210 = -56;
                                                }

                                                else if ((v255 & v288) != 0)
                                                {
                                                  v210 = -55;
                                                }

                                                else if ((v255 & v287) != 0)
                                                {
                                                  v210 = -54;
                                                }

                                                else if ((v255 & v286) != 0)
                                                {
                                                  v210 = -53;
                                                }

                                                else if ((v255 & v285) != 0)
                                                {
                                                  v210 = -52;
                                                }

                                                else if ((v255 & v284) != 0)
                                                {
                                                  v210 = -51;
                                                }

                                                else if ((v255 & v283) != 0)
                                                {
                                                  v210 = -50;
                                                }

                                                else if (v281)
                                                {
                                                  v210 = -49;
                                                }

                                                else if ((v269 & v290) != 0)
                                                {
                                                  v210 = -48;
                                                }

                                                else if ((v269 & v289) != 0)
                                                {
                                                  v210 = -47;
                                                }

                                                else if ((v269 & v288) != 0)
                                                {
                                                  v210 = -46;
                                                }

                                                else if ((v269 & v287) != 0)
                                                {
                                                  v210 = -45;
                                                }

                                                else if ((v269 & v286) != 0)
                                                {
                                                  v210 = -44;
                                                }

                                                else if ((v269 & v285) != 0)
                                                {
                                                  v210 = -43;
                                                }

                                                else if ((v269 & v284) != 0)
                                                {
                                                  v210 = -42;
                                                }

                                                else if ((v269 & v283) != 0)
                                                {
                                                  v210 = -41;
                                                }

                                                else if (v365)
                                                {
                                                  v210 = -40;
                                                }

                                                else if ((v271 & v290) != 0)
                                                {
                                                  v210 = -39;
                                                }

                                                else if ((v271 & v289) != 0)
                                                {
                                                  v210 = -38;
                                                }

                                                else if ((v271 & v288) != 0)
                                                {
                                                  v210 = -37;
                                                }

                                                else if ((v271 & v287) != 0)
                                                {
                                                  v210 = -36;
                                                }

                                                else if ((v271 & v286) != 0)
                                                {
                                                  v210 = -35;
                                                }

                                                else if ((v271 & v285) != 0)
                                                {
                                                  v210 = -34;
                                                }

                                                else if ((v271 & v284) != 0)
                                                {
                                                  v210 = -33;
                                                }

                                                else
                                                {
                                                  if ((v271 & v283) != 0)
                                                  {
                                                    v200 = v200 & 0xFC03 | 0x380;
                                                    goto LABEL_1019;
                                                  }

                                                  if (v195)
                                                  {
                                                    v210 = -31;
                                                  }

                                                  else if ((v256 & v290) != 0)
                                                  {
                                                    v210 = -30;
                                                  }

                                                  else if ((v256 & v289) != 0)
                                                  {
                                                    v210 = -29;
                                                  }

                                                  else if ((v256 & v288) != 0)
                                                  {
                                                    v210 = -28;
                                                  }

                                                  else if ((v256 & v287) != 0)
                                                  {
                                                    v210 = -27;
                                                  }

                                                  else if ((v256 & v286) != 0)
                                                  {
                                                    v210 = -26;
                                                  }

                                                  else if ((v256 & v285) != 0)
                                                  {
                                                    v210 = -25;
                                                  }

                                                  else if ((v256 & v284) != 0)
                                                  {
                                                    v210 = -24;
                                                  }

                                                  else if ((v256 & v283) != 0)
                                                  {
                                                    v210 = -23;
                                                  }

                                                  else if (v258)
                                                  {
                                                    v210 = -22;
                                                  }

                                                  else if ((v272 & v290) != 0)
                                                  {
                                                    v210 = -21;
                                                  }

                                                  else if ((v272 & v289) != 0)
                                                  {
                                                    v210 = -20;
                                                  }

                                                  else if ((v272 & v288) != 0)
                                                  {
                                                    v210 = -19;
                                                  }

                                                  else if ((v272 & v287) != 0)
                                                  {
                                                    v210 = -18;
                                                  }

                                                  else if ((v272 & v286) != 0)
                                                  {
                                                    v210 = -17;
                                                  }

                                                  else
                                                  {
                                                    if ((v272 & v285) != 0)
                                                    {
                                                      v200 = v200 & 0xFC03 | 0x3C0;
                                                      goto LABEL_1019;
                                                    }

                                                    if ((v272 & v284) != 0)
                                                    {
                                                      v210 = -15;
                                                    }

                                                    else
                                                    {
                                                      if ((v272 & v283) == 0)
                                                      {
                                                        goto LABEL_1019;
                                                      }

                                                      v210 = -14;
                                                    }
                                                  }
                                                }
                                              }

                                              v200 = v200 & 0xFC03 | (4 * v210);
                                              goto LABEL_1019;
                                            }

                                            v200 = v200 & 0xFC03 | 0x22C;
                                          }

LABEL_1019:
                                          a8 = v379;
                                          v14 = a7;
                                          v15 = a6;
                                          v201 = a2;
                                          v16 = a5;
                                          v17 = a4;
                                          v18 = a1;
                                          goto LABEL_1020;
                                        }

                                        v199 = v199 | 0x20;
                                      }

LABEL_454:
                                      a8 = v379;
                                      v14 = a7;
                                      v15 = a6;
                                      v201 = a2;
                                      v16 = a5;
                                      v17 = a4;
                                      goto LABEL_394;
                                    }

                                    v209 = -5120;
                                  }
                                }
                              }

                              v197 = v204 | v209;
                              v199 = v199 | 0x18;
                              goto LABEL_454;
                            }

                            v208 = -5120;
                          }
                        }
                      }

                      v197 = v204 | v208;
                      v199 = v199 | 0x10;
                      goto LABEL_454;
                    }

                    v207 = -5120;
                  }
                }
              }

              v197 = v204 | v207;
              v199 = v199 | 8;
              goto LABEL_454;
            }

            v206 = -5120;
          }

          v197 = v204 | v206;
          goto LABEL_454;
        }

LABEL_1020:
        *v201 = (v199 << 48) | (v200 << 32) | (v197 << 16) | v381;
        v19 = v201 + 8;
        a3 = v383;
        goto LABEL_1021;
      }
    }

    else
    {
      LOWORD(v381) = 7;
    }

    v199 = 0;
    v200 = 0;
    a8 = v379;
    v14 = a7;
    v15 = a6;
    v201 = a2;
    v16 = a5;
    v17 = a4;
    v18 = a1;
    goto LABEL_1020;
  }

LABEL_1021:
  v211 = a8;
  if (a3)
  {
    v212 = HIDWORD(a3);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = a3;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F1880;
    *&v387[52] = 0x800000000;
    v213 = AGXIotoInstruction_LDIMM::emit(v387, v19, COERCE_DOUBLE(12), a10, a11, a12);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = v212;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F1890;
    *&v387[52] = 0x800000000;
    v19 = AGXIotoInstruction_LDIMM::emit(v387, v213, COERCE_DOUBLE(14), v214, v215, v216);
  }

  if (v17)
  {
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = v17;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F18A0;
    *&v387[52] = 0x800000000;
    v217 = AGXIotoInstruction_LDIMM::emit(v387, v19, COERCE_DOUBLE(4), a10, a11, a12);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = HIDWORD(v17);
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F18B0;
    *&v387[52] = 0x800000000;
    v19 = AGXIotoInstruction_LDIMM::emit(v387, v217, COERCE_DOUBLE(6), v218, v219, v220);
  }

  if (v16)
  {
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = v16;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F18C0;
    *&v387[52] = 0x800000000;
    v221 = AGXIotoInstruction_LDIMM::emit(v387, v19, COERCE_DOUBLE(16), a10, a11, a12);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = HIDWORD(v16);
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F18D0;
    *&v387[52] = 0x800000000;
    v19 = AGXIotoInstruction_LDIMM::emit(v387, v221, COERCE_DOUBLE(18), v222, v223, v224);
  }

  if (v15)
  {
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = v15;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F18E0;
    *&v387[52] = 0x800000000;
    v225 = AGXIotoInstruction_LDIMM::emit(v387, v19, COERCE_DOUBLE(8), a10, a11, a12);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = HIDWORD(v15);
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F18F0;
    *&v387[52] = 0x800000000;
    v19 = AGXIotoInstruction_LDIMM::emit(v387, v225, COERCE_DOUBLE(10), v226, v227, v228);
  }

  if (v14)
  {
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = v14;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F1900;
    *&v387[52] = 0x800000000;
    v229 = AGXIotoInstruction_LDIMM::emit(v387, v19, COERCE_DOUBLE(24), a10, a11, a12);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = HIDWORD(v14);
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F1910;
    *&v387[52] = 0x800000000;
    v19 = AGXIotoInstruction_LDIMM::emit(v387, v229, COERCE_DOUBLE(26), v230, v231, v232);
  }

  if (v211)
  {
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = v211;
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F1920;
    *&v387[52] = 0x800000000;
    v233 = AGXIotoInstruction_LDIMM::emit(v387, v19, COERCE_DOUBLE(28), a10, a11, a12);
    memset(v387, 0, 28);
    *&v387[28] = 0x300000069;
    *&v387[60] = 0;
    *&v387[64] = HIDWORD(v211);
    LODWORD(v388) = -1;
    *&v387[36] = xmmword_29D2F1930;
    *&v387[52] = 0x800000000;
    v19 = AGXIotoInstruction_LDIMM::emit(v387, v233, COERCE_DOUBLE(30), v234, v235, v236);
  }

  if (v18)
  {
    if (a14 == 0xFFFFFFFFLL)
    {
      *&v387[36] = 0;
      memset(v387, 0, 32);
      *&v387[28] = 0x300000020;
      return AGXIotoInstruction_CNDRET_0::emit(v387, v19);
    }

    goto LABEL_1057;
  }

  *&v389[4] = 0u;
  memset(v387, 0, sizeof(v387));
  *&v387[28] = 0x400000090;
  v387[36] = 1;
  *&v387[40] = 20;
  *&v387[48] = 0x200000002;
  v388 = 3;
  *v389 = 0x200000007;
  *&v389[12] = 8;
  v238 = AGXIotoInstruction_RLD_1::emit(v387, v19);
  LODWORD(v388) = -1;
  memset(v387, 0, 28);
  *&v387[28] = 0x300000069;
  *&v387[60] = 0;
  *&v387[36] = xmmword_29D2F1940;
  *&v387[52] = 0x800000000;
  v242 = AGXIotoInstruction_LDIMM::emit(v387, v238, COERCE_DOUBLE(0x800000000), v239, v240, v241);
  *&v389[4] = 0u;
  memset(v387, 0, sizeof(v387));
  *&v387[28] = 0x400000090;
  v387[36] = 1;
  *&v387[40] = 22;
  *&v387[48] = 0x100000002;
  v388 = 4;
  *v389 = 0x100000007;
  *&v389[12] = 8;
  v243 = AGXIotoInstruction_RLD_1::emit(v387, v242);
  memset(v387, 0, 32);
  *&v387[36] = 1;
  *&v387[40] = 20;
  *&v387[28] = 0x20000001BLL;
  *&v387[48] = xmmword_29D2F1950;
  *&v387[64] = 0;
  v387[24] = 1;
  result = AGXIotoInstruction_CNDCALL_0::emit(v387, v243);
  *result = 234881214;
  v19 = result + 4;
  if (a14 != 0xFFFFFFFFLL)
  {
LABEL_1057:
    memset(v387, 0, 32);
    *&v387[36] = 1;
    *&v387[40] = a14 & 0xFFFFFFFFFFFFLL;
    *&v387[28] = 0x300000008;
    return AGXIotoInstruction_B_1::emit(v387, v19);
  }

  v244 = 20;
  if (v383)
  {
    v245 = 20;
  }

  else
  {
    v245 = 0;
  }

  v246 = v245 | (8 * (a13 != 0));
  if (v17)
  {
    v247 = 20;
  }

  else
  {
    v247 = 0;
  }

  if (a5)
  {
    v248 = 20;
  }

  else
  {
    v248 = 0;
  }

  if (a6)
  {
    v249 = 20;
  }

  else
  {
    v249 = 0;
  }

  if (v14)
  {
    v250 = 20;
  }

  else
  {
    v250 = 0;
  }

  if (!v211)
  {
    v244 = 0;
  }

  v251 = &a2[v247 + 38 + v248 + v249 + v250 + v244 + v246];
  if (v19 < v251)
  {
    do
    {
      *&v387[36] = 0;
      memset(v387, 0, 32);
      *&v387[28] = 0x300000072;
      result = AGXIotoInstruction_NOP_0::emit(v387, v19);
      v19 = result;
    }

    while (result < v251);
  }

  return result;
}

unsigned __int8 *AGXIotoInstruction_LDIMM::emit(AGXIotoInstruction_LDIMM *this, unsigned __int8 *a2, double a3, double a4, double a5, int8x16_t a6)
{
  v338 = *MEMORY[0x29EDCA608];
  v6 = *(this + 17);
  if (v6 <= 1)
  {
    if (!v6)
    {
      if (*(this + 52))
      {
        *a2 = 4;
        return a2 + 2;
      }

      v42 = vmovn_s32(vtstq_s32(*(this + 8), *(this + 8)));
      v42.i16[0] = vmaxv_u16(v42);
      v43 = (*(this + 8) == 3) & ~v42.i32[0];
      if (*(this + 14) != 8)
      {
        v43 = 0;
      }

      if (*(this + 11) == 2)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      if (*(this + 15) | *(this + 1))
      {
        v45 = 0;
      }

      else
      {
        v45 = *(this + 12) == 2;
      }

      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      if (*(this + 7) == 105)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v13 = 4;
      if (v47 == 1 && (*this & 1 | *(this + 24)) == 0)
      {
        v49 = *(this + 16);
        if (v49 <= 0x7F && (*(this + 18) & 0x1E1) == 0)
        {
          v13 = (8 * *(this + 18)) & 0xF0 | (v49 << 8) | 4;
        }
      }

LABEL_87:
      *a2 = v13;
      return a2 + 2;
    }

    if (v6 == 1)
    {
      if (*(this + 52))
      {
        *a2 = 12;
        return a2 + 2;
      }

      v7 = vmovn_s32(vtstq_s32(*(this + 8), *(this + 8)));
      v7.i16[0] = vmaxv_u16(v7);
      v8 = (*(this + 8) == 3) & ~v7.i32[0];
      if (*(this + 14) != 8)
      {
        v8 = 0;
      }

      if (*(this + 11) == 2)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (*(this + 15) | *(this + 1))
      {
        v10 = 0;
      }

      else
      {
        v10 = *(this + 12) == 2;
      }

      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      if (*(this + 7) == 105)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = 12;
      if (v12 == 1 && (*this & 1 | *(this + 24)) == 0)
      {
        v15 = *(this + 16);
        if (v15 <= 0x7F && (*(this + 18) & 0x1E1) == 0)
        {
          v13 = (8 * *(this + 18)) & 0xF0 | (v15 << 8) | 0xC;
        }
      }

      goto LABEL_87;
    }

LABEL_38:
    v25 = *this;
    v26 = *(this + 4);
    *v324 = v26;
    *&v324[16] = *(this + 5);
    v27 = *(this + 24);
    a6.i64[0] = *(this + 28);
    v28 = *(this + 9);
    v30 = *(this + 11);
    v29 = *(this + 12);
    v31 = *(this + 52);
    v32 = *(this + 14);
    v33 = *(this + 15);
    v34 = *(this + 16);
    if (v31)
    {
      v36 = 4;
      v35 = *&v324[16];
    }

    else
    {
      v26 = *&v324[4];
      v35 = *&v324[16];
      v36 = 4;
      if (a6.i32[1] == 3)
      {
        v26 = vbicq_s8(xmmword_29D2F1960, vceqzq_s32(*&v324[4]));
        v37 = (vaddvq_s32(v26) & 0xF) == 0 && v32 == 8;
        v38 = v37 && v30 == 2;
        v39 = v38 && (v33 | *v324) == 0;
        if (v39 && v29 == 2)
        {
          if ((v28 & 0x1E1) != 0)
          {
            v41 = 4;
          }

          else
          {
            v41 = (8 * v28) | (v34 << 8) | 4;
          }

          if (v34 > 0x7F)
          {
            v41 = 4;
          }

          if (v25 & 1 | v27)
          {
            v41 = 4;
          }

          if (a6.i32[0] == 105)
          {
            v36 = v41;
          }

          else
          {
            v36 = 4;
          }
        }
      }
    }

    v123 = *(this + 40);
    v26.i32[0] = v35;
    v124 = vextq_s8(vextq_s8(v26, v26, 4uLL), a6, 0xCuLL);
    v124.i32[3] = *(this + 12);
    v125 = vceqq_s32(v124, xmmword_29D2F1970);
    if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*v324), v125)))) & 1) == 0 && v34 == BYTE1(v36) && v32 == 8 && !v33 && !((v25 | v31) & 1 | v27) && v30 == 2 && ((v36 >> 3) & 0x1E) == v28)
    {
      goto LABEL_249;
    }

    *v324 = *(this + 4);
    *&v324[16] = *(this + 5);
    if (v31)
    {
      v36 = 12;
      v126 = *&v324[16];
    }

    else
    {
      v126 = *&v324[16];
      v36 = 12;
      if (a6.i32[1] == 3)
      {
        v125 = xmmword_29D2F1960;
        if ((vaddvq_s32(vbicq_s8(xmmword_29D2F1960, vceqzq_s32(*&v324[4]))) & 0xF) == 0)
        {
          if ((v28 & 0x1E1) != 0)
          {
            v127 = 12;
          }

          else
          {
            v127 = (8 * v28) | (v34 << 8) | 0xC;
          }

          if (v30 != 2)
          {
            v127 = 12;
          }

          if (v32 != 8)
          {
            v127 = 12;
          }

          if (v34 > 0x7F)
          {
            v127 = 12;
          }

          if (v25 & 1 | v27)
          {
            v127 = 12;
          }

          if (a6.i32[0] != 105)
          {
            v127 = 12;
          }

          if (v29 != 2)
          {
            v127 = 12;
          }

          if (v33 | *v324)
          {
            v36 = 12;
          }

          else
          {
            v36 = v127;
          }
        }
      }
    }

    v125.i32[0] = v126;
    v149 = vextq_s8(vextq_s8(v125, v125, 4uLL), a6, 0xCuLL);
    v149.i32[3] = v29;
    if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*v324), vceqq_s32(v149, xmmword_29D2F1970))))) & 1) == 0 && v34 == BYTE1(v36) && v32 == 8 && !v33 && !((v25 | v31) & 1 | v27) && v30 == 2 && ((v36 >> 3) & 0x1E) == v28)
    {
LABEL_249:
      *a2 = v36;
      return a2 + 2;
    }

    v318 = v32;
    v288 = v28;
    v289 = v25;
    v281 = v123;
    v150 = *(this + 4);
    v151 = *(this + 5);
    v152 = *(this + 12);
    v153 = HIDWORD(*(this + 4));
    v154 = v150.i32[1] == 0;
    v155 = (v151 | v150.i32[3]) == 0;
    v156 = v151 | v150.i32[3] | v152;
    v157 = (v156 | v150.i32[1] | v150.i32[0]) == 0;
    v158 = v153 == 1;
    v159 = v153 == 2;
    if (v150.i32[0])
    {
      v160 = 0;
    }

    else
    {
      v160 = v153 == 1;
    }

    if (v150.i32[0])
    {
      v161 = 0;
    }

    else
    {
      v161 = v153 == 2;
    }

    v162 = v150.i32[0] == 1 && v150.i32[1] == 0;
    v163 = v150.i32[0] == 1 && v158;
    v164 = v150.i32[0] == 1 && v159;
    if (v150.i32[0] == 2)
    {
      v165 = v159;
    }

    else
    {
      v154 = 0;
      v158 = 0;
      v165 = 0;
    }

    if (v156)
    {
      v166 = 0;
    }

    else
    {
      v166 = v162;
    }

    v321 = v166;
    if (v156)
    {
      v167 = 0;
    }

    else
    {
      v167 = v154;
    }

    v311 = v167;
    if (v156)
    {
      v168 = 0;
    }

    else
    {
      v168 = v160;
    }

    if (v156)
    {
      v169 = 0;
    }

    else
    {
      v169 = v163;
    }

    v305 = v169;
    v307 = v168;
    if (v156)
    {
      v170 = 0;
    }

    else
    {
      v170 = v158;
    }

    if (v156)
    {
      v171 = 0;
    }

    else
    {
      v171 = v161;
    }

    v295 = v171;
    if (v156)
    {
      v172 = 0;
    }

    else
    {
      v172 = v164;
    }

    v293 = v172;
    if (v156)
    {
      v173 = 0;
    }

    else
    {
      v173 = v165;
    }

    v301 = v173;
    v303 = v170;
    v174 = v152 == 1 && (v151 | v150.i32[3]) == 0;
    if (v152 != 2)
    {
      v155 = 0;
    }

    v282 = v33;
    if (v151)
    {
      v175 = 0;
    }

    else
    {
      v175 = HIDWORD(*(this + 4)) == 1;
    }

    v177 = !v175 || v152 != 0;
    if (v150.i64[0])
    {
      v178 = 0;
    }

    else
    {
      v178 = v174;
    }

    v291 = v178;
    if (v150.i64[0])
    {
      v179 = 0;
    }

    else
    {
      v179 = v155;
    }

    v180 = v177 ^ 1;
    if (v150.i64[0])
    {
      v181 = 0;
    }

    else
    {
      v181 = v177 ^ 1;
    }

    v297 = v181;
    v299 = v179;
    v182 = -32764;
    if (a6.i32[1] == 3 && v27 <= 0x3Fu && a6.i32[0] == 105 && (v29 - 1) <= 1 && v318 == 8 && v30 == 2 && !v33)
    {
      v183 = v174 && v162;
      v184 = v174 && v154;
      v283 = v34;
      v284 = v28;
      v185 = v174 & v160;
      v186 = v174 && v163;
      v187 = v174 && v158;
      v285 = v29;
      v188 = v174 && v161;
      v189 = v174 && v164;
      v286 = v27;
      v27 = v174 && v165;
      v190 = v155 & v160;
      v191 = v155 && v161;
      v192 = v155 && v164;
      v193 = v155 && v165;
      v279 = v184;
      v276 = v186;
      v277 = v185;
      v194 = (v157 || v321 || v311) | v307 | v305 | v303 | (v295 || v293 || v301 || v291) | v183 | v184 | v185 | v186;
      v273 = v189;
      v274 = v188;
      v195 = v187;
      v196 = v187 | v188;
      v34 = v283;
      v28 = v284;
      v197 = v196 | v189;
      v30 = 2;
      v29 = v285;
      v272 = v27;
      v198 = v194 | v197 | v27 | v299;
      LOBYTE(v27) = v286;
      v182 = -32764;
      v271 = v192;
      v199 = v198 | (v155 && v162 || v155 && v154) | v155 & v160 | (v155 && v163) | (v155 && v158) | v191;
      v200 = v192 | (v155 && v165) | v297 | v180 & v162 | v180 & v154;
      v201 = v180 & v160;
      v202 = v200 | v180 & v160;
      v203 = 0;
      LOWORD(v160) = 0;
      v204 = 2;
      if ((v199 | (v202 | v180 & v163)))
      {
        v204 = (v284 >> 4) & 0x18 | (4 * (v288 & 1)) & 0x1F | (((v288 >> 5) & 3) << 6) | (v283 >> 25 << 9) | (32 * (v31 & 1)) | 2;
        v203 = (v283 >> 13) & 0xFFF | ((v286 > 0x1Fu) << 15) | (((v286 >> 4) & 1) << 14) | (((v286 >> 3) & 1) << 13);
        if (v285 == 1)
        {
          v205 = -32764;
        }

        else
        {
          v205 = -32756;
        }

        v182 = (8 * v288) & 0xF0 | (v283 << 8) | v205;
        v160 = (v286 << 13) & 0x1F8000 | ((v286 & 1) << 13) & 0xBFFE | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1;
        if (v157)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1;
        }

        else if (v321)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x20;
        }

        else if (v311)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x40;
        }

        else if (v307)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x60;
        }

        else if (v305)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x80;
        }

        else if (v303)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0xA0;
        }

        else if (v295)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0xC0;
        }

        else if (v293)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0xE0;
        }

        else if (v301)
        {
          LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x100;
        }

        else
        {
          if (v291)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x120;
          }

          else if (v183)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x140;
          }

          else if (v279)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x160;
          }

          else if (v277)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x180;
          }

          else if (v276)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x1A0;
          }

          else if (v195)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x1C0;
          }

          else if (v274)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x1E0;
          }

          else if (v273)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x200;
          }

          else if (v272)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x220;
          }

          else if (v299)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x240;
          }

          else if (v155 && v162)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x260;
          }

          else if (v155 && v154)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x280;
          }

          else if (v190)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x2A0;
          }

          else if (v155 && v163)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x2C0;
          }

          else if (v155 && v158)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x2E0;
          }

          else if (v191)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x300;
          }

          else if (v271)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x320;
          }

          else if (v193)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x340;
          }

          else if (v297)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x360;
          }

          else if ((v180 & v162) != 0)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x380;
          }

          else if ((v180 & v154) != 0)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x3A0;
          }

          else if (v201)
          {
            LOWORD(v160) = (v286 << 13) & 0x8000 | ((v286 & 1) << 13) & 0xBC1E | (((v286 >> 1) & 1) << 14) | (v283 >> 6) & 0x1E | (v283 >> 1) & 0xC00 | v289 & 1 | 0x3C0;
          }

          else if ((v180 & v163) != 0)
          {
            LOWORD(v160) = v160 | 0x3E0;
          }

          LOBYTE(v27) = v286;
          v30 = 2;
          v29 = v285;
          v34 = v283;
          v28 = v284;
        }
      }
    }

    else
    {
      v203 = 0;
      LOWORD(v160) = 0;
      v204 = 2;
    }

    v212 = (v203 << 48) | (v160 << 32) | (v204 << 16) | v182;
    *v336 = v212;
    if ((v204 & 3) != 2 || (v182 & 7) != 4)
    {
LABEL_554:
      v150.i64[0] = *(this + 28);
      v224 = *(this + 11);
      v225 = *(this + 52);
      v227 = *(this + 14);
      v226 = *(this + 15);
      v229 = v227 < 6 || (v227 & 0xFFFFFFFE) == 6;
      if (v225 & 1 | (v226 != 0) || v224 != 4)
      {
        v231 = 0;
        v234 = (*(this + 52) & 1) == 0 && v224 == 5 && v150.i32[1] == 1;
        v230 = v234 && v229;
      }

      else
      {
        v230 = 0;
        v231 = v150.i32[1] == 1 && v229;
      }

      v235 = 0;
      if (!v226 && v227 == 8)
      {
        v235 = v224 == 2 && v150.i32[1] == 3;
      }

      if (v225 & 1 | (v226 != 0) | (v227 != 8))
      {
        v237 = 0;
      }

      else
      {
        v237 = v224 == 3 && v150.i32[1] == 1;
      }

      LOWORD(v239) = 0;
      v240 = *(this + 5);
      v241 = *(this + 24);
      v242 = *(this + 9);
      v243 = *(this + 12);
      v244 = *(this + 4);
      v245 = *this;
      LOWORD(v246) = -32764;
      v247 = *(this + 16);
      v323 = *(this + 40);
      if (v150.i32[0] == 105 && (v243 - 1) <= 1)
      {
        v248 = v230 | (v235 || v237);
        v249 = 3;
        LOWORD(v250) = 0;
        LOWORD(v251) = 0;
        if ((v231 | v248))
        {
          v246 = (((v241 & 1) << 10) | ((v247 & 3) << 8)) & 0xC7FF | (((v241 >> 1) & 1) << 11) & 0xFFFFCFFF | (((v241 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v241 >> 3) & 1) << 13) | (v241 >> 4) & 8 | (v241 >> 4 << 14) | 0xFFFF8004;
          if (v243 == 1)
          {
            v252 = 3;
          }

          else
          {
            v252 = 515;
          }

          if (v244.i32[0])
          {
            if (v244.i32[0] == 1)
            {
              LOWORD(v246) = (((v241 & 1) << 10) | ((v247 & 3) << 8)) & 0xC79F | (((v241 >> 1) & 1) << 11) & 0xCF9F | (((v241 >> 2) & 1) << 12) & 0xDF9F | (((v241 >> 3) & 1) << 13) | (v241 >> 4) & 8 | ((v241 >> 4) << 14) | 0x8004 | 0x40;
            }

            else if (v244.i32[0] == 2)
            {
              LOWORD(v246) = (((v241 & 1) << 10) | ((v247 & 3) << 8)) & 0xC79F | (((v241 >> 1) & 1) << 11) & 0xCF9F | (((v241 >> 2) & 1) << 12) & 0xDF9F | (((v241 >> 3) & 1) << 13) | (v241 >> 4) & 8 | ((v241 >> 4) << 14) | 0x8004;
            }
          }

          else
          {
            LOWORD(v246) = (((v241 & 1) << 10) | ((v247 & 3) << 8)) & 0xC79F | (((v241 >> 1) & 1) << 11) & 0xCF9F | (((v241 >> 2) & 1) << 12) & 0xDF9F | (((v241 >> 3) & 1) << 13) | (v241 >> 4) & 8 | ((v241 >> 4) << 14) | 0x8004 | 0x20;
          }

          v239 = (v247 >> 18) & 0x800 | (v247 >> 26) & 7 | (v247 >> 18 << 15);
          if (v244.i32[1] == 1)
          {
            v239 |= 0x40u;
          }

          else if (!v244.i32[1])
          {
            v239 |= 0x20u;
          }

          v250 = (16 * (v245 & 1)) | (v247 >> 22) & 0xF | (v241 >> 5 << 15);
          if (v244.i32[2] == 1)
          {
            v250 |= 0x40u;
          }

          else if (!v244.i32[2])
          {
            v250 |= 0x20u;
          }

          if (v244.i32[3])
          {
            if (v244.i32[3] == 1)
            {
              v250 = v250 & 0xFFFFFE7F | 0x100;
            }

            else if (v244.i32[3] == 2)
            {
              v250 &= 0xFFFFFE7F;
            }
          }

          else
          {
            v250 = v250 & 0xFFFFFE7F | 0x80;
          }

          v253 = v241 & 0x40 | v252;
          if (v240)
          {
            if (v240 == 1)
            {
              v250 = v250 & 0xFFFFF9FF | 0x400;
            }

            else if (v240 == 2)
            {
              v250 &= 0xFFFFF9FF;
            }
          }

          else
          {
            v250 = v250 & 0xFFFFF9FF | 0x200;
          }

          v249 = (v247 >> 28) & 4 | (v247 >> 26) & 0x20 | (v247 >> 19 << 13) | v253;
          v251 = v247 >> 2;
          if (v231)
          {
            LOWORD(v246) = (8 * v242) & 0x90 | v246 & 0xFF6F;
            v249 |= (v242 >> 4) & 0x18 | (((v242 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v242 & 1) << 8) | (v242 >> 5) & 0x400;
            v239 = (v242 >> 7) & 0x18 | (v242 >> 5) & 0x380 | (v242 >> 6) & 0x400 | v239 & 0x1FFFF867;
            v250 = v250 & 0xFFFF87FF | (((v242 >> 2) & 3) << 11) & 0xFFFF9FFF | (((v242 >> 5) & 1) << 13) & 0xFFFFBFFF | (((v242 >> 9) & 1) << 14);
            if (v227 <= 7)
            {
              if (v227)
              {
                switch(v227)
                {
                  case 1u:
                    LOWORD(v239) = v239 & 0x8FFF | 0x1000;
                    break;
                  case 2u:
                    LOWORD(v239) = v239 & 0x8FFF | 0x2000;
                    break;
                  case 3u:
                    LOWORD(v239) = v239 & 0x8FFF | 0x3000;
                    break;
                  case 4u:
                    LOWORD(v239) = v239 & 0x8FFF | 0x4000;
                    break;
                  case 5u:
                    LOWORD(v239) = v239 & 0x8FFF | 0x5000;
                    break;
                  case 6u:
                    LOWORD(v239) = v239 & 0x8FFF | 0x6000;
                    break;
                  default:
                    LOWORD(v239) = v239 | 0x7000;
                    break;
                }
              }

              else
              {
                LOWORD(v239) = v239 & 0x8FFF;
              }
            }
          }

          else if (v248)
          {
            if (v230)
            {
              LOWORD(v246) = (8 * v242) & 0x90 | v246 & 0xFF6F;
              v249 = (v242 >> 4) & 0x18 | v249 & 0x3FFE667 | 0x800 | (((v242 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v242 & 1) << 8);
              v250 = v250 & 0xFFFF87FF | (((v242 >> 2) & 3) << 11) & 0xFFFF9FFF | (((v242 >> 5) & 1) << 13) & 0xFFFFBFFF | (((v242 >> 9) & 1) << 14);
              v239 = v239 & 0x1FFFEF67 | ((v226 & 1) << 12) | (v242 >> 7) & 0x18 | (v242 >> 5) & 0x80;
              if (v227 <= 7)
              {
                if (v227)
                {
                  switch(v227)
                  {
                    case 1u:
                      LOWORD(v239) = v239 & 0xF8FF | 0x100;
                      break;
                    case 2u:
                      LOWORD(v239) = v239 & 0xF8FF | 0x200;
                      break;
                    case 3u:
                      LOWORD(v239) = v239 & 0xF8FF | 0x300;
                      break;
                    case 4u:
                      LOWORD(v239) = v239 & 0xF8FF | 0x400;
                      break;
                    case 5u:
                      LOWORD(v239) = v239 & 0xF8FF | 0x500;
                      break;
                    case 6u:
                      LOWORD(v239) = v239 & 0xF8FF | 0x600;
                      break;
                    default:
                      LOWORD(v239) = v239 | 0x700;
                      break;
                  }
                }

                else
                {
                  LOWORD(v239) = v239 & 0xF8FF;
                }
              }
            }

            else if (v235 || v237)
            {
              v249 |= 0x1800u;
              if (v235)
              {
                LOWORD(v246) = (8 * v242) & 0x90 | v246 & 0xFF6F;
                v249 = (v242 >> 4) & 0x18 | v249 & 0x3FFFE67 | (((v242 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v242 & 1) << 8);
                v250 = v250 & 0xFFFFC7FF | (((v242 >> 2) & 3) << 11) & 0xFFFFDFFF | (((v242 >> 5) & 1) << 13);
                LOWORD(v239) = v239 & 0xFFE7 | (8 * (v225 & 1));
              }

              else if (v237)
              {
                LOWORD(v239) = v239 | 0x10;
                LOWORD(v246) = (8 * v242) & 0x90 | v246 & 0xFF6F;
                v249 = (v242 >> 4) & 0x18 | v249 & 0x3FFFE67 | (((v242 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v242 & 1) << 8);
                v250 = v250 & 0xFFFFC7FF | (((v242 >> 2) & 3) << 11) & 0xFFFFDFFF | (((v242 >> 5) & 1) << 13);
              }
            }

            else
            {
              v249 |= 0x800u;
            }
          }
        }
      }

      else
      {
        v249 = 3;
        LOWORD(v250) = 0;
        LOWORD(v251) = 0;
      }

      *v336 = v246;
      *&v336[2] = v249;
      *&v336[4] = v239;
      *&v336[6] = v250;
      v337 = v251;
      if ((~v249 & 3) != 0 || (v246 & 7) != 4)
      {
        return 0;
      }

      v309 = v251;
      v319 = v243;
      v313 = v244;
      v316 = v150;
      v254 = v225;
      v255 = v245;
      v256 = a2;
      AGXIotoInstruction_LDIMM_3::AGXIotoInstruction_LDIMM_3(v324, v336);
      v258.i64[0] = v327;
      if (v330 != v224)
      {
        v259 = 0;
        a2 = v256;
        v262 = v313;
        v261 = v316;
LABEL_692:
        v263 = v319;
        goto LABEL_693;
      }

      v259 = 0;
      v260 = v242;
      a2 = v256;
      v262 = v313;
      v261 = v316;
      if (v224 > 3)
      {
        if (v224 > 5)
        {
          if (v224 == 6)
          {
LABEL_685:
            v266 = v328;
LABEL_687:
            v267 = v266 == v260;
            goto LABEL_689;
          }

          v263 = v319;
          if (v224 == 7)
          {
            v259 = ((v323 ^ v329) & 7) == 0 && v328 == v242;
          }

LABEL_693:
          v257.i32[0] = v325;
          v268 = vextq_s8(v257, v257, 4uLL);
          v269 = vextq_s8(v268, v258, 0xCuLL);
          v268.i32[0] = v240;
          v270 = vextq_s8(vextq_s8(v268, v268, 4uLL), v261, 0xCuLL);
          v270.i32[3] = v263;
          v269.i32[3] = v331;
          if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(*&v324[4], v262), vceqq_s32(v269, v270)))) & 1) != 0 && v333 == v227 && v334 == v226 && v335 == v247 && (((v255 ^ v324[0]) | (v254 ^ v332)) & 1) == 0 && v241 == v326 && v259)
          {
            *a2 = *v336;
            *(a2 + 4) = v309;
            return a2 + 10;
          }

          return 0;
        }

        v260 = v242;
        if (v224 == 4)
        {
          v266 = v328;
          goto LABEL_687;
        }

        v264 = v224 == 5;
      }

      else
      {
        if (v224 <= 1)
        {
          if (v224)
          {
            v263 = v319;
            if (v224 == 1)
            {
              v259 = v328 == v242;
            }

            goto LABEL_693;
          }

          goto LABEL_685;
        }

        LOWORD(v260) = v242;
        if (v224 == 2)
        {
          v267 = v328 == v242;
LABEL_689:
          v259 = v267;
          goto LABEL_692;
        }

        v264 = v224 == 3;
      }

      v263 = v319;
      if (v264)
      {
        v259 = v328 == v260;
      }

      goto LABEL_693;
    }

    v308 = v150;
    v312 = a6;
    v315 = this;
    v322 = a2;
    AGXIotoInstruction_LDIMM_2::AGXIotoInstruction_LDIMM_2(v324, v336);
    v214.i64[0] = v327;
    if (v330 != v30)
    {
      v215 = 0;
      a2 = v322;
      this = v315;
      v217 = v308;
      v216 = v312;
      v219 = v282;
      v218 = v151;
      goto LABEL_546;
    }

    v215 = 0;
    v217 = v308;
    v216 = v312;
    v219 = v282;
    v218 = v151;
    if (v30 > 3)
    {
      a2 = v322;
      this = v315;
      if (v30 > 5)
      {
        if (v30 != 6)
        {
          if (v30 != 7)
          {
            goto LABEL_546;
          }

          v220 = ((v281 ^ v329) & 7) == 0 && v328 == v28;
          goto LABEL_543;
        }

LABEL_541:
        v220 = v328 == v288;
        goto LABEL_543;
      }

      if (v30 == 4)
      {
        v220 = v328 == v28;
LABEL_543:
        v215 = v220;
LABEL_546:
        v213.i32[0] = v325;
        v221 = vextq_s8(v213, v213, 4uLL);
        v222 = vextq_s8(v221, v214, 0xCuLL);
        v222.i32[3] = v331;
        v221.i32[0] = v218;
        v223 = vextq_s8(vextq_s8(v221, v221, 4uLL), v216, 0xCuLL);
        v223.i32[3] = v29;
        v150 = vuzp1q_s16(vceqq_s32(*&v324[4], v217), vceqq_s32(v222, v223));
        if (vminv_u8(vmovn_s16(v150)) & 1) != 0 && v333 == v318 && v334 == v219 && v335 == v34 && (((v289 ^ v324[0]) | (v31 ^ v332)) & 1) == 0 && v27 == v326 && (v215)
        {
          *a2 = v212;
          return a2 + 8;
        }

        goto LABEL_554;
      }
    }

    else
    {
      a2 = v322;
      this = v315;
      if (v30 <= 1)
      {
        if (v30)
        {
          if (v30 != 1)
          {
            goto LABEL_546;
          }

          goto LABEL_535;
        }

        goto LABEL_541;
      }
    }

LABEL_535:
    v220 = v328 == v28;
    goto LABEL_543;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_38;
    }

    v16 = *(this + 8);
    v17 = *(this + 11);
    v18 = *(this + 52);
    v19 = *(this + 14);
    v20 = *(this + 15);
    v22 = v19 < 6 || (v19 & 0xFFFFFFFE) == 6;
    if (v18 & 1 | (v20 != 0) || v17 != 4)
    {
      v24 = 0;
      v130 = (*(this + 52) & 1) == 0 && v17 == 5 && v16 == 1;
      v23 = v130 && v22;
    }

    else
    {
      v23 = 0;
      v24 = v16 == 1 && v22;
    }

    LOWORD(v131) = 0;
    v133 = v17 == 2 && v16 == 3;
    if (v19 != 8)
    {
      v133 = 0;
    }

    if (v20)
    {
      v133 = 0;
    }

    v135 = v17 == 3 && v16 == 1;
    if (v18 & 1 | (v20 != 0) | (v19 != 8))
    {
      v136 = 0;
    }

    else
    {
      v136 = v135;
    }

    LOWORD(v137) = -32764;
    LOWORD(v138) = 3;
    if (*(this + 7) == 105 && (v139 = *(this + 12), (v139 - 1) <= 1))
    {
      v140 = v23 | (v133 || v136);
      LOWORD(v141) = 0;
      LOWORD(v142) = 0;
      if ((v24 | v140))
      {
        v144 = *(this + 1);
        v143 = *(this + 2);
        v145 = *(this + 16);
        v146 = *(this + 24);
        v147 = v146 & 0x40 | (v145 >> 28) & 4 | (v145 >> 26) & 0x20 | (v145 >> 19 << 13);
        v148 = v147 | 3;
        v137 = (((v146 & 1) << 10) | ((v145 & 3) << 8)) & 0xC7FF | (((v146 >> 1) & 1) << 11) & 0xFFFFCFFF | (((v146 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v146 >> 3) & 1) << 13) | (v146 >> 4) & 8 | (v146 >> 4 << 14) | 0xFFFF8004;
        v138 = v147 | 0x203;
        if (v139 == 1)
        {
          v138 = v148;
        }

        if (v144)
        {
          if (v144 == 1)
          {
            LOWORD(v137) = (((v146 & 1) << 10) | ((v145 & 3) << 8)) & 0xC79F | (((v146 >> 1) & 1) << 11) & 0xCF9F | (((v146 >> 2) & 1) << 12) & 0xDF9F | (((v146 >> 3) & 1) << 13) | (v146 >> 4) & 8 | ((v146 >> 4) << 14) | 0x8004 | 0x40;
          }

          else if (v144 == 2)
          {
            LOWORD(v137) = (((v146 & 1) << 10) | ((v145 & 3) << 8)) & 0xC79F | (((v146 >> 1) & 1) << 11) & 0xCF9F | (((v146 >> 2) & 1) << 12) & 0xDF9F | (((v146 >> 3) & 1) << 13) | (v146 >> 4) & 8 | ((v146 >> 4) << 14) | 0x8004;
          }
        }

        else
        {
          LOWORD(v137) = (((v146 & 1) << 10) | ((v145 & 3) << 8)) & 0xC79F | (((v146 >> 1) & 1) << 11) & 0xCF9F | (((v146 >> 2) & 1) << 12) & 0xDF9F | (((v146 >> 3) & 1) << 13) | (v146 >> 4) & 8 | ((v146 >> 4) << 14) | 0x8004 | 0x20;
        }

        v206 = v146 >> 5;
        v208 = *(this + 3);
        v207 = *(this + 4);
        v142 = (v145 >> 18) & 0x800 | (v145 >> 26) & 7 | (v145 >> 18 << 15);
        if (v143 == 1)
        {
          v142 |= 0x40u;
        }

        else if (!v143)
        {
          v142 |= 0x20u;
        }

        v209 = *(this + 5);
        v141 = (16 * (*this & 1)) | (v145 >> 22) & 0xF | ((v206 & 7) << 15);
        if (v208 == 1)
        {
          v141 |= 0x40u;
        }

        else if (!v208)
        {
          v141 |= 0x20u;
        }

        if (v207)
        {
          if (v207 == 1)
          {
            v141 = v141 & 0xFFFFFE7F | 0x100;
          }

          else if (v207 == 2)
          {
            v141 &= 0xFFFFFE7F;
          }
        }

        else
        {
          v141 = v141 & 0xFFFFFE7F | 0x80;
        }

        if (v209)
        {
          if (v209 == 1)
          {
            v141 = v141 & 0xFFFFF9FF | 0x400;
          }

          else if (v209 == 2)
          {
            v141 &= 0xFFFFF9FF;
            v210 = *(this + 9);
            if (!v24)
            {
LABEL_360:
              v131 = v145 >> 2;
              if (v140)
              {
                if (v23)
                {
                  LOWORD(v137) = (8 * v210) & 0x90 | v137 & 0xFF6F;
                  v138 = (v210 >> 4) & 0x18 | (((v210 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v210 & 1) << 8) | v138 & 0x3FFE667 | 0x800;
                  v141 = (v210 << 9) & 0x1800 | (((v210 >> 5) & 1) << 13) & 0xFFFFBFFF | (((v210 >> 9) & 1) << 14) | v141 & 0xFFFF87FF;
                  v142 = (v210 >> 5) & 0x80 | (v210 >> 7) & 0x18 | ((v20 & 1) << 12) | v142 & 0x1FFFEF67;
                  if (v19 <= 7)
                  {
                    if (v19)
                    {
                      switch(v19)
                      {
                        case 1u:
                          LOWORD(v142) = v142 & 0xF8FF | 0x100;
                          break;
                        case 2u:
                          LOWORD(v142) = v142 & 0xF8FF | 0x200;
                          break;
                        case 3u:
                          LOWORD(v142) = v142 & 0xF8FF | 0x300;
                          break;
                        case 4u:
                          LOWORD(v142) = v142 & 0xF8FF | 0x400;
                          break;
                        case 5u:
                          LOWORD(v142) = v142 & 0xF8FF | 0x500;
                          break;
                        case 6u:
                          LOWORD(v142) = v142 & 0xF8FF | 0x600;
                          break;
                        default:
                          LOWORD(v142) = v142 | 0x700;
                          break;
                      }
                    }

                    else
                    {
                      LOWORD(v142) = v142 & 0xF8FF;
                    }
                  }
                }

                else if (v133 || v136)
                {
                  v138 |= 0x1800u;
                  if (v133)
                  {
                    LOWORD(v137) = (8 * v210) & 0x90 | v137 & 0xFF6F;
                    v138 = (v210 >> 4) & 0x18 | (((v210 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v210 & 1) << 8) | v138 & 0x3FFFE67;
                    v141 = (v210 << 9) & 0x1800 | (((v210 >> 5) & 1) << 13) | v141 & 0xFFFFC7FF;
                    LOWORD(v142) = v142 & 0xFFE7 | (8 * (v18 & 1));
                  }

                  else if (v136)
                  {
                    LOWORD(v142) = v142 | 0x10;
                    LOWORD(v137) = (8 * v210) & 0x90 | v137 & 0xFF6F;
                    v138 = (v210 >> 4) & 0x18 | (((v210 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v210 & 1) << 8) | v138 & 0x3FFFE67;
                    v141 = (v210 << 9) & 0x1800 | (((v210 >> 5) & 1) << 13) | v141 & 0xFFFFC7FF;
                  }
                }

                else
                {
                  LOWORD(v138) = v138 | 0x800;
                }
              }

              goto LABEL_420;
            }

LABEL_355:
            v131 = v145 >> 2;
            LOWORD(v137) = (8 * v210) & 0x90 | v137 & 0xFF6F;
            v138 = (v210 >> 4) & 0x18 | (((v210 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v210 & 1) << 8) | (v210 >> 5) & 0x400 | v138 & 0x3FFF267;
            v142 = (v210 >> 5) & 0x380 | (v210 >> 7) & 0x18 | (v210 >> 6) & 0x400 | v142 & 0x1FFFF867;
            v141 = (v210 << 9) & 0x1800 | (((v210 >> 5) & 1) << 13) & 0xFFFFBFFF | (((v210 >> 9) & 1) << 14) | v141 & 0xFFFF87FF;
            if (v19 <= 7)
            {
              if (v19)
              {
                switch(v19)
                {
                  case 1u:
                    LOWORD(v142) = v142 & 0x8FFF | 0x1000;
                    break;
                  case 2u:
                    LOWORD(v142) = v142 & 0x8FFF | 0x2000;
                    break;
                  case 3u:
                    LOWORD(v142) = v142 & 0x8FFF | 0x3000;
                    break;
                  case 4u:
                    LOWORD(v142) = v142 & 0x8FFF | 0x4000;
                    break;
                  case 5u:
                    LOWORD(v142) = v142 & 0x8FFF | 0x5000;
                    break;
                  case 6u:
                    LOWORD(v142) = v142 & 0x8FFF | 0x6000;
                    break;
                  default:
                    LOWORD(v142) = v142 | 0x7000;
                    break;
                }
              }

              else
              {
                LOWORD(v142) = v142 & 0x8FFF;
              }
            }

            goto LABEL_420;
          }

          v210 = *(this + 9);
          if (!v24)
          {
            goto LABEL_360;
          }

          goto LABEL_355;
        }

        v141 = v141 & 0xFFFFF9FF | 0x200;
        v210 = *(this + 9);
        if (!v24)
        {
          goto LABEL_360;
        }

        goto LABEL_355;
      }
    }

    else
    {
      LOWORD(v141) = 0;
      LOWORD(v142) = 0;
    }

LABEL_420:
    *a2 = v137;
    *(a2 + 1) = v138;
    *(a2 + 2) = v142;
    *(a2 + 3) = v141;
    *(a2 + 4) = v131;
    return a2 + 10;
  }

  v320 = a2;
  LOWORD(v51) = 0;
  v52 = *(this + 1);
  v53 = *(this + 2);
  v54 = *(this + 3);
  v55 = *(this + 4);
  v56 = *(this + 5);
  v57 = v53 | v52;
  v58 = v53 == 0;
  v59 = *(this + 2) == 0;
  v60 = v56 | v55 | v54;
  v61 = (v60 | v53 | v52) == 0;
  v62 = v53 == 1;
  v63 = v53 == 2;
  if (v52)
  {
    v64 = 0;
  }

  else
  {
    v64 = v62;
  }

  if (v52)
  {
    v65 = 0;
  }

  else
  {
    v65 = v63;
  }

  v66 = v52 == 1 && v58;
  v67 = v52 == 1 && v62;
  v68 = v52 == 1 && v63;
  v69 = v52 == 2 && v58;
  v70 = v52 == 2 && v62;
  v71 = v52 == 2 && v63;
  v72 = v60 == 0;
  if (v60)
  {
    v73 = 0;
  }

  else
  {
    v73 = v66;
  }

  v317 = v73;
  if (v60)
  {
    v74 = 0;
  }

  else
  {
    v74 = v69;
  }

  v314 = v74;
  v75 = v72 && v64;
  v310 = v75;
  v76 = v72 && v67;
  v77 = v72 && v70;
  v304 = v77;
  v306 = v76;
  v78 = v72 && v65;
  v79 = v72 && v68;
  v300 = v79;
  v302 = v78;
  v80 = v72 && v71;
  v81 = v54 == 1 && *(this + 2) == 0;
  if (v54 != 2)
  {
    v59 = 0;
  }

  if (v56)
  {
    v82 = 0;
  }

  else
  {
    v82 = v55 == 1;
  }

  v84 = !v82 || v54 != 0;
  if (v57)
  {
    v85 = 0;
  }

  else
  {
    v85 = v81;
  }

  v296 = v85;
  v298 = v80;
  if (v57)
  {
    v86 = 0;
  }

  else
  {
    v86 = v59;
  }

  v87 = v84 ^ 1;
  if (v57)
  {
    v88 = 0;
  }

  else
  {
    v88 = v87;
  }

  v292 = v88;
  v294 = v86;
  if (*(this + 8) == 3 && *(this + 14) == 8 && *(this + 11) == 2 && !*(this + 15) && (v89 = *(this + 24), v89 <= 0x3F) && *(this + 7) == 105 && (*(this + 12) - 1) <= 1)
  {
    v290 = *(this + 12);
    v90 = v81 && v66;
    v91 = v81 && v69;
    v92 = v81 && v64;
    v93 = v81 && v67;
    v94 = v81 && v70;
    v95 = v81 && v65;
    v96 = v81 && v68;
    v97 = v81 && v71;
    v98 = v59 && v66;
    v99 = v59 && v69;
    v100 = v59 && v64;
    v101 = v59 && v67;
    v102 = v59 && v70;
    v103 = v59 && v65;
    v104 = v59 && v68;
    v105 = v59 && v71;
    v106 = v87 & v66;
    v107 = v87 & v69;
    v108 = v87 & v64;
    v109 = v87 & v67;
    v287 = v93;
    v280 = v102;
    v278 = v104;
    v110 = (v61 || v317 || v314 || v310 || v306 || v304 || v302 || v300 || v298 || v296) | v90 | v91 | v92 | v93 | v94 | v95 | v96 | v97 | v294 | v98 | v99 | v100 | v101 | v102 | v103 | v104 | v105 | v292 | v87 & v66 | v107 | v87 & v64 | v87 & v67;
    v111 = 0;
    v112 = 2;
    v113 = -32764;
    if (v110)
    {
      v114 = v109;
      v275 = v106;
      v115 = *(this + 18);
      v116 = *(this + 16);
      v117 = *(this + 52);
      v118 = *this;
      v119 = (8 * v115) & 0xF0 | (v116 << 8);
      v120 = (v116 >> 6) & 0x1E;
      v121 = (v116 >> 1) & 0xC00;
      v112 = HIWORD(v116) & 0xFE00 | (4 * (v115 & 1)) & 0x1F | (v115 >> 4) & 0x18 | (((v115 >> 5) & 3) << 6) | (32 * (v117 & 1)) | 2;
      v111 = (v116 >> 13) & 0xFFF | ((v89 > 0x1F) << 15) | (((v89 >> 4) & 1) << 14) | (((v89 >> 3) & 1) << 13);
      if (v290 == 1)
      {
        v122 = -32764;
      }

      else
      {
        v122 = -32756;
      }

      v113 = v119 | v122;
      v51 = (v89 << 13) & 0x1F8000 | ((v89 & 1) << 13) & 0xBFFE | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFFFFFFFE | v118 & 1;
      if (v61)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1;
      }

      else if (v317)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x20;
      }

      else if (v314)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x40;
      }

      else if (v310)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x60;
      }

      else if (v306)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x80;
      }

      else if (v304)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0xA0;
      }

      else if (v302)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0xC0;
      }

      else if (v300)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0xE0;
      }

      else if (v298)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x100;
      }

      else if (v296)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x120;
      }

      else if (v90)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x140;
      }

      else if (v91)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x160;
      }

      else if (v92)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x180;
      }

      else if (v287)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x1A0;
      }

      else if (v94)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x1C0;
      }

      else if (v95)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x1E0;
      }

      else if (v96)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x200;
      }

      else if (v97)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x220;
      }

      else if (v294)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x240;
      }

      else if (v98)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x260;
      }

      else if (v99)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x280;
      }

      else if (v100)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x2A0;
      }

      else if (v101)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x2C0;
      }

      else if (v280)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x2E0;
      }

      else if (v103)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x300;
      }

      else if (v278)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x320;
      }

      else if (v105)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x340;
      }

      else if (v292)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x360;
      }

      else if (v275)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x380;
      }

      else if (v107)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x3A0;
      }

      else if (v108)
      {
        LOWORD(v51) = (v89 << 13) & 0x8000 | ((v89 & 1) << 13) & 0xBC1E | (((v89 >> 1) & 1) << 14) | (v120 | v121) & 0xFC1E | v118 & 1 | 0x3C0;
      }

      else if (v114)
      {
        LOWORD(v51) = v51 | 0x3E0;
      }
    }
  }

  else
  {
    v111 = 0;
    v112 = 2;
    v113 = -32764;
  }

  *v320 = (v51 << 32) | (v111 << 48) | (v112 << 16) | v113;
  return v320 + 8;
}

unsigned __int8 *AGXIotoInstruction_NOP_0::emit(AGXIotoInstruction_NOP_0 *this, unsigned __int8 *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = *(this + 1);
  v7 = v4 | v6;
  v8 = v4 == 0;
  v9 = *(this + 2) == 0;
  v10 = v2 | v3 | v5;
  v11 = (v10 | v4 | v6) == 0;
  v12 = v4 == 1;
  v13 = v4 == 2;
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v16 = v6 == 1 && v8;
  v17 = v6 == 1 && v12;
  v18 = v6 == 1 && v13;
  v19 = v6 == 2;
  if (v6 == 2)
  {
    v20 = v12;
  }

  else
  {
    v8 = 0;
    v20 = 0;
  }

  v21 = v19 && v13;
  v22 = v10 == 0;
  if (v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  if (v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  v25 = v22 && v14;
  v26 = v22 && v16;
  v47 = v26;
  v48 = v25;
  v27 = v22 && v17;
  v28 = v22 && v15;
  v45 = v28;
  v46 = v27;
  v29 = v22 && v18;
  v30 = v22 && v21;
  v31 = v5 == 1 && *(this + 2) == 0;
  if (v5 != 2)
  {
    v9 = 0;
  }

  if (v2)
  {
    v32 = 0;
  }

  else
  {
    v32 = v3 == 1;
  }

  v34 = !v32 || v5 != 0;
  if (v7)
  {
    v35 = 0;
  }

  else
  {
    v35 = v31;
  }

  v44 = v35;
  if (v7)
  {
    v36 = 0;
  }

  else
  {
    v36 = v9;
  }

  v37 = v34 ^ 1;
  if (v7)
  {
    v38 = 0;
  }

  else
  {
    v38 = v34 ^ 1;
  }

  v43 = v38;
  v39 = 6;
  if ((*this & 1) == 0)
  {
    v40 = *(this + 24);
    if (v40 <= 0x3F && *(this + 7) == 114 && (*(this + 36) & 1) == 0 && *(this + 8) == 3 && (((v11 || v23 || v24 || v48 || v47 || v46 || v45 || v29 || v30 || v44 || v31 && v16 || v31 && v8 || v31 && v14 || v31 && v17 || v31 && v20 || v31 && v15 || v31 && v18 || v31 && v21 || v36 || v9 && v16 || v9 && v8 || v9 && v14 || v9 && v17 || v9 && v20 || v9 && v15) | (v9 && v18 || v9 && v21) | v43 | v37 & v16 | v37 & v8 | v37 & v14 | v37 & v17) & 1) != 0)
    {
      if (v40 <= 0x1F)
      {
        v41 = 6;
      }

      else
      {
        v41 = -32762;
      }

      v39 = v41 & 0x83FF | (((v40 >> 4) & 1) << 14) | (((v40 >> 3) & 1) << 13) | (((v40 >> 2) & 1) << 12) | (((v40 >> 1) & 1) << 11) | ((v40 & 1) << 10);
      if (v11)
      {
        v39 &= 0xFC1Fu;
      }

      else if (v23)
      {
        v39 = v39 & 0xFC1F | 0x20;
      }

      else if (v24)
      {
        v39 = v39 & 0xFC1F | 0x40;
      }

      else if (v48)
      {
        v39 = v39 & 0xFC1F | 0x60;
      }

      else if (v47)
      {
        v39 = v39 & 0xFC1F | 0x80;
      }

      else if (v46)
      {
        v39 = v39 & 0xFC1F | 0xA0;
      }

      else if (v45)
      {
        v39 = v39 & 0xFC1F | 0xC0;
      }

      else if (v29)
      {
        v39 = v39 & 0xFC1F | 0xE0;
      }

      else if (v30)
      {
        v39 = v39 & 0xFC1F | 0x100;
      }

      else if (v44)
      {
        v39 = v39 & 0xFC1F | 0x120;
      }

      else if (v31 && v16)
      {
        v39 = v39 & 0xFC1F | 0x140;
      }

      else if (v31 && v8)
      {
        v39 = v39 & 0xFC1F | 0x160;
      }

      else if (v31 && v14)
      {
        v39 = v39 & 0xFC1F | 0x180;
      }

      else if (v31 && v17)
      {
        v39 = v39 & 0xFC1F | 0x1A0;
      }

      else if (v31 && v20)
      {
        v39 = v39 & 0xFC1F | 0x1C0;
      }

      else if (v31 && v15)
      {
        v39 = v39 & 0xFC1F | 0x1E0;
      }

      else if (v31 && v18)
      {
        v39 = v39 & 0xFC1F | 0x200;
      }

      else if (v31 && v21)
      {
        v39 = v39 & 0xFC1F | 0x220;
      }

      else if (v36)
      {
        v39 = v39 & 0xFC1F | 0x240;
      }

      else if (v9 && v16)
      {
        v39 = v39 & 0xFC1F | 0x260;
      }

      else if (v9 && v8)
      {
        v39 = v39 & 0xFC1F | 0x280;
      }

      else if (v9 && v14)
      {
        v39 = v39 & 0xFC1F | 0x2A0;
      }

      else if (v9 && v17)
      {
        v39 = v39 & 0xFC1F | 0x2C0;
      }

      else if (v9 && v20)
      {
        v39 = v39 & 0xFC1F | 0x2E0;
      }

      else if (v9 && v15)
      {
        v39 = v39 & 0xFC1F | 0x300;
      }

      else if (v9 && v18)
      {
        v39 = v39 & 0xFC1F | 0x320;
      }

      else if (v9 && v21)
      {
        v39 = v39 & 0xFC1F | 0x340;
      }

      else if (v43)
      {
        v39 = v39 & 0xFC1F | 0x360;
      }

      else if ((v37 & v16) != 0)
      {
        v39 = v39 & 0xFC1F | 0x380;
      }

      else if ((v37 & v8) != 0)
      {
        v39 = v39 & 0xFC1F | 0x3A0;
      }

      else if ((v37 & v14) != 0)
      {
        v39 = v39 & 0xFC1F | 0x3C0;
      }

      else if ((v37 & v17) != 0)
      {
        v39 |= 0x3E0u;
      }
    }
  }

  *a2 = v39;
  return a2 + 2;
}

unsigned __int8 *AGXIotoInstruction_RLD_1::emit(AGXIotoInstruction_RLD_1 *this, unsigned __int8 *a2)
{
  v2 = *(this + 13);
  v3 = *(this + 20);
  v157 = *(this + 72);
  v4 = *(this + 17);
  v5 = v4 - 2;
  v6 = v4 - 2 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v8 = *(this + 15);
  v9 = *(this + 19);
  v10 = (v157 & 7) == 0 && v6;
  v161 = v10;
  if (v4 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v2 == 1 && v3 == 1;
  v13 = v12;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = v4 - 3;
  v16 = v4 - 3 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v19 = v2 == 2 && v3 == 2;
  v20 = (v157 & 7) == 0 && v19;
  v23 = (*(this + 92) & 1) == 0 && v9 == 7 && *(this + 22) == 8;
  v164 = v14;
  v159 = v19;
  v160 = v20 && v16;
  v24 = v23 & (v14 | (v20 && v16));
  v25 = (v9 == 4) & (v13 | v19);
  v165 = v24;
  v26 = v24 | v25;
  if (v8)
  {
    v26 = 0;
  }

  v170 = v26;
  v27 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v29 = (v157 & 7) == 0 && v27;
  v158 = v29;
  if (v4 == 1)
  {
    v29 = 1;
  }

  v166 = v29;
  v30 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v32 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v34 = (v157 & 7) == 0 && v32;
  v156 = v34;
  if (v4 == 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v36 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v163 = *(this + 22);
  v38 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v40 = (v157 & 7) == 0 && v38;
  v155 = v40;
  if (v4 == 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v42 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v44 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v46 = (v157 & 7) == 0 && v44;
  v154 = v46;
  if (v4 == 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  v48 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v50 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v52 = (v157 & 7) == 0 && v50;
  v153 = v52;
  if (v4 == 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52;
  }

  v54 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v56 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v58 = (v157 & 7) == 0 && v56;
  v152 = v58;
  if (v4 == 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v58;
  }

  v162 = *(this + 92);
  v60 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v62 = v5 < 0x3D && ((0x15B80FE7F81FFFFDuLL >> v5) & 1) != 0 || v4 == 56 || v4 == 0;
  v151 = (v157 & 7) == 0 && v62;
  v64 = v4 == 1 || (v157 & 7) == 0 && v62;
  v65 = v15 < 0x3B && ((0x502F80003F00001uLL >> v15) & 1) != 0 || v4 == 51 || v4 == 0;
  v67 = 0;
  if ((*(this + 36) & 0xF) != 1 || *(this + 16) || *(this + 12) != 2 || *(this + 8) != 4 || (*(this + 84) & 1) != 0 || *(this + 7) != 144)
  {
    LOWORD(v64) = 0;
    LOWORD(v42) = -32764;
    LOWORD(v86) = 1;
    goto LABEL_690;
  }

  v149 = v13 & v35;
  v150 = v20 && v30;
  v167 = v13 & v166;
  v147 = v13 & v41;
  v148 = v20 && v36;
  v67 = 0;
  v145 = v13 & v47;
  v146 = v20 & v42;
  v142 = v13 & v53;
  v143 = v20 && v48;
  v139 = v13 & v59;
  v140 = v20 && v54;
  v68 = v13 & v53 | (v20 && v54);
  v138 = v20 && v60;
  v69 = v13 & v59 | (v20 && v60);
  v70 = v23 & (v167 | (v20 && v30));
  v71 = v23 & (v13 & v35 | (v20 && v36));
  v72 = v23 & (v13 & v41 | v20 & v42);
  v73 = v23 & v68;
  v74 = (v8 == 1) & (v70 | v25);
  v75 = (v8 == 2) & (v71 | v25);
  v76 = (v8 == 3) & (v72 | v25);
  v77 = v13;
  v78 = v23 & (v145 | v143);
  v79 = (v8 == 4) & (v78 | v25);
  v144 = v73;
  v80 = (v8 == 5) & (v73 | v25);
  v141 = v23 & v69;
  v81 = (v8 == 6) & (v23 & v69 | v25);
  v168 = v77;
  v82 = v77 & v64;
  v83 = v20 && v65;
  v84 = v23 & (v77 & v64 | v83);
  v85 = (v8 == 7) & (v84 | v25);
  LOWORD(v64) = 0;
  LOWORD(v42) = -32764;
  LOWORD(v86) = 1;
  if (v170 & 1 | v74 | v75 | v76 | v79 | v80 & 1 | v81 & 1 | v85)
  {
    v137 = v83;
    v88 = *(this + 1);
    v87 = *(this + 2);
    v89 = *(this + 20);
    v90 = *(this + 24);
    v42 = (8 * v89) & 0x90 | ((v90 & 1) << 10) & 0xC7FF | (((v90 >> 1) & 1) << 11) & 0xFFFFCFFF | (((v90 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v90 >> 3) & 1) << 13) | (v90 >> 4) & 8 | (v90 >> 4 << 14) | 0xFFFF8004;
    if (v88)
    {
      if (v88 != 1)
      {
        v91 = (v89 << 9) & 0x1800 | (((v89 >> 5) & 1) << 13);
        if (v88 == 2)
        {
          v42 = (8 * v89) & 0x90 | ((v90 & 1) << 10) & 0xC79F | (((v90 >> 1) & 1) << 11) & 0xFFFFCF9F | (((v90 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v90 >> 3) & 1) << 13) | (v90 >> 4) & 8 | (v90 >> 4 << 14) | 0xFFFF8004;
        }

LABEL_212:
        v92 = v91 & 0xFFFFFFEF | (16 * (*this & 1));
        v94 = *(this + 3);
        v93 = *(this + 4);
        v95 = 8 * (*(this + 56) & 1);
        if (v87 == 1)
        {
          v64 = v95 | 0x40;
        }

        else
        {
          v64 = 8 * (*(this + 56) & 1);
          if (!v87)
          {
            v64 = v95 | 0x20;
          }
        }

        v96 = (v89 >> 4) & 0x18 | (((v89 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v89 & 1) << 8);
        v97 = v90 & 0x40;
        v98 = *(this + 5);
        v67 = v92 & 0xFFFC7FFF | (v90 >> 5 << 15);
        if (v94 == 1)
        {
          v67 = v67 | 0x40;
          v99 = v96 | v97;
          if (v93)
          {
LABEL_220:
            if (v93 == 1)
            {
              v67 = v67 & 0xFFFFFE7F | 0x100;
              v86 = v99 | 1;
              if (v98)
              {
                goto LABEL_227;
              }

LABEL_232:
              v67 = v67 & 0xFFFFF9FF | 0x200;
              goto LABEL_233;
            }

            if (v93 == 2)
            {
              v67 = v67 & 0xFFFFFE7F;
              v86 = v99 | 1;
              if (!v98)
              {
                goto LABEL_232;
              }

LABEL_227:
              if (v98 == 1)
              {
                v67 = v67 & 0xFFFFF9FF | 0x400;
                if (v170)
                {
                  goto LABEL_234;
                }

                goto LABEL_244;
              }

              if (v98 == 2)
              {
                v67 = v67 & 0xFFFFF9FF;
                if (v170)
                {
LABEL_234:
                  if (v165)
                  {
                    if (v164)
                    {
                      if (!v161)
                      {
                        if (v4 == 1)
                        {
                          LOWORD(v64) = v64 & 0xFFEF | (8 * v157) & 0x10 | (32 * v157) & 0x90 | 0x1000;
                          v67 = v67 & 0xFFFFBFFF | ((v157 & 1) << 14);
                        }

                        goto LABEL_690;
                      }

                      if (v4 != 41)
                      {
                        if (v4 != 14)
                        {
                          if (v4 != 39)
                          {
                            if (v4 != 53)
                            {
LABEL_241:
                              switch(v4)
                              {
                                case 0x2Bu:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_432:
                                  LOWORD(v86) = v99 | 0x801;
                                  goto LABEL_690;
                                case 0x2Cu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_432;
                                case 4u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_432;
                                case 0x3Au:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_432;
                                case 0x39u:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_518:
                                  LOWORD(v86) = v99 | 0x1001;
                                  goto LABEL_690;
                                case 2u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_518;
                                case 0xCu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_518;
                                case 0x1Fu:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_518;
                                case 0x20u:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_614:
                                  LOWORD(v86) = v99 | 0x1801;
                                  goto LABEL_690;
                                case 0x1Du:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_614;
                                case 0x1Eu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_614;
                                case 0xDu:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_614;
                                case 9u:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_700:
                                  LOWORD(v86) = v99 | 0x2001;
                                  goto LABEL_690;
                                case 0xAu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_700;
                                case 0xBu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_700;
                                case 0x3Eu:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_700;
                                case 0x3Cu:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_759:
                                  LOWORD(v86) = v99 | 0x2801;
                                  goto LABEL_690;
                                case 0x2Au:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_759;
                                case 0xFu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_759;
                                case 0x21u:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_759;
                                case 0x22u:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_802:
                                  LOWORD(v86) = v99 | 0x3001;
                                  goto LABEL_690;
                                case 8u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_802;
                                case 0x37u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_802;
                                case 0x2Du:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_802;
                                case 5u:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_843:
                                  LOWORD(v86) = v99 | 0x3801;
                                  goto LABEL_690;
                                case 0x10u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_843;
                                case 7u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_843;
                                case 6u:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_843;
                                case 0x14u:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_884:
                                  LOWORD(v86) = v99 | 0x4001;
                                  goto LABEL_690;
                                case 0x15u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_884;
                                case 0x16u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_884;
                                case 0x11u:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_884;
                                case 0x12u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  break;
                                case 0x13u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  break;
                                case 0x36u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  break;
                                case 0x28u:
                                  LOWORD(v42) = v42 | 0x300;
                                  break;
                                default:
                                  switch(v4)
                                  {
                                    case '#':
                                      LOWORD(v42) = v42 & 0xFCFF;
                                      break;
                                    case '$':
                                      LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                      break;
                                    case '8':
                                      LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                      break;
                                    default:
                                      if (v4)
                                      {
                                        goto LABEL_690;
                                      }

                                      LOWORD(v42) = v42 | 0x300;
                                      break;
                                  }

                                  LOWORD(v86) = v99 | 0x5001;
                                  goto LABEL_690;
                              }

                              LOWORD(v86) = v99 | 0x4801;
                              goto LABEL_690;
                            }

LABEL_367:
                            LOWORD(v42) = v42 | 0x300;
                            goto LABEL_690;
                          }

                          goto LABEL_347;
                        }

                        goto LABEL_309;
                      }
                    }

                    else
                    {
                      if (!v160)
                      {
                        goto LABEL_690;
                      }

                      LOWORD(v86) = v99 | 0x201;
                      if (v4 != 52)
                      {
                        if (v4 != 3)
                        {
                          if (v4 != 46)
                          {
                            if (v4 != 61)
                            {
                              if (v4 == 59)
                              {
                                LOWORD(v42) = v42 & 0xFCFF;
                              }

                              else if (v4 == 47)
                              {
                                LOWORD(v42) = v42 & 0xFCFF | 0x100;
                              }

                              else if (v4 == 48)
                              {
                                LOWORD(v42) = v42 & 0xFCFF | 0x200;
                              }

                              else
                              {
                                if (v4 != 49)
                                {
                                  if (v4 == 50)
                                  {
                                    LOWORD(v42) = v42 & 0xFCFF;
                                  }

                                  else if (v4 == 26)
                                  {
                                    LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  }

                                  else if (v4 == 27)
                                  {
                                    LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  }

                                  else
                                  {
                                    if (v4 != 28)
                                    {
                                      if (v4 == 23)
                                      {
                                        LOWORD(v42) = v42 & 0xFCFF;
                                      }

                                      else if (v4 == 24)
                                      {
                                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                      }

                                      else if (v4 == 25)
                                      {
                                        LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                      }

                                      else
                                      {
                                        if (v4 != 51)
                                        {
                                          if (!v4)
                                          {
                                            LOWORD(v42) = v42 & 0xFCFF;
                                            LOWORD(v86) = v99 | 0x2201;
                                          }

                                          goto LABEL_690;
                                        }

                                        LOWORD(v42) = v42 | 0x300;
                                      }

                                      LOWORD(v86) = v99 | 0x1A01;
                                      goto LABEL_690;
                                    }

                                    LOWORD(v42) = v42 | 0x300;
                                  }

                                  LOWORD(v86) = v99 | 0x1201;
                                  goto LABEL_690;
                                }

                                LOWORD(v42) = v42 | 0x300;
                              }

                              LOWORD(v86) = v99 | 0xA01;
                              goto LABEL_690;
                            }

                            goto LABEL_367;
                          }

                          goto LABEL_347;
                        }

                        goto LABEL_309;
                      }
                    }

                    goto LABEL_267;
                  }

                  if (!v25)
                  {
                    goto LABEL_690;
                  }

                  v101 = v4 >> 9;
                  v102 = v4 >> 7;
                  v103 = v4 >> 4;
                  LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                  v104 = v4 >> 6;
                  v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                  v105 = v64 & 0x6A;
                  goto LABEL_271;
                }

LABEL_244:
                if (v74)
                {
                  v100 = v64 | 0x100;
                  if (v70)
                  {
                    if (v167)
                    {
                      if (v158)
                      {
                        if (v4 != 41)
                        {
                          if (v4 != 14)
                          {
                            if (v4 != 39)
                            {
                              if (v4 != 53)
                              {
                                if (v4 == 43)
                                {
LABEL_253:
                                  LOWORD(v42) = v42 & 0xFCFF;
LABEL_453:
                                  v126 = 2049;
                                  goto LABEL_454;
                                }

                                goto LABEL_283;
                              }

                              goto LABEL_387;
                            }

                            goto LABEL_365;
                          }

                          goto LABEL_340;
                        }

                        goto LABEL_289;
                      }

                      if (v4 != 1)
                      {
                        goto LABEL_671;
                      }

                      v118 = v64 & 0xFFEF;
                      v119 = v157;
                      v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                      v121 = 4352;
                      goto LABEL_435;
                    }

                    if (!v150)
                    {
                      goto LABEL_671;
                    }

                    LOWORD(v86) = v99 | 0x201;
                    switch(v4)
                    {
                      case 0x34u:
                        goto LABEL_289;
                      case 3u:
                        goto LABEL_340;
                      case 0x2Eu:
                        goto LABEL_365;
                      case 0x3Du:
                        goto LABEL_387;
                      case 0x3Bu:
LABEL_404:
                        LOWORD(v42) = v42 & 0xFCFF;
                        v126 = 2561;
LABEL_454:
                        LOWORD(v86) = v99 | v126;
                        LOWORD(v64) = v100;
                        goto LABEL_690;
                      case 0x2Fu:
LABEL_421:
                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                        v126 = 2561;
                        goto LABEL_454;
                      case 0x30u:
LABEL_442:
                        LOWORD(v42) = v42 & 0xFCFF | 0x200;
                        v126 = 2561;
                        goto LABEL_454;
                      case 0x31u:
LABEL_464:
                        LOWORD(v42) = v42 | 0x300;
                        v126 = 2561;
                        goto LABEL_454;
                      case 0x32u:
LABEL_486:
                        LOWORD(v42) = v42 & 0xFCFF;
                        v126 = 4609;
                        goto LABEL_454;
                      case 0x1Au:
LABEL_507:
                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                        v126 = 4609;
                        goto LABEL_454;
                      case 0x1Bu:
LABEL_532:
                        LOWORD(v42) = v42 & 0xFCFF | 0x200;
                        v126 = 4609;
                        goto LABEL_454;
                      case 0x1Cu:
LABEL_557:
                        LOWORD(v42) = v42 | 0x300;
                        v126 = 4609;
                        goto LABEL_454;
                      case 0x17u:
LABEL_579:
                        LOWORD(v42) = v42 & 0xFCFF;
                        v126 = 6657;
                        goto LABEL_454;
                      case 0x18u:
LABEL_603:
                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                        v126 = 6657;
                        goto LABEL_454;
                      case 0x19u:
LABEL_626:
                        LOWORD(v42) = v42 & 0xFCFF | 0x200;
                        v126 = 6657;
                        goto LABEL_454;
                    }

                    if (v4 != 51)
                    {
                      if (!v4)
                      {
                        LOWORD(v42) = v42 & 0xFCFF;
                        v126 = 8705;
                        goto LABEL_454;
                      }

                      goto LABEL_671;
                    }

LABEL_649:
                    LOWORD(v42) = v42 | 0x300;
                    v126 = 6657;
                    goto LABEL_454;
                  }

                  if (!v25)
                  {
                    goto LABEL_671;
                  }

                  v101 = v4 >> 9;
                  v102 = v4 >> 7;
                  v103 = v4 >> 4;
                  LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                  v104 = v4 >> 6;
                  v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                  v107 = 362;
LABEL_270:
                  v105 = v100 & v107;
LABEL_271:
                  v108 = v104 & 0x10;
                  v109 = v67 & 0xFFFFBFF0;
                  v110 = (4 * (v162 & 1)) | (v163 >> 3) & 1 | v4 & 0xFFFFF000 | v108 | v103 & 0x80 | v105;
                  v111 = v163 & 1 | (4 * ((v163 >> 1) & 3)) | v102 & 2;
                  goto LABEL_272;
                }

                if (v75)
                {
                  v106 = v64 | 0x200;
                  if (v71)
                  {
                    if (v149)
                    {
                      if (v156)
                      {
                        LOWORD(v64) = v64 & 0xFCFF | 0x200;
                        if (v4 != 41)
                        {
                          if (v4 != 14)
                          {
                            if (v4 != 39)
                            {
                              if (v4 != 53)
                              {
                                goto LABEL_241;
                              }

                              goto LABEL_367;
                            }

LABEL_347:
                            LOWORD(v42) = v42 & 0xFCFF | 0x200;
                            goto LABEL_690;
                          }

LABEL_309:
                          LOWORD(v42) = v42 & 0xFCFF | 0x100;
                          goto LABEL_690;
                        }

LABEL_267:
                        LOWORD(v42) = v42 & 0xFCFF;
                        goto LABEL_690;
                      }

                      if (v4 == 1)
                      {
                        v118 = v64 & 0xFFEF;
                        v119 = *(this + 72);
                        v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                        v121 = 4608;
                        goto LABEL_435;
                      }

LABEL_689:
                      LOWORD(v64) = v106;
                      goto LABEL_690;
                    }

                    if (!v148)
                    {
                      goto LABEL_689;
                    }

                    LOWORD(v86) = v99 | 0x201;
                    switch(v4)
                    {
                      case 0x34u:
                        LOWORD(v42) = v42 & 0xFCFF;
                        LOWORD(v64) = v64 | 0x200;
                        goto LABEL_690;
                      case 3u:
                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                        LOWORD(v64) = v64 | 0x200;
                        goto LABEL_690;
                      case 0x2Eu:
                        LOWORD(v42) = v42 & 0xFCFF | 0x200;
                        LOWORD(v64) = v64 | 0x200;
                        goto LABEL_690;
                      case 0x3Du:
                        LOWORD(v42) = v42 | 0x300;
                        LOWORD(v64) = v64 | 0x200;
                        goto LABEL_690;
                      case 0x3Bu:
                        LOWORD(v42) = v42 & 0xFCFF;
                        break;
                      case 0x2Fu:
                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                        break;
                      case 0x30u:
                        LOWORD(v42) = v42 & 0xFCFF | 0x200;
                        break;
                      case 0x31u:
                        LOWORD(v42) = v42 | 0x300;
                        break;
                      default:
                        switch(v4)
                        {
                          case 0x32u:
                            LOWORD(v42) = v42 & 0xFCFF;
                            v130 = 4609;
                            break;
                          case 0x1Au:
                            LOWORD(v42) = v42 & 0xFCFF | 0x100;
                            v130 = 4609;
                            break;
                          case 0x1Bu:
                            LOWORD(v42) = v42 & 0xFCFF | 0x200;
                            v130 = 4609;
                            break;
                          case 0x1Cu:
                            LOWORD(v42) = v42 | 0x300;
                            v130 = 4609;
                            break;
                          case 0x17u:
                            LOWORD(v42) = v42 & 0xFCFF;
                            v130 = 6657;
                            break;
                          case 0x18u:
                            LOWORD(v42) = v42 & 0xFCFF | 0x100;
                            v130 = 6657;
                            break;
                          case 0x19u:
                            LOWORD(v42) = v42 & 0xFCFF | 0x200;
                            v130 = 6657;
                            break;
                          case 0x33u:
                            LOWORD(v42) = v42 | 0x300;
                            v130 = 6657;
                            break;
                          default:
                            if (v4)
                            {
                              goto LABEL_689;
                            }

                            LOWORD(v42) = v42 & 0xFCFF;
                            v130 = 8705;
                            break;
                        }

LABEL_484:
                        LOWORD(v86) = v99 | v130;
                        LOWORD(v64) = v64 | 0x200;
                        goto LABEL_690;
                    }

                    v130 = 2561;
                    goto LABEL_484;
                  }

                  if (!v25)
                  {
                    goto LABEL_689;
                  }

                  v101 = v4 >> 9;
                  v112 = v4 >> 7;
                  v113 = v4 >> 4;
                  LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                  v114 = v4 >> 6;
                  v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                  v115 = 618;
LABEL_292:
                  v116 = v113 & 0x80;
                  v109 = v67 & 0xFFFFBFF0;
                  v110 = (4 * (v162 & 1)) | (v163 >> 3) & 1 | v4 & 0xFFFFF000 | v114 & 0x10 | v116 | v106 & v115;
                  v111 = *(this + 22) & 1 | (4 * ((*(this + 22) >> 1) & 3)) | v112 & 2;
LABEL_272:
                  v67 = v111 & 0xFFFFBFFF | ((v101 & 1) << 14) | v109;
                  if (v168)
                  {
LABEL_273:
                    LOWORD(v64) = v110 & 0xFFFD;
                    goto LABEL_690;
                  }

LABEL_343:
                  if (v159)
                  {
                    LOWORD(v64) = v110 | 2;
                  }

                  else
                  {
                    LOWORD(v64) = v110;
                  }

                  goto LABEL_690;
                }

                if (v76)
                {
                  v100 = v64 | 0x300;
                  if ((v72 & 1) == 0)
                  {
                    if (!v25)
                    {
                      goto LABEL_671;
                    }

                    v101 = v4 >> 9;
                    v102 = v4 >> 7;
                    v103 = v4 >> 4;
                    LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                    v104 = v4 >> 6;
                    v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                    v107 = 874;
                    goto LABEL_270;
                  }

                  if (v147)
                  {
                    if (v155)
                    {
                      if (v4 != 41)
                      {
                        if (v4 != 14)
                        {
                          if (v4 != 39)
                          {
                            if (v4 != 53)
                            {
                              if (v4 == 43)
                              {
                                goto LABEL_253;
                              }

LABEL_283:
                              switch(v4)
                              {
                                case 0x2Cu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  goto LABEL_453;
                                case 4u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  goto LABEL_453;
                                case 0x3Au:
                                  LOWORD(v42) = v42 | 0x300;
                                  goto LABEL_453;
                                case 0x39u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 4097;
                                  goto LABEL_454;
                                case 2u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 4097;
                                  goto LABEL_454;
                                case 0xCu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 4097;
                                  goto LABEL_454;
                                case 0x1Fu:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 4097;
                                  goto LABEL_454;
                                case 0x20u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 6145;
                                  goto LABEL_454;
                                case 0x1Du:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 6145;
                                  goto LABEL_454;
                                case 0x1Eu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 6145;
                                  goto LABEL_454;
                                case 0xDu:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 6145;
                                  goto LABEL_454;
                                case 9u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 8193;
                                  goto LABEL_454;
                                case 0xAu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 8193;
                                  goto LABEL_454;
                                case 0xBu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 8193;
                                  goto LABEL_454;
                                case 0x3Eu:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 8193;
                                  goto LABEL_454;
                                case 0x3Cu:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 10241;
                                  goto LABEL_454;
                                case 0x2Au:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 10241;
                                  goto LABEL_454;
                                case 0xFu:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 10241;
                                  goto LABEL_454;
                                case 0x21u:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 10241;
                                  goto LABEL_454;
                                case 0x22u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 12289;
                                  goto LABEL_454;
                                case 8u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 12289;
                                  goto LABEL_454;
                                case 0x37u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 12289;
                                  goto LABEL_454;
                                case 0x2Du:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 12289;
                                  goto LABEL_454;
                                case 5u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 14337;
                                  goto LABEL_454;
                                case 0x10u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 14337;
                                  goto LABEL_454;
                                case 7u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 14337;
                                  goto LABEL_454;
                                case 6u:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 14337;
                                  goto LABEL_454;
                                case 0x14u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 16385;
                                  goto LABEL_454;
                                case 0x15u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 16385;
                                  goto LABEL_454;
                                case 0x16u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 16385;
                                  goto LABEL_454;
                                case 0x11u:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 16385;
                                  goto LABEL_454;
                                case 0x12u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 18433;
                                  goto LABEL_454;
                                case 0x13u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 18433;
                                  goto LABEL_454;
                                case 0x36u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 18433;
                                  goto LABEL_454;
                                case 0x28u:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 18433;
                                  goto LABEL_454;
                                case 0x23u:
                                  LOWORD(v42) = v42 & 0xFCFF;
                                  v126 = 20481;
                                  goto LABEL_454;
                                case 0x24u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x100;
                                  v126 = 20481;
                                  goto LABEL_454;
                                case 0x38u:
                                  LOWORD(v42) = v42 & 0xFCFF | 0x200;
                                  v126 = 20481;
                                  goto LABEL_454;
                                case 0u:
                                  LOWORD(v42) = v42 | 0x300;
                                  v126 = 20481;
                                  goto LABEL_454;
                              }

LABEL_671:
                              LOWORD(v64) = v100;
                              goto LABEL_690;
                            }

LABEL_387:
                            LOWORD(v42) = v42 | 0x300;
                            LOWORD(v64) = v100;
                            goto LABEL_690;
                          }

LABEL_365:
                          LOWORD(v42) = v42 & 0xFCFF | 0x200;
                          LOWORD(v64) = v100;
                          goto LABEL_690;
                        }

LABEL_340:
                        LOWORD(v42) = v42 & 0xFCFF | 0x100;
                        LOWORD(v64) = v100;
                        goto LABEL_690;
                      }

LABEL_289:
                      LOWORD(v42) = v42 & 0xFCFF;
                      LOWORD(v64) = v100;
                      goto LABEL_690;
                    }

                    if (v4 != 1)
                    {
                      goto LABEL_671;
                    }

                    v118 = v64 & 0xFFEF;
                    v119 = v157;
                    v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                    v121 = 4864;
LABEL_435:
                    LOWORD(v64) = v118 | v121 | v120;
                    v67 = v67 & 0xFFFFBFFF | ((v119 & 1) << 14);
                    goto LABEL_690;
                  }

                  if (!v146)
                  {
                    goto LABEL_671;
                  }

                  LOWORD(v86) = v99 | 0x201;
                  switch(v4)
                  {
                    case 0x34u:
                      goto LABEL_289;
                    case 3u:
                      goto LABEL_340;
                    case 0x2Eu:
                      goto LABEL_365;
                    case 0x3Du:
                      goto LABEL_387;
                    case 0x3Bu:
                      goto LABEL_404;
                    case 0x2Fu:
                      goto LABEL_421;
                    case 0x30u:
                      goto LABEL_442;
                    case 0x31u:
                      goto LABEL_464;
                    case 0x32u:
                      goto LABEL_486;
                    case 0x1Au:
                      goto LABEL_507;
                    case 0x1Bu:
                      goto LABEL_532;
                    case 0x1Cu:
                      goto LABEL_557;
                    case 0x17u:
                      goto LABEL_579;
                    case 0x18u:
                      goto LABEL_603;
                    case 0x19u:
                      goto LABEL_626;
                    case 0x33u:
                      goto LABEL_649;
                  }

                  if (v4)
                  {
                    goto LABEL_671;
                  }

                  v122 = v42 & 0xFCFF;
                  LOWORD(v86) = v99 | 0x2201;
LABEL_501:
                  LOWORD(v64) = v100;
                  LOWORD(v42) = v122;
                  goto LABEL_690;
                }

                if (v79)
                {
                  if ((v78 & 1) == 0)
                  {
                    if (v25)
                    {
                      LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                      v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                      v110 = (4 * (v162 & 1)) | (v163 >> 3) & 1 | v4 & 0xFFFFF000 | (v4 >> 6) & 0x10 | (v4 >> 4) & 0x80 | v64 & 0x6A | 0x400;
                      v67 = *(this + 22) & 1 | (4 * ((*(this + 22) >> 1) & 3)) & 0xFFFFBFFF | (v4 >> 7) & 2 | (((v4 >> 9) & 1) << 14) | v67 & 0xFFFFBFF0;
                      if (v168)
                      {
                        goto LABEL_273;
                      }

                      goto LABEL_343;
                    }

                    goto LABEL_725;
                  }

                  if (v145)
                  {
                    if (v154)
                    {
                      LOWORD(v64) = v64 & 0xF8FF | 0x400;
                      if (v4 != 41)
                      {
                        if (v4 != 14)
                        {
                          if (v4 != 39)
                          {
                            if (v4 != 53)
                            {
                              switch(v4)
                              {
                                case 0x2Bu:
                                  v117 = v42 & 0xFCFF;
LABEL_521:
                                  v131 = 2049;
LABEL_522:
                                  LOWORD(v86) = v99 | v131;
                                  LOWORD(v42) = v117;
                                  goto LABEL_690;
                                case 0x2Cu:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  goto LABEL_521;
                                case 4u:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  goto LABEL_521;
                                case 0x3Au:
                                  v117 = v42 | 0x300;
                                  goto LABEL_521;
                                case 0x39u:
                                  v117 = v42 & 0xFCFF;
                                  v131 = 4097;
                                  goto LABEL_522;
                                case 2u:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  v131 = 4097;
                                  goto LABEL_522;
                                case 0xCu:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  v131 = 4097;
                                  goto LABEL_522;
                                case 0x1Fu:
                                  v117 = v42 | 0x300;
                                  v131 = 4097;
                                  goto LABEL_522;
                                case 0x20u:
                                  v117 = v42 & 0xFCFF;
                                  v131 = 6145;
                                  goto LABEL_522;
                                case 0x1Du:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  v131 = 6145;
                                  goto LABEL_522;
                                case 0x1Eu:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  v131 = 6145;
                                  goto LABEL_522;
                                case 0xDu:
                                  v117 = v42 | 0x300;
                                  v131 = 6145;
                                  goto LABEL_522;
                                case 9u:
                                  v117 = v42 & 0xFCFF;
                                  v131 = 8193;
                                  goto LABEL_522;
                                case 0xAu:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  v131 = 8193;
                                  goto LABEL_522;
                                case 0xBu:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  v131 = 8193;
                                  goto LABEL_522;
                                case 0x3Eu:
                                  v117 = v42 | 0x300;
                                  v131 = 8193;
                                  goto LABEL_522;
                                case 0x3Cu:
                                  v117 = v42 & 0xFCFF;
                                  v131 = 10241;
                                  goto LABEL_522;
                                case 0x2Au:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  v131 = 10241;
                                  goto LABEL_522;
                                case 0xFu:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  v131 = 10241;
                                  goto LABEL_522;
                                case 0x21u:
                                  v117 = v42 | 0x300;
                                  v131 = 10241;
                                  goto LABEL_522;
                                case 0x22u:
                                  v117 = v42 & 0xFCFF;
                                  v131 = 12289;
                                  goto LABEL_522;
                                case 8u:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  v131 = 12289;
                                  goto LABEL_522;
                                case 0x37u:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  v131 = 12289;
                                  goto LABEL_522;
                                case 0x2Du:
                                  v117 = v42 | 0x300;
                                  v131 = 12289;
                                  goto LABEL_522;
                                case 5u:
                                  v117 = v42 & 0xFCFF;
                                  v131 = 14337;
                                  goto LABEL_522;
                                case 0x10u:
                                  v117 = v42 & 0xFCFF | 0x100;
                                  v131 = 14337;
                                  goto LABEL_522;
                                case 7u:
                                  v117 = v42 & 0xFCFF | 0x200;
                                  v131 = 14337;
                                  goto LABEL_522;
                              }

                              if (v4 != 6)
                              {
                                if (v4 != 20)
                                {
                                  if (v4 != 21)
                                  {
                                    if (v4 != 22)
                                    {
                                      if (v4 != 17)
                                      {
                                        if (v4 != 18)
                                        {
                                          if (v4 != 19)
                                          {
                                            if (v4 != 54)
                                            {
                                              if (v4 != 40)
                                              {
                                                if (v4 != 35)
                                                {
                                                  if (v4 != 36)
                                                  {
                                                    if (v4 == 56)
                                                    {
LABEL_899:
                                                      v124 = v42 & 0xFCFF | 0x200;
LABEL_978:
                                                      v128 = 20481;
                                                      goto LABEL_979;
                                                    }

LABEL_984:
                                                    if (v4)
                                                    {
                                                      goto LABEL_690;
                                                    }

                                                    v124 = v42 | 0x300;
                                                    goto LABEL_978;
                                                  }

                                                  goto LABEL_977;
                                                }

                                                goto LABEL_973;
                                              }

LABEL_967:
                                              v124 = v42 | 0x300;
                                              v128 = 18433;
                                              goto LABEL_979;
                                            }

LABEL_958:
                                            v124 = v42 & 0xFCFF | 0x200;
                                            v128 = 18433;
                                            goto LABEL_979;
                                          }

LABEL_950:
                                          v124 = v42 & 0xFCFF | 0x100;
                                          v128 = 18433;
                                          goto LABEL_979;
                                        }

LABEL_942:
                                        v124 = v42 & 0xFCFF;
                                        v128 = 18433;
                                        goto LABEL_979;
                                      }

LABEL_934:
                                      v124 = v42 | 0x300;
                                      v128 = 16385;
                                      goto LABEL_979;
                                    }

LABEL_925:
                                    v124 = v42 & 0xFCFF | 0x200;
                                    v128 = 16385;
                                    goto LABEL_979;
                                  }

LABEL_917:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v128 = 16385;
                                  goto LABEL_979;
                                }

LABEL_909:
                                v124 = v42 & 0xFCFF;
                                v128 = 16385;
                                goto LABEL_979;
                              }

LABEL_901:
                              v124 = v42 | 0x300;
                              v128 = 14337;
                              goto LABEL_979;
                            }

                            goto LABEL_447;
                          }

                          goto LABEL_425;
                        }

                        goto LABEL_354;
                      }

LABEL_317:
                      LOWORD(v42) = v42 & 0xFCFF;
                      goto LABEL_690;
                    }

                    if (v4 == 1)
                    {
                      v118 = v64 & 0xFFEF;
                      v119 = *(this + 72);
                      v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                      v121 = 5120;
                      goto LABEL_435;
                    }

LABEL_725:
                    LOWORD(v64) = v64 | 0x400;
                    goto LABEL_690;
                  }

                  if (!v143)
                  {
                    goto LABEL_725;
                  }

                  LOWORD(v86) = v99 | 0x201;
                  switch(v4)
                  {
                    case 0x34u:
                      v123 = v42 & 0xFCFF;
LABEL_438:
                      LOWORD(v64) = v64 | 0x400;
                      LOWORD(v42) = v123;
                      goto LABEL_690;
                    case 3u:
                      v123 = v42 & 0xFCFF | 0x100;
                      goto LABEL_438;
                    case 0x2Eu:
                      v123 = v42 & 0xFCFF | 0x200;
                      goto LABEL_438;
                    case 0x3Du:
                      v123 = v42 | 0x300;
                      goto LABEL_438;
                    case 0x3Bu:
                      v127 = v42 & 0xFCFF;
                      break;
                    case 0x2Fu:
                      v127 = v42 & 0xFCFF | 0x100;
                      break;
                    case 0x30u:
                      v127 = v42 & 0xFCFF | 0x200;
                      break;
                    case 0x31u:
                      v127 = v42 | 0x300;
                      break;
                    default:
                      switch(v4)
                      {
                        case 0x32u:
                          v127 = v42 & 0xFCFF;
                          v133 = 4609;
                          break;
                        case 0x1Au:
                          v127 = v42 & 0xFCFF | 0x100;
                          v133 = 4609;
                          break;
                        case 0x1Bu:
                          v127 = v42 & 0xFCFF | 0x200;
                          v133 = 4609;
                          break;
                        case 0x1Cu:
                          v127 = v42 | 0x300;
                          v133 = 4609;
                          break;
                        case 0x17u:
                          v127 = v42 & 0xFCFF;
                          v133 = 6657;
                          break;
                        case 0x18u:
                          v127 = v42 & 0xFCFF | 0x100;
                          v133 = 6657;
                          break;
                        case 0x19u:
                          v127 = v42 & 0xFCFF | 0x200;
                          v133 = 6657;
                          break;
                        case 0x33u:
                          v127 = v42 | 0x300;
                          v133 = 6657;
                          break;
                        default:
                          if (v4)
                          {
                            goto LABEL_725;
                          }

                          v127 = v42 & 0xFCFF;
                          v133 = 8705;
                          break;
                      }

LABEL_528:
                      LOWORD(v64) = v64 | 0x400;
                      LOWORD(v86) = v99 | v133;
                      LOWORD(v42) = v127;
                      goto LABEL_690;
                  }

                  v133 = 2561;
                  goto LABEL_528;
                }

                if (v80)
                {
                  v106 = v64 | 0x500;
                  if ((v144 & 1) == 0)
                  {
                    if (!v25)
                    {
                      goto LABEL_689;
                    }

                    v101 = v4 >> 9;
                    v112 = v4 >> 7;
                    v113 = v4 >> 4;
                    LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                    v114 = v4 >> 6;
                    v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                    v115 = 1386;
                    goto LABEL_292;
                  }

                  if (v142)
                  {
                    if (!v153)
                    {
                      if (v4 == 1)
                      {
                        v118 = v64 & 0xFFEF;
                        v119 = *(this + 72);
                        v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                        v121 = 5376;
                        goto LABEL_435;
                      }

                      goto LABEL_689;
                    }

                    LOWORD(v64) = v64 & 0xF8FF | 0x500;
                    if (v4 == 41)
                    {
                      goto LABEL_317;
                    }

LABEL_353:
                    if (v4 != 14)
                    {
                      if (v4 != 39)
                      {
                        if (v4 != 53)
                        {
                          switch(v4)
                          {
                            case 0x2Bu:
                              v124 = v42 & 0xFCFF;
                              v128 = 2049;
                              break;
                            case 0x2Cu:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 2049;
                              break;
                            case 4u:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 2049;
                              break;
                            case 0x3Au:
                              v124 = v42 | 0x300;
                              v128 = 2049;
                              break;
                            case 0x39u:
                              v124 = v42 & 0xFCFF;
                              v128 = 4097;
                              break;
                            case 2u:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 4097;
                              break;
                            case 0xCu:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 4097;
                              break;
                            case 0x1Fu:
                              v124 = v42 | 0x300;
                              v128 = 4097;
                              break;
                            case 0x20u:
                              v124 = v42 & 0xFCFF;
                              v128 = 6145;
                              break;
                            case 0x1Du:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 6145;
                              break;
                            case 0x1Eu:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 6145;
                              break;
                            case 0xDu:
                              v124 = v42 | 0x300;
                              v128 = 6145;
                              break;
                            case 9u:
                              v124 = v42 & 0xFCFF;
                              v128 = 8193;
                              break;
                            case 0xAu:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 8193;
                              break;
                            case 0xBu:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 8193;
                              break;
                            case 0x3Eu:
                              v124 = v42 | 0x300;
                              v128 = 8193;
                              break;
                            case 0x3Cu:
                              v124 = v42 & 0xFCFF;
                              v128 = 10241;
                              break;
                            case 0x2Au:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 10241;
                              break;
                            case 0xFu:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 10241;
                              break;
                            case 0x21u:
                              v124 = v42 | 0x300;
                              v128 = 10241;
                              break;
                            case 0x22u:
                              v124 = v42 & 0xFCFF;
                              v128 = 12289;
                              break;
                            case 8u:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 12289;
                              break;
                            case 0x37u:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 12289;
                              break;
                            case 0x2Du:
                              v124 = v42 | 0x300;
                              v128 = 12289;
                              break;
                            case 5u:
                              v124 = v42 & 0xFCFF;
                              v128 = 14337;
                              break;
                            case 0x10u:
                              v124 = v42 & 0xFCFF | 0x100;
                              v128 = 14337;
                              break;
                            case 7u:
                              v124 = v42 & 0xFCFF | 0x200;
                              v128 = 14337;
                              break;
                            case 6u:
                              goto LABEL_901;
                            case 0x14u:
                              goto LABEL_909;
                            case 0x15u:
                              goto LABEL_917;
                            case 0x16u:
                              goto LABEL_925;
                            case 0x11u:
                              goto LABEL_934;
                            case 0x12u:
                              goto LABEL_942;
                            case 0x13u:
                              goto LABEL_950;
                            case 0x36u:
                              goto LABEL_958;
                            case 0x28u:
                              goto LABEL_967;
                            case 0x23u:
LABEL_973:
                              v124 = v42 & 0xFCFF;
                              goto LABEL_978;
                            case 0x24u:
LABEL_977:
                              v124 = v42 & 0xFCFF | 0x100;
                              goto LABEL_978;
                            case 0x38u:
                              goto LABEL_899;
                            default:
                              goto LABEL_984;
                          }

LABEL_979:
                          v135 = v99 | v128;
                          goto LABEL_980;
                        }

LABEL_447:
                        LOWORD(v42) = v42 | 0x300;
                        goto LABEL_690;
                      }

LABEL_425:
                      LOWORD(v42) = v42 & 0xFCFF | 0x200;
                      goto LABEL_690;
                    }

LABEL_354:
                    LOWORD(v42) = v42 & 0xFCFF | 0x100;
                    goto LABEL_690;
                  }

                  if (!v140)
                  {
                    goto LABEL_689;
                  }

                  goto LABEL_395;
                }

                if (v81)
                {
                  v106 = v64 | 0x600;
                  if ((v141 & 1) == 0)
                  {
                    if (!v25)
                    {
                      goto LABEL_689;
                    }

                    v101 = v4 >> 9;
                    v112 = v4 >> 7;
                    v113 = v4 >> 4;
                    LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                    v114 = v4 >> 6;
                    v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                    v115 = 1642;
                    goto LABEL_292;
                  }

                  if (v139)
                  {
                    if (!v152)
                    {
                      if (v4 == 1)
                      {
                        v118 = v64 & 0xFFEF;
                        v119 = *(this + 72);
                        v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                        v121 = 5632;
                        goto LABEL_435;
                      }

                      goto LABEL_689;
                    }

                    LOWORD(v64) = v64 & 0xF8FF | 0x600;
                    if (v4 == 41)
                    {
                      goto LABEL_317;
                    }

                    goto LABEL_353;
                  }

                  if (!v138)
                  {
                    goto LABEL_689;
                  }

LABEL_395:
                  LOWORD(v86) = v99 | 0x201;
                  switch(v4)
                  {
                    case 0x34u:
                      v125 = v42 & 0xFCFF;
LABEL_450:
                      LOWORD(v64) = v106;
                      LOWORD(v42) = v125;
                      goto LABEL_690;
                    case 3u:
                      v125 = v42 & 0xFCFF | 0x100;
                      goto LABEL_450;
                    case 0x2Eu:
                      v125 = v42 & 0xFCFF | 0x200;
                      goto LABEL_450;
                    case 0x3Du:
                      v125 = v42 | 0x300;
                      goto LABEL_450;
                    case 0x3Bu:
                      v129 = v42 & 0xFCFF;
                      break;
                    case 0x2Fu:
                      v129 = v42 & 0xFCFF | 0x100;
                      break;
                    case 0x30u:
                      v129 = v42 & 0xFCFF | 0x200;
                      break;
                    case 0x31u:
                      v129 = v42 | 0x300;
                      break;
                    default:
                      switch(v4)
                      {
                        case 0x32u:
                          v129 = v42 & 0xFCFF;
                          v134 = 4609;
                          break;
                        case 0x1Au:
                          v129 = v42 & 0xFCFF | 0x100;
                          v134 = 4609;
                          break;
                        case 0x1Bu:
                          v129 = v42 & 0xFCFF | 0x200;
                          v134 = 4609;
                          break;
                        case 0x1Cu:
                          v129 = v42 | 0x300;
                          v134 = 4609;
                          break;
                        case 0x17u:
                          v129 = v42 & 0xFCFF;
                          v134 = 6657;
                          break;
                        case 0x18u:
                          v129 = v42 & 0xFCFF | 0x100;
                          v134 = 6657;
                          break;
                        case 0x19u:
                          v129 = v42 & 0xFCFF | 0x200;
                          v134 = 6657;
                          break;
                        case 0x33u:
                          v129 = v42 | 0x300;
                          v134 = 6657;
                          break;
                        default:
                          if (v4)
                          {
                            goto LABEL_689;
                          }

                          v129 = v42 & 0xFCFF;
                          v134 = 8705;
                          break;
                      }

LABEL_541:
                      LOWORD(v64) = v106;
                      LOWORD(v86) = v99 | v134;
                      LOWORD(v42) = v129;
                      goto LABEL_690;
                  }

                  v134 = 2561;
                  goto LABEL_541;
                }

                if (!v85)
                {
                  goto LABEL_690;
                }

                v100 = v64 | 0x700;
                if ((v84 & 1) == 0)
                {
                  if (!v25)
                  {
                    goto LABEL_671;
                  }

                  v101 = v4 >> 9;
                  v102 = v4 >> 7;
                  v103 = v4 >> 4;
                  LOWORD(v42) = v42 & 0xFCFF | ((v4 & 3) << 8);
                  v104 = v4 >> 6;
                  v86 |= (v4 >> 6) & 0x400 | (((v4 >> 4) & 1) << 9) & 0x7FF | (((v4 >> 2) & 3) << 11) & 0x1FFF | (((v4 >> 7) & 1) << 13) & 0x3FFF | (v4 >> 5 << 14) | 0x20;
                  v107 = 1898;
                  goto LABEL_270;
                }

                if (v82)
                {
                  if (!v151)
                  {
                    if (v4 != 1)
                    {
                      goto LABEL_671;
                    }

                    v118 = v64 & 0xFFEF;
                    v119 = v157;
                    v120 = (8 * v157) & 0x10 | (32 * v157) & 0x90;
                    v121 = 5888;
                    goto LABEL_435;
                  }

                  if (v4 != 41)
                  {
                    if (v4 != 14)
                    {
                      if (v4 != 39)
                      {
                        if (v4 != 53)
                        {
                          switch(v4)
                          {
                            case 0x2Bu:
                              v124 = v42 & 0xFCFF;
                              break;
                            case 0x2Cu:
                              v124 = v42 & 0xFCFF | 0x100;
                              break;
                            case 4u:
                              v124 = v42 & 0xFCFF | 0x200;
                              break;
                            case 0x3Au:
                              v124 = v42 | 0x300;
                              break;
                            default:
                              switch(v4)
                              {
                                case 0x39u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 4097;
                                  break;
                                case 2u:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 4097;
                                  break;
                                case 0xCu:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 4097;
                                  break;
                                case 0x1Fu:
                                  v124 = v42 | 0x300;
                                  v132 = 4097;
                                  break;
                                case 0x20u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 6145;
                                  break;
                                case 0x1Du:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 6145;
                                  break;
                                case 0x1Eu:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 6145;
                                  break;
                                case 0xDu:
                                  v124 = v42 | 0x300;
                                  v132 = 6145;
                                  break;
                                case 9u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 8193;
                                  break;
                                case 0xAu:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 8193;
                                  break;
                                case 0xBu:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 8193;
                                  break;
                                case 0x3Eu:
                                  v124 = v42 | 0x300;
                                  v132 = 8193;
                                  break;
                                case 0x3Cu:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 10241;
                                  break;
                                case 0x2Au:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 10241;
                                  break;
                                case 0xFu:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 10241;
                                  break;
                                case 0x21u:
                                  v124 = v42 | 0x300;
                                  v132 = 10241;
                                  break;
                                case 0x22u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 12289;
                                  break;
                                case 8u:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 12289;
                                  break;
                                case 0x37u:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 12289;
                                  break;
                                case 0x2Du:
                                  v124 = v42 | 0x300;
                                  v132 = 12289;
                                  break;
                                case 5u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 14337;
                                  break;
                                case 0x10u:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 14337;
                                  break;
                                case 7u:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 14337;
                                  break;
                                case 6u:
                                  v124 = v42 | 0x300;
                                  v132 = 14337;
                                  break;
                                case 0x14u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 16385;
                                  break;
                                case 0x15u:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 16385;
                                  break;
                                case 0x16u:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 16385;
                                  break;
                                case 0x11u:
                                  v124 = v42 | 0x300;
                                  v132 = 16385;
                                  break;
                                case 0x12u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 18433;
                                  break;
                                case 0x13u:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 18433;
                                  break;
                                case 0x36u:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 18433;
                                  break;
                                case 0x28u:
                                  v124 = v42 | 0x300;
                                  v132 = 18433;
                                  break;
                                case 0x23u:
                                  v124 = v42 & 0xFCFF;
                                  v132 = 20481;
                                  break;
                                case 0x24u:
                                  v124 = v42 & 0xFCFF | 0x100;
                                  v132 = 20481;
                                  break;
                                case 0x38u:
                                  v124 = v42 & 0xFCFF | 0x200;
                                  v132 = 20481;
                                  break;
                                default:
                                  if (v4)
                                  {
                                    goto LABEL_671;
                                  }

                                  v124 = v42 | 0x300;
                                  v132 = 20481;
                                  break;
                              }

                              goto LABEL_593;
                          }

                          v132 = 2049;
LABEL_593:
                          v135 = v99 | v132;
                          LOWORD(v64) = v64 | 0x700;
LABEL_980:
                          LOWORD(v86) = v135;
                          LOWORD(v42) = v124;
                          goto LABEL_690;
                        }

LABEL_500:
                        v122 = v42 | 0x300;
                        goto LABEL_501;
                      }

                      goto LABEL_478;
                    }

                    goto LABEL_458;
                  }
                }

                else
                {
                  if (!v137)
                  {
                    goto LABEL_671;
                  }

                  LOWORD(v86) = v99 | 0x201;
                  if (v4 != 52)
                  {
                    if (v4 != 3)
                    {
                      if (v4 != 46)
                      {
                        if (v4 != 61)
                        {
                          switch(v4)
                          {
                            case 0x3Bu:
                              v124 = v42 & 0xFCFF;
                              v132 = 2561;
                              break;
                            case 0x2Fu:
                              v124 = v42 & 0xFCFF | 0x100;
                              v132 = 2561;
                              break;
                            case 0x30u:
                              v124 = v42 & 0xFCFF | 0x200;
                              v132 = 2561;
                              break;
                            case 0x31u:
                              v124 = v42 | 0x300;
                              v132 = 2561;
                              break;
                            case 0x32u:
                              v124 = v42 & 0xFCFF;
                              v132 = 4609;
                              break;
                            case 0x1Au:
                              v124 = v42 & 0xFCFF | 0x100;
                              v132 = 4609;
                              break;
                            case 0x1Bu:
                              v124 = v42 & 0xFCFF | 0x200;
                              v132 = 4609;
                              break;
                            case 0x1Cu:
                              v124 = v42 | 0x300;
                              v132 = 4609;
                              break;
                            case 0x17u:
                              v124 = v42 & 0xFCFF;
                              v132 = 6657;
                              break;
                            case 0x18u:
                              v124 = v42 & 0xFCFF | 0x100;
                              v132 = 6657;
                              break;
                            case 0x19u:
                              v124 = v42 & 0xFCFF | 0x200;
                              v132 = 6657;
                              break;
                            case 0x33u:
                              v124 = v42 | 0x300;
                              v132 = 6657;
                              break;
                            default:
                              if (v4)
                              {
                                goto LABEL_671;
                              }

                              v124 = v42 & 0xFCFF;
                              v132 = 8705;
                              break;
                          }

                          goto LABEL_593;
                        }

                        goto LABEL_500;
                      }

LABEL_478:
                      v122 = v42 & 0xFCFF | 0x200;
                      goto LABEL_501;
                    }

LABEL_458:
                    v122 = v42 & 0xFCFF | 0x100;
                    goto LABEL_501;
                  }
                }

                v122 = v42 & 0xFCFF;
                goto LABEL_501;
              }

LABEL_233:
              if (v170)
              {
                goto LABEL_234;
              }

              goto LABEL_244;
            }

LABEL_226:
            v86 = v99 | 1;
            if (v98)
            {
              goto LABEL_227;
            }

            goto LABEL_232;
          }
        }

        else
        {
          if (!v94)
          {
            v67 = v67 | 0x20;
          }

          v99 = v96 | v97;
          if (v93)
          {
            goto LABEL_220;
          }
        }

        v67 = v67 & 0xFFFFFE7F | 0x80;
        goto LABEL_226;
      }

      v42 = (8 * v89) & 0x90 | ((v90 & 1) << 10) & 0xC79F | (((v90 >> 1) & 1) << 11) & 0xFFFFCF9F | (((v90 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v90 >> 3) & 1) << 13) | (v90 >> 4) & 8 | (v90 >> 4 << 14) | 0xFFFF8004 | 0x40;
    }

    else
    {
      v42 = (8 * v89) & 0x90 | ((v90 & 1) << 10) & 0xC79F | (((v90 >> 1) & 1) << 11) & 0xFFFFCF9F | (((v90 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v90 >> 3) & 1) << 13) | (v90 >> 4) & 8 | (v90 >> 4 << 14) | 0xFFFF8004 | 0x20;
    }

    v91 = (v89 << 9) & 0x1800 | (((v89 >> 5) & 1) << 13);
    goto LABEL_212;
  }

LABEL_690:
  *a2 = (v67 << 48) | (v64 << 32) | (v86 << 16) | v42;
  return a2 + 8;
}

unsigned __int8 *AGXIotoInstruction_CNDCALL_0::emit(AGXIotoInstruction_CNDCALL_0 *this, unsigned __int8 *a2)
{
  v3 = *(this + 12);
  v2 = *(this + 13);
  v5 = v2 == 1 || (v2 & 0xFFFFFFFE) == 2;
  v7 = (*(this + 56) & 1) == 0 && (*(this + 64) & 1) == 0 && v3 == 3;
  v8 = v3 == 2 || v7;
  v11 = *(this + 7) == 27 && *(this + 8) == 2 && *(this + 15) == 8;
  if (!v11 || !v5 || v8 == 0)
  {
    v13 = 0;
    LOWORD(v14) = 7;
    v15 = 4;
    LOWORD(v16) = 4;
  }

  else
  {
    v17 = *(this + 1);
    v18 = *(this + 2);
    v19 = *(this + 24);
    v20 = (v19 << 10) & 0x38000 | (16 * (*this & 1));
    v21 = *(this + 64);
    v14 = ((((v19 >> 1) & 1) << 11) | ((v19 & 1) << 10)) & 0xFFFFCFFF | (((v19 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v19 >> 3) & 1) << 13) | (v19 >> 4) & 0xFFFFBFFF | (((v19 >> 4) & 1) << 14) | 7;
    if (v17)
    {
      if (v17 == 1)
      {
        v14 = ((((v19 >> 1) & 1) << 11) | ((v19 & 1) << 10)) & 0xFFFFCF9F | (((v19 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v19 >> 3) & 1) << 13) | (v19 >> 4) & 0xFFFFBF9F | (((v19 >> 4) & 1) << 14) | 0x47;
      }

      else if (v17 == 2)
      {
        v14 = ((((v19 >> 1) & 1) << 11) | ((v19 & 1) << 10)) & 0xFFFFCF9F | (((v19 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v19 >> 3) & 1) << 13) | (v19 >> 4) & 0xFFFFBF9F | (((v19 >> 4) & 1) << 14) | 7;
      }
    }

    else
    {
      v14 = ((((v19 >> 1) & 1) << 11) | ((v19 & 1) << 10)) & 0xFFFFCF9F | (((v19 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v19 >> 3) & 1) << 13) | (v19 >> 4) & 0xFFFFBF9F | (((v19 >> 4) & 1) << 14) | 0x27;
    }

    v22 = v19 & 0x40;
    v13 = (4 * v21) & 8 | (16 * (*(this + 36) & 1u));
    v24 = *(this + 3);
    v23 = *(this + 4);
    v25 = v20 | 4;
    v26 = *(this + 5);
    if (v18 == 1)
    {
      v13 = v13 | 0x40;
    }

    else if (!v18)
    {
      v13 = v13 | 0x20;
    }

    v16 = v22 | 4;
    v27 = v25 | 0x40;
    if (!v24)
    {
      v25 |= 0x20u;
    }

    if (v24 == 1)
    {
      v25 = v27;
    }

    v28 = v25 & 0xFFFFFE7F | 0x80;
    v29 = v25 & 0xFFFFFE7F | 0x100;
    if (v23 == 2)
    {
      v25 &= 0xFFFFFE7F;
    }

    if (v23 == 1)
    {
      v25 = v29;
    }

    if (!v23)
    {
      v25 = v28;
    }

    v30 = v25 & 0xFFFFF9FF | 0x200;
    v31 = v25 & 0xFFFFF9FF | 0x400;
    if (v26 == 2)
    {
      v25 &= 0xFFFFF9FF;
    }

    if (v26 == 1)
    {
      v25 = v31;
    }

    if (v26)
    {
      v32 = v25;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 & 0xFFFFE7FF;
    v34 = v33 | 0x1000;
    if (v2 == 2)
    {
      v34 = v33 | 0x800;
    }

    if (v2 == 1)
    {
      v15 = v33;
    }

    else
    {
      v15 = v34;
    }

    if (v3 == 2)
    {
      v35 = *(this + 20);
      LOWORD(v14) = v14 & 0xFCFF | ((*(this + 20) & 3) << 8);
      v13 = v35 & 0x100 | v13;
      v15 = v15 & 0xFFFF9FFF | ((*(this + 56) & 1) << 14);
      v16 = (v16 | (8 * (v21 & 1))) & 0xFE0005FF | (((v35 >> 2) & 3) << 11) & 0xFE001FFF | (((v35 >> 4) & 1) << 9) & 0xFE001FFF | (((v35 >> 7) & 1) << 13) & 0xFE003FFF | (v35 >> 5 << 14);
    }

    else if (v7)
    {
      v15 = v15 | 0x2000;
      v36 = *(this + 20);
      LOWORD(v14) = v14 & 0xFCFF | ((*(this + 20) & 3) << 8);
      v16 |= (32 * v36) & 0x200 | (((v36 >> 2) & 3) << 11) & 0xFE001FFF | (((v36 >> 7) & 1) << 13) & 0xFE003FFF | (v36 >> 5 << 14);
      v13 = v36 & 0x100 | v13;
    }
  }

  *a2 = (v15 << 48) | (v13 << 32) | (v16 << 16) | v14;
  return a2 + 8;
}

unsigned __int8 *AGXIotoInstruction_B_1::emit(AGXIotoInstruction_B_1 *this, unsigned __int8 *a2)
{
  v2 = *(this + 24);
  v518 = v2 & 2;
  v516 = v518 == 0;
  v514 = (v2 & 1) == 0;
  v4 = (v2 & 0x40) >> 6;
  v5 = (v2 & 0x80u) != 0 || (v2 & 0x40) == 0;
  v3 = *(this + 24);
  v6 = v3 < 0xC0;
  v7 = (v2 & 0x20) == 0;
  v8 = (v2 & 0x20) >> 5;
  v9 = (v2 & 0x20) == 0 || v3 < 0xC0;
  v10 = (v2 & 0x20) == 0 || v5;
  v11 = (v2 & 0x10) == 0;
  v12 = (v2 & 0x10) >> 4;
  v13 = (v2 & 0x10) == 0 || v9;
  if ((v2 & 0x10) != 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = 1;
  }

  v15 = (v2 & 8) == 0;
  v16 = (v2 & 8) >> 3;
  v17 = ((v2 & 0x80u) != 0) | v4;
  v18 = v17 | v8 | v12;
  v642 = v18 | v16;
  v638 = v18 | v15;
  v19 = v17 | v8 | v11;
  v640 = v19 | v16;
  v20 = v17 | v7;
  v21 = v20 | v12 | v16;
  v22 = v5 | v8;
  v23 = v22 | v12 | v16;
  v24 = ((v2 & 0x80u) == 0) | v4;
  v25 = v24 | v8;
  v26 = v24 | v8 | v12;
  v27 = v19 | v15;
  v28 = v20 | v12 | v15;
  v29 = v20 | v11;
  v30 = v7 | v24;
  v31 = v29 | v16;
  v32 = v29 | v15;
  v33 = v22 | v12 | v15;
  v34 = v22 | v11;
  v35 = v10 | v12;
  v36 = v25 | v11;
  v37 = v6 | v8;
  v38 = v30 | v12;
  v39 = v30 | v11;
  v40 = v11 | v37;
  v41 = v37 | v12;
  v42 = v9 | v12;
  v43 = v34 | v16;
  v44 = v34 | v15;
  v45 = v35 | v16;
  v46 = v35 | v15;
  v47 = v26 | v16;
  v48 = v26 | v15;
  v49 = v36 | v15;
  v50 = v38 | v16;
  v51 = v38 | v15;
  v52 = v39 | v16;
  v53 = v39 | v15;
  v644 = v41 | v16;
  v54 = v41 | v15;
  v646 = v40 | v16;
  v648 = v40 | v15;
  v654 = v42 | v15;
  v55 = v42 | v16;
  if ((v2 & 8) != 0)
  {
    v56 = v13;
  }

  else
  {
    v56 = 1;
  }

  v656 = v13 | v16;
  v57 = v14 | v16;
  if ((v2 & 8) == 0)
  {
    v14 = 1;
  }

  v58 = v14 ^ 1;
  if ((v2 & 4) != 0)
  {
    v58 = 0;
  }

  v662 = v58;
  if ((v2 & 4) == 0)
  {
    v14 = 1;
  }

  v571 = v14;
  if ((v2 & 4) != 0)
  {
    v59 = v56;
  }

  else
  {
    v59 = 1;
  }

  v60 = v56 ^ 1;
  if ((v2 & 4) != 0)
  {
    v60 = 0;
  }

  v665 = v60;
  v61 = (v2 & 4) == 0;
  v524 = v2;
  v650 = v61 & (v642 ^ 1);
  v660 = v61 & (v638 ^ 1);
  v652 = v61 & (v640 ^ 1);
  v510 = v21;
  v658 = v61 & (v21 ^ 1);
  v529 = v23;
  v502 = v47;
  v62 = v61 & (v47 ^ 1);
  v664 = v59 ^ 1;
  v500 = v27;
  v504 = v28;
  v490 = v31;
  v494 = v32;
  v498 = v33;
  v484 = v43;
  v486 = v44;
  v492 = v45;
  v496 = v46;
  v488 = v57;
  v506 = v48;
  v63 = v61 & (v48 ^ 1);
  v508 = v36 | v16;
  v512 = v49;
  v64 = v61 & (v49 ^ 1);
  v520 = v50;
  v65 = v61 & (v50 ^ 1);
  v522 = v51;
  v66 = v61 & (v51 ^ 1);
  v526 = v52;
  v531 = v53;
  v67 = v61 & (v53 ^ 1);
  v533 = v54;
  v535 = v55;
  v68 = v61 & (v55 ^ 1);
  v591 = (v2 & 3) == 0;
  v69 = v61 & (v642 ^ 1);
  if ((v2 & 3) != 0)
  {
    v69 = 0;
  }

  v637 = v69;
  v70 = v61 & (v638 ^ 1);
  if ((v2 & 3) != 0)
  {
    v70 = 0;
  }

  v623 = v70;
  v71 = v61 & (v640 ^ 1);
  if ((v2 & 3) != 0)
  {
    v71 = 0;
  }

  v622 = v71;
  v72 = v61 & (v21 ^ 1);
  if ((v2 & 3) != 0)
  {
    v72 = 0;
  }

  v621 = v72;
  v547 = v61 & (v23 ^ 1);
  if ((v2 & 3) != 0)
  {
    v73 = 0;
  }

  else
  {
    v73 = v61 & (v23 ^ 1);
  }

  v620 = v73;
  v565 = v62;
  if ((v2 & 3) != 0)
  {
    v74 = 0;
  }

  else
  {
    v74 = v62;
  }

  v619 = v74;
  v537 = v61 & (v27 ^ 1);
  if ((v2 & 3) != 0)
  {
    v75 = 0;
  }

  else
  {
    v75 = v61 & (v27 ^ 1);
  }

  v592 = v75;
  v539 = v61 & (v28 ^ 1);
  if ((v2 & 3) != 0)
  {
    v76 = 0;
  }

  else
  {
    v76 = v61 & (v28 ^ 1);
  }

  v593 = v76;
  v541 = v61 & (v31 ^ 1);
  if ((v2 & 3) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = v61 & (v31 ^ 1);
  }

  v594 = v77;
  v543 = v61 & (v32 ^ 1);
  if ((v2 & 3) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = v61 & (v32 ^ 1);
  }

  v595 = v78;
  v545 = v61 & (v33 ^ 1);
  if ((v2 & 3) != 0)
  {
    v79 = 0;
  }

  else
  {
    v79 = v61 & (v33 ^ 1);
  }

  v596 = v79;
  v549 = v61 & (v43 ^ 1);
  if ((v2 & 3) != 0)
  {
    v80 = 0;
  }

  else
  {
    v80 = v61 & (v43 ^ 1);
  }

  v597 = v80;
  v551 = v61 & (v44 ^ 1);
  if ((v2 & 3) != 0)
  {
    v81 = 0;
  }

  else
  {
    v81 = v61 & (v44 ^ 1);
  }

  v598 = v81;
  v553 = v61 & (v45 ^ 1);
  if ((v2 & 3) != 0)
  {
    v82 = 0;
  }

  else
  {
    v82 = v61 & (v45 ^ 1);
  }

  v599 = v82;
  v555 = v61 & (v46 ^ 1);
  if ((v2 & 3) != 0)
  {
    v83 = 0;
  }

  else
  {
    v83 = v61 & (v46 ^ 1);
  }

  v600 = v83;
  v557 = v61 & (v57 ^ 1);
  if ((v2 & 3) != 0)
  {
    v84 = 0;
  }

  else
  {
    v84 = v61 & (v57 ^ 1);
  }

  v601 = v84;
  v85 = v662;
  if ((v2 & 3) != 0)
  {
    v85 = 0;
  }

  v602 = v85;
  v559 = v63;
  if ((v2 & 3) != 0)
  {
    v86 = 0;
  }

  else
  {
    v86 = v63;
  }

  v603 = v86;
  v561 = v61 & ((v36 | v16) ^ 1);
  if ((v2 & 3) != 0)
  {
    v87 = 0;
  }

  else
  {
    v87 = v61 & ((v36 | v16) ^ 1);
  }

  v604 = v87;
  v563 = v64;
  if ((v2 & 3) != 0)
  {
    v88 = 0;
  }

  else
  {
    v88 = v64;
  }

  v605 = v88;
  v567 = v65;
  if ((v2 & 3) != 0)
  {
    v89 = 0;
  }

  else
  {
    v89 = v65;
  }

  v606 = v89;
  v569 = v66;
  if ((v2 & 3) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = v66;
  }

  v607 = v90;
  v573 = v61 & (v52 ^ 1);
  if ((v2 & 3) != 0)
  {
    v91 = 0;
  }

  else
  {
    v91 = v61 & (v52 ^ 1);
  }

  v608 = v91;
  v575 = v67;
  if ((v2 & 3) != 0)
  {
    v92 = 0;
  }

  else
  {
    v92 = v67;
  }

  v609 = v92;
  v577 = v61 & (v644 ^ 1);
  if ((v2 & 3) != 0)
  {
    v93 = 0;
  }

  else
  {
    v93 = v61 & (v644 ^ 1);
  }

  v610 = v93;
  v579 = v61 & (v54 ^ 1);
  if ((v2 & 3) != 0)
  {
    v94 = 0;
  }

  else
  {
    v94 = v61 & (v54 ^ 1);
  }

  v611 = v94;
  v581 = v61 & (v646 ^ 1);
  if ((v2 & 3) != 0)
  {
    v95 = 0;
  }

  else
  {
    v95 = v61 & (v646 ^ 1);
  }

  v612 = v95;
  v583 = v61 & (v648 ^ 1);
  if ((v2 & 3) != 0)
  {
    v96 = 0;
  }

  else
  {
    v96 = v61 & (v648 ^ 1);
  }

  v613 = v96;
  v585 = v68;
  if ((v2 & 3) != 0)
  {
    v97 = 0;
  }

  else
  {
    v97 = v68;
  }

  v614 = v97;
  v587 = v61 & (v654 ^ 1);
  if ((v2 & 3) != 0)
  {
    v98 = 0;
  }

  else
  {
    v98 = v61 & (v654 ^ 1);
  }

  v615 = v98;
  v589 = v61 & (v656 ^ 1);
  if ((v2 & 3) != 0)
  {
    v99 = 0;
  }

  else
  {
    v99 = v61 & (v656 ^ 1);
  }

  v616 = v99;
  v100 = v60;
  if ((v2 & 3) != 0)
  {
    v100 = 0;
  }

  v617 = v100;
  v101 = v664;
  if ((v2 & 3) != 0)
  {
    v101 = 0;
  }

  v618 = v101;
  v103 = *(this + 4);
  v102 = *(this + 5);
  v105 = *(this + 1);
  v104 = *(this + 2);
  v106 = *(this + 3);
  v107 = v102 | v103 | v106;
  if (v105)
  {
    v108 = 0;
  }

  else
  {
    v108 = v104 == 1;
  }

  if (v105)
  {
    v109 = 0;
  }

  else
  {
    v109 = v104 == 2;
  }

  v110 = v105 == 1 && v104 == 0;
  v111 = v105 == 1 && v104 == 1;
  v112 = v105 == 1 && v104 == 2;
  v113 = v105 == 2 && v104 == 0;
  v114 = v105 == 2 && v104 == 1;
  v115 = v105 == 2 && v104 == 2;
  v116 = v107 == 0;
  v361 = v107 == 0;
  v341 = v113;
  if (v107)
  {
    v117 = 0;
  }

  else
  {
    v117 = v113;
  }

  v353 = v117;
  v338 = v114;
  v118 = v116 && v114;
  v351 = v118;
  v340 = v108;
  v119 = v116 && v108;
  v350 = v119;
  v342 = v110;
  v120 = v116 && v110;
  v349 = v120;
  v339 = v111;
  v121 = v116 && v111;
  v348 = v121;
  v337 = v109;
  if (!v116)
  {
    v109 = 0;
  }

  v347 = v109;
  v336 = v112;
  v122 = v116 && v112;
  v346 = v122;
  v335 = v115;
  v123 = v116 && v115;
  v345 = v123;
  v124 = v102 != 1;
  v125 = v102 != 2;
  if (v103)
  {
    v126 = 1;
  }

  else
  {
    v126 = v102 != 1;
  }

  if (v103)
  {
    v127 = 1;
  }

  else
  {
    v127 = v102 != 2;
  }

  v128 = v103 != 1 || v102 != 0;
  v129 = v103 != 1 || v102 != 1;
  v130 = v103 != 1 || v102 != 2;
  v131 = v103 == 2;
  v132 = v104 | v105;
  v133 = !v131 || v102 != 0;
  if (!v131)
  {
    v124 = 1;
    v125 = 1;
  }

  if (v106)
  {
    v134 = 1;
  }

  else
  {
    v134 = v128;
  }

  if (v106)
  {
    v135 = 1;
  }

  else
  {
    v135 = v133;
  }

  if (v106)
  {
    v136 = 1;
  }

  else
  {
    v136 = v126;
  }

  if (v106)
  {
    v137 = 1;
  }

  else
  {
    v137 = v129;
  }

  if (v106)
  {
    v138 = 1;
  }

  else
  {
    v138 = v124;
  }

  if (v106)
  {
    v139 = 1;
  }

  else
  {
    v139 = v127;
  }

  v628 = v139;
  if (v106)
  {
    v140 = 1;
  }

  else
  {
    v140 = v130;
  }

  v632 = v140;
  if (v106)
  {
    v141 = 1;
  }

  else
  {
    v141 = v125;
  }

  v634 = v141;
  v142 = v106 != 1 || *(this + 2) != 0;
  v143 = v106 != 1 || v128;
  v144 = v106 != 1 || v133;
  v145 = v106 != 1 || v126;
  v146 = v106 != 1 || v129;
  v147 = v106 != 1 || v124;
  v148 = v106 != 1 || v127;
  v149 = v106 != 1 || v130;
  v626 = v149;
  v150 = v106 != 1 || v125;
  v630 = v150;
  v151 = v106 == 2;
  v152 = v106 != 2 || *(this + 2) != 0;
  v153 = !v151 || v128;
  if (v151)
  {
    v154 = v124;
  }

  else
  {
    v133 = 1;
    v126 = 1;
    v129 = 1;
    v154 = 1;
  }

  v155 = !v151 || v127;
  if (v151)
  {
    v156 = v125;
  }

  else
  {
    v130 = 1;
    v156 = 1;
  }

  v624 = v156;
  v157 = v132 == 0;
  v158 = !v142;
  v159 = !v152;
  v160 = v134 ^ 1;
  v161 = v143 ^ 1;
  v162 = v153 ^ 1;
  v163 = v135 ^ 1;
  v164 = v145 ^ 1;
  v165 = v137 ^ 1;
  v166 = v146 ^ 1;
  v167 = !v129;
  v168 = v148 ^ 1;
  v169 = !v130;
  v170 = v157;
  v360 = v170;
  v343 = !v142;
  if (!v157)
  {
    v158 = 0;
  }

  v344 = v158;
  v334 = v159;
  if (!v157)
  {
    v159 = 0;
  }

  v333 = v159;
  v313 = v160;
  v314 = v161;
  if (v157)
  {
    v171 = v160;
  }

  else
  {
    v171 = 0;
  }

  if (!v157)
  {
    v161 = 0;
  }

  v310 = v171;
  v311 = v161;
  if (v157)
  {
    v172 = v162;
  }

  else
  {
    v172 = 0;
  }

  v312 = v172;
  if (v157)
  {
    v173 = v163;
  }

  else
  {
    v173 = 0;
  }

  v320 = v144 ^ 1;
  v321 = !v133;
  if (v157)
  {
    v174 = v144 ^ 1;
  }

  else
  {
    v174 = 0;
  }

  v315 = v174;
  v316 = v162;
  v175 = v157 && !v133;
  v317 = v175;
  v318 = v163;
  v322 = v136 ^ 1;
  if (v157)
  {
    v176 = v136 ^ 1;
  }

  else
  {
    v176 = 0;
  }

  v319 = v176;
  if (v157)
  {
    v177 = v164;
  }

  else
  {
    v177 = 0;
  }

  v178 = v157 && !v126;
  v328 = v137 ^ 1;
  if (!v157)
  {
    v165 = 0;
  }

  v323 = v165;
  v324 = v164;
  v330 = v166;
  v331 = v167;
  if (!v157)
  {
    v166 = 0;
  }

  v325 = v166;
  v326 = !v126;
  if (v157)
  {
    v179 = v167;
  }

  else
  {
    v179 = 0;
  }

  v327 = v179;
  v332 = v138 ^ 1;
  if (v157)
  {
    v180 = v138 ^ 1;
  }

  else
  {
    v180 = 0;
  }

  v329 = v180;
  if (v157)
  {
    v181 = v147 ^ 1;
  }

  else
  {
    v181 = 0;
  }

  if (v157)
  {
    v182 = v154 ^ 1;
  }

  else
  {
    v182 = 0;
  }

  if (v157)
  {
    v183 = v628 ^ 1;
  }

  else
  {
    v183 = 0;
  }

  if (v157)
  {
    v184 = v148 ^ 1;
  }

  else
  {
    v184 = 0;
  }

  if (v157)
  {
    v185 = v155 ^ 1;
  }

  else
  {
    v185 = 0;
  }

  if (v157)
  {
    v186 = v632 ^ 1;
  }

  else
  {
    v186 = 0;
  }

  if (v157)
  {
    v187 = v626 ^ 1;
  }

  else
  {
    v187 = 0;
  }

  if (v157)
  {
    v188 = v169;
  }

  else
  {
    v188 = 0;
  }

  if (v157)
  {
    v189 = v634 ^ 1;
  }

  else
  {
    v189 = 0;
  }

  if (v157)
  {
    v190 = v630 ^ 1;
  }

  else
  {
    v190 = 0;
  }

  if (v157)
  {
    v191 = v624 ^ 1;
  }

  else
  {
    v191 = 0;
  }

  v192 = 3601;
  if (*(this + 7) == 8 && (v309 = v173, *(this + 8) == 3))
  {
    v308 = v181;
    LOWORD(v181) = 0;
    if (*(this + 5))
    {
      LOWORD(v245) = 0;
      LOWORD(v246) = 0;
      LOWORD(v243) = 94;
    }

    else
    {
      v352 = *(this + 5);
      v282 = v177;
      v283 = v178;
      v284 = v182;
      v285 = v183;
      v286 = v147 ^ 1;
      v287 = v184;
      v288 = v154 ^ 1;
      v289 = v628 ^ 1;
      v290 = v185;
      v291 = v168;
      v292 = v186;
      v293 = v155 ^ 1;
      v294 = v187;
      v295 = v632 ^ 1;
      v296 = v188;
      v297 = v626 ^ 1;
      v298 = v189;
      v299 = v169;
      v300 = v190;
      v301 = v634 ^ 1;
      v302 = v191;
      v303 = v630 ^ 1;
      v304 = v624 ^ 1;
      v193 = v516 & v524;
      v194 = (v518 >> 1) & v514;
      v195 = (v518 >> 1) & v524;
      v527 = v526 | v61;
      v358 = v644 | v61;
      v356 = v533 | v61;
      v196 = v646 | v61;
      v197 = v648 | v61;
      v198 = v535 | v61;
      v199 = v654 | v61;
      v200 = v656 | v61;
      v201 = (v642 | v61) ^ 1;
      v202 = v650 & v516 & v524;
      v203 = v650 & v194;
      v657 = v650 & v195;
      v245 = (v638 | v61) ^ 1;
      v204 = v201 & v591;
      v655 = v201 & v516 & v524;
      v651 = v201 & v194;
      v649 = v201 & v195;
      v647 = v652 & v516 & v524;
      v645 = v652 & v194;
      v653 = v652 & v195;
      v205 = (v640 | v61) ^ 1;
      v643 = v205 & v591;
      v641 = v205 & v516 & v524;
      v639 = v205 & v194;
      v362 = v205 & v195;
      v363 = v537 & v516 & v524;
      v364 = v537 & v194;
      v365 = v537 & v195;
      v206 = (v500 | v61) ^ 1;
      v366 = v206 & v591;
      v367 = v206 & v516 & v524;
      v368 = v206 & v194;
      v369 = v206 & v195;
      v243 = v660 & v516 & v524;
      LODWORD(v246) = v660 & v194;
      v370 = v660 & v195;
      v371 = v658 & v516 & v524;
      v372 = v658 & v194;
      v373 = v658 & v195;
      v207 = (v510 | v61) ^ 1;
      v374 = v207 & v591;
      v375 = v207 & v516 & v524;
      v376 = v207 & v194;
      v377 = v207 & v195;
      v378 = v539 & v516 & v524;
      v379 = v539 & v194;
      v380 = v539 & v195;
      v208 = (v504 | v61) ^ 1;
      v381 = v208 & v591;
      v382 = v208 & v516 & v524;
      v383 = v208 & v194;
      v384 = v208 & v195;
      v385 = v541 & v516 & v524;
      v386 = v541 & v194;
      v387 = v541 & v195;
      v209 = (v490 | v61) ^ 1;
      v388 = v209 & v591;
      v389 = v209 & v516 & v524;
      v390 = v209 & v194;
      v391 = v209 & v195;
      v392 = v543 & v516 & v524;
      v393 = v543 & v194;
      v394 = v543 & v195;
      v210 = (v494 | v61) ^ 1;
      v395 = v210 & v591;
      v396 = v210 & v516 & v524;
      v397 = v210 & v194;
      v398 = v210 & v195;
      v399 = v547 & v516 & v524;
      v400 = v547 & v194;
      v401 = v547 & v195;
      v402 = ((v529 | v61) ^ 1) & v591;
      v403 = ((v529 | v61) ^ 1) & v516 & v524;
      v404 = ((v529 | v61) ^ 1) & v194;
      v405 = ((v529 | v61) ^ 1) & v195;
      v406 = v545 & v516 & v524;
      v407 = v545 & v194;
      v408 = v545 & v195;
      v211 = (v498 | v61) ^ 1;
      v409 = v211 & v591;
      v410 = v211 & v516 & v524;
      v411 = v211 & v194;
      v412 = v211 & v195;
      v413 = v549 & v516 & v524;
      v414 = v549 & v194;
      v415 = v549 & v195;
      v212 = (v484 | v61) ^ 1;
      v416 = v212 & v591;
      v417 = v212 & v516 & v524;
      v418 = v212 & v194;
      v419 = v212 & v195;
      v420 = v551 & v516 & v524;
      v421 = v551 & v194;
      v422 = v551 & v195;
      v213 = (v486 | v61) ^ 1;
      v423 = v213 & v591;
      v424 = v213 & v516 & v524;
      v425 = v213 & v194;
      v426 = v213 & v195;
      v427 = v553 & v516 & v524;
      v428 = v553 & v194;
      v429 = v553 & v195;
      v214 = (v492 | v61) ^ 1;
      v430 = v214 & v591;
      v431 = v214 & v516 & v524;
      v432 = v214 & v194;
      v433 = v214 & v195;
      v434 = v555 & v516 & v524;
      v435 = v555 & v194;
      v436 = v555 & v195;
      v215 = (v496 | v61) ^ 1;
      v437 = v215 & v591;
      v438 = v215 & v516 & v524;
      v439 = v215 & v194;
      v440 = v215 & v195;
      v441 = v557 & v516 & v524;
      v442 = v557 & v194;
      v443 = v557 & v195;
      v216 = (v488 | v61) ^ 1;
      v444 = v216 & v591;
      v445 = v216 & v516 & v524;
      v446 = v216 & v194;
      v447 = v216 & v195;
      v448 = v662 & v516 & v524;
      v449 = v662 & v194;
      v450 = v662 & v195;
      v451 = (v571 ^ 1) & v591;
      v452 = (v571 ^ 1) & v516 & v524;
      v453 = (v571 ^ 1) & v194;
      v454 = (v571 ^ 1) & v195;
      v455 = v565 & v516 & v524;
      v456 = v565 & v194;
      v457 = v565 & v195;
      v217 = (v502 | v61) ^ 1;
      v458 = v217 & v591;
      v459 = v217 & v516 & v524;
      v460 = v217 & v194;
      v461 = v217 & v195;
      v462 = v559 & v516 & v524;
      v463 = v559 & v194;
      v464 = v559 & v195;
      v218 = (v506 | v61) ^ 1;
      v465 = v218 & v591;
      v466 = v218 & v516 & v524;
      v467 = v218 & v194;
      v468 = v218 & v195;
      v469 = v561 & v516 & v524;
      v470 = v561 & v194;
      v471 = v561 & v195;
      v219 = (v508 | v61) ^ 1;
      v472 = v219 & v591;
      v473 = v219 & v516 & v524;
      v474 = v219 & v194;
      v475 = v219 & v195;
      v476 = v563 & v516 & v524;
      v477 = v563 & v194;
      v478 = v563 & v195;
      v220 = (v512 | v61) ^ 1;
      v479 = v220 & v591;
      v480 = v220 & v516 & v524;
      v481 = v220 & v194;
      v482 = v220 & v195;
      v483 = v567 & v516 & v524;
      v485 = v567 & v194;
      v487 = v567 & v195;
      v221 = (v520 | v61) ^ 1;
      v489 = v221 & v591;
      v491 = v221 & v516 & v524;
      v493 = v221 & v194;
      v495 = v221 & v195;
      v497 = v569 & v516 & v524;
      v499 = v569 & v194;
      v501 = v569 & v195;
      v222 = (v522 | v61) ^ 1;
      v503 = v222 & v591;
      v505 = v222 & v516 & v524;
      v507 = v222 & v194;
      v509 = v222 & v195;
      v511 = v573 & v516 & v524;
      v513 = v573 & v194;
      v515 = v573 & v195;
      v517 = (v527 ^ 1) & v591;
      v519 = (v527 ^ 1) & v193;
      v521 = (v527 ^ 1) & v194;
      v523 = (v527 ^ 1) & v195;
      v525 = v575 & v193;
      v528 = v575 & v194;
      v530 = v575 & v195;
      v223 = (v531 | v61) ^ 1;
      v532 = v223 & v591;
      v534 = v223 & v193;
      v536 = v223 & v194;
      v538 = v223 & v195;
      v540 = v577 & v193;
      v542 = v577 & v194;
      v544 = v577 & v195;
      v546 = (v358 ^ 1) & v591;
      v548 = (v358 ^ 1) & v193;
      v550 = (v358 ^ 1) & v194;
      v552 = (v358 ^ 1) & v195;
      v554 = v579 & v193;
      v556 = v579 & v194;
      v558 = v579 & v195;
      v560 = (v356 ^ 1) & v591;
      v562 = (v356 ^ 1) & v193;
      v564 = (v356 ^ 1) & v194;
      v566 = (v356 ^ 1) & v195;
      v568 = v581 & v193;
      v570 = v581 & v194;
      v572 = v581 & v195;
      v224 = v196 ^ 1;
      v225 = (v196 ^ 1) & v591;
      v226 = (v196 ^ 1) & v193;
      v227 = v224 & v194;
      v228 = v224 & v195;
      v359 = v583 & v193;
      v574 = v583 & v194;
      v576 = v583 & v195;
      v578 = (v197 ^ 1) & v591;
      v580 = (v197 ^ 1) & v193;
      v582 = (v197 ^ 1) & v194;
      v354 = (v197 ^ 1) & v195;
      v584 = v585 & v193;
      v625 = v585 & v194;
      v627 = v585 & v195;
      v586 = (v198 ^ 1) & v591;
      v229 = (v198 ^ 1) & v193;
      v355 = (v198 ^ 1) & v194;
      v230 = (v198 ^ 1) & v195;
      v357 = v587 & v193;
      v661 = v587 & v194;
      v663 = v587 & v195;
      v231 = (v199 ^ 1) & v591;
      v629 = (v199 ^ 1) & v193;
      v232 = (v199 ^ 1) & v194;
      v631 = (v199 ^ 1) & v195;
      v633 = v589 & v193;
      v635 = v589 & v194;
      v659 = v589 & v195;
      v233 = (v200 ^ 1) & v591;
      v181 = (v200 ^ 1) & v193;
      v234 = (v200 ^ 1) & v194;
      v235 = (v200 ^ 1) & v195;
      v236 = v245 & v193;
      v237 = v665 & v193;
      v238 = v664 & v193;
      v239 = v664 & v194;
      v240 = v245 & v194;
      v241 = v665 & v194;
      v242 = v665 & v195;
      v666 = v203;
      v590 = v243;
      v588 = v246;
      v307 = v245 & v591;
      LOBYTE(v224) = v451 | v602 | v444 | v601 | v438 | v439 | v440 | v441 | v442 | v443 | v445 | v446 | v447 | v448 | v449 | v450 | v437 | v600 | v430 | v599 | v425 | v426 | v427 | v428 | v429 | v431 | v432 | v433 | v434 | v435 | v436 | v423 | v598 | v416 | v597 | v413 | v414 | v415 | v417 | v418 | v419 | v420 | v421 | v422 | v424 | v409 | v596 | v402 | v401 | v403 | v404 | v405 | v406 | v407 | v408 | v410 | v411 | v412 | v395 | v595 | v392 | v393 | v394 | v396 | v397 | v398 | v236 | v399 | v400 | v388 | v594 | v383 | v384 | v385 | v386 | v387 | v389 | v390 | v391 | v381 | v593 | v375 | v376 | v377 | v378 | v379 | v380 | v382 | v374 | v367 | v368 | v369 | v370 | v371 | v372 | v373 | v366 | v592 | v639 | v362 | v363 | v364 | v365 | v643 | v649 | v647 | v645 | v653 | v641 | v245 & v591 | v655 | v651 | v243 | v246 | v619 | v620 | v664 & v195 | v657 | v621 | v622 | v623 | v204 | v203 | v637 | v202;
      v192 = 3601;
      LOWORD(v243) = 94;
      v305 = v181;
      v306 = v239;
      LOBYTE(v203) = v618 | v617 | v233 | v616 | v631 | v633 | v635 | v659 | v181 | v234 | v235 | v237 | v241 | v242 | v238 | v239;
      v244 = v245 & v195;
      LOBYTE(v224) = v203 | v245 & v195 | v231 | v615 | v586 | v614 | v578 | v359 | v574 | v576 | v580 | v582 | v354 | v584 | v625 | v627 | v229 | v355 | v230 | v357 | v661 | v663 | v629 | v232 | v613 | v225 | v612 | v560 | v611 | v546 | v548 | v550 | v552 | v554 | v556 | v558 | v562 | v564 | v566 | v568 | v570 | v572 | v226 | v227 | v228 | v610 | v532 | v609 | v517 | v511 | v513 | v515 | v519 | v521 | v523 | v525 | v528 | v530 | v534 | v536 | v538 | v540 | v542 | v544 | v608 | v503 | v607 | v489 | v606 | v482 | v483 | v485 | v487 | v491 | v493 | v495 | v497 | v499 | v501 | v505 | v507 | v509 | v479 | v605 | v472 | v604 | v467 | v468 | v469 | v470 | v471 | v473 | v474 | v475 | v476 | v477 | v478 | v480 | v481 | v465 | v603 | v458 | v452 | v453 | v454 | v240 | v455 | v456 | v457 | v459 | v460 | v461 | v462 | v463 | v464 | v466 | v224;
      LOWORD(v245) = 0;
      LOWORD(v181) = 0;
      LOWORD(v246) = 0;
      if (v224)
      {
        v247 = v237;
        v243 = (v352 >> 2) & 0xF00 | (((v352 >> 1) & 1) << 7) & 0xFFFF8FFF | (((v352 >> 2) & 7) << 12) | 0x5E;
        v181 = (v352 >> 15) & 0x1F;
        v246 = (v352 >> 33) & 0x7FFF;
        v248 = (v352 >> 4) & 2 | (v352 >> 3) & 8 | (v352 >> 2) & 0x10E0 | (4 * (*this & 1));
        v192 = v248 | 0xE11;
        v245 = (v352 >> 17) & 0xFFFFC000 | (v352 >> 20) & 0x7FF | ((*(this + 36) & 1) << 13);
        if ((v361 & v360 & 1) == 0)
        {
          if (v353)
          {
            LOWORD(v181) = v181 | 0x20;
          }

          else if (v351)
          {
            LOWORD(v181) = v181 | 0x40;
          }

          else if (v350)
          {
            LOWORD(v181) = v181 | 0x60;
          }

          else if (v349)
          {
            LOWORD(v181) = v181 | 0x80;
          }

          else if (v348)
          {
            LOWORD(v181) = v181 | 0xA0;
          }

          else if (v347)
          {
            LOWORD(v181) = v181 | 0xC0;
          }

          else if (v346)
          {
            LOWORD(v181) = v181 | 0xE0;
          }

          else if (v345)
          {
            LOWORD(v181) = v181 | 0x100;
          }

          else if (v344)
          {
            LOWORD(v181) = v181 | 0x120;
          }

          else if ((v343 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x140;
          }

          else if ((v343 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x160;
          }

          else if ((v343 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x180;
          }

          else if ((v343 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1A0;
          }

          else if ((v343 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1C0;
          }

          else if ((v343 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1E0;
          }

          else if ((v343 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x200;
          }

          else if ((v343 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x220;
          }

          else if (v333)
          {
            LOWORD(v181) = v181 | 0x240;
          }

          else if ((v334 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x260;
          }

          else if ((v334 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x280;
          }

          else if ((v334 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x2A0;
          }

          else if ((v334 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x2C0;
          }

          else if ((v334 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x2E0;
          }

          else if ((v334 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x300;
          }

          else if ((v334 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x320;
          }

          else if ((v334 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x340;
          }

          else if (v310)
          {
            LOWORD(v181) = v181 | 0x360;
          }

          else if ((v313 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x380;
          }

          else if ((v313 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x3A0;
          }

          else if ((v313 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x3C0;
          }

          else if ((v313 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x3E0;
          }

          else if ((v313 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x400;
          }

          else if ((v313 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x420;
          }

          else if ((v313 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x440;
          }

          else if ((v313 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x460;
          }

          else if (v311)
          {
            LOWORD(v181) = v181 | 0x480;
          }

          else if ((v314 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x4A0;
          }

          else if ((v314 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x4C0;
          }

          else if ((v314 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x4E0;
          }

          else if ((v314 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x500;
          }

          else if ((v314 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x520;
          }

          else if ((v314 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x540;
          }

          else if ((v314 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x560;
          }

          else if ((v314 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x580;
          }

          else if (v312)
          {
            LOWORD(v181) = v181 | 0x5A0;
          }

          else if ((v316 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x5C0;
          }

          else if ((v316 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x5E0;
          }

          else if ((v316 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x600;
          }

          else if ((v316 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x620;
          }

          else if ((v316 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x640;
          }

          else if ((v316 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x660;
          }

          else if ((v316 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x680;
          }

          else if ((v316 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x6A0;
          }

          else if (v309)
          {
            LOWORD(v181) = v181 | 0x6C0;
          }

          else if ((v318 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x6E0;
          }

          else if ((v318 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x700;
          }

          else if ((v318 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x720;
          }

          else if ((v318 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x740;
          }

          else if ((v318 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x760;
          }

          else if ((v318 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x780;
          }

          else if ((v318 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x7A0;
          }

          else if ((v318 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x7C0;
          }

          else if (v315)
          {
            LOWORD(v181) = v181 | 0x7E0;
          }

          else if ((v320 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x800;
          }

          else if ((v320 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x820;
          }

          else if ((v320 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x840;
          }

          else if ((v320 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x860;
          }

          else if ((v320 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x880;
          }

          else if ((v320 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x8A0;
          }

          else if ((v320 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x8C0;
          }

          else if ((v320 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x8E0;
          }

          else if (v317)
          {
            LOWORD(v181) = v181 | 0x900;
          }

          else if ((v321 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x920;
          }

          else if ((v321 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x940;
          }

          else if ((v321 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x960;
          }

          else if ((v321 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x980;
          }

          else if ((v321 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x9A0;
          }

          else if ((v321 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x9C0;
          }

          else if ((v321 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x9E0;
          }

          else if ((v321 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0xA00;
          }

          else if (v319)
          {
            LOWORD(v181) = v181 | 0xA20;
          }

          else if ((v322 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0xA40;
          }

          else if ((v322 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0xA60;
          }

          else if ((v322 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0xA80;
          }

          else if ((v322 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0xAA0;
          }

          else if ((v322 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0xAC0;
          }

          else if ((v322 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0xAE0;
          }

          else if ((v322 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0xB00;
          }

          else if ((v322 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0xB20;
          }

          else if (v282)
          {
            LOWORD(v181) = v181 | 0xB40;
          }

          else if ((v324 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0xB60;
          }

          else if ((v324 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0xB80;
          }

          else if ((v324 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0xBA0;
          }

          else if ((v324 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0xBC0;
          }

          else if ((v324 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0xBE0;
          }

          else if ((v324 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0xC00;
          }

          else if ((v324 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0xC20;
          }

          else if ((v324 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0xC40;
          }

          else if (v283)
          {
            LOWORD(v181) = v181 | 0xC60;
          }

          else if ((v326 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0xC80;
          }

          else if ((v326 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0xCA0;
          }

          else if ((v326 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0xCC0;
          }

          else if ((v326 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0xCE0;
          }

          else if ((v326 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0xD00;
          }

          else if ((v326 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0xD20;
          }

          else if ((v326 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0xD40;
          }

          else if ((v326 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0xD60;
          }

          else if (v323)
          {
            LOWORD(v181) = v181 | 0xD80;
          }

          else if ((v328 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0xDA0;
          }

          else if ((v328 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0xDC0;
          }

          else if ((v328 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0xDE0;
          }

          else if ((v328 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0xE00;
          }

          else if ((v328 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0xE20;
          }

          else if ((v328 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0xE40;
          }

          else if ((v328 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0xE60;
          }

          else if ((v328 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0xE80;
          }

          else if (v325)
          {
            LOWORD(v181) = v181 | 0xEA0;
          }

          else if ((v330 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0xEC0;
          }

          else if ((v330 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0xEE0;
          }

          else if ((v330 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0xF00;
          }

          else if ((v330 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0xF20;
          }

          else if ((v330 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0xF40;
          }

          else if ((v330 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0xF60;
          }

          else if ((v330 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0xF80;
          }

          else if ((v330 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0xFA0;
          }

          else if (v327)
          {
            LOWORD(v181) = v181 | 0xFC0;
          }

          else if ((v331 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0xFE0;
          }

          else if ((v331 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1000;
          }

          else if ((v331 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1020;
          }

          else if ((v331 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1040;
          }

          else if ((v331 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1060;
          }

          else if ((v331 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1080;
          }

          else if ((v331 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x10A0;
          }

          else if ((v331 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x10C0;
          }

          else if (v329)
          {
            LOWORD(v181) = v181 | 0x10E0;
          }

          else if ((v332 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1100;
          }

          else if ((v332 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1120;
          }

          else if ((v332 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1140;
          }

          else if ((v332 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1160;
          }

          else if ((v332 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1180;
          }

          else if ((v332 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x11A0;
          }

          else if ((v332 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x11C0;
          }

          else if ((v332 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x11E0;
          }

          else if (v308)
          {
            LOWORD(v181) = v181 | 0x1200;
          }

          else if ((v286 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1220;
          }

          else if ((v286 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1240;
          }

          else if ((v286 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1260;
          }

          else if ((v286 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1280;
          }

          else if ((v286 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x12A0;
          }

          else if ((v286 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x12C0;
          }

          else if ((v286 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x12E0;
          }

          else if ((v286 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1300;
          }

          else if (v284)
          {
            LOWORD(v181) = v181 | 0x1320;
          }

          else if ((v288 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1340;
          }

          else if ((v288 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1360;
          }

          else if ((v288 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1380;
          }

          else if ((v288 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x13A0;
          }

          else if ((v288 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x13C0;
          }

          else if ((v288 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x13E0;
          }

          else if ((v288 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1400;
          }

          else if ((v288 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1420;
          }

          else if (v285)
          {
            LOWORD(v181) = v181 | 0x1440;
          }

          else if ((v289 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1460;
          }

          else if ((v289 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1480;
          }

          else if ((v289 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x14A0;
          }

          else if ((v289 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x14C0;
          }

          else if ((v289 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x14E0;
          }

          else if ((v289 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1500;
          }

          else if ((v289 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1520;
          }

          else if ((v289 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1540;
          }

          else if (v287)
          {
            LOWORD(v181) = v181 | 0x1560;
          }

          else if ((v291 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1580;
          }

          else if ((v291 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x15A0;
          }

          else if ((v291 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x15C0;
          }

          else if ((v291 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x15E0;
          }

          else if ((v291 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1600;
          }

          else if ((v291 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1620;
          }

          else if ((v291 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1640;
          }

          else if ((v291 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1660;
          }

          else if (v290)
          {
            LOWORD(v181) = v181 | 0x1680;
          }

          else if ((v293 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x16A0;
          }

          else if ((v293 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x16C0;
          }

          else if ((v293 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x16E0;
          }

          else if ((v293 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1700;
          }

          else if ((v293 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1720;
          }

          else if ((v293 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1740;
          }

          else if ((v293 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1760;
          }

          else if ((v293 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1780;
          }

          else if (v292)
          {
            LOWORD(v181) = v181 | 0x17A0;
          }

          else if ((v295 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x17C0;
          }

          else if ((v295 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x17E0;
          }

          else if ((v295 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1800;
          }

          else if ((v295 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1820;
          }

          else if ((v295 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1840;
          }

          else if ((v295 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1860;
          }

          else if ((v295 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1880;
          }

          else if ((v295 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x18A0;
          }

          else if (v294)
          {
            LOWORD(v181) = v181 | 0x18C0;
          }

          else if ((v297 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x18E0;
          }

          else if ((v297 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1900;
          }

          else if ((v297 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1920;
          }

          else if ((v297 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1940;
          }

          else if ((v297 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1960;
          }

          else if ((v297 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1980;
          }

          else if ((v297 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x19A0;
          }

          else if ((v297 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x19C0;
          }

          else if (v296)
          {
            LOWORD(v181) = v181 | 0x19E0;
          }

          else if ((v299 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1A00;
          }

          else if ((v299 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1A20;
          }

          else if ((v299 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1A40;
          }

          else if ((v299 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1A60;
          }

          else if ((v299 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1A80;
          }

          else if ((v299 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1AA0;
          }

          else if ((v299 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1AC0;
          }

          else if ((v299 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1AE0;
          }

          else if (v298)
          {
            LOWORD(v181) = v181 | 0x1B00;
          }

          else if ((v301 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1B20;
          }

          else if ((v301 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1B40;
          }

          else if ((v301 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1B60;
          }

          else if ((v301 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1B80;
          }

          else if ((v301 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1BA0;
          }

          else if ((v301 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1BC0;
          }

          else if ((v301 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1BE0;
          }

          else if ((v301 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1C00;
          }

          else if (v300)
          {
            LOWORD(v181) = v181 | 0x1C20;
          }

          else if ((v303 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1C40;
          }

          else if ((v303 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1C60;
          }

          else if ((v303 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1C80;
          }

          else if ((v303 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1CA0;
          }

          else if ((v303 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1CC0;
          }

          else if ((v303 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1CE0;
          }

          else if ((v303 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1D00;
          }

          else if ((v303 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1D20;
          }

          else if (v302)
          {
            LOWORD(v181) = v181 | 0x1D40;
          }

          else if ((v304 & v342) != 0)
          {
            LOWORD(v181) = v181 | 0x1D60;
          }

          else if ((v304 & v341) != 0)
          {
            LOWORD(v181) = v181 | 0x1D80;
          }

          else if ((v304 & v340) != 0)
          {
            LOWORD(v181) = v181 | 0x1DA0;
          }

          else if ((v304 & v339) != 0)
          {
            LOWORD(v181) = v181 | 0x1DC0;
          }

          else if ((v304 & v338) != 0)
          {
            LOWORD(v181) = v181 | 0x1DE0;
          }

          else if ((v304 & v337) != 0)
          {
            LOWORD(v181) = v181 | 0x1E00;
          }

          else if ((v304 & v336) != 0)
          {
            LOWORD(v181) = v181 | 0x1E20;
          }

          else if ((v304 & v335) != 0)
          {
            LOWORD(v181) = v181 | 0x1E40;
          }
        }

        if ((v637 & 1) == 0)
        {
          if (v202)
          {
            v192 = v248 | 0x2E11;
            goto LABEL_848;
          }

          if (v666)
          {
            v192 = v248 | 0x4E11;
            goto LABEL_848;
          }

          if (v204)
          {
            v192 = v248 | 0x6E11;
            goto LABEL_848;
          }

          if (v623)
          {
            v192 = v248 | 0x8E11;
            goto LABEL_848;
          }

          if (v622)
          {
            v192 = v248 | 0xAE11;
            goto LABEL_848;
          }

          if (v621)
          {
            v192 = v248 | 0xCE11;
            goto LABEL_848;
          }

          if (v620)
          {
            v192 = v248 | 0xEE11;
            goto LABEL_848;
          }

          if (v619)
          {
LABEL_847:
            LOWORD(v181) = v181 | 0x2000;
            goto LABEL_848;
          }

          if (v664 & v195)
          {
            v249 = 11793;
LABEL_846:
            v192 = v248 | v249;
            goto LABEL_847;
          }

          if (v657)
          {
            v249 = 19985;
            goto LABEL_846;
          }

          if (v655)
          {
            v249 = 28177;
            goto LABEL_846;
          }

          if (v651)
          {
            v249 = -29167;
            goto LABEL_846;
          }

          if (v590)
          {
            v251 = -20975;
LABEL_855:
            v192 = v248 | v251;
            LOWORD(v181) = v181 | 0x2000;
            goto LABEL_848;
          }

          if (v588)
          {
            v251 = -12783;
            goto LABEL_855;
          }

          if (v307)
          {
            v251 = -4591;
            goto LABEL_855;
          }

          if (v649)
          {
            LOWORD(v181) = v181 | 0x4000;
            goto LABEL_848;
          }

          if (v647)
          {
            v252 = 11793;
LABEL_872:
            v192 = v248 | v252;
            LOWORD(v181) = v181 | 0x4000;
            goto LABEL_848;
          }

          if (v645)
          {
            v252 = 19985;
            goto LABEL_872;
          }

          if (v653)
          {
            v252 = 28177;
            goto LABEL_872;
          }

          if (v643)
          {
            v252 = -29167;
            goto LABEL_872;
          }

          if (v641)
          {
            v252 = -20975;
            goto LABEL_872;
          }

          if (v639)
          {
            v252 = -12783;
            goto LABEL_872;
          }

          if (v362)
          {
            v252 = -4591;
            goto LABEL_872;
          }

          if (v592)
          {
            LOWORD(v181) = v181 | 0x6000;
            goto LABEL_848;
          }

          if (v363)
          {
            v253 = 11793;
LABEL_889:
            v192 = v248 | v253;
            LOWORD(v181) = v181 | 0x6000;
            goto LABEL_848;
          }

          if (v364)
          {
            v253 = 19985;
            goto LABEL_889;
          }

          if (v365)
          {
            v253 = 28177;
            goto LABEL_889;
          }

          if (v366)
          {
            v253 = -29167;
            goto LABEL_889;
          }

          if (v367)
          {
            v253 = -20975;
            goto LABEL_889;
          }

          if (v368)
          {
            v253 = -12783;
            goto LABEL_889;
          }

          if (v369)
          {
            v253 = -4591;
            goto LABEL_889;
          }

          if (v370)
          {
            LOWORD(v181) = v181 | 0x8000;
            goto LABEL_848;
          }

          if (v371)
          {
            v254 = 11793;
LABEL_906:
            v192 = v248 | v254;
            LOWORD(v181) = v181 | 0x8000;
            goto LABEL_848;
          }

          if (v372)
          {
            v254 = 19985;
            goto LABEL_906;
          }

          if (v373)
          {
            v254 = 28177;
            goto LABEL_906;
          }

          if (v374)
          {
            v254 = -29167;
            goto LABEL_906;
          }

          if (v375)
          {
            v254 = -20975;
            goto LABEL_906;
          }

          if (v376)
          {
            v254 = -12783;
            goto LABEL_906;
          }

          if (v377)
          {
            v254 = -4591;
            goto LABEL_906;
          }

          if (v593)
          {
LABEL_923:
            LOWORD(v181) = v181 | 0xA000;
            goto LABEL_848;
          }

          if (v378)
          {
            v255 = 11793;
LABEL_922:
            v192 = v248 | v255;
            goto LABEL_923;
          }

          if (v379)
          {
            v255 = 19985;
            goto LABEL_922;
          }

          if (v380)
          {
            v255 = 28177;
            goto LABEL_922;
          }

          if (v381)
          {
            v255 = -29167;
            goto LABEL_922;
          }

          if (v382)
          {
            v255 = -20975;
            goto LABEL_922;
          }

          if (v383)
          {
            v255 = -12783;
            goto LABEL_922;
          }

          if (v384)
          {
            v255 = -4591;
            goto LABEL_922;
          }

          if (v594)
          {
            LOWORD(v181) = v181 | 0xC000;
            goto LABEL_848;
          }

          if (v385)
          {
            v256 = 11793;
LABEL_940:
            v192 = v248 | v256;
            LOWORD(v181) = v181 | 0xC000;
            goto LABEL_848;
          }

          if (v386)
          {
            v256 = 19985;
            goto LABEL_940;
          }

          if (v387)
          {
            v256 = 28177;
            goto LABEL_940;
          }

          if (v388)
          {
            v256 = -29167;
            goto LABEL_940;
          }

          if (v389)
          {
            v256 = -20975;
            goto LABEL_940;
          }

          if (v390)
          {
            v256 = -12783;
            goto LABEL_940;
          }

          if (v391)
          {
            v256 = -4591;
            goto LABEL_940;
          }

          if (v595)
          {
            LOWORD(v181) = v181 | 0xE000;
            goto LABEL_848;
          }

          if (v392)
          {
            v257 = 11793;
LABEL_957:
            v192 = v248 | v257;
            LOWORD(v181) = v181 | 0xE000;
            goto LABEL_848;
          }

          if (v393)
          {
            v257 = 19985;
            goto LABEL_957;
          }

          if (v394)
          {
            v257 = 28177;
            goto LABEL_957;
          }

          if (v395)
          {
            v257 = -29167;
            goto LABEL_957;
          }

          if (v396)
          {
            v257 = -20975;
            goto LABEL_957;
          }

          if (v397)
          {
            v257 = -12783;
            goto LABEL_957;
          }

          if (v398)
          {
            v257 = -4591;
            goto LABEL_957;
          }

          if (v236)
          {
LABEL_974:
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v399)
          {
            v258 = 11793;
LABEL_973:
            v192 = v248 | v258;
            goto LABEL_974;
          }

          if (v400)
          {
            v258 = 19985;
            goto LABEL_973;
          }

          if (v401)
          {
            v258 = 28177;
            goto LABEL_973;
          }

          if (v402)
          {
            v258 = -29167;
            goto LABEL_973;
          }

          if (v403)
          {
            v258 = -20975;
            goto LABEL_973;
          }

          if (v404)
          {
            v258 = -12783;
            goto LABEL_973;
          }

          if (v405)
          {
            v258 = -4591;
            goto LABEL_973;
          }

          if (v596)
          {
LABEL_991:
            LOWORD(v181) = v181 | 0x2000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v406)
          {
            v259 = 11793;
LABEL_990:
            v192 = v248 | v259;
            goto LABEL_991;
          }

          if (v407)
          {
            v259 = 19985;
            goto LABEL_990;
          }

          if (v408)
          {
            v259 = 28177;
            goto LABEL_990;
          }

          if (v409)
          {
            v259 = -29167;
            goto LABEL_990;
          }

          if (v410)
          {
            v259 = -20975;
            goto LABEL_990;
          }

          if (v411)
          {
            v259 = -12783;
            goto LABEL_990;
          }

          if (v412)
          {
            v259 = -4591;
            goto LABEL_990;
          }

          if (v597)
          {
LABEL_1008:
            LOWORD(v181) = v181 | 0x4000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v413)
          {
            v260 = 11793;
LABEL_1007:
            v192 = v248 | v260;
            goto LABEL_1008;
          }

          if (v414)
          {
            v260 = 19985;
            goto LABEL_1007;
          }

          if (v415)
          {
            v260 = 28177;
            goto LABEL_1007;
          }

          if (v416)
          {
            v260 = -29167;
            goto LABEL_1007;
          }

          if (v417)
          {
            v260 = -20975;
            goto LABEL_1007;
          }

          if (v418)
          {
            v260 = -12783;
            goto LABEL_1007;
          }

          if (v419)
          {
            v260 = -4591;
            goto LABEL_1007;
          }

          if (v598)
          {
LABEL_1025:
            LOWORD(v181) = v181 | 0x6000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v420)
          {
            v261 = 11793;
LABEL_1024:
            v192 = v248 | v261;
            goto LABEL_1025;
          }

          if (v421)
          {
            v261 = 19985;
            goto LABEL_1024;
          }

          if (v422)
          {
            v261 = 28177;
            goto LABEL_1024;
          }

          if (v423)
          {
            v261 = -29167;
            goto LABEL_1024;
          }

          if (v424)
          {
            v261 = -20975;
            goto LABEL_1024;
          }

          if (v425)
          {
            v261 = -12783;
            goto LABEL_1024;
          }

          if (v426)
          {
            v261 = -4591;
            goto LABEL_1024;
          }

          if (v599)
          {
LABEL_1042:
            LOWORD(v181) = v181 | 0x8000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v427)
          {
            v262 = 11793;
LABEL_1041:
            v192 = v248 | v262;
            goto LABEL_1042;
          }

          if (v428)
          {
            v262 = 19985;
            goto LABEL_1041;
          }

          if (v429)
          {
            v262 = 28177;
            goto LABEL_1041;
          }

          if (v430)
          {
            v262 = -29167;
            goto LABEL_1041;
          }

          if (v431)
          {
            v262 = -20975;
            goto LABEL_1041;
          }

          if (v432)
          {
            v262 = -12783;
            goto LABEL_1041;
          }

          if (v433)
          {
            v262 = -4591;
            goto LABEL_1041;
          }

          if (v600)
          {
LABEL_1059:
            LOWORD(v181) = v181 | 0xA000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v434)
          {
            v263 = 11793;
LABEL_1058:
            v192 = v248 | v263;
            goto LABEL_1059;
          }

          if (v435)
          {
            v263 = 19985;
            goto LABEL_1058;
          }

          if (v436)
          {
            v263 = 28177;
            goto LABEL_1058;
          }

          if (v437)
          {
            v263 = -29167;
            goto LABEL_1058;
          }

          if (v438)
          {
            v263 = -20975;
            goto LABEL_1058;
          }

          if (v439)
          {
            v263 = -12783;
            goto LABEL_1058;
          }

          if (v440)
          {
            v263 = -4591;
            goto LABEL_1058;
          }

          if (v601)
          {
LABEL_1076:
            LOWORD(v181) = v181 | 0xC000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v441)
          {
            v264 = 11793;
LABEL_1075:
            v192 = v248 | v264;
            goto LABEL_1076;
          }

          if (v442)
          {
            v264 = 19985;
            goto LABEL_1075;
          }

          if (v443)
          {
            v264 = 28177;
            goto LABEL_1075;
          }

          if (v444)
          {
            v264 = -29167;
            goto LABEL_1075;
          }

          if (v445)
          {
            v264 = -20975;
            goto LABEL_1075;
          }

          if (v446)
          {
            v264 = -12783;
            goto LABEL_1075;
          }

          if (v447)
          {
            v264 = -4591;
            goto LABEL_1075;
          }

          if (v602)
          {
LABEL_1093:
            LOWORD(v181) = v181 | 0xE000;
            LOWORD(v245) = v245 | 0x800;
            goto LABEL_848;
          }

          if (v448)
          {
            v265 = 11793;
LABEL_1092:
            v192 = v248 | v265;
            goto LABEL_1093;
          }

          if (v449)
          {
            v265 = 19985;
            goto LABEL_1092;
          }

          if (v450)
          {
            v265 = 28177;
            goto LABEL_1092;
          }

          if (v451)
          {
            v265 = -29167;
            goto LABEL_1092;
          }

          if (v452)
          {
            v265 = -20975;
            goto LABEL_1092;
          }

          if (v453)
          {
            v265 = -12783;
            goto LABEL_1092;
          }

          if (v454)
          {
            v265 = -4591;
            goto LABEL_1092;
          }

          if (v240)
          {
LABEL_1110:
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v455)
          {
            v266 = 11793;
LABEL_1109:
            v192 = v248 | v266;
            goto LABEL_1110;
          }

          if (v456)
          {
            v266 = 19985;
            goto LABEL_1109;
          }

          if (v457)
          {
            v266 = 28177;
            goto LABEL_1109;
          }

          if (v458)
          {
            v266 = -29167;
            goto LABEL_1109;
          }

          if (v459)
          {
            v266 = -20975;
            goto LABEL_1109;
          }

          if (v460)
          {
            v266 = -12783;
            goto LABEL_1109;
          }

          if (v461)
          {
            v266 = -4591;
            goto LABEL_1109;
          }

          if (v603)
          {
LABEL_1127:
            LOWORD(v181) = v181 | 0x2000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v462)
          {
            v267 = 11793;
LABEL_1126:
            v192 = v248 | v267;
            goto LABEL_1127;
          }

          if (v463)
          {
            v267 = 19985;
            goto LABEL_1126;
          }

          if (v464)
          {
            v267 = 28177;
            goto LABEL_1126;
          }

          if (v465)
          {
            v267 = -29167;
            goto LABEL_1126;
          }

          if (v466)
          {
            v267 = -20975;
            goto LABEL_1126;
          }

          if (v467)
          {
            v267 = -12783;
            goto LABEL_1126;
          }

          if (v468)
          {
            v267 = -4591;
            goto LABEL_1126;
          }

          if (v604)
          {
LABEL_1144:
            LOWORD(v181) = v181 | 0x4000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v469)
          {
            v268 = 11793;
LABEL_1143:
            v192 = v248 | v268;
            goto LABEL_1144;
          }

          if (v470)
          {
            v268 = 19985;
            goto LABEL_1143;
          }

          if (v471)
          {
            v268 = 28177;
            goto LABEL_1143;
          }

          if (v472)
          {
            v268 = -29167;
            goto LABEL_1143;
          }

          if (v473)
          {
            v268 = -20975;
            goto LABEL_1143;
          }

          if (v474)
          {
            v268 = -12783;
            goto LABEL_1143;
          }

          if (v475)
          {
            v268 = -4591;
            goto LABEL_1143;
          }

          if (v605)
          {
LABEL_1161:
            LOWORD(v181) = v181 | 0x6000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v476)
          {
            v269 = 11793;
LABEL_1160:
            v192 = v248 | v269;
            goto LABEL_1161;
          }

          if (v477)
          {
            v269 = 19985;
            goto LABEL_1160;
          }

          if (v478)
          {
            v269 = 28177;
            goto LABEL_1160;
          }

          if (v479)
          {
            v269 = -29167;
            goto LABEL_1160;
          }

          if (v480)
          {
            v269 = -20975;
            goto LABEL_1160;
          }

          if (v481)
          {
            v269 = -12783;
            goto LABEL_1160;
          }

          if (v482)
          {
            v269 = -4591;
            goto LABEL_1160;
          }

          if (v606)
          {
LABEL_1178:
            LOWORD(v181) = v181 | 0x8000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v483)
          {
            v270 = 11793;
LABEL_1177:
            v192 = v248 | v270;
            goto LABEL_1178;
          }

          if (v485)
          {
            v270 = 19985;
            goto LABEL_1177;
          }

          if (v487)
          {
            v270 = 28177;
            goto LABEL_1177;
          }

          if (v489)
          {
            v270 = -29167;
            goto LABEL_1177;
          }

          if (v491)
          {
            v270 = -20975;
            goto LABEL_1177;
          }

          if (v493)
          {
            v270 = -12783;
            goto LABEL_1177;
          }

          if (v495)
          {
            v270 = -4591;
            goto LABEL_1177;
          }

          if (v607)
          {
LABEL_1195:
            LOWORD(v181) = v181 | 0xA000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v497)
          {
            v271 = 11793;
LABEL_1194:
            v192 = v248 | v271;
            goto LABEL_1195;
          }

          if (v499)
          {
            v271 = 19985;
            goto LABEL_1194;
          }

          if (v501)
          {
            v271 = 28177;
            goto LABEL_1194;
          }

          if (v503)
          {
            v271 = -29167;
            goto LABEL_1194;
          }

          if (v505)
          {
            v271 = -20975;
            goto LABEL_1194;
          }

          if (v507)
          {
            v271 = -12783;
            goto LABEL_1194;
          }

          if (v509)
          {
            v271 = -4591;
            goto LABEL_1194;
          }

          if (v608)
          {
LABEL_1212:
            LOWORD(v181) = v181 | 0xC000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v511)
          {
            v272 = 11793;
LABEL_1211:
            v192 = v248 | v272;
            goto LABEL_1212;
          }

          if (v513)
          {
            v272 = 19985;
            goto LABEL_1211;
          }

          if (v515)
          {
            v272 = 28177;
            goto LABEL_1211;
          }

          if (v517)
          {
            v272 = -29167;
            goto LABEL_1211;
          }

          if (v519)
          {
            v272 = -20975;
            goto LABEL_1211;
          }

          if (v521)
          {
            v272 = -12783;
            goto LABEL_1211;
          }

          if (v523)
          {
            v272 = -4591;
            goto LABEL_1211;
          }

          if (v609)
          {
LABEL_1229:
            LOWORD(v181) = v181 | 0xE000;
            LOWORD(v245) = v245 | 0x1000;
            goto LABEL_848;
          }

          if (v525)
          {
            v273 = 11793;
LABEL_1228:
            v192 = v248 | v273;
            goto LABEL_1229;
          }

          if (v528)
          {
            v273 = 19985;
            goto LABEL_1228;
          }

          if (v530)
          {
            v273 = 28177;
            goto LABEL_1228;
          }

          if (v532)
          {
            v273 = -29167;
            goto LABEL_1228;
          }

          if (v534)
          {
            v273 = -20975;
            goto LABEL_1228;
          }

          if (v536)
          {
            v273 = -12783;
            goto LABEL_1228;
          }

          if (v538)
          {
            v273 = -4591;
            goto LABEL_1228;
          }

          if (v610)
          {
LABEL_1246:
            LOWORD(v245) = v245 | 0x1800;
            goto LABEL_848;
          }

          if (v540)
          {
            v274 = 11793;
LABEL_1245:
            v192 = v248 | v274;
            goto LABEL_1246;
          }

          if (v542)
          {
            v274 = 19985;
            goto LABEL_1245;
          }

          if (v544)
          {
            v274 = 28177;
            goto LABEL_1245;
          }

          if (v546)
          {
            v274 = -29167;
            goto LABEL_1245;
          }

          if (v548)
          {
            v274 = -20975;
            goto LABEL_1245;
          }

          if (v550)
          {
            v274 = -12783;
            goto LABEL_1245;
          }

          if (v552)
          {
            v274 = -4591;
            goto LABEL_1245;
          }

          if (v611)
          {
            LOWORD(v181) = v181 | 0x2000;
            goto LABEL_1366;
          }

          if (v554)
          {
            v275 = 11793;
          }

          else if (v556)
          {
            v275 = 19985;
          }

          else if (v558)
          {
            v275 = 28177;
          }

          else if (v560)
          {
            v275 = -29167;
          }

          else if (v562)
          {
            v275 = -20975;
          }

          else if (v564)
          {
            v275 = -12783;
          }

          else
          {
            if ((v566 & 1) == 0)
            {
              if (v612)
              {
                LOWORD(v181) = v181 | 0x4000;
                goto LABEL_1366;
              }

              if (v568)
              {
                v276 = 11793;
              }

              else if (v570)
              {
                v276 = 19985;
              }

              else if (v572)
              {
                v276 = 28177;
              }

              else if (v225)
              {
                v276 = -29167;
              }

              else if (v226)
              {
                v276 = -20975;
              }

              else if (v227)
              {
                v276 = -12783;
              }

              else
              {
                if ((v228 & 1) == 0)
                {
                  if (v613)
                  {
                    LOWORD(v181) = v181 | 0x6000;
                    goto LABEL_1366;
                  }

                  if (v359)
                  {
                    v277 = 11793;
                  }

                  else if (v574)
                  {
                    v277 = 19985;
                  }

                  else if (v576)
                  {
                    v277 = 28177;
                  }

                  else if (v578)
                  {
                    v277 = -29167;
                  }

                  else if (v580)
                  {
                    v277 = -20975;
                  }

                  else if (v582)
                  {
                    v277 = -12783;
                  }

                  else
                  {
                    if ((v354 & 1) == 0)
                    {
                      if (v614)
                      {
                        LOWORD(v181) = v181 | 0x8000;
                        goto LABEL_1366;
                      }

                      if (v584)
                      {
                        v278 = 11793;
                      }

                      else if (v625)
                      {
                        v278 = 19985;
                      }

                      else if (v627)
                      {
                        v278 = 28177;
                      }

                      else if (v586)
                      {
                        v278 = -29167;
                      }

                      else if (v229)
                      {
                        v278 = -20975;
                      }

                      else if (v355)
                      {
                        v278 = -12783;
                      }

                      else
                      {
                        if ((v230 & 1) == 0)
                        {
                          if (!v615)
                          {
                            if (v357)
                            {
                              v279 = 11793;
                            }

                            else if (v661)
                            {
                              v279 = 19985;
                            }

                            else if (v663)
                            {
                              v279 = 28177;
                            }

                            else if (v231)
                            {
                              v279 = -29167;
                            }

                            else if (v629)
                            {
                              v279 = -20975;
                            }

                            else if (v232)
                            {
                              v279 = -12783;
                            }

                            else
                            {
                              if ((v631 & 1) == 0)
                              {
                                if (v616)
                                {
                                  LOWORD(v181) = v181 | 0xC000;
                                }

                                else
                                {
                                  if (v633)
                                  {
                                    v280 = 11793;
                                  }

                                  else if (v635)
                                  {
                                    v280 = 19985;
                                  }

                                  else if (v659)
                                  {
                                    v280 = 28177;
                                  }

                                  else if (v233)
                                  {
                                    v280 = -29167;
                                  }

                                  else if (v305)
                                  {
                                    v280 = -20975;
                                  }

                                  else if (v234)
                                  {
                                    v280 = -12783;
                                  }

                                  else
                                  {
                                    if ((v235 & 1) == 0)
                                    {
                                      if (!v617)
                                      {
                                        if (v247)
                                        {
                                          v281 = 11793;
                                        }

                                        else if (v241)
                                        {
                                          v281 = 19985;
                                        }

                                        else if (v242)
                                        {
                                          v281 = 28177;
                                        }

                                        else if (v618)
                                        {
                                          v281 = -29167;
                                        }

                                        else if (v238)
                                        {
                                          v281 = -20975;
                                        }

                                        else if (v306)
                                        {
                                          v281 = -12783;
                                        }

                                        else
                                        {
                                          if ((v244 & 1) == 0)
                                          {
                                            goto LABEL_848;
                                          }

                                          v281 = -4591;
                                        }

                                        v192 = v248 | v281;
                                      }

                                      LOWORD(v181) = v181 | 0xE000;
                                      goto LABEL_1366;
                                    }

                                    v280 = -4591;
                                  }

                                  v192 = v248 | v280;
                                  LOWORD(v181) = v181 | 0xC000;
                                }

LABEL_1366:
                                LOWORD(v245) = v245 | 0x1800;
                                goto LABEL_848;
                              }

                              v279 = -4591;
                            }

                            v192 = v248 | v279;
                          }

                          LOWORD(v181) = v181 | 0xA000;
                          goto LABEL_1366;
                        }

                        v278 = -4591;
                      }

                      v192 = v248 | v278;
                      LOWORD(v181) = v181 | 0x8000;
                      goto LABEL_1366;
                    }

                    v277 = -4591;
                  }

                  v192 = v248 | v277;
                  LOWORD(v181) = v181 | 0x6000;
                  goto LABEL_1366;
                }

                v276 = -4591;
              }

              v192 = v248 | v276;
              LOWORD(v181) = v181 | 0x4000;
              goto LABEL_1366;
            }

            v275 = -4591;
          }

          v192 = v248 | v275;
          LOWORD(v181) = v181 | 0x2000;
          goto LABEL_1366;
        }
      }
    }
  }

  else
  {
    LOWORD(v245) = 0;
    LOWORD(v181) = 0;
    LOWORD(v246) = 0;
    LOWORD(v243) = 94;
  }

LABEL_848:
  *a2 = v243;
  *(a2 + 1) = v192;
  *(a2 + 2) = v181;
  *(a2 + 3) = v245;
  result = a2 + 10;
  *(a2 + 4) = v246;
  return result;
}