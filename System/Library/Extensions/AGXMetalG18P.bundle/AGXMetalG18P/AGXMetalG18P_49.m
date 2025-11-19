void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_5(uint64_t a1)
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

AGX::Impl::FragmentProgramKey *__copy_helper_block_e8_64c30_ZTSN3AGX18FragmentProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::Impl::FragmentProgramKey::FragmentProgramKey((a1 + 64), (a2 + 64));
  *(a1 + 64) = &unk_2A23F7CF0;
  *(a1 + 344) = *(a2 + 344);
  return result;
}

uint64_t AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::consolidate(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 41) != 1)
  {
    return a2;
  }

  if (!*(a2 + 8))
  {
    v7 = a4;
    v9 = *(a2 + 24);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 24) = v9;
    *(a2 + 24) = 0;
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_release(v8);
    goto LABEL_9;
  }

  os_unfair_lock_lock(a1 + 422);
  v7 = VectorMap<AGX::FragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::FragmentProgramVariant>,4u>::operator[](a1, a3);
  if (*v7)
  {
    os_unfair_lock_unlock(a1 + 422);
    dispatch_group_wait(*v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = dispatch_group_create();
  *v7 = v12;
  dispatch_group_enter(v12);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = v13;

  *(v7 + 24) = [v14 copy];
  if (*(v7 + 8))
  {

    *(v7 + 32) = 0;
  }

  else
  {
    *(v7 + 40) = 0;
  }

  dispatch_group_leave(*v7);
  *(a2 + 8) = 0;
  os_unfair_lock_unlock(a1 + 422);
  v8 = *a2;
  if (*a2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = *(a2 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MEMORY[0x29ED520D0](a2, 0x10A0C405D73F519);
  return v7;
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::FragmentProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t VectorMap<AGX::FragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::FragmentProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1360);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 1352);
    v7 = *(a2 + 280);
    v8 = v6;
    while (!AGX::Impl::FragmentProgramKey::operator==(a2, v8) || v7 != *(v8 + 280))
    {
      ++v5;
      v8 += 288;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v9 = v6 + 48 * v5;
  }

  else
  {
    v6 = *(a1 + 1352);
LABEL_8:
    v10 = *(v6 + 1344);
    if (v10)
    {
      v11 = *(a2 + 280);
      v12 = 1;
      while (1)
      {
        if (AGX::Impl::FragmentProgramKey::operator==(a2, v10) && v11 == v10[35])
        {
          v12 = 0;
          goto LABEL_29;
        }

        if (AGX::Impl::FragmentProgramKey::operator==(a2, (v10 + 36)) && v11 == v10[71])
        {
          goto LABEL_29;
        }

        if (AGX::Impl::FragmentProgramKey::operator==(a2, (v10 + 72)) && v11 == v10[107])
        {
          break;
        }

        if (AGX::Impl::FragmentProgramKey::operator==(a2, (v10 + 108)) && v11 == v10[143])
        {
          v12 = 3;
          goto LABEL_29;
        }

        v10 = v10[168];
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      v12 = 2;
LABEL_29:
      v9 = &v10[6 * v12];
    }

    else
    {
LABEL_20:
      if (v4 == 4)
      {
        operator new();
      }

      v13 = v6 + 288 * v4;
      *(v13 + 8) = *(a2 + 8);
      if (v13 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v13 + 40) = *(a2 + 40);
      v14 = *(a2 + 56);
      v15 = *(a2 + 72);
      v16 = *(a2 + 88);
      *(v13 + 104) = *(a2 + 104);
      *(v13 + 88) = v16;
      *(v13 + 72) = v15;
      *(v13 + 56) = v14;
      v17 = *(a2 + 112);
      v18 = *(a2 + 128);
      *(v13 + 144) = *(a2 + 144);
      *(v13 + 112) = v17;
      *(v13 + 128) = v18;
      std::string::operator=((v13 + 152), (a2 + 152));
      std::string::operator=((v13 + 176), (a2 + 176));
      std::string::operator=((v13 + 200), (a2 + 200));
      *(v13 + 224) = *(a2 + 224);
      if (v13 != a2)
      {
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v13 + 232), *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 5);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v13 + 256), *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 5);
      }

      *(v13 + 280) = *(a2 + 280);
      v19 = *(a1 + 1360);
      v9 = *(a1 + 1352) + 48 * v19;
      *(a1 + 1360) = v19 + 1;
    }
  }

  return v9 + 1152;
}

BOOL AGX::Impl::FragmentProgramKey::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48) ^ *(a1 + 48) | (*(a2 + 224) ^ *(a1 + 224)) & 1 | (*(a2 + 40) ^ *(a1 + 40)) | (*(a2 + 96) ^ *(a1 + 96)) | (*(a2 + 64) ^ *(a1 + 64)) | (*(a2 + 68) ^ *(a1 + 68)) | (*(a2 + 72) ^ *(a1 + 72)) | (*(a2 + 76) ^ *(a1 + 76)) | (*(a2 + 80) ^ *(a1 + 80)) | (*(a2 + 84) ^ *(a1 + 84)) | (*(a2 + 88) ^ *(a1 + 88)) | (*(a2 + 92) ^ *(a1 + 92));
  v5 = *(a2 + 100) ^ *(a1 + 100) | *(a2 + 108) ^ *(a1 + 108) | (*(a2 + 104) ^ *(a1 + 104));
  v6 = *(a2 + 56) ^ *(a1 + 56);
  v7 = *(a1 + 144);
  while (v7)
  {
    v8 = __clz(__rbit32(v7));
    v7 &= ~(1 << v8);
    if (*(a1 + 112 + 4 * v8) != *(a2 + 112 + 4 * v8))
    {
      return 0;
    }
  }

  v10 = *(a1 + 144) != *(a2 + 144);
  v11 = *(a1 + 223);
  if (v11 >= 0)
  {
    v12 = *(a1 + 223);
  }

  else
  {
    v12 = *(a1 + 208);
  }

  v13 = *(a2 + 223);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 208);
  }

  if (v12 == v13)
  {
    if (v11 >= 0)
    {
      v15 = (a1 + 200);
    }

    else
    {
      v15 = *(a1 + 200);
    }

    if (v14 >= 0)
    {
      v16 = (a2 + 200);
    }

    else
    {
      v16 = *(a2 + 200);
    }

    v17 = memcmp(v15, v16, v12) != 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(a1 + 240) != *(a1 + 232);
  v19 = *(a1 + 264) != *(a1 + 256);
  v20 = *(a1 + 175);
  if (v20 >= 0)
  {
    v21 = *(a1 + 175);
  }

  else
  {
    v21 = *(a1 + 160);
  }

  v22 = *(a2 + 175);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 160);
  }

  if (v21 != v22)
  {
    goto LABEL_45;
  }

  v24 = v20 >= 0 ? (a1 + 152) : *(a1 + 152);
  v25 = v23 >= 0 ? (a2 + 152) : *(a2 + 152);
  if (memcmp(v24, v25, v21))
  {
    goto LABEL_45;
  }

  v26 = *(a1 + 199);
  if (v26 >= 0)
  {
    v27 = *(a1 + 199);
  }

  else
  {
    v27 = *(a1 + 184);
  }

  v28 = *(a2 + 199);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(a2 + 184);
  }

  if (v27 == v28)
  {
    v32 = *(a1 + 176);
    v31 = (a1 + 176);
    v30 = v32;
    if (v26 >= 0)
    {
      v33 = v31;
    }

    else
    {
      v33 = v30;
    }

    v36 = *(a2 + 176);
    v35 = (a2 + 176);
    v34 = v36;
    if (v29 >= 0)
    {
      v37 = v35;
    }

    else
    {
      v37 = v34;
    }

    v38 = memcmp(v33, v37, v27) != 0;
  }

  else
  {
LABEL_45:
    v38 = 1;
  }

  return (v6 | v5 | v17 | v10 | (v18 || v19) | v38 | v4) == 0;
}

void AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a2 & 0x330003;
  if ((*&a2 & 0x330003) == 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 1688));
  v10 = *(a1 + 1648);
  v11 = *(a1 + 1656);
  v12 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v10, *(a1 + 1656), a4);
  if (!v12)
  {
    if (v11 == 4)
    {
      operator new();
    }

    v14 = &v10[4 * v11];
    v15 = *(a4 + 16);
    *v14 = *a4;
    v14[1] = v15;
    v16 = *(a1 + 1656);
    v17 = *(a1 + 1648) + 24 * v16;
    *(a1 + 1656) = v16 + 1;
    v12 = v17 + 128;
    v13 = *(v17 + 136);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v5 & ~v13) != 0)
    {
      if (a3)
      {
        v18 = v12;
        dispatch_retain(a3);
        v12 = v18;
      }

      if (*(v12 + 16))
      {
        v19 = v12;
        dispatch_release(*(v12 + 16));
        v12 = v19;
      }

      *(v12 + 8) = v5;
      *(v12 + 16) = a3;
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  *v12 = v13;
LABEL_15:

  os_unfair_lock_unlock((a1 + 1688));
}

void sub_29CC99480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::getFunctionId(void (***a1)(void, CC_SHA256_CTX *), unsigned __int8 *a2, AGX *a3)
{
  CC_SHA256_Init(&c);
  (**a1)(a1, &c);
  *len = 0;
  data = 0;
  if (a3 && AGX::GetSerializedVertexFormat(a3, &data, len, v6, v7))
  {
    v8 = data;
    CC_SHA256_Update(&c, data, len[0]);
    free(v8);
  }

  CC_SHA256_Final(a2, &c);
  return a2;
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CC9982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_18FragmentProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke(uint64_t a1, void *a2, int8x16_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v7 = a3[2];
  v20[0] = vextq_s8(a3[1], a3[1], 8uLL);
  v20[1] = v7;
  v21 = a3[3].i64[0];
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(&v25, v6, a2, v20, *(a1 + 112), a1 + 120);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  v9 = a3[3];
  *v24 = a3[2];
  *&v24[16] = v9;
  AGCDeserializedReply::AGCDeserializedReply(v20);
  if (!*&v24[8])
  {
    v10 = [*(a1 + 32) function];
    if (!AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(a2, [objc_msgSend(v10 "name")], v20))
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = [objc_msgSend(v10 "name")];
      AGCReplyArray::getDebugStringAvailableNames(buf, a2);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      fprintf(v11, "AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", "agxa_user_shader_factory_template.hpp", 182, "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke", v12, v13);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v16;
        v31 = 2080;
        v32 = v17;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v14 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&v24[8] = 2;
      *&v24[16] = @"Internal error during function compilation.";
    }
  }

  memset(buf, 0, 24);
  if (v27 == 1)
  {
    *buf = v25;
    *&buf[16] = v26;
    v26 = 0;
    v25 = 0uLL;
  }

  else
  {
    if (v27)
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      AGCDeserializedReply::~AGCDeserializedReply(v20);
      if (v27 == -1)
      {
        _Unwind_Resume(v18);
      }

      (off_2A23F59F0[v27])(v20, &v25);
      _Unwind_Resume(v18);
    }

    *&v24[8] = v25;
  }

  (*(*(a1 + 40) + 16))();
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v20);
  if (v27 != -1)
  {
    (off_2A23F59F0[v27])(v20, &v25);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_18FragmentProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CC99F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

AGX::Impl::FragmentProgramKey *__copy_helper_block_e8_80c30_ZTSN3AGX18FragmentProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::Impl::FragmentProgramKey::FragmentProgramKey((a1 + 80), (a2 + 80));
  *(a1 + 80) = &unk_2A23F7CF0;
  *(a1 + 360) = *(a2 + 360);
  return result;
}

void AGX::HAL300::FragmentProgramVariant::~FragmentProgramVariant(AGX::HAL300::FragmentProgramVariant *this)
{
  AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~FragmentProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

const char *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke()
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

uint64_t AGX::Program<AGX::HAL300::VertexProgramVariant,AGX::VertexProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(os_unfair_lock_s *a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5)
{
  *a3 = 0;
  if ((a4 & 0x400000004) != 0 || a5)
  {
    operator new();
  }

  v7 = a4;
  os_unfair_lock_lock(a1 + 342);
  v9 = VectorMap<AGX::VertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>,4u>::operator[](a1, a2);
  if (!*v9)
  {
    v11 = dispatch_group_create();
    *v9 = v11;
LABEL_10:
    dispatch_group_enter(v11);
    *a3 = 1;
    goto LABEL_13;
  }

  if (*(v9 + 40) == 1)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(v9 + 8) = 0;
    *(v9 + 16) = 0;

    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    v11 = *v9;
    goto LABEL_10;
  }

  if ((*&v7 & 0x330003) != 0)
  {
    dispatch_group_enter(*v9);
  }

LABEL_13:
  os_unfair_lock_unlock(a1 + 342);
  return v9;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27createVertexProgramAnalysisEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemPNS1_13VertexProgramEPU27objcproto16OS_dispatch_data8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v9 = a8;
  v11 = a9;
  if (**MEMORY[0x29EDC56B0])
  {
    v12 = *(*(a1 + 48) + 8);
    v13 = *(a1 + 56);
    v14 = a2 + 1104;
    if (*(a2 + 544))
    {
      v15 = *(a2 + 552) == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = 544;
    if (v15)
    {
      v16 = 1104;
    }

    else
    {
      v14 = a2 + 544;
    }

    v17 = *(a2 + v16);
    v18 = *(v14 + 8);
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19 || (v20 = *v17, v21 = v17 + v20, v22 = (v17 + v20 - *(v17 + v20)), *v22 < 9u))
    {
      v23 = a9;
    }

    else
    {
      v23 = a9;
      v24 = v22[4];
      if (v24)
      {
        v25 = &v21[v24];
        v26 = *&v21[v24];
        if (*&v21[v24 + v26])
        {
          v27 = 0;
          v28 = 0;
          v29 = v17 + v20 + v26 + v24 + 10;
          do
          {
            v30 = *(v29 - 6);
            v31 = v30 - *(v29 + v30 - 6);
            if (*(v29 + v31 - 6) >= 7u && (v32 = *(v29 + v31)) != 0)
            {
              v33 = *(v29 + v30 + v32 - 6);
            }

            else
            {
              v33 = 0;
            }

            if (getTimebaseInfo(void)::once != -1)
            {
              v38 = v28;
              v39 = v12;
              v37 = v13;
              dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
              v13 = v37;
              v28 = v38;
              v12 = v39;
            }

            v28 += v33 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0;
            ++v27;
            v29 += 4;
          }

          while (v27 < *&v25[v26]);
        }
      }
    }

    IOGPUDeviceTraceEvent();
    v11 = v23;
    v9 = a8;
  }

  if (!v9)
  {
    operator new();
  }

  v34 = *(a1 + 56);
  v35 = *(a1 + 64);
  *(v34 + 8) = *(*(*(a1 + 40) + 8) + 24);
  *(v34 + 16) = v9;

  *(v34 + 24) = [v11 copy];
  if (*(v34 + 8))
  {

    *(v34 + 32) = a7;
  }

  else
  {
    *(v34 + 40) = v35;
  }

  v36 = *v34;

  dispatch_group_leave(v36);
}

void sub_29CC9A85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::mutex::~mutex((v27 + 4328));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v27 + v29);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(v28);
  AGX::HAL300::VertexProgramVariantESLState::~VertexProgramVariantESLState((v27 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v27);
  MEMORY[0x29ED520D0](v27, 0x10F3C40AC35E047);
  _Unwind_Resume(a1);
}

void AGX::Compiler::compileProgram<AGX::VertexProgramKey,AGCDeserializedReply>(uint64_t a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 24);
  if (v10 && *(v10 + 120) == 1)
  {
    v11 = [objc_msgSend(a3 "binaryArchives")];
    v12 = 0x200000000000;
    if (!v11)
    {
      v12 = 1;
    }

    atomic_fetch_or(v10, v12);
    v13 = *(a1 + 24);
    v14 = [a3 destinationBinaryArchive];
    v15 = 0x400000000000;
    if (!v14)
    {
      v15 = 1;
    }

    atomic_fetch_or(v13, v15);
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

  v26 = 0;
  v27 = 0;
  ((*a2)[2])(a2, &v27, &v26);
  v16 = dispatch_data_create(v27, v26, 0, 0);
  [a3 setDriverKeyData:v16];
  if ([a3 airScript])
  {
    v17 = [a3 airScript];
    object = 0uLL;
    v29[0] = 0;
    *&object = dispatch_data_create_map(v17, &object + 1, v29);
    ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, v30, (*(&object + 1) + **(&object + 1)));
    dispatch_release(object);
    object = v30[0];
    *v29 = v30[1];
    [a3 setVendorPluginFunctionId:&object];
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v25[3] = &unk_29F3422D0;
  v25[4] = a3;
  v25[5] = a5;
  if ([a3 function])
  {
    v18 = mach_absolute_time();
    v19 = *a1;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v23[3] = &unk_29F342320;
    v23[4] = v25;
    v23[5] = v18;
    [v19 compileFunctionRequest:a3 compilerTask:a4 completionHandler:v23];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v24[3] = &unk_29F3422F8;
    v24[4] = v25;
    v20 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v21 = *a1;
    v22 = [a3 driverKeyData];
    if (v20)
    {
      [v21 compileRequest:v22 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v24}];
    }

    else
    {
      [v21 compileRequest:v22 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v24}];
    }
  }

  dispatch_release(v16);
}

unsigned __int8 *ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::getFunctionId(void (***a1)(void, CC_SHA256_CTX *), unsigned __int8 *a2, AGX *a3)
{
  CC_SHA256_Init(&c);
  (**a1)(a1, &c);
  *len = 0;
  data = 0;
  if (a3 && AGX::GetSerializedVertexFormat(a3, &data, len, v6, v7))
  {
    v8 = data;
    CC_SHA256_Update(&c, data, len[0]);
    free(v8);
  }

  CC_SHA256_Final(a2, &c);
  return a2;
}

void ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CC9B020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::VertexProgramVariant::~VertexProgramVariant(AGX::HAL300::VertexProgramVariant *this)
{
  AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~VertexProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

uint64_t VectorMap<AGX::VertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1040);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 1032);
    v7 = *(a2 + 200);
    v8 = v6;
    while (!AGX::Impl::VertexProgramKey::operator==(a2, v8) || v7 != *(v8 + 200))
    {
      ++v5;
      v8 += 208;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v9 = v6 + 48 * v5;
  }

  else
  {
    v6 = *(a1 + 1032);
LABEL_8:
    v10 = *(v6 + 1024);
    if (v10)
    {
      v11 = *(a2 + 200);
      v12 = 1;
      while (1)
      {
        if (AGX::Impl::VertexProgramKey::operator==(a2, v10) && v11 == v10[25])
        {
          v12 = 0;
          goto LABEL_28;
        }

        if (AGX::Impl::VertexProgramKey::operator==(a2, (v10 + 26)) && v11 == v10[51])
        {
          goto LABEL_28;
        }

        if (AGX::Impl::VertexProgramKey::operator==(a2, (v10 + 52)) && v11 == v10[77])
        {
          break;
        }

        if (AGX::Impl::VertexProgramKey::operator==(a2, (v10 + 78)) && v11 == v10[103])
        {
          v12 = 3;
          goto LABEL_28;
        }

        v10 = v10[128];
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      v12 = 2;
LABEL_28:
      v9 = &v10[6 * v12];
    }

    else
    {
LABEL_20:
      if (v4 == 4)
      {
        operator new();
      }

      v13 = v6 + 208 * v4;
      *(v13 + 8) = *(a2 + 8);
      if (v13 == a2)
      {
        v15 = *(a2 + 40);
        *(v13 + 56) = *(a2 + 56);
        *(v13 + 40) = v15;
        std::string::operator=((v13 + 64), (a2 + 64));
        *(v13 + 88) = *(a2 + 88);
      }

      else
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
        v14 = *(a2 + 40);
        *(v13 + 56) = *(a2 + 56);
        *(v13 + 40) = v14;
        std::string::operator=((v13 + 64), (a2 + 64));
        *(v13 + 88) = *(a2 + 88);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v13 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 5);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v13 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 5);
      }

      std::string::operator=((v13 + 144), (a2 + 144));
      std::string::operator=((v13 + 168), (a2 + 168));
      *(v13 + 192) = *(a2 + 192);
      *(v13 + 200) = *(a2 + 200);
      v16 = *(a1 + 1040);
      v9 = *(a1 + 1032) + 48 * v16;
      *(a1 + 1040) = v16 + 1;
    }
  }

  return v9 + 832;
}

_OWORD *VectorMap<AGX::VertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>,4u>::Chunk::Chunk(_OWORD *a1)
{
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::VertexProgramKey::VertexProgramKey(a1, v3, 0, 0, 0, 0);
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::VertexProgramKey::VertexProgramKey((a1 + 13), v3, 0, 0, 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v3[0]);
LABEL_3:
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::VertexProgramKey::VertexProgramKey((a1 + 26), v3, 0, 0, 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v3[0]);
LABEL_5:
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::VertexProgramKey::VertexProgramKey((a1 + 39), v3, 0, 0, 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(v3[0]);
    goto LABEL_7;
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  a1[52] = 0u;
  a1[53] = 0u;
  *(a1 + 858) = 0u;
  a1[55] = 0u;
  a1[56] = 0u;
  *(a1 + 906) = 0u;
  a1[58] = 0u;
  a1[59] = 0u;
  *(a1 + 954) = 0u;
  a1[61] = 0u;
  a1[62] = 0u;
  *(a1 + 1002) = 0u;
  return a1;
}

void sub_29CC9B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&a9);
  do
  {
    v10 -= 26;
    AGX::VertexProgramKey::~VertexProgramKey(v10);
  }

  while (v10 != v9);
  _Unwind_Resume(a1);
}

BOOL AGX::Impl::VertexProgramKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 87);
  if (v2 >= 0)
  {
    v3 = *(a1 + 87);
  }

  else
  {
    v3 = *(a1 + 72);
  }

  v4 = *(a2 + 87);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 72);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 64);
  }

  else
  {
    v7 = *(a1 + 64);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 64);
  }

  else
  {
    v9 = *(a2 + 64);
  }

  if (memcmp(v7, v9, v3) || *(a1 + 56) != *(a2 + 56) || *(a1 + 52) != *(a2 + 52) || *(a1 + 40) != *(a2 + 40) || *(a1 + 88) != *(a2 + 88) || *(a1 + 104) != *(a1 + 96) || *(a1 + 128) != *(a1 + 120))
  {
    return 0;
  }

  v10 = *(a1 + 167);
  if (v10 >= 0)
  {
    v11 = *(a1 + 167);
  }

  else
  {
    v11 = *(a1 + 152);
  }

  v12 = *(a2 + 167);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 152);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 144) : *(a1 + 144);
  v15 = v13 >= 0 ? (a2 + 144) : *(a2 + 144);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 191);
  if (v16 >= 0)
  {
    v17 = *(a1 + 191);
  }

  else
  {
    v17 = *(a1 + 176);
  }

  v18 = *(a2 + 191);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 176);
  }

  if (v17 == v18 && (v16 >= 0 ? (v20 = (a1 + 168)) : (v20 = *(a1 + 168)), v19 >= 0 ? (v21 = (a2 + 168)) : (v21 = *(a2 + 168)), !memcmp(v20, v21, v17)))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(os_unfair_lock_s *a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5)
{
  *a3 = 0;
  if ((a4 & 0x400000004) != 0 || a5)
  {
    operator new();
  }

  v7 = a4;
  os_unfair_lock_lock(a1 + 350);
  v9 = VectorMap<AGX::MeshProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::MeshProgramVariant>,4u>::operator[](a1, a2);
  if (!*v9)
  {
    v11 = dispatch_group_create();
    *v9 = v11;
LABEL_10:
    dispatch_group_enter(v11);
    *a3 = 1;
    goto LABEL_13;
  }

  if (*(v9 + 40) == 1)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(v9 + 8) = 0;
    *(v9 + 16) = 0;

    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    v11 = *v9;
    goto LABEL_10;
  }

  if ((*&v7 & 0x330003) != 0)
  {
    dispatch_group_enter(*v9);
  }

LABEL_13:
  os_unfair_lock_unlock(a1 + 350);
  return v9;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createMeshProgramAnalysisI27MTLRenderPipelineDescriptorEEPKNS_21VertexProgramVaryingsEPT_P19AGXG18PFamilyDevicemPNS1_11MeshProgramEPU27objcproto16OS_dispatch_data8NSObjectb_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, void *a7, uint64_t a8, __CFString *a9)
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

void AGX::Compiler::compileProgram<AGX::MeshProgramKey,AGCDeserializedReply>(uint64_t a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 24);
  if (v10 && *(v10 + 120) == 1)
  {
    v11 = [objc_msgSend(a3 "binaryArchives")];
    v12 = 0x200000000000;
    if (!v11)
    {
      v12 = 1;
    }

    atomic_fetch_or(v10, v12);
    v13 = *(a1 + 24);
    v14 = [a3 destinationBinaryArchive];
    v15 = 0x400000000000;
    if (!v14)
    {
      v15 = 1;
    }

    atomic_fetch_or(v13, v15);
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

  v26 = 0;
  v27 = 0;
  ((*a2)[2])(a2, &v27, &v26);
  v16 = dispatch_data_create(v27, v26, 0, 0);
  [a3 setDriverKeyData:v16];
  if ([a3 airScript])
  {
    v17 = [a3 airScript];
    object = 0uLL;
    v29[0] = 0;
    *&object = dispatch_data_create_map(v17, &object + 1, v29);
    ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, v30, (*(&object + 1) + **(&object + 1)));
    dispatch_release(object);
    object = v30[0];
    *v29 = v30[1];
    [a3 setVendorPluginFunctionId:&object];
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v25[3] = &unk_29F3422D0;
  v25[4] = a3;
  v25[5] = a5;
  if ([a3 function])
  {
    v18 = mach_absolute_time();
    v19 = *a1;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v23[3] = &unk_29F342320;
    v23[4] = v25;
    v23[5] = v18;
    [v19 compileFunctionRequest:a3 compilerTask:a4 completionHandler:v23];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v24[3] = &unk_29F3422F8;
    v24[4] = v25;
    v20 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v21 = *a1;
    v22 = [a3 driverKeyData];
    if (v20)
    {
      [v21 compileRequest:v22 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v24}];
    }

    else
    {
      [v21 compileRequest:v22 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v24}];
    }
  }

  dispatch_release(v16);
}

unsigned __int8 *ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::getFunctionId(void (***a1)(void, CC_SHA256_CTX *), unsigned __int8 *a2, AGX *a3)
{
  CC_SHA256_Init(&c);
  (**a1)(a1, &c);
  *len = 0;
  data = 0;
  if (a3 && AGX::GetSerializedVertexFormat(a3, &data, len, v6, v7))
  {
    v8 = data;
    CC_SHA256_Update(&c, data, len[0]);
    free(v8);
  }

  CC_SHA256_Final(a2, &c);
  return a2;
}

void ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CC9C294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a2 & 0x330003;
  if ((*&a2 & 0x330003) == 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 1400));
  v10 = *(a1 + 1360);
  v11 = *(a1 + 1368);
  v12 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v10, *(a1 + 1368), a4);
  if (!v12)
  {
    if (v11 == 4)
    {
      operator new();
    }

    v14 = &v10[4 * v11];
    v15 = *(a4 + 16);
    *v14 = *a4;
    v14[1] = v15;
    v16 = *(a1 + 1368);
    v17 = *(a1 + 1360) + 24 * v16;
    *(a1 + 1368) = v16 + 1;
    v12 = v17 + 128;
    v13 = *(v17 + 136);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v5 & ~v13) != 0)
    {
      if (a3)
      {
        v18 = v12;
        dispatch_retain(a3);
        v12 = v18;
      }

      if (*(v12 + 16))
      {
        v19 = v12;
        dispatch_release(*(v12 + 16));
        v12 = v19;
      }

      *(v12 + 8) = v5;
      *(v12 + 16) = a3;
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  *v12 = v13;
LABEL_15:

  os_unfair_lock_unlock((a1 + 1400));
}

void AGX::HAL300::MeshProgramVariant::~MeshProgramVariant(AGX::HAL300::MeshProgramVariant *this)
{
  AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~MeshProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

uint64_t VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(void *a1, int a2, void *a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = a1;
    while (1)
    {
      v5 = *a3 == *v4 && a3[1] == v4[1];
      v6 = v5 && a3[2] == v4[2];
      if (v6 && a3[3] == v4[3])
      {
        return &a1[3 * v3 + 16];
      }

      ++v3;
      v4 += 4;
      if (a2 == v3)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v8 = a1[28];
    if (v8)
    {
      v9 = 1;
      while (1)
      {
        if (*a3 == *v8 && a3[1] == v8[1] && a3[2] == v8[2] && a3[3] == v8[3])
        {
          v9 = 0;
          return &v8[3 * v9 + 16];
        }

        if (*a3 == v8[4] && a3[1] == v8[5] && a3[2] == v8[6] && a3[3] == v8[7])
        {
          return &v8[3 * v9 + 16];
        }

        if (*a3 == v8[8] && a3[1] == v8[9] && a3[2] == v8[10] && a3[3] == v8[11])
        {
          v9 = 2;
          return &v8[3 * v9 + 16];
        }

        v19 = *a3 == v8[12] && a3[1] == v8[13];
        v20 = v19 && a3[2] == v8[14];
        if (v20 && a3[3] == v8[15])
        {
          break;
        }

        v8 = v8[28];
        if (!v8)
        {
          return 0;
        }
      }

      v9 = 3;
      return &v8[3 * v9 + 16];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t VectorMap<AGX::MeshProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::MeshProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1072);
  v5 = *(a1 + 1064);
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 1064);
    while (!AGX::MeshProgramKey::operator==(a2, v7))
    {
      ++v6;
      v7 += 216;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    v12 = v5 + 48 * v6;
  }

  else
  {
LABEL_5:
    v8 = *(v5 + 1056);
    if (v8)
    {
      v9 = 1;
      while (1)
      {
        if (AGX::MeshProgramKey::operator==(a2, v8))
        {
          v9 = 0;
          goto LABEL_22;
        }

        if (AGX::MeshProgramKey::operator==(a2, v8 + 216))
        {
          goto LABEL_22;
        }

        if (AGX::MeshProgramKey::operator==(a2, v8 + 432))
        {
          v9 = 2;
          goto LABEL_22;
        }

        if (AGX::MeshProgramKey::operator==(a2, v8 + 648))
        {
          break;
        }

        v8 = *(v8 + 1056);
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v9 = 3;
LABEL_22:
      v12 = v8 + 48 * v9;
    }

    else
    {
LABEL_12:
      if (v4 == 4)
      {
        operator new();
      }

      v10 = v5 + 216 * v4;
      *(v10 + 8) = *(a2 + 8);
      if (v10 == a2)
      {
        v13 = *(a2 + 40);
        *(v10 + 56) = *(a2 + 56);
        *(v10 + 40) = v13;
        std::string::operator=((v10 + 72), (a2 + 72));
        *(v10 + 96) = *(a2 + 96);
      }

      else
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v10 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
        v11 = *(a2 + 40);
        *(v10 + 56) = *(a2 + 56);
        *(v10 + 40) = v11;
        std::string::operator=((v10 + 72), (a2 + 72));
        *(v10 + 96) = *(a2 + 96);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v10 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 5);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v10 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 5);
      }

      std::string::operator=((v10 + 152), (a2 + 152));
      std::string::operator=((v10 + 176), (a2 + 176));
      *(v10 + 200) = *(a2 + 200);
      *(v10 + 208) = *(a2 + 208);
      v14 = *(a1 + 1072);
      v12 = *(a1 + 1064) + 48 * v14;
      *(a1 + 1072) = v14 + 1;
    }
  }

  return v12 + 864;
}

_OWORD *VectorMap<AGX::MeshProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::MeshProgramVariant>,4u>::Chunk::Chunk(_OWORD *a1)
{
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::MeshProgramKey::MeshProgramKey(a1, 0, 0, 0, v3, 0, 0, 0);
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::MeshProgramKey::MeshProgramKey(a1 + 216, 0, 0, 0, v3, 0, 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v3[0]);
LABEL_3:
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::MeshProgramKey::MeshProgramKey((a1 + 27), 0, 0, 0, v3, 0, 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v3[0]);
LABEL_5:
  v6 = 0;
  *__p = 0u;
  v5 = 0u;
  *v3 = 0u;
  AGX::MeshProgramKey::MeshProgramKey(a1 + 648, 0, 0, 0, v3, 0, 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(v3[0]);
    goto LABEL_7;
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  a1[54] = 0u;
  a1[55] = 0u;
  *(a1 + 890) = 0u;
  a1[57] = 0u;
  a1[58] = 0u;
  *(a1 + 938) = 0u;
  a1[60] = 0u;
  a1[61] = 0u;
  *(a1 + 986) = 0u;
  a1[63] = 0u;
  a1[64] = 0u;
  *(a1 + 1034) = 0u;
  return a1;
}

void sub_29CC9C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&a9);
  do
  {
    v10 -= 27;
    AGX::MeshProgramKey::~MeshProgramKey(v10);
  }

  while (v10 != v9);
  _Unwind_Resume(a1);
}

BOOL AGX::MeshProgramKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 95);
  if (v2 >= 0)
  {
    v3 = *(a1 + 95);
  }

  else
  {
    v3 = *(a1 + 80);
  }

  v4 = *(a2 + 95);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 80);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 72);
  }

  else
  {
    v7 = *(a1 + 72);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 72);
  }

  else
  {
    v9 = *(a2 + 72);
  }

  if (memcmp(v7, v9, v3) || *(a1 + 56) != *(a2 + 56) || *(a1 + 52) != *(a2 + 52) || *(a1 + 40) != *(a2 + 40) || *(a1 + 96) != *(a2 + 96) || *(a1 + 112) != *(a1 + 104) || *(a1 + 136) != *(a1 + 128))
  {
    return 0;
  }

  v10 = *(a1 + 175);
  if (v10 >= 0)
  {
    v11 = *(a1 + 175);
  }

  else
  {
    v11 = *(a1 + 160);
  }

  v12 = *(a2 + 175);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 160);
  }

  if (v11 == v12 && (v10 >= 0 ? (v14 = (a1 + 152)) : (v14 = *(a1 + 152)), v13 >= 0 ? (v15 = (a2 + 152)) : (v15 = *(a2 + 152)), !memcmp(v14, v15, v11) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64)))
  {
    return *(a1 + 208) == *(a2 + 208);
  }

  else
  {
    return 0;
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 80);
    v11 = *(a1 + 88);
    v13 = *(a1 + 96);
    v14 = *(a2 + 4034);
    v15 = *(a1 + 128);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v29 = *(a1 + 104);
    v18 = *(v29 + 120);
    v19 = *(v29 + 24);
    v20 = *(v29 + 88);
    v33 = *(a1 + 129);
    v34 = *(a1 + 145);
    v21 = a3[1];
    v35 = *a3;
    v26[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2;
    v26[3] = &unk_29F341788;
    v28 = v12;
    v30 = a2;
    v31 = v11;
    v36 = v21;
    v26[4] = v10;
    v26[5] = v9;
    v37 = v15;
    v38 = *(a1 + 161);
    v32 = *(a1 + 120);
    v26[6] = a4;
    v27 = *(a1 + 64);
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLRenderPipelineDescriptor>(v12, v9, v10, v11, v16, v13, a7, v18, v19, v20, v14, HIBYTE(v14), v15, v17, v26);
  }

  else
  {
    v22 = *(a1 + 72);
    if (v22)
    {
      if (a5 > 3)
      {
        v23 = 5;
      }

      else
      {
        v23 = qword_29D2F40D8[a5];
      }

      v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v25 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v23 userInfo:v24];
      (*(v22 + 16))(v22, 0, 0);
    }
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramVariant<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, os_unfair_lock_s *a9, uint64_t a10, NSObject *a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v115 = *MEMORY[0x29EDCA608];
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3052000000;
  v81[3] = __Block_byref_object_copy__1933;
  v81[4] = __Block_byref_object_dispose__1934;
  v81[5] = 0;
  v19 = [a2 meshFunction];
  if (a10)
  {
    v20 = [a2 objectFunction];
    if (*(a10 + 3879) < 0)
    {
      std::string::__init_copy_ctor_external(&v70, *(a10 + 3856), *(a10 + 3864));
    }

    else
    {
      v70 = *(a10 + 3856);
    }

    if (*(a10 + 3903) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a10 + 3880), *(a10 + 3888));
    }

    else
    {
      __p = *(a10 + 3880);
    }

    v72 = *(a10 + 3904);
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey<MTLRenderPipelineDescriptor>(v73, a2, a11, a8, v20 == 0, &v70, *(a10 + 3920));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v21 = &v70;
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey<MTLRenderPipelineDescriptor>(v73, a2, a11, a8, [a2 objectFunction] == 0, &v66, 0);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(*(&v67 + 1));
      if ((SBYTE7(v67) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SBYTE7(v67) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v21 = &v66;
  }

  operator delete(v21->__r_.__value_.__l.__data_);
LABEL_19:
  v22 = (v74 & 0x8BFFFEFF | (*(a3[106] + 16608) << 26) & 0xBFFFFFFF | (((*(a3[106] + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
  v74 = v22;
  v75 &= 0xFFFFF1FF;
  v80 = a4 & 0xC00C0000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v23 = 1;
    v22 = v74;
  }

  else
  {
    v23 = 0;
  }

  v74 = v23 | (a4 >> 21) & 8 | v22 & 0xFFFFFFF4;
  ReflectionKey::initGPUCompilerSPIOptionsHash(&v107, [a2 gpuCompilerSPIOptions]);
  v105 = v107;
  v106 = v108;
  v65 = 0;
  CompileOptions = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(a9, a4 | 3, &v105);
  v55 = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a9, v73, &v65, CompileOptions, (a5 | a6) != 0);
  if (v65 == 1)
  {
    v50 = v73[5];
    v49 = v76;
    v24 = [objc_msgSend(a2 "pipelineLibrary")];
    v25 = [a2 pipelineLibrary];
    if ([v25 pipelineCache] && (objc_msgSend(v25, "disableRunTimeCompilation") & 1) != 0 || (v26 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v26)
    {
      LOBYTE(v27) = 1;
    }

    else
    {
      v27 = (a4 >> 34) & 1;
    }

    if (a6)
    {
      LOBYTE(v27) = 1;
    }

    v48 = v27;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v31 = objc_opt_new();
    [v31 setUseAIRNTInterfaces:*(a1 + 24)];
    [v31 setSync:a12 ^ 1u];
    [v31 setFunction:v19];
    [v31 setFrameworkData:a11];
    [v31 setPipelineCache:v24];
    [v31 setDestinationBinaryArchive:a5];
    [v31 setArchiverId:a7];
    [v31 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v31 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v31 setPipelineOptions:{objc_msgSend(v31, "pipelineOptions") | 0x8000}];
    }

    v32 = [a2 newPipelineScript];
    if (v32)
    {
      [v31 setAirScript:v32];
      dispatch_release(v32);
    }

    [v31 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v33 = [a2 meshLinkedFunctions];
    [v31 setVisibleFunctions:{objc_msgSend(v33, "functions")}];
    [v31 setVisibleFunctionGroups:{objc_msgSend(v33, "groups")}];
    [v31 setPrivateVisibleFunctions:{objc_msgSend(v33, "privateFunctions")}];
    v47 = v19;
    v34 = a3;
    v52 = a1;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    *&v59 = 0;
    v61 = 0uLL;
    v35 = [a2 maxMeshCallStackDepth];
    v36 = [a2 meshLinkedFunctions];
    v37 = [a2 supportIndirectCommandBuffers];
    v38 = [a2 supportAddingMeshBinaryFunctions];
    v39 = [a2 gpuCompilerSPIOptions];
    v40 = [v34 requiresRaytracingEmulation];
    BYTE8(v59) = v40;
    *&v60 = v35;
    *(&v60 + 1) = v36;
    *&v62 = a4;
    *(&v62 + 1) = a8;
    v63 = v34;
    LOBYTE(v64) = v37;
    BYTE1(v64) = v38;
    *(&v64 + 1) = v39;
    if (a6)
    {
      v41 = *a6;
      v42 = *(a6 + 16);
      LOBYTE(v57) = 1;
      *(&v57 + 1) = v41;
      *&v58 = v42;
      *(&v58 + 1) = 7;
    }

    *&v59 = a13;
    v99[0] = MEMORY[0x29EDCA5F8];
    v99[1] = 3221225472;
    v99[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke;
    v99[3] = &unk_29F341800;
    v100 = a12;
    v43 = v52;
    v99[8] = v52;
    v99[9] = v55;
    v101 = v49 & 1;
    v99[10] = a9;
    v99[11] = CompileOptions;
    v102 = v105;
    v103 = v106;
    v99[4] = v47;
    v99[5] = v34;
    v99[7] = v81;
    v99[6] = a2;
    v99[12] = a10;
    v99[13] = v50;
    v104 = v48;
    if ((v40 & 1) == 0 && (hasAirLinkedIntersectionFunction = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v36), v43 = v52, hasAirLinkedIntersectionFunction))
    {
      v111 = v61;
      v112 = v62;
      v113 = v63;
      v114 = v64;
      v107 = v57;
      v108 = v58;
      v109 = v59;
      v110 = v60;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::MeshProgramKey,true>(v52, v73, v31, &v107, v99);
    }

    else
    {
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::MeshProgramKey>(v43, v73, v31, &v57, v99);
    }

    v29 = v55;
    v28 = a9;
  }

  else
  {
    v28 = a9;
    v29 = v55;
    if ((CompileOptions & 0x330003) != 0)
    {
      v30 = *a1;
      v96[0] = MEMORY[0x29EDCA5F8];
      v96[1] = 3221225472;
      v96[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_2;
      v96[3] = &unk_29F341630;
      v97 = v105;
      v98 = v106;
      v96[5] = a9;
      v96[4] = a3;
      v96[6] = CompileOptions;
      v96[7] = v55;
      [*v30 reflectionWithFunction:v19 options:CompileOptions & 0x330003 sync:a12 ^ 1u completionHandler:v96];
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  v83 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_3;
  v84 = &unk_2A23F6C98;
  v87 = v29;
  v88 = v28;
  AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::GeometrySharedKey(v89, v73);
  v89[0] = &unk_2A23FA740;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v77;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = __s;
  }

  v92 = v79;
  v89[0] = &unk_2A23F7CA8;
  v93 = v80;
  v94 = v105;
  v95 = v106;
  v85 = a14;
  v86 = v81;
  v45 = *v29;
  if (a12)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v45, global_queue, block);
  }

  else
  {
    dispatch_group_wait(v45, 0xFFFFFFFFFFFFFFFFLL);
    v83(block);
  }

  AGX::MeshProgramKey::~MeshProgramKey(v89);
  AGX::MeshProgramKey::~MeshProgramKey(v73);
  _Block_object_dispose(v81, 8);
}

void sub_29CC9D670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&a37);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v9 = *v8;
    v10 = *(v8 + 8);
    memset(v16, 0, sizeof(v16));
    memset(v15, 0, sizeof(v15));
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::constructRenderPipeline<MTLRenderPipelineDescriptor>(v9, v7, a1 + 104, v10, a2, a3, 0, 0, v16, 0, 0, v15, *(v8 + 96), *(v8 + 104), 0, 0, *(a1 + 32), *(v8 + 72), *(a1 + 40));
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    if (a5 > 3)
    {
      v12 = 5;
    }

    else
    {
      v12 = qword_29D2F40D8[a5];
    }

    v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
    v14 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v12 userInfo:v13];
    (*(v11 + 16))(v11, 0, 0);
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createVertexProgramVariant(uint64_t a1, MTLRenderPipelineDescriptor *a2, void *a3, unint64_t a4, uint64_t a5, std::string::size_type *a6, void *a7, uint64_t a8, uint64_t a9, NSObject *a10, uint64_t a11, unsigned __int8 a12, std::string::size_type a13, uint64_t a14)
{
  v144 = *MEMORY[0x29EDCA608];
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3052000000;
  v98[3] = __Block_byref_object_copy__1933;
  v98[4] = __Block_byref_object_dispose__1934;
  v98[5] = 0;
  v68 = [(MTLRenderPipelineDescriptor *)a2 vertexFunction];
  v66 = a7;
  if (a9)
  {
    if (*(a9 + 3879) < 0)
    {
      std::string::__init_copy_ctor_external(v74, *(a9 + 3856), *(a9 + 3864));
    }

    else
    {
      v74[0] = *(a9 + 3856);
    }

    if (*(a9 + 3903) < 0)
    {
      std::string::__init_copy_ctor_external(&v74[1], *(a9 + 3880), *(a9 + 3888));
    }

    else
    {
      v74[1] = *(a9 + 3880);
    }

    LOBYTE(v75) = *(a9 + 3904);
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateVertexProgramKey(&v133, a2, a10, v74, *(a9 + 3920), a7, (*(a3[106] + 16456) >> 22) & 1);
    if (SHIBYTE(v74[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74[1].__r_.__value_.__l.__data_);
      if ((SHIBYTE(v74[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v74[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v20 = v74[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    LOBYTE(v75) = 0;
    memset(v74, 0, sizeof(v74));
    v99 = 0;
    v100 = 0;
    __p = *&v74[1].__r_.__value_.__l.__data_;
    v101 = 0;
    v103 = 0;
    v104 = 0;
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateVertexProgramKey(&v133, a2, a10, &v99, 0, a7, 0);
    if (SHIBYTE(v103) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v101) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v101) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v20 = v99;
  }

  operator delete(v20);
LABEL_19:
  v21 = a3[106];
  v22 = *(v21 + 16456);
  v23 = (*&v135[20] & 0x8BFFFEFF | (*(v21 + 16608) << 26) & 0xBFFFFFFF | (((v22 >> 1) & 1) << 30)) ^ 0x40000000;
  *&v135[20] = v23;
  v24 = *&v135[24] & 0xFFFFF1FFF67FFFFFLL | (((v22 >> 8) & 3) << 23);
  v25 = a4 & 0xC00C0000;
  *&v135[24] = v24;
  v143 = v25;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v23 = *&v135[20];
    v26 = 1;
    v24 = *&v135[24];
    v25 = v143;
  }

  else
  {
    v26 = 0;
  }

  *&v135[20] = (a4 >> 21) & 8 | v26 | v23 & 0xFFFFFFF4;
  v82 = DWORD2(v133);
  v83 = v134;
  v27 = *v135;
  v134 = 0uLL;
  *v135 = 0;
  v84 = v27;
  v86 = v24 & 0xFFFFFFFFFBFFFFFFLL | (((a4 >> 21) & 1) << 26);
  v85 = *&v135[8];
  v88 = v137;
  v87 = v136;
  *&v135[24] = v86;
  v136 = 0uLL;
  *&v137 = 0;
  v89 = DWORD2(v137);
  v90 = v138;
  v138 = 0uLL;
  v92 = *&v139[8];
  v91 = *v139;
  v93 = v140;
  memset(v139, 0, sizeof(v139));
  v140 = 0;
  v94 = v141[0];
  memset(v141, 0, sizeof(v141));
  v95 = v141[1];
  v96 = v142;
  v81 = &unk_2A23F7B08;
  v97 = v25;
  AGX::VertexProgramKey::~VertexProgramKey(&v133);
  ReflectionKey::initGPUCompilerSPIOptionsHash(&v133, [(MTLRenderPipelineDescriptor *)a2 gpuCompilerSPIOptions]);
  v131 = v133;
  v132 = v134;
  os_unfair_lock_lock((a8 + 1368));
  v28 = *(a8 + 1328);
  v29 = *(a8 + 1336);
  v30 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v28, *(a8 + 1336), &v131);
  if (!v30)
  {
    if (v29 == 4)
    {
      operator new();
    }

    v31 = &v28[4 * v29];
    v32 = v132;
    *v31 = v131;
    v31[1] = v32;
    v33 = *(a8 + 1336);
    v34 = *(a8 + 1328) + 24 * v33;
    *(a8 + 1336) = v33 + 1;
    v30 = (v34 + 128);
  }

  v71 = a3;
  v35 = a4 & 0x330000 | 3;
  if ((v35 & ~v30[1]) != 0)
  {
    v36 = *v30 | v35;
    *v30 = v36;
  }

  else
  {
    v36 = 0;
  }

  os_unfair_lock_unlock((a8 + 1368));
  v80 = 0;
  v67 = v36 | a4 & 0xFFFFFFFFFFCCFFFCLL;
  v72 = AGX::Program<AGX::HAL300::VertexProgramVariant,AGX::VertexProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a8, &v81, &v80, v67, (a5 | a6) != 0);
  if (v80 == 1)
  {
    v37 = v85;
    v65 = v89;
    v38 = [-[MTLRenderPipelineDescriptor pipelineLibrary](a2 "pipelineLibrary")];
    v39 = [(MTLRenderPipelineDescriptor *)a2 pipelineLibrary];
    if ([v39 pipelineCache] && (objc_msgSend(v39, "disableRunTimeCompilation") & 1) != 0 || (v40 = -[NSArray count](-[MTLRenderPipelineDescriptor binaryArchives](a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v40)
    {
      LOBYTE(v41) = 1;
    }

    else
    {
      v41 = (a4 >> 34) & 1;
    }

    if (a6)
    {
      v44 = 1;
    }

    else
    {
      v44 = v41;
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v64 = v37;
    v45 = objc_opt_new();
    [v45 setUseAIRNTInterfaces:*(a1 + 24)];
    [v45 setSync:a12 ^ 1u];
    [v45 setFunction:v68];
    [v45 setFrameworkData:a10];
    [v45 setPipelineCache:v38];
    [v45 setDestinationBinaryArchive:a5];
    [v45 setBinaryArchives:{-[MTLRenderPipelineDescriptor binaryArchives](a2, "binaryArchives")}];
    [v45 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v45 setPipelineOptions:{objc_msgSend(v45, "pipelineOptions") | 0x8000}];
    }

    v46 = [(MTLRenderPipelineDescriptor *)a2 newPipelineScript];
    if (v46)
    {
      [v45 setAirScript:v46];
      dispatch_release(v46);
    }

    [v45 setGpuCompilerSPIOptions:{-[MTLRenderPipelineDescriptor gpuCompilerSPIOptions](a2, "gpuCompilerSPIOptions")}];
    v47 = [(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions];
    [v45 setVisibleFunctions:{-[MTLLinkedFunctions functions](v47, "functions")}];
    [v45 setVisibleFunctionGroups:{-[MTLLinkedFunctions groups](v47, "groups")}];
    [v45 setPrivateVisibleFunctions:{-[MTLLinkedFunctions privateFunctions](v47, "privateFunctions")}];
    [v45 setArchiverId:a11];
    v63 = v44;
    v70 = a6;
    v74[0].__r_.__value_.__s.__data_[0] = 0;
    *&v74[0].__r_.__value_.__r.__words[1] = 0uLL;
    v74[1].__r_.__value_.__l.__size_ = 0;
    v76 = 0uLL;
    *(&v78 + 1) = 0;
    v48 = [(MTLRenderPipelineDescriptor *)a2 maxVertexCallStackDepth];
    v49 = [(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions];
    v50 = [(MTLRenderPipelineDescriptor *)a2 supportIndirectCommandBuffers];
    v51 = [(MTLRenderPipelineDescriptor *)a2 supportAddingVertexBinaryFunctions];
    v52 = [(MTLRenderPipelineDescriptor *)a2 gpuCompilerSPIOptions];
    v53 = [v71 requiresRaytracingEmulation];
    v74[1].__r_.__value_.__s.__data_[16] = v53;
    *&v75 = v48;
    *(&v75 + 1) = v49;
    *&v77 = a4;
    *(&v77 + 1) = v66;
    v54 = v70;
    *&v78 = v71;
    LOBYTE(v79) = v50;
    BYTE1(v79) = v51;
    *(&v79 + 1) = v52;
    if (v70)
    {
      v55 = *v70;
      v56 = v70[2];
      v74[0].__r_.__value_.__s.__data_[0] = 1;
      v74[0].__r_.__value_.__l.__size_ = v55;
      v74[0].__r_.__value_.__r.__words[2] = v56;
      v74[1].__r_.__value_.__r.__words[0] = 1;
    }

    v74[1].__r_.__value_.__l.__size_ = a13;
    v125[0] = MEMORY[0x29EDCA5F8];
    v125[1] = 3221225472;
    v128 = v131;
    v125[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createVertexProgramVariantEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_13VertexProgramEPNS1_22FragmentProgramVariantEPU27objcproto16OS_dispatch_data8NSObjectSP_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20VertexProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke;
    v125[3] = &unk_29F341800;
    v126 = a12;
    v57 = a1;
    v125[8] = a1;
    v125[9] = v72;
    v127 = v65 & 1;
    v125[10] = a8;
    v125[11] = v67;
    v129 = v132;
    v125[4] = v68;
    v125[5] = v71;
    v125[7] = v98;
    v125[6] = a2;
    v125[12] = a9;
    v125[13] = v64;
    v130 = v63;
    if ((v53 & 1) == 0 && (hasAirLinkedIntersectionFunction = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v49), v57 = a1, v54 = v70, hasAirLinkedIntersectionFunction))
    {
      v136 = v76;
      v137 = v77;
      v138 = v78;
      *v139 = v79;
      v133 = *&v74[0].__r_.__value_.__l.__data_;
      v134 = *&v74[0].__r_.__value_.__r.__words[2];
      *v135 = *&v74[1].__r_.__value_.__r.__words[1];
      *&v135[16] = v75;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::VertexProgramKey,true>(a1, &v81, v45, &v133, v125);
    }

    else
    {
      v99 = MEMORY[0x29EDCA5F8];
      v100 = 3221225472;
      v101 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileFunction_ImplINS_16VertexProgramKeyEEEvRKT_P29MTLCompileFunctionRequestDataRKNS5_21DriverRequestDataImplILb1EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplILb1EEEE_block_invoke;
      *&__p = &unk_29F341710;
      *(&__p + 1) = v125;
      if (v54)
      {
        v59 = [v45 airScript];
        v106 = 0;
        object = 0;
        v107 = 0;
        object = dispatch_data_create_map(v59, &v106, &v107);
        ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::getFunctionId(&v81, &v133, &v106[*v106]);
        dispatch_release(object);
        AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCDeserializedReply>(v74, &v133, &v99);
      }

      else
      {
        v60 = *v57;
        *&v133 = MEMORY[0x29EDCA5F8];
        *(&v133 + 1) = 3221225472;
        *&v134 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
        *(&v134 + 1) = &unk_29F342280;
        *v135 = &v99;
        AGX::Compiler::compileProgram<AGX::VertexProgramKey,AGCDeserializedReply>(v60, &v81, v45, a13, &v133);
      }
    }

    v42 = v72;
  }

  else
  {
    v42 = v72;
    if ((v36 & 0x330003) != 0)
    {
      v43 = *a1;
      v122[0] = MEMORY[0x29EDCA5F8];
      v122[1] = 3221225472;
      v122[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createVertexProgramVariantEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_13VertexProgramEPNS1_22FragmentProgramVariantEPU27objcproto16OS_dispatch_data8NSObjectSP_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20VertexProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2;
      v122[3] = &unk_29F341630;
      v123 = v131;
      v124 = v132;
      v122[5] = a8;
      v122[4] = a3;
      v122[6] = v36 | a4 & 0xFFFFFFFFFFCCFFFCLL;
      v122[7] = v72;
      [*v43 reflectionWithFunction:v68 options:v36 & 0x330003 sync:a12 ^ 1u completionHandler:v122];
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  v109 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createVertexProgramVariantEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_13VertexProgramEPNS1_22FragmentProgramVariantEPU27objcproto16OS_dispatch_data8NSObjectSP_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20VertexProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_3;
  v110 = &unk_2A23F6DC0;
  v113 = a8;
  v114 = v42;
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::GeometrySharedKey(v115, &v81);
  v115[0] = &unk_2A23FA6F8;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v94;
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v117 = v95;
  }

  v118 = v96;
  v115[0] = &unk_2A23F7B08;
  v119 = v97;
  v120 = v131;
  v121 = v132;
  v111 = a14;
  v112 = v98;
  v61 = *v42;
  if (a12)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v61, global_queue, block);
  }

  else
  {
    dispatch_group_wait(v61, 0xFFFFFFFFFFFFFFFFLL);
    v109(block);
  }

  AGX::VertexProgramKey::~VertexProgramKey(v115);
  AGX::VertexProgramKey::~VertexProgramKey(&v81);
  _Block_object_dispose(v98, 8);
}

void sub_29CC9E4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  os_unfair_lock_unlock(v64 + 342);
  AGX::VertexProgramKey::~VertexProgramKey(&a38);
  _Block_object_dispose(&a64, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createVertexProgramVariantEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_13VertexProgramEPNS1_22FragmentProgramVariantEPU27objcproto16OS_dispatch_data8NSObjectSP_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20VertexProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
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
    if (*(a1 + 113) != 1)
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
      v6 = @"Vertex shader cannot be used with indirect command buffers";
      v7 = 2;
    }
  }

LABEL_8:
  AGX::Program<AGX::HAL300::VertexProgramVariant,AGX::VertexProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 80), *(a1 + 88), *(a3 + 16), a1 + 114, v7);
  if (!v7)
  {
    AGX::VsStateConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VsStateConfigGen3(v22, a2);
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

      v23 = v23 & 0xFFFFFFBF | v15;
    }

    [*(a1 + 48) needsCustomBorderColorSamplers];
    v16 = [*(a1 + 48) profileControl];
    if (v16)
    {
      v17 = v16;
      [v16 uscCliqueTraceLevel];
      [v17 uscEmitPosition];
      [v17 uscEmitThreadControlFlow];
    }

    operator new();
  }

  v19 = *(a1 + 72);
  v20 = *(a3 + 32);
  v21 = *(a1 + 146);
  *(v19 + 8) = 0;
  *(v19 + 16) = v7;

  *(v19 + 24) = [(__CFString *)v6 copy];
  if (*(v19 + 8))
  {

    *(v19 + 32) = v20;
  }

  else
  {
    *(v19 + 40) = v10 & v21;
  }

  dispatch_group_leave(*v19);
}

void sub_29CC9EAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  if (*(v8 - 193) < 0)
  {
    operator delete(*(v8 - 216));
  }

  MEMORY[0x29ED520D0](v7, 0x10F3C40AC35E047);
  _Unwind_Resume(a1);
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::VertexProgramKey,true>(void *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, _OWORD *a4, uint64_t a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v8 = a4[3];
  v39 = a4[4];
  v9 = a4[6];
  v40 = a4[5];
  v41 = v9;
  v42 = a4[7];
  v10 = a4[1];
  v35 = *a4;
  v11 = a4[2];
  v36 = v10;
  v37 = v11;
  v30 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_16VertexProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke;
  v31 = &unk_29F341658;
  v33 = a5;
  v34 = a1;
  v38 = v8;
  v32 = a3;
  if (*a4 == 1)
  {
    v12 = [a3 airScript];
    v50 = 0uLL;
    *&v51 = 0;
    *&v50 = dispatch_data_create_map(v12, &v50 + 1, &v51);
    ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
    dispatch_release(v50);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(a4, &v54, &v28);
  }

  else
  {
    v13 = *a1;
    v14 = *(a4 + 4);
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v46 = &unk_29F342280;
    v47 = &v28;
    v15 = *(v13 + 24);
    if (v15 && *(v15 + 120) == 1)
    {
      v16 = [objc_msgSend(a3 binaryArchives];
      v17 = 0x200000000000;
      if (!v16)
      {
        v17 = 1;
      }

      atomic_fetch_or(v15, v17);
      v18 = *(v13 + 24);
      v19 = [a3 destinationBinaryArchive];
      v20 = 0x400000000000;
      if (!v19)
      {
        v20 = 1;
      }

      atomic_fetch_or(v18, v20);
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

    v48 = 0;
    v49 = 0;
    ((*a2)[2])(a2, &v49, &v48);
    v21 = dispatch_data_create(v49, v48, 0, 0);
    [a3 setDriverKeyData:v21];
    if ([a3 airScript])
    {
      v22 = [a3 airScript];
      v50 = 0uLL;
      *&v51 = 0;
      *&v50 = dispatch_data_create_map(v22, &v50 + 1, &v51);
      ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
      dispatch_release(v50);
      v50 = v54;
      v51 = v55;
      [a3 setVendorPluginFunctionId:&v50];
    }

    *&v54 = MEMORY[0x29EDCA5F8];
    *(&v54 + 1) = 3221225472;
    *&v55 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v55 + 1) = &unk_29F3422D0;
    v56 = a3;
    v57 = &v43;
    if ([a3 function])
    {
      v23 = mach_absolute_time();
      v24 = *v13;
      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v51 + 1) = &unk_29F342320;
      v52 = &v54;
      v53 = v23;
      [v24 compileFunctionRequest:a3 compilerTask:v14 completionHandler:&v50];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v51 + 1) = &unk_29F3422F8;
      v52 = &v54;
      v25 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v26 = *v13;
      v27 = [a3 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), &v50}];
      }

      else
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), &v50}];
      }
    }

    dispatch_release(v21);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createVertexProgramVariantEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_13VertexProgramEPNS1_22FragmentProgramVariantEPU27objcproto16OS_dispatch_data8NSObjectSP_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20VertexProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::VertexProgramVariant,AGX::VertexProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createVertexProgramVariantEP27MTLRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_13VertexProgramEPNS1_22FragmentProgramVariantEPU27objcproto16OS_dispatch_data8NSObjectSP_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20VertexProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_3(void *a1)
{
  memset(v11, 0, 26);
  v2 = a1[7];
  if (*(v2 + 41) != 1)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (*(v2 + 8))
  {
    v3 = a1[6];
    os_unfair_lock_lock(v3 + 342);
    v4 = VectorMap<AGX::VertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>,4u>::operator[](v3, (a1 + 8));
    if (*v4)
    {
      os_unfair_lock_unlock(v3 + 342);
      dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v7 = dispatch_group_create();
      *v4 = v7;
      dispatch_group_enter(v7);
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);
      *(v4 + 8) = *(v2 + 8);
      *(v4 + 16) = v8;

      *(v4 + 24) = [v9 copy];
      if (*(v4 + 8))
      {

        *(v4 + 32) = 0;
      }

      else
      {
        *(v4 + 40) = 0;
      }

      dispatch_group_leave(*v4);
      *(v2 + 8) = 0;
      os_unfair_lock_unlock(v3 + 342);
    }

    v5 = 0;
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }
  }

  dispatch_release(v6);
LABEL_14:
  v10 = *(v2 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MEMORY[0x29ED520D0](v2, 0x10A0C405D73F519);
LABEL_17:
  (*(a1[4] + 16))();
}

void sub_29CC9F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_unfair_lock_unlock(v9 + 342);
  AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>::~ProgramVariantEntry(&a9);
  _Unwind_Resume(a1);
}

uint64_t AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::GeometrySharedKey(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A23F7AC8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *a1 = &unk_2A23F7A80;
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  v8 = *(a2 + 88);
  *(a1 + 96) = 0;
  *(a1 + 88) = v8;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = *(a2 + 96);
  v9 = *(a2 + 104);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v12 = *(a2 + 120);
  v11 = *(a2 + 128);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_14:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void sub_29CC9F440(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_64c28_ZTSN3AGX16VertexProgramKeyE(uint64_t a1, uint64_t a2)
{
  AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::GeometrySharedKey(a1 + 64, a2 + 64);
  *(a1 + 64) = &unk_2A23FA6F8;
  if (*(a2 + 231) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 208), *(a2 + 208), *(a2 + 216));
    if ((*(a2 + 255) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external((a1 + 232), *(a2 + 232), *(a2 + 240));
    goto LABEL_6;
  }

  v4 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v4;
  if (*(a2 + 255) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v5;
LABEL_6:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 64) = &unk_2A23F7B08;
  *(a1 + 264) = *(a2 + 264);
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void AGX::Program<AGX::HAL300::VertexProgramVariant,AGX::VertexProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a2 & 0x330003;
  if ((*&a2 & 0x330003) == 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 1368));
  v10 = *(a1 + 1328);
  v11 = *(a1 + 1336);
  v12 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v10, *(a1 + 1336), a4);
  if (!v12)
  {
    if (v11 == 4)
    {
      operator new();
    }

    v14 = &v10[4 * v11];
    v15 = *(a4 + 16);
    *v14 = *a4;
    v14[1] = v15;
    v16 = *(a1 + 1336);
    v17 = *(a1 + 1328) + 24 * v16;
    *(a1 + 1336) = v16 + 1;
    v12 = v17 + 128;
    v13 = *(v17 + 136);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v5 & ~v13) != 0)
    {
      if (a3)
      {
        v18 = v12;
        dispatch_retain(a3);
        v12 = v18;
      }

      if (*(v12 + 16))
      {
        v19 = v12;
        dispatch_release(*(v12 + 16));
        v12 = v19;
      }

      *(v12 + 8) = v5;
      *(v12 + 16) = a3;
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  *v12 = v13;
LABEL_15:

  os_unfair_lock_unlock((a1 + 1368));
}

void sub_29CC9F7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_16VertexProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke(uint64_t a1, void *a2, int8x16_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v7 = a3[2];
  v20[0] = vextq_s8(a3[1], a3[1], 8uLL);
  v20[1] = v7;
  v21 = a3[3].i64[0];
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(&v25, v6, a2, v20, *(a1 + 112), a1 + 120);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  v9 = a3[3];
  *v24 = a3[2];
  *&v24[16] = v9;
  AGCDeserializedReply::AGCDeserializedReply(v20);
  if (!*&v24[8])
  {
    v10 = [*(a1 + 32) function];
    if (!AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(a2, [objc_msgSend(v10 "name")], v20))
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = [objc_msgSend(v10 "name")];
      AGCReplyArray::getDebugStringAvailableNames(buf, a2);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      fprintf(v11, "AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", "agxa_user_shader_factory_template.hpp", 182, "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke", v12, v13);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v16;
        v31 = 2080;
        v32 = v17;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v14 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&v24[8] = 2;
      *&v24[16] = @"Internal error during function compilation.";
    }
  }

  memset(buf, 0, 24);
  if (v27 == 1)
  {
    *buf = v25;
    *&buf[16] = v26;
    v26 = 0;
    v25 = 0uLL;
  }

  else
  {
    if (v27)
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      AGCDeserializedReply::~AGCDeserializedReply(v20);
      if (v27 == -1)
      {
        _Unwind_Resume(v18);
      }

      (off_2A23F59F0[v27])(v20, &v25);
      _Unwind_Resume(v18);
    }

    *&v24[8] = v25;
  }

  (*(*(a1 + 40) + 16))();
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v20);
  if (v27 != -1)
  {
    (off_2A23F59F0[v27])(v20, &v25);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_16VertexProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CC9FF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

uint64_t AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateVertexProgramKey(uint64_t a1, MTLRenderPipelineDescriptor *a2, NSObject *a3, uint64_t a4, int a5, void *a6, int a7)
{
  {
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*)::enable_pipeline_script = 0;
  }

  if (AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor const*)::enable_pipeline_script == 1)
  {
    [(MTLRenderPipelineDescriptor *)a2 newPipelineScript];
    operator new();
  }

  *v17 = *a4;
  v18 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  v14 = *(a4 + 24);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *v19 = v14;
  v20 = *(a4 + 40);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v21 = *(a4 + 48);
  AGX::VertexProgramKey::VertexProgramKey(a1, v17, a3, [(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions], a6, a5);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v17[0]);
LABEL_6:
  AGX::VertexProgramKey::initCommon(a1, a2);
  *(a1 + 52) &= ~0x80u;
  v15 = 0x8000000;
  if (!a7)
  {
    v15 = 0;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFFFF7FFFFFFLL | v15;
  return [(MTLRenderPipelineDescriptor *)a2 supportIndirectCommandBuffers];
}

void sub_29CCA02F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&a23);
  std::unique_ptr<AGX::PipelineScript>::~unique_ptr[abi:nn200100]((v23 - 88));
  _Unwind_Resume(a1);
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::constructRenderPipeline<MTLRenderPipelineDescriptor>(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a1)
  {
    [a1 vendorPrivate];
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else if (!a4)
  {
LABEL_5:
    if (a7)
    {
      [a7 vendorPrivate];
    }

    if (a10)
    {
      [a10 vendorPrivate];
    }

    v32 = [[AGXG18PFamilyRenderPipeline alloc] initWithDevice:a17 pipelineStateDescriptor:a19];
    [a19 _descriptorPrivate];
    v22 = a5;
    if (a5)
    {
      v22 = *(a5 + 4256) == 0;
      v23 = 256;
      v24 = a11;
      if (!a11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0;
      v24 = a11;
      if (!a11)
      {
        goto LABEL_15;
      }
    }

    if (*(v24 + 4052))
    {
      v22 = *(a11 + 4044) == 0;
      v23 = 256;
    }

LABEL_15:
    v25 = v23 | v22;
    *&v32->_anon_228[432] = [a19 maxVertexAmplificationCount];
    [a19 sampleCoverage];
    *&v32->_anon_228[436] = v26;
    *&v32->_anon_228[444] = [a19 rasterSampleCount];
    *&v32->_anon_228[440] = [a19 sampleMask];
    v27 = [a19 isRasterizationEnabled];
    v32->_anon_228[448] = v27;
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x20000;
    }

    *&v32->_anon_228[516] = *&v32->_anon_228[516] & 0xFFFDFFFF | v28;
    v32->_anon_228[477] = [a19 supportIndirectCommandBuffers];
    if ((v25 & 0x100) == 0)
    {
LABEL_31:
      operator new();
    }

    *&v32->_anon_228[452] = [a19 tessellationOutputWindingOrder] == 1;
    *&v32->_anon_228[456] = [a19 tessellationPartitionMode];
    *&v32->_anon_228[464] = [a19 tessellationFactorStepFunction];
    *&v32->_anon_228[472] = [a19 maxTessellationFactor];
    *&v32->_anon_228[468] = [a19 tessellationFactorFormat];
    v32->_anon_228[476] = [a19 isTessellationFactorScaleEnabled];
    v29 = [a19 tessellationPartitionMode];
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v31 = (v25 & 1) == 0;
        v30 = 4;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_31;
        }

        v31 = (v25 & 1) == 0;
        v30 = 2;
      }
    }

    else
    {
      if (v29)
      {
        if (v29 != 1)
        {
          goto LABEL_31;
        }

        v30 = v25 ^ 1;
        goto LABEL_30;
      }

      v31 = (v25 & 1) == 0;
      v30 = 6;
    }

    if (v31)
    {
      ++v30;
    }

LABEL_30:
    *&v32->_anon_228[460] = v30;
    goto LABEL_31;
  }

  [a4 vendorPrivate];
  goto LABEL_5;
}

void sub_29CCA3D68(_Unwind_Exception *a1)
{
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&STACK[0x5E0]);
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&STACK[0x5D8]);
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&STACK[0x5D0]);
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&STACK[0x5C8]);
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&STACK[0x5C0]);
  _Unwind_Resume(a1);
}

id AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getRenderPipelinePerformanceStatistics(int8x16_t *a1, int8x16_t *a2, void *a3)
{
  v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!a2)
  {
    goto LABEL_20;
  }

  v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:35];
  v7 = a2[150];
  v34 = v7;
  v8 = v7.u64[1];
  if (v7.i64[0])
  {
    v31 = v5;
    if (v7.i64[1])
    {
      v9 = 127;
    }

    else
    {
      v8 = v7.i64[0];
      v9 = 63;
    }
  }

  else
  {
    if (!v7.i64[1])
    {
      goto LABEL_16;
    }

    v31 = v5;
    v9 = 127;
  }

  v10 = 0;
  v33 = vorrq_s8(a2[131], vbicq_s8(v7, a2[152]));
  v11 = (v9 ^ __clz(v8)) + 1;
  do
  {
    v13 = v10 > 0x3F;
    if ((*(&v34 | (8 * v13)) & (1 << v10)) != 0)
    {
      if ((*(&v33 | (8 * v13)) & (1 << v10)) != 0)
      {
        v12 = @"promoted";
      }

      else
      {
        v12 = @"not promoted";
      }
    }

    else
    {
      v12 = @"unused";
    }

    [v6 addObject:v12];
    ++v10;
  }

  while (v11 != v10);
  v5 = v31;
LABEL_16:
  PerformanceStatisticsDictionary = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createPerformanceStatisticsDictionary(&a2[139], @"VertexBufferPrefetch", v6);
  if (PerformanceStatisticsDictionary)
  {
    v15 = PerformanceStatisticsDictionary;
    v16 = MEMORY[0x29EDBB4A0];
    v17 = [a3 objectForKey:*MEMORY[0x29EDBB4A0]];
    if (v17)
    {
      [v15 setObject:v17 forKey:*MEMORY[0x29EDBB400]];
    }

    [v5 setObject:v15 forKey:*v16];
  }

LABEL_20:
  if (!a1)
  {
    return v5;
  }

  v18 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:35];
  v19 = a1[150];
  v34 = v19;
  v20 = v19.u64[1];
  if (v19.i64[0])
  {
    if (v19.i64[1])
    {
      v21 = 127;
    }

    else
    {
      v20 = v19.i64[0];
      v21 = 63;
    }
  }

  else
  {
    if (!v19.i64[1])
    {
      goto LABEL_34;
    }

    v21 = 127;
  }

  v22 = 0;
  v33 = vorrq_s8(a1[131], vbicq_s8(v19, a1[152]));
  v23 = (v21 ^ __clz(v20)) + 1;
  do
  {
    v25 = v22 > 0x3F;
    if ((*(&v34 | (8 * v25)) & (1 << v22)) != 0)
    {
      if ((*(&v33 | (8 * v25)) & (1 << v22)) != 0)
      {
        v24 = @"promoted";
      }

      else
      {
        v24 = @"not promoted";
      }
    }

    else
    {
      v24 = @"unused";
    }

    [v18 addObject:v24];
    ++v22;
  }

  while (v23 != v22);
LABEL_34:
  v26 = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createPerformanceStatisticsDictionary(&a1[139], @"FragmentBufferPrefetch", v18);
  if (v26)
  {
    v27 = v26;
    v28 = MEMORY[0x29EDBB430];
    v29 = [a3 objectForKey:*MEMORY[0x29EDBB430]];
    if (v29)
    {
      [v27 setObject:v29 forKey:*MEMORY[0x29EDBB400]];
    }

    [v5 setObject:v27 forKey:*v28];
  }

  return v5;
}

uint64_t AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getReflectionData(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 1688));
  v4 = *(a1 + 1648);
  v5 = *(a1 + 1656);
  v6 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v4, *(a1 + 1656), a2);
  if (!v6)
  {
    if (v5 == 4)
    {
      operator new();
    }

    v7 = &v4[4 * v5];
    v8 = *(a2 + 16);
    *v7 = *a2;
    v7[1] = v8;
    v9 = *(a1 + 1656);
    v10 = *(a1 + 1648) + 24 * v9;
    *(a1 + 1656) = v9 + 1;
    v6 = v10 + 128;
  }

  v11 = *(v6 + 16);
  if (v11)
  {
    dispatch_retain(*(v6 + 16));
  }

  os_unfair_lock_unlock((a1 + 1688));
  return v11;
}

uint64_t AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getReflectionData(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 1176));
  v4 = *(a1 + 1136);
  v5 = *(a1 + 1144);
  v6 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v4, *(a1 + 1144), a2);
  if (!v6)
  {
    if (v5 == 4)
    {
      operator new();
    }

    v7 = &v4[4 * v5];
    v8 = *(a2 + 16);
    *v7 = *a2;
    v7[1] = v8;
    v9 = *(a1 + 1144);
    v10 = *(a1 + 1136) + 24 * v9;
    *(a1 + 1144) = v9 + 1;
    v6 = v10 + 128;
  }

  v11 = *(v6 + 16);
  if (v11)
  {
    dispatch_retain(*(v6 + 16));
  }

  os_unfair_lock_unlock((a1 + 1176));
  return v11;
}

uint64_t AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getReflectionData(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 1400));
  v4 = *(a1 + 1360);
  v5 = *(a1 + 1368);
  v6 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v4, *(a1 + 1368), a2);
  if (!v6)
  {
    if (v5 == 4)
    {
      operator new();
    }

    v7 = &v4[4 * v5];
    v8 = *(a2 + 16);
    *v7 = *a2;
    v7[1] = v8;
    v9 = *(a1 + 1368);
    v10 = *(a1 + 1360) + 24 * v9;
    *(a1 + 1368) = v9 + 1;
    v6 = v10 + 128;
  }

  v11 = *(v6 + 16);
  if (v11)
  {
    dispatch_retain(*(v6 + 16));
  }

  os_unfair_lock_unlock((a1 + 1400));
  return v11;
}

unint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getRenderPipelineFlags(unint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = 2;
    if (!*(result + 3915))
    {
      v2 = 0;
    }

    v3 = v2 | *(result + 3913);
    v4 = 4;
    if (!*(result + 3916))
    {
      v4 = 0;
    }

    v5 = v3 | v4 | (16 * (*(result + 1296) != 0)) | ((*(result + 1308) != 0) << 10);
    if (*(result + 4066))
    {
      v6 = 32;
    }

    else
    {
      v6 = 32 * (*(result + 4072) != 0);
    }

    v7 = 64;
    if (!*(result + 3914))
    {
      v7 = 0;
    }

    result = v5 | v6 | v7;
  }

  if (a2)
  {
    return result & 0x577 | (8 * (a2[324] != 0)) | ((a2[327] != 0) << 9) | (a2[1028] >> 11) & 0x80;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
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
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
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

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void *std::vector<std::pair<unsigned long long,unsigned long long>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2, NSObject *a3, void *a4, int a5, uint64_t a6, int a7)
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
  AGX::MeshProgramKey::initCommon<MTLRenderPipelineDescriptor>(a1, a2);
  *(a1 + 52) &= ~0x80u;
  return [a2 supportIndirectCommandBuffers];
}

unint64_t AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 & 0x330003;
  if ((a2 & 0x330003) != 0)
  {
    os_unfair_lock_lock((a1 + 1400));
    v7 = *(a1 + 1360);
    v8 = *(a1 + 1368);
    v9 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v7, *(a1 + 1368), a3);
    if (!v9)
    {
      if (v8 == 4)
      {
        operator new();
      }

      v10 = &v7[4 * v8];
      v11 = *(a3 + 16);
      *v10 = *a3;
      v10[1] = v11;
      v12 = *(a1 + 1368);
      v13 = *(a1 + 1360) + 24 * v12;
      *(a1 + 1368) = v12 + 1;
      v9 = (v13 + 128);
    }

    if ((v4 & ~v9[1]) != 0)
    {
      v14 = *v9 | v4;
      *v9 = v14;
    }

    else
    {
      v14 = 0;
    }

    os_unfair_lock_unlock((a1 + 1400));
  }

  else
  {
    v14 = 0;
  }

  return v14 | a2 & 0xFFFFFFFFFFCCFFFCLL;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29CCA54E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::MeshProgramKey,true>(void *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, _OWORD *a4, uint64_t a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v8 = a4[3];
  v39 = a4[4];
  v9 = a4[6];
  v40 = a4[5];
  v41 = v9;
  v42 = a4[7];
  v10 = a4[1];
  v35 = *a4;
  v11 = a4[2];
  v36 = v10;
  v37 = v11;
  v30 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_14MeshProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke;
  v31 = &unk_29F341658;
  v33 = a5;
  v34 = a1;
  v38 = v8;
  v32 = a3;
  if (*a4 == 1)
  {
    v12 = [a3 airScript];
    v50 = 0uLL;
    *&v51 = 0;
    *&v50 = dispatch_data_create_map(v12, &v50 + 1, &v51);
    ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
    dispatch_release(v50);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(a4, &v54, &v28);
  }

  else
  {
    v13 = *a1;
    v14 = *(a4 + 4);
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v46 = &unk_29F342280;
    v47 = &v28;
    v15 = *(v13 + 24);
    if (v15 && *(v15 + 120) == 1)
    {
      v16 = [objc_msgSend(a3 binaryArchives];
      v17 = 0x200000000000;
      if (!v16)
      {
        v17 = 1;
      }

      atomic_fetch_or(v15, v17);
      v18 = *(v13 + 24);
      v19 = [a3 destinationBinaryArchive];
      v20 = 0x400000000000;
      if (!v19)
      {
        v20 = 1;
      }

      atomic_fetch_or(v18, v20);
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

    v48 = 0;
    v49 = 0;
    ((*a2)[2])(a2, &v49, &v48);
    v21 = dispatch_data_create(v49, v48, 0, 0);
    [a3 setDriverKeyData:v21];
    if ([a3 airScript])
    {
      v22 = [a3 airScript];
      v50 = 0uLL;
      *&v51 = 0;
      *&v50 = dispatch_data_create_map(v22, &v50 + 1, &v51);
      ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
      dispatch_release(v50);
      v50 = v54;
      v51 = v55;
      [a3 setVendorPluginFunctionId:&v50];
    }

    *&v54 = MEMORY[0x29EDCA5F8];
    *(&v54 + 1) = 3221225472;
    *&v55 = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v55 + 1) = &unk_29F3422D0;
    v56 = a3;
    v57 = &v43;
    if ([a3 function])
    {
      v23 = mach_absolute_time();
      v24 = *v13;
      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v51 + 1) = &unk_29F342320;
      v52 = &v54;
      v53 = v23;
      [v24 compileFunctionRequest:a3 compilerTask:v14 completionHandler:&v50];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v51 + 1) = &unk_29F3422F8;
      v52 = &v54;
      v25 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v26 = *v13;
      v27 = [a3 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), &v50}];
      }

      else
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), &v50}];
      }
    }

    dispatch_release(v21);
  }
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::MeshProgramKey>(uint64_t *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, uint64_t a4, uint64_t a5)
{
  v13[5] = *MEMORY[0x29EDCA608];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileFunction_ImplINS_14MeshProgramKeyEEEvRKT_P29MTLCompileFunctionRequestDataRKNS5_21DriverRequestDataImplILb1EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplILb1EEEE_block_invoke;
  v12[3] = &unk_29F341710;
  v12[4] = a5;
  if (*a4 == 1)
  {
    v10 = 0;
    v11 = 0;
    object = dispatch_data_create_map([a3 airScript], &v10, &v11);
    ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, v13, &v10[*v10]);
    dispatch_release(object);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCDeserializedReply>(a4, v13, v12);
  }

  else
  {
    v7 = *a1;
    v8 = *(a4 + 32);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v13[3] = &unk_29F342280;
    v13[4] = v12;
    AGX::Compiler::compileProgram<AGX::MeshProgramKey,AGCDeserializedReply>(v7, a2, a3, v8, v13);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_3(uint64_t a1)
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

uint64_t AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::GeometrySharedKey(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A23F7C68;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *a1 = &unk_2A23F7C20;
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  v8 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 96) = v8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v12 = *(a2 + 128);
  v11 = *(a2 + 136);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_14:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void sub_29CCA5EB8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  *v1 = v2;
  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_64c26_ZTSN3AGX14MeshProgramKeyE(std::string *a1, uint64_t a2)
{
  AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::GeometrySharedKey(&a1[2].__r_.__value_.__r.__words[2], a2 + 64);
  a1[2].__r_.__value_.__r.__words[2] = &unk_2A23FA740;
  if (*(a2 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 9, *(a2 + 216), *(a2 + 224));
    if ((*(a2 + 263) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(a1 + 10, *(a2 + 240), *(a2 + 248));
    goto LABEL_6;
  }

  v4 = *(a2 + 216);
  a1[9].__r_.__value_.__r.__words[2] = *(a2 + 232);
  *&a1[9].__r_.__value_.__l.__data_ = v4;
  if (*(a2 + 263) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 240);
  a1[10].__r_.__value_.__r.__words[2] = *(a2 + 256);
  *&a1[10].__r_.__value_.__l.__data_ = v5;
LABEL_6:
  a1[11].__r_.__value_.__s.__data_[0] = *(a2 + 264);
  a1[2].__r_.__value_.__r.__words[2] = &unk_2A23F7CA8;
  a1[11].__r_.__value_.__l.__size_ = *(a2 + 272);
}

uint64_t AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::consolidate(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 41) != 1)
  {
    return a2;
  }

  if (!*(a2 + 8))
  {
    v7 = a4;
    v9 = *(a2 + 24);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 24) = v9;
    *(a2 + 24) = 0;
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_release(v8);
    goto LABEL_9;
  }

  os_unfair_lock_lock(a1 + 350);
  v7 = VectorMap<AGX::MeshProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::MeshProgramVariant>,4u>::operator[](a1, a3);
  if (*v7)
  {
    os_unfair_lock_unlock(a1 + 350);
    dispatch_group_wait(*v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = dispatch_group_create();
  *v7 = v12;
  dispatch_group_enter(v12);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = v13;

  *(v7 + 24) = [v14 copy];
  if (*(v7 + 8))
  {

    *(v7 + 32) = 0;
  }

  else
  {
    *(v7 + 40) = 0;
  }

  dispatch_group_leave(*v7);
  *(a2 + 8) = 0;
  os_unfair_lock_unlock(a1 + 350);
  v8 = *a2;
  if (*a2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = *(a2 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MEMORY[0x29ED520D0](a2, 0x10A0C405D73F519);
  return v7;
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::MeshProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29CCA621C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_14MeshProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke(uint64_t a1, void *a2, int8x16_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v7 = a3[2];
  v20[0] = vextq_s8(a3[1], a3[1], 8uLL);
  v20[1] = v7;
  v21 = a3[3].i64[0];
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(&v25, v6, a2, v20, *(a1 + 112), a1 + 120);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  v9 = a3[3];
  *v24 = a3[2];
  *&v24[16] = v9;
  AGCDeserializedReply::AGCDeserializedReply(v20);
  if (!*&v24[8])
  {
    v10 = [*(a1 + 32) function];
    if (!AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(a2, [objc_msgSend(v10 "name")], v20))
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = [objc_msgSend(v10 "name")];
      AGCReplyArray::getDebugStringAvailableNames(buf, a2);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      fprintf(v11, "AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", "agxa_user_shader_factory_template.hpp", 182, "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke", v12, v13);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v16;
        v31 = 2080;
        v32 = v17;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v14 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&v24[8] = 2;
      *&v24[16] = @"Internal error during function compilation.";
    }
  }

  memset(buf, 0, 24);
  if (v27 == 1)
  {
    *buf = v25;
    *&buf[16] = v26;
    v26 = 0;
    v25 = 0uLL;
  }

  else
  {
    if (v27)
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      AGCDeserializedReply::~AGCDeserializedReply(v20);
      if (v27 == -1)
      {
        _Unwind_Resume(v18);
      }

      (off_2A23F59F0[v27])(v20, &v25);
      _Unwind_Resume(v18);
    }

    *&v24[8] = v25;
  }

  (*(*(a1 + 40) + 16))();
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v20);
  if (v27 != -1)
  {
    (off_2A23F59F0[v27])(v20, &v25);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_14MeshProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CCA69B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

uint64_t AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_41;
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_41;
  }

  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_41;
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  v10 = *(a2 + 96);
  v9 = *(a2 + 104);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_41:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = *(a2 + 120);
  v12 = *(a2 + 136);
  *(result + 152) = *(a2 + 152);
  *(result + 136) = v12;
  *(result + 120) = v11;
  *(result + 160) = *(a2 + 160);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = *(a2 + 176);
  *(result + 184) = *(a2 + 184);
  *(result + 192) = *(a2 + 192);
  v13 = *(a2 + 200);
  v14 = *(a2 + 208);
  *(result + 216) = 0;
  *(result + 200) = v13;
  *(result + 208) = v14;
  *(result + 224) = 0;
  *(result + 232) = 0;
  v16 = *(a2 + 216);
  v15 = *(a2 + 224);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_42;
  }

  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  v18 = *(a2 + 240);
  v17 = *(a2 + 248);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_42;
  }

  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 280) = 0;
  v20 = *(a2 + 264);
  v19 = *(a2 + 272);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_42;
  }

  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 304) = 0;
  v22 = *(a2 + 288);
  v21 = *(a2 + 296);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_42:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 312) = *(a2 + 312);
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 320) = 0;
  v24 = *(a2 + 320);
  v23 = *(a2 + 328);
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_43;
  }

  *(result + 344) = 0;
  *(result + 352) = 0;
  *(result + 360) = 0;
  v26 = *(a2 + 344);
  v25 = *(a2 + 352);
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_43;
  }

  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = 0;
  v28 = *(a2 + 368);
  v27 = *(a2 + 376);
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_43;
  }

  *(result + 392) = 0;
  *(result + 400) = 0;
  *(result + 408) = 0;
  v30 = *(a2 + 392);
  v29 = *(a2 + 400);
  if (v29 != v30)
  {
    if (((v29 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_43:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 416) = *(a2 + 416);
  *(result + 424) = *(a2 + 424);
  *(result + 432) = *(a2 + 432);
  *(result + 440) = *(a2 + 440);
  *(result + 448) = *(a2 + 448);
  *(result + 456) = *(a2 + 456);
  return result;
}

void sub_29CCA6F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v17 = *(v10 + 368);
  if (v17)
  {
    *(v10 + 376) = v17;
    operator delete(v17);
    v18 = *(v10 + 344);
    if (!v18)
    {
LABEL_3:
      v19 = *(v10 + 320);
      if (!v19)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = *(v10 + 344);
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 352) = v18;
  operator delete(v18);
  v19 = *(v10 + 320);
  if (!v19)
  {
LABEL_4:
    v20 = *(v10 + 288);
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v10 + 328) = v19;
  operator delete(v19);
  v20 = *(v10 + 288);
  if (!v20)
  {
LABEL_5:
    v21 = *(v10 + 264);
    if (!v21)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v10 + 296) = v20;
  operator delete(v20);
  v21 = *(v10 + 264);
  if (!v21)
  {
LABEL_6:
    v22 = *v15;
    if (!*v15)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v10 + 272) = v21;
  operator delete(v21);
  v22 = *v15;
  if (!*v15)
  {
LABEL_7:
    v23 = *v14;
    if (!*v14)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v10 + 248) = v22;
  operator delete(v22);
  v23 = *v14;
  if (!*v14)
  {
LABEL_8:
    v24 = *v13;
    if (!*v13)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v10 + 224) = v23;
  operator delete(v23);
  v24 = *v13;
  if (!*v13)
  {
LABEL_9:
    v25 = *v12;
    if (!*v12)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v10 + 104) = v24;
  operator delete(v24);
  v25 = *v12;
  if (!*v12)
  {
LABEL_10:
    v26 = *v11;
    if (!*v11)
    {
LABEL_22:
      v27 = *a10;
      if (*a10)
      {
        *(v10 + 32) = v27;
        operator delete(v27);
        v28 = *v10;
        if (!*v10)
        {
LABEL_24:
          _Unwind_Resume(exception_object);
        }
      }

      else
      {
        v28 = *v10;
        if (!*v10)
        {
          goto LABEL_24;
        }
      }

      operator delete(v28);
      _Unwind_Resume(exception_object);
    }

LABEL_21:
    *(v10 + 56) = v26;
    operator delete(v26);
    goto LABEL_22;
  }

LABEL_20:
  *(v10 + 80) = v25;
  operator delete(v25);
  v26 = *v11;
  if (!*v11)
  {
    goto LABEL_22;
  }

  goto LABEL_21;
}

void sub_29CCA70EC()
{
  if (!*v0)
  {
    JUMPOUT(0x29CCA70B4);
  }

  JUMPOUT(0x29CCA70ACLL);
}

void sub_29CCA7104()
{
  if (*v0)
  {
    JUMPOUT(0x29CCA70E0);
  }

  JUMPOUT(0x29CCA70C8);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v9 = *(a1 + 80);
    v8 = *(a1 + 88);
    v10 = *v9;
    memset(v13, 0, sizeof(v13));
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::constructRenderPipeline<MTLRenderPipelineDescriptor>(v10, v8, a1 + 120, 0, 0, v13, *(v9 + 24), a2, a3, *(v9 + 16), *(a1 + 96), a1 + 152, *(v9 + 96), 0, *(v9 + 120), *(v9 + 112), *(a1 + 32), *(v9 + 72), *(a1 + 40));
  }

  v5 = *(a1 + 64);
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

    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a5 forKey:*MEMORY[0x29EDB9ED8]];
    v12 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v6 userInfo:v11];
    (*(v5 + 16))(v5, 0, 0);
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2, os_unfair_lock_s *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, void *a9, NSObject *a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v17 = a15;
  v151 = *MEMORY[0x29EDCA608];
  if (a9)
  {
    v22 = [a9 vendorPrivate];
    v94 = 0;
    v95 = &v94;
    v96 = 0x3052000000;
    v97 = __Block_byref_object_copy__1933;
    v98 = __Block_byref_object_dispose__1934;
    v99 = 0;
    v82 = [a2 objectFunction];
    AGX::ObjectProgramKey::ObjectProgramKey(&v135, a10, [a2 objectLinkedFunctions], a8, a11, a12);
    v79 = a8;
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

    HIDWORD(v141) = HIDWORD(v141) & 0xFFFFFFFB | v26;
    v27 = [objc_msgSend(v23 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}];
    HIDWORD(v141) = HIDWORD(v141) & 0xFC0003FF | (v27 << 10);
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

    HIDWORD(v141) = v28 | HIDWORD(v141) & 0xF7FFFDFF | v30;
    v31 = [a2 objectBuffers];
    v32 = 0;
    v33 = 0;
    v83 = (v22 + 8);
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
    v140 = v32;
    v36 = [a2 supportIndirectCommandBuffers];
    DWORD2(v145) = DWORD2(v145) & 0xFFFFFFFE | v36;
    HIDWORD(v142) = [a2 maxTotalThreadsPerObjectThreadgroup];
    LODWORD(v143) = 0;
    v37 = [a2 maxVertexAmplificationCount];
    LODWORD(v142) = v142 & 0xFFFFFF87 | (8 * (v37 & 0xF));
    HIDWORD(v141) &= ~0x80u;
    [a2 supportIndirectCommandBuffers];
    v38 = (v22 + 8);
    v39 = (HIDWORD(v141) & 0x8BFFFEFF | (*(*&a3[212]._os_unfair_lock_opaque + 16608) << 26) & 0xBFFFFFFF | (((*(*&a3[212]._os_unfair_lock_opaque + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
    HIDWORD(v141) = v39;
    LODWORD(v142) = v142 & 0xFFFFFC7F;
    v150 = a4 & 0xC00C0000;
    if ((a4 & 0x40000) != 0)
    {
      if (AGX::isTelemetryEnabled(void)::once != -1)
      {
        dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
      }

      v40 = 1;
      v39 = HIDWORD(v141);
    }

    else
    {
      v40 = 0;
    }

    HIDWORD(v141) = v40 | (a4 >> 21) & 8 | v39 & 0xFFFFFFF4;
    ReflectionKey::initGPUCompilerSPIOptionsHash(&block, [a2 gpuCompilerSPIOptions]);
    v133 = block;
    v134 = v101;
    CompileOptions = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(v83, a4 | 3, &v133);
    v93 = 0;
    v48 = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(v83, &v135, &v93, CompileOptions, (a5 | a6) != 0);
    v49 = v48;
    if (v93 == 1)
    {
      v77 = v140;
      v76 = BYTE8(v145);
      v50 = [objc_msgSend(a2 "pipelineLibrary")];
      v51 = [a2 pipelineLibrary];
      if ([v51 pipelineCache] && (objc_msgSend(v51, "disableRunTimeCompilation") & 1) != 0 || (v52 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v52)
      {
        LOBYTE(v53) = 1;
      }

      else
      {
        v53 = (a4 >> 34) & 1;
      }

      if (a6)
      {
        v55 = 1;
      }

      else
      {
        v55 = v53;
      }

      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      v74 = CompileOptions;
      v78 = v49;
      v56 = objc_opt_new();
      [v56 setUseAIRNTInterfaces:*(a1 + 24)];
      [v56 setSync:a13 ^ 1u];
      [v56 setFunction:v82];
      [v56 setFrameworkData:a10];
      [v56 setPipelineCache:v50];
      [v56 setDestinationBinaryArchive:a5];
      [v56 setArchiverId:a7];
      [v56 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
      [v56 setPipelineOptions:a4 | 3];
      if ((a4 & 0x330003) == 0)
      {
        [v56 setPipelineOptions:{objc_msgSend(v56, "pipelineOptions") | 0x8000}];
      }

      v57 = [a2 newPipelineScript];
      if (v57)
      {
        [v56 setAirScript:v57];
        dispatch_release(v57);
      }

      [v56 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
      v58 = [a2 objectLinkedFunctions];
      [v56 setVisibleFunctions:{objc_msgSend(v58, "functions")}];
      [v56 setVisibleFunctionGroups:{objc_msgSend(v58, "groups")}];
      [v56 setPrivateVisibleFunctions:{objc_msgSend(v58, "privateFunctions")}];
      v81 = v55;
      v59 = a3;
      v60 = a1;
      LOBYTE(v85) = 0;
      *(&v85 + 1) = 0;
      v86[0] = 0;
      *&v87 = 0;
      v89 = 0uLL;
      v61 = [a2 maxObjectCallStackDepth];
      v62 = [a2 objectLinkedFunctions];
      v63 = [a2 supportIndirectCommandBuffers];
      v64 = [a2 supportAddingObjectBinaryFunctions];
      v65 = [a2 gpuCompilerSPIOptions];
      v66 = [(os_unfair_lock_s *)v59 requiresRaytracingEmulation];
      BYTE8(v87) = v66;
      *&v88 = v61;
      *(&v88 + 1) = v62;
      *&v90 = a4;
      *(&v90 + 1) = v79;
      v91 = v59;
      LOBYTE(v92) = v63;
      BYTE1(v92) = v64;
      *(&v92 + 1) = v65;
      if (a6)
      {
        v67 = *a6;
        v68 = *(a6 + 16);
        LOBYTE(v85) = 1;
        *(&v85 + 1) = v67;
        v86[0] = v68;
        v86[1] = 8;
      }

      *&v87 = a14;
      v117 = MEMORY[0x29EDCA5F8];
      v118 = 3221225472;
      v130 = v133;
      v119 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke;
      v120 = &unk_29F341850;
      v128 = a13;
      v69 = v60;
      *&v125 = v60;
      *(&v125 + 1) = v78;
      v129 = v76 & 1;
      *&v126 = v83;
      *(&v126 + 1) = v75;
      v131 = v134;
      v121 = v82;
      v122 = v59;
      v124 = &v94;
      v123 = a2;
      v127 = v77;
      v132 = v81;
      if ((v66 & 1) == 0 && (hasAirLinkedIntersectionFunction = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v62), v69 = v60, hasAirLinkedIntersectionFunction))
      {
        v104 = v89;
        __p = v90;
        v106 = v91;
        v107 = v92;
        block = v85;
        v101 = *v86;
        v102 = v87;
        v103 = v88;
        AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::ObjectProgramKey,true>(v60, &v135, v56, &block, &v117);
      }

      else
      {
        AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::ObjectProgramKey>(v69, &v135, v56, &v85, &v117);
      }

      v38 = v83;
      v49 = v78;
    }

    else if ((CompileOptions & 0x330003) != 0)
    {
      v54 = *a1;
      v117 = MEMORY[0x29EDCA5F8];
      v118 = 3221225472;
      v119 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2;
      v120 = &unk_29F341630;
      v125 = v133;
      v126 = v134;
      v122 = v83;
      v121 = a3;
      v123 = CompileOptions;
      v124 = v48;
      [*v54 reflectionWithFunction:v82 options:CompileOptions & 0x330003 sync:a13 ^ 1u completionHandler:&v117];
    }

    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 3321888768;
    *&v101 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_3;
    *(&v101 + 1) = &unk_2A23F6D88;
    *&v103 = v38;
    *(&v103 + 1) = v49;
    AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::GeometrySharedKey(&v104, &v135);
    *&v104 = &unk_2A23F7BD8;
    v114 = v150;
    v115 = v133;
    v116 = v134;
    *&v102 = a15;
    *(&v102 + 1) = &v94;
    v71 = *v49;
    if (a13)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_group_notify(v71, global_queue, &block);
    }

    else
    {
      dispatch_group_wait(v71, 0xFFFFFFFFFFFFFFFFLL);
      (v101)(&block);
    }

    *&v104 = &unk_2A23F7B50;
    if (v112)
    {
      v113 = v112;
      operator delete(v112);
    }

    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    *&v104 = &unk_2A23F7B98;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    v135 = &unk_2A23F7B50;
    if (v148)
    {
      v149 = v148;
      operator delete(v148);
    }

    if (v146)
    {
      v147 = v146;
      operator delete(v146);
    }

    if (SBYTE7(v145) < 0)
    {
      operator delete(v144);
    }

    v135 = &unk_2A23F7B98;
    if (v137)
    {
      v138 = v137;
      operator delete(v137);
    }
  }

  else
  {
    {
      v17 = a15;
      if (v73)
      {
        AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor *,AGXG18PFamilyDevice *,unsigned long,AGXG18PFamilyBinaryArchive *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ArchiveLookupInfo const*,NSObject  {objcproto16OS_dispatch_data}*,NSArray *,_MTLFunction *,NSObject  {objcproto16OS_dispatch_data}*,BOOL,BOOL,BOOL,objc_object  {objcproto16MTL4CompilerTask}*,void({block_pointer})(AGX::HAL300::ObjectProgramVariant *,ReflectionKey,MTLCompilerError,NSString *))::geometryContextRequiresOS = 1;
        v17 = a15;
      }
    }

    if (AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLRenderPipelineDescriptor>(MTLRenderPipelineDescriptor *,AGXG18PFamilyDevice *,unsigned long,AGXG18PFamilyBinaryArchive *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ArchiveLookupInfo const*,NSObject  {objcproto16OS_dispatch_data}*,NSArray *,_MTLFunction *,NSObject  {objcproto16OS_dispatch_data}*,BOOL,BOOL,BOOL,objc_object  {objcproto16MTL4CompilerTask}*,void({block_pointer})(AGX::HAL300::ObjectProgramVariant *,ReflectionKey,MTLCompilerError,NSString *))::geometryContextRequiresOS != 1)
    {
      block = 0u;
      v101 = 0u;
      (*(v17 + 16))(v17, 0, &block, 0, &stru_2A23FAE10);
      return;
    }

    v41 = v17;
    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v97 = 0;
    *&v133 = 0;
    *(&v133 + 1) = &v133;
    v134 = 0x2020000000uLL;
    v117 = 0;
    v118 = &v117;
    v119 = 0x3052000000;
    v120 = __Block_byref_object_copy__1933;
    v121 = __Block_byref_object_dispose__1934;
    v122 = 0;
    DWORD2(v85) = 26;
    v86[1] = 0;
    *&v87 = 0;
    v86[0] = 0;
    *&v85 = &unk_2A23F6D10;
    if (a12)
    {
      v42 = 2;
    }

    else
    {
      v42 = 0;
    }

    DWORD2(v87) = v42 | a11;
    v93 = 0;
    v43 = AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::PassthroughObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(*(*&a3[212]._os_unfair_lock_opaque + 72), &v85, &v93);
    if (v93 == 1)
    {
      v44 = *a1;
      *&block = MEMORY[0x29EDCA5F8];
      *(&block + 1) = 3321888768;
      *&v101 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke;
      *(&v101 + 1) = &unk_2A23F6CD0;
      *&v102 = a3;
      *(&v102 + 1) = &v94;
      *&v104 = &unk_2A23F6D50;
      DWORD2(v104) = DWORD2(v85);
      *&v106 = 0;
      __p = 0uLL;
      if (v86[1] != v86[0])
      {
        if (((v86[1] - v86[0]) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      DWORD2(v106) = DWORD2(v87);
      *&v103 = &v133;
      *(&v103 + 1) = &v117;
      *&v104 = &unk_2A23F6D10;
      *&v107 = v43;
      v45 = *(v44 + 8);
      v46 = objc_opt_new();
      [v46 setSync:1];
      [v46 setPipelineCache:v45];
      [v46 setBinaryArchives:0];
      v135 = MEMORY[0x29EDCA5F8];
      v136 = 3221225472;
      v137 = ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
      v138 = &unk_29F342280;
      p_block = &block;
      AGX::Compiler::compileProgram<AGX::PassthroughObjectProgramKey,AGCDeserializedReply>(v44, &v85, v46, &v135);

      *&v104 = &unk_2A23F6D50;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    v135 = MEMORY[0x29EDCA5F8];
    v136 = 3221225472;
    v137 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2;
    v138 = &unk_29F341828;
    v143 = v43;
    v140 = &v94;
    p_block = v41;
    v144 = 0u;
    v145 = 0u;
    v141 = &v133;
    v142 = &v117;
    dispatch_group_wait(*v43, 0xFFFFFFFFFFFFFFFFLL);
    (v137)(&v135);
    *&v85 = &unk_2A23F6D50;
    if (v86[0])
    {
      v86[1] = v86[0];
      operator delete(v86[0]);
    }

    _Block_object_dispose(&v117, 8);
    _Block_object_dispose(&v133, 8);
  }

  _Block_object_dispose(&v94, 8);
}

void sub_29CCA80A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  AGX::ObjectProgramKey::~ObjectProgramKey(v39);
  AGX::ObjectProgramKey::~ObjectProgramKey(&STACK[0x2D8]);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

unint64_t AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 & 0x330003;
  if ((a2 & 0x330003) != 0)
  {
    os_unfair_lock_lock((a1 + 1176));
    v7 = *(a1 + 1136);
    v8 = *(a1 + 1144);
    v9 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v7, *(a1 + 1144), a3);
    if (!v9)
    {
      if (v8 == 4)
      {
        operator new();
      }

      v10 = &v7[4 * v8];
      v11 = *(a3 + 16);
      *v10 = *a3;
      v10[1] = v11;
      v12 = *(a1 + 1144);
      v13 = *(a1 + 1136) + 24 * v12;
      *(a1 + 1144) = v12 + 1;
      v9 = (v13 + 128);
    }

    if ((v4 & ~v9[1]) != 0)
    {
      v14 = *v9 | v4;
      *v9 = v14;
    }

    else
    {
      v14 = 0;
    }

    os_unfair_lock_unlock((a1 + 1176));
  }

  else
  {
    v14 = 0;
  }

  return v14 | a2 & 0xFFFFFFFFFFCCFFFCLL;
}

uint64_t AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(os_unfair_lock_s *a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5)
{
  *a3 = 0;
  if ((a4 & 0x400000004) != 0 || a5)
  {
    operator new();
  }

  v7 = a4;
  os_unfair_lock_lock(a1 + 294);
  v9 = VectorMap<AGX::ObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ObjectProgramVariant>,4u>::operator[](a1, a2);
  if (!*v9)
  {
    v11 = dispatch_group_create();
    *v9 = v11;
LABEL_10:
    dispatch_group_enter(v11);
    *a3 = 1;
    goto LABEL_13;
  }

  if (*(v9 + 40) == 1)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(v9 + 8) = 0;
    *(v9 + 16) = 0;

    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    v11 = *v9;
    goto LABEL_10;
  }

  if ((*&v7 & 0x330003) != 0)
  {
    dispatch_group_enter(*v9);
  }

LABEL_13:
  os_unfair_lock_unlock(a1 + 294);
  return v9;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29CCA894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::ObjectProgramKey,true>(void *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, _OWORD *a4, uint64_t a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v8 = a4[3];
  v39 = a4[4];
  v9 = a4[6];
  v40 = a4[5];
  v41 = v9;
  v42 = a4[7];
  v10 = a4[1];
  v35 = *a4;
  v11 = a4[2];
  v36 = v10;
  v37 = v11;
  v30 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_16ObjectProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke;
  v31 = &unk_29F341658;
  v33 = a5;
  v34 = a1;
  v38 = v8;
  v32 = a3;
  if (*a4 == 1)
  {
    v12 = [a3 airScript];
    v50 = 0uLL;
    *&v51 = 0;
    *&v50 = dispatch_data_create_map(v12, &v50 + 1, &v51);
    ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
    dispatch_release(v50);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(a4, &v54, &v28);
  }

  else
  {
    v13 = *a1;
    v14 = *(a4 + 4);
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v46 = &unk_29F342280;
    v47 = &v28;
    v15 = *(v13 + 24);
    if (v15 && *(v15 + 120) == 1)
    {
      v16 = [objc_msgSend(a3 binaryArchives];
      v17 = 0x200000000000;
      if (!v16)
      {
        v17 = 1;
      }

      atomic_fetch_or(v15, v17);
      v18 = *(v13 + 24);
      v19 = [a3 destinationBinaryArchive];
      v20 = 0x400000000000;
      if (!v19)
      {
        v20 = 1;
      }

      atomic_fetch_or(v18, v20);
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

    v48 = 0;
    v49 = 0;
    ((*a2)[2])(a2, &v49, &v48);
    v21 = dispatch_data_create(v49, v48, 0, 0);
    [a3 setDriverKeyData:v21];
    if ([a3 airScript])
    {
      v22 = [a3 airScript];
      v50 = 0uLL;
      *&v51 = 0;
      *&v50 = dispatch_data_create_map(v22, &v50 + 1, &v51);
      ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
      dispatch_release(v50);
      v50 = v54;
      v51 = v55;
      [a3 setVendorPluginFunctionId:&v50];
    }

    *&v54 = MEMORY[0x29EDCA5F8];
    *(&v54 + 1) = 3221225472;
    *&v55 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v55 + 1) = &unk_29F3422D0;
    v56 = a3;
    v57 = &v43;
    if ([a3 function])
    {
      v23 = mach_absolute_time();
      v24 = *v13;
      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v51 + 1) = &unk_29F342320;
      v52 = &v54;
      v53 = v23;
      [v24 compileFunctionRequest:a3 compilerTask:v14 completionHandler:&v50];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v51 + 1) = &unk_29F3422F8;
      v52 = &v54;
      v25 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v26 = *v13;
      v27 = [a3 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), &v50}];
      }

      else
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), &v50}];
      }
    }

    dispatch_release(v21);
  }
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::ObjectProgramKey>(uint64_t *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v24 = MEMORY[0x29EDCA5F8];
  v25 = 3221225472;
  v26 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileFunction_ImplINS_16ObjectProgramKeyEEEvRKT_P29MTLCompileFunctionRequestDataRKNS5_21DriverRequestDataImplILb1EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplILb1EEEE_block_invoke;
  v27 = &unk_29F341710;
  v28 = a5;
  if (*a4 == 1)
  {
    v8 = [a3 airScript];
    object[0] = 0;
    object[1] = 0;
    *&v37 = 0;
    object[0] = dispatch_data_create_map(v8, &object[1], &v37);
    ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v40, (object[1] + object[1]->isa));
    dispatch_release(object[0]);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCDeserializedReply>(a4, &v40, &v24);
  }

  else
  {
    v9 = *a1;
    v10 = *(a4 + 32);
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 3221225472;
    v31 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v32 = &unk_29F342280;
    v33 = &v24;
    v11 = *(v9 + 24);
    if (v11 && *(v11 + 120) == 1)
    {
      v12 = [objc_msgSend(a3 binaryArchives];
      v13 = 0x200000000000;
      if (!v12)
      {
        v13 = 1;
      }

      atomic_fetch_or(v11, v13);
      v14 = *(v9 + 24);
      v15 = [a3 destinationBinaryArchive];
      v16 = 0x400000000000;
      if (!v15)
      {
        v16 = 1;
      }

      atomic_fetch_or(v14, v16);
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

    v34 = 0;
    v35 = 0;
    ((*a2)[2])(a2, &v35, &v34);
    v17 = dispatch_data_create(v35, v34, 0, 0);
    [a3 setDriverKeyData:v17];
    if ([a3 airScript])
    {
      v18 = [a3 airScript];
      object[0] = 0;
      object[1] = 0;
      *&v37 = 0;
      object[0] = dispatch_data_create_map(v18, &object[1], &v37);
      ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v40, (object[1] + object[1]->isa));
      dispatch_release(object[0]);
      *object = v40;
      v37 = v41;
      [a3 setVendorPluginFunctionId:object];
    }

    *&v40 = MEMORY[0x29EDCA5F8];
    *(&v40 + 1) = 3221225472;
    *&v41 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v41 + 1) = &unk_29F3422D0;
    v42 = a3;
    v43 = &v29;
    if ([a3 function])
    {
      v19 = mach_absolute_time();
      v20 = *v9;
      object[0] = MEMORY[0x29EDCA5F8];
      object[1] = 3221225472;
      *&v37 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v37 + 1) = &unk_29F342320;
      v38 = &v40;
      v39 = v19;
      [v20 compileFunctionRequest:a3 compilerTask:v10 completionHandler:object];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      object[0] = MEMORY[0x29EDCA5F8];
      object[1] = 3221225472;
      *&v37 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v37 + 1) = &unk_29F3422F8;
      v38 = &v40;
      v21 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v22 = *v9;
      v23 = [a3 driverKeyData];
      if (v21)
      {
        [v22 compileRequest:v23 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), object}];
      }

      else
      {
        [v22 compileRequest:v23 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), object}];
      }
    }

    dispatch_release(v17);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(*(a1 + 40), *(a1 + 48), a3, a1 + 64, a2);
  v4 = **(a1 + 56);

  dispatch_group_leave(v4);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE26createObjectProgramVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_13ObjectProgramESL_bbbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_3(uint64_t a1)
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

uint64_t AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::GeometrySharedKey(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A23F7B98;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *a1 = &unk_2A23F7B50;
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  v8 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 96) = v8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v12 = *(a2 + 128);
  v11 = *(a2 + 136);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_14:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void sub_29CCA962C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  *v1 = v2;
  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_64c28_ZTSN3AGX16ObjectProgramKeyE(uint64_t a1)
{
  *(a1 + 64) = &unk_2A23F7B50;
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 64) = &unk_2A23F7B98;
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;

    operator delete(v4);
  }
}

uint64_t __copy_helper_block_e8_64c28_ZTSN3AGX16ObjectProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::GeometrySharedKey(a1 + 64, a2 + 64);
  *(a1 + 64) = &unk_2A23F7BD8;
  *(a1 + 216) = *(a2 + 216);
  return result;
}

uint64_t AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::consolidate(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 41) != 1)
  {
    return a2;
  }

  if (!*(a2 + 8))
  {
    v7 = a4;
    v9 = *(a2 + 24);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 24) = v9;
    *(a2 + 24) = 0;
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_release(v8);
    goto LABEL_9;
  }

  os_unfair_lock_lock(a1 + 294);
  v7 = VectorMap<AGX::ObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ObjectProgramVariant>,4u>::operator[](a1, a3);
  if (*v7)
  {
    os_unfair_lock_unlock(a1 + 294);
    dispatch_group_wait(*v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = dispatch_group_create();
  *v7 = v12;
  dispatch_group_enter(v12);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = v13;

  *(v7 + 24) = [v14 copy];
  if (*(v7 + 8))
  {

    *(v7 + 32) = 0;
  }

  else
  {
    *(v7 + 40) = 0;
  }

  dispatch_group_leave(*v7);
  *(a2 + 8) = 0;
  os_unfair_lock_unlock(a1 + 294);
  v8 = *a2;
  if (*a2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = *(a2 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MEMORY[0x29ED520D0](a2, 0x10A0C405D73F519);
  return v7;
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::ObjectProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t VectorMap<AGX::ObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ObjectProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 848);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 840);
    v7 = *(a2 + 152);
    v8 = v6;
    while (!AGX::Impl::ObjectProgramKey::operator==(a2, v8) || v7 != *(v8 + 152))
    {
      ++v5;
      v8 += 160;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v9 = v6 + 48 * v5;
  }

  else
  {
    v6 = *(a1 + 840);
LABEL_8:
    v10 = *(v6 + 832);
    if (v10)
    {
      v11 = *(a2 + 152);
      v12 = 1;
      while (1)
      {
        if (AGX::Impl::ObjectProgramKey::operator==(a2, v10) && v11 == v10[19])
        {
          v12 = 0;
          goto LABEL_28;
        }

        if (AGX::Impl::ObjectProgramKey::operator==(a2, (v10 + 20)) && v11 == v10[39])
        {
          goto LABEL_28;
        }

        if (AGX::Impl::ObjectProgramKey::operator==(a2, (v10 + 40)) && v11 == v10[59])
        {
          break;
        }

        if (AGX::Impl::ObjectProgramKey::operator==(a2, (v10 + 60)) && v11 == v10[79])
        {
          v12 = 3;
          goto LABEL_28;
        }

        v10 = v10[104];
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      v12 = 2;
LABEL_28:
      v9 = &v10[6 * v12];
    }

    else
    {
LABEL_20:
      if (v4 == 4)
      {
        operator new();
      }

      v13 = v6 + 160 * v4;
      *(v13 + 8) = *(a2 + 8);
      if (v13 == a2)
      {
        v15 = *(a2 + 40);
        *(v13 + 56) = *(a2 + 56);
        *(v13 + 40) = v15;
        std::string::operator=((v13 + 72), (a2 + 72));
        *(v13 + 96) = *(a2 + 96);
      }

      else
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
        v14 = *(a2 + 40);
        *(v13 + 56) = *(a2 + 56);
        *(v13 + 40) = v14;
        std::string::operator=((v13 + 72), (a2 + 72));
        *(v13 + 96) = *(a2 + 96);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v13 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 5);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v13 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 5);
      }

      *(v13 + 152) = *(a2 + 152);
      v16 = *(a1 + 848);
      v9 = *(a1 + 840) + 48 * v16;
      *(a1 + 848) = v16 + 1;
    }
  }

  return v9 + 640;
}

BOOL AGX::Impl::ObjectProgramKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 95);
  if (v2 >= 0)
  {
    v3 = *(a1 + 95);
  }

  else
  {
    v3 = *(a1 + 80);
  }

  v4 = *(a2 + 95);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 80);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 72);
  }

  else
  {
    v7 = *(a1 + 72);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 72);
  }

  else
  {
    v9 = *(a2 + 72);
  }

  return !memcmp(v7, v9, v3) && *(a1 + 56) == *(a2 + 56) && *(a1 + 52) == *(a2 + 52) && *(a1 + 40) == *(a2 + 40) && *(a1 + 96) == *(a2 + 96) && *(a1 + 112) == *(a1 + 104) && *(a1 + 136) == *(a1 + 128) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64);
}

void AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::ObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a2 & 0x330003;
  if ((*&a2 & 0x330003) == 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 1176));
  v10 = *(a1 + 1136);
  v11 = *(a1 + 1144);
  v12 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v10, *(a1 + 1144), a4);
  if (!v12)
  {
    if (v11 == 4)
    {
      operator new();
    }

    v14 = &v10[4 * v11];
    v15 = *(a4 + 16);
    *v14 = *a4;
    v14[1] = v15;
    v16 = *(a1 + 1144);
    v17 = *(a1 + 1136) + 24 * v16;
    *(a1 + 1144) = v16 + 1;
    v12 = v17 + 128;
    v13 = *(v17 + 136);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v5 & ~v13) != 0)
    {
      if (a3)
      {
        v18 = v12;
        dispatch_retain(a3);
        v12 = v18;
      }

      if (*(v12 + 16))
      {
        v19 = v12;
        dispatch_release(*(v12 + 16));
        v12 = v19;
      }

      *(v12 + 8) = v5;
      *(v12 + 16) = a3;
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  *v12 = v13;
LABEL_15:

  os_unfair_lock_unlock((a1 + 1176));
}

void sub_29CCA9F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::getFunctionId(void (***a1)(void, CC_SHA256_CTX *), unsigned __int8 *a2, AGX *a3)
{
  CC_SHA256_Init(&c);
  (**a1)(a1, &c);
  *len = 0;
  data = 0;
  if (a3 && AGX::GetSerializedVertexFormat(a3, &data, len, v6, v7))
  {
    v8 = data;
    CC_SHA256_Update(&c, data, len[0]);
    free(v8);
  }

  CC_SHA256_Final(a2, &c);
  return a2;
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCAA31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_16ObjectProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke(uint64_t a1, void *a2, int8x16_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v7 = a3[2];
  v20[0] = vextq_s8(a3[1], a3[1], 8uLL);
  v20[1] = v7;
  v21 = a3[3].i64[0];
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(&v25, v6, a2, v20, *(a1 + 112), a1 + 120);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  v9 = a3[3];
  *v24 = a3[2];
  *&v24[16] = v9;
  AGCDeserializedReply::AGCDeserializedReply(v20);
  if (!*&v24[8])
  {
    v10 = [*(a1 + 32) function];
    if (!AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(a2, [objc_msgSend(v10 "name")], v20))
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = [objc_msgSend(v10 "name")];
      AGCReplyArray::getDebugStringAvailableNames(buf, a2);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      fprintf(v11, "AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", "agxa_user_shader_factory_template.hpp", 182, "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke", v12, v13);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v16;
        v31 = 2080;
        v32 = v17;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v14 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&v24[8] = 2;
      *&v24[16] = @"Internal error during function compilation.";
    }
  }

  memset(buf, 0, 24);
  if (v27 == 1)
  {
    *buf = v25;
    *&buf[16] = v26;
    v26 = 0;
    v25 = 0uLL;
  }

  else
  {
    if (v27)
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      AGCDeserializedReply::~AGCDeserializedReply(v20);
      if (v27 == -1)
      {
        _Unwind_Resume(v18);
      }

      (off_2A23F59F0[v27])(v20, &v25);
      _Unwind_Resume(v18);
    }

    *&v24[8] = v25;
  }

  (*(*(a1 + 40) + 16))();
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v20);
  if (v27 != -1)
  {
    (off_2A23F59F0[v27])(v20, &v25);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_16ObjectProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CCAAA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::ObjectProgramVariant::~ObjectProgramVariant(AGX::HAL300::ObjectProgramVariant *this)
{
  AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ObjectProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

uint64_t AGX::Program<AGX::HAL300::ObjectProgramVariant,AGX::PassthroughObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  os_unfair_lock_lock((a1 + 728));
  v6 = *(a1 + 400);
  v7 = *(a1 + 392);
  if (v6)
  {
    v8 = 0;
    v9 = (v7 + 40);
    while (1)
    {
      v10 = *v9;
      v9 += 12;
      if (((v10 ^ *(a2 + 40)) & 3) == 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        goto LABEL_5;
      }
    }

    v16 = v7 + 48 * v8;
  }

  else
  {
LABEL_5:
    v11 = *(v7 + 384);
    if (v11)
    {
      v12 = *(a2 + 40);
      v13 = 1;
      while (1)
      {
        if (((*(v11 + 40) ^ v12) & 3) == 0)
        {
          v13 = 0;
          goto LABEL_21;
        }

        if (((*(v11 + 88) ^ v12) & 3) == 0)
        {
          goto LABEL_21;
        }

        if (((*(v11 + 136) ^ v12) & 3) == 0)
        {
          v13 = 2;
          goto LABEL_21;
        }

        if (((*(v11 + 184) ^ v12) & 3) == 0)
        {
          break;
        }

        v11 = *(v11 + 384);
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      v13 = 3;
LABEL_21:
      v16 = v11 + 48 * v13;
    }

    else
    {
LABEL_12:
      if (v6 == 4)
      {
        operator new();
      }

      v14 = v7 + 48 * v6;
      *(v14 + 8) = *(a2 + 8);
      if (v14 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v14 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v14 + 40) = *(a2 + 40);
      v15 = *(a1 + 400);
      v16 = *(a1 + 392) + 48 * v15;
      *(a1 + 400) = v15 + 1;
    }
  }

  v17 = v16 + 192;
  if (!*(v16 + 192))
  {
    v19 = dispatch_group_create();
    *v17 = v19;
LABEL_28:
    dispatch_group_enter(v19);
    *a3 = 1;
    goto LABEL_29;
  }

  if (*(v16 + 232) == 1)
  {
    v18 = *(v16 + 200);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    *(v17 + 8) = 0;
    *(v17 + 16) = 0;

    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    v19 = *v17;
    goto LABEL_28;
  }

LABEL_29:
  os_unfair_lock_unlock((a1 + 728));
  return v17;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke(void *a1, uint64_t a2, uint64_t a3, __CFString *a4)
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

void sub_29CCAB034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void AGX::Compiler::compileProgram<AGX::PassthroughObjectProgramKey,AGCDeserializedReply>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = *MEMORY[0x29EDCA608];
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

  *(a2 + 24) = *(a2 + 16);
  c.count[0] = *(a2 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a2 + 16, &c);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24) - v14;
  if (v15 > 0xFFFFFFFFFFFFFFF7)
  {
    v16 = *(a2 + 24) + 8;
    *(a2 + 24) = v16;
  }

  else
  {
    std::vector<unsigned int>::__append((a2 + 16), 2uLL);
    v14 = *(a2 + 16);
    v16 = *(a2 + 24);
  }

  v17 = (v14 + v15);
  *v17 = ((v16 - v14) >> 2 << 8) | 0x58;
  v17[1] = *(a2 + 40);
  c.count[0] = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](a2 + 16, &c);
  v18 = dispatch_data_create(*(a2 + 16), *(a2 + 24) - *(a2 + 16), 0, 0);
  [a3 setDriverKeyData:v18];
  if ([a3 airScript])
  {
    v33 = 0;
    v34 = 0;
    object = dispatch_data_create_map([a3 airScript], &v33, &v34);
    v19 = v33;
    v20 = *v33;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v19 + v20), &data, len, v21, v22))
    {
      v23 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v23);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v38;
    [a3 setVendorPluginFunctionId:&c];
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  v31[3] = &unk_29F3422D0;
  v31[4] = a3;
  v31[5] = a4;
  if ([a3 function])
  {
    v24 = mach_absolute_time();
    v25 = *a1;
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    v29[3] = &unk_29F342320;
    v29[4] = v31;
    v29[5] = v24;
    [v25 compileFunctionRequest:a3 compilerTask:0 completionHandler:v29];
  }

  else
  {
    if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    v30[3] = &unk_29F3422F8;
    v30[4] = v31;
    v26 = [objc_msgSend(a3 "binaryArchives")] == 0;
    v27 = *a1;
    v28 = [a3 driverKeyData];
    if (v26)
    {
      [v27 compileRequest:v28 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), v30}];
    }

    else
    {
      [v27 compileRequest:v28 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), v30}];
    }
  }

  dispatch_release(v18);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37createObjectProgramPassThroughVariantI27MTLRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicembbU13block_pointerFvPNS1_20ObjectProgramVariantE13ReflectionKey16MTLCompilerErrorP8NSStringE_block_invoke_2(uint64_t a1)
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

void ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_27PassthroughObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCAB858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void ProgramKey<(_AGCStreamToken)26,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void __destroy_helper_block_e8_64c40_ZTSKN3AGX27PassthroughObjectProgramKeyE(void *a1)
{
  a1[8] = &unk_2A23F6D50;
  v1 = a1[10];
  if (v1)
  {
    a1[11] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_64c40_ZTSKN3AGX27PassthroughObjectProgramKeyE(uint64_t result, uint64_t a2)
{
  *(result + 64) = &unk_2A23F6D50;
  *(result + 72) = *(a2 + 72);
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 64) = &unk_2A23F6D10;
  *(result + 104) = *(a2 + 104);
  return result;
}

void AGX::PassthroughObjectProgramKey::serialize(AGX::PassthroughObjectProgramKey *this, const void **a2, unint64_t *a3)
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
  *v10 = ((v9 - begin) >> 2 << 8) | 0x58;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

char *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36populateRenderPipelineDescriptorInfoI27MTLRenderPipelineDescriptorEEbRNS5_28RenderPipelineDescriptorInfoEPT_mP19AGXG18PFamilyDeviceRP7NSError_block_invoke(uint64_t a1)
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

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline_impl<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28[21] = *MEMORY[0x29EDCA608];
  mach_absolute_time();
  _MTLCompilePerformanceStatisticsEnabled();
  if (!a7)
  {
    if (!a2)
    {
      if (a10)
      {
        v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"pipeline descriptor is nil" forKey:*MEMORY[0x29EDB9ED8]];
        v21 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v20];
        (*(a10 + 16))(a10, 0, 0, v21);
      }

      return 0;
    }

    v28[0] = 0;
    if (![a2 validateWithDevice:a3 error:v28])
    {
      v22 = [v28[0] localizedDescription];
      if (a10)
      {
        v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v22 forKey:*MEMORY[0x29EDB9ED8]];
        v24 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v23];
        (*(a10 + 16))(a10, 0, 0, v24);
      }

      return 0;
    }

LABEL_8:
    if (a10)
    {
      [a2 copy];
    }

    operator new();
  }

  *a7 = 0;
  if (a2)
  {
    v28[0] = 0;
    if (![a2 validateWithDevice:a3 error:v28])
    {
      v13 = [v28[0] localizedDescription];
      v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v13 forKey:*MEMORY[0x29EDB9ED8]];
      v15 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v14];
      v16 = v15;
      if (a10)
      {
        (*(a10 + 16))(a10, 0, 0, v15);

        v16 = *a7;
      }

      else
      {
        *a7 = v15;
      }

      v27 = v16;
      return 0;
    }

    goto LABEL_8;
  }

  v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"pipeline descriptor is nil" forKey:*MEMORY[0x29EDB9ED8]];
  v18 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v17];
  if (a10)
  {
    v19 = v18;
    (*(a10 + 16))(a10, 0, 0, v18);

    v18 = *a7;
  }

  else
  {
    *a7 = v18;
  }

  v25 = v18;
  return 0;
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateRenderPipelineDescriptorInfo<MTLMeshRenderPipelineDescriptor>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char *a5, uint64_t a6)
{
  *a2 = [a3 fragmentFunction];
  a2[3] = [a3 objectFunction];
  v12 = [a3 meshFunction];
  a2[2] = v12;
  if (v12)
  {
    v13 = [a3 newSerializedMeshDataWithFlags:540 options:0 error:a6];
    v14 = a2[10];
    if (v14 != v13)
    {
      if (v14)
      {
        dispatch_release(v14);
      }

      a2[10] = v13;
    }

    if (!v13)
    {
      return 0;
    }

    v15 = [a3 newSerializedObjectDataWithFlags:540 options:0 error:a6];
    v16 = a2[11];
    if (v16 != v15)
    {
      if (v16)
      {
        dispatch_release(v16);
      }

      a2[11] = v15;
    }

    if (!v15)
    {
      return 0;
    }
  }

  else if (!a2[9])
  {
    return 0;
  }

  v17 = [a3 newSerializedFragmentDataWithFlags:540 options:a4 error:0];
  v18 = a2[8];
  if (v18 != v17)
  {
    if (v18)
    {
      dispatch_release(v18);
    }

    a2[8] = v17;
  }

  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v26, a5, *a2, [a3 fragmentLinkedFunctions], objc_msgSend(a3, "fragmentPreloadedLibraries"), a6);
  v19 = a2[12];
  a2[12] = v26;

  if (a2[12])
  {
    v20 = a2[2];
    if (!v20 || (AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v26, a5, v20, [a3 meshLinkedFunctions], objc_msgSend(a3, "meshPreloadedLibraries"), a6), v21 = a2[14], a2[14] = v26, v21, a2[14]) && (AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v26, a5, a2[3], objc_msgSend(a3, "objectLinkedFunctions"), objc_msgSend(a3, "objectPreloadedLibraries"), a6), v22 = a2[15], a2[15] = v26, v22, a2[15]))
    {
      v23 = *(a1 + 16);
      v25[0] = MEMORY[0x29EDCA5F8];
      v25[1] = 3221225472;
      v25[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36populateRenderPipelineDescriptorInfoI31MTLMeshRenderPipelineDescriptorEEbRNS5_28RenderPipelineDescriptorInfoEPT_mP19AGXG18PFamilyDeviceRP7NSError_block_invoke;
      v25[3] = &__block_descriptor_40_e5_v8__0l;
      v25[4] = a2;
      dispatch_sync(v23, v25);
      return 1;
    }
  }

  return 0;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createRenderPipeline_implI31MTLMeshRenderPipelineDescriptorEEP27AGXG18PFamilyRenderPipelinePT_P19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSH_SK_E_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (v8)
  {
    v10 = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RenderPipelineDescriptorInfo::~RenderPipelineDescriptorInfo(v8);
    MEMORY[0x29ED520D0](v10, 0xA0C402B819244);
  }

  *(*(*(a1 + 56) + 8) + 40) = a2;
  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    v12 = v11 + 30;
    isa = v11[31].isa;
    if (isa && v12->isa && *(isa + 4104) == 1)
    {
      ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::clone();
    }

    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLMeshRenderPipelineDescriptor>(v12, *(a1 + 32), v11, *(a1 + 40));
  }

  if (([*(a1 + 32) requiresRaytracingEmulation] & 1) == 0 && a2 && !a4 && objc_msgSend(*(a1 + 40), "supportIndirectCommandBuffers"))
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v9 + 28), (*(*(*(a1 + 56) + 8) + 40) + 3408));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v9 + 148), (*(*(*(a1 + 56) + 8) + 40) + 3528));
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, a3, a4);

    *(*(*(a1 + 56) + 8) + 40) = 0;
  }

  if (*(a1 + 80))
  {
    **(a1 + 80) = a4;
  }

  if (*(a1 + 88))
  {
    **(a1 + 88) = a3;
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 80);
    v11 = *(a1 + 88);
    v13 = *(a1 + 96);
    v14 = *(a2 + 4034);
    v15 = *(a1 + 128);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v29 = *(a1 + 104);
    v18 = *(v29 + 120);
    v19 = *(v29 + 24);
    v20 = *(v29 + 88);
    v33 = *(a1 + 129);
    v34 = *(a1 + 145);
    v21 = a3[1];
    v35 = *a3;
    v26[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2;
    v26[3] = &unk_29F341788;
    v28 = v12;
    v30 = a2;
    v31 = v11;
    v36 = v21;
    v26[4] = v10;
    v26[5] = v9;
    v37 = v15;
    v38 = *(a1 + 161);
    v32 = *(a1 + 120);
    v26[6] = a4;
    v27 = *(a1 + 64);
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLMeshRenderPipelineDescriptor>(v12, v9, v10, v11, v16, v13, a7, v18, v19, v20, v14, HIBYTE(v14), v15, v17, v26);
  }

  else
  {
    v22 = *(a1 + 72);
    if (v22)
    {
      if (a5 > 3)
      {
        v23 = 5;
      }

      else
      {
        v23 = qword_29D2F40D8[a5];
      }

      v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v25 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v23 userInfo:v24];
      (*(v22 + 16))(v22, 0, 0);
    }
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramVariant<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, os_unfair_lock_s *a9, uint64_t a10, NSObject *a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v115 = *MEMORY[0x29EDCA608];
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3052000000;
  v81[3] = __Block_byref_object_copy__1933;
  v81[4] = __Block_byref_object_dispose__1934;
  v81[5] = 0;
  v19 = [a2 meshFunction];
  if (a10)
  {
    v20 = [a2 objectFunction];
    if (*(a10 + 3879) < 0)
    {
      std::string::__init_copy_ctor_external(&v70, *(a10 + 3856), *(a10 + 3864));
    }

    else
    {
      v70 = *(a10 + 3856);
    }

    if (*(a10 + 3903) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a10 + 3880), *(a10 + 3888));
    }

    else
    {
      __p = *(a10 + 3880);
    }

    v72 = *(a10 + 3904);
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey<MTLMeshRenderPipelineDescriptor>(v73, a2, a11, a8, v20 == 0, &v70, *(a10 + 3920));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v21 = &v70;
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateMeshProgramKey<MTLMeshRenderPipelineDescriptor>(v73, a2, a11, a8, [a2 objectFunction] == 0, &v66, 0);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(*(&v67 + 1));
      if ((SBYTE7(v67) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SBYTE7(v67) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v21 = &v66;
  }

  operator delete(v21->__r_.__value_.__l.__data_);
LABEL_19:
  v22 = (v74 & 0x8BFFFEFF | (*(a3[106] + 16608) << 26) & 0xBFFFFFFF | (((*(a3[106] + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
  v74 = v22;
  v75 &= 0xFFFFF1FF;
  v80 = a4 & 0xC00C0000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v23 = 1;
    v22 = v74;
  }

  else
  {
    v23 = 0;
  }

  v74 = v23 | (a4 >> 21) & 8 | v22 & 0xFFFFFFF4;
  ReflectionKey::initGPUCompilerSPIOptionsHash(&v107, [a2 gpuCompilerSPIOptions]);
  v105 = v107;
  v106 = v108;
  v65 = 0;
  CompileOptions = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(a9, a4 | 3, &v105);
  v55 = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a9, v73, &v65, CompileOptions, (a5 | a6) != 0);
  if (v65 == 1)
  {
    v50 = v73[5];
    v49 = v76;
    v24 = [objc_msgSend(a2 "pipelineLibrary")];
    v25 = [a2 pipelineLibrary];
    if ([v25 pipelineCache] && (objc_msgSend(v25, "disableRunTimeCompilation") & 1) != 0 || (v26 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v26)
    {
      LOBYTE(v27) = 1;
    }

    else
    {
      v27 = (a4 >> 34) & 1;
    }

    if (a6)
    {
      LOBYTE(v27) = 1;
    }

    v48 = v27;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v31 = objc_opt_new();
    [v31 setUseAIRNTInterfaces:*(a1 + 24)];
    [v31 setSync:a12 ^ 1u];
    [v31 setFunction:v19];
    [v31 setFrameworkData:a11];
    [v31 setPipelineCache:v24];
    [v31 setDestinationBinaryArchive:a5];
    [v31 setArchiverId:a7];
    [v31 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v31 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v31 setPipelineOptions:{objc_msgSend(v31, "pipelineOptions") | 0x8000}];
    }

    v32 = [a2 newPipelineScript];
    if (v32)
    {
      [v31 setAirScript:v32];
      dispatch_release(v32);
    }

    [v31 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v33 = [a2 meshLinkedFunctions];
    [v31 setVisibleFunctions:{objc_msgSend(v33, "functions")}];
    [v31 setVisibleFunctionGroups:{objc_msgSend(v33, "groups")}];
    [v31 setPrivateVisibleFunctions:{objc_msgSend(v33, "privateFunctions")}];
    v47 = v19;
    v34 = a3;
    v52 = a1;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    *&v59 = 0;
    v61 = 0uLL;
    v35 = [a2 maxMeshCallStackDepth];
    v36 = [a2 meshLinkedFunctions];
    v37 = [a2 supportIndirectCommandBuffers];
    v38 = [a2 supportAddingMeshBinaryFunctions];
    v39 = [a2 gpuCompilerSPIOptions];
    v40 = [v34 requiresRaytracingEmulation];
    BYTE8(v59) = v40;
    *&v60 = v35;
    *(&v60 + 1) = v36;
    *&v62 = a4;
    *(&v62 + 1) = a8;
    v63 = v34;
    LOBYTE(v64) = v37;
    BYTE1(v64) = v38;
    *(&v64 + 1) = v39;
    if (a6)
    {
      v41 = *a6;
      v42 = *(a6 + 16);
      LOBYTE(v57) = 1;
      *(&v57 + 1) = v41;
      *&v58 = v42;
      *(&v58 + 1) = 7;
    }

    *&v59 = a13;
    v99[0] = MEMORY[0x29EDCA5F8];
    v99[1] = 3221225472;
    v99[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke;
    v99[3] = &unk_29F341800;
    v100 = a12;
    v43 = v52;
    v99[8] = v52;
    v99[9] = v55;
    v101 = v49 & 1;
    v99[10] = a9;
    v99[11] = CompileOptions;
    v102 = v105;
    v103 = v106;
    v99[4] = v47;
    v99[5] = v34;
    v99[7] = v81;
    v99[6] = a2;
    v99[12] = a10;
    v99[13] = v50;
    v104 = v48;
    if ((v40 & 1) == 0 && (hasAirLinkedIntersectionFunction = AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v36), v43 = v52, hasAirLinkedIntersectionFunction))
    {
      v111 = v61;
      v112 = v62;
      v113 = v63;
      v114 = v64;
      v107 = v57;
      v108 = v58;
      v109 = v59;
      v110 = v60;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::MeshProgramKey,true>(v52, v73, v31, &v107, v99);
    }

    else
    {
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::MeshProgramKey>(v43, v73, v31, &v57, v99);
    }

    v29 = v55;
    v28 = a9;
  }

  else
  {
    v28 = a9;
    v29 = v55;
    if ((CompileOptions & 0x330003) != 0)
    {
      v30 = *a1;
      v96[0] = MEMORY[0x29EDCA5F8];
      v96[1] = 3221225472;
      v96[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_2;
      v96[3] = &unk_29F341630;
      v97 = v105;
      v98 = v106;
      v96[5] = a9;
      v96[4] = a3;
      v96[6] = CompileOptions;
      v96[7] = v55;
      [*v30 reflectionWithFunction:v19 options:CompileOptions & 0x330003 sync:a12 ^ 1u completionHandler:v96];
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  v83 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createMeshProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectP7NSArrayPNS1_11MeshProgramEPNS1_22FragmentProgramVariantESL_bPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18MeshProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSL_E_block_invoke_3;
  v84 = &unk_2A23F6C98;
  v87 = v29;
  v88 = v28;
  AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::GeometrySharedKey(v89, v73);
  v89[0] = &unk_2A23FA740;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v77;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = __s;
  }

  v92 = v79;
  v89[0] = &unk_2A23F7CA8;
  v93 = v80;
  v94 = v105;
  v95 = v106;
  v85 = a14;
  v86 = v81;
  v45 = *v29;
  if (a12)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v45, global_queue, block);
  }

  else
  {
    dispatch_group_wait(v45, 0xFFFFFFFFFFFFFFFFLL);
    v83(block);
  }

  AGX::MeshProgramKey::~MeshProgramKey(v89);
  AGX::MeshProgramKey::~MeshProgramKey(v73);
  _Block_object_dispose(v81, 8);
}

void sub_29CCAD698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&a37);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramAnalysis<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, os_unfair_lock_s *a5, NSObject *a6, int a7)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  AGX::MeshProgramKey::MeshProgramKey(v42, a6, 1, 0, v49, 0, 0, 0);
  AGX::MeshProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(v42, a2);
  v14 = v43 & 0xFFFFFF7F;
  v43 &= ~0x80u;
  v44 = a4 & 0xC00C0000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v15 = 1;
    v14 = v43;
  }

  else
  {
    v15 = 0;
  }

  v43 = v15 | (a4 >> 21) & 8 | v14 & 0xFFFFFFF4;
  LOBYTE(v49[0]) = 0;
  VariantEntry = AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a5, v42, v49, 0, 0);
  v33 = a3;
  v17 = [a2 meshFunction];
  if (LOBYTE(v49[0]) == 1)
  {
    v18 = v17;
    v19 = [objc_msgSend(a2 "pipelineLibrary")];
    v20 = [a2 pipelineLibrary];
    if ([v20 pipelineCache] && (objc_msgSend(v20, "disableRunTimeCompilation") & 1) != 0 || (v21 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v21)
    {
      LOBYTE(v22) = 1;
    }

    else
    {
      v22 = (a4 >> 34) & 1;
    }

    v32 = v22;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v23 = objc_opt_new();
    [v23 setUseAIRNTInterfaces:*(a1 + 24)];
    [v23 setSync:a7 ^ 1u];
    [v23 setFunction:v18];
    [v23 setFrameworkData:a6];
    [v23 setPipelineCache:v19];
    [v23 setDestinationBinaryArchive:0];
    [v23 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v23 setPipelineOptions:0];
    v24 = [a2 newPipelineScript];
    if (v24)
    {
      [v23 setAirScript:v24];
      dispatch_release(v24);
    }

    [v23 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v25 = [a2 meshLinkedFunctions];
    [v23 setVisibleFunctions:{objc_msgSend(v25, "functions")}];
    [v23 setVisibleFunctionGroups:{objc_msgSend(v25, "groups")}];
    [v23 setPrivateVisibleFunctions:{objc_msgSend(v25, "privateFunctions")}];
    v26 = *a1;
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 3221225472;
    v39[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createMeshProgramAnalysisI31MTLMeshRenderPipelineDescriptorEEPKNS_21VertexProgramVaryingsEPT_P19AGXG18PFamilyDevicemPNS1_11MeshProgramEPU27objcproto16OS_dispatch_data8NSObjectb_block_invoke;
    v39[3] = &unk_29F3418A0;
    v39[6] = a1;
    v39[7] = VariantEntry;
    v40 = 1;
    v39[8] = a5;
    v39[9] = 0;
    v39[4] = v33;
    v39[5] = &v45;
    v41 = v32;
    AGX::Compiler::compileProgram<AGX::MeshProgramKey,AGCDeserializedReply>(v26, v42, v23, 0, v39);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  v35 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createMeshProgramAnalysisI31MTLMeshRenderPipelineDescriptorEEPKNS_21VertexProgramVaryingsEPT_P19AGXG18PFamilyDevicemPNS1_11MeshProgramEPU27objcproto16OS_dispatch_data8NSObjectb_block_invoke_2;
  v36 = &unk_29F3418C8;
  v37 = &v45;
  v38 = VariantEntry;
  v27 = *VariantEntry;
  if (a7)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v27, global_queue, block);
  }

  else
  {
    dispatch_group_wait(*VariantEntry, 0xFFFFFFFFFFFFFFFFLL);
    v35(block);
  }

  v29 = v46[3];
  if (v29)
  {
    v30 = v29 + 3976;
  }

  else
  {
    v30 = 0;
  }

  AGX::MeshProgramKey::~MeshProgramKey(v42);
  _Block_object_dispose(&v45, 8);
  return v30;
}

void sub_29CCADB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  AGX::MeshProgramKey::~MeshProgramKey(&a30);
  _Block_object_dispose((v30 - 176), 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE25createRenderPipeline_implI31MTLMeshRenderPipelineDescriptorEEP27AGXG18PFamilyRenderPipelinePT_P19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSH_SK_E_block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v7 = *(a1 + 80);
    if (v7[2])
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 112);
      v12 = *(a1 + 113);
      v13 = *(a1 + 88);
      v14 = *(a1 + 96);
      v15 = *(a1 + 104);
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v19 = *(a1 + 72);
      v20 = *(a1 + 64);
      v21 = v7[14];
      v22 = v7[6];
      v23 = v7[10];
      v29[0] = MEMORY[0x29EDCA5F8];
      v29[1] = 3221225472;
      v24 = a3[1];
      v31 = *a3;
      v29[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb0EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke;
      v29[3] = &unk_29F3417B0;
      v29[4] = v10;
      v29[5] = v9;
      v29[10] = v19;
      v29[11] = v13;
      v29[12] = v15;
      v29[13] = v7;
      v30 = v11;
      v29[6] = v16;
      v29[7] = v17;
      v32 = v24;
      v33 = v12;
      v29[14] = a2;
      v29[15] = v14;
      v29[8] = a4;
      v29[9] = v20;
      AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramVariant<MTLMeshRenderPipelineDescriptor>(v19, v10, v9, v13, v16, v15, a7, v21, v22, a2, v23, v11, v17, v29);
    }
  }

  else
  {
    v25 = *(a1 + 64);
    if (v25)
    {
      if (a5 > 3)
      {
        v26 = 5;
      }

      else
      {
        v26 = qword_29D2F40D8[a5];
      }

      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v28 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v26 userInfo:v27];
      (*(v25 + 16))(v25, 0, 0);
    }
  }
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createFragmentProgramVariant<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, os_unfair_lock_s *a8, __int128 *a9, NSObject *a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v226 = *MEMORY[0x29EDCA608];
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x3052000000;
  v142[3] = __Block_byref_object_copy__1933;
  v142[4] = __Block_byref_object_dispose__1934;
  v142[5] = 0;
  v127 = [a2 fragmentFunction];
  if ([a2 openGLModeEnabled])
  {
    v14 = a10;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3[106] + 6200);
  if (getStatelessPSOBoundsOnceToken != -1)
  {
    dispatch_once(&getStatelessPSOBoundsOnceToken, &__block_literal_global_2067);
  }

  v16 = 0;
  add = atomic_fetch_add(&requestID, 1uLL);
  if (add < maxStateless && add >= minStateless)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (add >= minPridOverride && add < maxPridOverride)
  {
    v16 = *(a3[106] + 6208);
  }

  v20 = 0;
  if (add >= minLBRT && add < maxLBRT)
  {
    v20 = *(a3[106] + 6204);
  }

  {
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor const*)::enable_pipeline_script = 0;
  }

  if (AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor const*)::enable_pipeline_script)
  {
    [a2 newPipelineScript];
    operator new();
  }

  AGX::FragmentProgramKey::FragmentProgramKey(&v143, v14, [a2 fragmentLinkedFunctions], a7);
  v182 = 0;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v183 = 67305985;
  v184 = 1541;
  v185 = 7;
  v186 = 0x100000000;
  v187 = 0;
  v189 = 0;
  v188 = 0;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0;
  if (a2)
  {
    LODWORD(v200[0]) = 3;
    v201 = 0x706050403020100;
    v218 = 0;
    v219 = 255;
    v220 = 0;
    v221 = 0;
    v222 = 0;
    memset_pattern16(&__b, &unk_29D2F27B0, 0x40uLL);
    memset_pattern16(v200 + 8, &unk_29D2F27B0, 0x40uLL);
    v224 = 0;
    *&v223[3] = 0;
    v225 = 0;
    v202 = 2;
    *v203 = *v223;
    *&v203[11] = 0u;
    v204 = 2;
    *v205 = *v223;
    *&v205[11] = 0u;
    v206 = 2;
    *&v207[11] = 0u;
    *v207 = *v223;
    v208 = 2;
    *v209 = *v223;
    *&v209[11] = 0u;
    v210 = 2;
    *&v211[11] = 0u;
    *v211 = *v223;
    v212 = 2;
    *&v213[11] = 0u;
    *v213 = *v223;
    v214 = 2;
    *&v215[11] = 0u;
    *v215 = *v223;
    v216 = 2;
    *v217 = *v223;
    *&v217[11] = 0u;
    AGX::SpecializableRenderPipelineState::specialize<MTLMeshRenderPipelineDescriptor>(&__b, a2);
    AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initialize(&v177, &__b, v19, v20);
  }

  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v177, 0);
  v150 = v177;
  v151 = v178;
  v152 = v179;
  HIDWORD(v149) = ((v19 & 3) << 14) | ((v20 & 1) << 16) | HIDWORD(v149) & 0xFFFE3FFF;
  v136 = [a2 _descriptorPrivate];
  v21 = [a2 driverCompilerOptions];
  v22 = [objc_msgSend(objc_msgSend(a2 "fragmentLinkedFunctions")];
  v23 = [a2 supportAddingFragmentBinaryFunctions];
  if ([objc_msgSend(v21 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  DWORD1(v149) = DWORD1(v149) & 0xFFFFFFFB | v24;
  v25 = [objc_msgSend(v21 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}];
  DWORD1(v149) = DWORD1(v149) & 0xFC0003FF | (v25 << 10);
  if ([objc_msgSend(v21 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v26 = 0x8000000;
  }

  else
  {
    v26 = 0;
  }

  if (v22)
  {
    v27 = 1;
  }

  else
  {
    v27 = v23;
  }

  if (v27)
  {
    v28 = 512;
  }

  else
  {
    v28 = 0;
  }

  DWORD1(v149) = v26 | DWORD1(v149) & 0xF7FFFDFF | v28;
  if ((v16 == 7 || v16 == 2) && (v152 & 0xF00) != 0)
  {
    if (v152)
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_7);
      }

      LOBYTE(v16) = 1;
    }

    else
    {
      if (AGX::Impl::FragmentProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken != -1)
      {
        dispatch_once(&AGX::Impl::FragmentProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(MTLMeshRenderPipelineDescriptor const*,_AGCStatelessPSOOverride,_AGCPRIDAllocationStrategy,_LateBoundRenderTargetOverride)::onceToken, &__block_literal_global_9);
      }

      LOBYTE(v16) = 0;
    }
  }

  v29 = 0;
  v30 = *v136;
  do
  {
    v32 = [objc_msgSend(v30 _descriptorAtIndex:{v29), "_descriptorPrivate"}];
    if (v32 && *v32 >> 42)
    {
      if ((v19 - 1) >= 2)
      {
        v33 = (*v32 & 3) == 1;
        if ((*v32 & 3) == 2)
        {
          v33 = 2;
        }

        if ((*v32 & 3) == 1)
        {
          v34 = vdupq_n_s64(*v32);
          v33 = 2;
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(vandq_s8(v34, xmmword_29D2F1650), xmmword_29D2F1670), vcgtq_u64(vandq_s8(v34, xmmword_29D2F1660), xmmword_29D2F1680)))) & 1) == 0 && (*v32 & 0x1C) <= 0x13)
          {
            if ((*v32 & 0xE0) < 0xA0)
            {
              v33 = 1;
            }

            else
            {
              v33 = 2;
            }
          }
        }
      }

      else
      {
        v33 = 2;
      }

      v35 = *(&v147 + v29) & 0xF7FFFFFE | ((v33 == 2) << 27);
      if ((v33 - 1) < 2u)
      {
        ++v35;
      }

      *(&v147 + v29) = v35;
      if (v33 == 1)
      {
        v36 = (*v32 >> 8) & 0x1F;
        if (v36 > 0x13)
        {
          v37 = 0;
        }

        else
        {
          v37 = dword_29D2FEC88[v36];
        }

        v38 = v37 | v35 & 0xFFFFFFC1;
        *(&v147 + v29) = v38;
        v39 = (*v32 >> 18) & 0x1F;
        if (v39 > 0x13)
        {
          v40 = 0;
        }

        else
        {
          v40 = dword_29D2FECD8[v39];
        }

        v41 = v40 | v38 & 0xFFFFF83F;
        *(&v147 + v29) = v41;
        v42 = (*v32 >> 13) & 0x1F;
        if (v42 > 0x13)
        {
          v43 = 0;
        }

        else
        {
          v43 = dword_29D2FED28[v42];
        }

        v44 = v43 | v41 & 0xFFFF07FF;
        *(&v147 + v29) = v44;
        v45 = (*v32 >> 23) & 0x1F;
        if (v45 > 0x13)
        {
          v46 = 0;
        }

        else
        {
          v46 = dword_29D2FED78[v45];
        }

        v47 = v46 | v44 & 0xFFE0FFFF;
        *(&v147 + v29) = v47;
        v48 = (*v32 >> 2) & 7;
        if (v48 > 5)
        {
          v49 = 0;
        }

        else
        {
          v49 = dword_29D2FEDC8[v48];
        }

        v50 = v49 | v47 & 0xFF1FFFFF;
        *(&v147 + v29) = v50;
        v51 = *v32 >> 5;
        if (v51 > 5)
        {
          v52 = 0;
        }

        else
        {
          v52 = dword_29D2FEDE0[v51];
        }

        *(&v147 + v29) = v52 | v50 & 0xF8FFFFFF;
      }

      if (v19 == 1 || (*v32 & 0x1000000000) != 0)
      {
        v31 = (v146 & 0xFFFFFF00FFFFFFFFLL) + ((BYTE4(v146) | (1 << v29)) << 32);
      }

      else
      {
        v53 = __rbit32(HIDWORD(*v32));
        v54 = v53 >> 28;
        v55 = v146 & 0xFFFFFFFFFF000000 | (v146 | ((8 * v53) >> 31) & (1 << v29)) & 0xFF0000FF | v146 & 0xFF00 | ((8 * v53) >> 31) & (1 << v29) & 0xFF00 | (256 << v29) & ((4 * v53) >> 31) & 0xFF00FFFF | v146 & 0xFF0000 | ((8 * v53) >> 31) & (1 << v29) & 0xFF0000 | (256 << v29) & ((4 * v53) >> 31) & 0xFF0000 | (0x10000 << v29) & ((2 * v53) >> 31);
        if (v54 < 0)
        {
          v56 = 0x1000000 << v29;
        }

        else
        {
          v56 = 0;
        }

        v31 = v55 & 0xFFFFFFFF00FFFFFFLL | v55 & 0xFF000000 | v56;
      }

      *&v146 = v31;
    }

    ++v29;
  }

  while (v29 != 8);
  v57 = [a2 isLogicOperationEnabled];
  if (v57)
  {
    v58 = 32;
  }

  else
  {
    v58 = 0;
  }

  DWORD2(v145) = DWORD2(v145) & 0xFFFFFFDF | v58;
  if (v57)
  {
    v59 = [a2 logicOperation];
    if (v59 > 0xF)
    {
      v60 = 0;
    }

    else
    {
      v60 = dword_29D2FEDF8[v59];
    }

    DWORD2(v145) = DWORD2(v145) & 0xFFFFF83F | v60;
  }

  v61 = [a2 isAlphaTestEnabled];
  if (v61)
  {
    v62 = 2048;
  }

  else
  {
    v62 = 0;
  }

  DWORD2(v145) = DWORD2(v145) & 0xFFFFF7FF | v62;
  if (v61)
  {
    v63 = [a2 alphaTestFunction];
    if (v63 > 7)
    {
      v64 = 0;
    }

    else
    {
      v64 = dword_29D2FEE38[v63];
    }

    DWORD2(v145) = DWORD2(v145) & 0xFFFF0FFF | v64;
  }

  if ([a2 isPointSmoothEnabled])
  {
    v65 = 0x10000;
  }

  else
  {
    v65 = 0;
  }

  LODWORD(v149) = *(v136 + 68);
  DWORD2(v145) = DWORD2(v145) & 0xFFFAFFFF | ((HIWORD(v65) & 1) << 18) | v65;
  if ([a2 isDepthStencilWriteDisabled])
  {
    v66 = 16;
  }

  else
  {
    v66 = 0;
  }

  v67 = DWORD2(v145) & 0xFFFFFFEC | v66;
  v68 = *(v136 + 48);
  if ((*(v136 + 60) & 3) != 0)
  {
    ++v67;
  }

  DWORD2(v145) = v67 | (2 * ((*(v136 + 60) & 0xCLL) != 0));
  if ([a2 openGLModeEnabled])
  {
    v69 = [a2 sampleCoverageInvert];
    [a2 sampleCoverage];
    v71 = 1.0;
    if (v69)
    {
      v71 = 0.0;
    }

    v72 = 4 * (v70 != v71);
    if (v68 != -1)
    {
      v72 = 4;
    }

    DWORD2(v145) = DWORD2(v145) & 0xFFFFFFFB | v72;
    if ([a2 sampleCoverageInvert])
    {
      v73 = 8;
    }

    else
    {
      v73 = 0;
    }

    v74 = DWORD2(v145) & 0xFFFFFFF7 | v73;
  }

  else
  {
    [a2 sampleCoverage];
    if (v68 == -1 && v75 == 1.0)
    {
      v77 = 0;
    }

    else
    {
      v77 = 4;
    }

    v74 = v77 | DWORD2(v145) & 0xFFFFFFFB;
  }

  DWORD2(v145) = v74;
  HIDWORD(v149) &= ~1u;
  if ([a2 openGLModeEnabled])
  {
    v78 = 2;
  }

  else
  {
    v78 = 0;
  }

  HIDWORD(v149) = HIDWORD(v149) & 0xFFFFFFFD | v78;
  v79 = [a2 fragmentBuffers];
  v80 = 0;
  for (i = 0; i != 31; ++i)
  {
    v82 = [objc_msgSend(v79 _descriptorAtIndex:{i), "mutability"}];
    v83 = 1 << i;
    if (v82 != 1)
    {
      v83 = 0;
    }

    v80 |= v83;
  }

  *(&v146 + 1) = v80;
  v157 = (*(v136 + 60) & 0x200000000) != 0;
  if ([a2 needsCustomBorderColorSamplers])
  {
    v84 = 4;
  }

  else
  {
    v84 = 0;
  }

  v85 = HIDWORD(v149) & 0xFFFFFFFB | v84;
  HIDWORD(v149) = v85;
  v86 = *(v136 + 24);
  if (v86 == 2)
  {
    v87 = 32;
  }

  else
  {
    v87 = 16 * (v86 == 1);
  }

  HIDWORD(v149) = v87 | v85 & 0xFFFFFFCF;
  HIDWORD(v149) = v87 & 0xFFFFFEFF | v85 & 0xFFFFFECF | ((*(v136 + 96) != 0) << 8);
  if ([a2 supportAddingFragmentBinaryFunctions])
  {
    v88 = DWORD1(v149);
  }

  else
  {
    v89 = [objc_msgSend(objc_msgSend(a2 "fragmentLinkedFunctions")];
    v88 = DWORD1(v149);
    if (!v89)
    {
      v91 = 0;
      v90 = WORD2(v149) & 0x200;
      goto LABEL_146;
    }
  }

  v90 = 512;
  v91 = 64;
LABEL_146:
  v92 = v90 | v88 & 0xFFFFFD7F;
  HIDWORD(v149) = HIDWORD(v149) & 0xFFFFFDBF | v91;
  v93 = *(v136 + 376);
  if (v93 > 3 || v93 == 1)
  {
    DWORD2(v149) = -1;
  }

  DWORD1(v149) = v92;
  DWORD2(v145) = DWORD2(v145) & 0xFF8FFFEF | ((v16 & 7) << 20);
  [a2 supportIndirectCommandBuffers];
  v94 = a3[106];
  v95 = *(v94 + 16456);
  v96 = (DWORD1(v149) & 0x8BFFFEFF | (*(v94 + 16608) << 26) & 0xBFFFFFFF | (((v95 >> 1) & 1) << 30)) ^ 0x40000000;
  v97 = HIDWORD(v149) & 0xFFFFC7F7 | (v95 >> 7) & 8;
  DWORD1(v149) = v96;
  HIDWORD(v149) = v97;
  v158 = a4 & 0xC0040000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v98 = 1;
    v96 = DWORD1(v149);
    v97 = HIDWORD(v149);
  }

  else
  {
    v98 = 0;
  }

  DWORD1(v149) = (a4 >> 21) & 8 | v98 | v96 & 0xFFFFFFF4;
  HIDWORD(v149) = v97 & 0xFFFFFF7F | (((a4 >> 21) & 1) << 7);
  if (a9)
  {
    if (*(a9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__b, *a9, *(a9 + 1));
    }

    else
    {
      __b = *a9;
      *v198 = *(a9 + 2);
    }

    if (*(a9 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v198[8], *(a9 + 3), *(a9 + 4));
    }

    else
    {
      *&v198[8] = *(a9 + 24);
      *&v198[24] = *(a9 + 5);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(__p);
    }

    __p = __b;
    v154 = *v198;
    v198[7] = 0;
    LOBYTE(__b) = 0;
    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    v155 = *&v198[8];
    v156 = *&v198[24];
    v198[31] = 0;
  }

  AGX::Impl::FragmentProgramKey::FragmentProgramKey(v140, &v143);
  v140[0] = &unk_2A23F7CF0;
  v141 = v158;
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(&v143);
  ReflectionKey::initGPUCompilerSPIOptionsHash(&__b, [a2 gpuCompilerSPIOptions]);
  v177 = __b;
  v178 = *v198;
  CompileOptions = AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateCompileOptions(a8, a4 | 3, &v177);
  v223[0] = 0;
  VariantEntry = AGX::Program<AGX::HAL300::FragmentProgramVariant,AGX::FragmentProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a8, v140, v223, CompileOptions, (a5 | a6) != 0);
  v101 = VariantEntry;
  v102 = a13;
  v103 = a11;
  v104 = &xmmword_29D2F2000;
  if (v223[0] == 1)
  {
    v105 = [objc_msgSend(a2 "pipelineLibrary")];
    v106 = [a2 pipelineLibrary];
    if ([v106 pipelineCache] && (objc_msgSend(v106, "disableRunTimeCompilation") & 1) != 0 || (v107 = objc_msgSend(objc_msgSend(a2, "binaryArchives"), "count"), (a4 & 4) != 0) && v107)
    {
      LOBYTE(v108) = 1;
    }

    else
    {
      v108 = (a4 >> 34) & 1;
    }

    if (a6)
    {
      v110 = 1;
    }

    else
    {
      v110 = v108;
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v132 = v110;
    v137 = CompileOptions;
    v111 = [a2 openGLModeEnabled];
    v112 = objc_opt_new();
    v113 = v112;
    if (v111)
    {
      v114 = 0;
    }

    else
    {
      v114 = *(a1 + 24);
    }

    [v112 setUseAIRNTInterfaces:v114 & 1];
    [v113 setSync:a11 ^ 1u];
    [v113 setFunction:v127];
    [v113 setFrameworkData:a10];
    [v113 setPipelineCache:v105];
    [v113 setDestinationBinaryArchive:a5];
    [v113 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v113 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v113 setPipelineOptions:{objc_msgSend(v113, "pipelineOptions") | 0x8000}];
    }

    v115 = [a2 newPipelineScript];
    if (v115)
    {
      [v113 setAirScript:v115];
      dispatch_release(v115);
    }

    [v113 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v116 = [a2 fragmentLinkedFunctions];
    [v113 setVisibleFunctions:{objc_msgSend(v116, "functions")}];
    [v113 setVisibleFunctionGroups:{objc_msgSend(v116, "groups")}];
    [v113 setPrivateVisibleFunctions:{objc_msgSend(v116, "privateFunctions")}];
    LOBYTE(v143) = 0;
    *&v144 = 0;
    *(&v143 + 1) = 0;
    *&v145 = 0;
    v147 = 0uLL;
    *(&v149 + 1) = 0;
    v117 = [a2 maxFragmentCallStackDepth];
    v118 = [a2 fragmentLinkedFunctions];
    v119 = [a2 supportIndirectCommandBuffers];
    v120 = [a2 supportAddingFragmentBinaryFunctions];
    v121 = [a2 gpuCompilerSPIOptions];
    v122 = [a3 requiresRaytracingEmulation];
    BYTE8(v145) = v122;
    *&v146 = v117;
    *(&v146 + 1) = v118;
    *&v148 = a4;
    *(&v148 + 1) = a7;
    *&v149 = a3;
    LOBYTE(v150) = v119;
    BYTE1(v150) = v120;
    *(&v150 + 1) = v121;
    if (a6)
    {
      v123 = *a6;
      v124 = *(a6 + 16);
      LOBYTE(v143) = 1;
      *(&v143 + 1) = v123;
      *&v144 = v124;
      *(&v144 + 1) = 2;
    }

    *&v145 = a12;
    v172[0] = MEMORY[0x29EDCA5F8];
    v104 = &xmmword_29D2F2000;
    v172[1] = 3321888768;
    v172[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2;
    v172[3] = &unk_2A23F6DF8;
    v172[7] = v142;
    v172[4] = v127;
    v103 = a11;
    v174 = a11;
    v172[8] = a1;
    v172[9] = v101;
    AGX::Impl::FragmentProgramKey::FragmentProgramKey(v173, v140);
    v173[0] = &unk_2A23F7CF0;
    v173[35] = v141;
    v173[36] = a8;
    v173[37] = v137;
    v175 = v177;
    v176 = v178;
    v172[5] = a3;
    v172[6] = a2;
    v138[0] = MEMORY[0x29EDCA5F8];
    v138[1] = 3221225472;
    v138[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2081;
    v138[3] = &unk_29F341608;
    v138[4] = v172;
    v138[5] = v101;
    v139 = v132;
    v102 = a13;
    if ((v122 & 1) == 0 && AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v118))
    {
      v200[0] = v147;
      v200[1] = v148;
      v200[2] = v149;
      v200[3] = v150;
      __b = v143;
      *v198 = v144;
      *&v198[16] = v145;
      v199 = v146;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::FragmentProgramKey,true>(a1, v140, v113, &__b, v138);
    }

    else
    {
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunction_Impl<AGX::FragmentProgramKey>(a1, v140, v113, &v143, v138);
    }

    AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v173);
  }

  else if ((CompileOptions & 0x330003) != 0)
  {
    v109 = *a1;
    v169[0] = MEMORY[0x29EDCA5F8];
    v169[1] = 3221225472;
    v169[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_2_2082;
    v169[3] = &unk_29F341630;
    v170 = v177;
    v171 = v178;
    v169[5] = a8;
    v169[4] = a3;
    v169[6] = CompileOptions;
    v169[7] = VariantEntry;
    [*v109 reflectionWithFunction:v127 options:CompileOptions & 0x330003 sync:a11 ^ 1u completionHandler:v169];
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = *(v104 + 282);
  v160 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28createFragmentProgramVariantI31MTLMeshRenderPipelineDescriptorEEvPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_15FragmentProgramEPKNS_21VertexProgramVaryingsEPU27objcproto16OS_dispatch_data8NSObjectbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_22FragmentProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringSS_E_block_invoke_3;
  v161 = &unk_2A23F6E30;
  v164 = v101;
  v165 = a8;
  AGX::Impl::FragmentProgramKey::FragmentProgramKey(v166, v140);
  v166[0] = &unk_2A23F7CF0;
  v166[35] = v141;
  v167 = v177;
  v168 = v178;
  v162 = v102;
  v163 = v142;
  v125 = *v101;
  if (v103)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v125, global_queue, block);
  }

  else
  {
    dispatch_group_wait(*v101, 0xFFFFFFFFFFFFFFFFLL);
    v160(block);
  }

  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v166);
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v140);
  _Block_object_dispose(v142, 8);
}