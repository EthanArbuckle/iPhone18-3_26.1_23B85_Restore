void sub_29CCAF468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x7E0];
  if (STACK[0x7E0])
  {
    STACK[0x7E8] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x348];
  if (STACK[0x348])
  {
    STACK[0x350] = v74;
    operator delete(v74);
  }

  std::unique_ptr<AGX::PipelineScript>::~unique_ptr[abi:nn200100](&STACK[0x700]);
  _Block_object_dispose(&a72, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, _BYTE *a6)
{
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x29EDB8E00]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(*a3, *(a3 + 8), *(*(*(a1 + 56) + 8) + 40), *(a3 + 56), [*(a1 + 32) name], *(a1 + 384));
  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    v12 = [v11 objectForKey:*MEMORY[0x29EDBB378]];
    if (v12)
    {
      [v12 unsignedLongLongValue];
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  *a4 = *(a3 + 40);
  *a5 = *(a3 + 48);
  *a6 = 0;
  v13 = *a4;
  if (!*a4)
  {
    if (*(a1 + 304) == 1 && (AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::isShaderExecuteIndirectCompatible(a2, 0) & 1) == 0)
    {
      *a4 = 2;
      *a5 = @"Fragment shader cannot be used with indirect command buffers";
      *a6 = 1;
      v13 = *a4;
    }

    else
    {
      v13 = 0;
    }
  }

  AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 368), *(a1 + 376), *(a3 + 16), a1 + 385, v13);
  if (!*a4)
  {
    [*(a1 + 48) needsCustomBorderColorSamplers];
    v14 = [*(a1 + 48) profileControl];
    if (v14)
    {
      v15 = v14;
      [v14 uscCliqueTraceLevel];
      [v15 uscEmitPosition];
      [v15 uscEmitThreadControlFlow];
    }

    operator new();
  }

  return 0;
}

void sub_29CCAFA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (*(v7 - 137) < 0)
  {
    operator delete(*(v7 - 160));
  }

  MEMORY[0x29ED520D0](v6, 0x10F3C400360FEC6);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2081(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (v7 + 592);
  if (v7)
  {
    v9 = v8 == a4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    std::vector<AGX::HAL300::IntersectionProgramVariantSet *>::__assign_with_size[abi:nn200100]<AGX::HAL300::IntersectionProgramVariantSet **,AGX::HAL300::IntersectionProgramVariantSet **>(v8, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  }

  v10 = *(a1 + 40);
  v11 = *(a3 + 32);
  v12 = *(a1 + 48);
  *(v10 + 8) = v7;
  *(v10 + 16) = 0;

  *(v10 + 24) = [0 copy];
  if (*(v10 + 8))
  {

    *(v10 + 32) = v11;
  }

  else
  {
    *(v10 + 40) = v12 & 1;
  }

  dispatch_group_leave(*v10);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2_2082(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 48) + 32);
  *object = 0u;
  memset(v7, 0, 26);
  v3 = AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::consolidate(*(a1 + 56), *(a1 + 48), a1 + 64, object);
  v4 = v3[1];
  v5 = *(a1 + 368);
  v8[0] = *(a1 + 352);
  v8[1] = v5;
  (*(*(a1 + 32) + 16))(*(a1 + 32), v4, v8, *(*(*(a1 + 40) + 8) + 40), v3[2], v3[3], v2);

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  if (object[1])
  {
    (*(object[1]->isa + 1))(object[1]);
  }
}

const char *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke()
{
  v0 = getenv("AGC_MIN_STATELESS_PSO_OVERRIDE");
  if (v0)
  {
    minStateless = atoll(v0);
  }

  v1 = getenv("AGC_MAX_STATELESS_PSO_OVERRIDE");
  if (v1)
  {
    maxStateless = atoll(v1);
  }

  v2 = getenv("AGC_MIN_LBRT_OVERRIDE");
  if (v2)
  {
    minLBRT = atoll(v2);
  }

  v3 = getenv("AGC_MAX_LBRT_OVERRIDE");
  if (v3)
  {
    maxLBRT = atoll(v3);
  }

  v4 = getenv("AGC_MIN_PRID_STRATEGY_OVERRIDE");
  if (v4)
  {
    minPridOverride = atoll(v4);
  }

  result = getenv("AGC_MAX_PRID_STRATEGY_OVERRIDE");
  if (result)
  {
    result = atoll(result);
    maxPridOverride = result;
  }

  return result;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createMeshProgramAnalysisI31MTLMeshRenderPipelineDescriptorEEPKNS_21VertexProgramVaryingsEPT_P19AGXG18PFamilyDevicemPNS1_11MeshProgramEPU27objcproto16OS_dispatch_data8NSObjectb_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, void *a7, uint64_t a8, __CFString *a9)
{
  v48 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 48);
  v13 = a2 + 138;
  if (a2[68])
  {
    v14 = a2[69] == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = 68;
  if (v14)
  {
    v15 = 138;
  }

  else
  {
    v13 = a2 + 68;
  }

  v16 = a2[v15];
  v17 = v13[1];
  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = *v16;
    v20 = v16 + v19;
    v21 = (v16 + v19 - *(v16 + v19));
    if (*v21 >= 9u)
    {
      v22 = v21[4];
      if (v22)
      {
        v23 = &v20[v22];
        v24 = *&v20[v22];
        if (*&v20[v22 + v24])
        {
          v25 = 0;
          v26 = 0;
          v27 = v16 + v19 + v24 + v22 + 10;
          do
          {
            v28 = *(v27 - 6);
            v29 = v28 - *(v27 + v28 - 6);
            if (*(v27 + v29 - 6) >= 7u && (v30 = *(v27 + v29)) != 0)
            {
              v31 = *(v27 + v28 + v30 - 6);
            }

            else
            {
              v31 = 0;
            }

            if (getTimebaseInfo(void)::once != -1)
            {
              v44 = a5;
              v45 = v26;
              v43 = v12;
              dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
              v12 = v43;
              a5 = v44;
              v26 = v45;
            }

            v26 += v31 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0;
            ++v25;
            v27 += 4;
          }

          while (v25 < *&v23[v24]);
        }
      }
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    v32 = a5;
    IOGPUDeviceTraceEvent();
    a5 = v32;
  }

  if (*(a1 + 80) == 1)
  {
    if (a8)
    {
      v33 = 1;
      v34 = a9;
    }

    else
    {
      v35 = a2 + 33;
      if (a2[33])
      {
        v36 = a2[34] == 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = 33;
      if (v36)
      {
        v37 = 103;
        v35 = a2 + 103;
      }

      v34 = a9;
      if (a2[v37] && v35[1])
      {
        v33 = 0;
        v34 = @"Internal error during function compilation";
        a8 = 2;
      }

      else
      {
        a8 = 0;
        v33 = 1;
      }
    }

    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    memset(v47, 0, sizeof(v47));
    AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(v38, v39, a5, v47, a8);
    if (!a8)
    {
      operator new();
    }

    v40 = *(a1 + 56);
    v41 = *(a1 + 81);
    *(v40 + 8) = *(*(*(a1 + 40) + 8) + 24);
    *(v40 + 16) = a8;

    *(v40 + 24) = [(__CFString *)v34 copy];
    if (*(v40 + 8))
    {

      *(v40 + 32) = a7;
    }

    else
    {
      *(v40 + 40) = v33 & v41;
    }

    v42 = *v40;

    dispatch_group_leave(v42);
  }
}

uint64_t AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2, NSObject *a3, void *a4, int a5, uint64_t a6, int a7)
{
  v14 = [a2 meshLinkedFunctions];
  *v16 = *a6;
  v17 = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *__p = *(a6 + 24);
  v19 = *(a6 + 40);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  v20 = *(a6 + 48);
  AGX::MeshProgramKey::MeshProgramKey(a1, a3, 0, a5, v16, v14, a4, a7);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator delete(v16[0]);
    goto LABEL_3;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  AGX::MeshProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(a1, a2);
  *(a1 + 52) &= ~0x80u;
  return [a2 supportIndirectCommandBuffers];
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x29EDB8E00]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(*a3, *(a3 + 8), *(*(*(a1 + 56) + 8) + 40), *(a3 + 56), [*(a1 + 32) name], *(a1 + 112));
  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (v8)
  {
    v9 = [v8 objectForKey:*MEMORY[0x29EDBB378]];
    if (v9)
    {
      [v9 unsignedLongLongValue];
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (v6)
  {
    goto LABEL_7;
  }

  v11 = a2 + 33;
  if (a2[33])
  {
    v12 = a2[34] == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = 33;
  if (v12)
  {
    v13 = 103;
    v11 = a2 + 103;
  }

  if (a2[v13] && v11[1])
  {
    v10 = 0;
    v7 = @"Internal error during function compilation";
    v6 = 2;
  }

  else
  {
    if (*(a1 + 113) != 1)
    {
      v6 = 0;
LABEL_7:
      v10 = 1;
      goto LABEL_8;
    }

    isShaderExecuteIndirectCompatible = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::isShaderExecuteIndirectCompatible(a2, 0);
    v10 = (isShaderExecuteIndirectCompatible & 1) != 0;
    if (isShaderExecuteIndirectCompatible)
    {
      v6 = 0;
    }

    else
    {
      v7 = @"Mesh shader cannot be used with indirect command buffers";
      v6 = 2;
    }
  }

LABEL_8:
  AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 80), *(a1 + 88), *(a3 + 16), a1 + 114, v6);
  if (!v6)
  {
    AGX::VsStateConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VsStateConfigGen3(v37, a2);
    v14 = *(a1 + 96);
    if (v14)
    {
      if (*(v14 + 3920))
      {
        v15 = 64;
      }

      else
      {
        v15 = 0;
      }

      v38 = v38 & 0xFFFFFFBF | v15;
    }

    v16 = [*(a1 + 48) needsCustomBorderColorSamplers];
    v17 = *(a1 + 48);
    v31 = *(*(a1 + 40) + 848);
    v18 = *(v31 + 7112);
    v32 = *(v31 + 7092);
    v33 = v18;
    v19 = [v17 profileControl];
    v27 = 0;
    v28 = 0;
    if (v19)
    {
      v20 = v19;
      v34 = [v19 uscCliqueTraceLevel];
      v35 = [v20 uscEmitPosition];
      v36 = [v20 uscEmitThreadControlFlow];
      v29 = 0;
      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v30 = v21;
    AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(v26, a2, 8, 0, v16, *(*(a1 + 80) + 1408), *(a1 + 104), 0, 0, 0);
    operator new();
  }

  v23 = *(a1 + 72);
  v24 = *(a3 + 32);
  v25 = *(a1 + 146);
  *(v23 + 8) = 0;
  *(v23 + 16) = v6;

  *(v23 + 24) = [(__CFString *)v7 copy];
  if (*(v23 + 8))
  {

    *(v23 + 32) = v24;
  }

  else
  {
    *(v23 + 40) = v10 & v25;
  }

  dispatch_group_leave(*v23);
}

void sub_29CCB0858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  MEMORY[0x29ED520D0](v6, 0x10F3C400AB5AFBDLL);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(&STACK[0x218]);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 48) + 32);
  *object = 0u;
  memset(v7, 0, 26);
  v3 = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::consolidate(*(a1 + 56), *(a1 + 48), a1 + 64, object);
  v4 = v3[1];
  v5 = *(a1 + 296);
  v8[0] = *(a1 + 280);
  v8[1] = v5;
  (*(*(a1 + 32) + 16))(*(a1 + 32), v4, v8, *(*(*(a1 + 40) + 8) + 40), v3[2], v3[3], v2);

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  if (object[1])
  {
    (*(object[1]->isa + 1))(object[1]);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    v7 = a1[10];
    v8 = *(v7 + 16);
    v18 = *(v7 + 24);
    v9 = a1[5];
    v19 = a1[4];
    if (*v7)
    {
      [*v7 vendorPrivate];
    }

    if (v18)
    {
      [v18 vendorPrivate];
    }

    if (v8)
    {
      [v8 vendorPrivate];
    }

    v11 = [AGXG18PFamilyRenderPipeline alloc];
    v12 = [v9 maxTotalThreadgroupsPerMeshGrid];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x400000;
    }

    v14 = [(AGXG18PFamilyRenderPipeline *)v11 initWithDevice:v19 meshRenderPipelineStateDescriptor:v9 objectThreadExecutionWidth:32 meshThreadExecutionWidth:32 maxTotalThreadgroupsPerMeshGrid:v13];
    [v9 _descriptorPrivate];
    *(v14 + 984) = [v9 maxVertexAmplificationCount];
    [v9 sampleCoverage];
    *(v14 + 988) = v15;
    *(v14 + 996) = [v9 rasterSampleCount];
    *(v14 + 992) = [v9 sampleMask];
    v16 = [v9 isRasterizationEnabled];
    *(v14 + 1000) = v16;
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0x20000;
    }

    *(v14 + 1068) = *(v14 + 1068) & 0xFFFDFFFF | v17;
    *(v14 + 1029) = [v9 supportIndirectCommandBuffers];
    operator new();
  }

  v5 = a1[8];
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

    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a5 forKey:*MEMORY[0x29EDB9ED8]];
    v20 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v6 userInfo:v10];
    (*(v5 + 16))(v5, 0, 0);
  }
}

void sub_29CCB2D0C(_Unwind_Exception *a1)
{
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100]((v1 - 176));
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100]((v1 - 184));
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100]((v1 - 192));
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](((v1 - 208) | 8));
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100]((v1 - 208));
  _Unwind_Resume(a1);
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2, os_unfair_lock_s *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, void *a9, NSObject *a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v17 = a15;
  v153 = *MEMORY[0x29EDCA608];
  if (a9)
  {
    v22 = [a9 vendorPrivate];
    v96 = 0;
    v97 = &v96;
    v98 = 0x3052000000;
    v99 = __Block_byref_object_copy__1933;
    v100 = __Block_byref_object_dispose__1934;
    v101 = 0;
    v84 = [a2 objectFunction];
    AGX::ObjectProgramKey::ObjectProgramKey(&v137, a10, [a2 objectLinkedFunctions], a8, a11, a12);
    v81 = a8;
    v23 = [a2 driverCompilerOptions];
    v24 = [objc_msgSend(objc_msgSend(a2 "objectLinkedFunctions")];
    v25 = [a2 supportAddingObjectBinaryFunctions];
    if ([objc_msgSend(v23 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    HIDWORD(v143) = HIDWORD(v143) & 0xFFFFFFFB | v26;
    v27 = [objc_msgSend(v23 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}];
    HIDWORD(v143) = HIDWORD(v143) & 0xFC0003FF | (v27 << 10);
    if ([objc_msgSend(v23 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
    {
      v28 = 0x8000000;
    }

    else
    {
      v28 = 0;
    }

    if (v24)
    {
      v29 = 1;
    }

    else
    {
      v29 = v25;
    }

    if (v29)
    {
      v30 = 512;
    }

    else
    {
      v30 = 0;
    }

    HIDWORD(v143) = v28 | HIDWORD(v143) & 0xF7FFFDFF | v30;
    v31 = [a2 objectBuffers];
    v32 = 0;
    v33 = 0;
    v85 = (v22 + 8);
    do
    {
      v34 = [objc_msgSend(v31 _descriptorAtIndex:{v33), "mutability"}];
      v35 = 1 << v33;
      if (v34 != 1)
      {
        v35 = 0;
      }

      v32 |= v35;
      ++v33;
    }

    while (v33 != 31);
    v142 = v32;
    v36 = [a2 supportIndirectCommandBuffers];
    DWORD2(v147) = DWORD2(v147) & 0xFFFFFFFE | v36;
    v37 = [a2 maxTotalThreadsPerObjectThreadgroup];
    v38 = [a2 payloadMemoryLength];
    HIDWORD(v144) = v37;
    LODWORD(v145) = v38;
    v39 = [a2 maxVertexAmplificationCount];
    LODWORD(v144) = v144 & 0xFFFFFF87 | (8 * (v39 & 0xF));
    HIDWORD(v143) &= ~0x80u;
    [a2 supportIndirectCommandBuffers];
    v40 = v85;
    v41 = (HIDWORD(v143) & 0x8BFFFEFF | (*(*&a3[212]._os_unfair_lock_opaque + 16608) << 26) & 0xBFFFFFFF | (((*(*&a3[212]._os_unfair_lock_opaque + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
    HIDWORD(v143) = v41;
    LODWORD(v144) = v144 & 0xFFFFFC7F;
    v152 = a4 & 0xC00C0000;
    if ((a4 & 0x40000) != 0)
    {
      if (AGX::isTelemetryEnabled(void)::once != -1)
      {
        dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
      }

      v42 = 1;
      v41 = HIDWORD(v143);
    }

    else
    {
      v42 = 0;
    }

    HIDWORD(v143) = v42 | (a4 >> 21) & 8 | v41 & 0xFFFFFFF4;
    ReflectionKey::initGPUCompilerSPIOptionsHash(&block, [a2 gpuCompilerSPIOptions]);
    v135 = block;
    v136 = v103;
    CompileOptions = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(v85, a4 | 3, &v135);
    v95 = 0;
    v50 = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(v85, &v137, &v95, CompileOptions, (a5 | a6) != 0);
    v51 = v50;
    if (v95 == 1)
    {
      v79 = v142;
      v78 = BYTE8(v147);
      v52 = [objc_msgSend(a2 "pipelineLibrary")];
      v53 = [a2 pipelineLibrary];
      if ([v53 pipelineCache] && (objc_msgSend(v53, "disableRunTimeCompilation") & 1) != 0 || (v54 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v54)
      {
        LOBYTE(v55) = 1;
      }

      else
      {
        v55 = (a4 >> 34) & 1;
      }

      if (a6)
      {
        v57 = 1;
      }

      else
      {
        v57 = v55;
      }

      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      v76 = CompileOptions;
      v80 = v51;
      v58 = objc_opt_new();
      [v58 setUseAIRNTInterfaces:*(a1 + 24)];
      [v58 setSync:a13 ^ 1u];
      [v58 setFunction:v84];
      [v58 setFrameworkData:a10];
      [v58 setPipelineCache:v52];
      [v58 setDestinationBinaryArchive:a5];
      [v58 setArchiverId:a7];
      [v58 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
      [v58 setPipelineOptions:a4 | 3];
      if ((a4 & 0x330003) == 0)
      {
        [v58 setPipelineOptions:{objc_msgSend(v58, "pipelineOptions") | 0x8000}];
      }

      v59 = [a2 newPipelineScript];
      if (v59)
      {
        [v58 setAirScript:v59];
        dispatch_release(v59);
      }

      [v58 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
      v60 = [a2 objectLinkedFunctions];
      [v58 setVisibleFunctions:{objc_msgSend(v60, "functions")}];
      [v58 setVisibleFunctionGroups:{objc_msgSend(v60, "groups")}];
      [v58 setPrivateVisibleFunctions:{objc_msgSend(v60, "privateFunctions")}];
      v83 = v57;
      v61 = a3;
      v62 = a1;
      LOBYTE(v87) = 0;
      *(&v87 + 1) = 0;
      v88[0] = 0;
      *&v89 = 0;
      v91 = 0uLL;
      v63 = [a2 maxObjectCallStackDepth];
      v64 = [a2 objectLinkedFunctions];
      v65 = [a2 supportIndirectCommandBuffers];
      v66 = [a2 supportAddingObjectBinaryFunctions];
      v67 = [a2 gpuCompilerSPIOptions];
      v68 = [(os_unfair_lock_s *)v61 requiresRaytracingEmulation];
      BYTE8(v89) = v68;
      *&v90 = v63;
      *(&v90 + 1) = v64;
      *&v92 = a4;
      *(&v92 + 1) = v81;
      v93 = v61;
      LOBYTE(v94) = v65;
      BYTE1(v94) = v66;
      *(&v94 + 1) = v67;
      if (a6)
      {
        v69 = *a6;
        v70 = *(a6 + 16);
        LOBYTE(v87) = 1;
        *(&v87 + 1) = v69;
        v88[0] = v70;
        v88[1] = 8;
      }

      *&v89 = a14;
      v119 = MEMORY[0x29EDCA5F8];
      v120 = 3221225472;
      v132 = v135;
      v121 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke;
      v122 = &unk_29F341850;
      v130 = a13;
      v71 = v62;
      *&v127 = v62;
      *(&v127 + 1) = v80;
      v131 = v78 & 1;
      *&v128 = v85;
      *(&v128 + 1) = v77;
      v133 = v136;
      v123 = v84;
      v124 = v61;
      v126 = &v96;
      v125 = a2;
      v129 = v79;
      v134 = v83;
      if ((v68 & 1) == 0 && (hasAirLinkedIntersectionFunction = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v64), v71 = v62, hasAirLinkedIntersectionFunction))
      {
        v106 = v91;
        __p = v92;
        v108 = v93;
        v109 = v94;
        block = v87;
        v103 = *v88;
        v104 = v89;
        v105 = v90;
        AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::ObjectProgramKey,true>(v62, &v137, v58, &block, &v119);
      }

      else
      {
        AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::ObjectProgramKey>(v71, &v137, v58, &v87, &v119);
      }

      v40 = v85;
      v51 = v80;
    }

    else if ((CompileOptions & 0x330003) != 0)
    {
      v56 = *a1;
      v119 = MEMORY[0x29EDCA5F8];
      v120 = 3221225472;
      v121 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2;
      v122 = &unk_29F341630;
      v127 = v135;
      v128 = v136;
      v124 = v85;
      v123 = a3;
      v125 = CompileOptions;
      v126 = v50;
      [*v56 reflectionWithFunction:v84 options:CompileOptions & 0x330003 sync:a13 ^ 1u completionHandler:&v119];
    }

    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 3321888768;
    *&v103 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_3;
    *(&v103 + 1) = &unk_2A23F6D88;
    *&v105 = v40;
    *(&v105 + 1) = v51;
    AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::GeometrySharedKey(&v106, &v137);
    *&v106 = &unk_2A23F7BD8;
    v116 = v152;
    v117 = v135;
    v118 = v136;
    *&v104 = a15;
    *(&v104 + 1) = &v96;
    v73 = *v51;
    if (a13)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_group_notify(v73, global_queue, &block);
    }

    else
    {
      dispatch_group_wait(v73, 0xFFFFFFFFFFFFFFFFLL);
      (v103)(&block);
    }

    *&v106 = &unk_2A23F7B50;
    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (v112)
    {
      v113 = v112;
      operator delete(v112);
    }

    if (v111 < 0)
    {
      operator delete(v110);
    }

    *&v106 = &unk_2A23F7B98;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    v137 = &unk_2A23F7B50;
    if (v150)
    {
      v151 = v150;
      operator delete(v150);
    }

    if (v148)
    {
      v149 = v148;
      operator delete(v148);
    }

    if (SBYTE7(v147) < 0)
    {
      operator delete(v146);
    }

    v137 = &unk_2A23F7B98;
    if (v139)
    {
      v140 = v139;
      operator delete(v139);
    }
  }

  else
  {
    {
      v17 = a15;
      if (v75)
      {
        AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor *,AGXG18PFamilyDevice *,unsigned long,AGXG18PFamilyBinaryArchive *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ArchiveLookupInfo const*,NSObject  {objcproto16OS_dispatch_data}*,NSArray *,_MTLFunction *,NSObject  {objcproto16OS_dispatch_data}*,BOOL,BOOL,BOOL,objc_object  {objcproto16MTL4CompilerTask}*,void({block_pointer})(AGX::HAL300::ObjectProgramVariant *,ReflectionKey,MTLCompilerError,NSString *))::geometryContextRequiresOS = 1;
        v17 = a15;
      }
    }

    if (AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor *,AGXG18PFamilyDevice *,unsigned long,AGXG18PFamilyBinaryArchive *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ArchiveLookupInfo const*,NSObject  {objcproto16OS_dispatch_data}*,NSArray *,_MTLFunction *,NSObject  {objcproto16OS_dispatch_data}*,BOOL,BOOL,BOOL,objc_object  {objcproto16MTL4CompilerTask}*,void({block_pointer})(AGX::HAL300::ObjectProgramVariant *,ReflectionKey,MTLCompilerError,NSString *))::geometryContextRequiresOS != 1)
    {
      block = 0u;
      v103 = 0u;
      (*(v17 + 16))(v17, 0, &block, 0, &stru_2A23FAE10);
      return;
    }

    v43 = v17;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    *&v135 = 0;
    *(&v135 + 1) = &v135;
    v136 = 0x2020000000uLL;
    v119 = 0;
    v120 = &v119;
    v121 = 0x3052000000;
    v122 = __Block_byref_object_copy__1933;
    v123 = __Block_byref_object_dispose__1934;
    v124 = 0;
    DWORD2(v87) = 26;
    v88[1] = 0;
    *&v89 = 0;
    v88[0] = 0;
    *&v87 = &unk_2A23F6D10;
    if (a12)
    {
      v44 = 2;
    }

    else
    {
      v44 = 0;
    }

    DWORD2(v89) = v44 | a11;
    v95 = 0;
    v45 = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::PassthroughObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(*(*&a3[212]._os_unfair_lock_opaque + 72), &v87, &v95);
    if (v95 == 1)
    {
      v46 = *a1;
      *&block = MEMORY[0x29EDCA5F8];
      *(&block + 1) = 3321888768;
      *&v103 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke;
      *(&v103 + 1) = &unk_2A23F6CD0;
      *&v104 = a3;
      *(&v104 + 1) = &v96;
      *&v106 = &unk_2A23F6D50;
      DWORD2(v106) = DWORD2(v87);
      *&v108 = 0;
      __p = 0uLL;
      if (v88[1] != v88[0])
      {
        if (((v88[1] - v88[0]) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      DWORD2(v108) = DWORD2(v89);
      *&v105 = &v135;
      *(&v105 + 1) = &v119;
      *&v106 = &unk_2A23F6D10;
      *&v109 = v45;
      v47 = *(v46 + 8);
      v48 = objc_opt_new();
      [v48 setSync:1];
      [v48 setPipelineCache:v47];
      [v48 setBinaryArchives:0];
      v137 = MEMORY[0x29EDCA5F8];
      v138 = 3221225472;
      v139 = ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
      v140 = &unk_29F342280;
      p_block = &block;
      AGX::Compiler::compileProgram<AGX::PassthroughObjectProgramKey,AGCDeserializedReply>(v46, &v87, v48, &v137);

      *&v106 = &unk_2A23F6D50;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    v137 = MEMORY[0x29EDCA5F8];
    v138 = 3221225472;
    v139 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2017;
    v140 = &unk_29F341828;
    v145 = v45;
    v142 = &v96;
    p_block = v43;
    v146 = 0u;
    v147 = 0u;
    v143 = &v135;
    v144 = &v119;
    dispatch_group_wait(*v45, 0xFFFFFFFFFFFFFFFFLL);
    (v139)(&v137);
    *&v87 = &unk_2A23F6D50;
    if (v88[0])
    {
      v88[1] = v88[0];
      operator delete(v88[0]);
    }

    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v135, 8);
  }

  _Block_object_dispose(&v96, 8);
}

void sub_29CCB3CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  AGX::ObjectProgramKey::~ObjectProgramKey(v39);
  AGX::ObjectProgramKey::~ObjectProgramKey(&STACK[0x2D8]);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x29EDB8E00]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(*a3, *(a3 + 8), *(*(*(a1 + 56) + 8) + 40), *(a3 + 56), [*(a1 + 32) name], *(a1 + 104));
  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (v8)
  {
    v9 = [v8 objectForKey:*MEMORY[0x29EDBB378]];
    if (v9)
    {
      [v9 unsignedLongLongValue];
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v11 = a2 + 33;
  if (a2[33])
  {
    v12 = a2[34] == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = 33;
  if (v12)
  {
    v13 = 103;
    v11 = a2 + 103;
  }

  if (a2[v13] && v11[1])
  {
    v10 = 0;
    v6 = @"Internal error during function compilation";
    v7 = 2;
  }

  else
  {
    if (*(a1 + 105) != 1)
    {
      v7 = 0;
LABEL_7:
      v10 = 1;
      goto LABEL_8;
    }

    isShaderExecuteIndirectCompatible = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::isShaderExecuteIndirectCompatible(a2, 0);
    v10 = (isShaderExecuteIndirectCompatible & 1) != 0;
    if (isShaderExecuteIndirectCompatible)
    {
      v7 = 0;
    }

    else
    {
      v6 = @"Object shader cannot be used with indirect command buffers";
      v7 = 2;
    }
  }

LABEL_8:
  AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 80), *(a1 + 88), *(a3 + 16), a1 + 106, v7);
  if (!v7)
  {
    [*(a1 + 48) needsCustomBorderColorSamplers];
    v14 = [*(a1 + 48) profileControl];
    if (v14)
    {
      v15 = v14;
      [v14 uscCliqueTraceLevel];
      [v15 uscEmitPosition];
      [v15 uscEmitThreadControlFlow];
    }

    operator new();
  }

  v17 = *(a1 + 72);
  v18 = *(a3 + 32);
  v19 = *(a1 + 138);
  *(v17 + 8) = 0;
  *(v17 + 16) = v7;

  *(v17 + 24) = [(__CFString *)v6 copy];
  if (*(v17 + 8))
  {

    *(v17 + 32) = v18;
  }

  else
  {
    *(v17 + 40) = v10 & v19;
  }

  dispatch_group_leave(*v17);
}

void sub_29CCB42C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (*(v7 - 137) < 0)
  {
    operator delete(*(v7 - 160));
  }

  MEMORY[0x29ED520D0](v6, 0x10F3C40D375609CLL);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  *object = 0u;
  memset(v7, 0, 26);
  v2 = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::consolidate(*(a1 + 48), *(a1 + 56), a1 + 64, object);
  v3 = v2[1];
  v4 = *(a1 + 32);
  v5 = *(a1 + 240);
  v8[0] = *(a1 + 224);
  v8[1] = v5;
  (*(v4 + 16))(v4, v3, v8, v2[2], v2[3]);

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  if (object[1])
  {
    (*(object[1]->isa + 1))(object[1]);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke(void *a1, uint64_t a2, uint64_t a3, __CFString *a4)
{
  if (!a3)
  {
    v4 = a2 + 264;
    if (*(a2 + 264))
    {
      v5 = *(a2 + 272) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = 264;
    if (v5)
    {
      v6 = 824;
      v4 = a2 + 824;
    }

    if (!*(a2 + v6) || !*(v4 + 8))
    {
      operator new();
    }

    a4 = @"Internal error during function compilation";
    a3 = 2;
  }

  *(*(a1[6] + 8) + 24) = a3;
  *(*(a1[7] + 8) + 40) = a4;
  v7 = a1[14];
  v8 = *(*(a1[6] + 8) + 24);
  v9 = *(*(a1[7] + 8) + 40);
  *(v7 + 8) = *(*(a1[5] + 8) + 24);
  *(v7 + 16) = v8;

  *(v7 + 24) = [v9 copy];
  if (*(v7 + 8))
  {

    *(v7 + 32) = 0;
  }

  else
  {
    *(v7 + 40) = 0;
  }

  dispatch_group_leave(*v7);
}

void sub_29CCB46D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (*(v6 - 73) < 0)
  {
    operator delete(*(v6 - 96));
  }

  MEMORY[0x29ED520D0](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2017(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 64) + 8);
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = *(a1 + 88);
  v5[0] = *(a1 + 72);
  v5[1] = v3;
  return (*(v1 + 16))(v1, v2, v5, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
}

char *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36populateRenderPipelineDescriptorInfoI31MTLMeshRenderPipelineDescriptorEEbRNS5_28RenderPipelineDescriptorInfoEPT_mP19AGXG18PFamilyDeviceRP7NSError_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    v3 = [*v2 vendorPrivate];
    v4 = v3;
    if (v3)
    {
      frag = *(v3 + 16);
      if (frag)
      {
LABEL_4:
        v2 = *(a1 + 32);
        *(v2 + 32) = &frag->_impl;
        goto LABEL_5;
      }
    }

    else
    {
      v4 = objc_alloc_init(AGXG18PFamilyComputeOrFragmentOrTileProgram);
      [**(a1 + 32) setVendorPrivate:v4];

      frag = v4->_frag;
      if (frag)
      {
        goto LABEL_4;
      }
    }

    frag = objc_alloc_init(AGXG18PFamilyFragmentProgram);
    v4->_frag = frag;
    goto LABEL_4;
  }

LABEL_5:
  v6 = *(v2 + 16);
  if (!v6)
  {
    result = [*(v2 + 8) vendorPrivate];
    v11 = &OBJC_IVAR___AGXG18PFamilyVertexProgram__impl;
    v12 = 40;
    if (!result)
    {
      v13 = &off_29F340798;
      v14 = 8;
      goto LABEL_13;
    }

LABEL_14:
    *(*(a1 + 32) + v12) = &result[*v11];
    return result;
  }

  v7 = [v6 vendorPrivate];
  if (!v7)
  {
    v8 = objc_alloc_init(AGXG18PFamilyMeshProgram);
    [*(*(a1 + 32) + 16) setVendorPrivate:v8];

    v7 = v8;
  }

  v9 = *(a1 + 32);
  *(v9 + 48) = v7 + 8;
  result = *(v9 + 24);
  if (result)
  {
    result = [result vendorPrivate];
    v11 = &OBJC_IVAR___AGXG18PFamilyObjectProgram__impl;
    v12 = 56;
    if (!result)
    {
      v13 = off_29F340778;
      v14 = 24;
LABEL_13:
      v15 = objc_alloc_init(*v13);
      [*(*(a1 + 32) + v14) setVendorPrivate:v15];

      result = v15;
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_29CCB515C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AGXG18PFamilySampler *AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  os_unfair_lock_lock((a1 + 16696));
  v8 = (a1 + 16712);
  v9 = *(a1 + 16712);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = a1 + 16712;
  do
  {
    v11 = AGX::SamplerDescriptor::operator<((v9 + 32), a2);
    if (v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (!v11)
    {
      v10 = v9;
    }

    v9 = *(v9 + v12);
  }

  while (v9);
  if (v10 == v8 || AGX::SamplerDescriptor::operator<(a2, (v10 + 32)) || (WeakRetained = objc_loadWeakRetained((v10 + 104))) == 0)
  {
LABEL_12:
    if (a4)
    {
      v14 = 0;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x29EDBB628]);
      a4 = v15;
      v16 = 1;
      if ((*a2 & 0x40) != 0)
      {
        v16 = 2;
      }

      if ((*a2 & 0x20) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      [v15 setMipFilter:v17];
      v18 = (*a2 & 0xF) - 2;
      if (v18 > 6)
      {
        v19 = 0;
      }

      else
      {
        v19 = qword_29D2FEE58[v18];
      }

      [a4 setCompareFunction:v19];
      [a4 setMaxAnisotropy:*(a2 + 4) & 0x1FLL];
      [a4 setSAddressMode:*(a2 + 4) >> 5];
      [a4 setTAddressMode:(*(a2 + 4) >> 8) & 7];
      [a4 setRAddressMode:(*(a2 + 4) >> 11) & 7];
      [a4 setNormalizedCoordinates:(*(a2 + 4) >> 14) & 1];
      [a4 setLodAverage:(*(a2 + 4) >> 15) & 1];
      [a4 setMinFilter:*(a2 + 6) & 3];
      [a4 setMagFilter:(*(a2 + 4) >> 18) & 3];
      [a4 setSupportArgumentBuffers:(*(a2 + 4) >> 20) & 1];
      [a4 setForceSeamsOnCubemapFiltering:HIBYTE(*(a2 + 4)) & 1];
      [a4 setBorderColor:(*(a2 + 4) >> 21) & 3];
      [a4 setCustomBorderColorValue_0:*(a2 + 20)];
      [a4 setCustomBorderColorValue_1:*(a2 + 24)];
      [a4 setCustomBorderColorValue_2:*(a2 + 28)];
      [a4 setCustomBorderColorValue_3:*(a2 + 32)];
      [a4 setPixelFormat:*(a2 + 40)];
      LODWORD(v20) = *(a2 + 8);
      [a4 setLodMinClamp:v20];
      LODWORD(v21) = *(a2 + 12);
      [a4 setLodMaxClamp:v21];
      LODWORD(v22) = *(a2 + 16);
      [a4 setLodBias:v22];
      [a4 setReductionMode:(*(a2 + 4) >> 25) & 3];
      v14 = a4;
    }

    WeakRetained = [[AGXG18PFamilySampler alloc] initWithDevice:a3 samplerDescriptor:a4 driverDescriptor:a2 initialQOSOverride:*(a1 + 16752)];
    v23 = *v8;
    if (!*v8)
    {
LABEL_29:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v24 = v23;
        if (!AGX::SamplerDescriptor::operator<(a2, v23 + 16))
        {
          break;
        }

        v23 = *v24;
        if (!*v24)
        {
          goto LABEL_29;
        }
      }

      if (!AGX::SamplerDescriptor::operator<(v24 + 16, a2))
      {
        break;
      }

      v23 = *(v24 + 1);
      if (!v23)
      {
        goto LABEL_29;
      }
    }

    objc_storeWeak(v24 + 13, WeakRetained);
  }

  os_unfair_lock_unlock((a1 + 16696));
  return WeakRetained;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      objc_destroyWeak((v1 + 104));
      if (*(v1 + 103) < 0)
      {
        operator delete(*(v1 + 80));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::generateLegacyFormatSample(int a1, void *a2, unsigned int a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = a3 - 32;
  if (v5 < 0x11E1)
  {
    v7 = 8 * a3 + 16128;
    *a4 = v7 & 0x3FC0 | *a4 & 0x30 | 0xFEEDFFFFFFFFC003;
    *(a4 + 8) = *a2;
    *(a4 + 16) = a2[1];
    *(a4 + 20) = a1;
    memcpy((a4 + 32), a2 + 4, v5);
    return ((v7 >> 3) & 0x7F8) + 32;
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Error, insufficient sample buffer space!\n", "agxa_device_template.hpp", 3385, "generateLegacyFormatSample");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "agxa_device_template.hpp";
      v10 = 1024;
      v11 = 3385;
      v12 = 2080;
      v13 = "generateLegacyFormatSample";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Error, insufficient sample buffer space!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v9 = "agxa_device_template.hpp";
      v10 = 1024;
      v11 = 3385;
      v12 = 2080;
      v13 = "generateLegacyFormatSample";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Error, insufficient sample buffer space!\n", buf, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_29CCB9474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, NSObject *object)
{
  dispatch_release(object);
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupHWResourcePools(uint64_t a1, uint64_t a2)
{
  *&v12 = 0;
  if (findEnvVarNum<unsigned long long>("AGX_DATA_BUFFER_CACHING_OVERRIDE", &v12))
  {
    result = fprintf(*MEMORY[0x29EDCA610], "AGX: environment variable forcing the following data buffer classes to use cacheable memory: 0x%016llX\n");
  }

  else
  {
    keyExistsAndHasValidFormat[0] = 0;
    result = CFPreferencesGetAppIntegerValue(@"dataBufferCachingOverride", @"com.apple.Metal", keyExistsAndHasValidFormat);
    *&v12 = result;
    if (!keyExistsAndHasValidFormat[0])
    {
      v5 = -1;
      goto LABEL_6;
    }

    result = fprintf(*MEMORY[0x29EDCA610], "AGX: preference forcing the following data buffer classes to use cacheable memory: 0x%016llX\n");
  }

  v5 = v12;
LABEL_6:
  v6 = 0;
  v7 = &AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::databuffer_params;
  while (1)
  {
    v9 = 0;
    v12 = defaultArgs;
    DWORD1(v12) = (((v5 >> v6) & 1) == 0) << 10;
    v10 = *v7;
    v7 += 2;
    v14 = xmmword_29D2F4170;
    v15 = unk_29D2F4180;
    v16 = 0;
    v18 = unk_29D2F41A0;
    WORD4(v12) = v10;
    v19 = 0;
    v17 = v10;
    v13 = unk_29D2F4160;
    if ((v6 - 35) <= 8)
    {
      v9 = qword_29D2F41B8[(v6 - 35)];
    }

    *(&v13 + 1) = v9;
    v8 = 0x8000000;
    switch(v6)
    {
      case 0:
      case 1:
      case 2:
      case 9:
      case 14:
        v11 = 939524096;
        goto LABEL_16;
      case 3:
      case 19:
      case 22:
        v8 = 0x4008000000;
        goto LABEL_8;
      case 4:
      case 7:
      case 12:
      case 13:
      case 15:
      case 16:
      case 21:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 32:
      case 34:
        goto LABEL_8;
      case 5:
      case 6:
      case 8:
      case 10:
      case 11:
      case 17:
      case 18:
      case 20:
      case 28:
      case 35:
      case 36:
      case 38:
      case 39:
      case 41:
      case 42:
        *(&v18 + 1) = 402653184;
        break;
      case 29:
        v8 = 0x8000000;
LABEL_8:
        *(&v18 + 1) = v8;
        break;
      case 30:
      case 31:
      case 37:
      case 40:
      case 43:
        v11 = 1207959552;
LABEL_16:
        *(&v18 + 1) = v11;
        DWORD1(v13) = 0x8000;
        break;
      case 33:
        *(&v18 + 1) = 0x8000000;
        DWORD1(v12) = 0;
        break;
      default:
        return result;
    }

    result = [objc_alloc(MEMORY[0x29EDC55C0]) initWithDevice:a1 resourceClass:objc_opt_class() resourceArgs:&v12 resourceArgsSize:104 options:0];
    *(a2 + 8 * v6++) = result;
  }
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_unfair_lock_trylock((v1 + 17236)))
  {
    if (*(v1 + 17232) <= 0)
    {
      v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if ((*(v1 + 16600) & 1) == 0)
      {
        v3 = ((v2.__d_.__rep_ - *(v1 + 16592)) + -3000000.0) / 1000000.0;
        if (v3 > 0.0)
        {
          if (v3 < 10.0)
          {
            v4 = 1.0 / fmaxf(10.0 - v3, 1.0);
          }

          else
          {
            *(v1 + 16600) = 1;
            v4 = 1.0;
          }

          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::purgeDevice(v1, v4);
        }
      }
    }

    os_unfair_lock_unlock((v1 + 17236));
  }
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  data = dispatch_source_get_data(*(v1 + 17256));
  if (data == 2)
  {
    AGX::PooledAllocator<8u>::shrink((v1 + 15712), 0.1);
    AGX::PooledAllocator<8u>::shrink((v1 + 15792), 0.1);
    AGX::PooledAllocator<16u>::shrink((v1 + 15872), 0.1);
    AGX::PooledAllocator<8u>::shrink((v1 + 16016), 0.1);
    AGX::PooledAllocator<8u>::shrink((v1 + 16096), 0.1);
    AGX::PooledAllocator<8u>::shrink((v1 + 16176), 0.1);

    AGX::PooledAllocator<8u>::shrink((v1 + 16256), 0.1);
  }

  else if (data == 4)
  {

    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::purgeDevice(v1, 1.0);
  }
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  os_unfair_lock_lock((v1 + 16880));
  if (atomic_load(&AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::liveUberVariantUses))
  {
    goto LABEL_34;
  }

  v10 = v1;
  {
    AGX::BackgroundObjectProgramKey::enumerateUberKeys<8u,false,4u,4u>();
    __cxa_atexit(std::array<AGX::BackgroundObjectProgramKey,4ul>::~array, &AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::enumerateUberKeys(void)::uberKeys, &dword_29CA13000);
  }

  v19 = &unk_2A23F79D0;
  v20 = dword_2A179F760;
  v22[0] = 0;
  v22[1] = 0;
  v21 = 0;
  if (unk_2A179F770 != qword_2A179F768)
  {
    if (((unk_2A179F770 - qword_2A179F768) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_35;
  }

  v23 = xmmword_2A179F780;
  v19 = &unk_2A23F7990;
  v24 = *algn_2A179F790;
  v25 = xmmword_2A179F7A0;
  v26 = &unk_2A23F79D0;
  v27 = dword_2A179F7B8;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (qword_2A179F7C8 != qword_2A179F7C0)
  {
    if (((qword_2A179F7C8 - qword_2A179F7C0) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_35;
  }

  v26 = &unk_2A23F7990;
  v31 = xmmword_2A179F7D8;
  v32 = unk_2A179F7E8;
  v33 = xmmword_2A179F7F8;
  v34 = &unk_2A23F79D0;
  v35 = dword_2A179F810;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  if (unk_2A179F820 != qword_2A179F818)
  {
    if (((unk_2A179F820 - qword_2A179F818) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_35;
  }

  v39 = xmmword_2A179F830;
  v34 = &unk_2A23F7990;
  v40 = unk_2A179F840;
  v41 = xmmword_2A179F850;
  v42 = &unk_2A23F79D0;
  v43 = dword_2A179F868;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  if (qword_2A179F878 != qword_2A179F870)
  {
    if (((qword_2A179F878 - qword_2A179F870) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_35;
  }

  v4 = 0;
  v42 = &unk_2A23F7990;
  v47 = xmmword_2A179F888;
  v48 = unk_2A179F898;
  v49 = xmmword_2A179F8A8;
  do
  {
    v5 = &v19 + v4 * 8;
    v11 = &unk_2A23F79D0;
    v12 = *(&v19 + v4 * 8 + 8);
    v14 = 0;
    v15 = 0;
    __p = 0;
    v7 = v22[v4 - 1];
    v6 = v22[v4];
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_35:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = &unk_2A23F7990;
    v16 = *(v5 + 40);
    v17 = *(v5 + 56);
    v18 = *(v5 + 72);
    os_unfair_lock_lock(v2 + 222);
    v8 = VectorMap<AGX::BackgroundObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BackgroundObjectProgramVariant>,4u>::operator[](v2, &v11);
    if (*v8)
    {
      dispatch_group_wait(*v8, 0xFFFFFFFFFFFFFFFFLL);

      *v8 = 0;
    }

    v9 = *(v8 + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(v8 + 8) = 0;
    *(v8 + 16) = 0;

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    os_unfair_lock_unlock(v2 + 222);
    v11 = &unk_2A23F79D0;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    v4 += 11;
  }

  while (v4 != 44);
  v42 = &unk_2A23F79D0;
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v34 = &unk_2A23F79D0;
  v1 = v10;
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  v26 = &unk_2A23F79D0;
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  v19 = &unk_2A23F79D0;
  if (v21)
  {
    v22[0] = v21;
    operator delete(v21);
  }

LABEL_34:
  os_unfair_lock_unlock((v1 + 16880));
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13setupDeferredEP19AGXG18PFamilyDevice_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  os_unfair_lock_lock((v1 + 16884));
  if (!atomic_load(&AGX::EndOfTileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::liveUberVariantUses))
  {
    {
      AGX::EndOfTileProgramKey::enumerateUberKeys<8u>();
      __cxa_atexit(std::array<AGX::EndOfTileProgramKey,4ul>::~array, &AGX::EndOfTileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::enumerateUberKeys(void)::uberKeys, &dword_29CA13000);
    }

    v15 = &unk_2A23F9778;
    v16 = dword_2A179F8D0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    if (*(&xmmword_2A179F8D8 + 1) != xmmword_2A179F8D8)
    {
      if (((*(&xmmword_2A179F8D8 + 1) - xmmword_2A179F8D8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_41;
    }

    v22 = xmmword_2A179F910;
    v23 = unk_2A179F920;
    v24 = xmmword_2A179F930;
    v20 = xmmword_2A179F8F0;
    v15 = &unk_2A23F9738;
    v21 = unk_2A179F900;
    v25 = qword_2A179F940;
    v26 = &unk_2A23F9778;
    v27 = dword_2A179F950;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    if (unk_2A179F960 != qword_2A179F958)
    {
      if (((unk_2A179F960 - qword_2A179F958) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_41;
    }

    v33 = xmmword_2A179F990;
    v34 = unk_2A179F9A0;
    v35 = xmmword_2A179F9B0;
    v31 = xmmword_2A179F970;
    v26 = &unk_2A23F9738;
    v32 = unk_2A179F980;
    v36 = qword_2A179F9C0;
    v37 = &unk_2A23F9778;
    v38 = dword_2A179F9D0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    if (qword_2A179F9E0 != qword_2A179F9D8)
    {
      if (((qword_2A179F9E0 - qword_2A179F9D8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_41;
    }

    v44 = xmmword_2A179FA10;
    v45 = unk_2A179FA20;
    v46 = xmmword_2A179FA30;
    v42 = xmmword_2A179F9F0;
    v43 = unk_2A179FA00;
    v37 = &unk_2A23F9738;
    v47 = qword_2A179FA40;
    v48 = &unk_2A23F9778;
    v49 = dword_2A179FA50;
    v52 = 0;
    v50 = 0;
    v51 = 0;
    if (qword_2A179FA60 != qword_2A179FA58)
    {
      if (((qword_2A179FA60 - qword_2A179FA58) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_41;
    }

    v55 = xmmword_2A179FA90;
    v56 = unk_2A179FAA0;
    v57 = xmmword_2A179FAB0;
    v53 = xmmword_2A179FA70;
    v54 = unk_2A179FA80;
    v48 = &unk_2A23F9738;
    v58 = qword_2A179FAC0;
    v5 = v16;
    v7 = 0;
    v8 = 0;
    __p = 0;
    v4 = &unk_2A23F9738;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v9 = v20;
    v10 = v21;
    AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::pruneVariant(v2, &v4);
    v4 = &unk_2A23F9778;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v4 = &unk_2A23F9778;
    v5 = v27;
    v7 = 0;
    v8 = 0;
    __p = 0;
    if (v29 != v28)
    {
      if (((v29 - v28) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_41;
    }

    v4 = &unk_2A23F9738;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v9 = v31;
    v10 = v32;
    AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::pruneVariant(v2, &v4);
    v4 = &unk_2A23F9778;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v4 = &unk_2A23F9778;
    v5 = v38;
    v7 = 0;
    v8 = 0;
    __p = 0;
    if (v40 != v39)
    {
      if (((v40 - v39) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_41;
    }

    v4 = &unk_2A23F9738;
    v11 = v44;
    v12 = v45;
    v13 = v46;
    v14 = v47;
    v9 = v42;
    v10 = v43;
    AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::pruneVariant(v2, &v4);
    v4 = &unk_2A23F9778;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v4 = &unk_2A23F9778;
    v5 = v49;
    v7 = 0;
    v8 = 0;
    __p = 0;
    if (v51 != v50)
    {
      if (((v51 - v50) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_41:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = &unk_2A23F9738;
    v11 = v55;
    v12 = v56;
    v13 = v57;
    v14 = v58;
    v9 = v53;
    v10 = v54;
    AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::pruneVariant(v2, &v4);
    v4 = &unk_2A23F9778;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v48 = &unk_2A23F9778;
    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    v37 = &unk_2A23F9778;
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    v26 = &unk_2A23F9778;
    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    v15 = &unk_2A23F9778;
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  os_unfair_lock_unlock((v1 + 16884));
}

double AGX::EndOfTileProgramKey::enumerateUberKeys<8u>()
{
  AGX::EndOfTileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::enumerateUberKeys(void)::uberKeys = &unk_2A23F9738;
  qword_2A179F948 = &unk_2A23F9738;
  qword_2A179F9C8 = &unk_2A23F9738;
  qword_2A179FA48 = &unk_2A23F9738;
  dword_2A179F8D0 = 19;
  result = 0.0;
  xmmword_2A179F8D8 = 0u;
  unk_2A179F8E8 = 0u;
  *(&xmmword_2A179F8F0 + 8) = 0u;
  unk_2A179F908 = 0u;
  *(&xmmword_2A179F910 + 8) = 0u;
  unk_2A179F928 = 0u;
  *(&xmmword_2A179F930 + 8) = xmmword_29D2F16B0;
  dword_2A179F9D0 = 19;
  qword_2A179F9E0 = 0;
  unk_2A179F9E8 = 0;
  qword_2A179F9D8 = 0;
  LODWORD(xmmword_2A179F9F0) = 0x2000000;
  DWORD1(xmmword_2A179FA30) = 0;
  *(&xmmword_2A179F9F0 + 4) = 0u;
  unk_2A179FA04 = 0u;
  *(&xmmword_2A179FA10 + 4) = 0u;
  unk_2A179FA24 = 0u;
  *(&xmmword_2A179FA30 + 8) = xmmword_29D2F16B0;
  dword_2A179F950 = 19;
  qword_2A179F958 = 0;
  unk_2A179F960 = 0;
  qword_2A179F968 = 0;
  LODWORD(xmmword_2A179F970) = 1;
  DWORD1(xmmword_2A179F9B0) = 0;
  unk_2A179F9A4 = 0u;
  *(&xmmword_2A179F990 + 4) = 0u;
  unk_2A179F984 = 0u;
  *(&xmmword_2A179F970 + 4) = 0u;
  *(&xmmword_2A179F9B0 + 8) = xmmword_29D2F16B0;
  dword_2A179FA50 = 19;
  qword_2A179FA60 = 0;
  unk_2A179FA68 = 0;
  qword_2A179FA58 = 0;
  LODWORD(xmmword_2A179FA70) = 33554433;
  DWORD1(xmmword_2A179FAB0) = 0;
  *(&xmmword_2A179FA90 + 4) = 0u;
  unk_2A179FAA4 = 0u;
  *(&xmmword_2A179FA70 + 4) = 0u;
  unk_2A179FA84 = 0u;
  *(&xmmword_2A179FAB0 + 8) = xmmword_29D2F16B0;
  return result;
}

void AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::pruneVariant(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 262);
  v4 = VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::EndOfTileProgramVariant>,4u>::operator[](a1, a2);
  if (*v4)
  {
    dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);

    *v4 = 0;
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v5 + 680));
    v6 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v5);
    MEMORY[0x29ED520D0](v6, 0x10F2C406B241CDELL);
  }

  *(v4 + 8) = 0;
  *(v4 + 16) = 0;

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;

  os_unfair_lock_unlock(a1 + 262);
}

void *std::array<AGX::EndOfTileProgramKey,4ul>::~array(void *a1)
{
  a1[48] = &unk_2A23F9778;
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    operator delete(v2);
  }

  a1[32] = &unk_2A23F9778;
  v3 = a1[34];
  if (v3)
  {
    a1[35] = v3;
    operator delete(v3);
  }

  a1[16] = &unk_2A23F9778;
  v4 = a1[18];
  if (v4)
  {
    a1[19] = v4;
    operator delete(v4);
  }

  *a1 = &unk_2A23F9778;
  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::EndOfTileProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 720);
  v5 = *(a1 + 712);
  if (v4)
  {
    v6 = 0;
    v7 = (v5 + 124);
    while (1)
    {
      v8 = vorrq_s8(vorrq_s8(veorq_s8(*(v7 - 42), *(a2 + 40)), veorq_s8(*(v7 - 26), *(a2 + 72))), vorrq_s8(veorq_s8(*(v7 - 34), *(a2 + 56)), veorq_s8(*(v7 - 18), *(a2 + 88))));
      *v8.i8 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
      if (!(*(v7 - 6) ^ *(a2 + 112) | (*(v7 - 2) ^ *(a2 + 120)) | (*(v7 - 1) ^ *(a2 + 122)) | (*v7 ^ *(a2 + 124)) | v8.i32[0] | (*(v7 - 5) ^ *(a2 + 104)) | v8.i32[1]))
      {
        break;
      }

      v7 += 64;
      if (v4 == ++v6)
      {
        goto LABEL_5;
      }
    }

    v30 = v5 + 48 * v6;
  }

  else
  {
LABEL_5:
    v9 = *(v5 + 704);
    if (v9)
    {
      v10 = *(a2 + 88);
      v11 = *(a2 + 72);
      v12 = *(a2 + 56);
      v13 = *(a2 + 40);
      v14 = *(a2 + 104);
      v15 = *(a2 + 112);
      v16 = *(a2 + 120);
      v17 = *(a2 + 122);
      v18 = 1;
      v19 = *(a2 + 124);
      while (1)
      {
        v20 = vorrq_s8(vorrq_s8(veorq_s8(*(v9 + 40), v13), veorq_s8(*(v9 + 72), v11)), vorrq_s8(veorq_s8(*(v9 + 56), v12), veorq_s8(*(v9 + 88), v10)));
        *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
        if (!(*(v9 + 112) ^ v15 | (*(v9 + 120) ^ v16) | (*(v9 + 122) ^ v17) | (*(v9 + 124) ^ v19) | v20.i32[0] | *(v9 + 104) ^ v14 | v20.i32[1]))
        {
          v18 = 0;
          goto LABEL_21;
        }

        v21 = vorrq_s8(vorrq_s8(veorq_s8(*(v9 + 168), v13), veorq_s8(*(v9 + 200), v11)), vorrq_s8(veorq_s8(*(v9 + 184), v12), veorq_s8(*(v9 + 216), v10)));
        *v21.i8 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        if (!(*(v9 + 240) ^ v15 | (*(v9 + 248) ^ v16) | (*(v9 + 250) ^ v17) | (*(v9 + 252) ^ v19) | v21.i32[0] | *(v9 + 232) ^ v14 | v21.i32[1]))
        {
          goto LABEL_21;
        }

        v22 = vorrq_s8(vorrq_s8(veorq_s8(*(v9 + 296), v13), veorq_s8(*(v9 + 328), v11)), vorrq_s8(veorq_s8(*(v9 + 312), v12), veorq_s8(*(v9 + 344), v10)));
        *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        if (!(*(v9 + 368) ^ v15 | (*(v9 + 376) ^ v16) | (*(v9 + 378) ^ v17) | (*(v9 + 380) ^ v19) | v22.i32[0] | *(v9 + 360) ^ v14 | v22.i32[1]))
        {
          v18 = 2;
          goto LABEL_21;
        }

        v23 = vorrq_s8(vorrq_s8(veorq_s8(*(v9 + 424), v13), veorq_s8(*(v9 + 456), v11)), vorrq_s8(veorq_s8(*(v9 + 440), v12), veorq_s8(*(v9 + 472), v10)));
        *v23.i8 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
        if (!(*(v9 + 496) ^ v15 | (*(v9 + 504) ^ v16) | (*(v9 + 506) ^ v17) | (*(v9 + 508) ^ v19) | v23.i32[0] | *(v9 + 488) ^ v14 | v23.i32[1]))
        {
          break;
        }

        v9 = *(v9 + 704);
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      v18 = 3;
LABEL_21:
      v30 = v9 + 48 * v18;
    }

    else
    {
LABEL_12:
      if (v4 == 4)
      {
        operator new();
      }

      v24 = v5 + (v4 << 7);
      *(v24 + 8) = *(a2 + 8);
      if (v24 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v24 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      v25 = *(a2 + 40);
      *(v24 + 56) = *(a2 + 56);
      *(v24 + 40) = v25;
      v26 = *(a2 + 72);
      v27 = *(a2 + 88);
      v28 = *(a2 + 104);
      *(v24 + 120) = *(a2 + 120);
      *(v24 + 104) = v28;
      *(v24 + 88) = v27;
      *(v24 + 72) = v26;
      v29 = *(a1 + 720);
      v30 = *(a1 + 712) + 48 * v29;
      *(a1 + 720) = v29 + 1;
    }
  }

  return v30 + 512;
}

__n128 AGX::BackgroundObjectProgramKey::enumerateUberKeys<8u,false,4u,4u>()
{
  AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::enumerateUberKeys(void)::uberKeys = &unk_2A23F7990;
  qword_2A179F7B0 = &unk_2A23F7990;
  qword_2A179F808 = &unk_2A23F7990;
  qword_2A179F860 = &unk_2A23F7990;
  v1 = 0u;
  WORD6(v1) = 256;
  LODWORD(v1) = 0x400000;
  dword_2A179F760 = 13;
  qword_2A179F768 = 0;
  unk_2A179F770 = 0;
  qword_2A179F778 = 0;
  xmmword_2A179F780 = 0u;
  *algn_2A179F790 = 0u;
  xmmword_2A179F7A0 = v1;
  v2 = 0u;
  WORD6(v2) = 256;
  LODWORD(v2) = 4195328;
  dword_2A179F7B8 = 13;
  qword_2A179F7C0 = 0;
  qword_2A179F7C8 = 0;
  qword_2A179F7D0 = 0;
  xmmword_2A179F7D8 = 0u;
  unk_2A179F7E8 = 0u;
  xmmword_2A179F7F8 = v2;
  v3 = 0u;
  WORD6(v3) = 256;
  LODWORD(v3) = 4196352;
  dword_2A179F810 = 13;
  qword_2A179F818 = 0;
  unk_2A179F820 = 0;
  qword_2A179F828 = 0;
  unk_2A179F840 = 0u;
  xmmword_2A179F830 = 0u;
  xmmword_2A179F850 = v3;
  v4 = 0u;
  WORD6(v4) = 256;
  LODWORD(v4) = 4197376;
  dword_2A179F868 = 13;
  qword_2A179F870 = 0;
  qword_2A179F878 = 0;
  qword_2A179F880 = 0;
  xmmword_2A179F888 = 0u;
  unk_2A179F898 = 0u;
  result = v4;
  xmmword_2A179F8A8 = v4;
  return result;
}

uint64_t VectorMap<AGX::BackgroundObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BackgroundObjectProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 560);
  v5 = *(a1 + 552);
  if (v4)
  {
    v6 = 0;
    v7 = (v5 + 80);
    while ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(*(a2 + 40), *(v7 - 5)), vceqq_s32(*(a2 + 56), *(v7 - 3)))))) & 1) != 0 || *(a2 + 72) != *(v7 - 2) || *(a2 + 80) != *v7)
    {
      v7 += 11;
      if (v4 == ++v6)
      {
        goto LABEL_11;
      }
    }

    v9 = v5 + 48 * v6;
  }

  else
  {
LABEL_11:
    v10 = *(v5 + 544);
    if (v10)
    {
      v11 = *(a2 + 56);
      v12 = *(a2 + 40);
      v13 = *(a2 + 72);
      v14 = 1;
      v15 = *(a2 + 80);
      while (1)
      {
        if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v12, *(v10 + 40)), vceqq_s32(v11, *(v10 + 56)))))) & 1) == 0 && v13 == *(v10 + 72) && v15 == *(v10 + 80))
        {
          v14 = 0;
          goto LABEL_38;
        }

        if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v12, *(v10 + 128)), vceqq_s32(v11, *(v10 + 144)))))) & 1) == 0 && v13 == *(v10 + 160) && v15 == *(v10 + 168))
        {
          goto LABEL_38;
        }

        if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v12, *(v10 + 216)), vceqq_s32(v11, *(v10 + 232)))))) & 1) == 0 && v13 == *(v10 + 248) && v15 == *(v10 + 256))
        {
          break;
        }

        if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v12, *(v10 + 304)), vceqq_s32(v11, *(v10 + 320)))))) & 1) == 0 && v13 == *(v10 + 336) && v15 == *(v10 + 344))
        {
          v14 = 3;
          goto LABEL_38;
        }

        v10 = *(v10 + 544);
        if (!v10)
        {
          goto LABEL_31;
        }
      }

      v14 = 2;
LABEL_38:
      v9 = v10 + 48 * v14;
    }

    else
    {
LABEL_31:
      if (v4 == 4)
      {
        operator new();
      }

      v18 = v5 + 88 * v4;
      *(v18 + 8) = *(a2 + 8);
      if (v18 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v18 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      v19 = *(a2 + 40);
      v20 = *(a2 + 56);
      *(v18 + 72) = *(a2 + 72);
      *(v18 + 56) = v20;
      *(v18 + 40) = v19;
      v21 = *(a1 + 560);
      v9 = *(a1 + 552) + 48 * v21;
      *(a1 + 560) = v21 + 1;
    }
  }

  return v9 + 352;
}

void *std::array<AGX::BackgroundObjectProgramKey,4ul>::~array(void *a1)
{
  a1[33] = &unk_2A23F79D0;
  v2 = a1[35];
  if (v2)
  {
    a1[36] = v2;
    operator delete(v2);
  }

  a1[22] = &unk_2A23F79D0;
  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  a1[11] = &unk_2A23F79D0;
  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  *a1 = &unk_2A23F79D0;
  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::purgeDevice(uint64_t a1, float a2)
{
  AGX::PooledAllocator<8u>::shrink((a1 + 15712), a2);
  AGX::PooledAllocator<8u>::shrink((a1 + 15792), a2);
  AGX::PooledAllocator<16u>::shrink((a1 + 15872), a2);
  AGX::PooledAllocator<8u>::shrink((a1 + 16016), a2);
  AGX::PooledAllocator<8u>::shrink((a1 + 16096), a2);
  AGX::PooledAllocator<8u>::shrink((a1 + 16176), a2);
  AGX::PooledAllocator<8u>::shrink((a1 + 16256), a2);
  if (a2 >= 0.99)
  {
    v4 = *(a1 + 6344);
    block = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0l;
    v20 = a1 + 6328;
    dispatch_sync(v4, &block);
    v5 = *(a1 + 6512);
    block = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0l;
    v20 = a1 + 6496;
    dispatch_sync(v5, &block);
    v6 = *(a1 + 6680);
    block = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0l;
    v20 = a1 + 6664;
    dispatch_sync(v6, &block);
    v7 = *(a1 + 6848);
    block = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0l;
    v20 = a1 + 6832;
    dispatch_sync(v7, &block);
    v8 = *(a1 + 7184);
    os_unfair_lock_lock((v8 + 72));
    *(v8 + 52) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 24) = 0u;
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;
    os_unfair_lock_unlock((v8 + 72));

    v10 = *(a1 + 7192);
    os_unfair_lock_lock((v10 + 72));
    *(v10 + 52) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 24) = 0u;
    v11 = *(v10 + 8);
    *(v10 + 8) = 0;
    os_unfair_lock_unlock((v10 + 72));

    v12 = *(a1 + 7200);
    os_unfair_lock_lock((v12 + 72));
    *(v12 + 52) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 24) = 0u;
    v13 = *(v12 + 8);
    *(v12 + 8) = 0;
    os_unfair_lock_unlock((v12 + 72));

    v14 = *(a1 + 7208);
    os_unfair_lock_lock((v14 + 40));
    *(v14 + 32) = 0;
    v15 = *(v14 + 8);
    *(v14 + 8) = 0;
    os_unfair_lock_unlock((v14 + 40));
  }
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileDriverShadersEP19AGXG18PFamilyDevice_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8[0] = 0;
  v9 = 0;
  ProgramKey<(_AGCStreamToken)28,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 40, v8, &v9);
  v8[7] = a4;
  v8[8] = v6;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCBBA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileDriverShadersEP19AGXG18PFamilyDevice_block_invoke_166(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    operator new();
  }

  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(a4);
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

unsigned __int8 *AGXIotoInstruction_PIXWAIT_0::emit(AGXIotoInstruction_PIXWAIT_0 *this, unsigned __int8 *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = v2 != 0;
  v7 = *(this + 1);
  v8 = v5 == 1;
  v9 = v2 | v3 | v4;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 == 1;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 == 2;
  }

  v12 = v7 == 1 && v5 == 0;
  v13 = v7 == 1 && v5 == 1;
  v14 = v7 == 1 && v5 == 2;
  v15 = v7 == 2 && v5 == 0;
  if (v7 == 2)
  {
    v16 = v5 == 2;
  }

  else
  {
    v8 = 0;
    v16 = 0;
  }

  v17 = v9 == 0;
  v149 = v9 == 0;
  v138 = v10;
  v139 = v15;
  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v148 = v18;
  v136 = v8;
  v137 = v13;
  v19 = v17 && v8;
  v147 = v19;
  v20 = v17 && v10;
  v146 = v20;
  v21 = v17 && v12;
  v145 = v21;
  v22 = v17 && v13;
  v144 = v22;
  v134 = v14;
  v135 = v11;
  v23 = v17 && v11;
  v143 = v23;
  v24 = v17 && v14;
  v142 = v24;
  v133 = v16;
  v25 = v17 && v16;
  v140 = v12;
  v141 = v25;
  v26 = v2 != 1;
  v27 = v2 != 2;
  if (v3)
  {
    v28 = 1;
  }

  else
  {
    v28 = v26;
  }

  if (v3)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v3 != 1 || v6;
  v31 = v3 != 1 || v26;
  v32 = v3 != 1 || v27;
  v33 = v3 == 2;
  v34 = v5 | v7;
  if (v33)
  {
    v35 = v26;
  }

  else
  {
    v6 = 1;
    v35 = 1;
  }

  v36 = !v33 || v27;
  if (v4)
  {
    v37 = 1;
  }

  else
  {
    v37 = v30;
  }

  if (v4)
  {
    v38 = 1;
  }

  else
  {
    v38 = v6;
  }

  if (v4)
  {
    v39 = 1;
  }

  else
  {
    v39 = v28;
  }

  if (v4)
  {
    v40 = 1;
  }

  else
  {
    v40 = v31;
  }

  if (v4)
  {
    v41 = 1;
  }

  else
  {
    v41 = v35;
  }

  if (v4)
  {
    v42 = 1;
  }

  else
  {
    v42 = v29;
  }

  v152 = v42;
  if (v4)
  {
    v43 = 1;
  }

  else
  {
    v43 = v32;
  }

  v155 = v43;
  if (v4)
  {
    v44 = 1;
  }

  else
  {
    v44 = v36;
  }

  v159 = v44;
  v45 = v4 != 1 || *(this + 2) != 0;
  if (v4 == 1)
  {
    v46 = v30;
  }

  else
  {
    v46 = 1;
  }

  v47 = v4 != 1 || v6;
  if (v4 == 1)
  {
    v48 = v28;
  }

  else
  {
    v48 = 1;
  }

  if (v4 == 1)
  {
    v49 = v31;
  }

  else
  {
    v49 = 1;
  }

  if (v4 == 1)
  {
    v50 = v35;
  }

  else
  {
    v50 = 1;
  }

  if (v4 == 1)
  {
    v51 = v29;
  }

  else
  {
    v51 = 1;
  }

  if (v4 == 1)
  {
    v52 = v32;
  }

  else
  {
    v52 = 1;
  }

  v150 = v52;
  if (v4 == 1)
  {
    v53 = v36;
  }

  else
  {
    v53 = 1;
  }

  v153 = v53;
  v54 = v4 == 2;
  v55 = v4 != 2 || *(this + 2) != 0;
  if (v54)
  {
    v56 = v30;
  }

  else
  {
    v56 = 1;
  }

  if (v54)
  {
    v57 = v35;
  }

  else
  {
    v6 = 1;
    v28 = 1;
    v31 = 1;
    v57 = 1;
  }

  if (v54)
  {
    v58 = v29;
  }

  else
  {
    v58 = 1;
  }

  if (v54)
  {
    v59 = v32;
  }

  else
  {
    v59 = 1;
  }

  if (!v54)
  {
    v36 = 1;
  }

  v60 = v34 == 0;
  v61 = !v45;
  v62 = !v55;
  v63 = v37 ^ 1;
  v64 = v46 ^ 1;
  v65 = v56 ^ 1;
  v66 = v38 ^ 1;
  v67 = !v6;
  v68 = v39 ^ 1;
  v69 = v48 ^ 1;
  v70 = v40 ^ 1;
  v71 = v41 ^ 1;
  v72 = v50 ^ 1;
  v73 = v57 ^ 1;
  v74 = v58 ^ 1;
  v75 = v155 ^ 1;
  v76 = v150 ^ 1;
  v77 = v59 ^ 1;
  v78 = v153 ^ 1;
  v79 = v36 ^ 1;
  v80 = v34 == 0;
  v154 = v62;
  v156 = v61;
  if (v34)
  {
    v61 = 0;
    v62 = 0;
  }

  v110 = v37 ^ 1;
  v111 = v64;
  if (v34)
  {
    v63 = 0;
    v64 = 0;
  }

  v112 = v56 ^ 1;
  v113 = v66;
  if (v34)
  {
    v65 = 0;
  }

  v108 = v64;
  v109 = v65;
  if (v34)
  {
    v81 = 0;
  }

  else
  {
    v81 = v66;
  }

  v114 = v47 ^ 1;
  v115 = v67;
  if (v34)
  {
    v82 = 0;
  }

  else
  {
    v82 = v47 ^ 1;
  }

  if (v34)
  {
    v83 = 0;
  }

  else
  {
    v83 = v67;
  }

  v116 = v68;
  v117 = v69;
  if (v34)
  {
    v84 = 0;
  }

  else
  {
    v84 = v68;
  }

  if (v60)
  {
    v85 = v69;
  }

  else
  {
    v85 = 0;
  }

  v118 = v28 ^ 1;
  v119 = v70;
  if (v60)
  {
    v86 = v28 ^ 1;
  }

  else
  {
    v86 = 0;
  }

  if (v60)
  {
    v87 = v70;
  }

  else
  {
    v87 = 0;
  }

  v120 = v49 ^ 1;
  v121 = v31 ^ 1;
  if (v60)
  {
    v88 = v49 ^ 1;
  }

  else
  {
    v88 = 0;
  }

  if (v60)
  {
    v89 = v31 ^ 1;
  }

  else
  {
    v89 = 0;
  }

  v122 = v71;
  v123 = v72;
  if (v60)
  {
    v90 = v71;
  }

  else
  {
    v90 = 0;
  }

  if (v60)
  {
    v91 = v72;
  }

  else
  {
    v91 = 0;
  }

  v124 = v73;
  v125 = v152 ^ 1;
  if (v60)
  {
    v92 = v73;
  }

  else
  {
    v92 = 0;
  }

  if (v60)
  {
    v93 = v152 ^ 1;
  }

  else
  {
    v93 = 0;
  }

  v127 = v51 ^ 1;
  v128 = v74;
  if (v60)
  {
    v94 = v51 ^ 1;
  }

  else
  {
    v94 = 0;
  }

  if (v60)
  {
    v95 = v74;
  }

  else
  {
    v95 = 0;
  }

  v126 = v95;
  if (v60)
  {
    v96 = v75;
  }

  else
  {
    v96 = 0;
  }

  v131 = v150 ^ 1;
  if (!v60)
  {
    v76 = 0;
  }

  v129 = v75;
  v130 = v76;
  if (v60)
  {
    v97 = v77;
  }

  else
  {
    v97 = 0;
  }

  v132 = v97;
  v98 = v159 ^ 1;
  if (v60)
  {
    v99 = v159 ^ 1;
  }

  else
  {
    v99 = 0;
  }

  v100 = v78;
  if (v60)
  {
    v101 = v78;
  }

  else
  {
    v101 = 0;
  }

  v102 = v79;
  if (!v60)
  {
    v79 = 0;
  }

  v151 = v79;
  LOWORD(v79) = 1280;
  v160 = 7;
  if (*(this + 8) == 3)
  {
    LOWORD(v103) = 0;
    if (*(this + 7) == 122)
    {
      v157 = v101;
      v160 = ((*(this + 44) & 1) << 14) | (8 * (*(this + 18) & 0x3FF)) & 0xDFFF | ((*(this + 20) & 1) << 13) | 7;
      v104 = *(this + 24);
      v79 = (v104 << 7) & 0x4000 | (*this << 15) | (((v104 >> 6) & 1) << 13) | 0x500;
      v103 = (v104 << 10) & 0x38000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10);
      if (v149 && v80)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10);
      }

      else if (v148)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 4;
      }

      else if (v147)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 8;
      }

      else if (v146)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xC;
      }

      else if (v145)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x10;
      }

      else if (v144)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x14;
      }

      else if (v143)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x18;
      }

      else if (v142)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1C;
      }

      else if (v141)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x20;
      }

      else if (v61)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x24;
      }

      else if ((v156 & v140) != 0)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x28;
      }

      else if ((v156 & v139) != 0)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x2C;
      }

      else if ((v156 & v138) != 0)
      {
        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x30;
      }

      else
      {
        if ((v156 & v137) != 0)
        {
          v105 = 13;
        }

        else
        {
          if ((v156 & v136) != 0)
          {
            LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x38;
            goto LABEL_240;
          }

          if ((v156 & v135) != 0)
          {
            LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x3C;
            goto LABEL_240;
          }

          if ((v156 & v134) != 0)
          {
            LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x40;
            goto LABEL_240;
          }

          if ((v156 & v133) != 0)
          {
            v105 = 17;
          }

          else if (v62)
          {
            v105 = 18;
          }

          else if ((v154 & v140) != 0)
          {
            v105 = 19;
          }

          else if ((v154 & v139) != 0)
          {
            v105 = 20;
          }

          else if ((v154 & v138) != 0)
          {
            v105 = 21;
          }

          else if ((v154 & v137) != 0)
          {
            v105 = 22;
          }

          else if ((v154 & v136) != 0)
          {
            v105 = 23;
          }

          else
          {
            if ((v154 & v135) != 0)
            {
              LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x60;
              goto LABEL_240;
            }

            if ((v154 & v134) != 0)
            {
              v105 = 25;
            }

            else if ((v154 & v133) != 0)
            {
              v105 = 26;
            }

            else if (v63)
            {
              v105 = 27;
            }

            else
            {
              if ((v110 & v140) != 0)
              {
                LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x70;
                goto LABEL_240;
              }

              if ((v110 & v139) != 0)
              {
                v105 = 29;
              }

              else
              {
                if ((v110 & v138) != 0)
                {
                  LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x78;
                  goto LABEL_240;
                }

                if ((v110 & v137) != 0)
                {
                  LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x7C;
                  goto LABEL_240;
                }

                if ((v110 & v136) != 0)
                {
                  LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x80;
                  goto LABEL_240;
                }

                if ((v110 & v135) != 0)
                {
                  v105 = 33;
                }

                else if ((v110 & v134) != 0)
                {
                  v105 = 34;
                }

                else if ((v110 & v133) != 0)
                {
                  v105 = 35;
                }

                else if (v108)
                {
                  v105 = 36;
                }

                else if ((v111 & v140) != 0)
                {
                  v105 = 37;
                }

                else if ((v111 & v139) != 0)
                {
                  v105 = 38;
                }

                else if ((v111 & v138) != 0)
                {
                  v105 = 39;
                }

                else if ((v111 & v137) != 0)
                {
                  v105 = 40;
                }

                else if ((v111 & v136) != 0)
                {
                  v105 = 41;
                }

                else if ((v111 & v135) != 0)
                {
                  v105 = 42;
                }

                else if ((v111 & v134) != 0)
                {
                  v105 = 43;
                }

                else if ((v111 & v133) != 0)
                {
                  v105 = 44;
                }

                else if (v109)
                {
                  v105 = 45;
                }

                else if ((v112 & v140) != 0)
                {
                  v105 = 46;
                }

                else if ((v112 & v139) != 0)
                {
                  v105 = 47;
                }

                else
                {
                  if ((v112 & v138) != 0)
                  {
                    LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xC0;
                    goto LABEL_240;
                  }

                  if ((v112 & v137) != 0)
                  {
                    v105 = 49;
                  }

                  else if ((v112 & v136) != 0)
                  {
                    v105 = 50;
                  }

                  else if ((v112 & v135) != 0)
                  {
                    v105 = 51;
                  }

                  else if ((v112 & v134) != 0)
                  {
                    v105 = 52;
                  }

                  else if ((v112 & v133) != 0)
                  {
                    v105 = 53;
                  }

                  else if (v81)
                  {
                    v105 = 54;
                  }

                  else if ((v113 & v140) != 0)
                  {
                    v105 = 55;
                  }

                  else
                  {
                    if ((v113 & v139) != 0)
                    {
                      LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xE0;
                      goto LABEL_240;
                    }

                    if ((v113 & v138) != 0)
                    {
                      v105 = 57;
                    }

                    else if ((v113 & v137) != 0)
                    {
                      v105 = 58;
                    }

                    else if ((v113 & v136) != 0)
                    {
                      v105 = 59;
                    }

                    else
                    {
                      if ((v113 & v135) != 0)
                      {
                        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xF0;
                        goto LABEL_240;
                      }

                      if ((v113 & v134) != 0)
                      {
                        v105 = 61;
                      }

                      else
                      {
                        if ((v113 & v133) != 0)
                        {
                          LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xF8;
                          goto LABEL_240;
                        }

                        if (v82)
                        {
                          LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xFC;
                          goto LABEL_240;
                        }

                        if ((v114 & v140) != 0)
                        {
                          LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x100;
                          goto LABEL_240;
                        }

                        if ((v114 & v139) != 0)
                        {
                          v105 = 65;
                        }

                        else if ((v114 & v138) != 0)
                        {
                          v105 = 66;
                        }

                        else if ((v114 & v137) != 0)
                        {
                          v105 = 67;
                        }

                        else if ((v114 & v136) != 0)
                        {
                          v105 = 68;
                        }

                        else if ((v114 & v135) != 0)
                        {
                          v105 = 69;
                        }

                        else if ((v114 & v134) != 0)
                        {
                          v105 = 70;
                        }

                        else if ((v114 & v133) != 0)
                        {
                          v105 = 71;
                        }

                        else if (v83)
                        {
                          v105 = 72;
                        }

                        else if ((v115 & v140) != 0)
                        {
                          v105 = 73;
                        }

                        else if ((v115 & v139) != 0)
                        {
                          v105 = 74;
                        }

                        else if ((v115 & v138) != 0)
                        {
                          v105 = 75;
                        }

                        else if ((v115 & v137) != 0)
                        {
                          v105 = 76;
                        }

                        else if ((v115 & v136) != 0)
                        {
                          v105 = 77;
                        }

                        else if ((v115 & v135) != 0)
                        {
                          v105 = 78;
                        }

                        else if ((v115 & v134) != 0)
                        {
                          v105 = 79;
                        }

                        else if ((v115 & v133) != 0)
                        {
                          v105 = 80;
                        }

                        else if (v84)
                        {
                          v105 = 81;
                        }

                        else if ((v116 & v140) != 0)
                        {
                          v105 = 82;
                        }

                        else if ((v116 & v139) != 0)
                        {
                          v105 = 83;
                        }

                        else if ((v116 & v138) != 0)
                        {
                          v105 = 84;
                        }

                        else if ((v116 & v137) != 0)
                        {
                          v105 = 85;
                        }

                        else if ((v116 & v136) != 0)
                        {
                          v105 = 86;
                        }

                        else if ((v116 & v135) != 0)
                        {
                          v105 = 87;
                        }

                        else if ((v116 & v134) != 0)
                        {
                          v105 = 88;
                        }

                        else if ((v116 & v133) != 0)
                        {
                          v105 = 89;
                        }

                        else if (v85)
                        {
                          v105 = 90;
                        }

                        else if ((v117 & v140) != 0)
                        {
                          v105 = 91;
                        }

                        else if ((v117 & v139) != 0)
                        {
                          v105 = 92;
                        }

                        else if ((v117 & v138) != 0)
                        {
                          v105 = 93;
                        }

                        else if ((v117 & v137) != 0)
                        {
                          v105 = 94;
                        }

                        else if ((v117 & v136) != 0)
                        {
                          v105 = 95;
                        }

                        else
                        {
                          if ((v117 & v135) != 0)
                          {
                            LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x180;
                            goto LABEL_240;
                          }

                          if ((v117 & v134) != 0)
                          {
                            v105 = 97;
                          }

                          else if ((v117 & v133) != 0)
                          {
                            v105 = 98;
                          }

                          else if (v86)
                          {
                            v105 = 99;
                          }

                          else if ((v118 & v140) != 0)
                          {
                            v105 = 100;
                          }

                          else if ((v118 & v139) != 0)
                          {
                            v105 = 101;
                          }

                          else if ((v118 & v138) != 0)
                          {
                            v105 = 102;
                          }

                          else if ((v118 & v137) != 0)
                          {
                            v105 = 103;
                          }

                          else if ((v118 & v136) != 0)
                          {
                            v105 = 104;
                          }

                          else if ((v118 & v135) != 0)
                          {
                            v105 = 105;
                          }

                          else if ((v118 & v134) != 0)
                          {
                            v105 = 106;
                          }

                          else if ((v118 & v133) != 0)
                          {
                            v105 = 107;
                          }

                          else if (v87)
                          {
                            v105 = 108;
                          }

                          else if ((v119 & v140) != 0)
                          {
                            v105 = 109;
                          }

                          else if ((v119 & v139) != 0)
                          {
                            v105 = 110;
                          }

                          else if ((v119 & v138) != 0)
                          {
                            v105 = 111;
                          }

                          else
                          {
                            if ((v119 & v137) != 0)
                            {
                              LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1C0;
                              goto LABEL_240;
                            }

                            if ((v119 & v136) != 0)
                            {
                              v105 = 113;
                            }

                            else if ((v119 & v135) != 0)
                            {
                              v105 = 114;
                            }

                            else if ((v119 & v134) != 0)
                            {
                              v105 = 115;
                            }

                            else if ((v119 & v133) != 0)
                            {
                              v105 = 116;
                            }

                            else if (v88)
                            {
                              v105 = 117;
                            }

                            else if ((v120 & v140) != 0)
                            {
                              v105 = 118;
                            }

                            else if ((v120 & v139) != 0)
                            {
                              v105 = 119;
                            }

                            else
                            {
                              if ((v120 & v138) != 0)
                              {
                                LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1E0;
                                goto LABEL_240;
                              }

                              if ((v120 & v137) != 0)
                              {
                                v105 = 121;
                              }

                              else if ((v120 & v136) != 0)
                              {
                                v105 = 122;
                              }

                              else if ((v120 & v135) != 0)
                              {
                                v105 = 123;
                              }

                              else
                              {
                                if ((v120 & v134) != 0)
                                {
                                  LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1F0;
                                  goto LABEL_240;
                                }

                                if ((v120 & v133) != 0)
                                {
                                  v105 = 125;
                                }

                                else
                                {
                                  if (v89)
                                  {
                                    LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1F8;
                                    goto LABEL_240;
                                  }

                                  if ((v121 & v140) != 0)
                                  {
                                    LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1FC;
                                    goto LABEL_240;
                                  }

                                  if ((v121 & v139) != 0)
                                  {
                                    LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x200;
                                    goto LABEL_240;
                                  }

                                  if ((v121 & v138) != 0)
                                  {
                                    v105 = -127;
                                  }

                                  else if ((v121 & v137) != 0)
                                  {
                                    v105 = -126;
                                  }

                                  else if ((v121 & v136) != 0)
                                  {
                                    v105 = -125;
                                  }

                                  else if ((v121 & v135) != 0)
                                  {
                                    v105 = -124;
                                  }

                                  else if ((v121 & v134) != 0)
                                  {
                                    v105 = -123;
                                  }

                                  else if ((v121 & v133) != 0)
                                  {
                                    v105 = -122;
                                  }

                                  else if (v90)
                                  {
                                    v105 = -121;
                                  }

                                  else if ((v122 & v140) != 0)
                                  {
                                    v105 = -120;
                                  }

                                  else if ((v122 & v139) != 0)
                                  {
                                    v105 = -119;
                                  }

                                  else if ((v122 & v138) != 0)
                                  {
                                    v105 = -118;
                                  }

                                  else if ((v122 & v137) != 0)
                                  {
                                    v105 = -117;
                                  }

                                  else
                                  {
                                    if ((v122 & v136) == 0)
                                    {
                                      if ((v122 & v135) != 0)
                                      {
                                        v107 = -115;
                                      }

                                      else if ((v122 & v134) != 0)
                                      {
                                        v107 = -114;
                                      }

                                      else if ((v122 & v133) != 0)
                                      {
                                        v107 = -113;
                                      }

                                      else if (v91)
                                      {
                                        v107 = -112;
                                      }

                                      else if ((v123 & v140) != 0)
                                      {
                                        v107 = -111;
                                      }

                                      else if ((v123 & v139) != 0)
                                      {
                                        v107 = -110;
                                      }

                                      else if ((v123 & v138) != 0)
                                      {
                                        v107 = -109;
                                      }

                                      else if ((v123 & v137) != 0)
                                      {
                                        v107 = -108;
                                      }

                                      else if ((v123 & v136) != 0)
                                      {
                                        v107 = -107;
                                      }

                                      else if ((v123 & v135) != 0)
                                      {
                                        v107 = -106;
                                      }

                                      else if ((v123 & v134) != 0)
                                      {
                                        v107 = -105;
                                      }

                                      else if ((v123 & v133) != 0)
                                      {
                                        v107 = -104;
                                      }

                                      else if (v92)
                                      {
                                        v107 = -103;
                                      }

                                      else if ((v124 & v140) != 0)
                                      {
                                        v107 = -102;
                                      }

                                      else if ((v124 & v139) != 0)
                                      {
                                        v107 = -101;
                                      }

                                      else if ((v124 & v138) != 0)
                                      {
                                        v107 = -100;
                                      }

                                      else if ((v124 & v137) != 0)
                                      {
                                        v107 = -99;
                                      }

                                      else if ((v124 & v136) != 0)
                                      {
                                        v107 = -98;
                                      }

                                      else if ((v124 & v135) != 0)
                                      {
                                        v107 = -97;
                                      }

                                      else if ((v124 & v134) != 0)
                                      {
                                        v107 = -96;
                                      }

                                      else if ((v124 & v133) != 0)
                                      {
                                        v107 = -95;
                                      }

                                      else if (v93)
                                      {
                                        v107 = -94;
                                      }

                                      else if ((v125 & v140) != 0)
                                      {
                                        v107 = -93;
                                      }

                                      else if ((v125 & v139) != 0)
                                      {
                                        v107 = -92;
                                      }

                                      else if ((v125 & v138) != 0)
                                      {
                                        v107 = -91;
                                      }

                                      else if ((v125 & v137) != 0)
                                      {
                                        v107 = -90;
                                      }

                                      else if ((v125 & v136) != 0)
                                      {
                                        v107 = -89;
                                      }

                                      else if ((v125 & v135) != 0)
                                      {
                                        v107 = -88;
                                      }

                                      else if ((v125 & v134) != 0)
                                      {
                                        v107 = -87;
                                      }

                                      else if ((v125 & v133) != 0)
                                      {
                                        v107 = -86;
                                      }

                                      else if (v94)
                                      {
                                        v107 = -85;
                                      }

                                      else if ((v127 & v140) != 0)
                                      {
                                        v107 = -84;
                                      }

                                      else if ((v127 & v139) != 0)
                                      {
                                        v107 = -83;
                                      }

                                      else if ((v127 & v138) != 0)
                                      {
                                        v107 = -82;
                                      }

                                      else if ((v127 & v137) != 0)
                                      {
                                        v107 = -81;
                                      }

                                      else if ((v127 & v136) != 0)
                                      {
                                        v107 = -80;
                                      }

                                      else if ((v127 & v135) != 0)
                                      {
                                        v107 = -79;
                                      }

                                      else if ((v127 & v134) != 0)
                                      {
                                        v107 = -78;
                                      }

                                      else if ((v127 & v133) != 0)
                                      {
                                        v107 = -77;
                                      }

                                      else if (v126)
                                      {
                                        v107 = -76;
                                      }

                                      else if ((v128 & v140) != 0)
                                      {
                                        v107 = -75;
                                      }

                                      else if ((v128 & v139) != 0)
                                      {
                                        v107 = -74;
                                      }

                                      else if ((v128 & v138) != 0)
                                      {
                                        v107 = -73;
                                      }

                                      else if ((v128 & v137) != 0)
                                      {
                                        v107 = -72;
                                      }

                                      else if ((v128 & v136) != 0)
                                      {
                                        v107 = -71;
                                      }

                                      else if ((v128 & v135) != 0)
                                      {
                                        v107 = -70;
                                      }

                                      else if ((v128 & v134) != 0)
                                      {
                                        v107 = -69;
                                      }

                                      else if ((v128 & v133) != 0)
                                      {
                                        v107 = -68;
                                      }

                                      else if (v96)
                                      {
                                        v107 = -67;
                                      }

                                      else if ((v129 & v140) != 0)
                                      {
                                        v107 = -66;
                                      }

                                      else if ((v129 & v139) != 0)
                                      {
                                        v107 = -65;
                                      }

                                      else
                                      {
                                        if ((v129 & v138) != 0)
                                        {
                                          LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x300;
                                          goto LABEL_240;
                                        }

                                        if ((v129 & v137) != 0)
                                        {
                                          v107 = -63;
                                        }

                                        else if ((v129 & v136) != 0)
                                        {
                                          v107 = -62;
                                        }

                                        else if ((v129 & v135) != 0)
                                        {
                                          v107 = -61;
                                        }

                                        else if ((v129 & v134) != 0)
                                        {
                                          v107 = -60;
                                        }

                                        else if ((v129 & v133) != 0)
                                        {
                                          v107 = -59;
                                        }

                                        else if (v130)
                                        {
                                          v107 = -58;
                                        }

                                        else if ((v131 & v140) != 0)
                                        {
                                          v107 = -57;
                                        }

                                        else if ((v131 & v139) != 0)
                                        {
                                          v107 = -56;
                                        }

                                        else if ((v131 & v138) != 0)
                                        {
                                          v107 = -55;
                                        }

                                        else if ((v131 & v137) != 0)
                                        {
                                          v107 = -54;
                                        }

                                        else if ((v131 & v136) != 0)
                                        {
                                          v107 = -53;
                                        }

                                        else if ((v131 & v135) != 0)
                                        {
                                          v107 = -52;
                                        }

                                        else if ((v131 & v134) != 0)
                                        {
                                          v107 = -51;
                                        }

                                        else if ((v131 & v133) != 0)
                                        {
                                          v107 = -50;
                                        }

                                        else if (v132)
                                        {
                                          v107 = -49;
                                        }

                                        else if ((v77 & v140) != 0)
                                        {
                                          v107 = -48;
                                        }

                                        else if ((v77 & v139) != 0)
                                        {
                                          v107 = -47;
                                        }

                                        else if ((v77 & v138) != 0)
                                        {
                                          v107 = -46;
                                        }

                                        else if ((v77 & v137) != 0)
                                        {
                                          v107 = -45;
                                        }

                                        else if ((v77 & v136) != 0)
                                        {
                                          v107 = -44;
                                        }

                                        else if ((v77 & v135) != 0)
                                        {
                                          v107 = -43;
                                        }

                                        else if ((v77 & v134) != 0)
                                        {
                                          v107 = -42;
                                        }

                                        else if ((v77 & v133) != 0)
                                        {
                                          v107 = -41;
                                        }

                                        else if (v99)
                                        {
                                          v107 = -40;
                                        }

                                        else if ((v98 & v140) != 0)
                                        {
                                          v107 = -39;
                                        }

                                        else if ((v98 & v139) != 0)
                                        {
                                          v107 = -38;
                                        }

                                        else if ((v98 & v138) != 0)
                                        {
                                          v107 = -37;
                                        }

                                        else if ((v98 & v137) != 0)
                                        {
                                          v107 = -36;
                                        }

                                        else if ((v98 & v136) != 0)
                                        {
                                          v107 = -35;
                                        }

                                        else if ((v98 & v135) != 0)
                                        {
                                          v107 = -34;
                                        }

                                        else if ((v98 & v134) != 0)
                                        {
                                          v107 = -33;
                                        }

                                        else
                                        {
                                          if ((v98 & v133) != 0)
                                          {
                                            LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x380;
                                            goto LABEL_240;
                                          }

                                          if (v157)
                                          {
                                            v107 = -31;
                                          }

                                          else if ((v100 & v140) != 0)
                                          {
                                            v107 = -30;
                                          }

                                          else if ((v100 & v139) != 0)
                                          {
                                            v107 = -29;
                                          }

                                          else if ((v100 & v138) != 0)
                                          {
                                            v107 = -28;
                                          }

                                          else if ((v100 & v137) != 0)
                                          {
                                            v107 = -27;
                                          }

                                          else if ((v100 & v136) != 0)
                                          {
                                            v107 = -26;
                                          }

                                          else if ((v100 & v135) != 0)
                                          {
                                            v107 = -25;
                                          }

                                          else if ((v100 & v134) != 0)
                                          {
                                            v107 = -24;
                                          }

                                          else if ((v100 & v133) != 0)
                                          {
                                            v107 = -23;
                                          }

                                          else if (v151)
                                          {
                                            v107 = -22;
                                          }

                                          else if ((v102 & v140) != 0)
                                          {
                                            v107 = -21;
                                          }

                                          else if ((v102 & v139) != 0)
                                          {
                                            v107 = -20;
                                          }

                                          else if ((v102 & v138) != 0)
                                          {
                                            v107 = -19;
                                          }

                                          else if ((v102 & v137) != 0)
                                          {
                                            v107 = -18;
                                          }

                                          else if ((v102 & v136) != 0)
                                          {
                                            v107 = -17;
                                          }

                                          else
                                          {
                                            if ((v102 & v135) != 0)
                                            {
                                              LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x3C0;
                                              goto LABEL_240;
                                            }

                                            if ((v102 & v134) != 0)
                                            {
                                              v107 = -15;
                                            }

                                            else
                                            {
                                              if ((v102 & v133) == 0)
                                              {
                                                goto LABEL_240;
                                              }

                                              v107 = -14;
                                            }
                                          }
                                        }
                                      }

                                      LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | (4 * v107);
                                      goto LABEL_240;
                                    }

                                    v105 = -116;
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
              }
            }
          }
        }

        LOWORD(v103) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | (4 * v105);
      }
    }
  }

  else
  {
    LOWORD(v103) = 0;
  }

LABEL_240:
  *a2 = v160;
  *(a2 + 1) = v79;
  result = a2 + 6;
  *(a2 + 2) = v103;
  return result;
}

unsigned __int8 *AGXIotoInstruction_PIXREL_0::emit(AGXIotoInstruction_PIXREL_0 *this, unsigned __int8 *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = v2 != 0;
  v7 = *(this + 1);
  v8 = v5 == 1;
  v9 = v2 | v3 | v4;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 == 1;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 == 2;
  }

  v12 = v7 == 1 && v5 == 0;
  v13 = v7 == 1 && v5 == 1;
  v14 = v7 == 1 && v5 == 2;
  v15 = v7 == 2 && v5 == 0;
  if (v7 == 2)
  {
    v16 = v5 == 2;
  }

  else
  {
    v8 = 0;
    v16 = 0;
  }

  v17 = v9 == 0;
  v148 = v9 == 0;
  v137 = v10;
  v138 = v15;
  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v147 = v18;
  v135 = v8;
  v136 = v13;
  v19 = v17 && v8;
  v146 = v19;
  v20 = v17 && v10;
  v145 = v20;
  v21 = v17 && v12;
  v144 = v21;
  v22 = v17 && v13;
  v143 = v22;
  v133 = v14;
  v134 = v11;
  v23 = v17 && v11;
  v142 = v23;
  v24 = v17 && v14;
  v141 = v24;
  v132 = v16;
  v25 = v17 && v16;
  v139 = v12;
  v140 = v25;
  v26 = v2 != 1;
  v27 = v2 != 2;
  if (v3)
  {
    v28 = 1;
  }

  else
  {
    v28 = v26;
  }

  if (v3)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v3 != 1 || v6;
  v31 = v3 != 1 || v26;
  v32 = v3 != 1 || v27;
  v33 = v3 == 2;
  v34 = v5 | v7;
  if (v33)
  {
    v35 = v26;
  }

  else
  {
    v6 = 1;
    v35 = 1;
  }

  v36 = !v33 || v27;
  if (v4)
  {
    v37 = 1;
  }

  else
  {
    v37 = v30;
  }

  if (v4)
  {
    v38 = 1;
  }

  else
  {
    v38 = v6;
  }

  if (v4)
  {
    v39 = 1;
  }

  else
  {
    v39 = v28;
  }

  if (v4)
  {
    v40 = 1;
  }

  else
  {
    v40 = v31;
  }

  if (v4)
  {
    v41 = 1;
  }

  else
  {
    v41 = v35;
  }

  if (v4)
  {
    v42 = 1;
  }

  else
  {
    v42 = v29;
  }

  if (v4)
  {
    v43 = 1;
  }

  else
  {
    v43 = v32;
  }

  v155 = v43;
  if (v4)
  {
    v44 = 1;
  }

  else
  {
    v44 = v36;
  }

  v159 = v44;
  v45 = v4 != 1 || *(this + 2) != 0;
  if (v4 == 1)
  {
    v46 = v30;
  }

  else
  {
    v46 = 1;
  }

  v47 = v4 != 1 || v6;
  if (v4 == 1)
  {
    v48 = v28;
  }

  else
  {
    v48 = 1;
  }

  if (v4 == 1)
  {
    v49 = v31;
  }

  else
  {
    v49 = 1;
  }

  if (v4 == 1)
  {
    v50 = v35;
  }

  else
  {
    v50 = 1;
  }

  if (v4 == 1)
  {
    v51 = v29;
  }

  else
  {
    v51 = 1;
  }

  if (v4 == 1)
  {
    v52 = v32;
  }

  else
  {
    v52 = 1;
  }

  v149 = v52;
  v151 = v42;
  if (v4 == 1)
  {
    v53 = v36;
  }

  else
  {
    v53 = 1;
  }

  v153 = v53;
  v54 = v4 == 2;
  v55 = v4 != 2 || *(this + 2) != 0;
  if (v54)
  {
    v56 = v30;
  }

  else
  {
    v56 = 1;
  }

  if (v54)
  {
    v57 = v32;
  }

  else
  {
    v6 = 1;
    v28 = 1;
    v31 = 1;
    v35 = 1;
    v29 = 1;
    v57 = 1;
  }

  if (!v54)
  {
    v36 = 1;
  }

  v58 = v34 == 0;
  v59 = !v45;
  v60 = !v55;
  v61 = v37 ^ 1;
  v62 = v46 ^ 1;
  v63 = v38 ^ 1;
  v64 = v47 ^ 1;
  v65 = !v6;
  v66 = v39 ^ 1;
  v67 = v28 ^ 1;
  v68 = v40 ^ 1;
  v69 = v49 ^ 1;
  v70 = v31 ^ 1;
  v71 = v50 ^ 1;
  v72 = v35 ^ 1;
  v73 = v151 ^ 1;
  v74 = v51 ^ 1;
  v75 = v29 ^ 1;
  v76 = v155 ^ 1;
  v77 = v149 ^ 1;
  v78 = v57 ^ 1;
  v79 = v159 ^ 1;
  v80 = v153 ^ 1;
  v81 = v36 ^ 1;
  v82 = v34 == 0;
  v154 = v60;
  v156 = v59;
  if (v34)
  {
    v59 = 0;
    v60 = 0;
  }

  v152 = v60;
  v111 = v61;
  v112 = v62;
  if (v34)
  {
    v61 = 0;
    v83 = 0;
  }

  else
  {
    v83 = v62;
  }

  v113 = v56 ^ 1;
  v114 = v63;
  if (v34)
  {
    v84 = 0;
  }

  else
  {
    v84 = v56 ^ 1;
  }

  v110 = v84;
  if (v34)
  {
    v85 = 0;
  }

  else
  {
    v85 = v63;
  }

  v115 = v64;
  v116 = v65;
  if (v34)
  {
    v86 = 0;
  }

  else
  {
    v86 = v64;
  }

  if (v58)
  {
    v87 = v65;
  }

  else
  {
    v87 = 0;
  }

  v117 = v66;
  v118 = v48 ^ 1;
  if (v58)
  {
    v88 = v66;
  }

  else
  {
    v88 = 0;
  }

  if (v58)
  {
    v89 = v48 ^ 1;
  }

  else
  {
    v89 = 0;
  }

  v119 = v67;
  v120 = v68;
  if (v58)
  {
    v90 = v67;
  }

  else
  {
    v90 = 0;
  }

  if (v58)
  {
    v91 = v68;
  }

  else
  {
    v91 = 0;
  }

  v121 = v69;
  v122 = v70;
  if (v58)
  {
    v92 = v69;
  }

  else
  {
    v92 = 0;
  }

  if (v58)
  {
    v93 = v70;
  }

  else
  {
    v93 = 0;
  }

  v123 = v41 ^ 1;
  v124 = v71;
  if (v58)
  {
    v94 = v41 ^ 1;
  }

  else
  {
    v94 = 0;
  }

  if (v58)
  {
    v95 = v71;
  }

  else
  {
    v95 = 0;
  }

  v126 = v72;
  if (v58)
  {
    v96 = v72;
  }

  else
  {
    v96 = 0;
  }

  if (v58)
  {
    v97 = v73;
  }

  else
  {
    v97 = 0;
  }

  v127 = v74;
  v128 = v75;
  if (!v58)
  {
    v74 = 0;
  }

  v125 = v74;
  if (!v58)
  {
    v75 = 0;
  }

  v129 = v76;
  if (v58)
  {
    v98 = v76;
  }

  else
  {
    v98 = 0;
  }

  if (v58)
  {
    v99 = v149 ^ 1;
  }

  else
  {
    v99 = 0;
  }

  v130 = v99;
  if (v58)
  {
    v100 = v78;
  }

  else
  {
    v100 = 0;
  }

  v150 = v100;
  v101 = v159 ^ 1;
  if (v58)
  {
    v102 = v80;
  }

  else
  {
    v79 = 0;
    v102 = 0;
  }

  v109 = v81;
  if (!v58)
  {
    v81 = 0;
  }

  v131 = v81;
  LOWORD(v160) = 1024;
  v103 = 7;
  if (*(this + 8) == 1)
  {
    v108 = v77;
    LOWORD(v77) = 0;
    if (*(this + 7) == 121)
    {
      v157 = v102;
      v103 = (8 * (*(this + 18) & 0x3FF)) | 7;
      v104 = *(this + 24);
      v160 = (v104 << 7) & 0x4000 | (*this << 15) | (((v104 >> 6) & 1) << 13) | 0x400;
      v77 = (v104 << 10) & 0x38000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10);
      if (v148 && v82)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10);
      }

      else if (v147)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 4;
      }

      else if (v146)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 8;
      }

      else if (v145)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xC;
      }

      else if (v144)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x10;
      }

      else if (v143)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x14;
      }

      else if (v142)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x18;
      }

      else if (v141)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1C;
      }

      else if (v140)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x20;
      }

      else if (v59)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x24;
      }

      else if ((v156 & v139) != 0)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x28;
      }

      else if ((v156 & v138) != 0)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x2C;
      }

      else if ((v156 & v137) != 0)
      {
        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x30;
      }

      else
      {
        if ((v156 & v136) != 0)
        {
          v105 = 13;
        }

        else
        {
          if ((v156 & v135) != 0)
          {
            LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x38;
            goto LABEL_232;
          }

          if ((v156 & v134) != 0)
          {
            LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x3C;
            goto LABEL_232;
          }

          if ((v156 & v133) != 0)
          {
            LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x40;
            goto LABEL_232;
          }

          if ((v156 & v132) != 0)
          {
            v105 = 17;
          }

          else if (v152)
          {
            v105 = 18;
          }

          else if ((v154 & v139) != 0)
          {
            v105 = 19;
          }

          else if ((v154 & v138) != 0)
          {
            v105 = 20;
          }

          else if ((v154 & v137) != 0)
          {
            v105 = 21;
          }

          else if ((v154 & v136) != 0)
          {
            v105 = 22;
          }

          else if ((v154 & v135) != 0)
          {
            v105 = 23;
          }

          else
          {
            if ((v154 & v134) != 0)
            {
              LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x60;
              goto LABEL_232;
            }

            if ((v154 & v133) != 0)
            {
              v105 = 25;
            }

            else if ((v154 & v132) != 0)
            {
              v105 = 26;
            }

            else if (v61)
            {
              v105 = 27;
            }

            else
            {
              if ((v111 & v139) != 0)
              {
                LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x70;
                goto LABEL_232;
              }

              if ((v111 & v138) != 0)
              {
                v105 = 29;
              }

              else
              {
                if ((v111 & v137) != 0)
                {
                  LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x78;
                  goto LABEL_232;
                }

                if ((v111 & v136) != 0)
                {
                  LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x7C;
                  goto LABEL_232;
                }

                if ((v111 & v135) != 0)
                {
                  LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x80;
                  goto LABEL_232;
                }

                if ((v111 & v134) != 0)
                {
                  v105 = 33;
                }

                else if ((v111 & v133) != 0)
                {
                  v105 = 34;
                }

                else if ((v111 & v132) != 0)
                {
                  v105 = 35;
                }

                else if (v83)
                {
                  v105 = 36;
                }

                else if ((v112 & v139) != 0)
                {
                  v105 = 37;
                }

                else if ((v112 & v138) != 0)
                {
                  v105 = 38;
                }

                else if ((v112 & v137) != 0)
                {
                  v105 = 39;
                }

                else if ((v112 & v136) != 0)
                {
                  v105 = 40;
                }

                else if ((v112 & v135) != 0)
                {
                  v105 = 41;
                }

                else if ((v112 & v134) != 0)
                {
                  v105 = 42;
                }

                else if ((v112 & v133) != 0)
                {
                  v105 = 43;
                }

                else if ((v112 & v132) != 0)
                {
                  v105 = 44;
                }

                else if (v110)
                {
                  v105 = 45;
                }

                else if ((v113 & v139) != 0)
                {
                  v105 = 46;
                }

                else if ((v113 & v138) != 0)
                {
                  v105 = 47;
                }

                else
                {
                  if ((v113 & v137) != 0)
                  {
                    LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xC0;
                    goto LABEL_232;
                  }

                  if ((v113 & v136) != 0)
                  {
                    v105 = 49;
                  }

                  else if ((v113 & v135) != 0)
                  {
                    v105 = 50;
                  }

                  else if ((v113 & v134) != 0)
                  {
                    v105 = 51;
                  }

                  else if ((v113 & v133) != 0)
                  {
                    v105 = 52;
                  }

                  else if ((v113 & v132) != 0)
                  {
                    v105 = 53;
                  }

                  else if (v85)
                  {
                    v105 = 54;
                  }

                  else if ((v114 & v139) != 0)
                  {
                    v105 = 55;
                  }

                  else
                  {
                    if ((v114 & v138) != 0)
                    {
                      LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xE0;
                      goto LABEL_232;
                    }

                    if ((v114 & v137) != 0)
                    {
                      v105 = 57;
                    }

                    else if ((v114 & v136) != 0)
                    {
                      v105 = 58;
                    }

                    else if ((v114 & v135) != 0)
                    {
                      v105 = 59;
                    }

                    else
                    {
                      if ((v114 & v134) != 0)
                      {
                        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xF0;
                        goto LABEL_232;
                      }

                      if ((v114 & v133) != 0)
                      {
                        v105 = 61;
                      }

                      else
                      {
                        if ((v114 & v132) != 0)
                        {
                          LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xF8;
                          goto LABEL_232;
                        }

                        if (v86)
                        {
                          LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0xFC;
                          goto LABEL_232;
                        }

                        if ((v115 & v139) != 0)
                        {
                          LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x100;
                          goto LABEL_232;
                        }

                        if ((v115 & v138) != 0)
                        {
                          v105 = 65;
                        }

                        else if ((v115 & v137) != 0)
                        {
                          v105 = 66;
                        }

                        else if ((v115 & v136) != 0)
                        {
                          v105 = 67;
                        }

                        else if ((v115 & v135) != 0)
                        {
                          v105 = 68;
                        }

                        else if ((v115 & v134) != 0)
                        {
                          v105 = 69;
                        }

                        else if ((v115 & v133) != 0)
                        {
                          v105 = 70;
                        }

                        else if ((v115 & v132) != 0)
                        {
                          v105 = 71;
                        }

                        else if (v87)
                        {
                          v105 = 72;
                        }

                        else if ((v116 & v139) != 0)
                        {
                          v105 = 73;
                        }

                        else if ((v116 & v138) != 0)
                        {
                          v105 = 74;
                        }

                        else if ((v116 & v137) != 0)
                        {
                          v105 = 75;
                        }

                        else if ((v116 & v136) != 0)
                        {
                          v105 = 76;
                        }

                        else if ((v116 & v135) != 0)
                        {
                          v105 = 77;
                        }

                        else if ((v116 & v134) != 0)
                        {
                          v105 = 78;
                        }

                        else if ((v116 & v133) != 0)
                        {
                          v105 = 79;
                        }

                        else if ((v116 & v132) != 0)
                        {
                          v105 = 80;
                        }

                        else if (v88)
                        {
                          v105 = 81;
                        }

                        else if ((v117 & v139) != 0)
                        {
                          v105 = 82;
                        }

                        else if ((v117 & v138) != 0)
                        {
                          v105 = 83;
                        }

                        else if ((v117 & v137) != 0)
                        {
                          v105 = 84;
                        }

                        else if ((v117 & v136) != 0)
                        {
                          v105 = 85;
                        }

                        else if ((v117 & v135) != 0)
                        {
                          v105 = 86;
                        }

                        else if ((v117 & v134) != 0)
                        {
                          v105 = 87;
                        }

                        else if ((v117 & v133) != 0)
                        {
                          v105 = 88;
                        }

                        else if ((v117 & v132) != 0)
                        {
                          v105 = 89;
                        }

                        else if (v89)
                        {
                          v105 = 90;
                        }

                        else if ((v118 & v139) != 0)
                        {
                          v105 = 91;
                        }

                        else if ((v118 & v138) != 0)
                        {
                          v105 = 92;
                        }

                        else if ((v118 & v137) != 0)
                        {
                          v105 = 93;
                        }

                        else if ((v118 & v136) != 0)
                        {
                          v105 = 94;
                        }

                        else if ((v118 & v135) != 0)
                        {
                          v105 = 95;
                        }

                        else
                        {
                          if ((v118 & v134) != 0)
                          {
                            LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x180;
                            goto LABEL_232;
                          }

                          if ((v118 & v133) != 0)
                          {
                            v105 = 97;
                          }

                          else if ((v118 & v132) != 0)
                          {
                            v105 = 98;
                          }

                          else if (v90)
                          {
                            v105 = 99;
                          }

                          else if ((v119 & v139) != 0)
                          {
                            v105 = 100;
                          }

                          else if ((v119 & v138) != 0)
                          {
                            v105 = 101;
                          }

                          else if ((v119 & v137) != 0)
                          {
                            v105 = 102;
                          }

                          else if ((v119 & v136) != 0)
                          {
                            v105 = 103;
                          }

                          else if ((v119 & v135) != 0)
                          {
                            v105 = 104;
                          }

                          else if ((v119 & v134) != 0)
                          {
                            v105 = 105;
                          }

                          else if ((v119 & v133) != 0)
                          {
                            v105 = 106;
                          }

                          else if ((v119 & v132) != 0)
                          {
                            v105 = 107;
                          }

                          else if (v91)
                          {
                            v105 = 108;
                          }

                          else if ((v120 & v139) != 0)
                          {
                            v105 = 109;
                          }

                          else if ((v120 & v138) != 0)
                          {
                            v105 = 110;
                          }

                          else if ((v120 & v137) != 0)
                          {
                            v105 = 111;
                          }

                          else
                          {
                            if ((v120 & v136) != 0)
                            {
                              LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1C0;
                              goto LABEL_232;
                            }

                            if ((v120 & v135) != 0)
                            {
                              v105 = 113;
                            }

                            else if ((v120 & v134) != 0)
                            {
                              v105 = 114;
                            }

                            else if ((v120 & v133) != 0)
                            {
                              v105 = 115;
                            }

                            else if ((v120 & v132) != 0)
                            {
                              v105 = 116;
                            }

                            else if (v92)
                            {
                              v105 = 117;
                            }

                            else if ((v121 & v139) != 0)
                            {
                              v105 = 118;
                            }

                            else if ((v121 & v138) != 0)
                            {
                              v105 = 119;
                            }

                            else
                            {
                              if ((v121 & v137) != 0)
                              {
                                LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1E0;
                                goto LABEL_232;
                              }

                              if ((v121 & v136) != 0)
                              {
                                v105 = 121;
                              }

                              else if ((v121 & v135) != 0)
                              {
                                v105 = 122;
                              }

                              else if ((v121 & v134) != 0)
                              {
                                v105 = 123;
                              }

                              else
                              {
                                if ((v121 & v133) != 0)
                                {
                                  LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1F0;
                                  goto LABEL_232;
                                }

                                if ((v121 & v132) != 0)
                                {
                                  v105 = 125;
                                }

                                else
                                {
                                  if (v93)
                                  {
                                    LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1F8;
                                    goto LABEL_232;
                                  }

                                  if ((v122 & v139) != 0)
                                  {
                                    LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x1FC;
                                    goto LABEL_232;
                                  }

                                  if ((v122 & v138) != 0)
                                  {
                                    LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x200;
                                    goto LABEL_232;
                                  }

                                  if ((v122 & v137) != 0)
                                  {
                                    v105 = -127;
                                  }

                                  else if ((v122 & v136) != 0)
                                  {
                                    v105 = -126;
                                  }

                                  else if ((v122 & v135) != 0)
                                  {
                                    v105 = -125;
                                  }

                                  else if ((v122 & v134) != 0)
                                  {
                                    v105 = -124;
                                  }

                                  else if ((v122 & v133) != 0)
                                  {
                                    v105 = -123;
                                  }

                                  else if ((v122 & v132) != 0)
                                  {
                                    v105 = -122;
                                  }

                                  else if (v94)
                                  {
                                    v105 = -121;
                                  }

                                  else if ((v123 & v139) != 0)
                                  {
                                    v105 = -120;
                                  }

                                  else if ((v123 & v138) != 0)
                                  {
                                    v105 = -119;
                                  }

                                  else if ((v123 & v137) != 0)
                                  {
                                    v105 = -118;
                                  }

                                  else if ((v123 & v136) != 0)
                                  {
                                    v105 = -117;
                                  }

                                  else
                                  {
                                    if ((v123 & v135) == 0)
                                    {
                                      if ((v123 & v134) != 0)
                                      {
                                        v107 = -115;
                                      }

                                      else if ((v123 & v133) != 0)
                                      {
                                        v107 = -114;
                                      }

                                      else if ((v123 & v132) != 0)
                                      {
                                        v107 = -113;
                                      }

                                      else if (v95)
                                      {
                                        v107 = -112;
                                      }

                                      else if ((v124 & v139) != 0)
                                      {
                                        v107 = -111;
                                      }

                                      else if ((v124 & v138) != 0)
                                      {
                                        v107 = -110;
                                      }

                                      else if ((v124 & v137) != 0)
                                      {
                                        v107 = -109;
                                      }

                                      else if ((v124 & v136) != 0)
                                      {
                                        v107 = -108;
                                      }

                                      else if ((v124 & v135) != 0)
                                      {
                                        v107 = -107;
                                      }

                                      else if ((v124 & v134) != 0)
                                      {
                                        v107 = -106;
                                      }

                                      else if ((v124 & v133) != 0)
                                      {
                                        v107 = -105;
                                      }

                                      else if ((v124 & v132) != 0)
                                      {
                                        v107 = -104;
                                      }

                                      else if (v96)
                                      {
                                        v107 = -103;
                                      }

                                      else if ((v126 & v139) != 0)
                                      {
                                        v107 = -102;
                                      }

                                      else if ((v126 & v138) != 0)
                                      {
                                        v107 = -101;
                                      }

                                      else if ((v126 & v137) != 0)
                                      {
                                        v107 = -100;
                                      }

                                      else if ((v126 & v136) != 0)
                                      {
                                        v107 = -99;
                                      }

                                      else if ((v126 & v135) != 0)
                                      {
                                        v107 = -98;
                                      }

                                      else if ((v126 & v134) != 0)
                                      {
                                        v107 = -97;
                                      }

                                      else if ((v126 & v133) != 0)
                                      {
                                        v107 = -96;
                                      }

                                      else if ((v126 & v132) != 0)
                                      {
                                        v107 = -95;
                                      }

                                      else if (v97)
                                      {
                                        v107 = -94;
                                      }

                                      else if ((v73 & v139) != 0)
                                      {
                                        v107 = -93;
                                      }

                                      else if ((v73 & v138) != 0)
                                      {
                                        v107 = -92;
                                      }

                                      else if ((v73 & v137) != 0)
                                      {
                                        v107 = -91;
                                      }

                                      else if ((v73 & v136) != 0)
                                      {
                                        v107 = -90;
                                      }

                                      else if ((v73 & v135) != 0)
                                      {
                                        v107 = -89;
                                      }

                                      else if ((v73 & v134) != 0)
                                      {
                                        v107 = -88;
                                      }

                                      else if ((v73 & v133) != 0)
                                      {
                                        v107 = -87;
                                      }

                                      else if ((v73 & v132) != 0)
                                      {
                                        v107 = -86;
                                      }

                                      else if (v125)
                                      {
                                        v107 = -85;
                                      }

                                      else if ((v127 & v139) != 0)
                                      {
                                        v107 = -84;
                                      }

                                      else if ((v127 & v138) != 0)
                                      {
                                        v107 = -83;
                                      }

                                      else if ((v127 & v137) != 0)
                                      {
                                        v107 = -82;
                                      }

                                      else if ((v127 & v136) != 0)
                                      {
                                        v107 = -81;
                                      }

                                      else if ((v127 & v135) != 0)
                                      {
                                        v107 = -80;
                                      }

                                      else if ((v127 & v134) != 0)
                                      {
                                        v107 = -79;
                                      }

                                      else if ((v127 & v133) != 0)
                                      {
                                        v107 = -78;
                                      }

                                      else if ((v127 & v132) != 0)
                                      {
                                        v107 = -77;
                                      }

                                      else if (v75)
                                      {
                                        v107 = -76;
                                      }

                                      else if ((v128 & v139) != 0)
                                      {
                                        v107 = -75;
                                      }

                                      else if ((v128 & v138) != 0)
                                      {
                                        v107 = -74;
                                      }

                                      else if ((v128 & v137) != 0)
                                      {
                                        v107 = -73;
                                      }

                                      else if ((v128 & v136) != 0)
                                      {
                                        v107 = -72;
                                      }

                                      else if ((v128 & v135) != 0)
                                      {
                                        v107 = -71;
                                      }

                                      else if ((v128 & v134) != 0)
                                      {
                                        v107 = -70;
                                      }

                                      else if ((v128 & v133) != 0)
                                      {
                                        v107 = -69;
                                      }

                                      else if ((v128 & v132) != 0)
                                      {
                                        v107 = -68;
                                      }

                                      else if (v98)
                                      {
                                        v107 = -67;
                                      }

                                      else if ((v129 & v139) != 0)
                                      {
                                        v107 = -66;
                                      }

                                      else if ((v129 & v138) != 0)
                                      {
                                        v107 = -65;
                                      }

                                      else
                                      {
                                        if ((v129 & v137) != 0)
                                        {
                                          LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x300;
                                          goto LABEL_232;
                                        }

                                        if ((v129 & v136) != 0)
                                        {
                                          v107 = -63;
                                        }

                                        else if ((v129 & v135) != 0)
                                        {
                                          v107 = -62;
                                        }

                                        else if ((v129 & v134) != 0)
                                        {
                                          v107 = -61;
                                        }

                                        else if ((v129 & v133) != 0)
                                        {
                                          v107 = -60;
                                        }

                                        else if ((v129 & v132) != 0)
                                        {
                                          v107 = -59;
                                        }

                                        else if (v130)
                                        {
                                          v107 = -58;
                                        }

                                        else if ((v108 & v139) != 0)
                                        {
                                          v107 = -57;
                                        }

                                        else if ((v108 & v138) != 0)
                                        {
                                          v107 = -56;
                                        }

                                        else if ((v108 & v137) != 0)
                                        {
                                          v107 = -55;
                                        }

                                        else if ((v108 & v136) != 0)
                                        {
                                          v107 = -54;
                                        }

                                        else if ((v108 & v135) != 0)
                                        {
                                          v107 = -53;
                                        }

                                        else if ((v108 & v134) != 0)
                                        {
                                          v107 = -52;
                                        }

                                        else if ((v108 & v133) != 0)
                                        {
                                          v107 = -51;
                                        }

                                        else if ((v108 & v132) != 0)
                                        {
                                          v107 = -50;
                                        }

                                        else if (v150)
                                        {
                                          v107 = -49;
                                        }

                                        else if ((v78 & v139) != 0)
                                        {
                                          v107 = -48;
                                        }

                                        else if ((v78 & v138) != 0)
                                        {
                                          v107 = -47;
                                        }

                                        else if ((v78 & v137) != 0)
                                        {
                                          v107 = -46;
                                        }

                                        else if ((v78 & v136) != 0)
                                        {
                                          v107 = -45;
                                        }

                                        else if ((v78 & v135) != 0)
                                        {
                                          v107 = -44;
                                        }

                                        else if ((v78 & v134) != 0)
                                        {
                                          v107 = -43;
                                        }

                                        else if ((v78 & v133) != 0)
                                        {
                                          v107 = -42;
                                        }

                                        else if ((v78 & v132) != 0)
                                        {
                                          v107 = -41;
                                        }

                                        else if (v79)
                                        {
                                          v107 = -40;
                                        }

                                        else if ((v101 & v139) != 0)
                                        {
                                          v107 = -39;
                                        }

                                        else if ((v101 & v138) != 0)
                                        {
                                          v107 = -38;
                                        }

                                        else if ((v101 & v137) != 0)
                                        {
                                          v107 = -37;
                                        }

                                        else if ((v101 & v136) != 0)
                                        {
                                          v107 = -36;
                                        }

                                        else if ((v101 & v135) != 0)
                                        {
                                          v107 = -35;
                                        }

                                        else if ((v101 & v134) != 0)
                                        {
                                          v107 = -34;
                                        }

                                        else if ((v101 & v133) != 0)
                                        {
                                          v107 = -33;
                                        }

                                        else
                                        {
                                          if ((v101 & v132) != 0)
                                          {
                                            LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x380;
                                            goto LABEL_232;
                                          }

                                          if (v157)
                                          {
                                            v107 = -31;
                                          }

                                          else if ((v80 & v139) != 0)
                                          {
                                            v107 = -30;
                                          }

                                          else if ((v80 & v138) != 0)
                                          {
                                            v107 = -29;
                                          }

                                          else if ((v80 & v137) != 0)
                                          {
                                            v107 = -28;
                                          }

                                          else if ((v80 & v136) != 0)
                                          {
                                            v107 = -27;
                                          }

                                          else if ((v80 & v135) != 0)
                                          {
                                            v107 = -26;
                                          }

                                          else if ((v80 & v134) != 0)
                                          {
                                            v107 = -25;
                                          }

                                          else if ((v80 & v133) != 0)
                                          {
                                            v107 = -24;
                                          }

                                          else if ((v80 & v132) != 0)
                                          {
                                            v107 = -23;
                                          }

                                          else if (v131)
                                          {
                                            v107 = -22;
                                          }

                                          else if ((v109 & v139) != 0)
                                          {
                                            v107 = -21;
                                          }

                                          else if ((v109 & v138) != 0)
                                          {
                                            v107 = -20;
                                          }

                                          else if ((v109 & v137) != 0)
                                          {
                                            v107 = -19;
                                          }

                                          else if ((v109 & v136) != 0)
                                          {
                                            v107 = -18;
                                          }

                                          else if ((v109 & v135) != 0)
                                          {
                                            v107 = -17;
                                          }

                                          else
                                          {
                                            if ((v109 & v134) != 0)
                                            {
                                              LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | 0x3C0;
                                              goto LABEL_232;
                                            }

                                            if ((v109 & v133) != 0)
                                            {
                                              v107 = -15;
                                            }

                                            else
                                            {
                                              if ((v109 & v132) == 0)
                                              {
                                                goto LABEL_232;
                                              }

                                              v107 = -14;
                                            }
                                          }
                                        }
                                      }

                                      LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | (4 * v107);
                                      goto LABEL_232;
                                    }

                                    v105 = -116;
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
              }
            }
          }
        }

        LOWORD(v77) = (v104 << 10) & 0x8000 | (((v104 >> 4) & 1) << 14) | (((v104 >> 3) & 1) << 13) | (((v104 >> 2) & 1) << 12) | (((v104 >> 1) & 1) << 11) | ((v104 & 1) << 10) | (4 * v105);
      }
    }
  }

  else
  {
    LOWORD(v77) = 0;
  }

LABEL_232:
  *a2 = v103;
  *(a2 + 1) = v160;
  result = a2 + 6;
  *(a2 + 2) = v77;
  return result;
}

unsigned __int8 *AGXIotoInstruction_CNDRET_0::emit(AGXIotoInstruction_CNDRET_0 *this, unsigned __int8 *a2)
{
  v2 = 5;
  if (*(this + 7) == 32 && *(this + 8) == 3)
  {
    v9 = *(this + 3);
    v8 = *(this + 4);
    v10 = *(this + 5);
    v11 = *(this + 1);
    v12 = *(this + 2);
    v13 = *(this + 24);
    v14 = ((((v13 >> 1) & 1) << 11) | ((v13 & 1) << 10)) & 0xFFFFCFFF | (((v13 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v13 >> 3) & 1) << 13) | (v13 >> 4) & 0xFFFFBFFF | (((v13 >> 4) & 1) << 14);
    LODWORD(v2) = (((*(this + 36) & 1) << 11) | (16 * (*this & 1))) & 0x7FFF | (v13 >> 5 << 15) | 5;
    v6 = v13 & 0x40 | 4;
    v15 = v14 | 7;
    v16 = v14 & 0xFF98 | 7;
    if (v11 == 2)
    {
      v15 = v16;
    }

    if (v11 == 1)
    {
      v15 = v16 | 0x40;
    }

    if (v11)
    {
      v5 = v15;
    }

    else
    {
      v5 = v16 | 0x20;
    }

    if (v12 == 1)
    {
      v4 = 64;
    }

    else
    {
      v4 = 32 * (v12 == 0);
    }

    v17 = v2 | 0x40;
    if (!v9)
    {
      LODWORD(v2) = v2 | 0x20;
    }

    if (v9 == 1)
    {
      LODWORD(v2) = v17;
    }

    v18 = v2 & 0xFFFFFE7F | 0x80;
    v19 = v2 & 0xFFFFFE7F | 0x100;
    if (v8 == 2)
    {
      LODWORD(v2) = v2 & 0xFFFFFE7F;
    }

    if (v8 == 1)
    {
      LODWORD(v2) = v19;
    }

    if (v8)
    {
      v2 = v2;
    }

    else
    {
      v2 = v18;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        v2 = v2 & 0xFFFFF9FF | 0x400;
      }

      else if (v10 == 2)
      {
        v2 = v2 & 0xFFFFF9FF;
      }
    }

    else
    {
      v2 = v2 & 0xFFFFF9FF | 0x200;
    }
  }

  else
  {
    v4 = 0;
    v5 = 7;
    v6 = 4;
  }

  *a2 = (v2 << 48) | (v4 << 32) | (v6 << 16) | v5;
  return a2 + 8;
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken94ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCBF374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void ProgramKey<(_AGCStreamToken)94,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void sub_29CCBFA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, dispatch_object_t object)
{
  dispatch_release(object);
  if (__p)
  {
    operator delete(__p);
  }

  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE49createTGOptimizationDriverShaderAndBufferIfNeededEP19AGXG18PFamilyDevice_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  ProgramKey<(_AGCStreamToken)40,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 48, &v13, &v12);
  v8 = a4;
  v9 = v6;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCBFCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken40ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken40ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken40ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken40ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken40ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCBFFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c77_ZTS10ProgramKeyIL15_AGCStreamToken40ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[6] = &unk_2A23F57E8;
  v1 = a1[8];
  if (v1)
  {
    a1[9] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_48c77_ZTS10ProgramKeyIL15_AGCStreamToken40ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_2A23F57E8;
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

void ProgramKey<(_AGCStreamToken)40,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void AGX::HAL300::ComputeProgramVariant::~ComputeProgramVariant(AGX::HAL300::ComputeProgramVariant *this)
{
  AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ComputeProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

uint64_t std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](uint64_t a1)
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

void *AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState(void *result)
{
  v1 = result[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[1];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

void *std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 64))
    {
      if (*(v1 + 24))
      {
        v3 = *(v1 + 32);
        v4 = *(v3 + 16);
        v5[0] = MEMORY[0x29EDCA5F8];
        v5[1] = 3221225472;
        v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v5[3] = &__block_descriptor_48_e5_v8__0l;
        v5[4] = v3;
        v5[5] = v1;
        dispatch_sync(v4, v5);
        *(v1 + 25) = 0u;
        *v1 = 0u;
        *(v1 + 16) = 0u;
      }
    }

    MEMORY[0x29ED520D0](v1, 0x1070C4082A93E96);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<AGX::FunctionTableSet<AGXG18PFamilyUserIntersectionFunctionTable>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<AGX::FunctionTableSet<AGXG18PFamilyUserIntersectionFunctionTable>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F9530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

void std::__shared_ptr_emplace<AGX::FunctionTableSet<AGXG18PFamilyVisibleFunctionTable>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<AGX::FunctionTableSet<AGXG18PFamilyVisibleFunctionTable>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F94F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken28ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCC08B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c77_ZTS10ProgramKeyIL15_AGCStreamToken28ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[5] = &unk_2A23F5848;
  v1 = a1[7];
  if (v1)
  {
    a1[8] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_40c77_ZTS10ProgramKeyIL15_AGCStreamToken28ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 40) = &unk_2A23F5848;
  *(result + 48) = *(a2 + 48);
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  v3 = *(a2 + 56);
  v2 = *(a2 + 64);
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

void ProgramKey<(_AGCStreamToken)28,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void AGX::HAL300::ClearVisibilityVertexProgramVariant::~ClearVisibilityVertexProgramVariant(AGX::HAL300::ClearVisibilityVertexProgramVariant *this)
{
  *this = &unk_2A23F77F0;
  if (*(this + 399))
  {
    v2 = *(this + 400);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 3168;
    dispatch_sync(v3, v4);
    *(this + 3193) = 0u;
    *(this + 199) = 0u;
    *(this + 198) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F77F0;
  if (*(this + 399))
  {
    v2 = *(this + 400);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 3168;
    dispatch_sync(v3, v4);
    *(this + 3193) = 0u;
    *(this + 199) = 0u;
    *(this + 198) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

void sub_29CCC1348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_s *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  os_unfair_lock_unlock(a12 + 4166);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Device(uint64_t a1)
{
  v271 = *MEMORY[0x29EDCA608];
  v2 = AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance;
  if (AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance)
  {
    if (*(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance + 32))
    {
      v3 = *(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance + 40);
      v4 = *(v3 + 16);
      v267 = MEMORY[0x29EDCA5F8];
      __p.__r_.__value_.__r.__words[0] = 3221225472;
      __p.__r_.__value_.__l.__size_ = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      __p.__r_.__value_.__r.__words[2] = &__block_descriptor_48_e5_v8__0l;
      v269 = v3;
      v270 = AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance + 8;
      dispatch_sync(v4, &v267);
      *(v2 + 33) = 0u;
      *(v2 + 24) = 0u;
      *(v2 + 8) = 0u;
    }

    MEMORY[0x29ED520D0](v2, 0x10F0C406697BCF3);
  }

  AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance = 0;
  if (*(a1 + 17240))
  {
    os_unfair_lock_lock((a1 + 17236));
    dispatch_source_cancel(*(a1 + 17248));
    dispatch_release(*(a1 + 17248));
    dispatch_source_cancel(*(a1 + 17256));
    dispatch_release(*(a1 + 17256));
    dispatch_source_cancel(*(a1 + 17272));
    dispatch_release(*(a1 + 17272));
    dispatch_source_cancel(*(a1 + 17280));
    dispatch_release(*(a1 + 17280));
    dispatch_sync(*(a1 + 17240), &__block_literal_global);
    os_unfair_lock_unlock((a1 + 17236));
    dispatch_release(*(a1 + 17240));
  }

  os_unfair_lock_lock((a1 + 16880));
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 848);
    if (v6)
    {
      v7 = *(v5 + 856) << 32;
      do
      {
        while (1)
        {
          v8 = *(v6 + 24 * v7 + 144);
          if (v8)
          {
            dispatch_release(v8);
          }

          v9 = (v7 + 1);
          if (v9 >= HIDWORD(v7))
          {
            break;
          }

          v7 = v7 & 0xFFFFFFFF00000000 | v9;
        }

        v6 = *(v6 + 224);
        v7 = 0x400000000;
      }

      while (v6);
    }

    v10 = *(v5 + 896);
    v11 = *(v5 + 904);
    if (v10 == v11)
    {
      v12 = v5 + 616;
      if (!v10)
      {
LABEL_18:
        v13 = *(v5 + 848);
        if (v13 != v12)
        {
          do
          {
            v14 = *(v13 + 224);
            MEMORY[0x29ED520D0]();
            *(v5 + 848) = v14;
            v13 = v14;
          }

          while (v14 != v12);
        }

        v15 = *(v5 + 552);
        if (v15 != v5)
        {
          do
          {
            v16 = *(v15 + 544);
            v17 = VectorMap<AGX::BackgroundObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BackgroundObjectProgramVariant>,4u>::Chunk::~Chunk(v15);
            MEMORY[0x29ED520D0](v17, 0x10B0C40C7763737);
            *(v5 + 552) = v16;
            v15 = v16;
          }

          while (v16 != v5);
        }

        v18 = *(v5 + 568);
        if (v18)
        {
          dispatch_release(v18);
        }

        v19 = *(v5 + 576);
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        v20 = VectorMap<AGX::BackgroundObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BackgroundObjectProgramVariant>,4u>::Chunk::~Chunk(v5);
        MEMORY[0x29ED520D0](v20, 0x10B0C40CA889937);
        goto LABEL_27;
      }
    }

    else
    {
      do
      {
        v137 = *v10;
        if (*v10)
        {
          if ((*v137 & 1) == 0)
          {
            MEMORY[0x29ED520C0](*(v137 + 8), 8);
          }

          MEMORY[0x29ED520D0](v137, 0x1000C406FAD1563);
        }

        ++v10;
      }

      while (v10 != v11);
      v10 = *(v5 + 896);
      v12 = v5 + 616;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    *(v5 + 904) = v10;
    operator delete(v10);
    goto LABEL_18;
  }

LABEL_27:
  *a1 = 0;
  os_unfair_lock_unlock((a1 + 16880));
  os_unfair_lock_lock((a1 + 16884));
  v21 = *(a1 + 8);
  if (!v21)
  {
    goto LABEL_47;
  }

  v22 = *(v21 + 1008);
  if (v22)
  {
    v23 = *(v21 + 1016) << 32;
    do
    {
      while (1)
      {
        v24 = *(v22 + 24 * v23 + 144);
        if (v24)
        {
          dispatch_release(v24);
        }

        v25 = (v23 + 1);
        if (v25 >= HIDWORD(v23))
        {
          break;
        }

        v23 = v23 & 0xFFFFFFFF00000000 | v25;
      }

      v22 = *(v22 + 224);
      v23 = 0x400000000;
    }

    while (v22);
  }

  v26 = *(v21 + 1056);
  v27 = *(v21 + 1064);
  if (v26 != v27)
  {
    do
    {
      v138 = *v26;
      if (*v26)
      {
        if ((*v138 & 1) == 0)
        {
          MEMORY[0x29ED520C0](*(v138 + 8), 8);
        }

        MEMORY[0x29ED520D0](v138, 0x1000C406FAD1563);
      }

      ++v26;
    }

    while (v26 != v27);
    v26 = *(v21 + 1056);
    v28 = v21 + 776;
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v28 = v21 + 776;
  if (v26)
  {
LABEL_37:
    *(v21 + 1064) = v26;
    operator delete(v26);
  }

LABEL_38:
  v29 = *(v21 + 1008);
  if (v29 != v28)
  {
    do
    {
      v30 = *(v29 + 224);
      MEMORY[0x29ED520D0]();
      *(v21 + 1008) = v30;
      v29 = v30;
    }

    while (v30 != v28);
  }

  v31 = *(v21 + 712);
  if (v31 != v21)
  {
    do
    {
      v32 = *(v31 + 704);
      v33 = VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::EndOfTileProgramVariant>,4u>::Chunk::~Chunk(v31);
      MEMORY[0x29ED520D0](v33, 0x10B0C40B243011CLL);
      *(v21 + 712) = v32;
      v31 = v32;
    }

    while (v32 != v21);
  }

  v34 = *(v21 + 728);
  if (v34)
  {
    dispatch_release(v34);
  }

  v35 = *(v21 + 736);
  if (v35)
  {
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v35 + 680));
    v36 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v35);
    MEMORY[0x29ED520D0](v36, 0x10F2C406B241CDELL);
  }

  v37 = VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::EndOfTileProgramVariant>,4u>::Chunk::~Chunk(v21);
  MEMORY[0x29ED520D0](v37, 0x10B0C40BA6EC213);
LABEL_47:
  *(a1 + 8) = 0;
  os_unfair_lock_unlock((a1 + 16884));
  v38 = *(a1 + 64);
  if (!v38)
  {
    goto LABEL_63;
  }

  v39 = *(v38 + 1008);
  if (v39)
  {
    v40 = *(v38 + 1016) << 32;
    do
    {
      while (1)
      {
        v41 = *(v39 + 24 * v40 + 144);
        if (v41)
        {
          dispatch_release(v41);
        }

        v42 = (v40 + 1);
        if (v42 >= HIDWORD(v40))
        {
          break;
        }

        v40 = v40 & 0xFFFFFFFF00000000 | v42;
      }

      v39 = *(v39 + 224);
      v40 = 0x400000000;
    }

    while (v39);
  }

  v43 = *(v38 + 1056);
  v44 = *(v38 + 1064);
  if (v43 != v44)
  {
    do
    {
      v139 = *v43;
      if (*v43)
      {
        if ((*v139 & 1) == 0)
        {
          MEMORY[0x29ED520C0](*(v139 + 8), 8);
        }

        MEMORY[0x29ED520D0](v139, 0x1000C406FAD1563);
      }

      ++v43;
    }

    while (v43 != v44);
    v43 = *(v38 + 1056);
    v45 = v38 + 776;
    if (!v43)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v45 = v38 + 776;
  if (v43)
  {
LABEL_57:
    *(v38 + 1064) = v43;
    operator delete(v43);
  }

LABEL_58:
  v46 = *(v38 + 1008);
  if (v46 != v45)
  {
    do
    {
      v47 = *(v46 + 224);
      MEMORY[0x29ED520D0]();
      *(v38 + 1008) = v47;
      v46 = v47;
    }

    while (v47 != v45);
  }

  v48 = *(v38 + 712);
  if (v48 != v38)
  {
    do
    {
      v49 = v48[88];
      v50 = VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>,4u>::Chunk::~Chunk(v48);
      MEMORY[0x29ED520D0](v50, 0x10B0C40B243011CLL);
      *(v38 + 712) = v49;
      v48 = v49;
    }

    while (v49 != v38);
  }

  AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>::~ProgramVariantEntry(v38 + 728);
  v51 = VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>,4u>::Chunk::~Chunk(v38);
  MEMORY[0x29ED520D0](v51, 0x10B0C40BA6EC213);
LABEL_63:
  *(a1 + 64) = 0;
  v52 = *(a1 + 16);
  if (!v52)
  {
    goto LABEL_83;
  }

  v53 = *(v52 + 848);
  if (v53)
  {
    v54 = *(v52 + 856) << 32;
    do
    {
      while (1)
      {
        v55 = *(v53 + 24 * v54 + 144);
        if (v55)
        {
          dispatch_release(v55);
        }

        v56 = (v54 + 1);
        if (v56 >= HIDWORD(v54))
        {
          break;
        }

        v54 = v54 & 0xFFFFFFFF00000000 | v56;
      }

      v53 = *(v53 + 224);
      v54 = 0x400000000;
    }

    while (v53);
  }

  v57 = *(v52 + 896);
  v58 = *(v52 + 904);
  if (v57 != v58)
  {
    do
    {
      v140 = *v57;
      if (*v57)
      {
        if ((*v140 & 1) == 0)
        {
          MEMORY[0x29ED520C0](*(v140 + 8), 8);
        }

        MEMORY[0x29ED520D0](v140, 0x1000C406FAD1563);
      }

      ++v57;
    }

    while (v57 != v58);
    v57 = *(v52 + 896);
    v59 = v52 + 616;
    if (!v57)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v59 = v52 + 616;
  if (v57)
  {
LABEL_73:
    *(v52 + 904) = v57;
    operator delete(v57);
  }

LABEL_74:
  v60 = *(v52 + 848);
  if (v60 != v59)
  {
    do
    {
      v61 = *(v60 + 224);
      MEMORY[0x29ED520D0]();
      *(v52 + 848) = v61;
      v60 = v61;
    }

    while (v61 != v59);
  }

  v62 = *(v52 + 552);
  if (v62 != v52)
  {
    do
    {
      v63 = *(v62 + 544);
      v64 = VectorMap<AGX::BlitFragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitFragmentProgramVariant>,4u>::Chunk::~Chunk(v62);
      MEMORY[0x29ED520D0](v64, 0x10B0C40C7763737);
      *(v52 + 552) = v63;
      v62 = v63;
    }

    while (v63 != v52);
  }

  v65 = *(v52 + 568);
  if (v65)
  {
    dispatch_release(v65);
  }

  v66 = *(v52 + 576);
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = VectorMap<AGX::BlitFragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitFragmentProgramVariant>,4u>::Chunk::~Chunk(v52);
  MEMORY[0x29ED520D0](v67, 0x10B0C40CA889937);
LABEL_83:
  *(a1 + 16) = 0;
  v68 = *(a1 + 24);
  if (!v68)
  {
    goto LABEL_103;
  }

  v69 = *(v68 + 688);
  if (v69)
  {
    v70 = *(v68 + 696) << 32;
    do
    {
      while (1)
      {
        v71 = *(v69 + 24 * v70 + 144);
        if (v71)
        {
          dispatch_release(v71);
        }

        v72 = (v70 + 1);
        if (v72 >= HIDWORD(v70))
        {
          break;
        }

        v70 = v70 & 0xFFFFFFFF00000000 | v72;
      }

      v69 = *(v69 + 224);
      v70 = 0x400000000;
    }

    while (v69);
  }

  v73 = *(v68 + 736);
  v74 = *(v68 + 744);
  if (v73 != v74)
  {
    do
    {
      v141 = *v73;
      if (*v73)
      {
        if ((*v141 & 1) == 0)
        {
          MEMORY[0x29ED520C0](*(v141 + 8), 8);
        }

        MEMORY[0x29ED520D0](v141, 0x1000C406FAD1563);
      }

      ++v73;
    }

    while (v73 != v74);
    v73 = *(v68 + 736);
    v75 = v68 + 456;
    if (!v73)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v75 = v68 + 456;
  if (v73)
  {
LABEL_93:
    *(v68 + 744) = v73;
    operator delete(v73);
  }

LABEL_94:
  v76 = *(v68 + 688);
  if (v76 != v75)
  {
    do
    {
      v77 = *(v76 + 224);
      MEMORY[0x29ED520D0]();
      *(v68 + 688) = v77;
      v76 = v77;
    }

    while (v77 != v75);
  }

  v78 = *(v68 + 392);
  if (v78 != v68)
  {
    do
    {
      v79 = *(v78 + 384);
      v80 = VectorMap<AGX::BlitVertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitVertexProgramVariant>,4u>::Chunk::~Chunk(v78);
      MEMORY[0x29ED520D0](v80, 0x10B0C407B6AF669);
      *(v68 + 392) = v79;
      v78 = v79;
    }

    while (v79 != v68);
  }

  v81 = *(v68 + 408);
  if (v81)
  {
    dispatch_release(v81);
  }

  v82 = *(v68 + 416);
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  v83 = VectorMap<AGX::BlitVertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitVertexProgramVariant>,4u>::Chunk::~Chunk(v68);
  MEMORY[0x29ED520D0](v83, 0x10B0C4060244BE9);
LABEL_103:
  *(a1 + 24) = 0;
  v84 = *(a1 + 32);
  if (!v84)
  {
    goto LABEL_123;
  }

  v85 = *(v84 + 848);
  if (v85)
  {
    v86 = *(v84 + 856) << 32;
    do
    {
      while (1)
      {
        v87 = *(v85 + 24 * v86 + 144);
        if (v87)
        {
          dispatch_release(v87);
        }

        v88 = (v86 + 1);
        if (v88 >= HIDWORD(v86))
        {
          break;
        }

        v86 = v86 & 0xFFFFFFFF00000000 | v88;
      }

      v85 = *(v85 + 224);
      v86 = 0x400000000;
    }

    while (v85);
  }

  v89 = *(v84 + 896);
  v90 = *(v84 + 904);
  if (v89 != v90)
  {
    do
    {
      v142 = *v89;
      if (*v89)
      {
        if ((*v142 & 1) == 0)
        {
          MEMORY[0x29ED520C0](*(v142 + 8), 8);
        }

        MEMORY[0x29ED520D0](v142, 0x1000C406FAD1563);
      }

      ++v89;
    }

    while (v89 != v90);
    v89 = *(v84 + 896);
    v91 = v84 + 616;
    if (!v89)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v91 = v84 + 616;
  if (v89)
  {
LABEL_113:
    *(v84 + 904) = v89;
    operator delete(v89);
  }

LABEL_114:
  v92 = *(v84 + 848);
  if (v92 != v91)
  {
    do
    {
      v93 = *(v92 + 224);
      MEMORY[0x29ED520D0]();
      *(v84 + 848) = v93;
      v92 = v93;
    }

    while (v93 != v91);
  }

  v94 = *(v84 + 552);
  if (v94 != v84)
  {
    do
    {
      v95 = *(v94 + 544);
      v96 = VectorMap<AGX::BlitComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitComputeProgramVariant>,4u>::Chunk::~Chunk(v94);
      MEMORY[0x29ED520D0](v96, 0x10B0C40CE4C6A1ELL);
      *(v84 + 552) = v95;
      v94 = v95;
    }

    while (v95 != v84);
  }

  v97 = *(v84 + 568);
  if (v97)
  {
    dispatch_release(v97);
  }

  v98 = *(v84 + 576);
  if (v98)
  {
    (*(*v98 + 8))(v98);
  }

  v99 = VectorMap<AGX::BlitComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitComputeProgramVariant>,4u>::Chunk::~Chunk(v84);
  MEMORY[0x29ED520D0](v99, 0x10B0C40CF02F46ALL);
LABEL_123:
  *(a1 + 32) = 0;
  v100 = *(a1 + 6160);
  if (!v100)
  {
    goto LABEL_143;
  }

  v101 = *(v100 + 688);
  if (v101)
  {
    v102 = *(v100 + 696) << 32;
    do
    {
      while (1)
      {
        v103 = *(v101 + 24 * v102 + 144);
        if (v103)
        {
          dispatch_release(v103);
        }

        v104 = (v102 + 1);
        if (v104 >= HIDWORD(v102))
        {
          break;
        }

        v102 = v102 & 0xFFFFFFFF00000000 | v104;
      }

      v101 = *(v101 + 224);
      v102 = 0x400000000;
    }

    while (v101);
  }

  v105 = *(v100 + 736);
  v106 = *(v100 + 744);
  if (v105 != v106)
  {
    do
    {
      v143 = *v105;
      if (*v105)
      {
        if ((*v143 & 1) == 0)
        {
          MEMORY[0x29ED520C0](*(v143 + 8), 8);
        }

        MEMORY[0x29ED520D0](v143, 0x1000C406FAD1563);
      }

      ++v105;
    }

    while (v105 != v106);
    v105 = *(v100 + 736);
    v107 = v100 + 456;
    if (!v105)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  v107 = v100 + 456;
  if (v105)
  {
LABEL_133:
    *(v100 + 744) = v105;
    operator delete(v105);
  }

LABEL_134:
  v108 = *(v100 + 688);
  if (v108 != v107)
  {
    do
    {
      v109 = *(v108 + 224);
      MEMORY[0x29ED520D0]();
      *(v100 + 688) = v109;
      v108 = v109;
    }

    while (v109 != v107);
  }

  v110 = *(v100 + 392);
  if (v110 != v100)
  {
    do
    {
      v111 = *(v110 + 384);
      v112 = VectorMap<AGX::ComputeControlFlowPredicateProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::Chunk::~Chunk(v110);
      MEMORY[0x29ED520D0](v112, 0x10B0C407B6AF669);
      *(v100 + 392) = v111;
      v110 = v111;
    }

    while (v111 != v100);
  }

  v113 = *(v100 + 408);
  if (v113)
  {
    dispatch_release(v113);
  }

  v114 = *(v100 + 416);
  if (v114)
  {
    (*(*v114 + 8))(v114);
  }

  v115 = VectorMap<AGX::ComputeControlFlowPredicateProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::Chunk::~Chunk(v100);
  MEMORY[0x29ED520D0](v115, 0x10B0C4060244BE9);
LABEL_143:
  *(a1 + 6160) = 0;
  v116 = *(a1 + 7000);
  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  v117 = a1 + 11020;
  *(a1 + 7000) = 0;
  v118 = *(a1 + 6168);
  if (v118)
  {
    v119 = *(v118 + 688);
    if (v119)
    {
      v120 = *(v118 + 696) << 32;
      do
      {
        while (1)
        {
          v121 = *(v119 + 24 * v120 + 144);
          if (v121)
          {
            dispatch_release(v121);
          }

          v122 = (v120 + 1);
          if (v122 >= HIDWORD(v120))
          {
            break;
          }

          v120 = v120 & 0xFFFFFFFF00000000 | v122;
        }

        v119 = *(v119 + 224);
        v120 = 0x400000000;
      }

      while (v119);
    }

    v123 = *(v118 + 736);
    v124 = *(v118 + 744);
    if (v123 == v124)
    {
      v125 = v118 + 456;
      if (!v123)
      {
LABEL_156:
        v126 = *(v118 + 688);
        if (v126 != v125)
        {
          do
          {
            v127 = *(v126 + 224);
            MEMORY[0x29ED520D0]();
            *(v118 + 688) = v127;
            v126 = v127;
          }

          while (v127 != v125);
        }

        v128 = *(v118 + 392);
        if (v128 != v118)
        {
          do
          {
            v129 = *(v128 + 384);
            v130 = VectorMap<AGX::TileDispatchVertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileDispatchVertexProgramVariant>,4u>::Chunk::~Chunk(v128);
            MEMORY[0x29ED520D0](v130, 0x10B0C407B6AF669);
            *(v118 + 392) = v129;
            v128 = v129;
          }

          while (v129 != v118);
        }

        v131 = *(v118 + 408);
        if (v131)
        {
          dispatch_release(v131);
        }

        v132 = *(v118 + 416);
        if (v132)
        {
          (*(*v132 + 8))(v132);
        }

        v133 = VectorMap<AGX::TileDispatchVertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileDispatchVertexProgramVariant>,4u>::Chunk::~Chunk(v118);
        MEMORY[0x29ED520D0](v133, 0x10B0C4060244BE9);
        goto LABEL_165;
      }
    }

    else
    {
      do
      {
        v144 = *v123;
        if (*v123)
        {
          if ((*v144 & 1) == 0)
          {
            MEMORY[0x29ED520C0](*(v144 + 8), 8);
          }

          MEMORY[0x29ED520D0](v144, 0x1000C406FAD1563);
        }

        ++v123;
      }

      while (v123 != v124);
      v123 = *(v118 + 736);
      v125 = v118 + 456;
      if (!v123)
      {
        goto LABEL_156;
      }
    }

    *(v118 + 744) = v123;
    operator delete(v123);
    goto LABEL_156;
  }

LABEL_165:
  *(a1 + 6168) = 0;
  for (i = 88; i != 3032; i += 8)
  {
    v135 = atomic_load((a1 + i));
    if (v135)
    {
      v136 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v135);
      MEMORY[0x29ED520D0](v136, 0x10B0C40D786B1EALL);
    }

    atomic_store(0, (a1 + i));
  }

  v145 = atomic_load((a1 + 5984));
  if (v145)
  {
    v146 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v145);
    MEMORY[0x29ED520D0](v146, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 5984));
  v147 = atomic_load((a1 + 5992));
  if (v147)
  {
    v148 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v147);
    MEMORY[0x29ED520D0](v148, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 5992));
  v149 = atomic_load((a1 + 6000));
  if (v149)
  {
    v150 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v149);
    MEMORY[0x29ED520D0](v150, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6000));
  v151 = atomic_load((a1 + 6008));
  if (v151)
  {
    v152 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v151);
    MEMORY[0x29ED520D0](v152, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6008));
  v153 = atomic_load((a1 + 6016));
  if (v153)
  {
    v154 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v153);
    MEMORY[0x29ED520D0](v154, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6016));
  v155 = atomic_load((a1 + 6024));
  if (v155)
  {
    v156 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v155);
    MEMORY[0x29ED520D0](v156, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6024));
  v157 = atomic_load((a1 + 6032));
  if (v157)
  {
    v158 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v157);
    MEMORY[0x29ED520D0](v158, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6032));
  v159 = atomic_load((a1 + 6040));
  if (v159)
  {
    v160 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v159);
    MEMORY[0x29ED520D0](v160, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6040));
  v161 = atomic_load((a1 + 6048));
  if (v161)
  {
    v162 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v161);
    MEMORY[0x29ED520D0](v162, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6048));
  v163 = atomic_load((a1 + 6056));
  if (v163)
  {
    v164 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v163);
    MEMORY[0x29ED520D0](v164, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6056));
  v165 = atomic_load((a1 + 6064));
  if (v165)
  {
    v166 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v165);
    MEMORY[0x29ED520D0](v166, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6064));
  v167 = atomic_load((a1 + 6072));
  if (v167)
  {
    v168 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v167);
    MEMORY[0x29ED520D0](v168, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6072));
  v169 = atomic_load((a1 + 6080));
  if (v169)
  {
    v170 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v169);
    MEMORY[0x29ED520D0](v170, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6080));
  v171 = atomic_load((a1 + 6088));
  if (v171)
  {
    v172 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v171);
    MEMORY[0x29ED520D0](v172, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6088));
  v173 = atomic_load((a1 + 6096));
  if (v173)
  {
    v174 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v173);
    MEMORY[0x29ED520D0](v174, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6096));
  v175 = atomic_load((a1 + 6104));
  if (v175)
  {
    v176 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v175);
    MEMORY[0x29ED520D0](v176, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6104));
  v177 = atomic_load((a1 + 6112));
  if (v177)
  {
    v178 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v177);
    MEMORY[0x29ED520D0](v178, 0x10B0C40D786B1EALL);
  }

  atomic_store(0, (a1 + 6112));
  v179 = *(a1 + 6224);
  if (v179)
  {
    MEMORY[0x29ED520D0](v179, 0xC400A2AC0F1);
  }

  *(a1 + 6224) = 0;
  v180 = *(a1 + 7168);
  if (v180)
  {
    dispatch_release(*(v180 + 16));
    MEMORY[0x29ED520D0](v180, 0x10A0C407ABD5903);
  }

  *(a1 + 7168) = 0;
  v181 = *(a1 + 7176);
  if (v181)
  {
    dispatch_release(*(v181 + 16));
    MEMORY[0x29ED520D0](v181, 0x10A0C406E3BE4FBLL);
  }

  *(a1 + 7176) = 0;
  v182 = *(a1 + 7160);
  if (v182)
  {

    *v182 = 0;
    v182[1] = 0;

    v182[2] = 0;
    MEMORY[0x29ED520D0](v182, 0xA0C400770BE9BLL);
  }

  *(a1 + 7160) = 0;
  v183 = *(a1 + 7224);
  if (v183)
  {
    AGX::InternalSparseQueue::~InternalSparseQueue(v183);
    MEMORY[0x29ED520D0]();
  }

  *(a1 + 7224) = 0;
  v184 = *(a1 + 7184);
  if (v184)
  {

    *(v184 + 8) = 0;
    MEMORY[0x29ED520D0](v184, 0x10A0C40EB7D2DA3);
  }

  *(a1 + 7184) = 0;
  v185 = *(a1 + 7192);
  if (v185)
  {

    *(v185 + 8) = 0;
    MEMORY[0x29ED520D0](v185, 0x10A0C40EB7D2DA3);
  }

  *(a1 + 7192) = 0;
  v186 = *(a1 + 7200);
  if (v186)
  {

    *(v186 + 8) = 0;
    MEMORY[0x29ED520D0](v186, 0x10A0C40EB7D2DA3);
  }

  *(a1 + 7200) = 0;
  v187 = *(a1 + 7208);
  if (v187)
  {

    *(v187 + 8) = 0;
    MEMORY[0x29ED520D0](v187, 0x10A0C4023802154);
  }

  *(a1 + 7208) = 0;
  if (*(a1 + 6241) == 1)
  {
    v188 = *(a1 + 16816);
    if (v188)
    {

      *(v188 + 8) = 0;
      MEMORY[0x29ED520D0](v188, 0x10A0C40DDEE28D5);
    }

    *(a1 + 16816) = 0;
  }

  if (*(a1 + 6242) == 1)
  {
    v189 = *(a1 + 16856);
    if (v189)
    {

      *(v189 + 8) = 0;
      MEMORY[0x29ED520D0](v189, 0x10A0C40DDEE28D5);
    }

    *(a1 + 16856) = 0;
  }

  v190 = *(a1 + 16560);
  if (v190)
  {
    MEMORY[0x29ED520D0](v190, 0x1020C40C86DA914);
  }

  *(a1 + 16560) = 0;
  v191 = *(a1 + 16568);
  if (v191)
  {
    MEMORY[0x29ED520D0](v191, 0x1020C40C86DA914);
  }

  *(a1 + 16568) = 0;
  v192 = *(a1 + 16576);
  if (v192)
  {
    MEMORY[0x29ED520D0](v192, 0x1020C40C86DA914);
  }

  *(a1 + 16576) = 0;
  v193 = *(a1 + 6288);
  if (v193)
  {
    if (*(v193 + 184) && (*(v193 + 200) & 1) == 0)
    {
      v194 = *(v193 + 192);
      os_unfair_lock_lock(v194 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v193 + 192) + 696, *(v193 + 184), *(v193 + 184) + *(v193 + 188) - 1);
      os_unfair_lock_unlock(v194 + 188);
    }

    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v193 + 24));
    v195 = *(v193 + 8);
    if (v195 && !atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v195->__on_zero_shared)(v195);
      std::__shared_weak_count::__release_weak(v195);
    }

    MEMORY[0x29ED520D0](v193, 0x1060C40709CB7C0);
  }

  *(a1 + 6288) = 0;
  v196 = *(a1 + 6280);
  if (v196)
  {
    MEMORY[0x29ED520D0](v196, 0x80C40B8603338);
  }

  *(a1 + 6280) = 0;
  v197 = *(a1 + 17136);
  if (v197)
  {
    v198 = *(v197 + 8);
    if (!v198 || ((*(*v198 + 8))(v198), (v197 = *(a1 + 17136)) != 0))
    {
      v199 = *(v197 + 3704);
      if (v199)
      {
        v200 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v199);
        MEMORY[0x29ED520D0](v200, 0x10F0C4099BF1763);
      }

      v201 = AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~RenderPipeline(v197);
      MEMORY[0x29ED520D0](v201, 0x10F0C402F755586);
    }
  }

  *(a1 + 17136) = 0;
  os_unfair_lock_lock((a1 + 16928));
  v202 = *(a1 + 6176);
  if (v202 != (a1 + 6184))
  {
    do
    {
      v207 = v202[1];
      v208 = v202;
      if (v207)
      {
        do
        {
          v209 = v207;
          v207 = *v207;
        }

        while (v207);
      }

      else
      {
        do
        {
          v209 = v208[2];
          v210 = *v209 == v208;
          v208 = v209;
        }

        while (!v210);
      }

      if (*(a1 + 6176) == v202)
      {
        *(a1 + 6176) = v209;
      }

      --*(a1 + 6192);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 6184), v202);
      v202[4] = &unk_2A23F9480;
      v211 = v202[6];
      if (v211)
      {
        v202[7] = v211;
        operator delete(v211);
      }

      operator delete(v202);
      v202 = v209;
    }

    while (v209 != (a1 + 6184));
  }

  v203 = *(a1 + 6216);
  if (v203)
  {
    v204 = AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~DynamicLibrary(v203);
    MEMORY[0x29ED520D0](v204, 0x10F2C4037025141);
    *(a1 + 6216) = 0;
  }

  v205 = *(a1 + 16872);
  if (v205)
  {
    IONotificationPortDestroy(v205);
  }

  v206 = *(a1 + 16672);
  if (v206 != (a1 + 16680))
  {
    do
    {
      v267 = v206[4];
      if (*(v206 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v206[5], v206[6]);
      }

      else
      {
        __p = *(v206 + 5);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v212 = v206[1];
        if (v212)
        {
          do
          {
LABEL_316:
            v213 = v212;
            v212 = *v212;
          }

          while (v212);
          goto LABEL_308;
        }
      }

      else
      {
        v212 = v206[1];
        if (v212)
        {
          goto LABEL_316;
        }
      }

      do
      {
        v213 = v206[2];
        v210 = *v213 == v206;
        v206 = v213;
      }

      while (!v210);
LABEL_308:
      v206 = v213;
    }

    while (v213 != (a1 + 16680));
  }

  v214 = atomic_load((a1 + 17080));
  v215 = atomic_load((a1 + 17088));

  {
    v216 = *(a1 + 17192);
    v267 = MEMORY[0x29EDCA5F8];
    __p.__r_.__value_.__r.__words[0] = 0x40000000;
    __p.__r_.__value_.__l.__size_ = ___ZN3AGX35agxaSignpostDeregisterForEnablementEU13block_pointerFvbE_block_invoke;
    __p.__r_.__value_.__r.__words[2] = &unk_29F344230;
    v269 = v216;
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    LOWORD(v267) = 0;
    _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: signpost enablement notifications queue is uninitialized", &v267, 2u);
  }

  _Block_release(*(a1 + 17192));
  v217 = *(a1 + 17200);
  if (v217)
  {
    v218 = AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(v217);
    MEMORY[0x29ED520D0](v218, 0x10B0C40D786B1EALL);
  }

  *(a1 + 17200) = 0;

  *(a1 + 16472) = 0;
  v219 = *(a1 + 16552);
  if (v219)
  {
    dispatch_release(v219);
  }

  v220 = *(a1 + 16544);
  if (v220)
  {
    dispatch_release(v220);
  }

  os_unfair_lock_unlock((a1 + 16928));
  v221 = *(a1 + 17168);
  if (v221)
  {
    do
    {
      v222 = *v221;
      operator delete(v221);
      v221 = v222;
    }

    while (v222);
  }

  v223 = *(a1 + 17152);
  *(a1 + 17152) = 0;
  if (v223)
  {
    operator delete(v223);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 16840));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 16800));
  std::__tree<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>>>::destroy(*(a1 + 16768));
  v224 = *(a1 + 16728);
  if (v224)
  {
    *(a1 + 16736) = v224;
    operator delete(v224);
  }

  std::__tree<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>>>::destroy(*(a1 + 16712));
  std::__tree<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::__map_value_compare<AGX::DepthStencilStateDescriptorGen2,std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::less<AGX::DepthStencilStateDescriptorGen2>,true>,std::allocator<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>>>::destroy(*(a1 + 16680));
  os_unfair_lock_lock((a1 + 16440));
  for (j = *(a1 + 16432); j; j = *(a1 + 16432))
  {
    *(a1 + 16432) = *j;
    free(j);
  }

  os_unfair_lock_unlock((a1 + 16440));
  os_unfair_lock_lock((a1 + 16348));
  v226 = *(a1 + 16344);
  if (v226)
  {
    if (v226 <= 7)
    {
      v227 = 64 - 8 * v226;
    }

    else
    {
      v227 = 0;
    }

    v228 = &v267;
    bzero(&v267 + v226, v227);
    memcpy(&v267, (a1 + 16352), 8 * v226);
    *(a1 + 16344) = 0;
    os_unfair_lock_unlock((a1 + 16348));
    do
    {
      v229 = *v228++;
      free(v229);
      --v226;
    }

    while (v226);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 16348));
  }

  os_unfair_lock_lock((a1 + 16268));
  v230 = *(a1 + 16264);
  if (v230)
  {
    if (v230 <= 7)
    {
      v231 = 64 - 8 * v230;
    }

    else
    {
      v231 = 0;
    }

    v232 = &v267;
    bzero(&v267 + v230, v231);
    memcpy(&v267, (a1 + 16272), 8 * v230);
    *(a1 + 16264) = 0;
    os_unfair_lock_unlock((a1 + 16268));
    do
    {
      v233 = *v232++;
      free(v233);
      --v230;
    }

    while (v230);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 16268));
  }

  os_unfair_lock_lock((a1 + 16188));
  v234 = *(a1 + 16184);
  if (v234)
  {
    if (v234 <= 7)
    {
      v235 = 64 - 8 * v234;
    }

    else
    {
      v235 = 0;
    }

    v236 = &v267;
    bzero(&v267 + v234, v235);
    memcpy(&v267, (a1 + 16192), 8 * v234);
    *(a1 + 16184) = 0;
    os_unfair_lock_unlock((a1 + 16188));
    do
    {
      v237 = *v236++;
      free(v237);
      --v234;
    }

    while (v234);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 16188));
  }

  os_unfair_lock_lock((a1 + 16108));
  v238 = *(a1 + 16104);
  if (v238)
  {
    if (v238 <= 7)
    {
      v239 = 64 - 8 * v238;
    }

    else
    {
      v239 = 0;
    }

    v240 = &v267;
    bzero(&v267 + v238, v239);
    memcpy(&v267, (a1 + 16112), 8 * v238);
    *(a1 + 16104) = 0;
    os_unfair_lock_unlock((a1 + 16108));
    do
    {
      v241 = *v240++;
      free(v241);
      --v238;
    }

    while (v238);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 16108));
  }

  os_unfair_lock_lock((a1 + 16028));
  v242 = *(a1 + 16024);
  if (v242)
  {
    if (v242 <= 7)
    {
      v243 = 64 - 8 * v242;
    }

    else
    {
      v243 = 0;
    }

    v244 = &v267;
    bzero(&v267 + v242, v243);
    memcpy(&v267, (a1 + 16032), 8 * v242);
    *(a1 + 16024) = 0;
    os_unfair_lock_unlock((a1 + 16028));
    do
    {
      v245 = *v244++;
      free(v245);
      --v242;
    }

    while (v242);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 16028));
  }

  os_unfair_lock_lock((a1 + 15884));
  v246 = *(a1 + 15880);
  if (v246)
  {
    if (v246 <= 0xF)
    {
      v247 = 128 - 8 * v246;
    }

    else
    {
      v247 = 0;
    }

    v248 = &v267;
    bzero(&v267 + v246, v247);
    memcpy(&v267, (a1 + 15888), 8 * v246);
    *(a1 + 15880) = 0;
    os_unfair_lock_unlock((a1 + 15884));
    do
    {
      v249 = *v248++;
      free(v249);
      --v246;
    }

    while (v246);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 15884));
  }

  os_unfair_lock_lock((a1 + 15804));
  v250 = *(a1 + 15800);
  if (v250)
  {
    if (v250 <= 7)
    {
      v251 = 64 - 8 * v250;
    }

    else
    {
      v251 = 0;
    }

    v252 = &v267;
    bzero(&v267 + v250, v251);
    memcpy(&v267, (a1 + 15808), 8 * v250);
    *(a1 + 15800) = 0;
    os_unfair_lock_unlock((a1 + 15804));
    do
    {
      v253 = *v252++;
      free(v253);
      --v250;
    }

    while (v250);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 15804));
  }

  os_unfair_lock_lock((a1 + 15724));
  v254 = *(a1 + 15720);
  if (v254)
  {
    if (v254 <= 7)
    {
      v255 = 64 - 8 * v254;
    }

    else
    {
      v255 = 0;
    }

    v256 = &v267;
    bzero(&v267 + v254, v255);
    memcpy(&v267, (a1 + 15728), 8 * v254);
    *(a1 + 15720) = 0;
    os_unfair_lock_unlock((a1 + 15724));
    do
    {
      v257 = *v256++;
      free(v257);
      --v254;
    }

    while (v254);
    v258 = *(a1 + 15688);
    if (!v258)
    {
      goto LABEL_419;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 15724));
    v258 = *(a1 + 15688);
    if (!v258)
    {
      goto LABEL_419;
    }
  }

  *(a1 + 15696) = v258;
  operator delete(v258);
LABEL_419:
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(a1 + 14912);
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::~Mempool(a1 + 14136);
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(a1 + 13360);
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(a1 + 12584);
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(a1 + 11808);
  v259 = 696;
  do
  {
    if ((*v117 & 1) == 0)
    {
      *v117 = 1;

      free(*(v117 + 12));
    }

    v117 += 24;
    v259 -= 24;
  }

  while (v259);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 11768));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 11744));
  AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::~Mempool(a1 + 10208);
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::~Mempool(a1 + 9408);
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::~Mempool(a1 + 8608);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::~Mempool(a1 + 7240);
  v260 = *(a1 + 7152);
  if (v260)
  {
    MEMORY[0x29ED520D0](v260, 0x1020C40E08AD718);
  }

  v261 = *(a1 + 6848);
  v267 = MEMORY[0x29EDCA5F8];
  __p.__r_.__value_.__r.__words[0] = 3221225472;
  __p.__r_.__value_.__l.__size_ = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  __p.__r_.__value_.__r.__words[2] = &__block_descriptor_40_e5_v8__0l;
  v269 = a1 + 6832;
  dispatch_sync(v261, &v267);
  dispatch_release(*(a1 + 6848));
  v262 = *(a1 + 6680);
  v267 = MEMORY[0x29EDCA5F8];
  __p.__r_.__value_.__r.__words[0] = 3221225472;
  __p.__r_.__value_.__l.__size_ = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  __p.__r_.__value_.__r.__words[2] = &__block_descriptor_40_e5_v8__0l;
  v269 = a1 + 6664;
  dispatch_sync(v262, &v267);
  dispatch_release(*(a1 + 6680));
  v263 = *(a1 + 6512);
  v267 = MEMORY[0x29EDCA5F8];
  __p.__r_.__value_.__r.__words[0] = 3221225472;
  __p.__r_.__value_.__l.__size_ = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  __p.__r_.__value_.__r.__words[2] = &__block_descriptor_40_e5_v8__0l;
  v269 = a1 + 6496;
  dispatch_sync(v263, &v267);
  dispatch_release(*(a1 + 6512));
  v264 = *(a1 + 6344);
  v267 = MEMORY[0x29EDCA5F8];
  __p.__r_.__value_.__r.__words[0] = 3221225472;
  __p.__r_.__value_.__l.__size_ = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  __p.__r_.__value_.__r.__words[2] = &__block_descriptor_40_e5_v8__0l;
  v269 = a1 + 6328;
  dispatch_sync(v264, &v267);
  dispatch_release(*(a1 + 6344));
  v265 = *(a1 + 6296);
  *(a1 + 6296) = 0;
  if (v265)
  {
    MEMORY[0x29ED520D0](v265, 0xC400A2AC0F1);
  }

  std::__tree<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::__map_value_compare<AGX::StatelessPSODynamicLibraryKey,std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::less<AGX::StatelessPSODynamicLibraryKey>,true>,std::allocator<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>>>::destroy(*(a1 + 6184));
  return a1;
}

void sub_29CCC3BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  os_unfair_lock_unlock((v15 + v18));
  std::unordered_map<unsigned long,AGX::FunctionCompiledEventInfo>::~unordered_map[abi:nn200100](v15 + 17152);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v15 + 16840));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v15 + 16800));
  std::__tree<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>>>::destroy(*(v15 + 16768));
  v20 = *(v15 + 16728);
  if (v20)
  {
    *(v15 + 16736) = v20;
    operator delete(v20);
  }

  std::__tree<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>>>::destroy(*(v15 + 16712));
  std::__tree<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::__map_value_compare<AGX::DepthStencilStateDescriptorGen2,std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::less<AGX::DepthStencilStateDescriptorGen2>,true>,std::allocator<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>>>::destroy(*(v15 + 16680));
  AGX::FenceGroupPool::~FenceGroupPool((v15 + 16424));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 16336));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 16256));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 16176));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 16096));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 16016));
  AGX::PooledAllocator<16u>::~PooledAllocator((v15 + 15872));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 15792));
  AGX::PooledAllocator<8u>::~PooledAllocator((v15 + 15712));
  v21 = *(v15 + 15688);
  if (v21)
  {
    *(v15 + 15696) = v21;
    operator delete(v21);
  }

  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(v15 + 14912);
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::~Mempool(v15 + 14136);
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(v15 + 13360);
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(v15 + 12584);
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(v15 + 11808);
  AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::~Mempool(v15 + 11008);
  AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::~Mempool(v15 + 10208);
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::~Mempool(v15 + 9408);
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::~Mempool(v15 + 8608);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::~Mempool(v15 + 7240);
  v22 = *(v15 + 7152);
  if (v22)
  {
    MEMORY[0x29ED520D0](v22, 0x1020C40E08AD718);
  }

  AGX::HAL300::HeapSet::~HeapSet((v15 + 6328));
  v23 = *(v15 + 6296);
  *(v15 + 6296) = 0;
  if (v23)
  {
    MEMORY[0x29ED520D0](v23, v16);
  }

  std::__tree<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::__map_value_compare<AGX::StatelessPSODynamicLibraryKey,std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::less<AGX::StatelessPSODynamicLibraryKey>,true>,std::allocator<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>>>::destroy(*v17);
  _Unwind_Resume(a1);
}

uint64_t ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(uint64_t a1)
{
  if (*(a1 + 16) + *(a1 + 8) && *(a1 + 3240))
  {
    v2 = *(a1 + 3248);
    v3 = *(v2 + 16);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = v2;
    v11[5] = a1 + 3216;
    dispatch_sync(v3, v11);
    *(a1 + 3241) = 0u;
    *(a1 + 3232) = 0u;
    *(a1 + 3216) = 0u;
  }

  v4 = *(a1 + 3176);
  if (v4)
  {
    v5 = *(a1 + 3184);
    v6 = *(a1 + 3176);
    if (v5 != v4)
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v6 = *(a1 + 3176);
    }

    *(a1 + 3184) = v4;
    operator delete(v6);
  }

  v7 = *(a1 + 3152);
  if (v7)
  {
    v8 = *(a1 + 3160);
    v9 = *(a1 + 3152);
    if (v8 != v7)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        v8 -= 32;
      }

      while (v8 != v7);
      v9 = *(a1 + 3152);
    }

    *(a1 + 3160) = v7;
    operator delete(v9);
  }

  return a1;
}

void std::__tree<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>>>::destroy(*a1);
    std::__tree<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,std::weak_ptr<AGX::HAL300::Sampler>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 14);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>>>::destroy(*a1);
    std::__tree<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::__map_value_compare<AGX::SamplerDescriptor,std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>,std::less<AGX::SamplerDescriptor>,true>,std::allocator<std::__value_type<AGX::SamplerDescriptor,AGX::WeakObjCPtr<AGXG18PFamilySampler>>>>::destroy(*(a1 + 1));
    objc_destroyWeak(a1 + 13);
    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::__map_value_compare<AGX::DepthStencilStateDescriptorGen2,std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::less<AGX::DepthStencilStateDescriptorGen2>,true>,std::allocator<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::__map_value_compare<AGX::DepthStencilStateDescriptorGen2,std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::less<AGX::DepthStencilStateDescriptorGen2>,true>,std::allocator<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>>>::destroy(*a1);
    std::__tree<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::__map_value_compare<AGX::DepthStencilStateDescriptorGen2,std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>,std::less<AGX::DepthStencilStateDescriptorGen2>,true>,std::allocator<std::__value_type<AGX::DepthStencilStateDescriptorGen2,AGXG18PFamilyDepthStencilState *>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::__map_value_compare<AGX::StatelessPSODynamicLibraryKey,std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::less<AGX::StatelessPSODynamicLibraryKey>,true>,std::allocator<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::__map_value_compare<AGX::StatelessPSODynamicLibraryKey,std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::less<AGX::StatelessPSODynamicLibraryKey>,true>,std::allocator<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::__map_value_compare<AGX::StatelessPSODynamicLibraryKey,std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,std::less<AGX::StatelessPSODynamicLibraryKey>,true>,std::allocator<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>>>::destroy(a1[1]);
    a1[4] = &unk_2A23F9480;
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t std::unordered_map<unsigned long,AGX::FunctionCompiledEventInfo>::~unordered_map[abi:nn200100](uint64_t a1)
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

void AGX::HAL300::HeapSet::~HeapSet(AGX::HAL300::HeapSet *this)
{
  v2 = (this + 504);
  v3 = *(this + 65);
  block = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  v10 = &__block_descriptor_40_e5_v8__0l;
  v11 = v2;
  dispatch_sync(v3, &block);
  dispatch_release(*(this + 65));
  v4 = *(this + 44);
  block = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  v10 = &__block_descriptor_40_e5_v8__0l;
  v11 = (this + 336);
  dispatch_sync(v4, &block);
  dispatch_release(*(this + 44));
  v5 = *(this + 23);
  block = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  v10 = &__block_descriptor_40_e5_v8__0l;
  v11 = (this + 168);
  dispatch_sync(v5, &block);
  dispatch_release(*(this + 23));
  v6 = *(this + 2);
  block = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = ___ZN3AGX4HeapILb1EED2Ev_block_invoke;
  v10 = &__block_descriptor_40_e5_v8__0l;
  v11 = this;
  dispatch_sync(v6, &block);
  dispatch_release(*(this + 2));
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    v3 = *(a1 + 408);
    v4 = *(a1 + 400);
    if (v3 != v2)
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

      while (v3 != v2);
      v4 = *(a1 + 400);
    }

    *(a1 + 408) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 376);
  if (v6)
  {
    v7 = *(a1 + 384);
    v8 = *(a1 + 376);
    if (v7 != v6)
    {
      do
      {
        if (*(v7 - 9) < 0)
        {
          operator delete(*(v7 - 32));
        }

        v7 -= 40;
      }

      while (v7 != v6);
      v8 = *(a1 + 376);
    }

    *(a1 + 384) = v6;
    operator delete(v8);
  }

  v9 = *(a1 + 352);
  if (v9)
  {
    v10 = *(a1 + 360);
    v11 = *(a1 + 352);
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 9) < 0)
        {
          operator delete(*(v10 - 32));
        }

        v10 -= 40;
      }

      while (v10 != v9);
      v11 = *(a1 + 352);
    }

    *(a1 + 360) = v9;
    operator delete(v11);
  }

  v12 = *(a1 + 328);
  if (v12)
  {
    do
    {
      v19 = *v12;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v19;
    }

    while (v19);
  }

  v13 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 288);
  if (v14)
  {
    do
    {
      v20 = *v14;
      if (*(v14 + 39) < 0)
      {
        operator delete(v14[2]);
      }

      operator delete(v14);
      v14 = v20;
    }

    while (v20);
  }

  v15 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 248);
  if (v16)
  {
    do
    {
      v21 = *v16;
      if (*(v16 + 39) < 0)
      {
        operator delete(v16[2]);
      }

      operator delete(v16);
      v16 = v21;
    }

    while (v21);
  }

  v17 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void ProgramKey<(_AGCStreamToken)98,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void **std::vector<ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::VITFragmentInfo,std::allocator<ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::VITFragmentInfo>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 4;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}