uint64_t AGCLLVMAirBuiltinsGen2::buildArctan(AGCLLVMAirBuiltinsGen2 *this, llvm::Value *a2)
{
  v4 = *(this + 21);
  v5 = llvm::ConstantFP::get();
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::IRBuilderBase::CreateFCmpHelper();
  v21 = 257;
  llvm::IRBuilderBase::CreateFDiv(this + 8, v5, a2, v20);
  Select = llvm::IRBuilderBase::CreateSelect();
  v21 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, Select, Select, v20);
  v8 = *(this + 21);
  v9 = llvm::ConstantFP::get();
  v10 = 4u;
  do
  {
    v11 = *(&AGCLLVMAirBuiltinsGen2::buildArctan(llvm::Value *)::coefficients + v10);
    v12 = *(this + 21);
    v13 = llvm::ConstantFP::get();
    v9 = AGCLLVMBuilder::buildFma(this, v9, FMul, v13);
    v10 += 4;
  }

  while (v10 != 32);
  v21 = 257;
  v14 = llvm::IRBuilderBase::CreateFMul(this + 8, Select, v9, v20);
  v15 = *(this + 21);
  llvm::ConstantFP::get();
  v21 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v16 = *(this + 21);
  llvm::ConstantFP::get();
  v17 = *(this + 21);
  llvm::ConstantFP::get();
  v21 = 257;
  v18 = llvm::IRBuilderBase::CreateSelect();
  v21 = 257;
  llvm::IRBuilderBase::CreateFSub(this + 8, v18, v14, v20);
  return llvm::IRBuilderBase::CreateSelect();
}

void AGCLLVMAirBuiltinsGen2::~AGCLLVMAirBuiltinsGen2(AGCLLVMAirBuiltinsGen2 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdGroupIndexInThreadgroup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = *(a1 + 944);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  if (a4 == 3)
  {
    v6 = bswap32(*a3 | (*(a3 + 2) << 16));
    v7 = v6 >= 0x69333200;
    v8 = v6 > 0x69333200;
    v9 = !v7;
    v10 = v8 == v9;
    v11 = 192;
    if (v10)
    {
      v11 = 200;
    }
  }

  else
  {
    v11 = 192;
  }

  v12 = *(a1 + v11);
  v13 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = (*(*v13 + 1632))(v13, &v16, v12);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v14;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildThreadIndexInSimdGroup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = *(a1 + 944);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  if (a4 == 3)
  {
    v6 = bswap32(*a3 | (*(a3 + 2) << 16));
    v7 = v6 >= 0x69333200;
    v8 = v6 > 0x69333200;
    v9 = !v7;
    v10 = v8 == v9;
    v11 = 192;
    if (v10)
    {
      v11 = 200;
    }
  }

  else
  {
    v11 = 192;
  }

  v12 = *(a1 + v11);
  v13 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = (*(*v13 + 1624))(v13, &v16, v12);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v14;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildThreadsPerSimdgroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  if (a4 == 3 && (*a3 == 13161 ? (v5 = *(a3 + 2) == 50) : (v5 = 0), v5))
  {
    v6 = 200;
  }

  else
  {
    v6 = 192;
  }

  v7 = *(a1 + v6);
  return llvm::ConstantInt::get();
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadElement(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = *(a1 + 944);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  if (a4 == 3)
  {
    v6 = bswap32(*a3 | (*(a3 + 2) << 16));
    v7 = v6 >= 0x69333200;
    v8 = v6 > 0x69333200;
    v9 = !v7;
    v10 = v8 == v9;
    v11 = 192;
    if (v10)
    {
      v11 = 200;
    }
  }

  else
  {
    v11 = 192;
  }

  v12 = *(a1 + v11);
  v13 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = AGCLLVMGen3TargetLowerer::buildQuadElement(v13, &v16, v12);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v14;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildSimdBarrier(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a1[118];
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = a1[58];
  v6 = *(v5 + 1048);
  if (v6)
  {
    v7 = strlen(*(v5 + 1048));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, a1[18], a1[24], a1[24]);
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = a1[24];
    v17 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v9, v10, v16);
  }

  else
  {
    v12 = a1[24];
    Cast = llvm::ConstantInt::get();
  }

  v13 = Cast;
  v18[0] = AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(a1, *a2);
  v18[1] = v13;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v8 + 24), v8, v18, 2, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2)
{
  v4 = *(this + 25);
  v5 = llvm::ConstantInt::get();
  v18 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v17);
  v7 = *(this + 25);
  v8 = llvm::ConstantInt::get();
  v16[16] = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v16);
  v10 = *(this + 25);
  v11 = llvm::ConstantInt::get();
  v18 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v11, v17);
  v18 = 257;
  v13 = llvm::IRBuilderBase::CreateOr((this + 8), v12, LShr, v17);
  v14 = *(this + 24);
  v18 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, v13, v14, v17);
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildWGBarrier(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a1[118];
  if (v4)
  {
    *(v4 + *(*v4 - 24) + 2224) = 1;
  }

  v5 = a1[58];
  v6 = *(v5 + 1032);
  if (v6)
  {
    v7 = strlen(*(v5 + 1032));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, a1[18], a1[24], a1[24]);
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = a1[24];
    v17 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v9, v10, v16);
  }

  else
  {
    v12 = a1[24];
    Cast = llvm::ConstantInt::get();
  }

  v13 = Cast;
  v18[0] = AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(a1, *a2);
  v18[1] = v13;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v8 + 24), v8, v18, 2, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdBroadcastFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v6 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v7 = *(a1 + 104);
  v14 = v7;
  v24 = v12;
  v25 = v13;
  if (v13)
  {
    llvm::MetadataTracking::track();
    v7 = v14;
  }

  v26 = v7;
  v8 = (*(*v6 + 1624))(v6, &v24, *(v6 + 192));
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v21 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v6 + 8));
  v23 = *(v6 + 104);
  v9 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(v6, &v21, v8);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (v6 + 8));
  v20 = *(v6 + 104);
  ActiveThreadIndex = AGCLLVMGen3TargetLowerer::buildEmulatedFirstActiveThreadIndex(v6, &v18, v8, v9);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = v12;
  v16 = v13;
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v17 = v14;
  AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v6, &v15, v5, ActiveThreadIndex, 0, *(v6 + 968));
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdIsFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v6 = *(a1 + 104);
  v13 = v6;
  v22 = v11;
  v23 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v6 = v13;
  }

  v24 = v6;
  v7 = (*(*v5 + 1624))(v5, &v22, *(v5 + 192));
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v19 = *(v5 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (v5 + 8));
  v21 = *(v5 + 104);
  v8 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(v5, &v19, v7);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = *(v5 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (v5 + 8));
  v18 = *(v5 + 104);
  ActiveThreadIndex = AGCLLVMGen3TargetLowerer::buildEmulatedFirstActiveThreadIndex(v5, &v16, v7, v8);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = 257;
  llvm::IRBuilderBase::CreateICmp((v5 + 8), 32, v7, ActiveThreadIndex, v14);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdReduce(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 9))
  {
    v5 = 0;
  }

  v6 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  Name = llvm::Value::getName(v5);
  v91[0] = 0;
  v91[1] = 0;
  v89 = 0;
  v90 = 0;
  Prefix = AGCLLVMBuilder::findPrefix(Name, v8, v91, &v89, "air.", 4uLL);
  AGCLLVMAirBuiltinsGen3::initializeReduceMap(Prefix);
  Key = llvm::StringMapImpl::FindKey();
  v11 = Key;
  if (Key == -1)
  {
    v11 = dword_27C8D9780;
  }

  v12 = *(AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map + 8 * v11);
  v13 = v90 >= 2 && *v89 == 11891;
  v14 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v86 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (a1 + 8));
  v15 = *(a1 + 104);
  v88 = v15;
  v16 = *(v12 + 8);
  if (*(v12 + 12) == 1)
  {
    v92 = v86;
    v93 = v87;
    if (v87)
    {
      llvm::MetadataTracking::track();
      v15 = v88;
      v94 = v88;
      v118 = v92;
      v119 = v93;
      if (v93)
      {
        llvm::MetadataTracking::track();
        v15 = v94;
      }
    }

    else
    {
      v94 = v15;
      v118 = v92;
      v119 = 0;
    }

    v120 = v15;
    AGCLLVMTargetLowerer::SetIP(v14, &v118);
    if (v119)
    {
      llvm::MetadataTracking::untrack();
    }

    v17 = *v6;
    if ((*(*v6 + 2) & 0xFE) != 0x12 || **(v17 + 2) == *(v14 + 200))
    {
      v115 = *(v14 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v116, (v14 + 8));
      v117 = *(v14 + 104);
      AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v115, v6, v16, v13);
      if (v116)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v18 = *(v17 + 8);
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v17);
      if (ScalarSizeInBits == 8)
      {
        v21 = 200;
        if (v18 == 2)
        {
          v21 = 192;
        }

        v22 = *(v14 + v21);
        v23 = *(v14 + 184);
        v24 = llvm::FixedVectorType::get();
        if (v18 == 3)
        {
          v6 = AGCLLVMBuilder::extendVector(v14, v6, 4);
        }

        v112 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v113, (v14 + 8));
        v114 = *(v14 + 104);
        v111 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v6, v22, &v108);
        v26 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v112, Cast, v16, v13);
        if (v113)
        {
          llvm::MetadataTracking::untrack();
        }

        v111 = 257;
        v27 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v26, v24, &v108);
        if (v18)
        {
          v28 = v27;
          for (i = 0; i != v18; ++i)
          {
            v111 = 257;
            v30 = *(v14 + 200);
            v31 = llvm::ConstantInt::get();
            Element = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v28, v31, &v108);
            v107 = 257;
            v33 = *(v14 + 200);
            v34 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), InsertElement, Element, v34, v106);
          }
        }
      }

      else if (v18 != 3 && ScalarSizeInBits == 16)
      {
        v72 = 248;
        if (v18 == 2)
        {
          v72 = 200;
        }

        v73 = *(v14 + v72);
        v74 = *(v14 + 192);
        v75 = llvm::FixedVectorType::get();
        v103 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v104, (v14 + 8));
        v105 = *(v14 + 104);
        v111 = 257;
        v76 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v6, v73, &v108);
        v77 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v103, v76, v16, v13);
        if (v104)
        {
          llvm::MetadataTracking::untrack();
        }

        v111 = 257;
        v78 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v77, v75, &v108);
        if (v18)
        {
          v79 = v78;
          for (j = 0; j != v18; ++j)
          {
            v111 = 257;
            v81 = *(v14 + 200);
            v82 = llvm::ConstantInt::get();
            v83 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v79, v82, &v108);
            v107 = 257;
            v84 = *(v14 + 200);
            v85 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), InsertElement, v83, v85, v106);
          }
        }
      }

      else if (v18 == 3 && ScalarSizeInBits == 16)
      {
        v38 = AGCLLVMBuilder::extendVector(v14, v6, 4);
        v39 = *(v14 + 248);
        v111 = 257;
        v40 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v38, v39, &v108);
        v111 = 257;
        v41 = *(v14 + 200);
        v42 = llvm::ConstantInt::get();
        v43 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v40, v42, &v108);
        v100 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v101, (v14 + 8));
        v102 = *(v14 + 104);
        v44 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v100, v43, v16, v13);
        if (v101)
        {
          llvm::MetadataTracking::untrack();
        }

        v111 = 257;
        v45 = *(v14 + 200);
        v46 = llvm::ConstantInt::get();
        v47 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v40, v46, &v108);
        v48 = *(v14 + 240);
        v107 = 257;
        v49 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v47, v48, v106);
        v99 = 257;
        v50 = *(v14 + 200);
        v51 = llvm::ConstantInt::get();
        v52 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v49, v51, v98);
        v95 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v96, (v14 + 8));
        v97 = *(v14 + 104);
        v53 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v95, v52, v16, v13);
        if (v96)
        {
          llvm::MetadataTracking::untrack();
        }

        v54 = *(v14 + 240);
        v111 = 257;
        v55 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v44, v54, &v108);
        v107 = 257;
        v56 = *(v14 + 200);
        v57 = llvm::ConstantInt::get();
        v58 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v55, v57, v106);
        v59 = *(v14 + 240);
        v111 = 257;
        v60 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v44, v59, &v108);
        v107 = 257;
        v61 = *(v14 + 200);
        v62 = llvm::ConstantInt::get();
        v63 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v60, v62, v106);
        v111 = 257;
        v64 = *(v14 + 200);
        v65 = llvm::ConstantInt::get();
        v66 = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), InsertElement, v58, v65, &v108);
        v111 = 257;
        v67 = *(v14 + 200);
        v68 = llvm::ConstantInt::get();
        v69 = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), v66, v63, v68, &v108);
        v111 = 257;
        v70 = *(v14 + 200);
        v71 = llvm::ConstantInt::get();
        llvm::IRBuilderBase::CreateInsertElement((v14 + 8), v69, v53, v71, &v108);
      }
    }

    if (v93)
    {
LABEL_39:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v108 = v86;
    v109 = v87;
    if (v87)
    {
      llvm::MetadataTracking::track();
      v15 = v88;
    }

    v110 = v15;
    AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v108, v6, v16, v13);
    if (v109)
    {
      goto LABEL_39;
    }
  }

  if (v87)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

void AGCLLVMAirBuiltinsGen3::initializeReduceMap(AGCLLVMAirBuiltinsGen3 *this)
{
  {
    AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map = 0;
    *&dword_27C8D9780 = 0;
    qword_27C8D9788 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::$_0 &&>>);
  }
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::$_0 &&>>()
{
  v0 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_and", 8uLL);
  *(v0 + 8) = 0;
  *(v0 + 12) = 1;
  v1 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_or", 7uLL);
  *(v1 + 8) = 1;
  *(v1 + 12) = 1;
  v2 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_xor", 8uLL);
  *(v2 + 8) = 2;
  *(v2 + 12) = 1;
  v3 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_product", 0xCuLL);
  *(v3 + 8) = 3;
  *(v3 + 12) = 0;
  v4 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_sum", 8uLL);
  *(v4 + 8) = 4;
  *(v4 + 12) = 0;
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_max", 8uLL);
  *(v5 + 8) = 5;
  *(v5 + 12) = 0;
  v6 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_min", 8uLL);
  *(v6 + 8) = 6;
  *(v6 + 12) = 0;
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_inclusive_product", 0x1DuLL);
  *(v7 + 8) = 7;
  *(v7 + 12) = 0;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_inclusive_sum", 0x19uLL);
  *(v8 + 8) = 8;
  *(v8 + 12) = 0;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_exclusive_product", 0x1DuLL);
  *(v9 + 8) = 9;
  *(v9 + 12) = 0;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_exclusive_sum", 0x19uLL);
  *(v10 + 8) = 10;
  *(v10 + 12) = 0;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_all", 8uLL);
  *(v11 + 8) = 0;
  *(v11 + 12) = 0;
  v12 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_any", 8uLL);
  *(v12 + 8) = 1;
  *(v12 + 12) = 0;
  v13 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_and", 8uLL);
  *(v13 + 8) = 0;
  *(v13 + 12) = 1;
  v14 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_or", 7uLL);
  *(v14 + 8) = 1;
  *(v14 + 12) = 1;
  v15 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_xor", 8uLL);
  *(v15 + 8) = 2;
  *(v15 + 12) = 1;
  v16 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_product", 0xCuLL);
  *(v16 + 8) = 3;
  *(v16 + 12) = 0;
  v17 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_sum", 8uLL);
  *(v17 + 8) = 4;
  *(v17 + 12) = 0;
  v18 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_max", 8uLL);
  *(v18 + 8) = 5;
  *(v18 + 12) = 0;
  v19 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_min", 8uLL);
  *(v19 + 8) = 6;
  *(v19 + 12) = 0;
  v20 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_inclusive_product", 0x1DuLL);
  *(v20 + 8) = 7;
  *(v20 + 12) = 0;
  v21 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_inclusive_sum", 0x19uLL);
  *(v21 + 8) = 8;
  *(v21 + 12) = 0;
  v22 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_exclusive_product", 0x1DuLL);
  *(v22 + 8) = 9;
  *(v22 + 12) = 0;
  v23 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_exclusive_sum", 0x19uLL);
  *(v23 + 8) = 10;
  *(v23 + 12) = 0;
  v24 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_all", 8uLL);
  *(v24 + 8) = 0;
  *(v24 + 12) = 0;
  result = llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_any", 8uLL);
  v26 = *result;
  *(v26 + 8) = 1;
  *(v26 + 12) = 0;
  return result;
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27C8D9788) = qword_27C8D9788 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  *i = v9;
  ++dword_27C8D9784;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadBroadcastFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v6 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v7 = *(a1 + 104);
  v13 = v7;
  v20 = v11;
  v21 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v7 = v13;
  }

  v22 = v7;
  v8 = AGCLLVMGen3TargetLowerer::buildQuadElement(v6, &v20, *(v6 + 192));
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = v11;
  v18 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v19 = v13;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(v6, &v17, v8, 6u, 0);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v6 + 8));
  v16 = *(v6 + 104);
  AGCLLVMGen3TargetLowerer::buildQuadBroadcast(v6, &v14, v5, v9);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadIsFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v6 = *(a1 + 104);
  v12 = v6;
  v18 = v10;
  v19 = v11;
  if (v11)
  {
    llvm::MetadataTracking::track();
    v6 = v12;
  }

  v20 = v6;
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v18, *(v5 + 192));
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = v10;
  v16 = v11;
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v17 = v12;
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(v5, &v15, v7, 6u, 0);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = 257;
  llvm::IRBuilderBase::CreateICmp((v5 + 8), 32, v7, v8, v13);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadReduce(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 9))
  {
    v5 = 0;
  }

  v6 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  Name = llvm::Value::getName(v5);
  v23[0] = 0;
  v23[1] = 0;
  v21 = 0;
  v22 = 0;
  Prefix = AGCLLVMBuilder::findPrefix(Name, v8, v23, &v21, "air.", 4uLL);
  AGCLLVMAirBuiltinsGen3::initializeReduceMap(Prefix);
  Key = llvm::StringMapImpl::FindKey();
  v11 = Key;
  if (Key == -1)
  {
    v11 = dword_27C8D9780;
  }

  v12 = *(AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map + 8 * v11);
  v13 = v22 >= 2 && *v21 == 11891;
  v14 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v18 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
  v15 = *(a1 + 104);
  v20 = v15;
  v16 = *(v12 + 8);
  v24 = v18;
  v25 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v15 = v20;
  }

  v26 = v15;
  AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(v14, &v24, v6, v16, v13);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadActiveThreadsMask(AGCLLVMAirBuiltinsGen3 *this)
{
  v2 = *(this + 118);
  if (v2)
  {
    *(v2 + 16) = 1;
  }

  v3 = (*(**(this + 58) + 688))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v4 = *(this + 26);
  v10 = v4;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v4 = v10;
  }

  v13 = v4;
  v5 = *(v3 + 176);
  llvm::ConstantInt::get();
  v6 = AGCLLVMGen3TargetLowerer::buildQuadBallot(v3, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdActiveThreadsMask(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 944);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  v8 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v19 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
  v9 = *(a1 + 104);
  v21 = v9;
  v15 = v19;
  v16 = v20;
  if (v20)
  {
    llvm::MetadataTracking::track();
    v9 = v21;
  }

  v17 = v9;
  v10 = *(v8 + 176);
  llvm::ConstantInt::get();
  v11 = AGCLLVMGen3TargetLowerer::buildSimdBallot(v8, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v13 = *(a1 + 208);
    v18 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v13, &v15);
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdBallot(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 944);
  if (v8)
  {
    *(v8 + 17) = 1;
  }

  v9 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v17 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
  v19 = *(a1 + 104);
  v10 = *a2;
  v11 = AGCLLVMGen3TargetLowerer::buildSimdBallot(v9, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v13 = *(a1 + 208);
    v16 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v13, v15);
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleRotateDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 5, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleRotateUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 4, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleXor(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 3, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1664))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1656))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffle(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 0, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdBroadcast(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 0, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadBallot(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2)
{
  v3 = *(this + 118);
  if (v3)
  {
    *(v3 + 16) = 1;
  }

  v4 = (*(**(this + 58) + 688))(*(this + 58), a2);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMGen3TargetLowerer::buildQuadBallot(v4, &v7);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleRotateDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 5, 4);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleRotateUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 4, 4);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleXor(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleXor(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1648))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1640))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffle(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffle(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadBroadcast(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadBroadcast(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

std::string *AGCLLVMAirBuiltinsGen3::buildAtomic(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (a4 == 5 && (*a3 == 1668179302 ? (v6 = *(a3 + 4) == 101) : (v6 = 0), v6))
  {
    v9 = a1[58];
    v10 = *(v9 + 1056);
    if (v10)
    {
      v11 = strlen(*(v9 + 1056));
    }

    else
    {
      v11 = 0;
    }

    v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v10, v11, a1[18], a1[24], a1[24], a1[24]);
    v21[0] = AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(a1, *a2);
    v13 = *(a2 + 8);
    v14 = a1[24];
    v20 = 257;
    v21[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v13, v14, v19);
    v15 = *(a2 + 16);
    v16 = a1[24];
    v18[16] = 257;
    v21[2] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v15, v16, v18);
    v20 = 257;
    result = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v12 + 24), v12, v21, 3, v19);
    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    return AGCLLVMAirBuiltins::buildAtomic(a1, a2);
  }

  return result;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildUnpackSRGB(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 5)
  {
    v6 = bswap64(*(a3 + a4 - 5) | (*(a3 + a4 - 1) << 32));
    v7 = v6 >= 0x7634663136000000;
    v8 = v6 > 0x7634663136000000;
    v9 = !v7;
    v10 = v8 == v9;
    v5 = 312;
    if (v10)
    {
      v5 = 296;
    }
  }

  else
  {
    v5 = 312;
  }

  v11 = *(a1 + v5);
  v12 = *(a1 + 320);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v12, v20);
  v14 = *(a1 + 464);
  v17 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
  v19 = *(a1 + 104);
  v15 = (*(*v14 + 152))(v14, &v17, Cast, 0, v11);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildPackSRGB(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v5 = (*(*v4 + 144))(v4, &v10, a2, 0, *(this + 40));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(this + 25);
  v9 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 49, v5, v6, v8);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildUnpackNorm(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 464);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  v7 = (*(*v6 + 96))(v6, &v9, a2, a3[1], a3[3], *a3);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildPackNorm(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 464);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  v7 = (*(*v6 + 88))(v6, &v9, a2, a3[1], a3[3], a3[2]);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

void AGCLLVMAirBuiltinsGen3::~AGCLLVMAirBuiltinsGen3(AGCLLVMAirBuiltinsGen3 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdMatrixThreadElementsInit(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 12) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 9))
  {
    v5 = 0;
  }

  Name = llvm::Value::getName(v5);
  v17 = v6;
  v7 = llvm::StringRef::find() != -1;
  v8 = *a2;
  v9 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v10 = (*(*a1 + 528))(a1, 0, "i32", 3);
  v11 = (*(**(a1 + 464) + 696))();
  v13 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (a1 + 8));
  v15 = *(a1 + 104);
  (*(*v11 + 1888))(v11, &v13, v8, v9, v10, v7);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdMatrixMultiplyAccumulate(uint64_t a1, llvm::Instruction *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 12) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *a2;
  v6 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  ShuffleVector = *v6;
  v8 = *(v6 + 4);
  v9 = *(v6 + 8);
  v10 = *(a1 + 464);
  if (v10[1947] == 1)
  {
    (*(*v10 + 760))(&v71);
    v68 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v69, (a1 + 8));
    v70 = *(a1 + 104);
    if (v71 != v72)
    {
      v11 = *(a1 + 200);
      v73 = llvm::ConstantInt::get();
      v12 = *(a1 + 200);
      v74 = llvm::ConstantInt::get();
      v13 = llvm::ConstantVector::get();
      v67 = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), ShuffleVector, ShuffleVector, v13, v66);
      v14 = *(a1 + 200);
      v73 = llvm::ConstantInt::get();
      v15 = *(a1 + 200);
      v74 = llvm::ConstantInt::get();
      v16 = llvm::ConstantVector::get();
      v67 = 257;
      v8 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v8, v8, v16, v66);
      v17 = *(a1 + 200);
      v73 = llvm::ConstantInt::get();
      v18 = *(a1 + 200);
      v74 = llvm::ConstantInt::get();
      v19 = llvm::ConstantVector::get();
      v67 = 257;
      v20 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v9, v9, v19, v66);
      if ((v72 - v71) <= 0x10)
      {
        goto LABEL_61;
      }

      v9 = v20;
      if (llvm::StringRef::find() != -1)
      {
        v21 = *(a1 + 464);
        v63 = v68;
        v64 = v69;
        if (v69)
        {
          llvm::MetadataTracking::track();
        }

        v65 = v70;
        if ((v72 - v71) <= 0x10)
        {
          goto LABEL_61;
        }

        llvm::StringRef::str(v61, (v71 + 16));
        std::string::basic_string[abi:nn200100]<0>(__p, "bf16");
        ShuffleVector = (*(*v21 + 776))(v21, &v63, ShuffleVector, v61, __p, 0);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (v64)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if ((v72 - v71) <= 0x20)
      {
        goto LABEL_61;
      }

      if (llvm::StringRef::find() != -1)
      {
        v22 = *(a1 + 464);
        v56 = v68;
        v57 = v69;
        if (v69)
        {
          llvm::MetadataTracking::track();
        }

        v58 = v70;
        if ((v72 - v71) <= 0x20)
        {
          goto LABEL_61;
        }

        llvm::StringRef::str(v54, (v71 + 32));
        std::string::basic_string[abi:nn200100]<0>(v52, "bf16");
        v8 = (*(*v22 + 776))(v22, &v56, v8, v54, v52, 0);
        if (v53 < 0)
        {
          operator delete(v52[0]);
        }

        if (v55 < 0)
        {
          operator delete(v54[0]);
        }

        if (v57)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if ((v72 - v71) <= 0x30)
      {
        goto LABEL_61;
      }

      if (llvm::StringRef::find() != -1)
      {
        v23 = *(a1 + 464);
        v49 = v68;
        v50 = v69;
        if (v69)
        {
          llvm::MetadataTracking::track();
        }

        v51 = v70;
        if ((v72 - v71) <= 0x30)
        {
          goto LABEL_61;
        }

        llvm::StringRef::str(v47, (v71 + 48));
        std::string::basic_string[abi:nn200100]<0>(v45, "f32");
        v9 = (*(*v23 + 776))(v23, &v49, v9, v47, v45, 0);
        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (v48 < 0)
        {
          operator delete(v47[0]);
        }

        if (v50)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if (v72 == v71)
      {
        goto LABEL_61;
      }

      if (llvm::StringRef::find() != -1)
      {
        v24 = *(v5 + 32);
        v25 = *(a1 + 168);
        v5 = llvm::FixedVectorType::get();
      }
    }

    v26 = (*(**(a1 + 464) + 696))(*(a1 + 464));
    v42 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
    v44 = *(a1 + 104);
    v27 = (*(*v26 + 1880))(v26, &v42, v5, ShuffleVector, v8, v9);
    if (v43)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v71 == v72 || llvm::StringRef::find() == -1)
    {
      goto LABEL_54;
    }

    v28 = *(a1 + 464);
    v39 = v68;
    v40 = v69;
    if (v69)
    {
      llvm::MetadataTracking::track();
    }

    v41 = v70;
    std::string::basic_string[abi:nn200100]<0>(v37, "f32");
    if (v72 != v71)
    {
      llvm::StringRef::str(v35, v71);
      (*(*v28 + 776))(v28, &v39, v27, v37, v35, 1);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (v40)
      {
        llvm::MetadataTracking::untrack();
      }

LABEL_54:
      if (v69)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      goto LABEL_60;
    }

LABEL_61:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v29 = (*(*v10 + 696))(v10);
  v32 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (a1 + 8));
  v34 = *(a1 + 104);
  (*(*v29 + 1880))(v29, &v32, v5, ShuffleVector, v8, v9);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

LABEL_60:
  llvm::Value::replaceAllUsesWith();
  result = llvm::Instruction::eraseFromParent(a2);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildCoordinateDewarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  v9 = (*(*v8 + 1752))(v8, &v11, a2, a3, a4);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildCoordinateWarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  v9 = (*(*v8 + 1744))(v8, &v11, a2, a3, a4);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltins::declareDebugTraceBufferTLSGlobal(AGCLLVMAirBuiltins *this, const char *__s)
{
  v4 = *(this + 54);
  if (__s)
  {
    strlen(__s);
  }

  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v6 = *(this + 25);
    v7 = 1;
    GlobalVariable = llvm::User::operator new(0x58);
    v8 = *(this + 54);
    HIBYTE(v11) = 1;
    if (*__s)
    {
      v10 = __s;
      v7 = 3;
    }

    LOBYTE(v11) = v7;
    llvm::GlobalVariable::GlobalVariable();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFE3FF | 0x400;
  }

  v11 = 257;
  return AGCLLVMBuilder::CreateLoad(this, GlobalVariable, &v10);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildGetThreadPositionInGrid(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v3 = (*(**(this + 58) + 696))(*(this + 58), a2);
  v28 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (this + 8));
  v30 = *(this + 26);
  v4 = AGCLLVMGen3TargetLowerer::buildGlobalID(v3, &v28, *(this + 25), 0);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v25 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (this + 8));
  v27 = *(this + 26);
  v6 = AGCLLVMGen3TargetLowerer::buildGlobalID(v5, &v25, *(this + 25), 1);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v22 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (this + 8));
  v24 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildGlobalID(v7, &v22, *(this + 25), 2);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *(this + 25);
  llvm::FixedVectorType::get();
  v10 = llvm::UndefValue::get();
  v21 = 257;
  v11 = *(this + 25);
  v12 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v10, v4, v12, v20);
  v21 = 257;
  v14 = *(this + 25);
  v15 = llvm::ConstantInt::get();
  v16 = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v6, v15, v20);
  v21 = 257;
  v17 = *(this + 25);
  v18 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((this + 8), v16, v8, v18, v20);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadVoteAny(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = (*(**(this + 58) + 696))(*(this + 58));
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = (*(*v4 + 1872))(v4, &v7, a2, 1);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadVoteAll(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = (*(**(this + 58) + 696))(*(this + 58));
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = (*(*v4 + 1864))(v4, &v7, a2, 1);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdVoteAny(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 2 && (*(a3 + a4 - 3) == 13929 ? (v5 = *(a3 + a4 - 1) == 52) : (v5 = 0), v5))
  {
    v10 = *a2;
    v11 = *(a1 + 200);
    v16 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, v11, v15);
  }

  else
  {
    Cast = *a2;
  }

  v7 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v8 = (*(*v7 + 1872))(v7, &v12, Cast, 0);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdVoteAll(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 2 && (*(a3 + a4 - 3) == 13929 ? (v5 = *(a3 + a4 - 1) == 52) : (v5 = 0), v5))
  {
    v10 = *a2;
    v11 = *(a1 + 200);
    v16 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, v11, v15);
  }

  else
  {
    Cast = *a2;
  }

  v7 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v8 = (*(*v7 + 1864))(v7, &v12, Cast, 0);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadAny(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1856))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadAll(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1848))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdAny(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1840))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdAll(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1832))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadActiveThreadsMask(AGCLLVMAirBuiltinsGen4 *this)
{
  v2 = *(this + 118);
  if (v2)
  {
    *(v2 + 16) = 1;
  }

  v3 = (*(**(this + 58) + 696))(*(this + 58));
  v6 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v7, (this + 8));
  v8 = *(this + 26);
  v4 = (*(*v3 + 1824))(v3, &v6);
  if (v7)
  {
    llvm::MetadataTracking::untrack();
  }

  return v4;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdActiveThreadsMask(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 944);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  v8 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  v9 = (*(*v8 + 1816))(v8, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v11 = *(a1 + 208);
    v14 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v11, v13);
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdBallot(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 944);
  if (v8)
  {
    *(v8 + 17) = 1;
  }

  v9 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v10 = (*(*v9 + 1808))(v9, &v16, *a2);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v12 = *(a1 + 208);
    v15 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v10, v12, v14);
  }

  return v10;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateDown(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = *a3;
  v8 = *(*(this + 58) + 968);
  v9 = llvm::ConstantInt::get();
  v18 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((this + 8), v9, a3, v17);
  v11 = (*(**(this + 58) + 696))();
  v14 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
  v16 = *(this + 26);
  v12 = (*(*v11 + 1800))(v11, &v14, a2, Sub);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateUp(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1800))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleXor(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1792))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleDown(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1664))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleUp(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1656))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffle(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1784))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdBroadcast(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1776))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadBallot(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1768))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateDown(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = *a3;
  v8 = llvm::ConstantInt::get();
  v17 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((this + 8), v8, a3, v16);
  v10 = (*(**(this + 58) + 696))();
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 1760))(v10, &v13, a2, Sub);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateUp(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1760))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen5::buildShuffleAndFill(uint64_t a1, llvm::Instruction *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 4);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 9))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v7 = v6;
  v21 = Name;
  v22 = v6;
  v8 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  v9 = v8[4];
  v23[0] = *v8;
  v23[1] = v9;
  v10 = v8[8];
  v11 = v8[12];
  v23[2] = v10;
  v23[3] = v11;
  v12 = *a2;
  llvm::UndefValue::get();
  if (AGCLLVMAirBuiltins::validateScalarOrVectorArgument(a1, *v23[0], Name, v7))
  {
    if (AGCLLVMAirBuiltins::validateScalarOrVectorArgument(a1, *v9, Name, v7))
    {
      v13 = (*(**(a1 + 464) + 696))(*(a1 + 464));
      v18 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
      v20 = *(a1 + 104);
      v14 = llvm::StringRef::find() != -1;
      v15 = llvm::StringRef::find() != -1;
      (*(*v13 + 1952))(v13, &v18, v23, 4, v14, v15);
      if (v19)
      {
        llvm::MetadataTracking::untrack();
      }
    }
  }

  llvm::Value::replaceAllUsesWith();
  result = llvm::Instruction::eraseFromParent(a2);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltins::validateScalarOrVectorArgument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v22[1] = a4;
  if ((*(a2 + 8) & 0xFE) != 0x12)
  {
    return 1;
  }

  v4 = *(a2 + 32);
  if (v4 < 5)
  {
    return 1;
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v17, "n = ", 4);
  v7 = MEMORY[0x20F331C20](&v17, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " in vec<T,n> is an invalid argument to ", 39);
  llvm::StringRef::str(__p, v22);
  if ((v16 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ". ", 2);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v17, "n must be less or equal to 4.", 29);
  std::stringbuf::str();
  if ((v14 & 0x80u) == 0)
  {
    v11 = v13;
  }

  else
  {
    v11 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v12 = v14;
  }

  else
  {
    v12 = v13[1];
  }

  std::string::append((*(a1 + 944) + *(**(a1 + 944) - 24) + 1656), v11, v12);
  *(a1 + 960) = 0;
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v21);
  return 0;
}

uint64_t AGCLLVMAirBuiltinsGen5::buildBroadcastFirstActiveThread(uint64_t a1, uint64_t a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  v32[0] = llvm::Value::getName(v4);
  v32[1] = v5;
  v6 = llvm::StringRef::find();
  v7 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v8 = (*(**(a1 + 464) + 696))();
  v21 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (a1 + 8));
  v9 = *(a1 + 104);
  v23 = v9;
  v27 = v21;
  v28 = v22;
  if (v22)
  {
    llvm::MetadataTracking::track();
    v9 = v23;
  }

  v29 = v9;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v27, (v8 + 1));
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = *(v8 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (v8 + 1));
  v10 = *(v8 + 26);
  v26 = v10;
  v41 = v24;
  v42 = v25;
  if (v25)
  {
    llvm::MetadataTracking::track();
    v10 = v26;
  }

  v43 = v10;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v41, (v8 + 1));
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v38 = *(v8 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (v8 + 1));
  v40 = *(v8 + 26);
  IsFirstActiveThread = AGCLLVMGen5TargetLowerer::buildIsFirstActiveThread(v8, &v38, v6 != -1);
  if (v39)
  {
    llvm::MetadataTracking::untrack();
  }

  v35 = *(v8 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v8 + 1));
  v37 = *(v8 + 26);
  if (v6 == -1)
  {
    v12 = (*(*v8 + 226))(v8, &v35, IsFirstActiveThread);
  }

  else
  {
    v12 = (*(*v8 + 221))(v8, &v35, IsFirstActiveThread);
  }

  v13 = v12;
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(v8, "llvm.agx2.ft1", 13, v8[25], v8[25]);
  v15 = v8[25];
  v33 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v8 + 1), 39, v13, v15, v32);
  v31 = 257;
  v16 = llvm::IRBuilderBase::CreateCall((v8 + 1), *(v14 + 24), v14, &Cast, 1, v30);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v41 = *(v8 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v42, (v8 + 1));
  v43 = *(v8 + 26);
  v17 = v8[24];
  if (v6 == -1)
  {
    v31 = 257;
    v19 = llvm::IRBuilderBase::CreateCast((v8 + 1), 38, v16, v17, v30);
    (*(*v8 + 222))(v8, &v41, v7, v19);
  }

  else
  {
    v33 = 257;
    v18 = llvm::IRBuilderBase::CreateCast((v8 + 1), 38, v16, v17, v32);
    AGCLLVMGen3TargetLowerer::buildQuadBroadcast(v8, &v41, v7, v18);
  }

  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen5::buildIsFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 4);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 9))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v13 = v5;
  v6 = llvm::StringRef::find() != -1;
  v7 = (*(**(a1 + 464) + 696))();
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  AGCLLVMGen5TargetLowerer::buildIsFirstActiveThread(v7, &v9, v6);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen5::buildIsHelperThread(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v13 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (a1 + 8));
  v5 = *(a1 + 104);
  v15 = v5;
  v20 = v13;
  v21 = v14;
  if (v14)
  {
    llvm::MetadataTracking::track();
    v5 = v15;
  }

  v22 = v5;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v20, v4 + 8);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(v4 + 2832))
  {
    v6 = strlen(*(v4 + 2832));
  }

  v7 = *(v4 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(v4);
  v19 = 257;
  v9 = llvm::IRBuilderBase::CreateCall(v4 + 8, *(inserted + 24), inserted, 0, 0, v18);
  v10 = *(v4 + 200);
  v11 = llvm::ConstantInt::get();
  v17 = 257;
  llvm::IRBuilderBase::CreateICmp((v4 + 8), 32, v9, v11, v16);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen5::buildReduce(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 4);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 9))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v7 = v6;
  v8 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v9 = *a2;
  llvm::UndefValue::get();
  if (AGCLLVMAirBuiltins::validateScalarOrVectorArgument(a1, *v8, Name, v7))
  {
    v10 = (*(**(a1 + 464) + 696))(*(a1 + 464));
    v12 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
    v14 = *(a1 + 104);
    AGCLLVMGen5TargetLowerer::buildReduce(v10, &v12, Name, v7, v8);
    if (v13)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

llvm::Value *AGCLLVMAirBuiltinsGen5::buildGetDispatchPrivateBuffer(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  v22 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (this + 8));
  v5 = *(this + 26);
  v24 = v5;
  if (*(a2 + 16) == 16)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = (v6 + 24);
  if (*(v6 + 8) >= 0x41u)
  {
    v7 = *v7;
  }

  v8 = *v7;
  v9 = v4 + *(*v4 - 24);
  v25 = v22;
  v26 = v23;
  if (v23)
  {
    llvm::MetadataTracking::track();
    v5 = v24;
  }

  v27 = v5;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v25, (v9 + 1712));
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = v4 + *(*v4 - 24);
  v11 = v4[3 * v8 + 373];
  if (!v11)
  {
    v12 = *(v10 + 239);
    llvm::FunctionType::get();
    std::to_string(&v28, v8);
    v13 = std::string::insert(&v28, 0, "agc.get_private_dispatch_buffer.");
    v14 = v13->__r_.__value_.__r.__words[2];
    v33 = *&v13->__r_.__value_.__l.__data_;
    v34 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v15 = *(v4 + *(*v4 - 24) + 2136);
    llvm::Module::getOrInsertFunction();
    v17 = v16;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    *(v17 + 32) = *(v17 + 32) & 0xFFFFBFC0 | 0x4007;
    v18 = v4 + *(*v4 - 24);
    v30 = *(v18 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (v18 + 1712));
    v32 = *(v18 + 452);
    v19 = *(v4 + *(*v4 - 24) + 2160);
    v28.__r_.__value_.__r.__words[0] = "entry";
    v29 = 259;
    operator new();
  }

  v29 = 257;
  v20 = llvm::IRBuilderBase::CreateCall((v10 + 1712), *(v11 + 24), v11, 0, 0, &v28);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  return v20;
}

llvm::Value *AGCLLVMAirBuiltinsGen5::buildTrunc(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v7, a2, "llvm.trunc");
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Value *AGCLLVMAirBuiltinsGen5::buildRNE(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v7, a2, "llvm.rint");
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Value *AGCLLVMAirBuiltinsGen5::buildPow(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2, llvm::Value *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 19);
  if (*a2 == v6)
  {
    v8 = "llvm.agx2.pow.f16";
LABEL_6:
    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v8, 17, v6, v6, v6);
    goto LABEL_7;
  }

  v6 = *(this + 21);
  if (*a2 == v6)
  {
    v8 = "llvm.agx2.pow.f32";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v12[0] = a2;
  v12[1] = a3;
  v11[16] = 257;
  result = llvm::IRBuilderBase::CreateCall(this + 8, *(v7 + 24), v7, v12, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMAirBuiltinsGen5::buildCeil(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v7, a2, "llvm.ceil");
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

void AGCLLVMAirBuiltinsGen5::~AGCLLVMAirBuiltinsGen5(AGCLLVMAirBuiltinsGen5 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen6::buildSimdShuffleRotateDown(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::Value *a3)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = *(this + 58);
  if (*(v7 + 1916))
  {
    goto LABEL_4;
  }

  v14 = 0x27C8D7000uLL;
  {
    v14 = 0x27C8D7000;
    if (v17)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v14 = 0x27C8D7000;
    }
  }

  if (*(v14 + 2944) == 1)
  {
    Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        v7 = *(this + 58);
LABEL_4:
        v21[0] = a2;
        v21[1] = a2;
        v21[2] = a3;
        v8 = *(v7 + 968);
        v9 = *(this + 24);
        v21[3] = llvm::ConstantInt::get();
        v10 = (*(**(this + 58) + 696))();
        v18 = *(this + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (this + 8));
        v20 = *(this + 26);
        v11 = (*(*v10 + 1952))(v10, &v18, v21, 4, 1, 0);
        if (v19)
        {
          llvm::MetadataTracking::untrack();
        }

        v12 = *MEMORY[0x277D85DE8];
        return v11;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateDown(this, a2, a3);
}

uint64_t AGCLLVMAirBuiltinsGen6::buildSimdShuffleRotateUp(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::Value *a3)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = *(this + 58);
  if (*(v7 + 1916))
  {
    goto LABEL_4;
  }

  v14 = 0x27C8D7000uLL;
  {
    v14 = 0x27C8D7000;
    if (v17)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v14 = 0x27C8D7000;
    }
  }

  if (*(v14 + 2944) == 1)
  {
    Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        v7 = *(this + 58);
LABEL_4:
        v21[0] = a2;
        v21[1] = a2;
        v21[2] = a3;
        v8 = *(v7 + 968);
        v9 = *(this + 24);
        v21[3] = llvm::ConstantInt::get();
        v10 = (*(**(this + 58) + 696))();
        v18 = *(this + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (this + 8));
        v20 = *(this + 26);
        v11 = (*(*v10 + 1952))(v10, &v18, v21, 4, 0, 0);
        if (v19)
        {
          llvm::MetadataTracking::untrack();
        }

        v12 = *MEMORY[0x277D85DE8];
        return v11;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateUp(this, a2, a3);
}

uint64_t AGCLLVMAirBuiltinsGen6::buildQuadShuffleRotateDown(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::Value *a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  if (*(*(this + 58) + 1916))
  {
    goto LABEL_4;
  }

  v12 = 0x27C8D7000uLL;
  {
    v12 = 0x27C8D7000;
    if (v15)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v12 = 0x27C8D7000;
    }
  }

  if (*(v12 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2)) != 0 && *Value != 48 && atoi(Value))
  {
LABEL_4:
    v19[0] = a2;
    v19[1] = a2;
    v19[2] = a3;
    v7 = *(this + 24);
    v19[3] = llvm::ConstantInt::get();
    v8 = (*(**(this + 58) + 696))();
    v16 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (this + 8));
    v18 = *(this + 26);
    v9 = (*(*v8 + 1952))(v8, &v16, v19, 4, 1, 1);
    if (v17)
    {
      llvm::MetadataTracking::untrack();
    }

    v10 = *MEMORY[0x277D85DE8];
    return v9;
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateDown(this, a2, a3);
  }
}

uint64_t AGCLLVMAirBuiltinsGen6::buildQuadShuffleRotateUp(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::Value *a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  if (*(*(this + 58) + 1916))
  {
    goto LABEL_4;
  }

  v12 = 0x27C8D7000uLL;
  {
    v12 = 0x27C8D7000;
    if (v15)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v12 = 0x27C8D7000;
    }
  }

  if (*(v12 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2)) != 0 && *Value != 48 && atoi(Value))
  {
LABEL_4:
    v19[0] = a2;
    v19[1] = a2;
    v19[2] = a3;
    v7 = *(this + 24);
    v19[3] = llvm::ConstantInt::get();
    v8 = (*(**(this + 58) + 696))();
    v16 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (this + 8));
    v18 = *(this + 26);
    v9 = (*(*v8 + 1952))(v8, &v16, v19, 4, 0, 1);
    if (v17)
    {
      llvm::MetadataTracking::untrack();
    }

    v10 = *MEMORY[0x277D85DE8];
    return v9;
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateUp(this, a2, a3);
  }
}

void AGCLLVMAirBuiltinsGen6::~AGCLLVMAirBuiltinsGen6(AGCLLVMAirBuiltinsGen6 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen7::buildSimdYield(AGCLLVMAirBuiltinsGen7 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  v5 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 752))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen7::buildTan(AGCLLVMAirBuiltinsGen7 *this, llvm::Value *a2)
{
  FPExt = a2;
  v4 = *a2;
  v5 = *(this + 21);
  v6 = llvm::ConstantFP::get();
  v7 = *(this + 21);
  v8 = llvm::ConstantFP::get();
  v9 = *(this + 21);
  v10 = llvm::ConstantFP::get();
  v11 = *(this + 21);
  v12 = llvm::ConstantFP::get();
  if (v4 == *(this + 19))
  {
    v13 = *(this + 21);
    v69 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((this + 8), FPExt, v13, v68);
  }

  v14 = AGCLLVMBuilder::buildFma(this, FPExt, v8, v6);
  v69 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v6, v14, v68);
  v16 = AGCLLVMBuilder::buildFma(this, FPExt, v8, FSub);
  v17 = AGCLLVMBuilder::buildFma(this, FPExt, v10, v16);
  if (v4 == *(this + 19))
  {
    v69 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul(this + 8, v17, v17, v68);
    v40 = *(this + 21);
    v41 = llvm::ConstantFP::get();
    v42 = *(this + 21);
    v43 = llvm::ConstantFP::get();
    v44 = AGCLLVMBuilder::buildFma(this, FMul, v41, v43);
    v45 = *(this + 21);
    v46 = llvm::ConstantFP::get();
    v47 = AGCLLVMBuilder::buildFma(this, v44, FMul, v46);
    v48 = *(this + 21);
    v49 = llvm::ConstantFP::get();
    v50 = AGCLLVMBuilder::buildFma(this, v47, FMul, v49);
    v69 = 257;
    v51 = llvm::IRBuilderBase::CreateFMul(this + 8, v17, v50, v68);
    v52 = *(this + 21);
    v53 = llvm::ConstantFP::get();
    v69 = 257;
    FNeg = llvm::IRBuilderBase::CreateFNeg(this + 8, v51, v68);
    v65 = 257;
    llvm::IRBuilderBase::CreateFDiv(this + 8, v53, FNeg, v64);
    v55 = *(this + 25);
    v69 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v14, v55, v68);
    v57 = *(this + 25);
    v58 = llvm::ConstantInt::get();
    v69 = 257;
    v59 = llvm::IRBuilderBase::CreateAnd((this + 8), Cast, v58, v68);
    v60 = *(this + 25);
    v61 = llvm::ConstantInt::get();
    v69 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 32, v59, v61, v68);
    v69 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v63 = *(this + 19);
    v65 = 257;
    return llvm::IRBuilderBase::CreateFPTrunc((this + 8), Select, v63, v64);
  }

  else
  {
    v18 = AGCLLVMBuilder::buildFma(this, FPExt, v12, v17);
    v66 = v18;
    v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sinc.f32", 18, v4, v4);
    v69 = 257;
    v20 = llvm::IRBuilderBase::CreateCall(this + 8, *(v19 + 24), v19, &v66, 1, v68);
    v65 = 257;
    llvm::IRBuilderBase::CreateFMul(this + 8, v18, v20, v64);
    v21 = *(this + 21);
    v22 = llvm::ConstantFP::get();
    Fabs = AGCLLVMTargetBuilder::CreateFabs(this, v66);
    v69 = 257;
    v67 = llvm::IRBuilderBase::CreateFSub(this + 8, v22, Fabs, v68);
    v69 = 257;
    v24 = llvm::IRBuilderBase::CreateCall(this + 8, *(v19 + 24), v19, &v67, 1, v68);
    v25 = AGCLLVMTargetBuilder::CreateFabs(this, v66);
    v69 = 257;
    v26 = llvm::IRBuilderBase::CreateFNeg(this + 8, v25, v68);
    v27 = AGCLLVMBuilder::buildFma(this, v24, v26, v24);
    v28 = *(this + 25);
    v69 = 257;
    v29 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v14, v28, v68);
    v30 = *(this + 25);
    v31 = llvm::ConstantInt::get();
    v69 = 257;
    v32 = llvm::IRBuilderBase::CreateAnd((this + 8), v29, v31, v68);
    v33 = *(this + 25);
    v34 = llvm::ConstantInt::get();
    v69 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 32, v32, v34, v68);
    v69 = 257;
    v35 = llvm::IRBuilderBase::CreateSelect();
    v69 = 257;
    llvm::IRBuilderBase::CreateFNeg(this + 8, v27, v68);
    v65 = 257;
    v36 = llvm::IRBuilderBase::CreateSelect();
    v69 = 257;
    llvm::IRBuilderBase::CreateFDiv(this + 8, v36, v35, v68);
    AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
    v37 = *(this + 21);
    llvm::ConstantFP::get();
    v69 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v65 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCLLVMAirBuiltinsGen7::buildArcsin(llvm::Type **this, llvm::Value *a2)
{
  if (*a2 != this[19])
  {

    AGCLLVMAirBuiltinsGen2::buildArcsin(this, a2);
  }

  v3 = this[21];
  v30 = 257;
  FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), a2, v3, v29);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
  v6 = this[21];
  llvm::ConstantFP::get();
  v30 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v7 = this[21];
  v8 = llvm::ConstantFP::get();
  v9 = this[21];
  v10 = llvm::ConstantFP::get();
  v11 = AGCLLVMBuilder::buildFma(this, v8, Fabs, v10);
  v28 = v11;
  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sqrt.step.f32", 23, this[21], this[21]);
  v30 = 257;
  v13 = llvm::IRBuilderBase::CreateCall((this + 1), *(v12 + 24), v12, &v28, 1, v29);
  v27 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), v11, v13, v26);
  v30 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v30 = 257;
  v16 = llvm::IRBuilderBase::CreateFMul((this + 1), Select, Select, v29);
  v17 = AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(this, v16);
  v30 = 257;
  llvm::IRBuilderBase::CreateFMul((this + 1), v17, Fabs, v29);
  v18 = this[21];
  v19 = llvm::ConstantFP::get();
  v30 = 257;
  v20 = llvm::IRBuilderBase::CreateFMul((this + 1), v19, FMul, v29);
  v21 = this[21];
  v22 = llvm::ConstantFP::get();
  v28 = AGCLLVMBuilder::buildFma(this, v20, v17, v22);
  v30 = 257;
  v28 = llvm::IRBuilderBase::CreateSelect();
  v23 = this[21];
  llvm::ConstantFP::get();
  v30 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v30 = 257;
  llvm::IRBuilderBase::CreateFNeg((this + 1), v28, v29);
  v27 = 257;
  v28 = llvm::IRBuilderBase::CreateSelect();
  v24 = this[19];
  v30 = 257;
  return llvm::IRBuilderBase::CreateFPTrunc((this + 1), v28, v24, v29);
}

uint64_t AGCLLVMAirBuiltinsGen7::buildArccos(llvm::Type **this, llvm::Value *a2)
{
  if (*a2 != this[19])
  {

    AGCLLVMAirBuiltinsGen2::buildArccos(this, a2);
  }

  v3 = this[21];
  v29 = 257;
  FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), a2, v3, v28);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
  v6 = this[21];
  v7 = llvm::ConstantFP::get();
  v8 = this[21];
  v9 = llvm::ConstantFP::get();
  v10 = AGCLLVMBuilder::buildFma(this, v7, Fabs, v9);
  Select = v10;
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sqrt.step.f32", 23, this[21], this[21]);
  v29 = 257;
  v12 = llvm::IRBuilderBase::CreateCall((this + 1), *(v11 + 24), v11, &Select, 1, v28);
  v26 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), v10, v12, v25);
  v14 = this[21];
  v15 = llvm::ConstantFP::get();
  v29 = 257;
  v16 = llvm::IRBuilderBase::CreateFMul((this + 1), FMul, FMul, v28);
  v17 = AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(this, v16);
  v29 = 257;
  v18 = llvm::IRBuilderBase::CreateFMul((this + 1), v15, v17, v28);
  v19 = this[21];
  llvm::ConstantFP::get();
  v29 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v29 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg((this + 1), FMul, v28);
  v21 = this[21];
  v22 = llvm::ConstantFP::get();
  AGCLLVMBuilder::buildFma(this, FNeg, v18, v22);
  v26 = 257;
  llvm::IRBuilderBase::CreateFMul((this + 1), v18, FMul, v25);
  Select = llvm::IRBuilderBase::CreateSelect();
  v23 = this[19];
  v29 = 257;
  return llvm::IRBuilderBase::CreateFPTrunc((this + 1), Select, v23, v28);
}

uint64_t AGCLLVMAirBuiltinsGen7::buildSinCos(AGCLLVMAirBuiltinsGen7 *this, llvm::Value *a2, int a3)
{
  FPExt = a2;
  v6 = *a2;
  v7 = *(this + 21);
  v8 = llvm::ConstantFP::get();
  v9 = *(this + 21);
  v10 = llvm::ConstantFP::get();
  v11 = *(this + 21);
  v12 = llvm::ConstantFP::get();
  v13 = *(this + 21);
  v14 = llvm::ConstantFP::get();
  if (v6 == *(this + 19))
  {
    v15 = *(this + 21);
    v52 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((this + 8), FPExt, v15, v51);
  }

  v16 = AGCLLVMBuilder::buildFma(this, FPExt, v10, v8);
  v52 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v8, v16, v51);
  v18 = AGCLLVMBuilder::buildFma(this, FPExt, v10, FSub);
  v19 = AGCLLVMBuilder::buildFma(this, FPExt, v12, v18);
  if (v6 == *(this + 21))
  {
    v19 = AGCLLVMBuilder::buildFma(this, FPExt, v14, v19);
    v50 = v19;
    v20 = *(this + 21);
  }

  v21 = llvm::ConstantFP::get();
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, v19);
  v52 = 257;
  llvm::IRBuilderBase::CreateFSub(this + 8, v21, Fabs, v51);
  v23 = *(this + 25);
  v52 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v16, v23, v51);
  v25 = *(this + 25);
  v26 = llvm::ConstantInt::get();
  v52 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((this + 8), Cast, v26, v51);
  v28 = *(this + 25);
  v29 = llvm::ConstantInt::get();
  v52 = 257;
  llvm::IRBuilderBase::CreateICmp(this + 1, 32, v27, v29, v51);
  v52 = 257;
  if (a3)
  {
    llvm::IRBuilderBase::CreateFNeg(this + 8, v19, v51);
    v49 = 257;
  }

  Select = llvm::IRBuilderBase::CreateSelect();
  v31 = *(this + 25);
  v52 = 257;
  v32 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v16, v31, v51);
  v33 = *(this + 25);
  v34 = llvm::ConstantInt::get();
  v52 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((this + 8), v32, v34, v51);
  v36 = *(this + 25);
  v37 = llvm::ConstantInt::get();
  v52 = 257;
  llvm::IRBuilderBase::CreateICmp(this + 1, 32, v35, v37, v51);
  v52 = 257;
  llvm::IRBuilderBase::CreateFNeg(this + 8, Select, v51);
  v49 = 257;
  v38 = llvm::IRBuilderBase::CreateSelect();
  v50 = v38;
  v39 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sinc.f32", 18, *(this + 21), *(this + 21));
  v52 = 257;
  v40 = llvm::IRBuilderBase::CreateCall(this + 8, *(v39 + 24), v39, &v50, 1, v51);
  v49 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, v38, v40, v48);
  v50 = FMul;
  v42 = *(this + 19);
  if (v6 == v42)
  {
    v52 = 257;
    return llvm::IRBuilderBase::CreateFPTrunc((this + 8), FMul, v42, v51);
  }

  else
  {
    AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
    v43 = *(this + 21);
    llvm::ConstantFP::get();
    v52 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    if (a3)
    {
      v44 = *(this + 21);
      llvm::ConstantFP::get();
    }

    v49 = 257;
    llvm::IRBuilderBase::CreateSelect();
    v46 = *(this + 21);
    llvm::ConstantFP::get();
    v52 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v47 = *(this + 21);
    llvm::ConstantFP::get();
    v49 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCLLVMAirBuiltins::buildArctan2(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *a2;
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  v12 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, a3, v11);
  v8 = (*(*this + 32))(this, FDiv);
  v12 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v12 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v12 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v12 = 257;
  llvm::IRBuilderBase::CreateFAdd(this + 8, v8, Select, v11);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *AGCLLVMAirBuiltins::buildMetalSinCos(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Type **a3)
{
  v6 = *a2;
  if ((llvm::Type::isOpaquePointerTy(*a3) & 1) == 0)
  {
    v7 = **(*a3 + 2);
  }

  if ((*(v6 + 8) & 0xFE) == 0x12 && (v8 = *(v6 + 32), v8 != 1))
  {
    v12 = llvm::UndefValue::get();
    InsertElement = llvm::UndefValue::get();
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v25 = 257;
        v15 = *(this + 25);
        v16 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v16, v24);
        v18 = (*(*this + 24))(this, Element, 1);
        v25 = 257;
        v19 = *(this + 25);
        v20 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v18, v20, v24);
        v21 = (*(*this + 24))(this, Element, 0);
        v25 = 257;
        v22 = *(this + 25);
        v23 = llvm::ConstantInt::get();
        v12 = llvm::IRBuilderBase::CreateInsertElement((this + 8), v12, v21, v23, v24);
      }
    }

    llvm::IRBuilderBase::CreateAlignedStore(this + 1, InsertElement, a3, 0);
    return v12;
  }

  else
  {
    v9 = (*(*this + 24))(this, a2, 1);
    llvm::IRBuilderBase::CreateAlignedStore(this + 1, v9, a3, 0);
    v10 = *(*this + 24);

    return v10(this, a2, 0);
  }
}

llvm::Value *AGCLLVMAirBuiltins::buildArccosh(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v13 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v12);
  v5 = *(this + 21);
  v6 = llvm::ConstantFP::get();
  v11[16] = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, FMul, v6, v11);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
  v13 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, a2, Sqrt, v12);
  return AGCLLVMTargetBuilder::CreateLog(this, FAdd);
}

llvm::Value *AGCLLVMTargetBuilder::CreateLog(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.log");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildArcsinh(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v13 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v12);
  v5 = *(this + 21);
  v6 = llvm::ConstantFP::get();
  v11[16] = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, FMul, v6, v11);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FAdd);
  v13 = 257;
  v9 = llvm::IRBuilderBase::CreateFAdd(this + 8, a2, Sqrt, v12);
  return AGCLLVMTargetBuilder::CreateLog(this, v9);
}

uint64_t AGCLLVMAirBuiltins::buildArctanh(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 21);
  v5 = llvm::ConstantFP::get();
  v14 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v5, a2, v13);
  v14 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v5, a2, v13);
  v14 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, FAdd, FSub, v13);
  Log = AGCLLVMTargetBuilder::CreateLog(this, FDiv);
  v10 = *(this + 21);
  v11 = llvm::ConstantFP::get();
  v14 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, Log, v11, v13);
}

uint64_t AGCLLVMAirBuiltins::buildCosh(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  Exp = AGCLLVMTargetBuilder::CreateExp(this, a2);
  v13 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg(this + 8, a2, v12);
  v6 = AGCLLVMTargetBuilder::CreateExp(this, FNeg);
  v13 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, Exp, v6, v12);
  v8 = *(this + 21);
  v9 = llvm::ConstantFP::get();
  v11[16] = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, FAdd, v9, v11);
}

llvm::Value *AGCLLVMTargetBuilder::CreateExp(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.exp");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildFmod(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v17 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, a3, v16);
  v7 = *(this + 58);
  v18 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (this + 8));
  v8 = *(this + 26);
  v20 = v8;
  v12 = v18;
  v13 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v8 = v20;
  }

  v14 = v8;
  v9 = AGCLLVMTargetLowerer::CallFPIntrinsic(v7, &v12, FDiv, "llvm.trunc");
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, v9, a3, v16);
  v15 = 257;
  return llvm::IRBuilderBase::CreateFSub(this + 8, a2, FMul, &v12);
}

uint64_t AGCLLVMAirBuiltins::buildMod(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v12 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, a3, v11);
  Floor = AGCLLVMTargetBuilder::CreateFloor(this, FDiv);
  v12 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, Floor, a3, v11);
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateFSub(this + 8, a2, FMul, v10);
}

uint64_t AGCLLVMAirBuiltins::buildFract(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    if (*(**(v4 + 16) + 8) == 2)
    {
      v5 = *(v4 + 32);
      v6 = *(this + 25);
      v7 = llvm::ConstantInt::get();
      v8 = AGCLLVMBuilder::splat(this, v5, v7);
LABEL_6:
      v10 = v8;
      v11 = AGCLLVMBuilder::bitCastElements(this, a2, *(this + 25));
      v19 = 257;
      v12 = *v11;
      v13 = llvm::ConstantInt::get();
      Shl = llvm::IRBuilderBase::CreateShl((this + 8), v11, v13, v18);
      v19 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 32, Shl, v10, v18);
      Floor = AGCLLVMTargetBuilder::CreateFloor(this, a2);
      v19 = 257;
      llvm::IRBuilderBase::CreateFSub(this + 8, a2, Floor, v18);
      llvm::ConstantFP::get();
      v19 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      llvm::ConstantFP::get();
      llvm::IRBuilderBase::CreateSelect();
      llvm::ConstantFP::get();
      v19 = 257;
      return llvm::IRBuilderBase::CreateSelect();
    }
  }

  else if (*(*a2 + 8) == 2)
  {
    v9 = *(this + 25);
    v8 = llvm::ConstantInt::get();
    goto LABEL_6;
  }

  v17 = AGCLLVMTargetBuilder::CreateFloor(this, a2);
  v19 = 257;
  return llvm::IRBuilderBase::CreateFSub(this + 8, a2, v17, v18);
}

uint64_t AGCLLVMAirBuiltins::buildFastFract(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  Floor = AGCLLVMTargetBuilder::CreateFloor(this, a2);
  v21 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, a2, Floor, v20);
  v6 = *a2;
  v7 = *(*a2 + 8);
  v8 = v7;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(v6 + 16) + 8);
  }

  if (v8 == 2)
  {
    v9 = *(this + 118);
    if (!v9 || (*(v9 + *(*v9 - 24) + 1808) & 4) == 0)
    {
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v7 = *(**(v6 + 16) + 8);
      }

      v10 = v7 == 2;
      v11 = 192;
      if (v10)
      {
        v11 = 200;
        v12 = 168;
      }

      else
      {
        v12 = 152;
      }

      if (v10)
      {
        v13 = v20;
      }

      else
      {
        v13 = &v19;
      }

      v14 = *(this + v11);
      v15 = llvm::ConstantInt::get();
      v16 = *(this + v12);
      *(v13 + 16) = 257;
      Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v15, v16, v13);
      if ((*(v6 + 8) & 0xFE) == 0x12)
      {
        AGCLLVMBuilder::splat(this, *(v6 + 32), Cast);
      }

      AGCLLVMTargetBuilder::CreateFabs(this, a2);
      v21 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      llvm::ConstantFP::get();
      v21 = 257;
      return llvm::IRBuilderBase::CreateSelect();
    }
  }

  return FSub;
}

uint64_t AGCLLVMAirBuiltins::buildFmad(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v9 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a3, v8);
  v9 = 257;
  return llvm::IRBuilderBase::CreateFAdd(this + 8, FMul, a4, v8);
}

llvm::Value *AGCLLVMAirBuiltins::buildExp10(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v9 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, v5, v8);
  return AGCLLVMTargetBuilder::CreateExp2(this, FMul);
}

llvm::Value *AGCLLVMTargetBuilder::CreateExp2(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.exp2");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildLog10(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  Log2 = AGCLLVMTargetBuilder::CreateLog2(this, a2);
  v9 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, Log2, v5, v8);
}

llvm::Value *AGCLLVMTargetBuilder::CreateLog2(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.log2");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildSinh(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  Exp = AGCLLVMTargetBuilder::CreateExp(this, a2);
  v13 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg(this + 8, a2, v12);
  v6 = AGCLLVMTargetBuilder::CreateExp(this, FNeg);
  v13 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, Exp, v6, v12);
  v8 = *(this + 21);
  v9 = llvm::ConstantFP::get();
  v11[16] = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, FSub, v9, v11);
}

uint64_t AGCLLVMAirBuiltins::buildTanh(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 21);
  v5 = llvm::ConstantFP::get();
  v16 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, v5, v15);
  Exp = AGCLLVMTargetBuilder::CreateExp(this, FMul);
  v8 = *(this + 21);
  v9 = llvm::ConstantFP::get();
  v16 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, Exp, v9, v15);
  v11 = *(this + 21);
  v12 = llvm::ConstantFP::get();
  v16 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, Exp, v12, v15);
  v16 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, FSub, FAdd, v15);
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltins::ConversionFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          v7 = *v5;
          if (*(v5 + 63) < 0)
          {
            operator delete(*(v5 + 5));
          }

          if (*(v5 + 39) < 0)
          {
            operator delete(*(v5 + 2));
          }

          llvm::deallocate_buffer(v5, (v7 + 81));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirBuiltins::buildPack(uint64_t a1, llvm::Value **a2)
{
  AGCLLVMAirBuiltins::initializePackUnpackMap(a1);
  Key = llvm::StringMapImpl::FindKey();
  v5 = 0;
  v6 = AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map;
  if (Key == -1)
  {
    v7 = dword_28117DC50;
  }

  else
  {
    v7 = Key;
  }

  v8 = *(AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map + 8 * v7);
  v9 = *(v8 + 8);
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 == 6)
      {
        v26 = *(a1 + 464);
        v27 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (a1 + 8));
        v29 = *(a1 + 104);
        v5 = (*(*v26 + 104))(v26, &v27, 9, *(a1 + 192), *a2, 0, *(*(v6 + 8 * v7) + 15));
        if (!v28)
        {
          return v5;
        }
      }

      else
      {
        if (v9 != 7)
        {
          return v5;
        }

        v21 = *(a1 + 464);
        v30 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (a1 + 8));
        v32 = *(a1 + 104);
        v5 = (*(*v21 + 104))(v21, &v30, 10, *(a1 + 192), *a2, 0, *(*(v6 + 8 * v7) + 15));
        if (!v31)
        {
          return v5;
        }
      }

LABEL_34:
      llvm::MetadataTracking::untrack();
      return v5;
    }

    if (v9 == 4)
    {
      v24 = *(a1 + 464);
      v33 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
      v35 = *(a1 + 104);
      v5 = (*(*v24 + 104))(v24, &v33, 8, *(a1 + 192), *a2, 1, 0);
      if (!v34)
      {
        return v5;
      }

      goto LABEL_34;
    }

    v17 = *a2;
    v18 = *(*a1 + 120);

    return v18(a1, v17);
  }

  else
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v25 = *(a1 + 464);
        v39 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v40, (a1 + 8));
        v41 = *(a1 + 104);
        v5 = (*(*v25 + 104))(v25, &v39, 0, *(a1 + 192), *a2, 1, 0);
        if (!v40)
        {
          return v5;
        }
      }

      else
      {
        v20 = *(a1 + 464);
        v36 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
        v38 = *(a1 + 104);
        v5 = (*(*v20 + 104))(v20, &v36, 7, *(a1 + 192), *a2, 1, 0);
        if (!v37)
        {
          return v5;
        }
      }

      goto LABEL_34;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        return v5;
      }

      v10 = **a2;
      if (*(v10 + 32) == 3)
      {
        if ((*(v10 + 8) & 0xFE) == 0x12)
        {
          v10 = **(v10 + 16);
        }

        v11 = AGCLLVMBuilder::extendVector(a1, *a2, 4);
        *a2 = v11;
        NullValue = llvm::Constant::getNullValue(v10, v12);
        v46 = 257;
        v14 = *(a1 + 200);
        v15 = llvm::ConstantInt::get();
        *a2 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v11, NullValue, v15, v45);
      }

      v16 = *(a1 + 464);
      v42 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
      v44 = *(a1 + 104);
      v5 = (*(*v16 + 104))(v16, &v42, 5, *(a1 + 200), *a2, 1, *(*(v6 + 8 * v7) + 12));
      if (!v43)
      {
        return v5;
      }

      goto LABEL_34;
    }

    v22 = *a2;
    v23 = *(*a1 + 104);

    return v23(a1, v22, v8 + 12);
  }
}

void AGCLLVMAirBuiltins::initializePackUnpackMap(AGCLLVMAirBuiltins *this)
{
  {
    AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map = 0;
    *&dword_28117DC50 = 0;
    qword_28117DC58 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirBuiltins::initializePackUnpackMap(void)::flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&AGCLLVMAirBuiltins::initializePackUnpackMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializePackUnpackMap(void)::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializePackUnpackMap(void)::$_0 &&>>()
{
  v0 = 0;
  v1 = 1;
  do
  {
    v2 = 0;
    v79 = v1;
    v3 = off_277E202B8[v0];
    v4 = 1;
    do
    {
      v5 = 0;
      v80 = v4;
      v6 = off_277E202C8[v2];
      do
      {
        v7 = atoi(v3);
        v8 = atoi(v6);
        v9 = off_277E202D8[v5];
        v10 = atoi(v9);
        std::string::basic_string[abi:nn200100]<0>(&v87, ".");
        if ((v10 & 0xFE) != 0)
        {
          std::string::append(&v87, "v");
          std::string::append(&v87, v9);
        }

        std::string::append(&v87, "f");
        std::string::append(&v87, v3);
        std::string::basic_string[abi:nn200100]<0>(&v86, v9);
        std::string::append(&v86, "x");
        std::string::append(&v86, v6);
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v87;
        }

        else
        {
          v11 = v87.__r_.__value_.__r.__words[0];
        }

        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v87.__r_.__value_.__l.__size_;
        }

        std::string::append(&v86, v11, size);
        std::operator+<char>();
        if (v85 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v85 >= 0)
        {
          v14 = v85;
        }

        else
        {
          v14 = v84;
        }

        v15 = (v7 << 32) | (v8 << 40) | (v10 << 48);
        *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(p_p, v14) + 8) = v15 | 0x100000000000000;
        if (v85 < 0)
        {
          operator delete(__p);
        }

        std::operator+<char>();
        if (v85 >= 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p;
        }

        if (v85 >= 0)
        {
          v17 = v85;
        }

        else
        {
          v17 = v84;
        }

        *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v16, v17) + 8) = v15;
        if (v85 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        ++v5;
      }

      while (v5 != 3);
      v4 = 0;
      v2 = 1;
    }

    while ((v80 & 1) != 0);
    v1 = 0;
    v0 = 1;
  }

  while ((v79 & 1) != 0);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = 0;
    v81 = v19;
    v21 = off_277E202B8[v18];
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = atoi(v21);
      v25 = off_277E202F0[v20];
      v26 = atoi(v25);
      v27 = off_277E20300[v20];
      v28 = atoi(v27);
      std::string::basic_string[abi:nn200100]<0>(&v87, ".v");
      std::string::append(&v87, v27);
      std::string::append(&v87, "f");
      std::string::append(&v87, v21);
      std::string::basic_string[abi:nn200100]<0>(&v86, v27);
      std::string::append(&v86, "x");
      std::string::append(&v86, v25);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v87;
      }

      else
      {
        v29 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v87.__r_.__value_.__l.__size_;
      }

      std::string::append(&v86, v29, v30);
      if (v23)
      {
        v31 = 6;
      }

      else
      {
        v31 = 7;
      }

      std::operator+<char>();
      if (v85 >= 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p;
      }

      if (v85 >= 0)
      {
        v33 = v85;
      }

      else
      {
        v33 = v84;
      }

      v34 = v31 | (v24 << 32) | (v26 << 40) | (v28 << 48);
      *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v32, v33) + 8) = v34 | 0x100000000000000;
      if (v85 < 0)
      {
        operator delete(__p);
      }

      std::operator+<char>();
      if (v85 >= 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p;
      }

      if (v85 >= 0)
      {
        v36 = v85;
      }

      else
      {
        v36 = v84;
      }

      *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v35, v36) + 8) = v34;
      if (v85 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      v22 = 0;
      v20 = 1;
    }

    while ((v23 & 1) != 0);
    v19 = 0;
    v18 = 1;
  }

  while ((v81 & 1) != 0);
  v37 = 0;
  v38 = 1;
  do
  {
    v39 = 0;
    v78 = v38;
    v40 = 1;
    do
    {
      v41 = 0;
      v82 = v40;
      if (v40)
      {
        v42 = ".rgb10.v3f";
      }

      else
      {
        v42 = ".rgb10a2.v4f";
      }

      v43 = v39 | (v37 << 40);
      v44 = 1;
      do
      {
        v45 = v44;
        if (v44)
        {
          v46 = "unorm";
        }

        else
        {
          v46 = "snorm";
        }

        v47 = (v41 | v43) ^ 0x10000000001;
        v48 = 1;
        do
        {
          v49 = v48;
          std::string::basic_string[abi:nn200100]<0>(&v87, v46);
          std::string::append(&v87, v42);
          std::string::append(&v87, off_277E202B8[v37]);
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = &v87;
          }

          else
          {
            v50 = v87.__r_.__value_.__r.__words[0];
          }

          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v51 = v87.__r_.__value_.__l.__size_;
          }

          *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v50, v51) + 8) = v47;
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          v48 = 0;
        }

        while ((v49 & 1) != 0);
        v44 = 0;
        v41 = 0x100000000;
      }

      while ((v45 & 1) != 0);
      v40 = 0;
      v39 = 0x1000000000000;
    }

    while ((v82 & 1) != 0);
    v38 = 0;
    v37 = 1;
  }

  while ((v78 & 1) != 0);
  v52 = 0;
  v53 = 1;
  do
  {
    v54 = v53;
    std::string::basic_string[abi:nn200100]<0>(&v87, "unorm.rgb565.v3f");
    std::string::append(&v87, off_277E202B8[v52]);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v87;
    }

    else
    {
      v55 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v55, v56) + 8) = 2;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v53 = 0;
    v52 = 1;
  }

  while ((v54 & 1) != 0);
  v57 = 0;
  v58 = 1;
  do
  {
    v59 = v58;
    std::string::basic_string[abi:nn200100]<0>(&v86, "unorm4x8.srgb.v4f");
    v60 = std::string::append(&v86, off_277E202B8[v57]);
    v61 = v60->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v87;
    }

    else
    {
      v62 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v62, v63) + 8) = 5;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v58 = 0;
    v57 = 1;
  }

  while ((v59 & 1) != 0);
  v64 = 0;
  v65 = 1;
  do
  {
    v66 = v65;
    std::string::basic_string[abi:nn200100]<0>(&v86, "unorm.rg11b10f.v3f");
    v67 = std::string::append(&v86, off_277E202B8[v64]);
    v68 = v67->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v87;
    }

    else
    {
      v69 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v69, v70) + 8) = 3;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v65 = 0;
    v64 = 1;
  }

  while ((v66 & 1) != 0);
  v71 = 0;
  v72 = 1;
  do
  {
    v73 = v72;
    std::string::basic_string[abi:nn200100]<0>(&v86, "unorm.rgb9e5.v3f");
    v74 = std::string::append(&v86, off_277E202B8[v71]);
    v75 = v74->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v87;
    }

    else
    {
      v76 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v76, v77) + 8) = 4;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v72 = 0;
    v71 = 1;
  }

  while ((v73 & 1) != 0);
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117DC58) = qword_28117DC58 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_28117DC54;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirBuiltins::buildUnpack(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMAirBuiltins::initializePackUnpackMap(a1);
  Key = llvm::StringMapImpl::FindKey();
  v9 = 0;
  v10 = AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map;
  if (Key == -1)
  {
    v11 = dword_28117DC50;
  }

  else
  {
    v11 = Key;
  }

  v12 = *(AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map + 8 * v11);
  v13 = *(v12 + 8);
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        if (a4 >= 3)
        {
          v40 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v30 = v40 >= 0x66313600;
          v41 = v40 > 0x66313600;
          v42 = !v30;
          v15 = v41 == v42;
          v28 = 168;
          if (v15)
          {
            v28 = 152;
          }
        }

        else
        {
          v28 = 168;
        }

        v43 = *(a1 + v28);
        v44 = *(a1 + 464);
        v55 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (a1 + 8));
        v57 = *(a1 + 104);
        v9 = (*(*v44 + 112))(v44, &v55, 9, v43, *a2, 0, *(*(v10 + 8 * v11) + 15));
        if (!v56)
        {
          return v9;
        }
      }

      else
      {
        if (v13 != 7)
        {
          return v9;
        }

        if (a4 >= 3)
        {
          v50 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v30 = v50 >= 0x66313600;
          v51 = v50 > 0x66313600;
          v52 = !v30;
          v15 = v51 == v52;
          v23 = 168;
          if (v15)
          {
            v23 = 152;
          }
        }

        else
        {
          v23 = 168;
        }

        v53 = *(a1 + v23);
        v54 = *(a1 + 464);
        v58 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (a1 + 8));
        v60 = *(a1 + 104);
        v9 = (*(*v54 + 112))(v54, &v58, 10, v53, *a2, 0, *(*(v10 + 8 * v11) + 15));
        if (!v59)
        {
          return v9;
        }
      }
    }

    else
    {
      if (v13 != 4)
      {
        v19 = *a2;
        v20 = *(*a1 + 128);

        return v20(a1, v19, a3, a4);
      }

      if (a4 >= 3)
      {
        v29 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v30 = v29 >= 0x66313600;
        v31 = v29 > 0x66313600;
        v32 = !v30;
        v15 = v31 == v32;
        v26 = 168;
        if (v15)
        {
          v26 = 152;
        }
      }

      else
      {
        v26 = 168;
      }

      v33 = *(a1 + v26);
      v34 = *(a1 + 464);
      v61 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (a1 + 8));
      v63 = *(a1 + 104);
      v9 = (*(*v34 + 112))(v34, &v61, 8, v33, *a2, 1, 0);
      if (!v62)
      {
        return v9;
      }
    }

LABEL_70:
    llvm::MetadataTracking::untrack();
    return v9;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (a4 >= 3)
      {
        v35 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v30 = v35 >= 0x66313600;
        v36 = v35 > 0x66313600;
        v37 = !v30;
        v15 = v36 == v37;
        v27 = 168;
        if (v15)
        {
          v27 = 152;
        }
      }

      else
      {
        v27 = 168;
      }

      v38 = *(a1 + v27);
      v39 = *(a1 + 464);
      v67 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (a1 + 8));
      v69 = *(a1 + 104);
      v9 = (*(*v39 + 112))(v39, &v67, 0, v38, *a2, 1, 0);
      if (!v68)
      {
        return v9;
      }
    }

    else
    {
      if (a4 >= 3)
      {
        v45 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v30 = v45 >= 0x66313600;
        v46 = v45 > 0x66313600;
        v47 = !v30;
        v15 = v46 == v47;
        v22 = 168;
        if (v15)
        {
          v22 = 152;
        }
      }

      else
      {
        v22 = 168;
      }

      v48 = *(a1 + v22);
      v49 = *(a1 + 464);
      v64 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (a1 + 8));
      v66 = *(a1 + 104);
      v9 = (*(*v49 + 112))(v49, &v64, 7, v48, *a2, 1, 0);
      if (!v65)
      {
        return v9;
      }
    }

    goto LABEL_70;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      return v9;
    }

    v14 = *(v12 + 14) ? 5 : 4;
    v15 = *(v12 + 13) == 0;
    v16 = 168;
    if (!v15)
    {
      v16 = 152;
    }

    v17 = *(a1 + v16);
    v18 = *(a1 + 464);
    v70 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (a1 + 8));
    v72 = *(a1 + 104);
    v9 = (*(*v18 + 112))(v18, &v70, v14, v17, *a2, 1, *(*(v10 + 8 * v11) + 12));
    if (!v71)
    {
      return v9;
    }

    goto LABEL_70;
  }

  v24 = *a2;
  v25 = *(*a1 + 112);

  return v25(a1, v24, v12 + 12);
}

uint64_t AGCLLVMAirBuiltins::buildPopCount(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = *(this + 24);
  if (*a2 == *(this + 23))
  {
    v6 = *(this + 24);
  }

  else
  {
    v6 = *a2;
    if (v4 != v5)
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(this + 58) + 912) + 52) == 1)
  {
    v6 = *(this + 25);
  }

LABEL_7:
  if (v6 == v5)
  {
    v7 = "llvm.ctpop.i16";
  }

  else
  {
    v7 = "llvm.ctpop.i32";
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v7, 14, v4, v4);
  v14 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 8, 39, a2, v6, v13);
  v12 = 257;
  v9 = llvm::IRBuilderBase::CreateCall(this + 8, *(v8 + 24), v8, &Cast, 1, v11);
  v14 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, v9, v4, v13);
}

uint64_t AGCLLVMAirBuiltins::buildBitMask(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantInt::get();
  v10 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((this + 8), v5, a2, v9);
  v8[16] = 257;
  return llvm::IRBuilderBase::CreateSub((this + 8), Shl, v5, v8);
}

uint64_t AGCLLVMAirBuiltins::buildExtractBits(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = **a2;
  v8 = 200;
  if (*(v7 + 8) >> 8 == 64)
  {
    v8 = 208;
  }

  v9 = *(a1 + v8);
  v10 = *(a2 + 16);
  v31 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v5, v9, v30);
  v31 = 257;
  v12 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v6, v9, v30);
  v31 = 257;
  v13 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v10, v9, v30);
  v31 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), Cast, v12, v30);
  v15 = AGCLLVMAirBuiltins::buildBitMask(a1, v13);
  v29 = 257;
  v16 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v15, v28);
  if (*a3 == 115)
  {
    v17 = llvm::ConstantInt::get();
    v31 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v13, v17, v30);
    v29 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v17, Sub, v28);
    v31 = 257;
    v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v16, Shl, v30);
    v21 = llvm::ConstantInt::get();
    v29 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v20, v21, v28);
    AllOnesValue = llvm::Constant::getAllOnesValue(v9, v22);
    v31 = 257;
    v24 = llvm::IRBuilderBase::CreateShl((a1 + 8), AllOnesValue, v13, v30);
    v29 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v16, v24, v28);
    v31 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  v25 = llvm::ConstantInt::get();
  v31 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v13, v25, v30);
  v29 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v31 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v7, v30);
}

uint64_t AGCLLVMAirBuiltins::buildInsertBits(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = **a2;
  v6 = 200;
  if (*(v5 + 8) >> 8 == 64)
  {
    v6 = 208;
  }

  v7 = *(a1 + v6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v26 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v8, v7, v25);
  v26 = 257;
  v11 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v7, v25);
  v12 = AGCLLVMAirBuiltins::buildBitMask(a1, v11);
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v12, Cast, v25);
  v26 = 257;
  v14 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v4, v7, v25);
  v26 = 257;
  v15 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v3, v7, v25);
  v26 = 257;
  Not = llvm::IRBuilderBase::CreateNot((a1 + 8), Shl, v25);
  v24 = 257;
  v17 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, Not, v23);
  v26 = 257;
  v18 = llvm::IRBuilderBase::CreateShl((a1 + 8), v15, Cast, v25);
  v24 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v18, Shl, v23);
  v26 = 257;
  llvm::IRBuilderBase::CreateOr((a1 + 8), v17, v19, v25);
  v20 = llvm::ConstantInt::get();
  v26 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v11, v20, v25);
  v24 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v26 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v5, v25);
}

uint64_t AGCLLVMAirBuiltins::buildReverseBits(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  if (*(*a2 + 8) >> 8 > 0x20u)
  {
    v13 = *(this + 25);
    v34 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(this + 8, 38, a2, v13, v33);
    v15 = *(this + 26);
    v16 = llvm::ConstantInt::get();
    v34 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((this + 8), a2, v16, v33);
    v18 = *(this + 25);
    v32 = 257;
    v19 = llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v18, __p);
    v20 = AGCLLVMAirBuiltins::buildReverseBits(this, Cast);
    v21 = AGCLLVMAirBuiltins::buildReverseBits(this, v19);
    v22 = *(this + 26);
    v34 = 257;
    v23 = llvm::IRBuilderBase::CreateCast(this + 8, 39, v20, v22, v33);
    v24 = *(this + 26);
    v34 = 257;
    v25 = llvm::IRBuilderBase::CreateCast(this + 8, 39, v21, v24, v33);
    v26 = *(this + 26);
    v27 = llvm::ConstantInt::get();
    v34 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((this + 8), v23, v27, v33);
    v32 = 257;
    return llvm::IRBuilderBase::CreateOr((this + 8), Shl, v25, __p);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, *(*(this + 58) + 1304));
    if (v31 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v31 >= 0)
    {
      v6 = v31;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v5, v6, *(this + 25), *(this + 25));
    v8 = *(this + 25);
    v34 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(this + 8, 39, a2, v8, v33);
    v34 = 257;
    v9 = llvm::IRBuilderBase::CreateCall(this + 8, *(v7 + 24), v7, &v35, 1, v33);
    v35 = v9;
    v10 = *(this + 25);
    v11 = llvm::ConstantInt::get();
    v34 = 257;
    v35 = llvm::IRBuilderBase::CreateLShr((this + 8), v9, v11, v33);
    v34 = 257;
    v12 = llvm::IRBuilderBase::CreateCast(this + 8, 38, v35, v4, v33);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v12;
}

uint64_t AGCLLVMAirBuiltins::buildSign(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v3 = *a2;
  llvm::ConstantFP::get();
  v4 = *a2;
  llvm::ConstantFP::get();
  v5 = *a2;
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildGCmp(AGCLLVMAirBuiltins *this, llvm::Value *a2, uint64_t a3)
{
  v6 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v7 = 192;
  if (*a2 == *(this + 21))
  {
    v7 = 200;
  }

  v8 = (*(*v6 + 144))(v6, &v10, a2, a3, *(this + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltins::buildGExp(AGCLLVMAirBuiltins *this, llvm::Value *a2, uint64_t a3)
{
  v6 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v7 = 152;
  if (*a2 == *(this + 25))
  {
    v7 = 168;
  }

  v8 = (*(*v6 + 152))(v6, &v10, a2, a3, *(this + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltins::buildFMedian3(void *a1, llvm::Value **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  AGCLLVMAirBuiltins::buildNanFMin(a1, *a2, v5);
  AGCLLVMAirBuiltins::buildNanFMax(a1, v4, v5);
  v23 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  Select = llvm::IRBuilderBase::CreateSelect();
  v8 = AGCLLVMAirBuiltins::buildNanFMin(a1, *a2, a2[1]);
  AGCLLVMAirBuiltins::buildNanFMin(a1, v8, a2[2]);
  if (*Select == a1[21])
  {
    v15 = a1[25];
    v23 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, Select, v15, v22);
    v17 = a1[25];
    v18 = llvm::ConstantInt::get();
    v23 = 257;
    v13 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v18, v22);
    v19 = a1[25];
  }

  else
  {
    v9 = a1[24];
    v23 = 257;
    v10 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, Select, v9, v22);
    v11 = a1[24];
    v12 = llvm::ConstantInt::get();
    v23 = 257;
    v13 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v10, v12, v22);
    v14 = a1[24];
  }

  v20 = llvm::ConstantInt::get();
  v23 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v13, v20, v22);
  v23 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildNanFMin(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
  }

  v8 = (*(*v6 + 48))(v6, &v10, a2, a3, v7 == *(this + 21));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltins::buildFastFMedian3(AGCLLVMAirBuiltins *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  AGCLLVMAirBuiltins::buildFastFMin(a1, *a2, v4);
  AGCLLVMAirBuiltins::buildFastFMax(a1, v3, v4);
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildProjectiveCoordinates(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  ShuffleVector = a2;
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(*a2 + 32);
  if (*(a2 + 16) == 74)
  {
    v5 = *(a2 - 4);
    v6 = *(v5 + 16);
    if (v5 && v6 == 91)
    {
      v7 = *(v5 - 64);
      v8 = v7[16];
      if (v8 == 73)
      {
        v9 = *(v5 - 64);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(*(v5 - 32) + 16);
      if (v10 == 73)
      {
        v11 = *(v5 - 32);
      }

      else
      {
        v11 = 0;
      }

      if (v9 | v11 && ((v8 - 11) < 2 || *(**(v9 - 32) + 24) == *(this + 21)))
      {
        if ((v10 - 11) <= 1)
        {
          v12 = *(this + 21);
          goto LABEL_21;
        }

        if (*(**(v11 - 32) + 24) == *(this + 21))
        {
LABEL_21:
          v13 = *(*v7 + 32);
          llvm::VectorType::get();
          if (v9)
          {
            v14 = *(v9 - 32);
            if (v11)
            {
LABEL_23:
              v15 = *(v11 - 32);
LABEL_26:
              v16 = *(v5 + 64);
              v17 = *(v5 + 72);
              v33 = 257;
              ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(this + 8, v14, v15, v16, v17, v32);
              goto LABEL_27;
            }
          }

          else
          {
            v14 = llvm::UndefValue::get();
            if (v11)
            {
              goto LABEL_23;
            }
          }

          v15 = llvm::UndefValue::get();
          goto LABEL_26;
        }
      }
    }

    else if (v5 && v6 == 73 && *(**(v5 - 32) + 24) == *(this + 21))
    {
      ShuffleVector = *(v5 - 32);
    }
  }

LABEL_27:
  v18 = *(this + 25);
  v38 = llvm::ConstantInt::get();
  v19 = *(this + 25);
  v39 = llvm::ConstantInt::get();
  v20 = *(this + 25);
  v40 = llvm::ConstantInt::get();
  v21 = AGCLLVMBuilder::subrangeVector(this, ShuffleVector, 0, v4 - 1, 1);
  v22 = llvm::ConstantVector::get();
  v33 = 257;
  v23 = llvm::IRBuilderBase::CreateShuffleVector((this + 8), ShuffleVector, ShuffleVector, v22, v32);
  v33 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, v21, v23, v32);
  v25 = *(this + 25);
  v34 = llvm::ConstantInt::get();
  v26 = *(this + 25);
  v35 = llvm::ConstantInt::get();
  v27 = *(this + 25);
  v36 = llvm::ConstantInt::get();
  v28 = *(this + 25);
  v37 = llvm::ConstantInt::get();
  v29 = llvm::ConstantVector::get();
  v33 = 257;
  result = llvm::IRBuilderBase::CreateShuffleVector((this + 8), FDiv, v23, v29, v32);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildSimdWidth(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 3)
  {
    v4 = bswap32(*a3 | (*(a3 + 2) << 16));
    v5 = v4 >= 0x69333200;
    v6 = v4 > 0x69333200;
    v7 = !v5;
    v8 = v6 == v7;
    v9 = 192;
    if (v8)
    {
      v9 = 200;
    }
  }

  else
  {
    v9 = 192;
  }

  v10 = *(a1 + v9);
  v11 = *(*(a1 + 464) + 968);
  return llvm::ConstantInt::get();
}

uint64_t AGCLLVMAirBuiltins::buildThreadExecutionWidth(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 3)
  {
    v4 = bswap32(*a3 | (*(a3 + 2) << 16));
    v5 = v4 >= 0x69333200;
    v6 = v4 > 0x69333200;
    v7 = !v5;
    v8 = v6 == v7;
    v9 = 192;
    if (v8)
    {
      v9 = 200;
    }
  }

  else
  {
    v9 = 192;
  }

  v10 = *(a1 + v9);
  v11 = *(*(a1 + 464) + 968);
  return llvm::ConstantInt::get();
}

void AGCLLVMAirBuiltins::replaceIsUniform(uint64_t a1, llvm::Instruction *a2)
{
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_IS_UNIFORM_STRIPPING", a2)) != 0 && *Value != 48 && atoi(Value))
  {
    v5 = *(a1 + 432);
    Function = llvm::Module::getFunction();
    v7 = *(a2 + 1);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 8);
        llvm::Instruction::eraseFromParent(*(v7 + 24));
        v7 = v8;
      }

      while (v8);
    }

    llvm::Instruction::eraseFromParent(a2);
    if (!*(Function + 1))
    {

      llvm::Function::eraseFromParent(Function);
    }
  }

  else
  {
    v9 = *(a2 - 4);
    v10 = *(v9 + 3);
    Name = llvm::Value::getName(v9);
    v13 = 14;
    if (v12 < 0xE)
    {
      v13 = v12;
    }

    v21[0] = v13 + Name;
    v21[1] = v12 - v13;
    llvm::StringRef::str(&v18, v21);
    v14 = std::string::insert(&v18, 0, "llvm.agx.is.uniform");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v20 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 432);
    llvm::Module::getOrInsertFunction();
    *(a2 + 9) = v10;
    llvm::CallBase::setCalledOperand(a2, v17);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t llvm::CallBase::setCalledOperand(uint64_t result, uint64_t a2)
{
  v2 = (result - 32);
  if (*(result - 32))
  {
    v3 = *(result - 24);
    **(result - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(result - 16);
    }
  }

  *v2 = a2;
  if (a2)
  {
    v6 = *(a2 + 8);
    v4 = (a2 + 8);
    v5 = v6;
    *(result - 24) = v6;
    if (v6)
    {
      *(v5 + 16) = result - 24;
    }

    *(result - 16) = v4;
    *v4 = v2;
  }

  return result;
}

uint64_t AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v2 = *(this + 26);
  v5 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 47, a2, v2, v4);
}

uint64_t AGCLLVMAirBuiltins::buildIMedian3(unsigned int **a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *a2;
  if (*a3 == 115)
  {
    v8 = AGCLLVMBuilder::buildICmpSel(a1, v7, v5, 40);
    v9 = AGCLLVMBuilder::buildICmpSel(a1, v4, v5, 38);
    v17 = 257;
    llvm::IRBuilderBase::CreateICmp(a1 + 1, 41, v6, v8, v16);
    v15 = 257;
    v10 = a1 + 1;
    v11 = 39;
  }

  else
  {
    v12 = AGCLLVMBuilder::buildICmpSel(a1, v7, v5, 36);
    v9 = AGCLLVMBuilder::buildICmpSel(a1, v4, v5, 34);
    v17 = 257;
    llvm::IRBuilderBase::CreateICmp(a1 + 1, 37, v6, v12, v16);
    v15 = 257;
    v10 = a1 + 1;
    v11 = 35;
  }

  llvm::IRBuilderBase::CreateICmp(v10, v11, v6, v9, v14);
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildFastFMax3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildFastFMax(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildFastFMax(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildFMax3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildNanFMax(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildNanFMax(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildIMax3(unsigned int **a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*a3 == 115)
  {
    v6 = 38;
  }

  else
  {
    v6 = 34;
  }

  v7 = AGCLLVMBuilder::buildICmpSel(a1, *a2, *(a2 + 8), v6);

  return AGCLLVMBuilder::buildICmpSel(a1, v7, v5, v6);
}

uint64_t AGCLLVMAirBuiltins::buildFastFMin3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildFastFMin(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildFastFMin(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildFMin3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildNanFMin(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildNanFMin(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildIMin3(unsigned int **a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*a3 == 115)
  {
    v6 = 40;
  }

  else
  {
    v6 = 36;
  }

  v7 = AGCLLVMBuilder::buildICmpSel(a1, *a2, *(a2 + 8), v6);

  return AGCLLVMBuilder::buildICmpSel(a1, v7, v5, v6);
}

uint64_t AGCLLVMAirBuiltins::buildIMad24(uint64_t a1, llvm::Value **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = AGCLLVMAirBuiltins::buildIMul24(a1, a2, a3, a4);
  v7 = a2[2];
  v10 = 257;
  return llvm::IRBuilderBase::CreateAdd((a1 + 8), v6, v7, v9);
}

uint64_t AGCLLVMAirBuiltins::buildIMul24(uint64_t a1, llvm::Value **a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *a3 == 115;
  }

  else
  {
    v6 = 0;
  }

  v7 = AGCLLVMAirBuiltins::truncateTo24B(a1, *a2, v6);
  v8 = AGCLLVMAirBuiltins::truncateTo24B(a1, a2[1], v6);
  v11 = 257;
  return llvm::IRBuilderBase::CreateMul((a1 + 8), v7, v8, v10);
}

uint64_t AGCLLVMAirBuiltins::truncateTo24B(AGCLLVMAirBuiltins *this, llvm::Value *a2, int a3)
{
  v13 = 257;
  v6 = *a2;
  v7 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((this + 8), a2, v7, v12);
  v13 = 257;
  v9 = *Shl;
  v10 = llvm::ConstantInt::get();
  if (a3)
  {
    return llvm::IRBuilderBase::CreateAShr((this + 8), Shl, v10, v12);
  }

  else
  {
    return llvm::IRBuilderBase::CreateLShr((this + 8), Shl, v10, v12);
  }
}

uint64_t llvm::IRBuilderBase::CreateAShr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 168))(*(this + 9));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildIMin(unsigned int **a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a3 == 115)
  {
    v4 = 40;
  }

  else
  {
    v4 = 36;
  }

  return AGCLLVMBuilder::buildICmpSel(a1, *a2, *(a2 + 8), v4);
}

uint64_t AGCLLVMAirBuiltins::buildIMax(unsigned int **a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a3 == 115)
  {
    v4 = 38;
  }

  else
  {
    v4 = 34;
  }

  return AGCLLVMBuilder::buildICmpSel(a1, *a2, *(a2 + 8), v4);
}

void *AGCLLVMAirBuiltins::buildMadSat(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a3;
  v8 = **a2;
  v9 = 1272;
  if (v7 == 115)
  {
    v9 = 1240;
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(a1 + 464) + v9, **a2);
  if (IntIntrinsicName)
  {
    v11 = IntIntrinsicName;
    v12 = strlen(IntIntrinsicName);
    v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v11, v12, v8, v8, v8, v8);
    v35[0] = v5;
    v35[1] = v4;
    v35[2] = v6;
    v34 = 257;
    result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v35, 3, v33);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    AGCLLVMTargetBuilder::getMinMaxConstants(*(a1 + 72), v8, v7 == 115, &v32, &v31, &v30);
    v15 = v30;
    v34 = 257;
    if (v7 == 115)
    {
      SExtOrTrunc = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v5, v30, v33);
      v34 = 257;
      v17 = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v4, v15, v33);
      v34 = 257;
      v18 = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v6, v15, v33);
      v34 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), SExtOrTrunc, v17, v33);
      v34 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Mul, v18, v33);
      v34 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Add, v32, v33);
      v36 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v34 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 38, Select, v31, v33);
      v36 = 257;
      v22 = llvm::IRBuilderBase::CreateSelect();
      v34 = 257;
      result = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v22, v8, v33);
    }

    else
    {
      ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v5, v30, v33);
      v34 = 257;
      v24 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v4, v15, v33);
      v34 = 257;
      v25 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v6, v15, v33);
      v34 = 257;
      v26 = llvm::IRBuilderBase::CreateMul((a1 + 8), ZExtOrTrunc, v24, v33);
      v34 = 257;
      v27 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v26, v25, v33);
      v34 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v27, v31, v33);
      v36 = 257;
      v28 = llvm::IRBuilderBase::CreateSelect();
      v34 = 257;
      result = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v28, v8, v33);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildSubSat(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = **a2;
  v8 = 1208;
  if (v6 == 115)
  {
    v8 = 1176;
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(a1 + 464) + v8, **a2);
  if (IntIntrinsicName)
  {
    v10 = IntIntrinsicName;
    v11 = strlen(IntIntrinsicName);
    v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v10, v11, v7, v7, v7);
    v45[0] = v4;
    v45[1] = v5;
    v44 = 257;
    result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v12 + 24), v12, v45, 2, v43);
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
    AGCLLVMTargetBuilder::getMinMaxConstants(*(a1 + 72), v7, v6 == 115, &v42, &v41, &v40);
    if (v6 == 115)
    {
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v40);
      if (ScalarSizeInBits <= llvm::Type::getScalarSizeInBits(v7))
      {
        v44 = 257;
        Neg = llvm::IRBuilderBase::CreateNeg((a1 + 8), v5, v43);
        AGCLLVMTargetBuilder::buildAddSat(a1, v4, Neg, 1);
        llvm::Type::getScalarSizeInBits(v7);
        v44 = 257;
        v29 = *v4;
        v30 = llvm::ConstantInt::get();
        LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v4, v30, v43);
        v32 = llvm::ConstantInt::get();
        v44 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, LShr, v32, v43);
        v46 = 257;
        llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v45);
        v39 = 257;
        llvm::IRBuilderBase::CreateSelect();
        v44 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v5, v42, v43);
        v46 = 257;
      }

      else
      {
        v44 = 257;
        Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v43);
        v44 = 257;
        Xor = llvm::IRBuilderBase::CreateXor((a1 + 8), v4, v5, v43);
        v46 = 257;
        v17 = llvm::IRBuilderBase::CreateXor((a1 + 8), v5, Sub, v45);
        v39 = 257;
        Not = llvm::IRBuilderBase::CreateNot((a1 + 8), v17, v38);
        v37 = 257;
        v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Xor, Not, v36);
        v20 = *v4;
        v21 = llvm::ConstantInt::get();
        v35 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v19, v21, v34);
        v22 = *v4;
        v23 = llvm::ConstantInt::get();
        v44 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 39, v4, v23, v43);
        v24 = *v4;
        v44 = 257;
        llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v24, v43);
        v25 = *v4;
        v46 = 257;
        llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v25, v45);
        v39 = 257;
        llvm::IRBuilderBase::CreateSelect();
        v44 = 257;
      }
    }

    else
    {
      v44 = 257;
      v26 = llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v43);
      v44 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v26, v4, v43);
      v27 = *v4;
      llvm::ConstantInt::get();
      v46 = 257;
    }

    result = llvm::IRBuilderBase::CreateSelect();
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildAbsDiff(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a3 == 117)
  {
    v12 = 257;
    v6 = (a1 + 8);
    v7 = 36;
  }

  else
  {
    v12 = 257;
    v6 = (a1 + 8);
    v7 = 40;
  }

  llvm::IRBuilderBase::CreateICmp(v6, v7, v4, v5, v11);
  v12 = 257;
  llvm::IRBuilderBase::CreateSub((a1 + 8), v5, v4, v11);
  v10 = 257;
  llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v9);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::CmpInst **AGCLLVMAirBuiltins::buildAbs(uint64_t a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a3 == 117)
  {
    goto LABEL_13;
  }

  v5 = *v3;
  if ((*(*v3 + 2) & 0xFE) == 0x12)
  {
    v5 = **(*v3 + 2);
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(a1 + 464) + 1072, v5);
  if (!IntIntrinsicName)
  {
    v19 = llvm::ConstantInt::get();
    v25 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v3, v19, v24);
    v25 = 257;
    llvm::IRBuilderBase::CreateNeg((a1 + 8), v3, v24);
    v25 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
LABEL_12:
    v3 = Select;
    goto LABEL_13;
  }

  v7 = IntIntrinsicName;
  v8 = strlen(IntIntrinsicName);
  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, v5, v5);
  v10 = v9;
  v26 = v3;
  if ((*(*v3 + 2) & 0xFE) != 0x12)
  {
    v25 = 257;
    Select = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v9 + 24), v9, &v26, 1, v24);
    goto LABEL_12;
  }

  v11 = **(*(v9 + 24) + 16);
  v12 = *(*v3 + 8);
  llvm::FixedVectorType::get();
  InsertElement = llvm::UndefValue::get();
  *v27 = 0u;
  v28 = 0u;
  AGCLLVMBuilder::unboxVector(a1, v3, v27);
  v14 = *(*v3 + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v23 = v27[i];
      v25 = 257;
      v16 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v10 + 24), v10, &v23, 1, v24);
      v23 = v16;
      v25 = 257;
      v17 = *(a1 + 200);
      v18 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v16, v18, v24);
    }
  }

  v3 = InsertElement;
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AGCLLVMAirTrigIdentities::buildTanArccos(AGCLLVMAirTrigIdentities *this, llvm::Value *a2)
{
  v4 = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity(this, a2);
  v7 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, v4, a2, v6);
}

llvm::Value *AGCLLVMAirTrigIdentities::buildPythagoreanIdentity(AGCLLVMAirTrigIdentities *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v11 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v10);
  v9[16] = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v5, FMul, v9);
  return AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
}

uint64_t AGCLLVMAirTrigIdentities::buildTanArcsin(AGCLLVMAirTrigIdentities *this, llvm::Value *a2)
{
  v4 = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity(this, a2);
  v7 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, a2, v4, v6);
}

uint64_t AGCLLVMAirTrigIdentities::buildCosArctan(AGCLLVMAirTrigIdentities *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v12 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v11);
  v10[16] = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v5, FMul, v10);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FAdd);
  v12 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, v5, Sqrt, v11);
}

uint64_t AGCLLVMAirTrigIdentities::buildSinArctan(AGCLLVMAirTrigIdentities *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v12 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v11);
  v10[16] = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v5, FMul, v10);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FAdd);
  v12 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, a2, Sqrt, v11);
}

uint64_t llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v4 = *(*a1 + 8 * i);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 5))
          {
            v7 = *(v4 + 4);
            if (v7)
            {
              v8 = 0;
              v9 = 8 * v7;
              do
              {
                v10 = *(v4[1] + v8);
                if (v10 != -8 && v10 != 0)
                {
                  llvm::deallocate_buffer(v10, (*v10 + 25));
                }

                v8 += 8;
              }

              while (v9 != v8);
            }
          }

          free(v4[1]);
          llvm::deallocate_buffer(v4, (v6 + 41));
        }
      }
    }
  }

  free(*a1);
  return a1;
}

uint64_t virtual thunk toAGCLLVMUserComputeKernelBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserComputeKernelBase *this)
{
  v1 = (this + *(*this - 240));
  if (*(*(v1 + *(*v1 - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserComputeKernelBase::getTempRegistersLimit(AGCLLVMUserComputeKernelBase *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  v6 = *(this + 1137);
  if (v6)
  {
    v7 = this + *(*this - 24);
    v8 = *(v7 + 271);
    if (*(v8 + 976) == 1)
    {
      v9 = *(v7 + 211);
      v10 = *(v8 + 980);
      v11 = *(v9 + 2016);
      v12 = v11 - 1;
      if ((v11 - 1) >= 0)
      {
        v13 = 0;
        v14 = *(v9 + 2008);
        do
        {
          v15 = (v12 + v13) >> 1;
          if (*(v14 + 4 * v15) < v6)
          {
            v12 = v15 - 1;
          }

          else
          {
            v13 = v15 + 1;
          }
        }

        while (v13 <= v12);
      }

      v16 = v10 / v11 * v12;
      if (v16 >= *a2)
      {
        v16 = *a2;
      }

      *a2 = v16;
      return 1;
    }
  }

  return result;
}

BOOL AGCLLVMUserComputeKernelLegacy::constructReply(AGCLLVMUserComputeKernelLegacy *this)
{
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v18 = AGCLLVMUserObject::constructFlatReply(this);
  if (*(this + 1140))
  {
    v2 = this + *(*this - 24);
    v2[4358] = 1;
    v3 = *(v2 + 1082);
    v4 = *(v2 + 1080) - *(v2 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v2 + 536, 6, **(this + 569));
    flatbuffers::FlatBufferBuilder::EndTable((v2 + 4288), v4 + v3);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  v6 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>> const&)::t, 0);
  v7 = this + *(*this - 24);
  v7[4358] = 1;
  v8 = *(v7 + 1082);
  v9 = *(v7 + 1080) - *(v7 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v7 + 4288), v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v7 + 536, 6, *(this + 8), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v7 + 536, 8, *(this + 9), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v7 + 536, 10, *(this + 4544), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 12, *(this + 1137));
  LODWORD(v7) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v9 + v8);
  v10 = this + *(*this - 24);
  v11 = *(v10 + 1080);
  v10[4358] = 1;
  v12 = *(v10 + 1082);
  v13 = v11 - *(v10 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v10 + 4288), v18);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v10 + 4288), v7);
  v14 = *(*this - 24);
  v15 = flatbuffers::FlatBufferBuilder::EndTable((v10 + 4288), v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4288), v15, v16);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  return AGCLLVMUserComputeKernelBase::validateReply(this);
}

BOOL AGCLLVMUserComputeKernelBase::validateReply(AGCLLVMUserComputeKernelBase *this)
{
  v2 = this + *(*this - 24);
  v3 = v2 + 2512;
  v4 = *(v2 + 314);
  if (v4)
  {
    if (*(v2 + 315))
    {
      v5 = v2 + 2512;
    }

    else
    {
      v5 = v2 + 3072;
    }
  }

  else
  {
    v5 = v2 + 3072;
  }

  v6 = (*v5 + **v5);
  v7 = (v6 + *(v6 - *v6 + 4));
  v8 = (v7 + *v7 + *(v7 + *v7 - *(v7 + *v7) + 8));
  if (*(v8 + *v8) > 0x20)
  {
    return 0;
  }

  if (v4)
  {
    v9 = *(v2 + 315);
    v10 = v2 + 3072;
    if (v9)
    {
      v10 = v3;
    }
  }

  else
  {
    v10 = v2 + 3072;
  }

  v13 = *v10;
  v12 = *(v10 + 1);
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v13 + *v13);
  }

  v16 = (v15 - *v15);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 - *v18);
  if (*v19 >= 0x3Du && (v20 = v19[30]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*this + 584))(this);
  v23 = (this + *(*this - 24) + 1656);

  return validateUserLocalMemoryUsage(v21, v22, v23);
}

void AGCLLVMUserComputeKernelBase::getCompilationKeyDescription(AGCLLVMUserComputeKernelBase *this@<X0>, std::string *a2@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(this + 567);
  std::string::basic_string[abi:nn200100]<0>(&v51, "AGCComputeStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v49, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v52);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v52.__r_.__value_.__r + *(v52.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v52.__r_.__value_.__r + *(v52.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v65, v49, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v52.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v52.__r_.__value_.__r.__words + *(v52.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v52.__r_.__value_.__r.__words[2] = v6;
  v53 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  v53 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v56);
  std::string::basic_string[abi:nn200100]<0>(v47, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v66, v47, *(v3 + 2));
  std::string::basic_string[abi:nn200100]<0>(v45, "wgSizeMultipleOfSIMDWidth");
  _agcFieldString<unsigned int>(&v67, v45, v3[2] & 1);
  std::string::basic_string[abi:nn200100]<0>(v43, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v68, v43, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v41, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v69, v41, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v39, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v70, v39, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v37, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v71, v37, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v35, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v72, v35, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v33, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v73, v33, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v31, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v74, v31, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v29, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v75, &v29, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v27, "enableStackShadow");
  _agcFieldString<unsigned int>(&v76, v27, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v25, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v77, v25, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v23, "textureWriteFPRoundingMode");
  _agcFieldString<unsigned int>(&v78, v23, (*(v3 + 4) >> 3) & 3);
  std::string::basic_string[abi:nn200100]<0>(v21, "unused");
  _agcFieldString<unsigned int>(&v79, v21, *(v3 + 4) >> 14);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v51;
  }

  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v63, 0);
  std::string::basic_string[abi:nn200100]<0>(v58, "{");
  _agcIndentedLine(&v60, v58, 0);
  if ((v62 & 0x80u) == 0)
  {
    v7 = &v60;
  }

  else
  {
    v7 = v60;
  }

  if ((v62 & 0x80u) == 0)
  {
    v8 = v62;
  }

  else
  {
    v8 = v61;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v62 < 0)
  {
    operator delete(v60);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 45; i += 3)
  {
    v12 = &v65 + i * 8;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 1));
    }

    else
    {
      __p = *v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v57, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = __p;
    }

    _agcIndentedLine(&v60, &v57, 1);
    if ((v62 & 0x80u) == 0)
    {
      v14 = &v60;
    }

    else
    {
      v14 = v60;
    }

    if ((v62 & 0x80u) == 0)
    {
      v15 = v62;
    }

    else
    {
      v15 = v61;
    }

    std::string::append(&v52, v14, v15);
    if (v62 < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v60, "}");
  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v60, 0);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v52;
  }

  else
  {
    v16 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v52.__r_.__value_.__l.__size_;
  }

  v18 = std::string::insert(&__p, 0, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v62 < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v19 = 45;
  do
  {
    if (v65.__r_.__value_.__s.__data_[v19 * 8 - 1] < 0)
    {
      operator delete(__p.__r_.__value_.__r.__words[v19 + 1]);
    }

    v19 -= 3;
  }

  while (v19 * 8);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

const char *virtual thunk toAGCLLVMUserComputeKernelBase::getMaxTempRegistersOverride(AGCLLVMUserComputeKernelBase *this, const char *a2)
{
  v3 = *(*this - 128);
  result = AGCLLVMObject::getMaxTempRegistersOverride(this, a2);
  if (!result)
  {
    return (*(*(this + v3 + 4536) + 12) >> 10);
  }

  return result;
}

const char *AGCLLVMUserComputeKernelBase::getMaxTempRegistersOverride(AGCLLVMUserComputeKernelBase *this, const char *a2)
{
  result = AGCLLVMObject::getMaxTempRegistersOverride(this, a2);
  if (!result)
  {
    return (*(*(this + 567) + 12) >> 10);
  }

  return result;
}

void virtual thunk toAGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(AGCLLVMUserComputeKernelLegacy *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v1 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (v1 + 5008);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(AGCLLVMUserComputeKernelLegacy *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[10];
  *(this + *(*this - 24) + 1704) = a2[11];
  v5 = *(this + 624);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4976));
  }

  v7 = *(this + 621);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4952));
  }

  v8 = *(this + 618);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4928));
  }

  v9 = (this + 4904);
  v10 = -72;
  do
  {
    v11 = *(v9 + 2);
    if (v11 != -8192 && v11 != -4096 && v11 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v9);
    }

    v9 = (v9 - 24);
    v10 += 24;
  }

  while (v10);
  v13 = *(this + 606);
  if (v13 != -8192 && v13 != -4096 && v13 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4832));
  }

  v15 = *(this + 603);
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4808));
  }

  v16 = *(this + 600);
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4784));
  }

  v17 = *(this + 597);
  if (v17 != -8192 && v17 != -4096 && v17)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4760));
  }

  v18 = (this + 4736);
  v19 = -72;
  do
  {
    v20 = *(v18 + 2);
    if (v20 != -8192 && v20 != -4096 && v20 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v18);
    }

    v18 = (v18 - 24);
    v19 += 24;
  }

  while (v19);
  v22 = *(this + 585);
  if (v22 != -8192 && v22 != -4096 && v22 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4664));
  }

  v24 = (this + 4640);
  v25 = -72;
  do
  {
    v26 = *(v24 + 2);
    if (v26 != -8192 && v26 != -4096 && v26 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v24);
    }

    v24 = (v24 - 24);
    v25 += 24;
  }

  while (v25);
  v28 = *(this + 569);
  if (v28 != this + 4568)
  {
    free(v28);
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 2);
}

llvm::Value *AGCLLVMUserComputeKernelBase::constructStageInGridConstant(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1[559])
  {
    v8 = *(a1 + *(*a1 - 24) + 1904);
    v9 = llvm::PointerType::get();
    v10 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 496))();
    v55[0] = "agc.stagein_buffer_pointer.";
    v55[2] = v10;
    v56 = 2051;
    v11 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 496))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, v9, v55, v11, 24, 5, 0);
    llvm::ValueHandleBase::operator=((a1 + 557), GlobalBufferBinding);
  }

  v13 = *(a1 + *(*a1 - 24) + 1904);
  llvm::FixedVectorType::get();
  v14 = llvm::UndefValue::get();
  v15 = a1 + *(*a1 - 24);
  v16 = a1[559];
  v56 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), v16, v55);
  if (a3 == 22)
  {
    if (*a2 != 0x676174732E726961 || a2[1] != 0x6972675F6E695F65 || *(a2 + 14) != 0x657A69735F646972)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 24)
    {
      return 0;
    }

    v18 = *a2 == 0x676174732E726961 && a2[1] == 0x6972675F6E695F65;
    if (!v18 || a2[2] != 0x6E696769726F5F64)
    {
      return 0;
    }
  }

  v23 = a1 + *(*a1 - 24);
  v24 = *(v23 + 238);
  v25 = llvm::ConstantInt::get();
  v56 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v23 + 1712), v24, Load, v25, v55);
  v27 = a1 + *(*a1 - 24);
  v56 = 257;
  v28 = AGCLLVMBuilder::CreateLoad((v27 + 1704), GEP, v55);
  v29 = a1 + *(*a1 - 24);
  v56 = 257;
  v30 = *(v29 + 238);
  v31 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((v29 + 1712), v14, v28, v31, v55);
  v33 = a1 + *(*a1 - 24);
  v34 = *(v33 + 238);
  v35 = llvm::ConstantInt::get();
  v56 = 257;
  v36 = llvm::IRBuilderBase::CreateGEP((v33 + 1712), v34, Load, v35, v55);
  v37 = a1 + *(*a1 - 24);
  v56 = 257;
  v38 = AGCLLVMBuilder::CreateLoad((v37 + 1704), v36, v55);
  v39 = a1 + *(*a1 - 24);
  v56 = 257;
  v40 = *(v39 + 238);
  v41 = llvm::ConstantInt::get();
  v42 = llvm::IRBuilderBase::CreateInsertElement((v39 + 1712), InsertElement, v38, v41, v55);
  v43 = a1 + *(*a1 - 24);
  v44 = *(v43 + 238);
  v45 = llvm::ConstantInt::get();
  v56 = 257;
  v46 = llvm::IRBuilderBase::CreateGEP((v43 + 1712), v44, Load, v45, v55);
  v47 = a1 + *(*a1 - 24);
  v56 = 257;
  v48 = AGCLLVMBuilder::CreateLoad((v47 + 1704), v46, v55);
  v49 = a1 + *(*a1 - 24);
  v56 = 257;
  v50 = *(v49 + 238);
  v51 = llvm::ConstantInt::get();
  v52 = llvm::IRBuilderBase::CreateInsertElement((v49 + 1712), v42, v48, v51, v55);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    v53 = *(a4 + 32);
  }

  else
  {
    v53 = 1;
  }

  v54 = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), v52, 0, v53, 1);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    a4 = **(a4 + 16);
  }

  return AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), v54, a4);
}

uint64_t AGCLLVMUserComputeKernelBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserComputeKernelBase *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(this);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserComputeKernelBase::optimizeThreadgroupBarriers(uint64_t this)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(this + 4548) - 33) >= 0xFFFFFFE0)
  {
    v1 = this;
    v2 = this + *(*this - 24);
    if (*(v2 + 2224) == 1)
    {
      v3 = *(v2 + 1848);
      v7 = *(v2 + 1904);
      llvm::FunctionType::get();
      v4 = *(v1 + *(*v1 - 24) + 2136);
      llvm::Module::getOrInsertFunction();
      v5 = *(v1 + *(*v1 - 24) + 5128);
      this = llvm::Value::replaceAllUsesWith();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t AGCLLVMUserComputeKernelBase::setupShaderOutputs(AGCLLVMUserComputeKernelBase *this)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  if ((*(*(this + 567) + 16) & 0x40) != 0)
  {
    v4 = *(this + *(*this - 24) + 2136);
    v5 = v4 + 24;
    v6 = *(v4 + 32);
    if (v6 != v4 + 24)
    {
      v7 = this + 2160;
      do
      {
        if (v6)
        {
          v8 = v6 - 56;
        }

        else
        {
          v8 = 0;
        }

        v14[0] = *(v8 + 112);
        llvm::AttributeList::getFnAttrs(v14);
        v9 = *&v7[*(*this - 24)];
        v13 = llvm::AttributeSet::addAttribute();
        v10 = *&v7[*(*this - 24)];
        LODWORD(v14[0]) = -1;
        v14[1] = v13;
        *(v8 + 112) = llvm::AttributeList::get();
        v6 = *(v6 + 8);
      }

      while (v6 != v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMUserComputeKernelBase::setupShaderInputs(AGCLLVMUserComputeKernelBase *this)
{
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v6 = *(this + 21);
    v5 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  for (i = *(v2 + 88) + 40 * *(v2 + 96); v5 != i; v5 += 5)
  {
    if (v5[1])
    {
      v8 = *(v4 + 40);
      v9 = v8 ? (v8 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v9, *(this + 5));
      v10 = *(v5 + 8);
      v11 = *(*(this + 10) + 8 * v10);
      if ((AGCLLVMUserShader::replaceInputArgument(this, v5, v10, v11) & 1) == 0)
      {
        String = llvm::MDString::getString(*(v11 - 8 * *(v11 + 8) + 8));
        result = (*(*this + 568))(this, String, v13, *v5);
        if (!result)
        {
          return result;
        }

        llvm::Value::replaceAllUsesWith();
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserComputeKernelBase::wrapperPrefixData(AGCLLVMUserComputeKernelBase *this)
{
  v1 = this + *(*this - 24);
  if (!*(*(*(v1 + 271) + 912) + 60))
  {
    return 0;
  }

  v2 = *(v1 + 236);
  llvm::ConstantInt::get();

  return llvm::ConstantDataVector::getSplat();
}

void AGCLLVMUserComputeKernelBase::addInitCompilePass(AGCLLVMUserComputeKernelBase *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelBase>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileComputeKernelCommonPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x54)
  {
    v1 = v0;
  }

  else
  {
    v1 = 84;
  }

  v2 = &aStringrefLlvmG_33[v1];
  v3 = 84 - v1;
  if ((84 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 84 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeKernelCommonPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeKernelCommonPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGKernelPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 76;
  }

  v2 = &aStringrefLlvmG_32[v1];
  v3 = 76 - v1;
  if ((76 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 76 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGKernelPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGKernelPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelBase>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 108;
  }

  v2 = &aStringrefLlvmG_31[v1];
  v3 = 108 - v1;
  if ((108 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 108 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMUserComputeKernelLegacy::replaceBuiltins(AGCLLVMUserComputeKernelLegacy *this)
{
  v1 = this;
  v189 = *MEMORY[0x277D85DE8];
  v147 = AGCLLVMUserObject::replaceBuiltins(this);
  if (!v147)
  {
    goto LABEL_163;
  }

  v2 = *(*(v1 + 20) + 80);
  if (v2)
  {
    v3 = (v2 - 24);
  }

  else
  {
    v3 = 0;
  }

  v150 = v1;
  if (*(v1 + 4544) == 1)
  {
    *&v173 = llvm::BasicBlock::getFirstInsertionPt(v3);
    AGCLLVMUserObject::hoistAllocas(v1, v3, &v173);
    v176 = "kernel_entry";
    v180 = 259;
    llvm::BasicBlock::splitBasicBlock();
    v4 = *(v1 + *(*v1 - 24) + 2160);
    v176 = "early_out_block";
    v180 = 259;
    v5 = *(v3 + 7);
    operator new();
  }

  v6 = v1 + *(*v1 - 24);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v3);
  llvm::IRBuilderBase::SetInsertPoint((v6 + 1712), v3, FirstInsertionPt);
  v8 = 0;
  v9 = (v1 + 4592);
  v10 = 1;
  do
  {
    v11 = AGCLLVMUserComputeKernelLegacy::buildLocalIDInternal(v1, *(v1 + *(*v1 - 24) + 1904), v8);
    llvm::ValueHandleBase::operator=(v9, v11);
    v10 &= *(v9 + 2) != 0;
    ++v8;
    v9 = (v9 + 24);
  }

  while (v8 != 3);
  if (v10)
  {
    v12 = (v1 + *(*v1 - 24));
    v13 = *(v1 + 582);
    v14 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(v1, v12[238], 1u);
    v180 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v12 + 214), v13, v14, &v176);
    llvm::ValueHandleBase::operator=((v1 + 4664), Mul);
    v16 = v1 + *(*v1 - 24);
    v17 = *(v1 + 585);
    v18 = *(v1 + 579);
    v180 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v16 + 1712), v17, v18, &v176);
    llvm::ValueHandleBase::operator=((v1 + 4664), Add);
    v20 = (v1 + *(*v1 - 24));
    v21 = *(v1 + 585);
    v22 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(v1, v20[238], 0);
    v180 = 257;
    v23 = llvm::IRBuilderBase::CreateMul((v20 + 214), v21, v22, &v176);
    llvm::ValueHandleBase::operator=((v1 + 4664), v23);
    v24 = v1 + *(*v1 - 24);
    v25 = *(v1 + 585);
    v26 = *(v1 + 576);
    v180 = 257;
    v27 = llvm::IRBuilderBase::CreateAdd((v24 + 1712), v25, v26, &v176);
    llvm::ValueHandleBase::operator=((v1 + 4664), v27);
  }

  v28 = *(v1 + *(*v1 - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v176, *v28);
  v185 = v1;
  v176 = &unk_28259D908;
  v184[37] = v28;
  {
    AGCLLVMUserComputeKernelLegacy::replaceWorkitemFunctions(void)::workitem_functions[0] = "air.get_global_size.i32";
    dword_28117D8B0 = 1;
    qword_28117D8B8 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize;
    unk_28117D8C0 = 0;
    dword_28117D8C8 = 4;
    word_28117D8CC = 0;
    qword_28117D8D0 = "air.get_global_size.i16";
    dword_28117D8D8 = 1;
    qword_28117D8E0 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize;
    unk_28117D8E8 = 0;
    dword_28117D8F0 = 4;
    word_28117D8F4 = 0;
    qword_28117D8F8 = "air.get_global_id.i32";
    dword_28117D900 = 1;
    qword_28117D908 = AGCLLVMUserComputeKernelLegacy::buildGlobalID;
    unk_28117D910 = 0;
    dword_28117D918 = 4;
    word_28117D91C = 0;
    qword_28117D920 = "air.get_global_id.i16";
    dword_28117D928 = 1;
    qword_28117D930 = AGCLLVMUserComputeKernelLegacy::buildGlobalID;
    unk_28117D938 = 0;
    dword_28117D940 = 4;
    word_28117D944 = 0;
    qword_28117D948 = "air.get_local_size.i32";
    dword_28117D950 = 1;
    qword_28117D958 = AGCLLVMUserComputeKernelLegacy::buildLocalSize;
    unk_28117D960 = 0;
    dword_28117D968 = 4;
    word_28117D96C = 0;
    qword_28117D970 = "air.get_local_size.i16";
    dword_28117D978 = 1;
    qword_28117D980 = AGCLLVMUserComputeKernelLegacy::buildLocalSize;
    unk_28117D988 = 0;
    dword_28117D990 = 4;
    word_28117D994 = 0;
    qword_28117D998 = "air.get_local_id.i32";
    dword_28117D9A0 = 1;
    qword_28117D9A8 = AGCLLVMUserComputeKernelLegacy::buildLocalID;
    unk_28117D9B0 = 0;
    dword_28117D9B8 = 4;
    word_28117D9BC = 0;
    qword_28117D9C0 = "air.get_local_id.i16";
    dword_28117D9C8 = 1;
    qword_28117D9D0 = AGCLLVMUserComputeKernelLegacy::buildLocalID;
    unk_28117D9D8 = 0;
    dword_28117D9E0 = 4;
    word_28117D9E4 = 0;
    qword_28117D9E8 = "air.get_local_linear_id.i32";
    dword_28117D9F0 = 1;
    qword_28117D9F8 = AGCLLVMUserComputeKernelLegacy::buildLocalLinearId;
    unk_28117DA00 = 0;
    dword_28117DA08 = 2;
    word_28117DA0C = 0;
    qword_28117DA10 = "air.get_local_linear_id.i16";
    dword_28117DA18 = 1;
    qword_28117DA20 = AGCLLVMUserComputeKernelLegacy::buildLocalLinearId;
    unk_28117DA28 = 0;
    dword_28117DA30 = 2;
    word_28117DA34 = 0;
    qword_28117DA38 = "air.get_global_linear_id.i32";
    dword_28117DA40 = 1;
    qword_28117DA48 = AGCLLVMUserComputeKernelLegacy::buildGlobalLinearId;
    unk_28117DA50 = 0;
    dword_28117DA58 = 2;
    word_28117DA5C = 0;
    qword_28117DA60 = "air.get_global_linear_id.i16";
    dword_28117DA68 = 1;
    qword_28117DA70 = AGCLLVMUserComputeKernelLegacy::buildGlobalLinearId;
    unk_28117DA78 = 0;
    dword_28117DA80 = 2;
    word_28117DA84 = 0;
    qword_28117DA88 = "air.get_num_groups.i32";
    dword_28117DA90 = 1;
    qword_28117DA98 = AGCLLVMUserComputeKernelLegacy::buildNumGroups;
    unk_28117DAA0 = 0;
    dword_28117DAA8 = 4;
    word_28117DAAC = 0;
    qword_28117DAB0 = "air.get_num_groups.i16";
    dword_28117DAB8 = 1;
    qword_28117DAC0 = AGCLLVMUserComputeKernelLegacy::buildNumGroups;
    qword_28117DAC8 = 0;
    dword_28117DAD0 = 4;
    word_28117DAD4 = 0;
    qword_28117DAD8 = "air.get_group_id.i32";
    dword_28117DAE0 = 1;
    qword_28117DAE8 = AGCLLVMUserComputeKernelLegacy::buildGroupID;
    qword_28117DAF0 = 0;
    dword_28117DAF8 = 4;
    word_28117DAFC = 0;
    qword_28117DB00 = "air.get_group_id.i16";
    dword_28117DB08 = 1;
    qword_28117DB10 = AGCLLVMUserComputeKernelLegacy::buildGroupID;
    qword_28117DB18 = 0;
    dword_28117DB20 = 4;
    word_28117DB24 = 0;
    qword_28117DB28 = "air.get_stage_in_grid_origin.i32";
    dword_28117DB30 = 1;
    qword_28117DB38 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117DB40 = 0;
    dword_28117DB48 = 4;
    word_28117DB4C = 0;
    qword_28117DB50 = "air.get_stage_in_grid_origin.i16";
    dword_28117DB58 = 1;
    qword_28117DB60 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117DB68 = 0;
    dword_28117DB70 = 4;
    word_28117DB74 = 0;
    qword_28117DB78 = "air.get_stage_in_grid_size.i32";
    dword_28117DB80 = 1;
    qword_28117DB88 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117DB90 = 0;
    dword_28117DB98 = 4;
    word_28117DB9C = 0;
    qword_28117DBA0 = "air.get_stage_in_grid_size.i16";
    dword_28117DBA8 = 1;
    qword_28117DBB0 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117DBB8 = 0;
    dword_28117DBC0 = 4;
    word_28117DBC4 = 0;
  }

  for (i = 0; i != 20; ++i)
  {
    v30 = &AGCLLVMUserComputeKernelLegacy::replaceWorkitemFunctions(void)::workitem_functions[5 * i];
    v162 = v30;
    if (*v30)
    {
      v31 = strlen(*v30);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v33 = *(v162 + 8);
      v149 = i;
      v151 = Function;
      if (v33 == 12)
      {
        for (j = *(Function + 8); j; v181 = 0uLL)
        {
          v37 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(&v177, v37);
          v38 = v185 + *(*v185 - 24);
          v173 = v181;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v174, &v177);
          v175 = v182;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v173, (v38 + 1712));
          if (v174)
          {
            llvm::MetadataTracking::untrack();
          }

          v39 = *(v162 + 2);
          v40 = *(v162 + 3);
          v41 = (v185 + (v40 >> 1));
          if (v40)
          {
            v39 = *(*v41 + v39);
          }

          v39(v41, v37);
        }

        goto LABEL_132;
      }

      if (v33 == 11)
      {
        v34 = *(v162 + 2);
        if (v34)
        {
          v35 = strlen(*(v162 + 2));
          *&v186[0] = &v186[1] + 8;
          *(v186 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v186, v34, &v34[v35]);
        }

        else
        {
          *&v186[1] = 64;
          v186[0] = &v186[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v186, ".", "");
        if (*&v186[1] < *(&v186[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v105 = *(v151 + 3);
        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v186[0] != (&v186[1] + 8))
        {
          free(*&v186[0]);
        }

        goto LABEL_132;
      }

      v42 = **(*(Function + 24) + 16);
      v43 = ((*(v42 + 8) & 0xFE) == 18) & *(v162 + 37);
      if (v43 == 1)
      {
        v44 = *(v42 + 32);
      }

      else
      {
        v44 = 1;
      }

      v157 = v44;
      v148 = v182;
      v45 = *(Function + 8);
      if (!v45)
      {
LABEL_126:
        v182 = v148;
        v1 = v150;
LABEL_132:
        llvm::Function::eraseFromParent(v151);
        i = v149;
        continue;
      }

      v153 = **(*(Function + 24) + 16);
      while (1)
      {
        v46 = *(v45 + 24);
        v155 = *(v45 + 8);
        v47 = *(v162 + 2);
        if (v47 == 1)
        {
          v48 = 0;
        }

        else
        {
          if (v47 != 2)
          {
            goto LABEL_37;
          }

          v48 = 121;
        }

        v182 = v48;
LABEL_37:
        llvm::IRBuilderBase::SetInsertPoint(&v177, v46);
        v49 = llvm::UndefValue::get();
        if (v157)
        {
          for (k = 0; k != v157; ++k)
          {
            v160 = v49;
            v188 = 0;
            v187 = 0u;
            memset(v186, 0, sizeof(v186));
            v51 = llvm::CallBase::arg_end(v46) - v46 + 32 * (*(v46 + 5) & 0x7FFFFFF);
            if ((v51 & 0x1FFFFFFFE0) != 0)
            {
              v52 = (v51 >> 5);
              v53 = v186;
              v54 = v46;
              do
              {
                v55 = (v54 - 32 * (*(v46 + 5) & 0x7FFFFFF));
                v56 = *v55;
                *v53 = *v55;
                if (v43 && (*(*v56 + 8) & 0xFE) == 0x12)
                {
                  v172 = 257;
                  v57 = llvm::ConstantInt::get();
                  *v53 = llvm::IRBuilderBase::CreateExtractElement(&v177, v56, v57, &PrimitiveSizeInBits);
                }

                ++v53;
                v54 = (v54 + 32);
                --v52;
              }

              while (v52);
            }

            if (*(v162 + 36))
            {
              v58 = **&v186[0];
              if ((*(**&v186[0] + 8) & 0xFE) == 0x12)
              {
                v58 = **(v58 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v58);
              LODWORD(v171) = v59;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v60 = 0;
              }

              else
              {
                v61 = v184[4];
                if ((*(**&v186[0] + 8) & 0xFE) == 0x12)
                {
                  v62 = *(**&v186[0] + 32);
                  v61 = llvm::FixedVectorType::get();
                }

                if ((v51 & 0x1FFFFFFFE0) != 0)
                {
                  v63 = (v51 >> 5);
                  v64 = v186;
                  do
                  {
                    v65 = *v64;
                    v172 = 257;
                    *v64++ = llvm::IRBuilderBase::CreateFPExt(&v177, v65, v61, &PrimitiveSizeInBits);
                    --v63;
                  }

                  while (v63);
                }

                v60 = 1;
              }
            }

            else
            {
              v60 = 0;
            }

            if (llvm::FPMathOperator::classof(v46))
            {
              FastMathFlags = llvm::Instruction::getFastMathFlags(v46);
            }

            else
            {
              FastMathFlags = 0;
            }

            v67 = v185 + *(*v185 - 24);
            v167 = v181;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v168, &v177);
            v169 = v182;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v167, (v67 + 1712));
            if (v168)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v69 = *(v162 + 8);
            if (v69 > 5)
            {
              if (v69 <= 7)
              {
                if (v69 == 6)
                {
                  v83 = *(v162 + 2);
                  v92 = *(v162 + 3);
                  v86 = *(&v186[0] + 1);
                  v85 = *&v186[0];
                  v88 = (v185 + (v92 >> 1));
                  if (v92)
                  {
                    v83 = *(*v88 + v83);
                  }

                  v87 = FastMathFlags;
                }

                else
                {
                  v83 = *(v162 + 2);
                  v84 = *(v162 + 3);
                  v86 = *(&v186[0] + 1);
                  v85 = *&v186[0];
                  v87 = *&v186[1];
                  v88 = (v185 + (v84 >> 1));
                  if (v84)
                  {
                    v94 = (*(*v88 + v83))(v88, *&v186[0], *(&v186[0] + 1), *&v186[1]);
                    goto LABEL_112;
                  }
                }

LABEL_111:
                v94 = v83(v88, v85, v86, v87);
                goto LABEL_112;
              }

              switch(v69)
              {
                case 8:
                  v75 = *(v162 + 2);
                  v95 = *(v162 + 3);
                  v96 = *(&v186[0] + 1);
                  v77 = *&v186[0];
                  v97 = *&v186[1];
                  v78 = (v185 + (v95 >> 1));
                  if (v95)
                  {
                    v75 = *(*v78 + v75);
                  }

                  v101 = FastMathFlags;
                  goto LABEL_107;
                case 9:
                  v83 = *(v162 + 2);
                  v100 = *(v162 + 3);
                  v88 = (v185 + (v100 >> 1));
                  if (v100)
                  {
                    v83 = *(*v88 + v83);
                  }

                  v85 = v186;
                  v86 = &unk_20E75F419;
                  v87 = 0;
                  goto LABEL_111;
                case 10:
                  v75 = *(v162 + 2);
                  v76 = *(v162 + 3);
                  v77 = *v46;
                  v78 = (v185 + (v76 >> 1));
                  if (v76)
                  {
                    v75 = *(*v78 + v75);
                  }

                  v96 = v186;
                  v97 = &unk_20E75F419;
                  v101 = 0;
LABEL_107:
                  v94 = v75(v78, v77, v96, v97, v101);
                  goto LABEL_112;
              }
            }

            else
            {
              if (v69 > 2)
              {
                if (v69 != 3)
                {
                  if (v69 == 4)
                  {
                    v98 = (*&v186[0] + 24);
                    if (*(*&v186[0] + 32) >= 0x41u)
                    {
                      v98 = *v98;
                    }

                    v73 = *v98;
                    v70 = *(v162 + 2);
                    v99 = *(v162 + 3);
                    v72 = *v46;
                    v74 = (v185 + (v99 >> 1));
                    if (v99)
                    {
                      v70 = *(*v74 + v70);
                    }
                  }

                  else
                  {
                    v70 = *(v162 + 2);
                    v71 = *(v162 + 3);
                    v73 = *(&v186[0] + 1);
                    v72 = *&v186[0];
                    v74 = (v185 + (v71 >> 1));
                    if (v71)
                    {
                      v70 = *(*v74 + v70);
                    }
                  }

                  v94 = v70(v74, v72, v73);
                  goto LABEL_112;
                }

                v79 = *(v162 + 2);
                v93 = *(v162 + 3);
                v81 = *&v186[0];
                v82 = (v185 + (v93 >> 1));
                if ((v93 & 1) == 0)
                {
                  goto LABEL_87;
                }

                goto LABEL_86;
              }

              if (v69 == 1)
              {
                v89 = *(v162 + 2);
                v90 = *(v162 + 3);
                v91 = (v185 + (v90 >> 1));
                if (v90)
                {
                  v89 = *(*v91 + v89);
                }

                v94 = v89(v91);
                goto LABEL_112;
              }

              if (v69 == 2)
              {
                v79 = *(v162 + 2);
                v80 = *(v162 + 3);
                v81 = *v46;
                v82 = (v185 + (v80 >> 1));
                if ((v80 & 1) == 0)
                {
LABEL_87:
                  v94 = v79(v82, v81);
LABEL_112:
                  FPTrunc = v94;
                  goto LABEL_113;
                }

LABEL_86:
                v79 = *(*v82 + v79);
                goto LABEL_87;
              }
            }

LABEL_113:
            v102 = v185 + *(*v185 - 24);
            v164 = *(v102 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v165, (v102 + 1712));
            v166 = *(v102 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v164, &v177);
            if (v165)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v60)
            {
              v103 = *v46;
              if (v43 && (*(v103 + 8) & 0xFE) == 0x12)
              {
                v103 = **(v103 + 16);
              }

              v172 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(&v177, FPTrunc, v103, &PrimitiveSizeInBits);
            }

            if (v43)
            {
              v172 = 257;
              v104 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(&v177, v160, FPTrunc, v104, &PrimitiveSizeInBits);
            }

            v49 = FPTrunc;
          }
        }

        if (*v46 != v184[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v46);
        v45 = v155;
        if (!v155)
        {
          goto LABEL_126;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v184);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v183);
  if (v177 != &v179)
  {
    free(v177);
  }

  v106 = v1 + *(*v1 - 24);
  if (v106[2224] == 1)
  {
    if (!*(v1 + 600))
    {
      v176 = "agc.barrier_target_count";
      v180 = 259;
      v107 = *(v106 + 238);
      v108 = AGCLLVMUserComputeKernelBase::constructSHGlobal(v1);
      llvm::ValueHandleBase::operator=((v1 + 4784), v108);
    }

    if (!*(v1 + 603))
    {
      v109 = llvm::User::operator new(0x58);
      v110 = v1 + *(*v1 - 24);
      v111 = *(v110 + 267);
      v112 = *(v110 + 238);
      v176 = "agc.barrier_counter";
      v180 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      llvm::GlobalObject::setAlignment();
      llvm::ValueHandleBase::operator=((v1 + 4808), v109);
    }

    v113 = *(*(v1 + *(*v1 - 24) + 5128) + 8);
    if (v113)
    {
      v114 = 0;
      v158 = v1 + 1848;
      v159 = v1 + 2168;
      v161 = (v1 + 1712);
      v163 = (v1 + 1904);
      v154 = v1 + 1704;
      v156 = v1 + 2136;
      v152 = (v1 + 1888);
      v115 = 1;
      do
      {
        v116 = *(v113 + 24);
        v117 = *(v116 - 4 * (*(v116 + 5) & 0x7FFFFFF));
        v118 = (v117 + 24);
        if (*(v117 + 32) >= 0x41u)
        {
          v118 = *v118;
        }

        v113 = *(v113 + 8);
        v119 = *v118;
        v176 = &v178;
        v177 = 0x400000000;
        v120 = *(v163 + *(*v150 - 24));
        v121 = llvm::PointerType::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, v121);
        v122 = *(v163 + *(*v150 - 24));
        v123 = llvm::PointerType::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, v123);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, *(v163 + *(*v150 - 24)));
        v124 = *(*v150 - 24);
        v125 = *(v150 + v124 + 2168);
        if (*(v125 + 1040))
        {
          v126 = (v119 & 1) == 0;
        }

        else
        {
          v126 = 1;
        }

        if (v126)
        {
          v129 = (v125 + 1032);
        }

        else
        {
          v127 = *(v150 + v124 + 1888);
          v128 = llvm::PointerType::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, v128);
          v124 = *(*v150 - 24);
          v129 = (*&v159[v124] + 1040);
        }

        v130 = *v129;
        v131 = *&v158[v124];
        llvm::FunctionType::get();
        if (v130)
        {
          strlen(v130);
        }

        v132 = *&v156[*(*v150 - 24)];
        llvm::Module::getOrInsertFunction();
        v134 = v133;
        if (v176 != &v178)
        {
          free(v176);
        }

        llvm::IRBuilderBase::SetInsertPoint((v161 + *(*v150 - 24)), v116);
        v176 = &v178;
        v177 = 0x400000000;
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, *(v150 + 603));
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, *(v150 + 600));
        v135 = *(v163 + *(*v150 - 24));
        v136 = llvm::ConstantInt::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, v136);
        v137 = *v150;
        v138 = *v150;
        if (*(*&v159[*(*v150 - 24)] + 1040) && (v119 & 1) != 0)
        {
          if (!*(v150 + 606))
          {
            *&v186[0] = "agc.mem_fence_addr";
            LOWORD(v187) = 259;
            v139 = *(v152 + *(v138 - 24));
            llvm::PointerType::get();
            v140 = AGCLLVMUserComputeKernelBase::constructSHGlobal(v150);
            llvm::ValueHandleBase::operator=((v150 + 4832), v140);
            v137 = *v150;
          }

          v141 = *(v137 - 24);
          v142 = *(v150 + 606);
          LOWORD(v187) = 257;
          Load = AGCLLVMBuilder::CreateLoad(&v154[v141], v142, v186);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v176, Load);
          v137 = *v150;
        }

        v144 = *(v137 - 24);
        LOWORD(v187) = 257;
        llvm::IRBuilderBase::CreateCall(v161 + v144, *(v134 + 24), v134, v176, v177, v186);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v116);
        if (v176 != &v178)
        {
          free(v176);
        }

        ++v115;
        ++v114;
      }

      while (v113);
    }
  }

LABEL_163:
  v145 = *MEMORY[0x277D85DE8];
  return v147;
}

llvm::GlobalVariable *AGCLLVMUserComputeKernelBase::constructSHGlobal(void *a1)
{
  v2 = llvm::User::operator new(0x58);
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 267);
  v10 = *(*(v3 + 271) + 972) | 0x100000000;
  v5 = llvm::GlobalVariable::GlobalVariable();
  *(v5 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 268);
  v8 = AGCLLVMBuilder::buildGlobalMetadata((v6 + 1704), v2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v7, v8);
  return v2;
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGroupID(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v5 = this + 24 * a3;
  v6 = (v5 + 4856);
  if (!*(v5 + 609))
  {
    v8 = 1;
    v9 = llvm::User::operator new(0x58);
    v10 = this + *(*this - 24);
    v11 = *(v10 + 267);
    v12 = *(v10 + 238);
    v13 = (&AGCLLVMDriverCDMShader::buildLocalSize(AGCLLVMBuilder::InsertPoint,llvm::Type *,unsigned int)::$_1::operator() const(void)::xyz)[a3];
    if (*v13)
    {
      v23 = (&AGCLLVMDriverCDMShader::buildLocalSize(AGCLLVMBuilder::InsertPoint,llvm::Type *,unsigned int)::$_1::operator() const(void)::xyz)[a3];
      v8 = 3;
    }

    v22[0] = "agx.group_id_";
    LOBYTE(v24) = 3;
    HIBYTE(v24) = v8;
    v14 = 1;
    llvm::GlobalVariable::GlobalVariable();
    if (*v13)
    {
      v23 = v13;
      v14 = 3;
    }

    v22[0] = "cl_group_id_";
    LOBYTE(v24) = 3;
    HIBYTE(v24) = v14;
    llvm::Twine::str(&__p, v22);
    llvm::GlobalObject::setSection();
    if (v20 < 0)
    {
      operator delete(__p);
    }

    llvm::GlobalObject::setAlignment();
    llvm::ValueHandleBase::operator=(v6, v9);
  }

  v15 = this + *(*this - 24);
  v16 = *(v6 + 2);
  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), v16, v22);
  v21 = 257;
  return llvm::IRBuilderBase::CreateCast((v15 + 1712), 38, Load, a2, &__p);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildNumGroups(llvm::Type ***this, llvm::Type *a2)
{
  if (!this[565])
  {
    v4 = *(*(*this - 3) + this + 1904);
    v5 = llvm::PointerType::get();
    v6 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v20[0] = "agc.indirect_wg_count_buffer_pointer.";
    v20[2] = v6;
    v21 = 2051;
    v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v5, v20, v7, 12, 5, 0);
    llvm::ValueHandleBase::operator=((this + 563), GlobalBufferBinding);
  }

  v9 = *(*this - 3) + this;
  v10 = this[565];
  v21 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), v10, v20);
  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v21 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v20);
  v16 = *(*this - 3) + this;
  v21 = 257;
  v17 = AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v20);
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateCast((v16 + 1712), 38, v17, a2, v19);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGlobalLinearId(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2)
{
  v4 = this + *(*this - 24);
  v5 = AGCLLVMUserComputeKernelLegacy::buildGlobalID(this, a2, 2u);
  v6 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize(this, a2, 1u);
  v18 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v4 + 1712), v5, v6, v17);
  v8 = this + *(*this - 24);
  v9 = AGCLLVMUserComputeKernelLegacy::buildGlobalID(this, a2, 1u);
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), Mul, v9, v17);
  v11 = this + *(*this - 24);
  v12 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize(this, a2, 0);
  v18 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v11 + 1712), Add, v12, v17);
  v14 = this + *(*this - 24);
  v15 = AGCLLVMUserComputeKernelLegacy::buildGlobalID(this, a2, 0);
  v18 = 257;
  return llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v17);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGlobalID(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v6 = this + *(*this - 24);
  v7 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(this, a2, a3);
  v8 = AGCLLVMUserComputeKernelLegacy::buildGroupID(this, a2, a3);
  v15 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v6 + 1712), v7, v8, v14);
  v10 = this + *(*this - 24);
  v11 = *(this + 3 * a3 + 576);
  v15 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v10 + 1712), 38, v11, a2, v14);
  v15 = 257;
  return llvm::IRBuilderBase::CreateAdd((v10 + 1712), Mul, Cast, v14);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGlobalSize(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v5 = this + *(*this - 24);
  v6 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(this, a2, a3);
  v7 = AGCLLVMUserComputeKernelLegacy::buildNumGroups(this, a2);
  v10 = 257;
  return llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v9);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalSize(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v5 = this + 24 * a3;
  v6 = (v5 + 4688);
  if (!*(v5 + 588))
  {
    *&v15 = "agc.";
    *&v16 = "local_size";
    LOWORD(v17) = 771;
    v7 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(llvm::Type *,unsigned int)::xyz[a3];
    if (*v7)
    {
      *&v18 = &v15;
      *&v19 = v7;
      LOWORD(v20) = 770;
    }

    else
    {
      v18 = v15;
      v19 = v16;
      v20 = v17;
    }

    v8 = *(this + *(*this - 24) + 1904);
    v9 = AGCLLVMDriverCDMShader::buildLocalSize(AGCLLVMBuilder::InsertPoint,llvm::Type *,unsigned int)::$_1::operator() const(void)::constant_type[a3];
    v10 = AGCLLVMUserComputeKernelBase::constructSHGlobal(this);
    llvm::ValueHandleBase::operator=(v6, v10);
  }

  v11 = this + *(*this - 24);
  v12 = *(v6 + 2);
  LOWORD(v20) = 257;
  Load = AGCLLVMBuilder::CreateLoad((v11 + 1704), v12, &v18);
  LOWORD(v17) = 257;
  return llvm::IRBuilderBase::CreateCast((v11 + 1712), 38, Load, a2, &v15);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalLinearId(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2)
{
  v2 = this + *(*this - 24);
  v3 = *(this + 585);
  v6 = 257;
  return llvm::IRBuilderBase::CreateCast((v2 + 1712), 38, v3, a2, v5);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalID(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v3 = this + *(*this - 24);
  v4 = *(this + 3 * a3 + 576);
  v7 = 257;
  return llvm::IRBuilderBase::CreateCast((v3 + 1712), 38, v4, a2, v6);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalIDInternal(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v3 = *(this + a3 + 1144);
  if (v3 == -1)
  {
    return 0;
  }

  v7 = *(this + 20);
  if (*(v7 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 20));
  }

  if (v3)
  {
    v8 = *(v7 + 88) + 40 * (v3 - 1) + 40;
  }

  else
  {
    v8 = *(v7 + 88);
  }

  if (a3)
  {
    v9 = this + *(*this - 24);
    v10 = *(v9 + 243);
    v20 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 49, v8, v10, v19);
    v12 = this + *(*this - 24);
    v20 = 257;
    v13 = *(v12 + 238);
    v14 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v12 + 1712), Cast, v14, v19);
    v16 = this + *(*this - 24);
    v20 = 257;
    v8 = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, Element, a2, v19);
  }

  v18 = this + *(*this - 24);
  v20 = 257;
  return llvm::IRBuilderBase::CreateCast((v18 + 1712), 38, v8, a2, v19);
}

uint64_t AGCLLVMUserComputeKernelLegacy::getWGPadSHGlobal(llvm::Type ***a1, int a2)
{
  if (a2 == 2)
  {
    v3 = a1[624];
    if (!v3)
    {
      v4 = a1 + 624;
      v5 = 622;
      v12 = "agc.local_xdim_mul_and_shift";
      v13 = 259;
      v7 = *(*(*a1 - 3) + a1 + 1944);
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    v3 = a1[621];
    if (!v3)
    {
      v4 = a1 + 621;
      v5 = 619;
      v12 = "agc.local_slice_mul_and_shift";
      v13 = 259;
      v6 = *(*(*a1 - 3) + a1 + 1944);
LABEL_9:
      v9 = AGCLLVMUserComputeKernelBase::constructSHGlobal(a1);
      llvm::ValueHandleBase::operator=(&a1[v5], v9);
      v3 = *v4;
    }
  }

  else
  {
    v3 = a1[618];
    if (!v3)
    {
      v4 = a1 + 618;
      v5 = 616;
      v12 = "agc.local_slice_and_linear_size";
      v13 = 259;
      v8 = *(*(*a1 - 3) + a1 + 1904);
      goto LABEL_9;
    }
  }

  v10 = *(*a1 - 3) + a1;
  v13 = 257;
  return AGCLLVMBuilder::CreateLoad((v10 + 1704), v3, &v12);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildWGMulShiftMod(AGCLLVMUserComputeKernelLegacy *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value **a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = this + *(*this - 24);
  v46 = 257;
  v11 = *(v10 + 238);
  v12 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v10 + 1712), a4, v12, v45);
  v14 = this + *(*this - 24);
  v46 = 257;
  v15 = *(v14 + 238);
  v16 = llvm::ConstantInt::get();
  v17 = llvm::IRBuilderBase::CreateExtractElement((v14 + 1712), a4, v16, v45);
  v18 = (this + *(*this - 24));
  v19 = v18[271];
  v20 = *(v19 + 1104);
  if (v20)
  {
    v21 = strlen(*(v19 + 1104));
    v22 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>((v18 + 213), v20, v21, v18[237], v18[237], v18[237], v18[237]);
    v47[0] = a2;
    v47[1] = Element;
    v47[2] = a2;
    v23 = this + *(*this - 24);
    v46 = 257;
    v24 = llvm::IRBuilderBase::CreateCall((v23 + 1712), *(v22 + 24), v22, v47, 3, v45);
  }

  else
  {
    v25 = v18[238];
    v46 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v18 + 214), 39, Element, v25, v45);
    v48 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v18 + 214), a2, Cast, v47);
    v28 = this + *(*this - 24);
    v46 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v28 + 1712), Mul, a2, v45);
    v30 = this + *(*this - 24);
    v31 = *(v30 + 243);
    v46 = 257;
    v32 = llvm::IRBuilderBase::CreateCast((v30 + 1712), 49, Add, v31, v45);
    v33 = this + *(*this - 24);
    v46 = 257;
    v34 = *(v33 + 238);
    v35 = llvm::ConstantInt::get();
    v24 = llvm::IRBuilderBase::CreateExtractElement((v33 + 1712), v32, v35, v45);
  }

  v36 = this + *(*this - 24);
  v46 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v36 + 1712), v24, v17, v45);
  v38 = *a2;
  v48 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((v36 + 1712), 39, LShr, v38, v47);
  if (a5)
  {
    *a5 = v39;
  }

  v40 = this + *(*this - 24);
  v46 = 257;
  v41 = llvm::IRBuilderBase::CreateMul((v40 + 1712), v39, a3, v45);
  v42 = this + *(*this - 24);
  v46 = 257;
  result = llvm::IRBuilderBase::CreateSub((v42 + 1712), a2, v41, v45);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserComputeKernelLegacy::wrapperFunctionType(AGCLLVMUserComputeKernelLegacy *this)
{
  v1 = *(this + 1140);
  if (v1)
  {
    v2 = this + *(*this - 24);
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v1);
  }

  v3 = *(this + *(*this - 24) + 1848);
  return llvm::FunctionType::get();
}

void std::vector<llvm::Type *>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void AGCLLVMUserComputeKernelLegacy::addInitCompilePass(AGCLLVMUserComputeKernelLegacy *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelLegacy>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileComputeShaderLegacyCollectIDPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x5D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 93;
  }

  v2 = &aStringrefLlvmG_36[v1];
  v3 = 93 - v1;
  if ((93 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 93 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeShaderLegacyCollectIDPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeShaderLegacyCollectIDPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<InitCompileComputeShaderLegacyPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x54)
  {
    v1 = v0;
  }

  else
  {
    v1 = 84;
  }

  v2 = &aStringrefLlvmG_35[v1];
  v3 = 84 - v1;
  if ((84 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 84 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeShaderLegacyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeShaderLegacyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelLegacy>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6E)
  {
    v1 = v0;
  }

  else
  {
    v1 = 110;
  }

  v2 = &aStringrefLlvmG_34[v1];
  v3 = 110 - v1;
  if ((110 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 110 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(AGCLLVMUserComputeKernelLegacy *this)
{
  AGCLLVMObject::~AGCLLVMObject((v1 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v1 + 5008));
}

BOOL AGCLLVMUserComputeKernelG10::constructReply(AGCLLVMUserComputeKernelG10 *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (!result)
  {
    return result;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v3 = AGCLLVMUserObject::constructFlatReply(this);
  v4 = this + *(*this - 24);
  v5 = *(this + 8);
  v6 = *(this + 9);
  v7 = *(this + 4544);
  v8 = *(this + 1137);
  v9 = *(this + 12);
  v4[4358] = 1;
  v10 = *(v4 + 1082);
  v11 = *(v4 + 1080) - *(v4 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 12, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 536, 14, v9, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 536, 10, v7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 536, 8, v6, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 536, 6, v5, 0);
  v12 = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v11 + v10);
  v13 = this + *(*this - 24);
  v14 = *(v13 + 1080);
  v13[4358] = 1;
  v15 = *(v13 + 1082);
  v16 = v14 - *(v13 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v13 + 4288), v3);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v13 + 4288), v12);
  v17 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v16 + v15);
  flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v17, v18);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  if (*(this + 17) == 1)
  {
    v19 = *this;
  }

  else
  {
    v19 = *this;
    if ((*(this + 16) & 1) == 0)
    {
      v20 = *this;
      v21 = this + *(v19 - 24);
      if ((v21[2224] & 1) == 0 && !*(this + 1150))
      {
        v34 = v21 + 2512;
        v35 = *(v21 + 314);
        if (v35)
        {
          v36 = (v21 + 3072);
          if (*(v21 + 315))
          {
            v36 = (v21 + 2512);
          }
        }

        else
        {
          v36 = (v21 + 3072);
        }

        v37 = 0;
        if (*v36 && v36[1])
        {
          v37 = (*v36 + **v36);
        }

        v38 = (v37 - *v37);
        if (*v38 >= 5u && (v39 = v38[2]) != 0)
        {
          v40 = (v37 + v39 + *(v37 + v39));
        }

        else
        {
          v40 = 0;
        }

        v41 = (v40 - *v40);
        if (*v41 >= 0x3Fu && (v42 = v41[31]) != 0 && (v43 = (v40 + v42 + *(v40 + v42)), v44 = *v43, v44))
        {
          v45 = v43 + 1;
          while (1)
          {
            v46 = *v45++;
            v47 = (1 << v46) & 0x3F000000000777;
            if (v46 <= 0x35 && v47 != 0)
            {
              break;
            }

            if (!--v44)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          if (v35)
          {
            v49 = *(v21 + 315);
            v50 = v21 + 3072;
            if (v49)
            {
              v50 = v34;
            }
          }

          else
          {
            v50 = v21 + 3072;
          }

          v52 = *v50;
          v51 = *(v50 + 1);
          if (v52)
          {
            v53 = v51 == 0;
          }

          else
          {
            v53 = 1;
          }

          if (v53)
          {
            v54 = 0;
          }

          else
          {
            v54 = (v52 + *v52);
          }

          v55 = (v54 - *v54);
          if (*v55 >= 0xBu && (v56 = v55[5]) != 0)
          {
            v57 = (v54 + v56 + *(v54 + v56));
          }

          else
          {
            v57 = 0;
          }

          v58 = (v57 - *v57);
          if (*v58 < 9u || (v59 = v58[4]) == 0 || !*(v57 + v59))
          {
            v22 = 1;
            goto LABEL_9;
          }
        }
      }
    }
  }

  v22 = 0;
LABEL_9:
  v23 = this + *(v19 - 24);
  v24 = *(this + 1150);
  v23[4454] = 1;
  v25 = *(v23 + 1106);
  v26 = *(v23 + 1104) - *(v23 + 1108);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 548, 4, v24);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v23 + 548, 6, v22, 0);
  v27 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4384), v26 + v25);
  v28 = this + *(*this - 24);
  v29 = *(v28 + 1104);
  v28[4454] = 1;
  LODWORD(v23) = *(v28 + 1106);
  v30 = v29 - *(v28 + 1108);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v28 + 4384), v27);
  v31 = *(*this - 24);
  v32 = flatbuffers::FlatBufferBuilder::EndTable((v28 + 4384), v30 + v23);
  flatbuffers::FlatBufferBuilder::Finish((this + v31 + 4384), v32, v33);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));

  return AGCLLVMUserComputeKernelBase::validateReply(this);
}

void virtual thunk toAGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(AGCLLVMUserComputeKernelG10 *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (v1 + 4640);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(AGCLLVMUserComputeKernelG10 *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[10];
  *(this + *(*this - 24) + 1704) = a2[11];
  v5 = *(this + 578);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4608));
  }

  v7 = *(this + 574);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4576));
  }

  v8 = *(this + 571);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4552));
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 2);
}

llvm::Value *AGCLLVMUserComputeKernelG10::replaceBuiltinFunction(void *a1, uint64_t a2, llvm::Type *a3, uint64_t a4)
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 616))();
  v73[0] = "air.threadgroup_position_in_grid";
  v73[1] = 32;
  LODWORD(v74) = v5;
  v6 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 624))();
  v75 = "air.threadgroups_per_grid";
  v76 = 25;
  v77 = v6;
  v7 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 632))();
  v78 = "air.thread_position_in_grid";
  v79 = 27;
  v80 = v7;
  v8 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 640))();
  v81 = "air.threads_per_grid";
  v82 = 20;
  v83 = v8;
  llvm::StringMapImpl::StringMapImpl(&v84);
  for (i = 0; i != 12; i += 3)
  {
    v11 = v73[i];
    v10 = v73[i + 1];
    v12 = v73[i + 2];
    v13 = llvm::StringMapImpl::LookupBucketFor();
    v14 = v84;
    v15 = *(v84 + 8 * v13);
    if (v15)
    {
      if (v15 != -8)
      {
        continue;
      }

      --v87;
    }

    v16 = MEMORY[0x20F330650](v10 + 17, 8);
    v17 = v16;
    v18 = v16 + 16;
    if (v10)
    {
      memcpy((v16 + 16), v11, v10);
    }

    *(v18 + v10) = 0;
    *v17 = v10;
    *(v17 + 8) = v12;
    *(v14 + 8 * v13) = v17;
    ++v86;
    llvm::StringMapImpl::RehashTable(&v84);
  }

  v19 = a1 + *(*a1 - 24);
  v20 = *(v19 + 238);
  v71[0] = llvm::ConstantInt::get();
  LOWORD(v76) = 257;
  Select = llvm::IRBuilderBase::CreateCall((v19 + 1712), *(a2 + 24), a2, v71, 1, v73);
  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v24 = v23;
  Key = llvm::StringMapImpl::FindKey();
  v26 = v84;
  if (Key == -1)
  {
    v27 = v85;
  }

  else
  {
    v27 = Key;
  }

  if ((*(*a1 + 440))(a1))
  {
    v28 = v26 + 8 * v27;
    if (v28 != v84 + 8 * v85)
    {
      if (!a1[578])
      {
        v29 = *(a1 + *(*a1 - 24) + 1904);
        v30 = llvm::PointerType::get();
        v31 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v32 = (*(*v31 + 608))(v31);
        v73[0] = "agc.split_dispatch_parameters.";
        v74 = v32;
        LOWORD(v76) = 2051;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, v30, v73, v32, 0, 5, 0);
        llvm::ValueHandleBase::operator=((a1 + 576), GlobalBufferBinding);
      }

      v34 = (a1 + *(*a1 - 24));
      v35 = v34[238];
      v36 = a1[578];
      LOWORD(v76) = 257;
      Load = AGCLLVMBuilder::CreateLoad((v34 + 213), v36, v73);
      v38 = *(*v28 + 8);
      v39 = *(a1 + *(*a1 - 24) + 1904);
      v40 = llvm::ConstantInt::get();
      v72 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v34 + 214), v35, Load, v40, v71);
      v70 = 257;
      v42 = AGCLLVMBuilder::CreateLoad((v34 + 213), GEP, v69);
      v43 = (a1 + *(*a1 - 24));
      LOWORD(v76) = 257;
      TruncOrBitCast = llvm::IRBuilderBase::CreateTruncOrBitCast(v43 + 214, v42, a3, v73);
      if (v24 == 32)
      {
        v45 = String[2];
        v46 = String[3];
        v47 = *String == 0x657268742E726961 && String[1] == 0x5F70756F72676461;
        v48 = 0x6E6F697469736F70;
LABEL_26:
        if (v47 && v45 == v48 && v46 == 0x646972675F6E695FLL)
        {
          v51 = a1 + *(*a1 - 24);
          LOWORD(v76) = 257;
          llvm::IRBuilderBase::CreateAdd((v51 + 1712), TruncOrBitCast, Select, v73);
        }
      }

      else if (v24 == 27)
      {
        v45 = String[2];
        v46 = *(String + 19);
        v47 = *String == 0x657268742E726961 && String[1] == 0x7469736F705F6461;
        v48 = 0x675F6E695F6E6F69;
        goto LABEL_26;
      }

      v52 = (a1 + *(*a1 - 24));
      v53 = v52[238];
      v54 = a1[578];
      LOWORD(v76) = 257;
      v55 = AGCLLVMBuilder::CreateLoad((v52 + 213), v54, v73);
      v56 = a1 + *(*a1 - 24);
      (*(**(*(v56 + 271) + 920) + 648))();
      v57 = *(v56 + 238);
      v58 = llvm::ConstantInt::get();
      v72 = 257;
      v59 = llvm::IRBuilderBase::CreateGEP((v52 + 214), v53, v55, v58, v71);
      v70 = 257;
      v60 = AGCLLVMBuilder::CreateLoad((v52 + 213), v59, v69);
      v61 = a1 + *(*a1 - 24);
      v62 = *(v61 + 238);
      v63 = llvm::ConstantInt::get();
      LOWORD(v76) = 257;
      llvm::IRBuilderBase::CreateICmp(v61 + 214, 33, v60, v63, v73);
      v72 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
    }
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(&v84);
  v64 = *MEMORY[0x277D85DE8];
  return Select;
}

llvm::Value *llvm::IRBuilderBase::CreateTruncOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  TruncOrBitCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      TruncOrBitCast = llvm::CastInst::CreateTruncOrBitCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, TruncOrBitCast, a4);
    }

    else
    {
      TruncOrBitCast = (*(*this[9] + 304))(this[9], a2, a3);
      if (TruncOrBitCast)
      {
        v7 = *(TruncOrBitCast + 16) >= 0x1Cu;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, TruncOrBitCast, a4);
      }
    }
  }

  return TruncOrBitCast;
}

uint64_t AGCLLVMUserComputeKernelG10::replaceBuiltins(AGCLLVMUserComputeKernelG10 *this)
{
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(this);
  }

  return v2;
}

void AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(AGCLLVMUserComputeKernelG10 *this)
{
  v113 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v103, *v2);
  v110 = this;
  v103 = &unk_28259D9B8;
  v109[37] = v2;
  {
    AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(void)::workitem_functions[0] = "air.get_global_size.i32";
    dword_28117DC88 = 1;
    qword_28117DC90 = AGCLLVMUserComputeKernelG10::buildGlobalSizeG10;
    unk_28117DC98 = 0;
    dword_28117DCA0 = 4;
    word_28117DCA4 = 0;
    qword_28117DCA8 = "air.get_global_size.i16";
    dword_28117DCB0 = 1;
    qword_28117DCB8 = AGCLLVMUserComputeKernelG10::buildGlobalSizeG10;
    unk_28117DCC0 = 0;
    dword_28117DCC8 = 4;
    word_28117DCCC = 0;
    qword_28117DCD0 = "air.get_global_id.i32";
    dword_28117DCD8 = 1;
    qword_28117DCE0 = AGCLLVMUserComputeKernelG10::buildGlobalIDG10;
    unk_28117DCE8 = 0;
    dword_28117DCF0 = 4;
    word_28117DCF4 = 0;
    qword_28117DCF8 = "air.get_global_id.i16";
    dword_28117DD00 = 1;
    qword_28117DD08 = AGCLLVMUserComputeKernelG10::buildGlobalIDG10;
    unk_28117DD10 = 0;
    dword_28117DD18 = 4;
    word_28117DD1C = 0;
    qword_28117DD20 = "air.get_local_size.i32";
    dword_28117DD28 = 1;
    qword_28117DD30 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10;
    unk_28117DD38 = 0;
    dword_28117DD40 = 4;
    word_28117DD44 = 0;
    qword_28117DD48 = "air.get_local_size.i16";
    dword_28117DD50 = 1;
    qword_28117DD58 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10;
    unk_28117DD60 = 0;
    dword_28117DD68 = 4;
    word_28117DD6C = 0;
    qword_28117DD70 = "air.get_local_id.i32";
    dword_28117DD78 = 1;
    qword_28117DD80 = AGCLLVMUserComputeKernelG10::buildLocalIDG10;
    unk_28117DD88 = 0;
    dword_28117DD90 = 4;
    word_28117DD94 = 0;
    qword_28117DD98 = "air.get_local_id.i16";
    dword_28117DDA0 = 1;
    qword_28117DDA8 = AGCLLVMUserComputeKernelG10::buildLocalIDG10;
    unk_28117DDB0 = 0;
    dword_28117DDB8 = 4;
    word_28117DDBC = 0;
    qword_28117DDC0 = "air.get_local_linear_id.i32";
    dword_28117DDC8 = 1;
    qword_28117DDD0 = AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10;
    unk_28117DDD8 = 0;
    dword_28117DDE0 = 2;
    word_28117DDE4 = 0;
    qword_28117DDE8 = "air.get_local_linear_id.i16";
    dword_28117DDF0 = 1;
    qword_28117DDF8 = AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10;
    unk_28117DE00 = 0;
    dword_28117DE08 = 2;
    word_28117DE0C = 0;
    qword_28117DE10 = "air.get_num_groups.i32";
    dword_28117DE18 = 1;
    qword_28117DE20 = AGCLLVMUserComputeKernelG10::buildNumGroupsG10;
    unk_28117DE28 = 0;
    dword_28117DE30 = 4;
    word_28117DE34 = 0;
    qword_28117DE38 = "air.get_num_groups.i16";
    dword_28117DE40 = 1;
    qword_28117DE48 = AGCLLVMUserComputeKernelG10::buildNumGroupsG10;
    unk_28117DE50 = 0;
    dword_28117DE58 = 4;
    word_28117DE5C = 0;
    qword_28117DE60 = "air.get_group_id.i32";
    dword_28117DE68 = 1;
    qword_28117DE70 = AGCLLVMUserComputeKernelG10::buildGroupIDG10;
    unk_28117DE78 = 0;
    dword_28117DE80 = 4;
    word_28117DE84 = 0;
    qword_28117DE88 = "air.get_group_id.i16";
    dword_28117DE90 = 1;
    qword_28117DE98 = AGCLLVMUserComputeKernelG10::buildGroupIDG10;
    qword_28117DEA0 = 0;
    dword_28117DEA8 = 4;
    word_28117DEAC = 0;
    qword_28117DEB0 = "air.get_dispatch_local_size.i32";
    dword_28117DEB8 = 1;
    qword_28117DEC0 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117DEC8 = 0;
    dword_28117DED0 = 4;
    word_28117DED4 = 0;
    qword_28117DED8 = "air.get_dispatch_local_size.i16";
    dword_28117DEE0 = 1;
    qword_28117DEE8 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117DEF0 = 0;
    dword_28117DEF8 = 4;
    word_28117DEFC = 0;
    qword_28117DF00 = "air.get_quadgroups_per_threadgroup.i32";
    dword_28117DF08 = 1;
    qword_28117DF10 = AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupG10;
    qword_28117DF18 = 0;
    dword_28117DF20 = 2;
    word_28117DF24 = 0;
    qword_28117DF28 = "air.get_quadgroups_per_threadgroup.i16";
    dword_28117DF30 = 1;
    qword_28117DF38 = AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupG10;
    qword_28117DF40 = 0;
    dword_28117DF48 = 2;
    word_28117DF4C = 0;
    qword_28117DF50 = "air.get_simdgroups_per_threadgroup.i32";
    dword_28117DF58 = 1;
    qword_28117DF60 = AGCLLVMUserComputeKernelG10::buildSimdgroupsPerThreadgroupG10;
    qword_28117DF68 = 0;
    dword_28117DF70 = 2;
    word_28117DF74 = 0;
    qword_28117DF78 = "air.get_simdgroups_per_threadgroup.i16";
    dword_28117DF80 = 1;
    qword_28117DF88 = AGCLLVMUserComputeKernelG10::buildSimdgroupsPerThreadgroupG10;
    qword_28117DF90 = 0;
    dword_28117DF98 = 2;
    word_28117DF9C = 0;
    qword_28117DFA0 = "air.get_dispatch_quadgroups_per_threadgroup.i32";
    dword_28117DFA8 = 1;
    qword_28117DFB0 = AGCLLVMUserComputeKernelG10::buildDispatchQuadgroupsPerThreadgroupG10;
    qword_28117DFB8 = 0;
    dword_28117DFC0 = 2;
    word_28117DFC4 = 0;
    qword_28117DFC8 = "air.get_dispatch_quadgroups_per_threadgroup.i16";
    dword_28117DFD0 = 1;
    qword_28117DFD8 = AGCLLVMUserComputeKernelG10::buildDispatchQuadgroupsPerThreadgroupG10;
    qword_28117DFE0 = 0;
    dword_28117DFE8 = 2;
    word_28117DFEC = 0;
    qword_28117DFF0 = "air.get_dispatch_simdgroups_per_threadgroup.i32";
    dword_28117DFF8 = 1;
    qword_28117E000 = AGCLLVMUserComputeKernelG10::buildDispatchSimdgroupsPerThreadgroupG10;
    qword_28117E008 = 0;
    dword_28117E010 = 2;
    word_28117E014 = 0;
    qword_28117E018 = "air.get_dispatch_simdgroups_per_threadgroup.i16";
    dword_28117E020 = 1;
    qword_28117E028 = AGCLLVMUserComputeKernelG10::buildDispatchSimdgroupsPerThreadgroupG10;
    qword_28117E030 = 0;
    dword_28117E038 = 2;
    word_28117E03C = 0;
    qword_28117E040 = "air.get_quad_group.i32";
    dword_28117E048 = 1;
    qword_28117E050 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E058 = 0;
    dword_28117E060 = 2;
    word_28117E064 = 0;
    qword_28117E068 = "air.get_quad_group.i16";
    dword_28117E070 = 1;
    qword_28117E078 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E080 = 0;
    dword_28117E088 = 2;
    word_28117E08C = 0;
    qword_28117E090 = "air.get_thread_index_in_simdgroup.i32";
    dword_28117E098 = 1;
    qword_28117E0A0 = AGCLLVMUserComputeKernelG10::buildThreadIndexInSimdGroupG10;
    qword_28117E0A8 = 0;
    dword_28117E0B0 = 2;
    word_28117E0B4 = 0;
    qword_28117E0B8 = "air.get_thread_index_in_simdgroup.i16";
    dword_28117E0C0 = 1;
    qword_28117E0C8 = AGCLLVMUserComputeKernelG10::buildThreadIndexInSimdGroupG10;
    qword_28117E0D0 = 0;
    dword_28117E0D8 = 2;
    word_28117E0DC = 0;
    qword_28117E0E0 = "air.get_simdgroup_index_in_threadgroup.i32";
    dword_28117E0E8 = 1;
    qword_28117E0F0 = AGCLLVMUserComputeKernelG10::buildSimdGroupIndexInThreadgroupG10;
    qword_28117E0F8 = 0;
    dword_28117E100 = 2;
    word_28117E104 = 0;
    qword_28117E108 = "air.get_simdgroup_index_in_threadgroup.i16";
    dword_28117E110 = 1;
    qword_28117E118 = AGCLLVMUserComputeKernelG10::buildSimdGroupIndexInThreadgroupG10;
    qword_28117E120 = 0;
    dword_28117E128 = 2;
    word_28117E12C = 0;
    qword_28117E130 = "air.get_dispatch_threads_per_threadgroup.i32";
    dword_28117E138 = 1;
    qword_28117E140 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117E148 = 0;
    dword_28117E150 = 4;
    word_28117E154 = 0;
    qword_28117E158 = "air.get_dispatch_threads_per_threadgroup.i16";
    dword_28117E160 = 1;
    qword_28117E168 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117E170 = 0;
    dword_28117E178 = 4;
    word_28117E17C = 0;
    qword_28117E180 = "air.get_stage_in_grid_origin.i32";
    dword_28117E188 = 1;
    qword_28117E190 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117E198 = 0;
    dword_28117E1A0 = 4;
    word_28117E1A4 = 0;
    qword_28117E1A8 = "air.get_stage_in_grid_origin.i16";
    dword_28117E1B0 = 1;
    qword_28117E1B8 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117E1C0 = 0;
    dword_28117E1C8 = 4;
    word_28117E1CC = 0;
    qword_28117E1D0 = "air.get_stage_in_grid_size.i32";
    dword_28117E1D8 = 1;
    qword_28117E1E0 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117E1E8 = 0;
    dword_28117E1F0 = 4;
    word_28117E1F4 = 0;
    qword_28117E1F8 = "air.get_stage_in_grid_size.i16";
    dword_28117E200 = 1;
    qword_28117E208 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117E210 = 0;
    dword_28117E218 = 4;
    word_28117E21C = 0;
    qword_28117E220 = "air.get_quadgroup_index_in_threadgroup.i32";
    dword_28117E228 = 1;
    qword_28117E230 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E238 = 0;
    dword_28117E240 = 2;
    word_28117E244 = 0;
    qword_28117E248 = "air.get_quadgroup_index_in_threadgroup.i16";
    dword_28117E250 = 1;
    qword_28117E258 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E260 = 0;
    dword_28117E268 = 2;
    word_28117E26C = 0;
    qword_28117E270 = "air.get_thread_index_in_quadgroup.i32";
    dword_28117E278 = 1;
    qword_28117E280 = AGCLLVMUserComputeKernelG10::buildQuadElementG10;
    qword_28117E288 = 0;
    dword_28117E290 = 2;
    word_28117E294 = 0;
    qword_28117E298 = "air.get_thread_index_in_quadgroup.i16";
    dword_28117E2A0 = 1;
    qword_28117E2A8 = AGCLLVMUserComputeKernelG10::buildQuadElementG10;
    qword_28117E2B0 = 0;
    dword_28117E2B8 = 2;
    word_28117E2BC = 0;
  }

  for (i = 0; i != 40; ++i)
  {
    v4 = &AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(void)::workitem_functions[5 * i];
    v90 = v4;
    if (*v4)
    {
      v5 = strlen(*v4);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v7 = Function;
      v8 = *(v90 + 8);
      v84 = i;
      v85 = Function;
      if (v8 == 12)
      {
        for (j = *(Function + 8); j; v106 = 0uLL)
        {
          v12 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v104, v12);
          v13 = v110 + *(*v110 - 24);
          v100 = v106;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v101, v104);
          v102 = v107;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v100, (v13 + 1712));
          if (v101)
          {
            llvm::MetadataTracking::untrack();
          }

          v14 = v90[2];
          v15 = v90[3];
          v16 = (v110 + (v15 >> 1));
          if (v15)
          {
            v14 = *(*v16 + v14);
          }

          (v14)(v16, v12);
        }

        goto LABEL_122;
      }

      if (v8 == 11)
      {
        v9 = v90[2];
        if (v9)
        {
          v10 = strlen(v90[2]);
          *&v111[0] = &v111[1] + 8;
          *(v111 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v111, v9, &v9[v10]);
        }

        else
        {
          *&v111[1] = 64;
          v111[0] = &v111[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v111, ".", "");
        if (*&v111[1] < *(&v111[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v81 = *(v7 + 24);
        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v111[0] != (&v111[1] + 8))
        {
          free(*&v111[0]);
        }

        goto LABEL_122;
      }

      v17 = **(*(Function + 24) + 16);
      v18 = ((*(v17 + 8) & 0xFE) == 18) & *(v90 + 37);
      if (v18 == 1)
      {
        v19 = *(v17 + 32);
      }

      else
      {
        v19 = 1;
      }

      v88 = v19;
      v83 = v107;
      v20 = *(Function + 8);
      if (!v20)
      {
LABEL_116:
        v107 = v83;
LABEL_122:
        llvm::Function::eraseFromParent(v85);
        i = v84;
        continue;
      }

      v86 = **(*(Function + 24) + 16);
      while (1)
      {
        v21 = *(v20 + 24);
        v87 = *(v20 + 8);
        v22 = *(v90 + 2);
        if (v22 == 1)
        {
          v23 = 0;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_27;
          }

          v23 = 121;
        }

        v107 = v23;
LABEL_27:
        llvm::IRBuilderBase::SetInsertPoint(v104, v21);
        v24 = llvm::UndefValue::get();
        if (v88)
        {
          for (k = 0; k != v88; ++k)
          {
            v89 = v24;
            v112 = 0;
            memset(v111, 0, sizeof(v111));
            v26 = llvm::CallBase::arg_end(v21) - v21 + 32 * (*(v21 + 5) & 0x7FFFFFF);
            if ((v26 & 0x1FFFFFFFE0) != 0)
            {
              v27 = (v26 >> 5);
              v28 = v111;
              v29 = v21;
              do
              {
                v30 = (v29 - 32 * (*(v21 + 5) & 0x7FFFFFF));
                v31 = *v30;
                *v28 = *v30;
                if (v18 && (*(*v31 + 8) & 0xFE) == 0x12)
                {
                  v99 = 257;
                  v32 = llvm::ConstantInt::get();
                  *v28 = llvm::IRBuilderBase::CreateExtractElement(v104, v31, v32, &PrimitiveSizeInBits);
                }

                ++v28;
                v29 = (v29 + 32);
                --v27;
              }

              while (v27);
            }

            if (*(v90 + 36))
            {
              v33 = **&v111[0];
              if ((*(**&v111[0] + 8) & 0xFE) == 0x12)
              {
                v33 = **(v33 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v33);
              v98 = v34;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v35 = 0;
              }

              else
              {
                v36 = v109[4];
                if ((*(**&v111[0] + 8) & 0xFE) == 0x12)
                {
                  v37 = *(**&v111[0] + 32);
                  v36 = llvm::FixedVectorType::get();
                }

                if ((v26 & 0x1FFFFFFFE0) != 0)
                {
                  v38 = (v26 >> 5);
                  v39 = v111;
                  do
                  {
                    v40 = *v39;
                    v99 = 257;
                    *v39++ = llvm::IRBuilderBase::CreateFPExt(v104, v40, v36, &PrimitiveSizeInBits);
                    --v38;
                  }

                  while (v38);
                }

                v35 = 1;
              }
            }

            else
            {
              v35 = 0;
            }

            if (llvm::FPMathOperator::classof(v21))
            {
              FastMathFlags = llvm::Instruction::getFastMathFlags(v21);
            }

            else
            {
              FastMathFlags = 0;
            }

            v42 = v110 + *(*v110 - 24);
            v94 = v106;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v95, v104);
            v96 = v107;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v94, (v42 + 1712));
            if (v95)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v44 = *(v90 + 8);
            if (v44 > 5)
            {
              if (v44 <= 7)
              {
                if (v44 != 6)
                {
                  v57 = v90[2];
                  v58 = v90[3];
                  v60 = *(&v111[0] + 1);
                  v59 = *&v111[0];
                  v61 = *&v111[1];
                  v62 = (v110 + (v58 >> 1));
                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_101;
                  }

                  v70 = (*(*v62 + v57))(v62, *&v111[0], *(&v111[0] + 1), *&v111[1]);
LABEL_102:
                  FPTrunc = v70;
                  goto LABEL_103;
                }

                v66 = v90[2];
                v67 = v90[3];
                v68 = (v110 + (v67 >> 1));
                if (v67)
                {
                  v66 = *(*v68 + v66);
                }

                v77 = (v66)(v68, *&v111[0], *(&v111[0] + 1), FastMathFlags);
                goto LABEL_93;
              }

              switch(v44)
              {
                case 8:
                  v71 = v90[2];
                  v72 = v90[3];
                  v73 = (v110 + (v72 >> 1));
                  if (v72)
                  {
                    v71 = *(*v73 + v71);
                  }

                  v77 = (v71)(v73, *&v111[0], *(&v111[0] + 1), *&v111[1], FastMathFlags);
LABEL_93:
                  FPTrunc = v77;
                  break;
                case 9:
                  v57 = v90[2];
                  v76 = v90[3];
                  v62 = (v110 + (v76 >> 1));
                  if (v76)
                  {
                    v57 = *(*v62 + v57);
                  }

                  v59 = v111;
                  v60 = &unk_20E75F419;
                  v61 = 0;
LABEL_101:
                  v70 = (v57)(v62, v59, v60, v61);
                  goto LABEL_102;
                case 10:
                  v50 = v90[2];
                  v51 = v90[3];
                  v52 = (v110 + (v51 >> 1));
                  if (v51)
                  {
                    v50 = *(*v52 + v50);
                  }

                  v70 = (v50)(v52, *v21, v111, &unk_20E75F419, 0);
                  goto LABEL_102;
              }
            }

            else
            {
              if (v44 > 2)
              {
                if (v44 != 3)
                {
                  if (v44 == 4)
                  {
                    v74 = (*&v111[0] + 24);
                    if (*(*&v111[0] + 32) >= 0x41u)
                    {
                      v74 = *v74;
                    }

                    v48 = *v74;
                    v45 = v90[2];
                    v75 = v90[3];
                    v47 = *v21;
                    v49 = (v110 + (v75 >> 1));
                    if (v75)
                    {
                      v45 = *(*v49 + v45);
                    }
                  }

                  else
                  {
                    v45 = v90[2];
                    v46 = v90[3];
                    v48 = *(&v111[0] + 1);
                    v47 = *&v111[0];
                    v49 = (v110 + (v46 >> 1));
                    if (v46)
                    {
                      v45 = *(*v49 + v45);
                    }
                  }

                  v70 = (v45)(v49, v47, v48);
                  goto LABEL_102;
                }

                v53 = v90[2];
                v69 = v90[3];
                v55 = *&v111[0];
                v56 = (v110 + (v69 >> 1));
                if ((v69 & 1) == 0)
                {
                  goto LABEL_77;
                }

                goto LABEL_76;
              }

              if (v44 == 1)
              {
                v63 = v90[2];
                v64 = v90[3];
                v65 = (v110 + (v64 >> 1));
                if (v64)
                {
                  v63 = *(*v65 + v63);
                }

                v70 = (v63)(v65);
                goto LABEL_102;
              }

              if (v44 == 2)
              {
                v53 = v90[2];
                v54 = v90[3];
                v55 = *v21;
                v56 = (v110 + (v54 >> 1));
                if ((v54 & 1) == 0)
                {
LABEL_77:
                  v70 = (v53)(v56, v55);
                  goto LABEL_102;
                }

LABEL_76:
                v53 = *(*v56 + v53);
                goto LABEL_77;
              }
            }

LABEL_103:
            v78 = v110 + *(*v110 - 24);
            v91 = *(v78 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v78 + 1712));
            v93 = *(v78 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v91, v104);
            if (v92)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v35)
            {
              v79 = *v21;
              if (v18 && (*(v79 + 8) & 0xFE) == 0x12)
              {
                v79 = **(v79 + 16);
              }

              v99 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v104, FPTrunc, v79, &PrimitiveSizeInBits);
            }

            if (v18)
            {
              v99 = 257;
              v80 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v104, v89, FPTrunc, v80, &PrimitiveSizeInBits);
            }

            v24 = FPTrunc;
          }
        }

        if (*v21 != v109[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v21);
        v20 = v87;
        if (!v87)
        {
          goto LABEL_116;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v109);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v108);
  if (v104[0] != &v105)
  {
    free(v104[0]);
  }

  v82 = *MEMORY[0x277D85DE8];
}