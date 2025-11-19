uint64_t AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 2600);
  if (!v6)
  {
    llvm::ArrayType::get(*(a1 + 184), 0x1000);
    v7 = llvm::User::operator new(0x58);
    v8 = *(a1 + 432);
    llvm::UndefValue::get();
    v28[0] = "agc.simd_permute_emulation_scratchpad";
    v29 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setAlignment();
    *(v7 + 32) = *(v7 + 32) & 0xFFFFFF3F | 0x80;
    llvm::GlobalObject::setSection();
    llvm::ValueHandleBase::operator=((a1 + 2584), v7);
    v6 = *(a1 + 2600);
  }

  v9 = *(a1 + 184);
  if ((*(*v6 + 8) & 0xFE) == 0x12)
  {
    v10 = *(**(*v6 + 16) + 8);
  }

  v11 = llvm::PointerType::get();
  v29 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v6, v11, v28);
  v22 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (a1 + 8));
  v24 = *(a1 + 104);
  v13 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(a1, &v22, *(a1 + 192));
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v29 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v13, a3, v28);
  v16 = *(a1 + 184);
  v15 = *(a1 + 192);
  v17 = llvm::ConstantInt::get();
  v29 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), Sub, v17, v28);
  v21 = 257;
  return llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, Cast, Mul, v20);
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildSimdBarrier(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 192);
  v16[0] = llvm::ConstantInt::get();
  v5 = *(a1 + 192);
  v16[1] = llvm::ConstantInt::get();
  v6 = *(a1 + 1048);
  if (v6)
  {
    v7 = strlen(*(a1 + 1048));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v12 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v8 + 24), v8, v16, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildLocalLinearID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.linear.id", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildSimdShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(a1, &v10, a3, a4, 1, *(a1 + 968));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[313], a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildPermute(AGCLLVMGen3TargetLowerer *this, char *a2, llvm::Type **a3, llvm::Value *a4)
{
  v5 = a3;
  v8 = *a3;
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a3);
  switch(ScalarSizeInBits)
  {
    case 32:

      return AGCLLVMGen3TargetLowerer::buildPermute32(this, a2, v5, a4);
    case 16:

      return AGCLLVMGen3TargetLowerer::buildPermute16(this, a2, v5, a4);
    case 8:
      if ((*(v8 + 2) & 0xFE) == 0x12)
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          v11 = v10 + 1;
          v5 = AGCLLVMBuilder::extendVector(this, v5, v10 + 1);
        }

        else
        {
          v11 = *(v8 + 8);
        }

        if (v11 < 4)
        {
          v27 = *(this + 24);
        }

        else
        {
          v26 = *(this + 24);
          v27 = llvm::FixedVectorType::get();
        }

        v34 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v5, v27, v33);
        v29 = AGCLLVMGen3TargetLowerer::buildPermute16(this, a2, Cast, a4);
        v30 = *(this + 23);
        v31 = llvm::FixedVectorType::get();
        v34 = 257;
        v32 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v29, v31, v33);
        if ((v10 & 1) == 0)
        {
          goto LABEL_22;
        }

        Element = AGCLLVMBuilder::subrangeVector(this, v32, 0, v11 - 1, 1);
      }

      else
      {
        v13 = *(this + 29);
        v14 = llvm::UndefValue::get();
        v34 = 257;
        v15 = *(this + 25);
        v16 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v14, v5, v16, v33);
        v18 = *(this + 24);
        v34 = 257;
        v19 = llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v18, v33);
        v20 = AGCLLVMGen3TargetLowerer::buildPermute16(this, a2, v19, a4);
        v21 = *(this + 29);
        v34 = 257;
        v22 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v20, v21, v33);
        v34 = 257;
        v23 = *(this + 25);
        v24 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), v22, v24, v33);
      }

      v32 = Element;
LABEL_22:
      v34 = 257;
      return llvm::IRBuilderBase::CreateCast(this + 8, 49, v32, v8, v33);
    default:
      return 0;
  }
}

uint64_t AGCLLVMGen3TargetLowerer::buildPermute16(AGCLLVMGen3TargetLowerer *this, char *a2, llvm::Value *a3, llvm::Value *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  std::string::basic_string[abi:nn200100]<0>(&v37, a2);
  v9 = std::string::append(&v37, ".u.i16");
  v10 = v9->__r_.__value_.__r.__words[2];
  *__p = *&v9->__r_.__value_.__l.__data_;
  v40 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v40 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v40 >= 0)
  {
    v12 = SHIBYTE(v40);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v11, v12, *(this + 24), *(this + 24), *(this + 24));
  if ((*(v8 + 8) & 0xFE) == 0x12)
  {
    v14 = *(v8 + 32);
    if (v14 < 4)
    {
      v16 = *(this + 25);
      if (v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = *(this + 25);
      v16 = llvm::FixedVectorType::get();
      if (v14)
      {
LABEL_12:
        v38 = 257;
        v17 = *(this + 25);
        v18 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a3, v18, &v37);
        v20 = *(this + 24);
        v38 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, Element, v20, &v37);
        v42 = a4;
        v38 = 257;
        v21 = llvm::IRBuilderBase::CreateCall(this + 8, *(v13 + 24), v13, &Cast, 2, &v37);
        v22 = AGCLLVMBuilder::subrangeVector(this, a3, 0, v14 - 1, 1);
        v38 = 257;
        v23 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v22, v16, &v37);
        v24 = AGCLLVMGen3TargetLowerer::buildPermute32(this, a2, v23, a4);
        v25 = *(this + 24);
        v26 = llvm::FixedVectorType::get();
        v38 = 257;
        v27 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v24, v26, &v37);
        v28 = AGCLLVMBuilder::extendVector(this, v27, v14);
        v38 = 257;
        v29 = *(this + 25);
        v30 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v28, v21, v30, &v37);
        goto LABEL_16;
      }
    }

    v38 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(this + 8, 49, a3, v16, &v37);
    InsertElement = AGCLLVMGen3TargetLowerer::buildPermute32(this, a2, v33, a4);
  }

  else
  {
    v32 = *(this + 24);
    v38 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, a3, v32, &v37);
    v42 = a4;
    v38 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 8, *(v13 + 24), v13, &Cast, 2, &v37);
  }

LABEL_16:
  v38 = 257;
  v34 = llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v8, &v37);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t AGCLLVMGen3TargetLowerer::buildPermute32(AGCLLVMGen3TargetLowerer *this, char *a2, llvm::Value *a3, llvm::Value *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  std::string::basic_string[abi:nn200100]<0>(&v27, a2);
  v8 = std::string::append(&v27, ".u.i32");
  v9 = v8->__r_.__value_.__r.__words[2];
  *__p = *&v8->__r_.__value_.__l.__data_;
  v30 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v30 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v30 >= 0)
  {
    v11 = SHIBYTE(v30);
  }

  else
  {
    v11 = __p[1];
  }

  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v10, v11, *(this + 25), *(this + 25), *(this + 24));
  if ((*(v7 + 8) & 0xFE) == 0x12)
  {
    *v33 = 0u;
    v34 = 0u;
    v13 = AGCLLVMBuilder::unboxVector(this, a3, v33);
    v14 = *(this + 25);
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v13)
    {
      v16 = 0;
      v17 = v13;
      do
      {
        Cast = 0;
        v32 = 0;
        v18 = v33[v16];
        v19 = *(this + 25);
        v28 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v18, v19, &v27);
        v32 = a4;
        v28 = 257;
        v20 = llvm::IRBuilderBase::CreateCall(this + 8, *(v12 + 24), v12, &Cast, 2, &v27);
        v28 = 257;
        v21 = *(this + 25);
        v22 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v20, v22, &v27);
        ++v16;
      }

      while (v17 != v16);
    }
  }

  else
  {
    v23 = *(this + 25);
    v28 = 257;
    v33[0] = llvm::IRBuilderBase::CreateCast(this + 8, 49, a3, v23, &v27);
    v33[1] = a4;
    v28 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 8, *(v12 + 24), v12, v33, 2, &v27);
  }

  v28 = 257;
  v24 = llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v7, &v27);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffleUp(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[312], a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildSimdGroupIndexInThreadgroup(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 6);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(a1, &v13, a3);
  v7 = __clz(*(a1 + 968));
  v8 = llvm::ConstantInt::get();
  v12 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v6, v8, v11);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return LShr;
}

uint64_t AGCLLVMGen3TargetLowerer::buildThreadIndexInSimdGroup(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(a1, &v16, *(a1 + 200));
  v7 = *(a1 + 968);
  v8 = *(a1 + 200);
  v9 = llvm::ConstantInt::get();
  v15 = 257;
  v10 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v6, v9, v14);
  v13[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v13);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return Cast;
}

void AGCLLVMGen3TargetLowerer::buildWriteImageBlockIntrinsic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v70[16] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v62, *(a1 + 2064));
  if (a6)
  {
    std::string::append(&v62, ".subset");
  }

  std::string::append(&v62, ".coords");
  v69[0] = v70;
  v69[1] = 0x1000000000;
  v66 = v68;
  v67 = 0x1000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, a3);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, a4);
  v11 = *(a1 + 200);
  v12 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, v12);
  v13 = *(a2 + 56);
  v14 = *(a1 + 200);
  v15 = llvm::PointerType::get();
  v65 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v13, v15, &TypeAllocSize);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, Cast);
  v17 = *(a1 + 184);
  v18 = llvm::PointerType::get();
  v19 = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, v18);
  v20 = *(a2 + 32);
  if (v20)
  {
    if (!*(a1 + 1900) && (AGCLLVMObject::useTextureIDLegacyMode(v19) & 1) == 0)
    {
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 472), *(a1 + 1784));
      v64 = v21;
      llvm::TypeSize::operator unsigned long long();
      v22 = *(a1 + 200);
      v23 = llvm::ConstantInt::get();
      v24 = *(a1 + 200);
      v65 = 257;
      v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v20, v24, &TypeAllocSize);
      TypeAllocSize = "agx2_tex_heap_byte_offset";
      v65 = 259;
      Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v25, v23, &TypeAllocSize);
      v65 = 257;
      v20 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Mul, v18, &TypeAllocSize);
    }

    v27 = v20;
  }

  else
  {
    v28 = *(a1 + 208);
    v29 = llvm::ConstantInt::get();
    v65 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v29, v18, &TypeAllocSize);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, v27);
  v30 = *(a2 + 4);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v31 = ".cubestf";
LABEL_18:
      std::string::append(&v62, v31);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 248));
      v32 = *(a2 + 136);
      v33 = *(a1 + 248);
      goto LABEL_19;
    }

    if (v30 != 3)
    {
      goto LABEL_20;
    }

    std::string::append(&v62, ".3d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 336));
    v32 = *(a2 + 136);
    v33 = *(a1 + 336);
  }

  else
  {
    if (v30)
    {
      if (v30 != 1)
      {
        goto LABEL_20;
      }

      v31 = ".2d";
      goto LABEL_18;
    }

    std::string::append(&v62, ".1d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 200));
    v32 = *(a2 + 136);
    v33 = *(a1 + 200);
  }

LABEL_19:
  v65 = 257;
  ZExtOrBitCast = llvm::IRBuilderBase::CreateZExtOrBitCast((a1 + 8), v32, v33, &TypeAllocSize);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, ZExtOrBitCast);
LABEL_20:
  if (*(a2 + 152))
  {
    std::string::append(&v62, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
    v35 = *(a2 + 152);
    v36 = *(a1 + 192);
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v35, v36, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, v37);
  }

  if (*(a2 + 232))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
    v38 = *(a2 + 232);
    v39 = *(a1 + 192);
    v65 = 257;
    v40 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v38, v39, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, v40);
  }

  if (*(a2 + 168))
  {
    std::string::append(&v62, ".lod");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
    v41 = *(a2 + 168);
    v42 = *(a1 + 192);
    v65 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, v43);
  }

  if (a6)
  {
    v44 = **(a2 + 120);
    if ((*(v44 + 8) & 0xFE) == 0x12)
    {
      v45 = *(v44 + 32);
      if (!v45)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v45 = 1;
    }

    v46 = 0;
    v47 = v45;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
      v48 = *(a2 + 120);
      v65 = 257;
      v49 = *(a1 + 200);
      v50 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v48, v50, &TypeAllocSize);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, Element);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, *(a1 + 192));
      v52 = *(a2 + 128);
      v65 = 257;
      v53 = *(a1 + 200);
      v54 = llvm::ConstantInt::get();
      v55 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v52, v54, &TypeAllocSize);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, v55);
      ++v46;
    }

    while (v47 != v46);
  }

LABEL_33:
  if (*(a2 + 16) == 1)
  {
    std::string::append(&v62, ".rtz");
  }

  v56 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v57 = &v62;
LABEL_38:
    strlen(v57);
    goto LABEL_39;
  }

  v57 = v62.__r_.__value_.__r.__words[0];
  if (v62.__r_.__value_.__r.__words[0])
  {
    goto LABEL_38;
  }

LABEL_39:
  v58 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v65 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v59 + 24), v59, v66, v67, &TypeAllocSize);
  v60 = *(a1 + 456);
  TypeAllocSize = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  if (v66 != v68)
  {
    free(v66);
  }

  if (v69[0] != v70)
  {
    free(v69[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v61 = *MEMORY[0x277D85DE8];
}

llvm::Value *llvm::IRBuilderBase::CreateZExtOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ZExtOrBitCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      ZExtOrBitCast = llvm::CastInst::CreateZExtOrBitCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, ZExtOrBitCast, a4);
    }

    else
    {
      ZExtOrBitCast = (*(*this[9] + 288))(this[9], a2, a3);
      if (ZExtOrBitCast)
      {
        v7 = *(ZExtOrBitCast + 16) >= 0x1Cu;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, ZExtOrBitCast, a4);
      }
    }
  }

  return ZExtOrBitCast;
}

void AGCLLVMGen3TargetLowerer::buildWriteImageBlock(void *a1)
{
  v3 = a1[7];
  v2 = a1[8];
  v6 = "image_block_merge";
  v7 = 259;
  llvm::BasicBlock::splitBasicBlock();
  v4 = a1[57];
  v6 = "explicit_origin_and_size";
  v7 = 259;
  v5 = *(v3 + 56);
  operator new();
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteImageBlockSwitch(unsigned int **a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, llvm::BasicBlock *a6, uint64_t a7)
{
  a1[7] = a4;
  a1[8] = a4 + 10;
  v11 = *(a2 + 104);
  v12 = a1[26];
  v29 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, v11, v12, v28);
  v14 = a1[24];
  v27 = 257;
  v15 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Cast, v14, v26);
  if (*(a2 + 280))
  {
    v16 = a1[57];
    v28[0] = "default";
    v29 = 259;
    operator new();
  }

  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(*(a2 + 12), 0);
  v17 = a1[24];
  v18 = llvm::ConstantInt::get();
  v19 = *(a2 + 96);
  v20 = a1[24];
  v21 = llvm::ConstantInt::get();
  v29 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), v21, v15, v28);
  v23 = a1[24];
  v24 = llvm::ConstantInt::get();
  (*(*a1 + 202))(a1, a2, v18, Add, v24, a7);
  return llvm::IRBuilderBase::CreateBr(a1 + 1, a6);
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildPack9995(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2)
{
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v4 = *(this + 316);
  if (v4)
  {
    v5 = strlen(*(this + 316));
  }

  else
  {
    v5 = 0;
  }

  v6 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(this, &v8, v4, v5, "rgb9e5", 6, *(this + 25), a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::Type *a7, uint64_t *a8)
{
  v60 = *MEMORY[0x277D85DE8];
  v54[0] = a3;
  v54[1] = a4;
  v51 = *a2;
  v52 = *(a2 + 2);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v51, (a1 + 1));
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  AGCLLVMGen3TargetLowerer::getMemoryWriteIntrinsicArgsFromIR(a1, *a8, a5, a6);
  v15 = v14;
  llvm::StringRef::str(&v50, v54);
  AGCLLVMGen3TargetLowerer::getWriteSuffix(&__str, a1, v15);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v17 = std::string::basic_string(&v58, &__str, size - 2, 0xFFFFFFFFFFFFFFFFLL, __p);
  v18 = std::string::insert(v17, 0, "sz");
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v59, ".");
  v21 = v20->__r_.__value_.__r.__words[2];
  *__p = *&v20->__r_.__value_.__l.__data_;
  v46[0].__locale_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46[0].__locale_) >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (SHIBYTE(v46[0].__locale_) >= 0)
  {
    locale_high = HIBYTE(v46[0].__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  std::string::insert(&__str, 0, v22, locale_high);
  if (SHIBYTE(v46[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if ((*(*a8 + 8) & 0xFE) == 0x12)
  {
    v24 = *(*a8 + 32);
  }

  else
  {
    v24 = 1;
  }

  std::string::insert(&__str, 0, off_277E21FE8[v24 - 1]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __str.__r_.__value_.__l.__size_;
  }

  std::string::append(&v50, p_str, v26);
  if (v24 == 3)
  {
    a8 = AGCLLVMBuilder::extendVector(a1, a8, 4);
  }

  v27 = *a8;
  v59.__r_.__value_.__r.__words[0] = &v59.__r_.__value_.__r.__words[2];
  v59.__r_.__value_.__l.__size_ = 0x300000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v27);
  v58.__r_.__value_.__r.__words[0] = &v58.__r_.__value_.__r.__words[2];
  v58.__r_.__value_.__l.__size_ = 0x300000000;
  v28 = a1[24];
  v29 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v58, v29);
  v30 = a1[24];
  v31 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v58, v31);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v58, a8);
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  if ((*(a7 + 2) & 0xFE) == 0x12)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".v", 2);
    v32 = MEMORY[0x20F331C20](__p, *(a7 + 8));
    v33 = v32;
    v34 = "i";
    v35 = 1;
  }

  else
  {
    v34 = ".i";
    v33 = __p;
    v32 = __p;
    v35 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, v34, v35);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(a7);
  MEMORY[0x20F331C20](v33, ScalarSizeInBits);
  std::stringbuf::str();
  if ((v56 & 0x80u) == 0)
  {
    v37 = v55;
  }

  else
  {
    v37 = v55[0];
  }

  if ((v56 & 0x80u) == 0)
  {
    v38 = v56;
  }

  else
  {
    v38 = v55[1];
  }

  std::string::append(&v50, v37, v38);
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  llvm::FunctionType::get();
  v39 = a1[54];
  llvm::Module::getOrInsertFunction();
  v57 = 257;
  v41 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v40 + 24), v40, v58.__r_.__value_.__l.__data_, LODWORD(v58.__r_.__value_.__r.__words[1]), v55);
  v42 = a1[57];
  v55[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v46);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v48);
  if (v58.__r_.__value_.__l.__data_ != &v58.__r_.__value_.__r.__words[2])
  {
    free(v58.__r_.__value_.__l.__data_);
  }

  if (v59.__r_.__value_.__l.__data_ != &v59.__r_.__value_.__r.__words[2])
  {
    free(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v41;
}

unint64_t AGCLLVMGen3TargetLowerer::getMemoryWriteIntrinsicArgsFromIR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v6 = **(a2 + 16);
  }

  if (a4)
  {
    Key = llvm::StringMapImpl::FindKey();
    if (Key == -1)
    {
      v8 = *(a1 + 2424);
    }

    else
    {
      v8 = Key;
    }

    v16 = *(*(*(a1 + 2416) + 8 * v8) + 8);
    v18 = HIDWORD(v16);
    v19 = HIWORD(v16);
  }

  else
  {
    llvm::Type::getPrimitiveSizeInBits(v6);
    v9 = llvm::TypeSize::operator unsigned long long();
    v11 = *(a1 + 2400);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = a1 + 2400;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= v9;
      v15 = v13 < v9;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 == a1 + 2400 || *(v12 + 32) > v9)
    {
LABEL_14:
      v12 = a1 + 2400;
    }

    v16 = *(v12 + 40);
    if ((*(a2 + 8) & 0xFE) == 0x12)
    {
      v17 = *(a2 + 32);
    }

    else
    {
      v17 = 1;
    }

    if (*(v6 + 2) >> 8 >= 0x21u && *(v6 + 2) == 13)
    {
      v6 = *(a1 + 192);
      v17 /= *(v6 + 2) >> 12;
    }

    v20 = -1 << v17;
    v10.i32[0] = ~v20;
    v21 = vcnt_s8(v10);
    v21.i16[0] = vaddlv_u8(v21);
    if (WORD2(v16))
    {
      v19 = HIWORD(v16);
    }

    else
    {
      v19 = v21.u32[0];
    }

    if (WORD2(v16))
    {
      LOWORD(v18) = WORD2(*(v12 + 40));
    }

    else
    {
      LOWORD(v18) = ~v20;
    }
  }

  if ((*(v6 + 2) & 0xFFFFF0FF) == 0xD)
  {
    v22 = *(a1 + 192);
  }

  llvm::FixedVectorType::get();
  return (v19 << 48) | (v18 << 32) | v16;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpack9995(AGCLLVMGen3TargetLowerer *this, llvm::Type **a2, llvm::Type *a3)
{
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v5 = *(this + 315);
  if (v5)
  {
    v6 = strlen(*(this + 315));
  }

  else
  {
    v6 = 0;
  }

  v7 = llvm::FixedVectorType::get();
  v8 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(this, &v10, v5, v6, "rgb9e5", 6, v7, a2);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(llvm::Type *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::Type ***a7, llvm::Type **Cast)
{
  v59 = *MEMORY[0x277D85DE8];
  v57[0] = a3;
  v57[1] = a4;
  v54 = *a2;
  v55 = *(a2 + 2);
  if (v55)
  {
    llvm::MetadataTracking::track();
  }

  v56 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v54, a1 + 8);
  if (v55)
  {
    llvm::MetadataTracking::untrack();
  }

  IntrinsicArgsFromIR = AGCLLVMGen3TargetLowerer::getMemoryReadIntrinsicArgsFromIR(a1, a7, a5, a6);
  v16 = v15;
  llvm::StringRef::str(&v53, v57);
  AGCLLVMGen3TargetLowerer::getReadSuffix(&__str, a1, v16, HIWORD(IntrinsicArgsFromIR));
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v18 = std::string::basic_string(&v58, &__str, size - 2, 0xFFFFFFFFFFFFFFFFLL, __p);
  v19 = std::string::insert(v18, 0, "sz");
  v20 = v19->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v46, ".");
  v22 = v21->__r_.__value_.__r.__words[2];
  *__p = *&v21->__r_.__value_.__l.__data_;
  v49[0].__locale_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v49[0].__locale_) >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if (SHIBYTE(v49[0].__locale_) >= 0)
  {
    locale_high = HIBYTE(v49[0].__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  std::string::insert(&__str, 2uLL, v23, locale_high);
  if (SHIBYTE(v49[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __str.__r_.__value_.__l.__size_;
  }

  std::string::append(&v53, p_str, v26);
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  v27 = *Cast;
  v28 = *(*Cast + 2);
  if (v28 == 15)
  {
    v29 = v28 >> 8;
    v30 = *(a1 + 23);
    v31 = llvm::PointerType::get();
    v47 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, Cast, v31, &v46);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".p", 2);
    MEMORY[0x20F331C20](__p, v29);
    if ((llvm::Type::isOpaquePointerTy(*Cast) & 1) == 0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "i8", 2);
    }
  }

  else
  {
    if ((v28 & 0xFE) == 0x12)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".v", 2);
      v32 = MEMORY[0x20F331C20](__p, v27[8]);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, "i", 1);
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v27);
      v34 = v32;
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".i", 2);
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v27);
      v34 = __p;
    }

    MEMORY[0x20F331C20](v34, ScalarSizeInBits);
  }

  std::stringbuf::str();
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v46;
  }

  else
  {
    v35 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v46.__r_.__value_.__l.__size_;
  }

  std::string::append(&v53, v35, v36);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v53;
  }

  else
  {
    v37 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v53.__r_.__value_.__l.__size_;
  }

  v39 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v37, v38, v16, *(a1 + 24), *(a1 + 24), *Cast);
  v40 = *(a1 + 24);
  v58.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
  v41 = *(a1 + 24);
  v58.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
  v58.__r_.__value_.__r.__words[2] = Cast;
  v47 = 257;
  v42 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v39 + 24), v39, &v58, 3, &v46);
  v43 = AGCLLVMGen3TargetLowerer::reconcileLLVMReadIntrinsicResultWithIR(a1, a7, v16, v42);
  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v49);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v51);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

unint64_t AGCLLVMGen3TargetLowerer::getMemoryReadIntrinsicArgsFromIR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (v6 == 15)
  {
    v4 = **(a2 + 16);
    v6 = *(v4 + 8);
  }

  v7 = v4;
  if ((v6 & 0xFE) == 0x12)
  {
    v7 = **(v4 + 16);
  }

  if (a4)
  {
    Key = llvm::StringMapImpl::FindKey();
    if (Key == -1)
    {
      v9 = *(a1 + 2424);
    }

    else
    {
      v9 = Key;
    }

    v17 = *(*(*(a1 + 2416) + 8 * v9) + 8);
    v18 = HIDWORD(v17);
    v19 = HIWORD(v17);
  }

  else
  {
    llvm::Type::getPrimitiveSizeInBits(v7);
    v10 = llvm::TypeSize::operator unsigned long long();
    v12 = *(a1 + 2400);
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = a1 + 2400;
    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= v10;
      v16 = v14 < v10;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 == a1 + 2400 || *(v13 + 32) > v10)
    {
LABEL_16:
      v13 = a1 + 2400;
    }

    v17 = *(v13 + 40);
    if (WORD2(v17))
    {
      v18 = HIDWORD(v17);
      v19 = HIWORD(v17);
    }

    else
    {
      if ((*(v4 + 8) & 0xFE) == 0x12)
      {
        v20 = *(v4 + 32);
      }

      else
      {
        LOBYTE(v20) = 1;
      }

      LOWORD(v18) = ~(-1 << v20);
      v11.i32[0] = ~(-1 << v20);
      v21 = vcnt_s8(v11);
      v21.i16[0] = vaddlv_u8(v21);
      v19 = v21.u32[0];
    }

    if (*(v7 + 2) >> 8 >= 0x21u && *(v7 + 2) == 13)
    {
      v7 = *(a1 + 192);
    }
  }

  if ((*(v7 + 2) & 0xFFFFF0FF) == 0xD)
  {
    v22 = *(a1 + 192);
  }

  if ((v19 - 2) <= 2u)
  {
    v23 = dword_20E71605C[(v19 - 2)];
    llvm::FixedVectorType::get();
  }

  return (v18 << 32) | (v19 << 48) | v17;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildPack111110(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2)
{
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v4 = *(this + 316);
  if (v4)
  {
    v5 = strlen(*(this + 316));
  }

  else
  {
    v5 = 0;
  }

  v6 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(this, &v8, v4, v5, "rg11b10f", 8, *(this + 25), a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpack111110(AGCLLVMGen3TargetLowerer *this, llvm::Type **a2, llvm::Type *a3)
{
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v5 = *(this + 315);
  if (v5)
  {
    v6 = strlen(*(this + 315));
  }

  else
  {
    v6 = 0;
  }

  v7 = llvm::FixedVectorType::get();
  v8 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(this, &v10, v5, v6, "rg11b10f", 8, v7, a2);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildPack1010102(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2, int a3, char a4)
{
  if (!a3 || (a4 & 1) != 0)
  {
    v8 = *(this + 25);
    v9 = *(*this + 1528);

    return v9();
  }

  else
  {
    v12 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (this + 8));
    v14 = *(this + 26);
    v6 = *(this + 316);
    if (v6)
    {
      v7 = strlen(*(this + 316));
    }

    else
    {
      v7 = 0;
    }

    v11 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(this, &v12, v6, v7, "rgb10a2", 7, *(this + 25), a2);
    if (v13)
    {
      llvm::MetadataTracking::untrack();
    }

    return v11;
  }
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpack1010102(AGCLLVMGen3TargetLowerer *this, llvm::Type **a2, llvm::Type *a3, unsigned int a4, int a5, char a6)
{
  if (!a5 || (a6 & 1) != 0)
  {
    v10 = *(*this + 1536);

    return v10();
  }

  else
  {
    v14 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
    v16 = *(this + 26);
    v8 = *(this + 315);
    if (v8)
    {
      v9 = strlen(*(this + 315));
    }

    else
    {
      v9 = 0;
    }

    v12 = llvm::FixedVectorType::get();
    v13 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(this, &v14, v8, v9, "rgb10a2", 7, v12, a2);
    if (v15)
    {
      llvm::MetadataTracking::untrack();
    }

    return v13;
  }
}

uint64_t AGCLLVMGen3TargetLowerer::buildMemoryCacheCtlFromCoherenceScope(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    *(a1 + 1951);
  }

  v2 = *(a1 + 192);
  return llvm::ConstantInt::get();
}

void AGCLLVMGen3TargetLowerer::exceededResourceLimits(AGCLLVMGen3TargetLowerer *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v15 = a7 + a4;
  std::string::basic_string[abi:nn200100]<0>(&v103, &unk_20E75F419);
  v16 = (*(**(this + 115) + 24))(*(this + 115), a8);
  v17 = (*(**(this + 115) + 16))(*(this + 115));
  __val = a5;
  v18 = a5 + a2;
  v19 = (*(**(this + 115) + 40))(*(this + 115));
  v94 = a6;
  v20 = a6 + a3;
  v21 = (*(**(this + 115) + 32))(*(this + 115));
  if (v15 > 0x10 || (v16 >= a2 ? (v22 = v17 >= a3) : (v22 = 0), v22 ? (v23 = v18 > v19) : (v23 = 1), !v23 ? (v24 = v20 > v21) : (v24 = 1), v24))
  {
    v22 = v16 >= a2;
    v27 = v21;
    if (!v22)
    {
      std::to_string(&v97, a2);
      v28 = std::string::insert(&v97, 0, " buffers (");
      v29 = v28->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v98, "/");
      v31 = v30->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = (*(**(this + 115) + 24))(*(this + 115), a8);
      std::to_string(&v96, v32);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v96;
      }

      else
      {
        v33 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v96.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v99, v33, size);
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v100, ")");
      v38 = v37->__r_.__value_.__r.__words[2];
      v101 = *&v37->__r_.__value_.__l.__data_;
      v102 = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v39 = &v101;
      }

      else
      {
        v39 = v101;
      }

      if (v102 >= 0)
      {
        v40 = HIBYTE(v102);
      }

      else
      {
        v40 = *(&v101 + 1);
      }

      std::string::append(&v103, v39, v40);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    if (v17 < a3)
    {
      std::to_string(&v97, a3);
      v41 = std::string::insert(&v97, 0, " textures (");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v98, "/");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = (*(**(this + 115) + 16))(*(this + 115));
      std::to_string(&v96, v45);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v96;
      }

      else
      {
        v46 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v96.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v99, v46, v47);
      v49 = v48->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v100, ")");
      v51 = v50->__r_.__value_.__r.__words[2];
      v101 = *&v50->__r_.__value_.__l.__data_;
      v102 = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v52 = &v101;
      }

      else
      {
        v52 = v101;
      }

      if (v102 >= 0)
      {
        v53 = HIBYTE(v102);
      }

      else
      {
        v53 = *(&v101 + 1);
      }

      std::string::append(&v103, v52, v53);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    if (v15 >= 0x11)
    {
      std::to_string(&v97, v15);
      v54 = std::string::insert(&v97, 0, " samplers (");
      v55 = v54->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v98, "/");
      v57 = v56->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v56->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v96, 16);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v96;
      }

      else
      {
        v58 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v96.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v99, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v100, ")");
      v63 = v62->__r_.__value_.__r.__words[2];
      v101 = *&v62->__r_.__value_.__l.__data_;
      v102 = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v64 = &v101;
      }

      else
      {
        v64 = v101;
      }

      if (v102 >= 0)
      {
        v65 = HIBYTE(v102);
      }

      else
      {
        v65 = *(&v101 + 1);
      }

      std::string::append(&v103, v64, v65);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    v23 = v18 > v19;
    v26 = a9;
    if (v23)
    {
      std::to_string(&v97, __val);
      v66 = std::string::insert(&v97, 0, " indirect buffers (");
      v67 = v66->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      v68 = std::string::append(&v98, "/");
      v69 = v68->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      v70 = (*(**(this + 115) + 40))(*(this + 115));
      std::to_string(&v96, v70);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v96;
      }

      else
      {
        v71 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v96.__r_.__value_.__l.__size_;
      }

      v73 = std::string::append(&v99, v71, v72);
      v74 = v73->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      v75 = std::string::append(&v100, ")");
      v76 = v75->__r_.__value_.__r.__words[2];
      v101 = *&v75->__r_.__value_.__l.__data_;
      v102 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v77 = &v101;
      }

      else
      {
        v77 = v101;
      }

      if (v102 >= 0)
      {
        v78 = HIBYTE(v102);
      }

      else
      {
        v78 = *(&v101 + 1);
      }

      std::string::append(&v103, v77, v78);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    if (v20 > v21)
    {
      std::to_string(&v97, v94);
      v79 = std::string::insert(&v97, 0, " indirect textures (");
      v80 = v79->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v79->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v98, "/");
      v82 = v81->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v81->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      v83 = (*(**(this + 115) + 32))(*(this + 115));
      std::to_string(&v96, v83);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v96;
      }

      else
      {
        v84 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v85 = v96.__r_.__value_.__l.__size_;
      }

      v86 = std::string::append(&v99, v84, v85);
      v87 = v86->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v86->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      v88 = std::string::append(&v100, ")");
      v89 = v88->__r_.__value_.__r.__words[2];
      v101 = *&v88->__r_.__value_.__l.__data_;
      v102 = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v90 = &v101;
      }

      else
      {
        v90 = v101;
      }

      if (v102 >= 0)
      {
        v91 = HIBYTE(v102);
      }

      else
      {
        v91 = *(&v101 + 1);
      }

      std::string::append(&v103, v90, v91);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
    v26 = a9;
  }

  *v26 = v25;
  v92 = (v26 + 8);
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v92, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v92 = v103;
  }
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildDepthf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 1616);
  if (v6)
  {
    v7 = strlen(*(a1 + 1616));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 144), *(a1 + 168), *(a1 + 192));
  v9 = *(a1 + 192);
  v10 = llvm::ConstantInt::get();
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v11 = (*(*a1 + 208))(a1, &v16, v10);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v22[0] = a3;
  v22[1] = v11;
  v15 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v8 + 24), v8, v22, 2, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildGammaSpaceConversion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  if (v8)
  {
    llvm::MetadataTracking::track();
  }

  v9 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v7);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return a3;
}

uint64_t AGCLLVMGen3TargetLowerer::buildGammaExpansion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  if (v8)
  {
    llvm::MetadataTracking::track();
  }

  v9 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v7);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return a3;
}

uint64_t AGCLLVMGen3TargetLowerer::getVertexInputRegister(uint64_t a1, _DWORD *a2, int a3)
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  result = dword_20E716308[a3 - 1];
  if (*a2 <= result)
  {
    *a2 = result + 1;
  }

  return result;
}

void AGCLLVMGen3TargetLowerer::setSlcCachePolicyForImageWrites(AGCLLVMGen3TargetLowerer *this, llvm::Function *a2)
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGX_G10_IMAGE_WRITE_CACHE_CTL", v2);
    if (Value)
    {
      strlen(Value);
      llvm::Function::addFnAttr();
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v4 = AGCEnv::getValue("AGX_IMAGE_WRITE_PERSISTANCE", v2);
    if (v4)
    {
      strlen(v4);

      llvm::Function::addFnAttr();
    }
  }
}

uint64_t AGCLLVMGen3TargetLowerer::buildManualResolve(AGCLLVMBuilder *a1, uint64_t a2, AGCLLVMGen3TargetLowerer *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = *a2;
  v48 = *(a2 + 16);
  if (v48)
  {
    llvm::MetadataTracking::track();
  }

  v42 = a7;
  v49 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v47);
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = *(a1 + 24);
  v46 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a8, v17, v45);
  v19 = *(a1 + 21);
  if (a4 == 3)
  {
    v20 = 4;
  }

  else
  {
    v20 = a4;
  }

  v21 = *(a1 + 21);
  if (v20 != 1)
  {
    v22 = *(a1 + 21);
    v21 = llvm::FixedVectorType::get();
  }

  v41 = v20;
  v44 = v21;
  v43[0] = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a3, a5);
  v43[1] = a3;
  v43[2] = ~(-1 << a4);
  v43[3] = a4;
  NullValue = llvm::Constant::getNullValue(v21, v23);
  if (a6)
  {
    v25 = 0;
    v26 = v42;
    do
    {
      v27 = v44;
      v28 = *(a1 + 24);
      v29 = llvm::ConstantInt::get();
      LOBYTE(v38) = 1;
      v30 = (*(*a1 + 1688))(a1, v43, a6, v42, v27, Cast, v29, 0, a9, a10, v38);
      v46 = 257;
      NullValue = llvm::IRBuilderBase::CreateFAdd(a1 + 8, NullValue, v30, v45);
      ++v25;
    }

    while (a6 != v25);
  }

  else
  {
    v26 = v42;
  }

  v31 = llvm::ConstantFP::get();
  v32 = AGCLLVMBuilder::splat(a1, v41, v31);
  v46 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(a1 + 8, NullValue, v32, v45);
  v44 = llvm::FixedVectorType::get();
  v34 = AGCLLVMBuilder::extendVector(a1, FDiv, 4);
  v35 = *(a1 + 24);
  v36 = llvm::ConstantInt::get();
  HIBYTE(v39) = 1;
  LOBYTE(v39) = *(a1 + 1889);
  return (*(*a1 + 1696))(a1, v43, a6, v26, v34, Cast, v36, 1, 0, a9, a10, v39);
}

uint64_t AGCLLVMGen3TargetLowerer::buildLocalID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, "llvm.agx2.local.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v20, aXyz[a4]);
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v14);
  if (v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t *AGCLLVMGen3TargetLowerer::buildCopyOffChipMRTPixelData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a3;
  v67[2] = *MEMORY[0x277D85DE8];
  v64 = *a2;
  v65 = *(a2 + 16);
  if (v65)
  {
    llvm::MetadataTracking::track();
  }

  v66 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v64);
  if (v65)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *(a4 + 4 * v6);
  v47 = *(a4 + 72);
  v10 = *(a1 + 1032);
  if (v10)
  {
    v11 = strlen(*(a1 + 1032));
  }

  else
  {
    v11 = 0;
  }

  v42 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v10, v11, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v12 = *(a1 + 192);
  v67[0] = llvm::ConstantInt::get();
  v13 = *(a1 + 192);
  v67[1] = llvm::ConstantInt::get();
  if (a5)
  {
    v63 = 257;
    llvm::IRBuilderBase::CreateCall(a1 + 8, *(v42 + 24), v42, v67, 2, v61);
  }

  if (v6 <= 7)
  {
    v6 = v6;
    v45 = v9;
    do
    {
      if (((v47 >> v6) & 1) != 0 || ((v47 >> v6) & 0x100) != 0)
      {
        if (*(a4 + 4 * v6) != v9)
        {
          break;
        }

        v14 = llvm::User::operator new(0x58);
        v15 = *(a1 + 432);
        v16 = *(a1 + 200);
        v61[0] = "agc.emit_info";
        v49 = v49 & 0xFFFFFFFF00000000 | v6;
        v62 = v49;
        v63 = 2051;
        v40 = *(a1 + 972) | 0x100000000;
        llvm::GlobalVariable::GlobalVariable();
        llvm::GlobalObject::setSection();
        v17 = *(a1 + 440);
        v18 = AGCLLVMBuilder::buildGlobalMetadata(a1, v14);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v17, v18);
        v63 = 257;
        Load = AGCLLVMBuilder::CreateLoad(a1, v14, v61);
        if (*(a1 + 1955) == 1)
        {
          v19 = llvm::User::operator new(0x58);
          v20 = *(a1 + 432);
          v21 = *(a1 + 200);
          v61[0] = "agc.slab_index";
          v44 = v44 & 0xFFFFFFFF00000000 | v6;
          v62 = v44;
          v63 = 2051;
          v41 = *(a1 + 972) | 0x100000000;
          v22 = llvm::GlobalVariable::GlobalVariable();
          *(v22 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v23 = *(a1 + 440);
          v24 = AGCLLVMBuilder::buildGlobalMetadata(a1, v19);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, v24);
          v63 = 257;
          v25 = AGCLLVMBuilder::CreateLoad(a1, v19, v61);
          v26 = *(a1 + 192);
          v60 = 257;
          Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v59);
        }

        else
        {
          v28 = *(a1 + 192);
          Cast = llvm::ConstantInt::get();
        }

        v29 = Cast;
        v56 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (a1 + 8));
        v58 = *(a1 + 104);
        v30 = (*(*a1 + 208))(a1, &v56, v29);
        if (v57)
        {
          llvm::MetadataTracking::untrack();
        }

        v51 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (a1 + 8));
        v53 = *(a1 + 104);
        v31 = *(a4 + 4 * v6);
        v32 = *(a4 + 76);
        v33 = *(a1 + 192);
        v34 = llvm::ConstantInt::get();
        v35 = *(a4 + 72);
        v36 = *(a1 + 192);
        v37 = llvm::ConstantInt::get();
        AGCLLVMGen3TargetLowerer::buildCopyOffChipMRTPixelDataStateless(v54, a1, &v51, BYTE1(v31), (v31 >> 26) & 7, v32 & 0xF, HIBYTE(v31) & 1, a5, v34, Load, v37, v29, v30);
        if (v55)
        {
          llvm::MetadataTracking::untrack();
        }

        if (v52)
        {
          llvm::MetadataTracking::untrack();
        }

        v9 = v45;
      }

      ++v6;
    }

    while (v6 != 8);
  }

  if (a5)
  {
    v63 = 257;
    llvm::IRBuilderBase::CreateCall(a1 + 8, *(v42 + 24), v42, v67, 2, v61);
  }

  *a6 = *(a1 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((a6 + 16), (a1 + 8));
  *(a6 + 24) = *(a1 + 104);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *AGCLLVMGen3TargetLowerer::buildCopyOffChipMRTPixelDataStateless(uint64_t a1, uint64_t a2, uint64_t a3, AGCLLVMGen3TargetLowerer *a4, __int16 a5, uint64_t a6, int a7, int a8, llvm::Value *a9, uint64_t a10, llvm::Value *a11, uint64_t a12, uint64_t a13)
{
  v71 = *MEMORY[0x277D85DE8];
  v65 = *a3;
  v66 = *(a3 + 16);
  if (v66)
  {
    llvm::MetadataTracking::track();
  }

  v67 = *(a3 + 24);
  AGCLLVMTargetLowerer::SetIP(a2, &v65);
  if (v66)
  {
    llvm::MetadataTracking::untrack();
  }

  v20 = *(a2 + 192);
  v69 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 38, a10, v20, &v68);
  v22 = *(a2 + 192);
  v23 = llvm::ConstantInt::get();
  v69 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a2 + 8), a9, v23, &v68);
  v64 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a2 + 8), a11, Sub, v63);
  v62 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a2 + 8), Cast, Mul, &v61);
  v59 = 0;
  v60 = 0;
  AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v68, a2, a4, 0, 0, 0);
  if ((v70 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v27 = *(v68 + 8);
  if ((v27 & 0xFE) == 0x12)
  {
    v27 = *(**(v68 + 16) + 8);
  }

  if ((v27 & 0xFFFFF0FF) == 0xD)
  {
    v28 = *(a2 + 192);
  }

  v60 = llvm::FixedVectorType::get();
  LOWORD(v59) = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a4, a7);
  WORD1(v59) = a4;
  WORD2(v59) = (1 << a5) - 1;
  HIWORD(v59) = a5;
  if (!a8)
  {
    v49 = *(a2 + 456);
    *&v68 = "itr_x";
    v69 = 259;
    v50 = *(*(a2 + 56) + 56);
    operator new();
  }

  v29 = *(a2 + 240);
  InsertElement = llvm::UndefValue::get();
  v31 = 0;
  v32 = 1;
  do
  {
    v33 = v32;
    v56 = *(a2 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (a2 + 8));
    v58 = *(a2 + 104);
    v34 = (*(*a2 + 272))(a2, &v56, *(a2 + 192), v31);
    v69 = 257;
    v35 = *(a2 + 200);
    v36 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a2 + 8), InsertElement, v34, v36, &v68);
    if (v57)
    {
      llvm::MetadataTracking::untrack();
    }

    v32 = 0;
    v31 = 1;
  }

  while ((v33 & 1) != 0);
  v37 = (*(*a2 + 1704))(a2, WORD1(v59), HIWORD(v59), a6, Add, InsertElement);
  if (a6)
  {
    GEP = v37;
    v40 = v38;
    v41 = 0;
    do
    {
      v42 = *(a2 + 192);
      v43 = llvm::ConstantInt::get();
      EMRTTileBuffer = AGCLLVMGen3TargetLowerer::buildLoadEMRTTileBuffer(a2, &v59, v43, GEP);
      v45 = *(a2 + 200);
      v46 = llvm::ConstantInt::get();
      v69 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((a2 + 8), v40, GEP, v46, &v68);
      v47 = *(a2 + 192);
      v48 = llvm::ConstantInt::get();
      BYTE1(v53) = 1;
      LOBYTE(v53) = *(a2 + 1889);
      (*(*a2 + 1696))(v55, a2, &v59, a6, a11, EMRTTileBuffer, Cast, v48, 1, InsertElement, a12, a13, v53);
      if (v55[2])
      {
        llvm::MetadataTracking::untrack();
      }

      ++v41;
    }

    while (a6 > v41);
  }

  *a1 = *(a2 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((a1 + 16), (a2 + 8));
  *(a1 + 24) = *(a2 + 104);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(_BYTE *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v36 = *MEMORY[0x277D85DE8];
  if (a3 <= 11)
  {
    if (a3 > 5)
    {
      if ((a3 - 6) < 2)
      {
LABEL_29:
        v11 = *(a2 + 312);
        goto LABEL_30;
      }

      if ((a3 - 8) < 2)
      {
        v11 = *(a2 + 328);
        goto LABEL_37;
      }

      if ((a3 - 10) < 2)
      {
        v11 = *(a2 + 336);
        goto LABEL_37;
      }

LABEL_65:
      v28 = 0;
      *result = 0;
      goto LABEL_63;
    }

    if ((a3 - 2) >= 2)
    {
      if ((a3 - 4) < 2)
      {
        v11 = *(a2 + 320);
        goto LABEL_37;
      }

      goto LABEL_65;
    }

LABEL_23:
    if (!a5)
    {
      v11 = *(a2 + 312);
      goto LABEL_37;
    }

    if ((*(a5 + 8) & 0xFE) == 0x12)
    {
      v14 = **(a5 + 16);
    }

    v11 = llvm::FixedVectorType::get();
    goto LABEL_30;
  }

  if (a3 > 17)
  {
    if (a3 > 19)
    {
      if ((a3 - 20) < 2)
      {
        v12 = 296;
        if (*(a2 + 1936))
        {
          v12 = 312;
        }

        v11 = *(a2 + v12);
        if (a5 && *(a2 + 1936))
        {
          if ((*(a5 + 8) & 0xFE) == 0x12)
          {
            v13 = **(a5 + 16);
          }

          v11 = llvm::FixedVectorType::get();
        }

        goto LABEL_37;
      }

      if (a3 == 22)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }

    if (a3 == 18)
    {
      v11 = *(a2 + 240);
LABEL_68:
      v16 = v11;
      v30 = 0x200000001;
      v11 = *(a2 + 328);
      goto LABEL_44;
    }

    goto LABEL_23;
  }

  if ((a3 - 12) >= 5)
  {
    if (a3 == 17)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_4:
  v11 = *(a2 + 296);
LABEL_30:
  if (a3 == 12 && a4 == 1 && a5)
  {
    if ((*(a5 + 8) & 0xFE) == 0x12)
    {
      v15 = **(a5 + 16);
    }

    v11 = llvm::FixedVectorType::get();
    v30 = 0;
    v16 = v11;
    goto LABEL_44;
  }

LABEL_37:
  v17 = 320;
  if (a3 <= 11)
  {
    if ((a3 - 2) < 4)
    {
      v30 = 0;
LABEL_48:
      v16 = v11;
      goto LABEL_49;
    }

    if ((a3 - 6) >= 4)
    {
LABEL_47:
      v30 = 0;
      v17 = 336;
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (a3 > 0x16)
  {
    goto LABEL_69;
  }

  if (((1 << a3) & 0x798000) == 0)
  {
    if (a3 == 17)
    {
      goto LABEL_47;
    }

    if (a3 == 18)
    {
      goto LABEL_68;
    }

LABEL_69:
    v30 = 0;
    v16 = v11;
    if ((a3 - 13) < 2)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_43:
  v30 = 0;
  v16 = v11;
LABEL_44:
  v17 = 328;
LABEL_49:
  v18 = *(a2 + v17);
  v19 = byte_20E716030[(a3 - 2)];
  v20 = byte_20E716045[(a3 - 2)];
  (*(*a2 + 568))(v33, a2, a3);
  v22 = v33[0];
  *v35 = *&v33[1];
  *&v35[15] = *&v33[16];
  v23 = v16;
  if ((*(v16 + 8) & 0xFE) == 0x12)
  {
    v23 = **(v16 + 16);
  }

  v24 = v34;
  if ((v20 & 1) != 0 && *(v23 + 8) >= 7u)
  {
    llvm::Type::getFloatTy(*(a2 + 456), v21);
  }

  v26 = llvm::VectorType::get();
  if (a6)
  {
    v27 = v16;
    if ((*(v16 + 8) & 0xFE) == 0x12)
    {
      v27 = **(v16 + 16);
    }

    if ((v20 & 1) != 0 && *(v27 + 8) >= 7u)
    {
      llvm::Type::getFloatTy(*(a2 + 456), v25);
    }

    result = llvm::VectorType::get();
  }

  else
  {
    result = 0;
  }

  *v10 = v16;
  *(v10 + 1) = v11;
  *(v10 + 2) = v18;
  *(v10 + 3) = v11;
  *(v10 + 4) = v30;
  v10[40] = v20;
  v10[41] = v19;
  v10[44] = v22;
  *(v10 + 45) = *v35;
  *(v10 + 15) = *&v35[15];
  v10[64] = v24;
  *(v10 + 65) = *v33;
  v10[67] = v33[2];
  *(v10 + 17) = a4;
  v28 = 1;
  *(v10 + 9) = v26;
  *(v10 + 10) = result;
LABEL_63:
  v10[88] = v28;
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMGen3TargetLowerer::buildEmitpix(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, unsigned int a8, uint64_t a9)
{
  v45[16] = *MEMORY[0x277D85DE8];
  v36 = *a2;
  v37 = *(a2 + 16);
  if (v37)
  {
    llvm::MetadataTracking::track();
  }

  v38 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v36);
  if (v37)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(&v35, 0, sizeof(v35));
  v44[0] = v45;
  v44[1] = 0x1000000000;
  v41 = v43;
  v42 = 0x1000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v44, a1[24]);
  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v15 = a1[24];
  v16 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v41, v16);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v44, a1[24]);
  v17 = a1[24];
  v40 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, a9, v17, v39);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v41, Cast);
  v19 = a1[25];
  v20 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v44, v20);
  v21 = a1[25];
  v22 = llvm::PointerType::get();
  v40 = 257;
  v23 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a3, v22, v39);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v41, v23);
  MEMORY[0x20F331AA0](&v35, a1[258]);
  if (a8 <= 7)
  {
    std::string::append(&v35, off_277E22008[a8]);
  }

  v24 = a1[23];
  v25 = llvm::PointerType::get();
  v26 = a1[26];
  v27 = llvm::ConstantInt::get();
  v40 = 257;
  v28 = llvm::IRBuilderBase::CreateCast((a1 + 1), 48, v27, v25, v39);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v44, v25);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v41, v28);
  v29 = a1[18];
  llvm::FunctionType::get();
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v30 = &v35;
LABEL_10:
    strlen(v30);
    goto LABEL_11;
  }

  v30 = v35.__r_.__value_.__r.__words[0];
  if (v35.__r_.__value_.__r.__words[0])
  {
    goto LABEL_10;
  }

LABEL_11:
  v31 = a1[54];
  llvm::Module::getOrInsertFunction();
  v40 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 1), *(v32 + 24), v32, v41, v42, v39);
  v33 = a1[57];
  v39[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v34 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildColorCoverageMaskSet(void *a1, __int128 *a2, uint64_t a3)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v5 = (*(*a1 + 1608))(a1);
  v19 = v21;
  v20 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v19, "llvm.", "");
  v6 = a1[25];
  if (v5 == v6)
  {
    v7 = "agx2.";
  }

  else
  {
    v7 = "agx3.8xmsaa.";
  }

  v8 = 12;
  if (v5 == v6)
  {
    v8 = 5;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v19, v7, &v7[v8]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v19, "colcvgmsk.coords", "");
  v15 = *a2;
  v16 = *(a2 + 2);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v15, (a1 + 1));
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v19, v20, v5, a1[30]);
  v14 = 257;
  v10 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v9 + 24), v9, &v18, 1, v13);
  if (v19 != v21)
  {
    free(v19);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void AGCLLVMGen3TargetLowerer::setupConstantTextureIndexPRIDs(void *a1, unsigned int **a2, int a3)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v28[0] = v29;
  v28[1] = 0x800000000;
  v6 = a1[9];
  v7 = llvm::MDString::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v7);
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = *a2;
    v10 = &(*a2)[2 * v8];
    if ((a3 & 0xFFFFFFFE) == 6)
    {
      v11 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS;
    }

    else
    {
      v11 = &AGCLLVMGen3TargetLowerer::PRIDS;
    }

    do
    {
      v12 = *v9;
      v13 = v9[1];
      v9 += 2;
      v14 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v15 = a1[9];
      llvm::MDString::get();
      if (a3 == 5)
      {
        v16 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS;
      }

      else
      {
        v16 = v11;
      }

      if (a3 == 4)
      {
        v16 = &AGCLLVMGen3TargetLowerer::statelessPRIDS;
      }

      v17 = v16[2 * v13];
      v18 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v19 = a1[9];
      llvm::MDString::get();
      if (a3 == 5)
      {
        v20 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS;
      }

      else
      {
        v20 = v11;
      }

      if (a3 == 4)
      {
        v20 = &AGCLLVMGen3TargetLowerer::statelessPRIDS;
      }

      v21 = v20[2 * v13 + 1];
      v22 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v23 = a1[9];
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, Impl);
    }

    while (v9 != v10);
  }

  v25 = a1[54];
  llvm::Module::getOrInsertNamedMetadata();
  v26 = a1[9];
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void AGCLLVMGen3TargetLowerer::setupIndirectResourcePRIDs(void *a1, uint64_t a2, unsigned int **a3, int a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v32[0] = v33;
  v32[1] = 0x800000000;
  v7 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, v7);
  v8 = *(a3 + 2);
  if (v8)
  {
    v9 = *a3;
    v31 = &(*a3)[4 * v8];
    if ((a4 & 0xFFFFFFFE) == 6)
    {
      v10 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS;
    }

    else
    {
      v10 = &AGCLLVMGen3TargetLowerer::PRIDS;
    }

    do
    {
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = *(v9 + 12);
      v15 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v16 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v17 = a1[9];
      llvm::MDString::get();
      if (a4 == 5)
      {
        v18 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS;
      }

      else
      {
        v18 = v10;
      }

      if (a4 == 4)
      {
        v18 = &AGCLLVMGen3TargetLowerer::statelessPRIDS;
      }

      v19 = v18[2 * v11];
      v20 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v21 = a1[9];
      llvm::MDString::get();
      if (a4 == 5)
      {
        v22 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS;
      }

      else
      {
        v22 = v10;
      }

      if (a4 == 4)
      {
        v22 = &AGCLLVMGen3TargetLowerer::statelessPRIDS;
      }

      v23 = v22[2 * v11 + 1];
      v24 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v25 = a1[25];
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v26 = a1[9];
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, Impl);
      v9 += 4;
    }

    while (v9 != v31);
  }

  v28 = a1[54];
  llvm::Module::getOrInsertNamedMetadata();
  v29 = a1[9];
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMGen3TargetLowerer::setupResourcePRIDs(void *a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a1[54];
  llvm::Module::getOrInsertNamedMetadata();
  if (a5)
  {
    llvm::ValueAsMetadata::get();
    v10 = a1[25];
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    v11 = a1[9];
    llvm::MDString::get();
    v12 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS + 8 * a3;
    v13 = a3;
    v14 = &AGCLLVMGen3TargetLowerer::PRIDS + 8 * a3;
    if ((a4 & 0xFFFFFFFE) == 6)
    {
      v14 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS + 8 * a3;
    }

    v15 = &AGCLLVMGen3TargetLowerer::statelessPRIDS + 8 * a3;
    if (a4 == 4)
    {
      v14 = v15;
    }

    if (a4 == 5)
    {
      v14 = v12;
    }

    v16 = *v14;
    v17 = a1[25];
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    v18 = a1[9];
    llvm::MDString::get();
    v19 = &AGCLLVMGen3TargetLowerer::PRIDS + 8 * v13;
    if ((a4 & 0xFFFFFFFE) == 6)
    {
      v19 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS + 8 * v13;
    }

    if (a4 == 4)
    {
      v19 = v15;
    }

    if (a4 == 5)
    {
      v19 = v12;
    }
  }

  else
  {
    llvm::ValueAsMetadata::get();
    v20 = a1[9];
    llvm::MDString::get();
    v21 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS + 8 * a3;
    v22 = a3;
    v23 = &AGCLLVMGen3TargetLowerer::PRIDS + 8 * a3;
    if ((a4 & 0xFFFFFFFE) == 6)
    {
      v23 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS + 8 * a3;
    }

    v24 = &AGCLLVMGen3TargetLowerer::statelessPRIDS + 8 * a3;
    if (a4 == 4)
    {
      v23 = v24;
    }

    if (a4 == 5)
    {
      v23 = v21;
    }

    v25 = *v23;
    v26 = a1[25];
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    v27 = a1[9];
    llvm::MDString::get();
    v19 = &AGCLLVMGen3TargetLowerer::PRIDS + 8 * v22;
    if ((a4 & 0xFFFFFFFE) == 6)
    {
      v19 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS + 8 * v22;
    }

    if (a4 == 4)
    {
      v19 = v24;
    }

    if (a4 == 5)
    {
      v19 = v21;
    }
  }

  v28 = *(v19 + 1);
  v29 = a1[25];
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v30 = a1[9];
  llvm::MDTuple::getImpl();
  result = llvm::NamedMDNode::addOperand();
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMGen3TargetLowerer::setupGLFragmentShaderPRIDs(uint64_t a1, uint64_t a2, int a3)
{
  v9[12] = *MEMORY[0x277D85DE8];
  if (*(a1 + 904))
  {
    v6 = &AGCLLVMGen3TargetLowerer::gl_raster_order_groups_macOS;
  }

  else
  {
    v6 = &AGCLLVMGen3TargetLowerer::gl_raster_order_groups_iOS;
  }

  AGCLLVMGen3TargetLowerer::setupFixedPRIDS(a1, 1);
  v8[0] = v9;
  v8[1] = 0x800000000;
  AGCLLVMGen3TargetLowerer::addLIBSpansFromDrawBufferState(a1, a2, v6, v8);
  AGCLLVMGen3TargetLowerer::setupLIBRasterOrderGroupFromSpans(a1, v8, a3);
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildGExp(const char **a1, uint64_t a2, llvm::Type **a3, uint64_t a4, llvm::Type ***a5)
{
  if ((*(*a3 + 2) & 0xFE) != 0x12 || (v9 = *(*a3 + 8), v9 == 1))
  {
    v11 = 0;
    v12 = "sr8unorm";
  }

  else
  {
    v10 = "srg8unorm";
    if (v9 != 2)
    {
      v10 = 0;
    }

    v11 = v9 != 4 && v9 != 2;
    if (v9 == 4)
    {
      v12 = "srgba8unorm";
    }

    else
    {
      v12 = v10;
    }
  }

  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  v13 = a1[315];
  if (v13)
  {
    v14 = strlen(a1[315]);
    if (v11)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  v15 = strlen(v12);
LABEL_19:
  v16 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(a1, &v18, v13, v14, v12, v15, a5, a3);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  return v16;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildGCmp(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, llvm::Type *a5)
{
  if ((*(*a3 + 8) & 0xFE) != 0x12 || (v9 = *(*a3 + 32), v9 == 1))
  {
    v11 = 0;
    v12 = "sr8unorm";
  }

  else
  {
    v10 = "srg8unorm";
    if (v9 != 2)
    {
      v10 = 0;
    }

    v11 = v9 != 4 && v9 != 2;
    if (v9 == 4)
    {
      v12 = "srgba8unorm";
    }

    else
    {
      v12 = v10;
    }
  }

  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  v13 = a1[316];
  if (v13)
  {
    v14 = strlen(a1[316]);
    if (v11)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  v15 = strlen(v12);
LABEL_19:
  v16 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(a1, &v18, v13, v14, v12, v15, a5, a3);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  return v16;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpackNorm(uint64_t a1, __int128 *a2, llvm::Type **a3, unsigned int a4, int a5, int a6)
{
  v39 = *a2;
  v40 = *(a2 + 2);
  if (v40)
  {
    llvm::MetadataTracking::track();
  }

  v41 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v39, a1 + 8);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = 152;
  if (a6 == 32)
  {
    v12 = 168;
  }

  v13 = *(a1 + v12);
  *&v34 = llvm::Type::getPrimitiveSizeInBits(*a3);
  DWORD2(v34) = v14;
  v15 = llvm::TypeSize::operator unsigned long long() / a4;
  if (v15 < 2)
  {
    v16 = "r";
  }

  else
  {
    if (v15 == 4)
    {
      v16 = "rgba";
    }

    else
    {
      v16 = "rg";
    }

    v13 = llvm::FixedVectorType::get();
  }

  v17 = a4;
  if (*v16)
  {
    *&v32 = a4;
    v18 = 8;
    v19 = 3;
    v20 = 2;
    v17 = &v31;
  }

  else
  {
    v18 = 1;
    v20 = 8;
    v16 = a4;
    v19 = 8;
  }

  *&v31 = v16;
  LOBYTE(v33) = v19;
  BYTE1(v33) = v18;
  v21 = "snorm";
  if (!a5)
  {
    v21 = "unorm";
  }

  if (*v21)
  {
    *&v34 = v17;
    *&v35 = v21;
    LOBYTE(v36) = v20;
    BYTE1(v36) = 3;
  }

  else
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  llvm::Twine::str(__p, &v34);
  v28 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
  v30 = *(a1 + 104);
  v22 = *(a1 + 2520);
  if (v22)
  {
    v23 = strlen(*(a1 + 2520));
  }

  else
  {
    v23 = 0;
  }

  if (v38 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v38 >= 0)
  {
    v25 = v38;
  }

  else
  {
    v25 = __p[1];
  }

  v26 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(a1, &v28, v22, v23, v24, v25, v13, a3);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  return v26;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildPackNorm(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5)
{
  v35 = *a2;
  v36 = *(a2 + 16);
  if (v36)
  {
    llvm::MetadataTracking::track();
  }

  v37 = *(a2 + 24);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v35, (a1 + 1));
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = a1[9];
  v11 = llvm::IntegerType::get();
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v12 = "rg";
    if (*(*a3 + 32) == 4)
    {
      v12 = "rgba";
    }
  }

  else
  {
    v12 = "r";
  }

  v13 = a4;
  if (*v12)
  {
    *&v28 = a4;
    v14 = 8;
    v15 = 3;
    v16 = 2;
    v13 = &v27;
  }

  else
  {
    v14 = 1;
    v16 = 8;
    v12 = a4;
    v15 = 8;
  }

  *&v27 = v12;
  LOBYTE(v29) = v15;
  v17 = "unorm";
  BYTE1(v29) = v14;
  if (a5)
  {
    v17 = "snorm";
  }

  if (*v17)
  {
    *&v30 = v13;
    *&v31 = v17;
    LOBYTE(v32) = v16;
    BYTE1(v32) = 3;
  }

  else
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  llvm::Twine::str(__p, &v30);
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  v18 = a1[316];
  if (v18)
  {
    v19 = strlen(a1[316]);
  }

  else
  {
    v19 = 0;
  }

  if (v34 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v34 >= 0)
  {
    v21 = v34;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(a1, &v24, v18, v19, v20, v21, v11, a3);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

uint64_t AGCLLVMGen3TargetLowerer::buildAtomicFnAddrSpaceCast(uint64_t a1, uint64_t a2, llvm::PointerType ***a3, uint64_t a4)
{
  v5 = a3;
  v8 = *(*a3 + 2);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(*(*a3)[2] + 8);
  }

  if ((v8 & 0xFFFFFF00) == 0x800 || v8 < 0x100)
  {
    return v5;
  }

  v20 = *a2;
  v21 = *(a2 + 16);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = (a4 + 24);
  if (*(a4 + 32) >= 0x41u)
  {
    v9 = *v9;
  }

  v10 = *v9;
  v11 = *v5;
  v12 = *(*v5 + 2);
  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(*v11[2] + 8);
  }

  v13 = v12 >> 8;
  if (v13 == 3)
  {
    if (v10)
    {
      return v5;
    }

    v16 = 69;
LABEL_21:
    v15 = llvm::PointerType::getWithSamePointeeType(v11, v16);
    v19 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 50, v5, v15, v18);
  }

  if (v13 != 1)
  {
    return v5;
  }

  if (v10 == 1)
  {
    v16 = 71;
    goto LABEL_21;
  }

  if (!v10)
  {
    v14 = llvm::PointerType::getWithSamePointeeType(v11, 0x46);
    v19 = 257;
    llvm::IRBuilderBase::CreateCast(a1 + 8, 50, v5, v14, v18);
    v15 = llvm::PointerType::getWithSamePointeeType(*v5, 0x46);
    v19 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 50, v5, v15, v18);
  }

  return v5;
}

uint64_t AGCLLVMGen3TargetLowerer::buildCoverageMask(uint64_t a1, __int128 *a2, llvm::Value *a3, unsigned int a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = *a2;
  v33 = *(a2 + 2);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v32, a1 + 8);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = AGCLLVMBuilder::f32Extend(a1, a3, 1);
  if (a4 > 1)
  {
    v27 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (a1 + 8));
    v29 = *(a1 + 104);
    v13 = (*(*a1 + 40))(a1, &v27, v8, 0);
    if (v28)
    {
      llvm::MetadataTracking::untrack();
    }

    v14 = *(a1 + 1384);
    if (v14)
    {
      v15 = strlen(*(a1 + 1384));
    }

    else
    {
      v15 = 0;
    }

    v16 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v14, v15, *(a1 + 200), *(a1 + 168));
    v17 = *(a1 + 168);
    v18 = llvm::ConstantFP::get();
    v31 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul(a1 + 8, v13, v18, v30);
    v36 = 257;
    v19 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v16 + 24), v16, &FMul, 1, v35);
    v20 = *(a1 + 2344);
    if (v20)
    {
      v21 = strlen(*(a1 + 2344));
    }

    else
    {
      v21 = 0;
    }

    v22 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v20, v21, *(a1 + 200), *(a1 + 192), *(a1 + 192));
    v23 = *(a1 + 192);
    v35[0] = llvm::ConstantInt::get();
    v24 = *(a1 + 192);
    v31 = 257;
    v35[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v19, v24, v30);
    v31 = 257;
    result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v22 + 24), v22, v35, 2, v30);
  }

  else
  {
    v9 = *(a1 + 168);
    llvm::ConstantFP::get();
    v31 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v10 = *(a1 + 200);
    llvm::ConstantInt::get();
    v11 = *(a1 + 200);
    llvm::ConstantInt::get();
    v31 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<96,31,4,128,96,96,true>>::getComputeMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<96,31,4,128,96,96,true>>::getRenderMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCLLVMGen3TargetLowerer::getTempRegistersLimitAcrossTileSizesForTileShader(AGCLLVMGen3TargetLowerer *this, const AGCLLVMCtx *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0xFFFFFFFFLL;
  LODWORD(v7) = 1;
  do
  {
    if (a3 / v7 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = a3 / v7;
    }

    if (v7 <= a3)
    {
      v9 = 1;
      do
      {
        v7 = (v7 & 1) + v7;
        v10 = (v9 & 1) + v9;
        if ((*(*this + 800))(this, v7, v10))
        {
          v11 = *(a2 + 504);
          v12 = v11 - 1;
          if ((v11 - 1) >= 0)
          {
            v13 = 0;
            do
            {
              v14 = (v12 + v13) >> 1;
              if (*(*(a2 + 251) + 4 * v14) < v10 * v7)
              {
                v12 = v14 - 1;
              }

              else
              {
                v13 = v14 + 1;
              }
            }

            while (v13 <= v12);
          }

          v15 = *(this + 245) / v11 * v12;
          if (v15 >= v6)
          {
            v6 = v6;
          }

          else
          {
            v6 = v15;
          }
        }

        v9 = v10 + 1;
      }

      while (v10 + 1 <= v8);
    }

    LODWORD(v7) = v7 + 1;
  }

  while (v7 < 0x21);
  return v6;
}

uint64_t AGCLLVMGen3TargetLowerer::buildImageBlockMemWriteLoop(void *a1, llvm::BasicBlock *a2, llvm::BasicBlock *a3, uint64_t a4, llvm::Type **a5, llvm::Type **Load, llvm::Value *a7, uint64_t a8, llvm::Value *a9, unsigned int a10)
{
  v29 = *MEMORY[0x277D85DE8];
  a1[7] = a3;
  a1[8] = a3 + 40;
  v16 = a1[24];
  v28 = 257;
  PHI = llvm::IRBuilderBase::CreatePHI((a1 + 1), v16, 2, v27);
  llvm::PHINode::addIncoming(PHI, a7, a2);
  v28 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), PHI, a9, v27);
  llvm::PHINode::addIncoming(PHI, Add, a3);
  if (*(*Load + 8) == 15)
  {
    v28 = 257;
    GEP = AGCLLVMBuilder::CreateGEP(a1, Load, PHI, v27);
    v28 = 257;
    Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v27);
  }

  v28 = 257;
  v20 = AGCLLVMBuilder::CreateGEP(a1, a5, PHI, v27);
  llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Load, v20, 0);
  v21 = a1[57];
  v27[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v28 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, a10, Add, a8, v27);
  result = llvm::IRBuilderBase::CreateCondBr(a1 + 1, ICmp, a3, a4);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen3TargetLowerer::splitUnalignedLoads(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, llvm::Value *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = *a2;
  v46 = *(a2 + 2);
  if (v46)
  {
    llvm::MetadataTracking::track();
  }

  v47 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v45, a1 + 8);
  if (v46)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((*(a6 + 8) & 0xFE) == 0x12)
  {
    v15 = *(a6 + 32);
  }

  else
  {
    v15 = 1;
  }

  if (*(a1 + 184) == a6)
  {
    v29 = *(a1 + 192);
    v30 = llvm::ConstantInt::get();
    v44 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), a7, v30, v43);
    v40 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
    v42 = *(a1 + 104);
    Cast = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(a1, &v40, "i8", 2, a4, a5, a6, Add, a8, a9, a10, a11);
    if (v41)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v16 = llvm::UndefValue::get();
    v17 = v16;
    if (v15)
    {
      v18 = 0;
      v19 = v15;
      v20 = v15;
      do
      {
        v21 = a6;
        if ((*(a6 + 8) & 0xFE) == 0x12)
        {
          v21 = **(a6 + 16);
        }

        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v21);
        if (ScalarSizeInBits >= 9)
        {
          v23 = *(a1 + 72);
          llvm::IntegerType::get();
          v21 = llvm::FixedVectorType::get();
        }

        v37 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
        v39 = *(a1 + 104);
        v24 = AGCLLVMGen3TargetLowerer::splitUnalignedLoads(a1, &v37, a3, a4, a5, v21, a7, a8, a9, a10, a11);
        if (v38)
        {
          llvm::MetadataTracking::untrack();
        }

        v25 = a6;
        if ((*(a6 + 8) & 0xFE) == 0x12)
        {
          v25 = **(a6 + 16);
        }

        v44 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v24, v25, v43);
        if (v19 != 1)
        {
          v44 = 257;
          v27 = *(a1 + 200);
          v28 = llvm::ConstantInt::get();
          Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v17, Cast, v28, v43);
        }

        a3 = a3 + (ScalarSizeInBits >> 3);
        ++v18;
        v17 = Cast;
      }

      while (v20 != v18);
    }

    else
    {
      return v16;
    }
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = *a2;
  v25 = *(a2 + 2);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v24, a1 + 8);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v23[0] = AGCLLVMGen3TargetLowerer::getMemoryReadIntrinsicArgsFromIR(a1, a7, a3, a4);
  v23[1] = v18;
  v20 = 0;
  return (*(*a1 + 1688))(a1, v23, a5, a6, a7, a8, a11, a12, a9, a10, v20);
}

uint64_t AGCLLVMGen3TargetLowerer::splitUnalignedStore(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t *a7, llvm::Value *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = *MEMORY[0x277D85DE8];
  v42 = *a3;
  v43 = *(a3 + 2);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a3 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v42, a2 + 8);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = *a7;
  if ((*(*a7 + 8) & 0xFE) == 0x12)
  {
    LODWORD(v18) = *(v17 + 32);
  }

  else
  {
    LODWORD(v18) = 1;
  }

  if (v17 == *(a2 + 184))
  {
    v25 = *(a2 + 192);
    v26 = llvm::ConstantInt::get();
    v41 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a2 + 8), a8, v26, &v38);
    v35 = *(a2 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (a2 + 8));
    v37 = *(a2 + 104);
    result = AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(a1, a2, &v35, "i8", 2, a5, a6, a7, Add, 0, a9, a10, a11, a12, 0);
    if (v36)
    {
      result = llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    *v45 = 0u;
    v46 = 0u;
    result = AGCLLVMBuilder::unboxVector(a2, a7, v45);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
    if (v18)
    {
      v20 = v45;
      v18 = v18;
      do
      {
        Cast = *v20;
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(**v20);
        if (ScalarSizeInBits >= 9)
        {
          v23 = *(a2 + 72);
          llvm::IntegerType::get();
          v24 = llvm::FixedVectorType::get();
          v41 = 257;
          Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 49, Cast, v24, &v38);
        }

        v32 = *(a2 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (a2 + 8));
        v34 = *(a2 + 104);
        AGCLLVMGen3TargetLowerer::splitUnalignedStore(&v38, a2, &v32, a4, a5, a6, Cast, a8, a9, a10, a11, a12);
        *a1 = v38;
        result = llvm::TrackingMDRef::operator=((a1 + 16), &v39);
        *(a1 + 24) = v40;
        if (v39)
        {
          result = llvm::MetadataTracking::untrack();
        }

        if (v33)
        {
          result = llvm::MetadataTracking::untrack();
        }

        a4 = a4 + (ScalarSizeInBits >> 3);
        ++v20;
        --v18;
      }

      while (v18);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v26 = *a3;
  v27 = *(a3 + 2);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a3 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v26, a2 + 8);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v25[0] = AGCLLVMGen3TargetLowerer::getMemoryWriteIntrinsicArgsFromIR(a2, *a8, a4, a5);
  v25[1] = v20;
  HIBYTE(v22) = a15 ^ 1;
  LOBYTE(v22) = a10;
  return (*(*a2 + 1696))(a2, v25, a6, a7, a8, a9, a13, a13 != 0, a14, a11, a12, v22);
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromFormat(uint64_t a1, void *a2, __int128 *a3, AGCLLVMGen3TargetLowerer *a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = *a3;
  v28 = *(a3 + 2);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a3 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v27, (a2 + 1));
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v19 = *(*a8 + 8);
  if ((v19 & 0xFE) == 0x12)
  {
    v19 = *(**(*a8 + 16) + 8);
  }

  if ((v19 & 0xFFFFF0FF) == 0xD)
  {
    v20 = a2[24];
  }

  v18.i32[0] = a5;
  v21 = vcnt_s8(v18);
  v21.i16[0] = vaddlv_u8(v21);
  v26[0] = (a5 << 32) | (v21.u32[0] << 48) | (a4 << 16) | AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a4, 0);
  v26[1] = llvm::FixedVectorType::get();
  v22 = a2[24];
  v23 = llvm::ConstantInt::get();
  return (*(*a2 + 1696))(a2, v26, a6, v23, a8, a9, a12, a12 != 0, a13, a10, a11, 0);
}

uint64_t AGCLLVMGen3TargetLowerer::buildExtractColorCoverageMask(uint64_t a1, __int128 *a2, llvm::Value *a3, llvm::Value *a4)
{
  v25 = *a2;
  v26 = *(a2 + 2);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v25, a1 + 8);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 2540);
  v9 = *(a1 + 192);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), a4, v10, v23);
  v12 = (*(*a1 + 1608))(a1);
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Mul, v12, v21);
  v24 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), a3, Cast, v23);
  v15 = *(a1 + 192);
  v22 = 257;
  v16 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v15, v21);
  v17 = (-1 << *(a1 + 2540));
  v24 = 257;
  v18 = *v16;
  v19 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateAnd((a1 + 8), v16, v19, v23);
}

uint64_t AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, "llvm.agx2.threadgroup.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v20, aXyz[a4]);
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v14);
  if (v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildLayerId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.get.layerid", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildThreadgroupDispatchSize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_20E70C500;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, "llvm.agx2.dispatch.threadgroup.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v20, aXyz[a4]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, ".size", "");
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v14);
  if (v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildGlobalID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_20E70C500;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, "llvm.agx2.thread.position.in.grid.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v20, aXyz[a4]);
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v14);
  if (v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.quad.group", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadBroadcast(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[310], a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffle(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[311], a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffleXor(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[314], a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedReduce(uint64_t result, llvm::Value *a2, llvm::Value *a3, int a4, int a5)
{
  v6 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = **(v6 + 16);
  }

  if (a4 > 4)
  {
    if (a4 <= 7)
    {
      if (a4 == 5)
      {
        if (*(v6 + 8) <= 6u)
        {
          v12 = 257;
          goto LABEL_30;
        }

        v12 = 257;
        v7 = (result + 8);
        if (a5)
        {
          v8 = 38;
        }

        else
        {
          v8 = 34;
        }
      }

      else
      {
        if (a4 != 6)
        {
LABEL_17:
          if (*(v6 + 8) > 6u)
          {
            v10 = 257;
            return llvm::IRBuilderBase::CreateMul((result + 8), a2, a3, v9);
          }

          else
          {
            v12 = 257;
            return llvm::IRBuilderBase::CreateFMul(result + 8, a2, a3, v11);
          }
        }

        if (*(v6 + 8) <= 6u)
        {
          v12 = 257;
LABEL_30:
          llvm::IRBuilderBase::CreateFCmpHelper();
LABEL_38:
          v12 = 257;
          return llvm::IRBuilderBase::CreateSelect();
        }

        v12 = 257;
        v7 = (result + 8);
        if (a5)
        {
          v8 = 40;
        }

        else
        {
          v8 = 36;
        }
      }

      llvm::IRBuilderBase::CreateICmp(v7, v8, a2, a3, v11);
      goto LABEL_38;
    }

    if (a4 != 8)
    {
      if (a4 == 9)
      {
        goto LABEL_17;
      }

      if (a4 != 10)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateXor((result + 8), a2, a3, v11);
    }

    if (a4 == 3)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (*(v6 + 8) > 6u)
    {
      v10 = 257;
      return llvm::IRBuilderBase::CreateAdd((result + 8), a2, a3, v9);
    }

    else
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateFAdd(result + 8, a2, a3, v11);
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateOr((result + 8), a2, a3, v11);
    }
  }

  else
  {
    v12 = 257;
    return llvm::IRBuilderBase::CreateAnd((result + 8), a2, a3, v11);
  }

  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(uint64_t a1, uint64_t a2, llvm::Type **Cast, unsigned int a4, int a5)
{
  v42 = *a2;
  v43 = *(a2 + 16);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v42);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  v39 = *a2;
  v40 = *(a2 + 16);
  if (v40)
  {
    llvm::MetadataTracking::track();
  }

  v41 = *(a2 + 24);
  v30 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v39, *(a1 + 192));
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  v27 = *Cast;
  if (llvm::Type::getScalarSizeInBits(*Cast) <= 7)
  {
    v8 = *(a1 + 184);
    v51 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Cast, v8, v50);
  }

  v31 = Cast;
  getSimdReductionIdentity(a4, Cast);
  v9 = 0;
  Select = 0;
  do
  {
    v32 = Select;
    v11 = *(a1 + 192);
    v12 = llvm::ConstantInt::get();
    v36 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
    v13 = *(a1 + 104);
    v38 = v13;
    v58 = v36;
    v59 = v37;
    if (v37)
    {
      llvm::MetadataTracking::track();
      v13 = v38;
    }

    v60 = v13;
    AGCLLVMTargetLowerer::SetIP(a1, &v58);
    if (v59)
    {
      llvm::MetadataTracking::untrack();
    }

    v14 = *(a1 + 176);
    v15 = llvm::ConstantInt::get();
    v55 = v36;
    v56 = v37;
    if (v37)
    {
      llvm::MetadataTracking::track();
    }

    v57 = v38;
    v16 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v55, *(a1 + 192));
    if (v56)
    {
      llvm::MetadataTracking::untrack();
    }

    v52 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (a1 + 8));
    v54 = *(a1 + 104);
    v17 = AGCLLVMGen3TargetLowerer::buildQuadShuffle(a1, &v52, v16, v12);
    v51 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v17, v12, v50);
    v49 = 257;
    v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v15, ICmp, v48);
    if (v53)
    {
      llvm::MetadataTracking::untrack();
    }

    v20 = 4;
    do
    {
      random();
      v21 = *(a1 + 200);
      v22 = llvm::ConstantInt::get();
      v45 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v46, (a1 + 8));
      v47 = *(a1 + 104);
      v23 = AGCLLVMGen3TargetLowerer::buildQuadShuffle(a1, &v45, v22, v12);
      v51 = 257;
      v24 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v23, v22, v50);
      v49 = 257;
      v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v24, v48);
      if (v46)
      {
        llvm::MetadataTracking::untrack();
      }

      --v20;
    }

    while (v20);
    if (v37)
    {
      llvm::MetadataTracking::untrack();
    }

    v33 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
    v35 = *(a1 + 104);
    AGCLLVMGen3TargetLowerer::buildQuadShuffle(a1, &v33, v31, v12);
    if (v34)
    {
      llvm::MetadataTracking::untrack();
    }

    v51 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    if (a4 - 7 > 1)
    {
      if (a4 - 9 <= 1)
      {
        v51 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 36, v12, v30, v50);
        v49 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
      }

      v25 = v32;
      if (v32)
      {
LABEL_36:
        Select = AGCLLVMGen3TargetLowerer::buildEmulatedReduce(a1, v25, Select, a4, a5);
      }
    }

    else
    {
      v51 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 37, v12, v30, v50);
      v49 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v25 = v32;
      if (v32)
      {
        goto LABEL_36;
      }
    }

    ++v9;
  }

  while (v9 != 4);
  v51 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v27, v50);
}

uint64_t getSimdReductionIdentity(unsigned int a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v2 = **(*a2 + 16);
  }

  if (a1 <= 0xA)
  {
    if (((1 << a1) & 0x516) != 0)
    {
      if (*(v2 + 8) <= 6u)
      {
        return llvm::ConstantFP::get();
      }

      return llvm::ConstantInt::get();
    }

    if (((1 << a1) & 0x288) != 0)
    {
      if (*(v2 + 8) <= 6u)
      {
        return llvm::ConstantFP::get();
      }

      return llvm::ConstantInt::get();
    }

    if (!a1)
    {
      return llvm::ConstantInt::get();
    }
  }

  return a2;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(uint64_t a1, uint64_t a2, llvm::Type **a3, int a4, char a5)
{
  v59 = a4;
  v58 = a5;
  v57 = 32;
  v54 = *a2;
  v55 = *(a2 + 16);
  if (v55)
  {
    llvm::MetadataTracking::track();
  }

  v56 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v54);
  if (v55)
  {
    llvm::MetadataTracking::untrack();
  }

  v51 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (a1 + 8));
  v53 = *(a1 + 104);
  v8 = (*(*a1 + 1624))(a1, &v51, *(a1 + 192));
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v47 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v48, (a1 + 8));
  v49 = *(a1 + 104);
  v9 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(a1, &v47, v8);
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  v50 = v9;
  v10 = *(a1 + 200);
  v11 = llvm::ConstantInt::get();
  v12 = *(a1 + 200);
  LOWORD(v34) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v8, v12, v33);
  v46 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v11, Cast, v45);
  v41 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v42, (a1 + 8));
  v43 = *(a1 + 104);
  active = AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(a1, &v41, Shl, v9);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v44 = active;
  v16 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.ctpop.i32", 14, *(a1 + 200), *(a1 + 200));
  v40 = v16;
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  LOWORD(v34) = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Shl, v18, v33);
  v46 = 257;
  v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), active, Sub, v45);
  LOWORD(v34) = 257;
  v20 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v16 + 24), v16, &v39, 1, v33);
  v21 = *v8;
  v46 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v20, v21, v45);
  v33[0] = a1;
  v33[1] = &v50;
  v33[2] = &v38;
  v33[3] = &v57;
  v34 = &v59;
  v35 = &v58;
  v36 = &v40;
  v37 = &v44;
  v38 = v22;
  llvm::DataLayout::getTypeSizeInBits((a1 + 472), *a3);
  if (llvm::TypeSize::operator unsigned long long() < 0x21)
  {
    return AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(AGCLLVMBuilder::InsertPoint,llvm::Value *,SimdReduceFunction,BOOL,unsigned short)::$_0::operator()(v33, a3);
  }

  v23 = *a3;
  InsertElement = llvm::UndefValue::get();
  if (*(*a3 + 8))
  {
    v25 = 0;
    do
    {
      v46 = 257;
      v26 = *(a1 + 200);
      v27 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v27, v45);
      v29 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(AGCLLVMBuilder::InsertPoint,llvm::Value *,SimdReduceFunction,BOOL,unsigned short)::$_0::operator()(v33, Element);
      v46 = 257;
      v30 = *(a1 + 200);
      v31 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v29, v31, v45);
      ++v25;
    }

    while (v25 < *(*a3 + 8));
  }

  return InsertElement;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 200);
  if ((*(*a4 + 8) & 0xFE) == 0x12)
  {
    v9 = *(**(*a4 + 16) + 8);
  }

  v10 = llvm::PointerType::get();
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a4, v10, v22);
  v12 = *(a1 + 200);
  v13 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v13, Cast, 0);
  v19 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
  v21 = *(a1 + 104);
  AGCLLVMGen3TargetLowerer::buildSimdBarrier(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::IRBuilderBase::CreateAtomicRMW((a1 + 8), 5, Cast, a3, 0);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  AGCLLVMGen3TargetLowerer::buildSimdBarrier(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(a1 + 200);
  v23 = 257;
  llvm::Type::isOpaquePointerTy(*Cast);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, Cast, 0, v22);
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(AGCLLVMBuilder::InsertPoint,llvm::Value *,SimdReduceFunction,BOOL,unsigned short)::$_0::operator()(uint64_t *a1, llvm::Type **a2)
{
  v3 = a1;
  v4 = *a1;
  llvm::DataLayout::getTypeSizeInBits((*a1 + 472), *a2);
  v5 = *v3[1];
  v6 = *a2;
  if ((*(*v5 + 8) & 0xFE) == 0x12)
  {
    v7 = *(**(*v5 + 16) + 8);
  }

  v8 = llvm::PointerType::get();
  v60 = 257;
  *v3[1] = llvm::IRBuilderBase::CreateCast(v4 + 8, 49, v5, v8, v59);
  v9 = *a2;
  v10 = *v3[1];
  v11 = *v3[2];
  v60 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v4 + 8), v9, v10, v11, v59);
  llvm::IRBuilderBase::CreateAlignedStore((v4 + 8), a2, GEP, 0);
  if (*v3[3] >= 2u)
  {
    v12 = 1;
    do
    {
      v56 = *(v4 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (v4 + 8));
      v58 = *(v4 + 104);
      AGCLLVMGen3TargetLowerer::buildSimdBarrier(v4, &v56);
      if (v57)
      {
        llvm::MetadataTracking::untrack();
      }

      v60 = 257;
      Load = AGCLLVMBuilder::CreateLoad(v4, GEP, v59);
      getSimdReductionIdentity(*v3[4], Load);
      v14 = v3;
      v15 = *v3[2];
      v16 = *(v4 + 192);
      v17 = llvm::ConstantInt::get();
      v60 = 257;
      Sub = llvm::IRBuilderBase::CreateSub((v4 + 8), v15, v17, v59);
      v19 = *(v4 + 192);
      v20 = llvm::ConstantInt::get();
      v60 = 257;
      llvm::IRBuilderBase::CreateICmp((v4 + 8), 39, Sub, v20, v59);
      v21 = *a2;
      v22 = *v14[1];
      v23 = *v14[3] - 1;
      v24 = *(v4 + 192);
      v25 = llvm::ConstantInt::get();
      v60 = 257;
      v26 = Sub;
      v3 = v14;
      v27 = llvm::IRBuilderBase::CreateAnd((v4 + 8), v26, v25, v59);
      v55 = 257;
      v28 = llvm::IRBuilderBase::CreateGEP((v4 + 8), v21, v22, v27, v54);
      v60 = 257;
      AGCLLVMBuilder::CreateLoad(v4, v28, v59);
      v55 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v30 = AGCLLVMGen3TargetLowerer::buildEmulatedReduce(v4, Load, Select, *v14[4], *v14[5]);
      llvm::IRBuilderBase::CreateAlignedStore((v4 + 8), v30, GEP, 0);
      v12 *= 2;
    }

    while ((v12 & 0xFFFEu) < *v14[3]);
  }

  v31 = *v3[4];
  if (v31 > 0xA)
  {
    v40 = 0;
  }

  else
  {
    v32 = 1 << v31;
    if ((v32 & 0x7F) != 0)
    {
      v33 = v3[7];
      v34 = *v3[6];
      v60 = 257;
      v35 = llvm::IRBuilderBase::CreateCall(v4 + 8, *(v34 + 24), v34, v33, 1, v59);
      v36 = *(v4 + 192);
      v55 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(v4 + 8, 38, v35, v36, v54);
      v38 = *(v4 + 192);
      v39 = llvm::ConstantInt::get();
      v60 = 257;
    }

    else
    {
      if ((v32 & 0x180) != 0)
      {
        v40 = *v3[2];
        goto LABEL_15;
      }

      Cast = *v3[2];
      v41 = *(v4 + 192);
      v39 = llvm::ConstantInt::get();
      v60 = 257;
    }

    v40 = llvm::IRBuilderBase::CreateSub((v4 + 8), Cast, v39, v59);
  }

LABEL_15:
  v42 = *a2;
  v43 = *v3[1];
  v44 = *v3[3] - 1;
  v45 = *(v4 + 192);
  v46 = llvm::ConstantInt::get();
  v60 = 257;
  v47 = llvm::IRBuilderBase::CreateAnd((v4 + 8), v40, v46, v59);
  v55 = 257;
  v48 = llvm::IRBuilderBase::CreateGEP((v4 + 8), v42, v43, v47, v54);
  v60 = 257;
  v49 = AGCLLVMBuilder::CreateLoad(v4, v48, v59);
  if ((*v3[4] - 9) <= 1)
  {
    v50 = *(v4 + 192);
    v51 = llvm::ConstantInt::get();
    v60 = 257;
    llvm::IRBuilderBase::CreateICmp((v4 + 8), 39, v40, v51, v59);
    getSimdReductionIdentity(*v3[4], v49);
    v60 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v49;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedFirstActiveThreadIndex(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 200);
  v9 = llvm::ConstantInt::get();
  v10 = *(a1 + 200);
  v24 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a3, v10, v23);
  v29 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v9, Cast, v28);
  v20 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v21, (a1 + 8));
  v22 = *(a1 + 104);
  active = AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(a1, &v20, Shl, a4);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.cttz.i32", 13, *(a1 + 200), *(a1 + 200), *(a1 + 176));
  v28[0] = active;
  v15 = *(a1 + 176);
  v28[1] = llvm::ConstantInt::get();
  v24 = 257;
  v16 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v14 + 24), v14, v28, 2, v23);
  v17 = *a3;
  v24 = 257;
  result = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v16, v17, v23);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadBallot(uint64_t a1, __int128 *a2)
{
  v17 = *a2;
  v18 = *(a2 + 2);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 6);
  v4 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v17, *(a1 + 192));
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = *(a1 + 192);
  v6 = llvm::ConstantInt::get();
  v16 = 257;
  llvm::IRBuilderBase::CreateShl((a1 + 8), v6, v4, v15);
  v7 = *(a1 + 192);
  llvm::ConstantInt::get();
  v14 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(a1, &v11, Select, 1u, 0);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMGen3TargetLowerer::buildSimdBallot(uint64_t a1, __int128 *a2)
{
  v25 = *a2;
  v26 = *(a2 + 2);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 6);
  v4 = (*(*a1 + 1624))(a1, &v25, *(a1 + 192));
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v22 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (a1 + 8));
  v24 = *(a1 + 104);
  v5 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(a1, &v22, v4);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  v7 = llvm::ConstantInt::get();
  v8 = *(a1 + 200);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v4, v8, v20);
  v19 = 257;
  llvm::IRBuilderBase::CreateShl((a1 + 8), v7, Cast, v18);
  v10 = *(a1 + 200);
  llvm::ConstantInt::get();
  v17 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v14 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
  v16 = *(a1 + 104);
  active = AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(a1, &v14, Select, v5);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return active;
}

std::string *AGCLLVMGen4TargetLowerer::getImageBlockWriteIntrinsicFromDimension@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, _BYTE *a4@<X8>)
{
  *a3 = 0;
  result = std::string::basic_string[abi:nn200100]<0>(a4, *(a1 + 2064));
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v7 = ".2d.array";
LABEL_13:
        result = std::string::append(result, v7);
        v9 = 1;
LABEL_16:
        *a3 = v9;
        return result;
      }

      v8 = ".2d";
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v8 = ".1d.array";
    }

    else
    {
      v8 = ".1d";
    }
  }

  else if (a2 <= 5)
  {
    if (a2 != 4)
    {
      result = std::string::append(result, ".3d");
      v9 = 2;
      goto LABEL_16;
    }

    v8 = ".2d.msaa";
  }

  else
  {
    switch(a2)
    {
      case 6:
        v8 = ".cubestf";
        break;
      case 7:
        v8 = ".cubestf.array";
        break;
      case 8:
        v7 = ".2d.msaa.array";
        goto LABEL_13;
      default:
        return result;
    }
  }

  return std::string::append(result, v8);
}

void AGCLLVMGen4TargetLowerer::buildDepthf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[16] = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(&v21, 0, sizeof(v21));
  v28[0] = v29;
  v28[1] = 0x1000000000;
  v25 = v27;
  v26 = 0x1000000000;
  v8 = *(a1 + 192);
  v9 = llvm::ConstantInt::get();
  v18 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
  v20 = *(a1 + 104);
  v10 = (*(*a1 + 208))(a1, &v18, v9);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  MEMORY[0x20F331AA0](&v21, *(a1 + 1616));
  if (a3)
  {
    std::string::append(&v21, ".depth");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, *(a1 + 168));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, a3);
  }

  if (a4)
  {
    std::string::append(&v21, ".stencil");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, *(a1 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, a4);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, v10);
  v11 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v12 = &v21;
LABEL_14:
    strlen(v12);
    goto LABEL_15;
  }

  v12 = v21.__r_.__value_.__r.__words[0];
  if (v21.__r_.__value_.__r.__words[0])
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v17 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v14 + 24), v14, v25, v26, v16);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void AGCLLVMGen4TargetLowerer::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, uint64_t a8, uint64_t a9)
{
  v54[16] = *MEMORY[0x277D85DE8];
  v47 = *a2;
  v48 = *(a2 + 16);
  if (v48)
  {
    llvm::MetadataTracking::track();
  }

  v49 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v47);
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  v53[0] = v54;
  v53[1] = 0x1000000000;
  v50 = v52;
  v51 = 0x1000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, *(a1 + 192));
  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v15 = *(a1 + 192);
  v16 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, v16);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, *(a1 + 192));
  v17 = *(a1 + 192);
  v44 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v17, v43);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, Cast);
  v19 = *(a1 + 200);
  v20 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, v20);
  v21 = *(a1 + 200);
  v22 = llvm::PointerType::get();
  v44 = 257;
  v23 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v22, v43);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, v23);
  v42 = 0;
  (*(*a1 + 1736))(__s, a1, a8, &v42);
  v24 = *(a1 + 184);
  v25 = llvm::PointerType::get();
  v26 = *(a1 + 208);
  v27 = llvm::ConstantInt::get();
  v44 = 257;
  v28 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v27, v25, v43);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, v25);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, v28);
  if ((v42 - 1) <= 1)
  {
    if (*(a1 + 1728))
    {
      v29 = strlen(*(a1 + 1728));
    }

    v30 = *(a1 + 200);
    inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
    v32 = 200;
    if (v42 == 1)
    {
      v32 = 192;
    }

    v33 = *(a1 + v32);
    v44 = 257;
    v34 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v43);
    v41[16] = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v34, v33, v41);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, v33);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, v35);
  }

  v36 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((v46 & 0x80000000) == 0)
  {
    v37 = __s;
LABEL_14:
    strlen(v37);
    goto LABEL_15;
  }

  v37 = *__s;
  if (*__s)
  {
    goto LABEL_14;
  }

LABEL_15:
  v38 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v44 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v39 + 24), v39, v50, v51, v43);
  if (v50 != v52)
  {
    free(v50);
  }

  if (v53[0] != v54)
  {
    free(v53[0]);
  }

  if (v46 < 0)
  {
    operator delete(*__s);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void AGCLLVMGen5TargetConfig::createGeometryPipelineEmulationFWAllocationPreMeshShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpe_pre_ms", 10, 0);
  {
    {
      AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9898 = 0;
      qword_27C8D98A0 = 0;
    }
  }

  operator new();
}

void AGCLLVMGen5TargetConfig::createGeometryPipelineEmulationFWAllocationPostObjectShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpe_post_os", 11, 0);
  {
    {
      AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9878 = 0;
      qword_27C8D9880 = 0;
    }
  }

  operator new();
}

void AGCLLVMGen5TargetConfig::createGeometryPipelineEmulationFWAllocationSetupShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpe_setup", 9, 0);
  {
    {
      AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9858 = 0;
      qword_27C8D9860 = 0;
    }
  }

  operator new();
}

uint64_t AGCLLVMGen5TargetConfig::createExecuteIndirectCDMPatchUpShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v5 = *(*(a2 + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 == 35 || v5 == 38)
        {
          v6 = "cei_patch_exec_gen6_hal300";
          goto LABEL_43;
        }
      }

      else if (v5 == 32 || v5 == 34)
      {
        v6 = "cei_patch_exec_gen6_hal200";
        goto LABEL_43;
      }

      goto LABEL_52;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 == 31)
      {
        std::string::basic_string[abi:nn200100]<0>(v24, "cei_patch_exec_gen6_g16p");
        v7 = *(*(a2 + 4) + 24);
        v28[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v29, "a0");
        v30 = 3;
        std::string::basic_string[abi:nn200100]<0>(v31, "b0");
        v32 = 4;
        std::string::basic_string[abi:nn200100]<0>(v33, "b0");
        v8 = 0;
        v22 = 0;
        v23 = 0;
        v21 = &v22;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v21, &v22, v28[v8]);
          v8 += 8;
        }

        while (v8 != 24);
        getFullBitcodePath(&v26, v24, v7, &v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v26;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v22);
        for (i = 0; i != -96; i -= 32)
        {
          if (v33[i + 23] < 0)
          {
            operator delete(*&v33[i]);
          }
        }

        goto LABEL_61;
      }

      goto LABEL_52;
    }

LABEL_23:
    v6 = "cei_patch_exec_gen4";
    goto LABEL_43;
  }

  if (v5 <= 18)
  {
    if ((v5 - 17) < 2)
    {
      v6 = "cei_patch_exec_gen5";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
      goto LABEL_52;
    }

    goto LABEL_23;
  }

  if ((v5 - 19) < 3)
  {
    v6 = "cei_patch_exec_gen5x";
LABEL_43:
    MEMORY[0x20F331AA0](&__p, v6);
    goto LABEL_44;
  }

  if (v5 == 22)
  {
    std::string::basic_string[abi:nn200100]<0>(v24, "cei_patch_exec_gen6_g15p");
    v18 = *(*(a2 + 4) + 24);
    v28[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v29, "a0");
    v30 = 3;
    std::string::basic_string[abi:nn200100]<0>(v31, "b0");
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = &v22;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v21, &v22, v28[v19]);
      v19 += 8;
    }

    while (v19 != 16);
    getFullBitcodePath(&v26, v24, v18, &v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v26;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v22);
    for (j = 0; j != -64; j -= 32)
    {
      if (v31[j + 23] < 0)
      {
        operator delete(*&v31[j]);
      }
    }

    goto LABEL_61;
  }

  if (v5 == 24)
  {
    std::string::basic_string[abi:nn200100]<0>(v24, "cei_patch_exec_gen6_g15g");
    v11 = *(*(a2 + 4) + 24);
    v28[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v29, "a0");
    v30 = 3;
    std::string::basic_string[abi:nn200100]<0>(v31, "b0");
    v32 = 5;
    std::string::basic_string[abi:nn200100]<0>(v33, "c0");
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v21 = &v22;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v21, &v22, v28[v12]);
      v12 += 8;
    }

    while (v12 != 24);
    getFullBitcodePath(&v26, v24, v11, &v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v26;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v22);
    for (k = 0; k != -96; k -= 32)
    {
      if (v33[k + 23] < 0)
      {
        operator delete(*&v33[k]);
      }
    }

LABEL_61:
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

LABEL_44:
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    AGCLLVMObject::readBitcode(a3, p_p, size, 0);
    {
      {
        AGCLLVMDriverExecuteIndirectComputeShaderGen5::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
        *algn_27C8D97F8 = 0;
        qword_27C8D9800 = 0;
      }
    }

    operator new();
  }

LABEL_52:
  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildShuffleAndFill(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v22 = *a2;
  v23 = *(a2 + 2);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v22, a1 + 8);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(*(a3 + 24) + 16) != 16)
  {
    if (a6)
    {
      v12 = *a3;
    }

    else
    {
      v12 = *a3;
      if (*(a1 + 968) < 2u)
      {
        return v12;
      }
    }

    v16 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
    v18 = *(a1 + 104);
    v14 = *(a1 + 192);
    v15 = llvm::ConstantInt::get();
    AGCLLVMGen5TargetLowerer::buildShuffleAndFillIfModuloIsAlpha(a1, v12, a3, a4, v15);
  }

  v19 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
  v21 = *(a1 + 104);
  v12 = AGCLLVMGen5TargetLowerer::buildShuffleAndFillNative(a1, &v19, a3, a4, a5);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildShuffleAndFillNative(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v79 = *MEMORY[0x277D85DE8];
  v66 = *a2;
  v67 = *(a2 + 2);
  if (v67)
  {
    llvm::MetadataTracking::track();
  }

  v68 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v66, (a1 + 1));
  if (v67)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *a3;
  v10 = *(a3 + 24);
  v11 = a1[24];
  v12 = (v10 + 24);
  if (*(v10 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  v55 = *(a3 + 8);
  v57 = *(a3 + 16);
  v13 = 64 - __clz(*v12 - 1);
  v56 = llvm::ConstantInt::get();
  v14 = *v9;
  v15 = *v9;
  if ((*(*v9 + 8) & 0xFE) == 0x12)
  {
    v15 = **(v14 + 2);
  }

  v16 = v15;
  if (v15 == a1[23])
  {
    v16 = a1[24];
  }

  if (a5)
  {
    v17 = ".dn";
  }

  else
  {
    v17 = ".up";
  }

  std::string::basic_string[abi:nn200100]<0>(&v64, v17);
  if (v16[8] >= 7u)
  {
    v18 = ".i";
  }

  else
  {
    v18 = ".f";
  }

  std::string::basic_string[abi:nn200100]<0>(&v61, v18);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v16);
  std::to_string(&v60, ScalarSizeInBits);
  std::operator+<char>();
  if ((v63 & 0x80u) == 0)
  {
    v20 = &v61;
  }

  else
  {
    v20 = v61;
  }

  if ((v63 & 0x80u) == 0)
  {
    v21 = v63;
  }

  else
  {
    v21 = v62;
  }

  v22 = std::string::append(&v58, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((v63 & 0x80u) == 0)
  {
    v24 = &v61;
  }

  else
  {
    v24 = v61;
  }

  if ((v63 & 0x80u) == 0)
  {
    v25 = v63;
  }

  else
  {
    v25 = v62;
  }

  v26 = std::string::append(&v59, v24, v25);
  v27 = v26->__r_.__value_.__r.__words[2];
  *&v69.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
  v69.__r_.__value_.__r.__words[2] = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v60;
  }

  else
  {
    v28 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  v30 = std::string::append(&v69, v28, size);
  v31 = v30->__r_.__value_.__r.__words[2];
  *__p = *&v30->__r_.__value_.__l.__data_;
  *&v72 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = a1[24];
  *&__src = v16;
  *(&__src + 1) = v32;
  *&v74 = v16;
  *(&v74 + 1) = v32;
  v76[0] = v77;
  v76[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v76, &__src, v75);
  llvm::FunctionType::get();
  v33 = a1[54];
  llvm::Module::getOrInsertFunction();
  v35 = v34;
  if (v76[0] != v77)
  {
    free(v76[0]);
  }

  if (SBYTE7(v72) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  __src = 0u;
  v74 = 0u;
  *__p = 0u;
  v72 = 0u;
  v36 = AGCLLVMBuilder::unboxVector(a1, v9, &__src);
  AGCLLVMBuilder::unboxVector(a1, v55, __p);
  v37 = *(v14 + 2) & 0xFE;
  if (v37 == 18)
  {
    llvm::FixedVectorType::get();
    v38 = llvm::UndefValue::get();
    if (v36)
    {
      goto LABEL_47;
    }

LABEL_56:
    InsertElement = v38;
    goto LABEL_57;
  }

  v38 = 0;
  if (!v36)
  {
    goto LABEL_56;
  }

LABEL_47:
  v39 = 0;
  v40 = v36;
  do
  {
    if (v15 == a1[23])
    {
      v42 = *(&__src + v39);
      v43 = a1[24];
      v78 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 40, v42, v43, v76);
      *(&__src + v39) = Cast;
      v45 = __p[v39];
      v46 = a1[24];
      v78 = 257;
      v47 = llvm::IRBuilderBase::CreateCast((a1 + 1), 40, v45, v46, v76);
      __p[v39] = v47;
      v69.__r_.__value_.__r.__words[0] = Cast;
      v69.__r_.__value_.__l.__size_ = v57;
      v69.__r_.__value_.__r.__words[2] = v47;
      v70 = v56;
      v78 = 257;
      v48 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v35 + 24), v35, &v69, 4, v76);
      v49 = a1[23];
      v78 = 257;
      v41 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v48, v49, v76);
    }

    else
    {
      v69.__r_.__value_.__r.__words[0] = *(&__src + v39);
      v69.__r_.__value_.__l.__size_ = v57;
      v69.__r_.__value_.__r.__words[2] = __p[v39];
      v70 = v56;
      v78 = 257;
      v41 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v35 + 24), v35, &v69, 4, v76);
    }

    InsertElement = v41;
    if (v37 == 18)
    {
      v78 = 257;
      v51 = a1[25];
      v52 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v38, InsertElement, v52, v76);
    }

    ++v39;
    v38 = InsertElement;
  }

  while (v40 != v39);
LABEL_57:
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v61);
  }

  if (v65 < 0)
  {
    operator delete(v64);
  }

  v53 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

void AGCLLVMGen5TargetLowerer::buildShuffleAndFillIfModuloIsAlpha(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = (a5 + 24);
  if (*(a5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  std::to_string(&v19, *v6);
  v7 = std::string::insert(&v19, 0, "mod");
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v22, ".block");
  v10 = v9->__r_.__value_.__r.__words[2];
  *__p = *&v9->__r_.__value_.__l.__data_;
  v21 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v11 = a1[7];
  v12 = a1[8];
  v13 = SHIBYTE(v21);
  if (v21 >= 0)
  {
    v14 = HIBYTE(v21);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::basic_string[abi:nn200100](&v19, v14 + 6);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (v13 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, ".merge");
  v23 = 260;
  v22.__r_.__value_.__r.__words[0] = &v19;
  llvm::BasicBlock::splitBasicBlock();
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v17 = a1[57];
  v23 = 260;
  v22.__r_.__value_.__r.__words[0] = __p;
  v18 = *(v11 + 56);
  operator new();
}

uint64_t AGCLLVMGen5TargetLowerer::findPointerAlignment(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v3 = *v2;
  v4 = v2[4];
  v5 = *(a1 + 208);
  result = llvm::ConstantInt::get();
  v7 = *(v4 + 16);
  if (v7 == 77 && v4 != 0)
  {
    v11 = **(v4 - 32);
    v10 = *(v11 + 8) != 15 || v11 == 0;
    goto LABEL_14;
  }

  if (v7 == 62 && v4 != 0)
  {
    v10 = *(*(v4 + 72) + 8) == 17;
LABEL_14:
    if (!v10)
    {
      return v3;
    }
  }

  return result;
}

void AGCLLVMGen5TargetLowerer::buildMemCpy1DDMA(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  v4 = (*a2)[2];
  v5 = (*a2)[3];
  v6 = (*a2)[4];
  v7 = *(*v4 + 8);
  if ((v7 & 0xFE) == 0x12)
  {
    v7 = *(**(*v4 + 16) + 8);
  }

  v8 = v7 & 0xFFFFFF00;
  if ((v7 & 0xFFFFFF00) == 0x300)
  {
    v9 = v25;
  }

  else
  {
    v9 = v24;
  }

  *v9 = v4;
  v9[1] = v3;
  v9[2] = v6;
  v10 = *(a1 + 208);
  if (v8 == 768)
  {
    v11 = v24;
  }

  else
  {
    v11 = v25;
  }

  v9[3] = llvm::ConstantInt::get();
  v9[4] = v6;
  *v11 = v5;
  v11[1] = v3;
  v11[2] = v6;
  v12 = *(a1 + 208);
  v11[3] = llvm::ConstantInt::get();
  v11[4] = v6;
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v15 = *(a1 + 240);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v14, v15, v22);
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  v19 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
  v21 = *(a1 + 104);
  AGCLLVMGen5TargetLowerer::CreateBufferReadWriteBlock(a1, &v19, v8 == 768, 1, v25, v24, Cast, v18);
}

void AGCLLVMGen5TargetLowerer::CreateBufferReadWriteBlock(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, llvm::Value *a7, uint64_t a8)
{
  v65 = *MEMORY[0x277D85DE8];
  v62 = a8;
  v59 = *a2;
  v60 = *(a2 + 2);
  if (v60)
  {
    llvm::MetadataTracking::track();
  }

  v61 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v59, (a1 + 1));
  if (v60)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = a5[1];
  v14 = a1[24];
  LOWORD(v64) = 257;
  a5[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v13, v14, v63);
  v15 = a5[2];
  v16 = a1[24];
  LOWORD(v64) = 257;
  a5[2] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v15, v16, v63);
  v17 = a5[3];
  v18 = a1[24];
  LOWORD(v64) = 257;
  a5[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v17, v18, v63);
  v19 = a5[4];
  v20 = a1[24];
  LOWORD(v64) = 257;
  a5[4] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v19, v20, v63);
  v21 = a6[1];
  v22 = a1[24];
  LOWORD(v64) = 257;
  a6[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v21, v22, v63);
  v23 = a6[2];
  v24 = a1[25];
  LOWORD(v64) = 257;
  a6[2] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v23, v24, v63);
  v25 = a6[3];
  v26 = a1[25];
  LOWORD(v64) = 257;
  a6[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v25, v26, v63);
  v27 = a6[4];
  v28 = a1[25];
  LOWORD(v64) = 257;
  a6[4] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v27, v28, v63);
  LOWORD(v64) = 257;
  v29 = a1[25];
  v30 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a7, v30, v63);
  v32 = a1[24];
  v57 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v32, &__p);
  LOWORD(v64) = 257;
  v33 = a1[25];
  v34 = llvm::ConstantInt::get();
  v35 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a7, v34, v63);
  v36 = a1[24];
  v57 = 257;
  llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v35, v36, &__p);
  v63[0] = xmmword_20E71631C;
  v63[1] = unk_20E71632C;
  v64 = xmmword_20E71633C;
  std::vector<unsigned int>::vector[abi:nn200100](&__p, v63, 0xCuLL);
  v37 = a5[1];
  if (v37)
  {
    if (*(v37 + 16) == 16)
    {
      v38 = v56;
      if (__p != v56)
      {
        v39 = (v37 + 24);
        v40 = *(v37 + 32);
        v41 = *(v37 + 24);
        v42 = __p;
        do
        {
          v43 = *v42;
          v44 = v39;
          if (v40 < 0x41 || (v45 = llvm::APInt::countLeadingZerosSlowCase(v39), v44 = v41, v40 - v45 <= 0x40))
          {
            if (*v44 == v43)
            {
              break;
            }
          }

          ++v42;
        }

        while (v42 != v38);
      }
    }
  }

  v46 = a1[25];
  v47 = llvm::ConstantInt::get();
  v48 = a1[24];
  LOWORD(v64) = 257;
  a5[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v47, v48, v63);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  v49 = a1[24];
  LOWORD(v64) = 257;
  v50 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v62, v49, v63);
  v52 = a1[7];
  v51 = a1[8];
  v62 = v50;
  *&v63[0] = "if.first.active.lane.end";
  LOWORD(v64) = 259;
  llvm::BasicBlock::splitBasicBlock();
  v53 = a1[57];
  *&v63[0] = "if.first.active.lane.end";
  LOWORD(v64) = 259;
  v54 = *(v52 + 56);
  operator new();
}

void *std::vector<llvm::Type *>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<llvm::Type *>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

uint64_t AGCLLVMGen5TargetLowerer::buildMemCpy1DEmulation(uint64_t a1, uint64_t a2)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x500000000;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = *v4++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v26, *v7);
      v6 -= 8;
    }

    while (v6);
    v4 = *a2;
  }

  v8 = *v4[2];
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    v9 = *(**(v8 + 16) + 8);
  }

  v10 = v9 & 0xFFFFFF00;
  std::string::basic_string[abi:nn200100]<0>(&v22, *(a1 + 2608));
  if (v10 == 768)
  {
    v11 = ".read";
  }

  else
  {
    v11 = ".write";
  }

  v12 = std::string::append(&v22, v11);
  v13 = v12->__r_.__value_.__r.__words[2];
  *__p = *&v12->__r_.__value_.__l.__data_;
  v25 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v14 = *(a1 + 144);
  llvm::FunctionType::get();
  v15 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v16 = *a2;
  v17 = *(a2 + 8);
  v23 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v18 + 24), v18, v16, v17, &v22);
  v19 = *(a1 + 2648);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void AGCLLVMGen5TargetLowerer::buildMemCpy2DDMA(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  v4 = (*a2)[2];
  v5 = (*a2)[3];
  v6 = (*a2)[4];
  v7 = (*a2)[5];
  v8 = (*a2)[6];
  v23 = (*a2)[7];
  v9 = (*a2)[8];
  v10 = (*a2)[9];
  v25 = (*a2)[11];
  v26 = (*a2)[10];
  v11 = *(*v4 + 8);
  if ((v11 & 0xFE) == 0x12)
  {
    v11 = *(**(*v4 + 16) + 8);
  }

  v24 = (v11 & 0xFFFFFF00) == 768;
  if ((v11 & 0xFFFFFF00) == 0x300)
  {
    v12 = v35;
  }

  else
  {
    v12 = &v32;
  }

  *v12 = v4;
  v12[1] = v3;
  v31 = 257;
  v13 = *(a1 + 200);
  if ((v11 & 0xFFFFFF00) == 0x300)
  {
    v14 = &v32;
  }

  else
  {
    v14 = v35;
  }

  v15 = v6;
  v16 = llvm::ConstantInt::get();
  v12[2] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v16, v30);
  v31 = 257;
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  v12[3] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v18, v30);
  v12[4] = v5;
  *v14 = v8;
  v14[1] = v3;
  v31 = 257;
  v19 = *(a1 + 200);
  v20 = llvm::ConstantInt::get();
  v14[2] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v10, v20, v30);
  v31 = 257;
  v21 = *(a1 + 200);
  v22 = llvm::ConstantInt::get();
  v14[3] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v10, v22, v30);
  v14[4] = v23;
  v31 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v15, Mul, v30);
  v31 = 257;
  UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 8), UDiv, v15, v30);
  v27 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (a1 + 8));
  v29 = *(a1 + 104);
  AGCLLVMGen5TargetLowerer::CreateBufferReadWriteBlock(a1, &v27, v24, 0, v35, &v32, v26, v25);
}

uint64_t AGCLLVMGen5TargetLowerer::buildMemCpy2DEmulation(uint64_t a1, uint64_t a2)
{
  v89[12] = *MEMORY[0x277D85DE8];
  v88[0] = v89;
  v88[1] = 0xC00000000;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = *v4;
      v4 += 8;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v88, *v7);
      v6 -= 8;
    }

    while (v6);
    v4 = *a2;
  }

  v8 = *(v4 + 16);
  v9 = *(v4 + 40);
  v11 = *(v4 + 72);
  v10 = *(v4 + 80);
  v12 = *v8;
  v13 = *(*v8 + 8);
  if ((v13 & 0xFE) == 0x12)
  {
    v13 = *(**(v12 + 16) + 8);
  }

  v14 = v13 & 0xFFFFFF00;
  if ((v13 & 0xFFFFFF00) == 0x300)
  {
    v15 = v9;
  }

  else
  {
    v15 = v11;
  }

  if (v14 == 768)
  {
    v16 = v11;
  }

  else
  {
    v16 = v9;
  }

  if (v15[16] >= 0x15u || v16[16] > 0x14u || v10[16] > 0x14u)
  {
    v23 = 0;
  }

  else
  {
    v87 = 257;
    v17 = *(a1 + 200);
    v18 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v16, v18, &v86);
    if (*(Element + 16) == 16)
    {
      v20 = Element;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 32);
    if (v21 > 0x40)
    {
      v22 = **(v20 + 24);
    }

    else
    {
      v22 = (*(v20 + 24) << -v21) >> -v21;
    }

    v81 = v22;
    v87 = 257;
    v50 = *(a1 + 200);
    v51 = llvm::ConstantInt::get();
    v52 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v16, v51, &v86);
    if (*(v52 + 16) == 16)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = *(v53 + 32);
    if (v54 > 0x40)
    {
      v55 = **(v53 + 24);
    }

    else
    {
      v55 = (*(v53 + 24) << -v54) >> -v54;
    }

    v80 = v55;
    v87 = 257;
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v58 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v10, v57, &v86);
    if (*(v58 + 16) == 16)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v60 = *(v59 + 32);
    if (v60 > 0x40)
    {
      v61 = **(v59 + 24);
    }

    else
    {
      v61 = (*(v59 + 24) << -v60) >> -v60;
    }

    v82 = v61;
    v87 = 257;
    v62 = *(a1 + 200);
    v63 = llvm::ConstantInt::get();
    v64 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v10, v63, &v86);
    if (*(v64 + 16) == 16)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = *(v65 + 32);
    if (v66 > 0x40)
    {
      v67 = **(v65 + 24);
    }

    else
    {
      v67 = (*(v65 + 24) << -v66) >> -v66;
    }

    v87 = 257;
    v68 = *(a1 + 200);
    v69 = llvm::ConstantInt::get();
    v70 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v15, v69, &v86);
    if (*(v70 + 16) == 16)
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    v72 = *(v71 + 32);
    if (v72 > 0x40)
    {
      v73 = **(v71 + 24);
    }

    else
    {
      v73 = (*(v71 + 24) << -v72) >> -v72;
    }

    v87 = 257;
    v74 = *(a1 + 200);
    v75 = llvm::ConstantInt::get();
    v76 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v15, v75, &v86);
    if (*(v76 + 16) == 16)
    {
      v77 = v76;
    }

    else
    {
      v77 = 0;
    }

    v78 = *(v77 + 32);
    if (v78 > 0x40)
    {
      v79 = **(v77 + 24);
    }

    else
    {
      v79 = (*(v77 + 24) << -v78) >> -v78;
    }

    v23 = 0;
    if ((v82 & 0x8000000000000000) == 0 && (v67 & 0x8000000000000000) == 0 && v82 + v73 - 1 < v81)
    {
      v23 = v67 + v79 - 1 < v80;
    }
  }

  if (v10[16] <= 0x14u && v11 == v9)
  {
    v87 = 257;
    v25 = *(a1 + 200);
    v26 = llvm::ConstantInt::get();
    v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v10, v26, &v86);
    if (*(v27 + 16) == 16)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(v28 + 32);
    if (v29 > 0x40)
    {
      if (**(v28 + 24))
      {
        goto LABEL_41;
      }
    }

    else if ((*(v28 + 24) << -v29) >> -v29)
    {
      goto LABEL_41;
    }

    v87 = 257;
    v30 = *(a1 + 200);
    v31 = llvm::ConstantInt::get();
    v32 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v10, v31, &v86);
    if (*(v32 + 16) == 16)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = *(v33 + 32);
    if (v34 > 0x40)
    {
      v35 = **(v33 + 24);
    }

    else
    {
      v35 = (*(v33 + 24) << -v34) >> -v34;
    }

    v23 |= v35 == 0;
  }

LABEL_41:
  std::string::basic_string[abi:nn200100]<0>(&v83, *(a1 + 2616));
  if (v14 == 768)
  {
    v36 = ".read";
  }

  else
  {
    v36 = ".write";
  }

  v37 = std::string::append(&v83, v36);
  v38 = v37->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (v23)
  {
    v39 = ".unchecked";
  }

  else
  {
    v39 = &unk_20E75F419;
  }

  v40 = std::string::append(&v86, v39);
  v41 = v40->__r_.__value_.__r.__words[2];
  *__p = *&v40->__r_.__value_.__l.__data_;
  v85 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  v42 = *(a1 + 144);
  llvm::FunctionType::get();
  v43 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v44 = *a2;
  v45 = *(a2 + 8);
  v87 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v46 + 24), v46, v44, v45, &v86);
  v47 = *(a1 + 2648);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  if (v88[0] != v89)
  {
    free(v88[0]);
  }

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t AGCLLVMGen5TargetLowerer::programTypeSpecialRegisterValueForShaderType(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return dword_20E71634C[a2];
  }
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdMatrixThreadElementsGetPosition(uint64_t a1, __int128 *a2, uint64_t a3, llvm::Value *a4, llvm::Value *a5)
{
  v51 = *a2;
  v52 = *(a2 + 2);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v51, a1 + 8);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *(a1 + 200);
  v10 = llvm::ConstantInt::get();
  v11 = *(a1 + 200);
  v12 = llvm::ConstantInt::get();
  v50 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), a4, v12, v49);
  v14 = *(a1 + 200);
  v15 = llvm::ConstantInt::get();
  v48 = 257;
  v16 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Shl, v15, v47);
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  v46 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), a4, v18, v45);
  v44 = 257;
  v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v10, v43);
  v42 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), v16, v20, v41);
  v22 = *(a1 + 200);
  v23 = llvm::ConstantInt::get();
  v50 = 257;
  v24 = llvm::IRBuilderBase::CreateLShr((a1 + 8), a4, v23, v49);
  v25 = *(a1 + 200);
  v26 = llvm::ConstantInt::get();
  v48 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v24, v26, v47);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v46 = 257;
  v30 = llvm::IRBuilderBase::CreateLShr((a1 + 8), a4, v29, v45);
  v44 = 257;
  v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v30, v10, v43);
  v42 = 257;
  v32 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v27, v31, v41);
  v50 = 257;
  v33 = llvm::IRBuilderBase::CreateAdd((a1 + 8), Add, a5, v49);
  llvm::FixedVectorType::get();
  v34 = llvm::UndefValue::get();
  v50 = 257;
  v35 = *(a1 + 200);
  v36 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v34, v33, v36, v49);
  v50 = 257;
  v38 = *(a1 + 200);
  v39 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v32, v39, v49);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildSimdMatrixThreadElementsInit(uint64_t a1, __int128 *a2, uint64_t a3, llvm::Constant **a4, uint64_t a5, char a6)
{
  v40 = *a2;
  v41 = *(a2 + 2);
  if (v41)
  {
    llvm::MetadataTracking::track();
  }

  v42 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v40, a1 + 8);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  InsertElement = llvm::UndefValue::get();
  if (a6)
  {
    v37 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
    v39 = *(a1 + 104);
    v12 = *(a1 + 200);
    v13 = llvm::ConstantInt::get();
    v14 = (*(*a1 + 1896))(a1, &v37, v12, a5, v13);
    if (v38)
    {
      llvm::MetadataTracking::untrack();
    }

    v36 = 257;
    v15 = *(a1 + 200);
    v16 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v14, v16, v35);
    v36 = 257;
    v18 = *(a1 + 200);
    v19 = 1;
    v20 = llvm::ConstantInt::get();
    v21 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v14, v20, v35);
    llvm::Constant::getNullValue(*a4, v22);
    do
    {
      v23 = v19;
      v24 = *(a1 + 200);
      v25 = llvm::ConstantInt::get();
      v36 = 257;
      Element = llvm::IRBuilderBase::CreateAdd((a1 + 8), Element, v25, v35);
      v36 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Element, v21, v35);
      v36 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v34[16] = 257;
      v27 = *(a1 + 200);
      v28 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, Select, v28, v34);
      v19 = 0;
    }

    while ((v23 & 1) != 0);
  }

  else
  {
    v29 = 1;
    do
    {
      v30 = v29;
      v36 = 257;
      v31 = *(a1 + 200);
      v32 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, a4, v32, v35);
      v29 = 0;
    }

    while ((v30 & 1) != 0);
  }

  return InsertElement;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildSimdMatrixMultiplyAccumulate(void *a1, __int128 *a2, llvm::Type *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v60 = *a2;
  v61 = *(a2 + 2);
  if (v61)
  {
    llvm::MetadataTracking::track();
  }

  v62 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v60, (a1 + 1));
  if (v61)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = a1[25];
  v63 = llvm::ConstantInt::get();
  v13 = a1[25];
  v64 = llvm::ConstantInt::get();
  v14 = llvm::ConstantVector::get();
  v69 = 257;
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 1), a4, a4, v14, &v66);
  v16 = a1[25];
  v63 = llvm::ConstantInt::get();
  v17 = a1[25];
  v64 = llvm::ConstantInt::get();
  v18 = llvm::ConstantVector::get();
  v69 = 257;
  v19 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 1), a5, a5, v18, &v66);
  v20 = a1[25];
  v63 = llvm::ConstantInt::get();
  v21 = a1[25];
  v64 = llvm::ConstantInt::get();
  v22 = llvm::ConstantVector::get();
  v69 = 257;
  v23 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 1), a6, a6, v22, &v66);
  v24 = **(*ShuffleVector + 16);
  v25 = **(*v19 + 16);
  v26 = **(*v23 + 16);
  v27 = **(a3 + 2);
  v66 = ShuffleVector;
  v67 = v19;
  v68[0] = v23;
  std::vector<llvm::Type *>::vector[abi:nn200100](&__p, &v66, 3uLL);
  memset(&v57, 0, sizeof(v57));
  v28 = a1[19];
  if (v24 == v28 && v25 == v28 && v26 == v28 && v27 == v28)
  {
    MEMORY[0x20F331AA0](&v57, a1[341]);
    std::string::append(&v57, ".v2f16");
    v29 = a1[19];
  }

  else
  {
    MEMORY[0x20F331AA0](&v57, a1[340]);
    std::string::append(&v57, ".v2f32");
    v29 = a1[21];
    v30 = __p;
    v31 = v59;
    if (__p != v59)
    {
      do
      {
        v32 = *v30;
        v33 = **(**v30 + 16);
        if (v33 == a1[19] || v33 == a1[20])
        {
          v34 = a1[21];
          v35 = llvm::FixedVectorType::get();
          v69 = 257;
          *v30 = llvm::IRBuilderBase::CreateFPExt((a1 + 1), v32, v35, &v66);
        }

        ++v30;
      }

      while (v30 != v31);
    }
  }

  v66 = v68;
  v67 = 0x300000000;
  v36 = __p;
  v37 = v59;
  while (v36 != v37)
  {
    v38 = *v36++;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v66, *v38);
  }

  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v39 = &v57;
LABEL_21:
    strlen(v39);
    goto LABEL_22;
  }

  v39 = v57.__r_.__value_.__r.__words[0];
  if (v57.__r_.__value_.__r.__words[0])
  {
    goto LABEL_21;
  }

LABEL_22:
  llvm::FixedVectorType::get();
  llvm::FunctionType::get();
  v40 = a1[54];
  llvm::Module::getOrInsertFunction();
  v65 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v41 + 24), v41, __p, (v59 - __p) >> 3, &v63);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v29);
  if (ScalarSizeInBits > llvm::Type::getScalarSizeInBits(a3))
  {
    v44 = llvm::FixedVectorType::get();
    v65 = 257;
    FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), FPTrunc, v44, &v63);
  }

  InsertElement = llvm::UndefValue::get();
  v46 = 1;
  do
  {
    v47 = v46;
    v65 = 257;
    v48 = a1[25];
    v49 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPTrunc, v49, &v63);
    v56 = 257;
    v51 = a1[25];
    v52 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, Element, v52, v55);
    v46 = 0;
  }

  while ((v47 & 1) != 0);
  if (v66 != v68)
  {
    free(v66);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  v53 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

uint64_t AGCLLVMGen5TargetLowerer::buildVoteAny(uint64_t a1, __int128 *a2, llvm::CmpInst **a3, int a4)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v14, a1 + 8);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = 200;
  if (a4)
  {
    v8 = 192;
  }

  v9 = *(a1 + v8);
  v10 = llvm::ConstantInt::get();
  v13 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, a3, v10, v12);
}

uint64_t AGCLLVMGen5TargetLowerer::buildVoteAll(uint64_t a1, __int128 *a2, llvm::CmpInst **a3, int a4)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v14, a1 + 8);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = 200;
  if (a4)
  {
    v8 = 192;
  }

  v9 = *(a1 + v8);
  v10 = llvm::ConstantInt::get();
  v13 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, a3, v10, v12);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadAny(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v6 = (*(*a1 + 1768))(a1, &v12, a3);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = *(a1 + 192);
  v8 = llvm::ConstantInt::get();
  v11 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v6, v8, v10);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadAll(unsigned int **a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  v6 = (*(*a1 + 228))(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v7 = (*(*a1 + 221))(a1, &v11, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v7, v6, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdAny(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v6 = (*(*a1 + 1808))(a1, &v12, a3);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = *(a1 + 200);
  v8 = llvm::ConstantInt::get();
  v11 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v6, v8, v10);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdAll(unsigned int **a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  v6 = (*(*a1 + 227))(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v7 = (*(*a1 + 226))(a1, &v11, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v7, v6, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadActiveThreadsMask(uint64_t a1, uint64_t a2)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    llvm::MetadataTracking::track();
  }

  v8 = *(a2 + 24);
  ActiveThreadsMask = AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(a1, &v6, 1);
  if (v7)
  {
    llvm::MetadataTracking::untrack();
  }

  return ActiveThreadsMask;
}

uint64_t AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(uint64_t a1, __int128 *a2, char a3)
{
  v18 = *a2;
  v19 = *(a2 + 2);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v18, a1 + 8);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((a3 & 1) == 0)
  {
    v12 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
    v14 = *(a1 + 104);
    v10 = *(a1 + 176);
    v11 = llvm::ConstantInt::get();
    v8 = (*(*a1 + 1808))(a1, &v12, v11);
    if (!v13)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  v6 = *(a1 + 176);
  v7 = llvm::ConstantInt::get();
  v8 = (*(*a1 + 1768))(a1, &v15, v7);
  if (v16)
  {
LABEL_7:
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdActiveThreadsMask(uint64_t a1, uint64_t a2)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    llvm::MetadataTracking::track();
  }

  v8 = *(a2 + 24);
  ActiveThreadsMask = AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(a1, &v6, 0);
  if (v7)
  {
    llvm::MetadataTracking::untrack();
  }

  return ActiveThreadsMask;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildSimdBallot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(&v12, *(a1 + 2800));
  v5 = std::string::append(&v12, ".u.32");
  v6 = v5->__r_.__value_.__r.__words[2];
  *__p = *&v5->__r_.__value_.__l.__data_;
  v15 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v15 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v15 >= 0)
  {
    v8 = SHIBYTE(v15);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, *(a1 + 200), *(a1 + 176));
  v13 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v9 + 24), v9, &v19, 1, &v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleRotateUp(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[348], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleXor(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[347], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffle(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[344], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdBroadcast(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[343], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadBallot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, *(a1 + 2808));
  v5 = std::string::append(&v15, ".u.32");
  v6 = v5->__r_.__value_.__r.__words[2];
  *__p = *&v5->__r_.__value_.__l.__data_;
  v18 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v18 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v18 >= 0)
  {
    v8 = SHIBYTE(v18);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, *(a1 + 200), *(a1 + 176));
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v9 + 24), v9, &v22, 1, &v15);
  v11 = *(a1 + 192);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, v11, v14);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return Cast;
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadShuffleRotateUp(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[349], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildCoordinateDewarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateDewarpImpl(a1, &v12, a3, a4, a5);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMGen5TargetLowerer::buildCoordinateDewarpImpl(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = *a2;
  v96 = *(a2 + 16);
  if (v96)
  {
    llvm::MetadataTracking::track();
  }

  v97 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v95);
  if (v96)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a5 == 12)
  {
    if (*a4 != 0x32702E3233663276 || *(a4 + 8) != 842230062)
    {
      v17 = *a4 == 0x32702E3233693276 && *(a4 + 8) == 842230062;
      goto LABEL_58;
    }

    goto LABEL_43;
  }

  if (a5 == 18)
  {
    if (*a4 != 0x746E6174736E6F63 || *(a4 + 8) != 0x6632762E3233692ELL || *(a4 + 16) != 12851)
    {
      if (*a4 == 0x746E6174736E6F63 && *(a4 + 8) == 0x6932762E3233692ELL && *(a4 + 16) == 12851)
      {
        v17 = 1;
        goto LABEL_58;
      }

LABEL_32:
      v17 = 0;
LABEL_58:
      v20 = *a3;
      goto LABEL_59;
    }

LABEL_43:
    v20 = *a3;
    v17 = 1;
    goto LABEL_56;
  }

  if (a5 != 14)
  {
    goto LABEL_32;
  }

  v12 = *a4 == 0x746E6174736E6F63 && *(a4 + 6) == 0x32336632762E746ELL || *a4 == 0x32702E3233663276 && *(a4 + 6) == 0x3233692E38693270;
  if ((*a4 != 0x32702E3233663276 || *(a4 + 6) != 0x3233692E38693270) && (*a4 != 0x32702E3233693276 || *(a4 + 6) != 0x3233692E38693270))
  {
    v17 = 0;
    v20 = *a3;
    if (!v12)
    {
      goto LABEL_59;
    }

LABEL_56:
    v23 = a1[21];
    llvm::ConstantFP::get();
    Splat = llvm::ConstantDataVector::getSplat();
    v94 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), v20, Splat, v93);
    v26 = a1[31];
    v94 = 257;
    FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), FMul, v26, v93);
    v28 = 1;
    goto LABEL_60;
  }

  v20 = *a3;
  v17 = 1;
  if (v12)
  {
    goto LABEL_56;
  }

LABEL_59:
  v94 = 257;
  v29 = *v20;
  v30 = llvm::ConstantInt::get();
  FPToUI = llvm::IRBuilderBase::CreateLShr((a1 + 1), v20, v30, v93);
  v28 = 0;
LABEL_60:
  v31 = *(a3 + 8);
  v32 = a1[28];
  v33 = llvm::PointerType::get();
  v94 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v31, v33, v93);
  v94 = 257;
  v35 = a1[25];
  v36 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v36, v93);
  v38 = a1[25];
  v39 = llvm::ConstantInt::get();
  v92 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Element, v39, v91);
  if (v17)
  {
    v41 = *(a3 + 16);
    v42 = a1[25];
    v43 = llvm::ConstantInt::get();
    v94 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v41, v43, v93);
    v92 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Add, Mul, v91);
  }

  v45 = a1[28];
  v94 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v45, Cast, Add, v93);
  v94 = 257;
  v47 = a1[25];
  v48 = llvm::ConstantInt::get();
  v49 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v48, v93);
  v50 = a1[25];
  v51 = llvm::ConstantInt::get();
  v92 = 257;
  v52 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v49, v51, v91);
  v53 = a1[28];
  v94 = 257;
  v54 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v53, Cast, v52, v93);
  v55 = a1[28];
  v94 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v55, GEP, 0, v93);
  v57 = a1[28];
  v94 = 257;
  llvm::Type::isOpaquePointerTy(*v54);
  v58 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v57, v54, 0, v93);
  v59 = a1[28];
  v60 = llvm::UndefValue::get();
  v94 = 257;
  v61 = a1[25];
  v62 = llvm::ConstantInt::get();
  v63 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v62, v93);
  v92 = 257;
  v64 = a1[25];
  v65 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v60, v63, v65, v91);
  v94 = 257;
  v67 = a1[25];
  v68 = llvm::ConstantInt::get();
  v69 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v58, v68, v93);
  v92 = 257;
  v70 = a1[25];
  v71 = llvm::ConstantInt::get();
  v72 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v69, v71, v91);
  v73 = a1[28];
  v74 = llvm::UndefValue::get();
  v94 = 257;
  v75 = a1[25];
  v76 = llvm::ConstantInt::get();
  v77 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v76, v93);
  v92 = 257;
  v78 = a1[25];
  v79 = llvm::ConstantInt::get();
  v80 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v74, v77, v79, v91);
  v94 = 257;
  v81 = a1[25];
  v82 = llvm::ConstantInt::get();
  v83 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v58, v82, v93);
  v92 = 257;
  v84 = a1[25];
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v80, v83, v85, v91);
  v94 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((a1 + 1), v20, v86, v93);
  v92 = 257;
  v88 = llvm::IRBuilderBase::CreateFMul((a1 + 1), FSub, v72, v91);
  if ((v28 & 1) == 0)
  {
    v89 = a1[31];
    v94 = 257;
    return llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v88, v89, v93);
  }

  return v88;
}

uint64_t AGCLLVMGen5TargetLowerer::buildCoordinateWarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateWarpImpl(a1, &v12, a3, a4, a5);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMGen5TargetLowerer::buildCoordinateWarpImpl(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v171 = *a2;
  v172 = *(a2 + 16);
  if (v172)
  {
    llvm::MetadataTracking::track();
  }

  v173 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v171);
  if (v172)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a5 == 12)
  {
    v19 = *(a4 + 8);
    v20 = v19 == 842230062;
    v21 = v19 != 842230062 || *a4 != 0x32702E3233663276;
    v17 = v20 && *a4 == 0x32702E3233693276;
    FAdd = *a3;
    if (!v21)
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  if (a5 == 18)
  {
    if (*a4 == 0x746E6174736E6F63 && *(a4 + 8) == 0x6632762E3233692ELL && *(a4 + 16) == 12851)
    {
      FAdd = *a3;
      v17 = 1;
LABEL_55:
      v24 = 1;
      goto LABEL_58;
    }

    if (*a4 == 0x746E6174736E6F63 && *(a4 + 8) == 0x6932762E3233692ELL && *(a4 + 16) == 12851)
    {
      v17 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v17 = 0;
LABEL_33:
    FAdd = *a3;
    goto LABEL_57;
  }

  if (a5 != 14)
  {
    goto LABEL_32;
  }

  v12 = *a4 == 0x746E6174736E6F63 && *(a4 + 6) == 0x32336632762E746ELL || *a4 == 0x32702E3233663276 && *(a4 + 6) == 0x3233692E38693270;
  if (*a4 == 0x32702E3233663276 && *(a4 + 6) == 0x3233692E38693270)
  {
    FAdd = *a3;
    v17 = 1;
    v24 = 1;
    if (v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v17 = *a4 == 0x32702E3233693276 && *(a4 + 6) == 0x3233692E38693270;
    FAdd = *a3;
    if (v12)
    {
      goto LABEL_55;
    }
  }

LABEL_57:
  v25 = a1[28];
  v170 = 257;
  UIToFP = llvm::IRBuilderBase::CreateUIToFP((a1 + 1), FAdd, v25, v169);
  v27 = a1[21];
  llvm::ConstantFP::get();
  Splat = llvm::ConstantDataVector::getSplat();
  v168 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((a1 + 1), UIToFP, Splat, v167);
  v24 = 0;
LABEL_58:
  v158 = v24;
  v29 = a1[21];
  llvm::ConstantFP::get();
  v30 = llvm::ConstantDataVector::getSplat();
  v170 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), FAdd, v30, v169);
  v32 = a1[31];
  v170 = 257;
  FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), FMul, v32, v169);
  v34 = a1[28];
  v170 = 257;
  v35 = llvm::IRBuilderBase::CreateUIToFP((a1 + 1), FPToUI, v34, v169);
  v36 = a1[21];
  llvm::ConstantFP::get();
  v37 = llvm::ConstantDataVector::getSplat();
  v168 = 257;
  v38 = llvm::IRBuilderBase::CreateFMul((a1 + 1), v35, v37, v167);
  v166 = 257;
  v159 = FAdd;
  llvm::IRBuilderBase::CreateFSub((a1 + 1), FAdd, v38, v165);
  v39 = *(a3 + 8);
  v40 = a1[31];
  v41 = llvm::PointerType::get();
  v170 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v39, v41, v169);
  v170 = 257;
  v43 = a1[25];
  v44 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v44, v169);
  v46 = a1[25];
  v47 = llvm::ConstantInt::get();
  v168 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Element, v47, v167);
  if (v17)
  {
    v49 = *(a3 + 16);
    v50 = a1[25];
    v51 = llvm::ConstantInt::get();
    v170 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v49, v51, v169);
    v168 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Add, Mul, v167);
  }

  v53 = a1[31];
  v170 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v53, Cast, Add, v169);
  v55 = a1[31];
  v56 = a1[25];
  v57 = 1;
  v58 = llvm::ConstantInt::get();
  v170 = 257;
  v59 = llvm::IRBuilderBase::CreateAdd((a1 + 1), Add, v58, v169);
  v168 = 257;
  v60 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v55, Cast, v59, v167);
  v61 = a1[31];
  v170 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v61, GEP, 0, v169);
  v63 = a1[31];
  v170 = 257;
  llvm::Type::isOpaquePointerTy(*v60);
  v64 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v63, v60, 0, v169);
  v170 = 257;
  v65 = a1[25];
  v66 = llvm::ConstantInt::get();
  v67 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v66, v169);
  v68 = a1[25];
  v69 = llvm::ConstantInt::get();
  v168 = 257;
  v70 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v67, v69, v167);
  v71 = a1[31];
  v170 = 257;
  v72 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v71, Cast, v70, v169);
  v73 = a1[31];
  v74 = a1[25];
  v75 = llvm::ConstantInt::get();
  v170 = 257;
  v76 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v70, v75, v169);
  v168 = 257;
  v77 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v73, Cast, v76, v167);
  v78 = a1[31];
  v170 = 257;
  llvm::Type::isOpaquePointerTy(*v72);
  v79 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v78, v72, 0, v169);
  v165[0] = v79;
  v80 = a1[31];
  v170 = 257;
  llvm::Type::isOpaquePointerTy(*v77);
  v164 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v80, v77, 0, v169);
  v81 = a1[31];
  v82 = llvm::UndefValue::get();
  v170 = 257;
  v83 = a1[25];
  v84 = llvm::ConstantInt::get();
  v85 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v84, v169);
  v168 = 257;
  v86 = a1[25];
  v87 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v85, v87, v167);
  v170 = 257;
  v89 = a1[25];
  v90 = llvm::ConstantInt::get();
  v91 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v79, v90, v169);
  v168 = 257;
  v92 = a1[25];
  v93 = llvm::ConstantInt::get();
  v94 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v91, v93, v167);
  v95 = a1[31];
  llvm::UndefValue::get();
  v96 = a1[25];
  llvm::ConstantInt::get();
  v97 = llvm::ConstantDataVector::getSplat();
  v170 = 257;
  v98 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v94, v97, v169);
  v99 = a1[28];
  v170 = 257;
  v100 = llvm::IRBuilderBase::CreateUIToFP((a1 + 1), v98, v99, v169);
  v101 = a1[21];
  llvm::ConstantFP::get();
  v102 = llvm::ConstantDataVector::getSplat();
  v170 = 257;
  llvm::IRBuilderBase::CreateFMul((a1 + 1), v100, v102, v169);
  v170 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v103 = a1[31];
  v163 = llvm::UndefValue::get();
  v104 = a1[31];
  v162 = llvm::UndefValue::get();
  v105 = v165;
  v106 = &v163;
  v107 = AlignedLoad;
  do
  {
    v108 = v57;
    v109 = *v106;
    v170 = 257;
    v110 = a1[25];
    v111 = llvm::ConstantInt::get();
    v112 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v107, v111, v169);
    v168 = 257;
    v113 = a1[25];
    v114 = llvm::ConstantInt::get();
    v115 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v109, v112, v114, v167);
    v116 = *v105;
    v170 = 257;
    v117 = a1[25];
    v118 = llvm::ConstantInt::get();
    v119 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v116, v118, v169);
    v168 = 257;
    v120 = a1[25];
    v121 = llvm::ConstantInt::get();
    v122 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v115, v119, v121, v167);
    v123 = a1[28];
    v170 = 257;
    v57 = 0;
    *v106 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v122, v123, v169);
    v105 = &v164;
    v106 = &v162;
    v107 = v64;
  }

  while ((v108 & 1) != 0);
  v124 = a1[31];
  v161 = llvm::UndefValue::get();
  v125 = a1[31];
  v160 = llvm::UndefValue::get();
  v126 = v165;
  v127 = &v161;
  v128 = 1;
  do
  {
    v129 = v128;
    v130 = *v127;
    v170 = 257;
    v131 = a1[25];
    v132 = llvm::ConstantInt::get();
    v133 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v132, v169);
    v168 = 257;
    v134 = a1[25];
    v135 = llvm::ConstantInt::get();
    v136 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v130, v133, v135, v167);
    v137 = *v126;
    v170 = 257;
    v138 = a1[25];
    v139 = llvm::ConstantInt::get();
    v140 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v137, v139, v169);
    v168 = 257;
    v141 = a1[25];
    v142 = llvm::ConstantInt::get();
    v143 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v136, v140, v142, v167);
    v144 = a1[25];
    llvm::ConstantInt::get();
    v145 = llvm::ConstantDataVector::getSplat();
    v170 = 257;
    AShr = llvm::IRBuilderBase::CreateAShr((a1 + 1), v143, v145, v169);
    v147 = a1[28];
    v170 = 257;
    SIToFP = llvm::IRBuilderBase::CreateSIToFP((a1 + 1), AShr, v147, v169);
    v149 = a1[21];
    llvm::ConstantFP::get();
    v150 = llvm::ConstantDataVector::getSplat();
    v170 = 257;
    v151 = llvm::IRBuilderBase::CreateFMul((a1 + 1), SIToFP, v150, v169);
    v128 = 0;
    *v127 = v151;
    v126 = &v164;
    v127 = &v160;
    AlignedLoad = v64;
  }

  while ((v129 & 1) != 0);
  v170 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v170 = 257;
  v153 = llvm::IRBuilderBase::CreateSelect();
  v170 = 257;
  v154 = llvm::IRBuilderBase::CreateFMul((a1 + 1), v159, Select, v169);
  v168 = 257;
  v155 = llvm::IRBuilderBase::CreateFAdd((a1 + 1), v154, v153, v167);
  if ((v158 & 1) == 0)
  {
    v156 = a1[31];
    v170 = 257;
    return llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v155, v156, v169);
  }

  return v155;
}

uint64_t AGCLLVMGen5TargetLowerer::buildReadHWTileID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.tile.id", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleDown(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[346], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleUp(char **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[345], a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdGroupIndexInThreadgroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.simd.group", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen5TargetLowerer::buildThreadIndexInSimdGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.simd.element", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildProgramType(uint64_t a1, uint64_t a2)
{
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v10);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 200);
  llvm::FunctionType::get();
  v5 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v9 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, 0, 0, v8);
}

uint64_t AGCLLVMGen5TargetLowerer::buildIsNullSimdgroupEvent(unsigned int **a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
  v4 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v5 = a1[26];
  v11 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, v4, v5, v10);
  v7 = a1[328];
  v9[16] = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, Cast, v7, v9);
  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMGen5TargetLowerer::buildGetNullSimdgroupEvent(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a1 + 2624);
  v5 = *a2;
  v8 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v4, v5, v7);
  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

void AGCLLVMGen5TargetLowerer::buildWaitSimdgroupEvents(void *a1, llvm::Instruction *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
  v4 = (a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[4];
  v13 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, v4, &v12);
  v6 = a1[26];
  v11 = 257;
  llvm::IRBuilderBase::CreateCast((a1 + 1), 47, Load, v6, &v10);
  std::string::basic_string[abi:nn200100]<0>(&v10, "async.copy.waiton");
  std::string::append(&v10, "bufrblk");
  v7 = a1[7];
  v8 = a1[57];
  v13 = 260;
  v12 = &v10;
  v9 = *(v7 + 56);
  operator new();
}

void AGCLLVMGen5TargetLowerer::buildMemCpy2D(unsigned int **a1, llvm::Instruction *a2, char a3)
{
  v97[12] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
  v96[0] = v97;
  v96[1] = 0xC00000000;
  v6 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v6 >> 5) >= 1)
  {
    v7 = (v6 >> 5) & 0x7FFFFFFF;
    v8 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v96, *(v8 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v8 = (v8 + 32);
      --v7;
    }

    while (v7);
  }

  if ((a3 & 1) == 0)
  {
    v9 = v96[0];
    v94[0] = (*(*a1 + 243))(a1, a2, 0);
    llvm::SmallVectorImpl<llvm::Value *>::insert_one_impl<llvm::Value *>(v96, v9 + 1, v94);
  }

  v10 = *(v96[0] + 4);
  v11 = *(v96[0] + 8);
  v12 = *(v96[0] + 10);
  v13 = **(v96[0] + 2);
  v14 = *(v13 + 8);
  if ((v14 & 0xFE) == 0x12)
  {
    v14 = *(**(v13 + 16) + 8);
  }

  v15 = v14 & 0xFFFFFF00;
  if (v15 == 768)
  {
    v16 = *(v96[0] + 4);
  }

  else
  {
    v16 = *(v96[0] + 8);
  }

  if (v15 == 768)
  {
    v17 = *(v96[0] + 8);
  }

  else
  {
    v17 = *(v96[0] + 4);
  }

  if (v15 == 768)
  {
    v18 = *(v96[0] + 7);
  }

  else
  {
    v18 = *(v96[0] + 3);
  }

  if (*(v16 + 16) != 16 || *(v17 + 16) != 16 || *(v18 + 16) != 16 || v12[16] > 0x14u)
  {
    v21 = a1[26];
    v22 = llvm::ConstantInt::get();
    v95 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v16, v22, v94);
    v95 = 257;
    URem = llvm::IRBuilderBase::CreateURem(a1 + 1, v18, v17, v94);
    v25 = a1[26];
    v26 = llvm::ConstantInt::get();
    v93 = 257;
    v27 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, URem, v26, v92);
    v95 = 257;
    v28 = a1[25];
    v29 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v12, v29, v94);
    v31 = a1[25];
    v93 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v31, v92);
    v95 = 257;
    v33 = a1[25];
    v34 = llvm::ConstantInt::get();
    v35 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v12, v34, v94);
    v36 = a1[25];
    v93 = 257;
    v37 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v35, v36, v92);
    v38 = a1[25];
    Signed = llvm::ConstantInt::getSigned();
    v95 = 257;
    v40 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 39, Cast, Signed, v94);
    v41 = a1[25];
    v42 = llvm::ConstantInt::getSigned();
    v93 = 257;
    v43 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 41, Cast, v42, v92);
    v91 = 257;
    v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v40, v43, v90);
    v45 = a1[25];
    v46 = llvm::ConstantInt::getSigned();
    v89 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 39, v37, v46, v88);
    v48 = a1[25];
    v49 = llvm::ConstantInt::getSigned();
    v87 = 257;
    v50 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 41, v37, v49, v86);
    v85 = 257;
    v51 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v47, v50, v84);
    v83 = 257;
    v52 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v44, v51, v82);
    v95 = 257;
    v53 = llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v27, v94);
    v93 = 257;
    llvm::IRBuilderBase::CreateAnd((a1 + 1), v52, v53, v92);
    v55 = a1[7];
    v54 = a1[8];
    v94[0] = "async.copy.merge";
    v95 = 259;
    v56 = llvm::BasicBlock::splitBasicBlock();
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v56);
    llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v56, FirstInsertionPt);
    v58 = a1[26];
    v95 = 257;
    llvm::IRBuilderBase::CreatePHI((a1 + 1), v58, 2, v94);
    v59 = a1[57];
    v94[0] = "async.copy.emulation";
    v95 = 259;
    v60 = *(v55 + 7);
    operator new();
  }

  v19 = *(v16 + 32);
  if (v19 > 0x40)
  {
    v20 = llvm::APInt::countLeadingZerosSlowCase((v16 + 24)) == v19 - 1;
  }

  else
  {
    v20 = *(v16 + 24) == 1;
  }

  v63 = v20;
  v64 = (v18 + 24);
  if (*(v18 + 32) >= 0x41u)
  {
    v64 = *v64;
  }

  v65 = (v17 + 24);
  if (*(v17 + 32) >= 0x41u)
  {
    v65 = *v65;
  }

  v66 = *v64;
  v67 = *v65;
  v95 = 257;
  v68 = a1[25];
  v69 = llvm::ConstantInt::get();
  v70 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v12, v69, v94);
  if (*(v70 + 16) == 16)
  {
    v71 = v70;
  }

  else
  {
    v71 = 0;
  }

  v72 = *(v71 + 32);
  if (v72 > 0x40)
  {
    v73 = **(v71 + 24);
  }

  else
  {
    v73 = (*(v71 + 24) << -v72) >> -v72;
  }

  v95 = 257;
  v74 = a1[25];
  v75 = llvm::ConstantInt::get();
  v76 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v12, v75, v94);
  if (*(v76 + 16) == 16)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v78 = *(v77 + 32);
  if (v78 > 0x40)
  {
    v79 = **(v77 + 24);
  }

  else
  {
    v79 = (*(v77 + 24) << -v78) >> -v78;
  }

  v80 = *a1;
  if (!v63 || v66 % v67 || (v73 - 0x8000) < 0xFFFF0000 || (v79 - 0x8000) < 0xFFFF0000)
  {
    v81 = (*(v80 + 239))(a1, v96);
  }

  else
  {
    v81 = (*(v80 + 240))(a1, v96);
  }

  v61 = *a2;
  v95 = 257;
  llvm::IRBuilderBase::CreateCast((a1 + 1), 48, v81, v61, v94);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v96[0] != v97)
  {
    free(v96[0]);
  }

  v62 = *MEMORY[0x277D85DE8];
}

_DWORD *llvm::SmallVectorImpl<llvm::Value *>::insert_one_impl<llvm::Value *>(_DWORD *result, uint64_t *a2, uint64_t *a3)
{
  v4 = result;
  v5 = result[2];
  if ((*result + 8 * v5) == a2)
  {
    v8 = *a3;

    return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(result, v8);
  }

  else
  {
    if (v5 >= result[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*result + 8 * v5) = *(*result + 8 * v5 - 8);
    v7 = *result + 8 * v5 - 8;
    if (v7 != a2)
    {
      result = memmove(a2 + 1, a2, v7 - a2);
      LODWORD(v5) = v4[2];
    }

    v4[2] = v5 + 1;
    *a2 = *a3;
  }

  return result;
}

void AGCLLVMGen5TargetLowerer::buildMemCpy1D(uint64_t a1, llvm::Instruction *a2, int a3)
{
  v16[5] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v15[0] = v16;
  v15[1] = 0x500000000;
  v6 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v6 >> 5) >= 1)
  {
    v7 = (v6 >> 5) & 0x7FFFFFFF;
    v8 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v15, *(v8 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v8 = (v8 + 32);
      --v7;
    }

    while (v7);
  }

  if (!a3)
  {
    v9 = v15[0];
    v13[0] = (*(*a1 + 1944))(a1, a2, 0);
    llvm::SmallVectorImpl<llvm::Value *>::insert_one_impl<llvm::Value *>(v15, v9 + 1, v13);
  }

  v10 = (*(*a1 + 1936))(a1, v15);
  v11 = *a2;
  v14 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v10, v11, v13);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildMeshVaryingWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v11, v16);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx2.mesh.varying.write", 28, *(a1 + 144), *(a1 + 192), *(a1 + 192), v11);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = PointerCast;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v21, 3, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildMeshPrimattrWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v11, v16);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx2.mesh.primattr.write", 29, *(a1 + 144), *(a1 + 192), *(a1 + 192), v11);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = PointerCast;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v21, 3, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildMeshIndexWrite(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 184);
  v9 = llvm::PointerType::get();
  v15 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a4, v9, v14);
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx2.mesh.index.write", 26, *(a1 + 144), *(a1 + 192), v9);
  v19[0] = a3;
  v19[1] = PointerCast;
  v15 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v11 + 24), v11, v19, 2, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildWaitFence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx2.wait.fence", 20, *(a1 + 144), *(a1 + 192));
  v14[0] = a3;
  v10 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, v14, 1, v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildAllocateUVB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx2.allocate.uvb", 22, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v16[0] = a3;
  v16[1] = a4;
  v12 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v8 + 24), v8, v16, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildGetMeshPrimitivePointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 184);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildGetPayloadPointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 184);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildEnableAllThreads(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildWriteChildcount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx2.object.childcount.write", 33, *(a1 + 144), *(a1 + 200));
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v14[0] = a3;
  v10 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, v14, 1, v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildStoreChildcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 336);
  v9 = llvm::PointerType::get();
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx2.object.childcount.store", 33, *(a1 + 144), v8, v9);
  v18[0] = a4;
  v18[1] = a3;
  v14 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v10 + 24), v10, v18, 2, v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<128,31,4,128,500000,500000,true>>::getComputeMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCLLVMGen5TargetLowerer::buildIsFirstActiveThread(uint64_t a1, __int128 *a2, int a3)
{
  v17 = *a2;
  v18 = *(a2 + 2);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v17, a1 + 8);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = 2840;
  if (a3)
  {
    v6 = 2848;
  }

  if (*(a1 + v6))
  {
    v7 = strlen(*(a1 + v6));
  }

  v8 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v11 = *(a1 + 200);
  v12 = llvm::ConstantInt::get();
  v14[16] = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v10, v12, v14);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildReduce(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, llvm::Value *a5)
{
  v133 = *MEMORY[0x277D85DE8];
  *&v104 = a3;
  *(&v104 + 1) = a4;
  v101 = *a2;
  v102 = *(a2 + 2);
  if (v102)
  {
    llvm::MetadataTracking::track();
  }

  v103 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v101, a1 + 8);
  if (v102)
  {
    llvm::MetadataTracking::untrack();
  }

  if (llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1)
  {
    v95 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v96, (a1 + 8));
    v78 = *(a1 + 104);
    v97 = v78;
    v111 = v104;
    v108 = v95;
    v109 = v96;
    if (v96)
    {
      llvm::MetadataTracking::track();
      v78 = v97;
    }

    v110 = v78;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v108, a1 + 8);
    if (v109)
    {
      llvm::MetadataTracking::untrack();
    }

    v79 = llvm::StringRef::find();
    v80 = llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1;
    llvm::StringRef::find();
    llvm::StringRef::find();
    llvm::StringRef::find();
    if (v79 != -1 && !v80)
    {
      v105 = v95;
      v106 = v96;
      if (v96)
      {
        llvm::MetadataTracking::track();
        v81 = v97;
        v107 = v97;
        v112 = v105;
        v113 = v106;
        if (v106)
        {
          llvm::MetadataTracking::track();
          v81 = v107;
        }
      }

      else
      {
        v81 = v97;
        v107 = v97;
        v112 = v105;
        v113 = 0;
      }

      v114 = v81;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v112, a1 + 8);
      if (v113)
      {
        llvm::MetadataTracking::untrack();
      }

      v82 = *a5;
      if ((*(*a5 + 8) & 0xFE) == 0x12)
      {
        v83 = **(v82 + 16);
      }

      *v131 = 0u;
      v132 = 0u;
      AGCLLVMBuilder::unboxVector(a1, a5, v131);
      v84 = *(v82 + 8);
      if (*(a1 + 2856))
      {
        v85 = strlen(*(a1 + 2856));
      }

      v86 = *(a1 + 200);
      inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
      v130 = 257;
      v88 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, &v127);
      v89 = *(a1 + 200);
      v90 = llvm::ConstantInt::get();
      v126 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v88, v90, v125);
      v92 = *(a1 + 56);
      v91 = *(a1 + 64);
      *&v127 = "reduce.int.prod.merge";
      v130 = 259;
      llvm::BasicBlock::splitBasicBlock();
      v93 = *(a1 + 456);
      *&v127 = "reduce.int.prod.fast";
      v130 = 259;
      v94 = *(v92 + 56);
      operator new();
    }

    v127 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v128, (a1 + 8));
    v129 = *(a1 + 104);
    InsertElement = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v127, v111, *(&v111 + 1), a5);
    if (v128)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v96)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v98 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (a1 + 8));
    v8 = *(a1 + 104);
    v100 = v8;
    v9 = v104;
    v115 = v98;
    v116 = v99;
    if (v99)
    {
      llvm::MetadataTracking::track();
      v8 = v100;
    }

    v117 = v8;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v115, a1 + 8);
    if (v116)
    {
      llvm::MetadataTracking::untrack();
    }

    v10 = *a5;
    if ((*(*a5 + 8) & 0xFE) != 0x12 || **(v10 + 16) == *(a1 + 200))
    {
      v127 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v128, (a1 + 8));
      v129 = *(a1 + 104);
      InsertElement = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v127, v9, *(&v9 + 1), a5);
      if (v128)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v11 = *(v10 + 32);
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v10);
      if (ScalarSizeInBits == 8)
      {
        v14 = 200;
        if (v11 == 2)
        {
          v14 = 192;
        }

        v15 = *(a1 + v14);
        v16 = *(a1 + 184);
        v17 = llvm::FixedVectorType::get();
        if (v11 == 3)
        {
          a5 = AGCLLVMBuilder::extendVector(a1, a5, 4);
        }

        v118 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v119, (a1 + 8));
        v120 = *(a1 + 104);
        v130 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a5, v15, &v127);
        v19 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v118, v9, *(&v9 + 1), Cast);
        if (v119)
        {
          llvm::MetadataTracking::untrack();
        }

        v130 = 257;
        v20 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v19, v17, &v127);
        if (v11)
        {
          v21 = v20;
          for (i = 0; i != v11; ++i)
          {
            v130 = 257;
            v23 = *(a1 + 200);
            v24 = llvm::ConstantInt::get();
            Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v21, v24, &v127);
            v126 = 257;
            v26 = *(a1 + 200);
            v27 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, Element, v27, v125);
          }
        }
      }

      else if (v11 == 3 || ScalarSizeInBits != 16)
      {
        if (v11 == 3 && ScalarSizeInBits == 16)
        {
          v44 = AGCLLVMBuilder::extendVector(a1, a5, 4);
          v45 = *(a1 + 248);
          v130 = 257;
          v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v44, v45, &v127);
          v130 = 257;
          v47 = *(a1 + 200);
          v48 = llvm::ConstantInt::get();
          v49 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v46, v48, &v127);
          v122 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v123, (a1 + 8));
          v124 = *(a1 + 104);
          v50 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v122, v9, *(&v9 + 1), v49);
          if (v123)
          {
            llvm::MetadataTracking::untrack();
          }

          v130 = 257;
          v51 = *(a1 + 200);
          v52 = llvm::ConstantInt::get();
          v53 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v46, v52, &v127);
          v54 = *(a1 + 240);
          v126 = 257;
          v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v53, v54, v125);
          v121 = 257;
          v56 = *(a1 + 200);
          v57 = llvm::ConstantInt::get();
          v58 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v55, v57, &v118);
          v118 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v119, (a1 + 8));
          v120 = *(a1 + 104);
          v59 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v118, v9, *(&v9 + 1), v58);
          if (v119)
          {
            llvm::MetadataTracking::untrack();
          }

          v60 = *(a1 + 240);
          v130 = 257;
          v61 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v50, v60, &v127);
          v126 = 257;
          v62 = *(a1 + 200);
          v63 = llvm::ConstantInt::get();
          v64 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v61, v63, v125);
          v65 = *(a1 + 240);
          v130 = 257;
          v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v50, v65, &v127);
          v126 = 257;
          v67 = *(a1 + 200);
          v68 = llvm::ConstantInt::get();
          v69 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v66, v68, v125);
          v130 = 257;
          v70 = *(a1 + 200);
          v71 = llvm::ConstantInt::get();
          v72 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v64, v71, &v127);
          v130 = 257;
          v73 = *(a1 + 200);
          v74 = llvm::ConstantInt::get();
          v75 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v72, v69, v74, &v127);
          v130 = 257;
          v76 = *(a1 + 200);
          v77 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v75, v59, v77, &v127);
        }
      }

      else
      {
        v30 = 248;
        if (v11 == 2)
        {
          v30 = 200;
        }

        v31 = *(a1 + v30);
        v32 = *(a1 + 192);
        v33 = llvm::FixedVectorType::get();
        v118 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v119, (a1 + 8));
        v120 = *(a1 + 104);
        v130 = 257;
        v34 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a5, v31, &v127);
        v35 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v118, v9, *(&v9 + 1), v34);
        if (v119)
        {
          llvm::MetadataTracking::untrack();
        }

        v130 = 257;
        v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v35, v33, &v127);
        if (v11)
        {
          v37 = v36;
          for (j = 0; j != v11; ++j)
          {
            v130 = 257;
            v39 = *(a1 + 200);
            v40 = llvm::ConstantInt::get();
            v41 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v37, v40, &v127);
            v126 = 257;
            v42 = *(a1 + 200);
            v43 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v41, v43, v125);
          }
        }
      }
    }

    if (v99)
    {
LABEL_28:
      llvm::MetadataTracking::untrack();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildReduceCore(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, llvm::Value *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v53 = a4;
  v49 = *a2;
  v50 = *(a2 + 2);
  if (v50)
  {
    llvm::MetadataTracking::track();
  }

  v51 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v49, (a1 + 1));
  if (v50)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a5;
  v9 = *a5;
  if ((*(*a5 + 8) & 0xFE) == 0x12)
  {
    v9 = **(v8 + 16);
  }

  v10 = llvm::StringRef::find();
  llvm::StringRef::find();
  v42 = llvm::StringRef::find();
  v41 = llvm::StringRef::find();
  v38 = llvm::StringRef::find();
  v11 = llvm::StringRef::find() != -1 && (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1);
  __p = 0;
  v47 = 0;
  v48 = 0;
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() == -1)
    {
      if (llvm::StringRef::find() == -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          if (llvm::StringRef::find() == -1)
          {
            if (llvm::StringRef::find() == -1)
            {
              if (llvm::StringRef::find() == -1)
              {
                goto LABEL_27;
              }

              v12 = "Xor";
            }

            else
            {
              v12 = "Or";
            }
          }

          else
          {
            v12 = "And";
          }
        }

        else
        {
          v12 = "Min";
        }
      }

      else
      {
        v12 = "Max";
      }
    }

    else
    {
      v12 = "Add";
    }
  }

  else
  {
    v12 = "Mul";
  }

  MEMORY[0x20F331AA0](&__p, v12);
LABEL_27:
  v13 = v9;
  if (*(v9 + 8) == 13)
  {
    v13 = a1[25];
  }

  v14 = 352;
  if (v10 == -1)
  {
    v14 = 353;
  }

  std::string::basic_string[abi:nn200100]<0>(&v45, a1[v14]);
  if (v11)
  {
    v15 = "u.";
  }

  else if (v13 == a1[21])
  {
    v15 = "f.";
  }

  else if (v13 == a1[19])
  {
    v15 = "f16.";
  }

  else
  {
    v15 = "i.";
  }

  std::string::append(&v45, v15);
  if (v48 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v48 >= 0)
  {
    v17 = HIBYTE(v48);
  }

  else
  {
    v17 = v47;
  }

  std::string::append(&v45, p_p, v17);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v45;
  }

  else
  {
    v18 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  v20 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v18, size, v13, a1[24], v13);
  *v56 = 0u;
  v57 = 0u;
  v21 = AGCLLVMBuilder::unboxVector(a1, a5, v56);
  v40 = *(v8 + 8) & 0xFE;
  if (v40 == 18)
  {
    llvm::FixedVectorType::get();
    v22 = llvm::UndefValue::get();
  }

  else
  {
    v22 = 0;
  }

  v23 = a1[24];
  v39 = llvm::ConstantInt::get();
  if (v21)
  {
    v24 = 0;
    v25 = v21;
    do
    {
      if (*(v9 + 8) == 13)
      {
        v26 = v56[v24];
        v27 = a1[25];
        v44 = 257;
        if (v38 == -1)
        {
          v28 = 39;
        }

        else
        {
          v28 = 40;
        }

        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), v28, v26, v27, v43);
        v56[v24] = Cast;
      }

      else
      {
        Cast = v56[v24];
      }

      v54[0] = v39;
      v54[1] = Cast;
      v44 = 257;
      FMul = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v20 + 24), v20, v54, 2, v43);
      if (*(v9 + 8) == 13)
      {
        v44 = 257;
        FMul = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, FMul, v9, v43);
      }

      if (v42 != -1)
      {
        if (*(v9 + 8) > 6u)
        {
          v44 = 257;
          v32 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Cast, v9, v43);
          v55 = 257;
          Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), FMul, v32, v54);
        }

        else
        {
          v44 = 257;
          Add = llvm::IRBuilderBase::CreateFAdd((a1 + 1), FMul, Cast, v43);
        }

        FMul = Add;
      }

      if (v41 != -1)
      {
        v33 = v56[v24];
        v44 = 257;
        FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), FMul, v33, v43);
      }

      if (v40 == 18)
      {
        v44 = 257;
        v34 = a1[25];
        v35 = llvm::ConstantInt::get();
        FMul = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v22, FMul, v35, v43);
      }

      ++v24;
      v22 = FMul;
    }

    while (v25 != v24);
  }

  else
  {
    FMul = v22;
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  v36 = *MEMORY[0x277D85DE8];
  return FMul;
}