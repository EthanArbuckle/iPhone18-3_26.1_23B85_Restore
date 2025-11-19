uint64_t AGCLLVMUserComputeKernelG10::buildQuadElementG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserComputeKernelG10::buildSimdGroupIndexInThreadgroupG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1632))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserComputeKernelG10::buildThreadIndexInSimdGroupG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1624))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserComputeKernelG10::buildQuadGroupG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadGroup(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupCommon<5u>(AGCLLVMUserComputeKernelG10 *a1, llvm::Type *a2, int a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 0);
    v7 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 0);
    v12 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 2);
  }

  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v9 + 1712), Mul, v10, v20);
  v14 = a1 + *(*a1 - 24);
  v15 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v20);
  v17 = llvm::ConstantInt::get();
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateLShr((v14 + 1712), Add, v17, v19);
}

uint64_t AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, int a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildThreadgroupDispatchSize(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserComputeKernelG10::buildLocalSizeG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, int a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildLocalSize(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupCommon<2u>(AGCLLVMUserComputeKernelG10 *a1, llvm::Type *a2, int a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 0);
    v7 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 0);
    v12 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 2);
  }

  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v9 + 1712), Mul, v10, v20);
  v14 = a1 + *(*a1 - 24);
  v15 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v20);
  v17 = llvm::ConstantInt::get();
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateLShr((v14 + 1712), Add, v17, v19);
}

uint64_t AGCLLVMUserComputeKernelG10::buildGroupIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, int a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserComputeKernelG10::buildNumGroupsG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, unsigned int a3)
{
  v6 = AGCLLVMUserShader::buildGlobalSizeCommon(this, *(this + *(*this - 24) + 1904), a3, 0, 0);
  v7 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(this, *(this + *(*this - 24) + 1904), a3);
  v8 = this + *(*this - 24);
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v17);
  v10 = *(this + *(*this - 24) + 1904);
  v11 = llvm::ConstantInt::get();
  v16[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v11, v16);
  v13 = AGCLLVMUserComputeKernelG10::buildFastDivideThreadgroupSize(this, Sub, v7);
  v14 = this + *(*this - 24);
  v18 = 257;
  return llvm::IRBuilderBase::CreateCast((v14 + 1712), 38, v13, a2, v17);
}

uint64_t AGCLLVMUserComputeKernelG10::buildFastDivideThreadgroupSize(llvm::Type ***this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(*(*this - 3) + this + 1952);
  v7 = llvm::PointerType::get();
  if (!this[574])
  {
    v32[0] = "agc.fast_integer_divide_buffer_pointer";
    v33 = 259;
    v8 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 472))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, v32, v8, 0, 5, 0);
    llvm::ValueHandleBase::operator=((this + 572), GlobalBufferBinding);
  }

  v10 = (*(*this - 3) + this);
  v11 = this[574];
  v33 = 257;
  llvm::Type::isOpaquePointerTy(*v11);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v10 + 214, v7, v11, 0, v32);
  v13 = *(*this - 3) + this;
  v14 = *(v13 + 238);
  v15 = llvm::ConstantInt::get();
  v33 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v13 + 1712), a3, v15, v32);
  v17 = *(*this - 3) + this;
  v18 = *(v17 + 244);
  v33 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v17 + 1712), v18, AlignedLoad, Sub, v32);
  v20 = *(*this - 3) + this;
  v21 = *(v20 + 244);
  v33 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v22 = llvm::IRBuilderBase::CreateAlignedLoad(v20 + 214, v21, GEP, 0, v32);
  v23 = *(*this - 3) + this;
  v33 = 257;
  v24 = *(v23 + 238);
  v25 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v23 + 1712), v22, v25, v32);
  v27 = *(*this - 3) + this;
  v33 = 257;
  v28 = *(v27 + 238);
  v29 = llvm::ConstantInt::get();
  v30 = llvm::IRBuilderBase::CreateExtractElement((v27 + 1712), v22, v29, v32);
  return AGCLLVMObject::buildMulShiftDiv((*(*this - 3) + this), a2, Element, v30);
}

uint64_t AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserComputeKernelG10::buildLocalIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = (*(*v7 + 272))(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserComputeKernelG10::buildGlobalIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, int a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildGlobalID(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserComputeKernelG10::setupImageBlocks(AGCLLVMUserComputeKernelG10 *this)
{
  if (!*(this + 1150))
  {
    return 1;
  }

  v2 = 0;
  v3 = this + 2136;
  v4 = "air.imageblock_data";
  v5 = 1;
  v6 = &AGCLLVMUserComputeKernelG10::setupImageBlocks(void)::disallowed_functions_with_msaa_rates;
  while (1)
  {
    v7 = v2;
    v8 = *&v3[*(*this - 24)];
    strlen(v4);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v10 = *(Function + 8);
      if (v10)
      {
        break;
      }
    }

LABEL_10:
    v6 = &(&AGCLLVMUserComputeKernelG10::setupImageBlocks(void)::disallowed_functions_with_msaa_rates)[2 * v5];
    v4 = *v6;
    v2 = 1;
    v5 = 2;
    if (v7)
    {
      v14 = 0;
      while (1)
      {
        v15 = *&v3[*(*this - 24)];
        strlen(AGCLLVMUserComputeKernelG10::setupImageBlocks(void)::disallowed_function_list[v14]);
        v16 = llvm::Module::getFunction();
        if (v16)
        {
          if (*(v16 + 8))
          {
            break;
          }
        }

        if (++v14 == 3)
        {
          operator new();
        }
      }

      goto LABEL_16;
    }
  }

  while (1)
  {
    v11 = *(v10 + 24);
    v10 = *(v10 + 8);
    if (*(v11 + 8))
    {
      v12 = *(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF) + 32 * *(v6 + 8));
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      if ((*v13 - 1) < 2)
      {
        break;
      }
    }

    if (!v10)
    {
      goto LABEL_10;
    }
  }

LABEL_16:
  std::string::append((this + *(*this - 24) + 1656), "MSAA imageblock features are not available to compute kernels");
  return 0;
}

uint64_t AGCLLVMUserComputeKernelG10::setupShaderInputs(AGCLLVMUserComputeKernelG10 *this)
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = *(this + 21);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v4 = *(this + 21);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  for (i = *(v2 + 88) + 40 * *(v2 + 96); v3 != i; v3 += 5)
  {
    v6 = *(*(this + 10) + 8 * *(v3 + 8));
    if (v6)
    {
      v7 = *(v6 - 8 * *(v6 + 8) + 8);
      if (!*v7)
      {
        String = llvm::MDString::getString(v7);
        if (v9 == 14 && *String == 0x67616D692E726961 && *(String + 6) == 0x6B636F6C62656761)
        {
          LODWORD(v95) = 2;
          if (*(v6 + 8) >= 3u)
          {
            do
            {
              if (parseMDInt("air.imageblock_data_size", v6, &v95, this + 1150))
              {
                break;
              }

              LODWORD(v95) = v95 + 1;
            }

            while (v95 < *(v6 + 8));
          }

          v11 = *v3;
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
        }
      }
    }
  }

  if (!*(this + 1150))
  {
    goto LABEL_117;
  }

  v12 = *(this + *(*this - 24) + 2168);
  if (*((*(*v12 + 688))(v12) + 2536))
  {
    goto LABEL_117;
  }

  v13 = *(*this - 24);
  v14 = *(*(this + 21) + 80);
  v15 = v14 ? (v14 - 24) : 0;
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v15);
  llvm::IRBuilderBase::SetInsertPoint(this + v13 + 1712, v15, FirstInsertionPt);
  v101 = 128;
  v100[0] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(v100);
  LOBYTE(v102) = 0;
  v104 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v17 = *(this + *(*this - 24) + 2136);
  v18 = v17 + 8;
  v19 = *(v17 + 16);
  if (v19 == v17 + 8)
  {
    v78 = 1;
  }

  else
  {
    Load = 0;
    do
    {
      if (v19)
      {
        v21 = (v19 - 56);
      }

      else
      {
        v21 = 0;
      }

      v22 = *v21;
      if (*v21)
      {
        v23 = *(v22 + 8);
        if ((v23 & 0xFE) == 0x12)
        {
          v23 = *(**(v22 + 16) + 8);
        }

        if ((v23 & 0xFFFFFF00) == 0x300 && v21[1])
        {
          v24 = *this;
          if (!Load)
          {
            v95 = "agc.lib_size_in_bytes";
            LOWORD(v99) = 259;
            v25 = *(this + *(v24 - 24) + 1904);
            v26 = AGCLLVMUserComputeKernelBase::constructSHGlobal(this);
            v27 = *(*this - 24);
            LOWORD(v99) = 257;
            Load = AGCLLVMBuilder::CreateLoad((this + v27 + 1704), v26, &v95);
            v24 = *this;
          }

          v28 = this + *(v24 - 24);
          v29 = *(v28 + 236);
          v30 = llvm::PointerType::get();
          LOWORD(v99) = 257;
          Cast = llvm::IRBuilderBase::CreateCast((v28 + 1712), 49, v21, v30, &v95);
          v32 = this + *(*this - 24);
          v33 = *(v32 + 236);
          LOWORD(v99) = 257;
          GEP = llvm::IRBuilderBase::CreateGEP((v32 + 1712), v33, Cast, Load, &v95);
          v35 = *(*this - 24);
          LOWORD(v99) = 257;
          v36 = llvm::IRBuilderBase::CreateCast(this + v35 + 1712, 49, GEP, v22, &v95);
          v37 = v21[1];
          if (v37)
          {
            do
            {
              v38 = *(v37 + 1);
              v39 = *(v37 + 3);
              v40 = *(v39 + 16);
              if (v40 < 0x1C)
              {
                if (v40 == 5)
                {
                  v44 = *(v37 + 3);
                }

                else
                {
                  v44 = 0;
                }

                v95 = v44;
                if (!v44)
                {
LABEL_88:
                  v78 = 0;
                  v49 = v88;
                  goto LABEL_89;
                }

                if (v44 != Cast)
                {
                  std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&v88, &v95);
                }
              }

              else
              {
                OperandNo = llvm::Use::getOperandNo(v37);
                v42 = *(v39 + 20);
                if ((v42 & 0x40000000) != 0)
                {
                  v43 = *(v39 - 8);
                }

                else
                {
                  v43 = v39 - 32 * (v42 & 0x7FFFFFF);
                }

                v45 = v43 + 32 * OperandNo;
                if (*v45)
                {
                  v46 = *(v45 + 8);
                  **(v45 + 16) = v46;
                  if (v46)
                  {
                    *(v46 + 16) = *(v45 + 16);
                  }
                }

                *v45 = 0;
                v47 = *(v37 + 3);
                v48 = llvm::Use::getOperandNo(v37);
                llvm::User::setOperand(v47, v48, v36);
              }

              v37 = v38;
            }

            while (v38);
          }

          *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v100, v21) = v36;
        }
      }

      v19 = *(v19 + 8);
    }

    while (v19 != v18);
    v49 = v88;
    for (j = v89; v49 != j; *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v100, v51) = v55)
    {
      v52 = *(j - 1);
      j -= 8;
      v51 = v52;
      v89 = j;
      v53 = *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v100, v52[-4 * (*(v52 + 5) & 0x7FFFFFF)]);
      v54 = *(v52 + 9);
      switch(v54)
      {
        case '""':
          v95 = &v97;
          v96 = 0x1000000000;
          v59 = *(v51 + 5) & 0x7FFFFFF;
          if (v59 >= 2)
          {
            v60 = v51 + 4;
            for (k = 1; k < v59; ++k)
            {
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v95, v60[-4 * v59]);
              v59 = *(v51 + 5) & 0x7FFFFFF;
              v60 += 4;
            }
          }

          v62 = *(llvm::ConstantExpr::getAsInstruction(v51, 0) + 64);
          v63 = v95;
          v64 = v96;
          LOWORD(v94) = 257;
          if ((llvm::Type::isOpaquePointerTy(*v53) & 1) == 0)
          {
            v65 = *v53;
            if ((*(*v53 + 2) & 0xFE) == 0x12)
            {
              v65 = **(v65 + 2);
            }

            v62 = **(v65 + 2);
          }

          v55 = llvm::GetElementPtrInst::Create(v62, v53, v63, v64);
          if (v95 != &v97)
          {
            free(v95);
          }

          break;
        case '5':
          llvm::ConstantExpr::getPredicate(v51);
          v55 = llvm::User::operator new(0x40);
          v57 = v51[-4 * (*(v51 + 5) & 0x7FFFFFF) + 4];
          LOWORD(v99) = 257;
          llvm::CmpInst::makeCmpResultType(*v53, v58);
          llvm::CmpInst::CmpInst();
          break;
        case '1':
          v55 = llvm::User::operator new(0x40);
          v56 = *v51;
          LOWORD(v99) = 257;
          llvm::BitCastInst::BitCastInst();
          break;
        default:
          goto LABEL_88;
      }

      llvm::Instruction::insertAfter();
      v66 = v51[1];
      if (v66)
      {
        do
        {
          v67 = *(v66 + 1);
          v68 = *(v66 + 3);
          v69 = *(v68 + 16);
          if (v69 < 0x1C)
          {
            if (v69 == 5)
            {
              v73 = *(v66 + 3);
            }

            else
            {
              v73 = 0;
            }

            v95 = v73;
            if (!v73)
            {
              goto LABEL_88;
            }

            std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&v88, &v95);
          }

          else
          {
            v70 = llvm::Use::getOperandNo(v66);
            v71 = *(v68 + 20);
            if ((v71 & 0x40000000) != 0)
            {
              v72 = *(v68 - 8);
            }

            else
            {
              v72 = v68 - 32 * (v71 & 0x7FFFFFF);
            }

            v74 = v72 + 32 * v70;
            if (*v74)
            {
              v75 = *(v74 + 8);
              **(v74 + 16) = v75;
              if (v75)
              {
                *(v75 + 16) = *(v74 + 16);
              }
            }

            *v74 = 0;
            v76 = *(v66 + 3);
            v77 = llvm::Use::getOperandNo(v66);
            llvm::User::setOperand(v76, v77, v55);
          }

          v66 = v67;
        }

        while (v67);
        v49 = v88;
        j = v89;
      }
    }

    v78 = 1;
LABEL_89:
    if (v49)
    {
      v89 = v49;
      operator delete(v49);
    }
  }

  if (v104 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v102);
    llvm::deallocate_buffer(v102, (16 * v103));
    v104 = 0;
  }

  v79 = v100[0];
  if (v101)
  {
    v96 = 2;
    v97 = 0;
    v98 = -4096;
    v99 = 0;
    v94 = 0;
    v95 = &unk_28259D730;
    v92[0] = 2;
    v92[1] = 0;
    v93 = -8192;
    v91 = &unk_28259D730;
    v80 = (v100[0] + 24);
    v81 = 48 * v101;
    do
    {
      v82 = *v80;
      if (*v80 != -8192 && v82 != -4096 && v82 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v80 - 2));
      }

      v80 += 6;
      v81 -= 48;
    }

    while (v81);
    if (v93 != -8192 && v93 != -4096 && v93 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v92);
    }

    if (v98 != -8192 && v98 != -4096 && v98)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v96);
    }

    v79 = v100[0];
    v85 = 48 * v101;
  }

  else
  {
    v85 = 0;
  }

  llvm::deallocate_buffer(v79, v85);
  if (v78)
  {
LABEL_117:
    result = AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
  }

  else
  {
    result = 0;
  }

  v87 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_28259D730;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::User::setOperand(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 20);
  if ((v3 & 0x40000000) != 0)
  {
    v4 = *(result - 8);
  }

  else
  {
    v4 = result - 32 * (v3 & 0x7FFFFFF);
  }

  v5 = v4 + 32 * a2;
  if (*v5)
  {
    v6 = *(v5 + 8);
    **(v5 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v5 + 16);
    }
  }

  *v5 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v5 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v5 + 8;
    }

    *(v5 + 16) = v7;
    *v7 = v5;
  }

  return result;
}

void *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_28259D730;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_28259D730;
    llvm::ValueHandleBase::operator=((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_28259D730;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_28259D730;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 48 * v5;
    v7 = *(v6 + 24);
    if (v7 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = a1 + 48 * (v13 & v4);
        v7 = *(v6 + 24);
        v8 = 1;
        if (v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_28259D730;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          llvm::ValueHandleBase::operator=((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_28259D730;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

AGCLLVMUserComputeKernelG10 *AGCLLVMUserComputeKernelG10::addWrapperPostfix(AGCLLVMUserComputeKernelG10 *this)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  v2 = *(v1 + 271);
  if (v2[1919] == 1)
  {
    v3 = this;
    v31 = *(v1 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (v1 + 1712));
    v33 = *(v1 + 452);
    (*(*v2 + 336))(v2, &v31);
    if (v32)
    {
      llvm::MetadataTracking::untrack();
    }

    v4 = *(v3 + *(*v3 - 24) + 1896);
    v34[0] = llvm::ConstantInt::get();
    v5 = *(v3 + *(*v3 - 24) + 1896);
    v34[1] = llvm::ConstantInt::get();
    AGCLLVMObject::buildWGBarrier(v3 + *(*v3 - 24), v34, 2);
    v6 = v3 + *(*v3 - 24);
    v7 = *(v6 + 238);
    v8 = llvm::ConstantInt::get();
    v9 = *(v3 + *(*v3 - 24) + 1888);
    v10 = llvm::PointerType::get();
    v30 = 257;
    llvm::IRBuilderBase::CreateCast((v6 + 1712), 48, v8, v10, v29);
    v29[0] = "agc.lm_size";
    v30 = 259;
    v11 = *(v3 + *(*v3 - 24) + 1904);
    v12 = AGCLLVMUserComputeKernelBase::constructSHGlobal(v3);
    v13 = *(v3 + *(*v3 - 24) + 1904);
    v28 = llvm::ConstantInt::get();
    v14 = AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10(v3, *(v3 + *(*v3 - 24) + 1904));
    v15 = v3 + *(*v3 - 24);
    v30 = 257;
    llvm::IRBuilderBase::CreateMul((v15 + 1712), v14, v28, v29);
    v16 = v3 + *(*v3 - 24);
    v30 = 257;
    AGCLLVMBuilder::CreateLoad((v16 + 1704), v12, v29);
    v17 = (v3 + *(*v3 - 24));
    v18 = AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupCommon<5u>(v3, v17[238], 0);
    v19 = v3 + *(*v3 - 24);
    v20 = *(*(v19 + 271) + 968);
    v21 = *(v19 + 238);
    v22 = llvm::ConstantInt::get();
    v30 = 257;
    llvm::IRBuilderBase::CreateMul((v17 + 214), v18, v22, v29);
    v23 = v3 + *(*v3 - 24);
    v24 = *(v23 + 220);
    v25 = *(v23 + 270);
    v29[0] = "gin793.loop.end";
    v30 = 259;
    v26 = *(v24 + 56);
    operator new();
  }

  v27 = *MEMORY[0x277D85DE8];
  return this;
}

void AGCLLVMUserComputeKernelG10::addInitCompilePass(AGCLLVMUserComputeKernelG10 *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelG10>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileComputeShaderG10Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x51)
  {
    v1 = v0;
  }

  else
  {
    v1 = 81;
  }

  v2 = &aStringrefLlvmG_38[v1];
  v3 = 81 - v1;
  if ((81 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 81 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeShaderG10Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeShaderG10Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelG10>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6B)
  {
    v1 = v0;
  }

  else
  {
    v1 = 107;
  }

  v2 = &aStringrefLlvmG_37[v1];
  v3 = 107 - v1;
  if ((107 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 107 - v1;
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

void AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(AGCLLVMUserComputeKernelG10 *this)
{
  AGCLLVMObject::~AGCLLVMObject((v1 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v1 + 4640));
}

void virtual thunk toAGCLLVMDriverTGSizeOptimizationShader::~AGCLLVMDriverTGSizeOptimizationShader(AGCLLVMDriverTGSizeOptimizationShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257E4F8;
  v1[584] = &unk_28257E880;
  v1[797] = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257E9A8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257E4F8;
  v1[584] = &unk_28257E880;
  v1[797] = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257E9A8);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

void virtual thunk toAGCLLVMDriverComputeKernel::~AGCLLVMDriverComputeKernel(AGCLLVMDriverComputeKernel *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257E470);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10((this + *(*this - 24)), &off_28257E470);
  v2 = (v1 + 4640);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverComputeKernel::~AGCLLVMDriverComputeKernel(AGCLLVMDriverComputeKernel *this)
{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E470);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E470);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4640));
}

uint64_t AGCLLVMDriverTGSizeOptimizationShader::replaceBuiltins(AGCLLVMDriverTGSizeOptimizationShader *this)
{
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(this);
    v3 = *(this + *(*this - 24) + 2136);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v5 = Function;
      v6 = *(Function + 8);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 8);
          v8 = *(v6 + 24);
          llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v8);
          v9 = (v8 - 32 * (*(v8 + 5) & 0x7FFFFFF));
          AGCLLVMUserComputeKernelG10::buildFastDivideThreadgroupSize(this, *v9, v9[4]);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v8);
          v6 = v7;
        }

        while (v7);
      }

      llvm::Function::eraseFromParent(v5);
    }
  }

  return v2;
}

uint64_t AGCLLVMDriverTGSizeOptimizationShader::setupShaderInputs(AGCLLVMDriverTGSizeOptimizationShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverTGSizeOptimizationShader::~AGCLLVMDriverTGSizeOptimizationShader(AGCLLVMDriverTGSizeOptimizationShader *this)
{
  *this = &unk_28257E4F8;
  v2 = (this + 4672);
  *(this + 584) = &unk_28257E880;
  *(this + 797) = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E9A8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257E4F8;
  v2 = (this + 4672);
  *(this + 584) = &unk_28257E880;
  *(this + 797) = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E9A8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::~AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader(AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257F4D0;
  v1[584] = &unk_28257F858;
  v1[797] = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257F980);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257F4D0;
  v1[584] = &unk_28257F858;
  v1[797] = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257F980);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::setupShaderInputs(AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::~AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader(AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader *this)
{
  *this = &unk_28257F4D0;
  v2 = (this + 4672);
  *(this + 584) = &unk_28257F858;
  *(this + 797) = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F980);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257F4D0;
  v2 = (this + 4672);
  *(this + 584) = &unk_28257F858;
  *(this + 797) = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F980);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverExecuteIndirectComputeShaderGen5::~AGCLLVMDriverExecuteIndirectComputeShaderGen5(AGCLLVMDriverExecuteIndirectComputeShaderGen5 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257FA18;
  v1[584] = &unk_28257FDA0;
  v1[797] = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257FEC0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257FA18;
  v1[584] = &unk_28257FDA0;
  v1[797] = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257FEC0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverExecuteIndirectComputeShaderGen5::setupShaderInputs(AGCLLVMDriverExecuteIndirectComputeShaderGen5 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverExecuteIndirectComputeShaderGen5::~AGCLLVMDriverExecuteIndirectComputeShaderGen5(AGCLLVMDriverExecuteIndirectComputeShaderGen5 *this)
{
  *this = &unk_28257FA18;
  v2 = (this + 4672);
  *(this + 584) = &unk_28257FDA0;
  *(this + 797) = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257FEC0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257FA18;
  v2 = (this + 4672);
  *(this + 584) = &unk_28257FDA0;
  *(this + 797) = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257FEC0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverGPUGatherComputeShaderGen3::~AGCLLVMDriverGPUGatherComputeShaderGen3(AGCLLVMDriverGPUGatherComputeShaderGen3 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257FF48;
  v1[584] = &unk_2825802D0;
  v1[797] = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_2825803F8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28257FF48;
  v1[584] = &unk_2825802D0;
  v1[797] = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_2825803F8);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverGPUGatherComputeShaderGen3::setupShaderInputs(AGCLLVMDriverGPUGatherComputeShaderGen3 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverGPUGatherComputeShaderGen3::~AGCLLVMDriverGPUGatherComputeShaderGen3(AGCLLVMDriverGPUGatherComputeShaderGen3 *this)
{
  *this = &unk_28257FF48;
  v2 = (this + 4672);
  *(this + 584) = &unk_2825802D0;
  *(this + 797) = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825803F8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257FF48;
  v2 = (this + 4672);
  *(this + 584) = &unk_2825802D0;
  *(this + 797) = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825803F8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282580490;
  v1[584] = &unk_282580818;
  v1[797] = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282580940);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282580490;
  v1[584] = &unk_282580818;
  v1[797] = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282580940);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::setupShaderInputs(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::setupShaderWrapper(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0);
  }

  return v2;
}

void AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this)
{
  *this = &unk_282580490;
  v2 = (this + 4672);
  *(this + 584) = &unk_282580818;
  *(this + 797) = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580940);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282580490;
  v2 = (this + 4672);
  *(this + 584) = &unk_282580818;
  *(this + 797) = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580940);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825809D8;
  v1[584] = &unk_282580D60;
  v1[797] = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282580E88);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825809D8;
  v1[584] = &unk_282580D60;
  v1[797] = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282580E88);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::setupShaderInputs(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::setupShaderWrapper(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0);
  }

  return v2;
}

void AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this)
{
  *this = &unk_2825809D8;
  v2 = (this + 4672);
  *(this + 584) = &unk_282580D60;
  *(this + 797) = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580E88);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825809D8;
  v2 = (this + 4672);
  *(this + 584) = &unk_282580D60;
  *(this + 797) = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580E88);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282580F20;
  v1[584] = &unk_2825812A8;
  v1[797] = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_2825813D0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282580F20;
  v1[584] = &unk_2825812A8;
  v1[797] = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_2825813D0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::setupShaderInputs(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::setupShaderWrapper(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0);
  }

  return v2;
}

void AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this)
{
  *this = &unk_282580F20;
  v2 = (this + 4672);
  *(this + 584) = &unk_2825812A8;
  *(this + 797) = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825813D0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282580F20;
  v2 = (this + 4672);
  *(this + 584) = &unk_2825812A8;
  *(this + 797) = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825813D0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverComputeProgressMarkerShaderGen3::~AGCLLVMDriverComputeProgressMarkerShaderGen3(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282581468;
  v1[584] = &unk_2825817F0;
  v1[797] = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282581918);
  AGCLLVMObject::~AGCLLVMObject((v1 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282581468;
  v1[584] = &unk_2825817F0;
  v1[797] = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282581918);

  AGCLLVMObject::~AGCLLVMObject((v1 + 584));
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderGen3::setupShaderInputs(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderGen3::setupShaderWrapper(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 2, 0x100000000);
  }

  return v2;
}

void AGCLLVMDriverComputeProgressMarkerShaderGen3::~AGCLLVMDriverComputeProgressMarkerShaderGen3(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this)
{
  *this = &unk_282581468;
  v2 = (this + 4672);
  *(this + 584) = &unk_2825817F0;
  *(this + 797) = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581918);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282581468;
  v2 = (this + 4672);
  *(this + 584) = &unk_2825817F0;
  *(this + 797) = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581918);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverComputeControlFlowPredicateShaderGen3::~AGCLLVMDriverComputeControlFlowPredicateShaderGen3(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825819B0;
  v1[585] = &unk_282581D38;
  v1[798] = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282581E60);
  AGCLLVMObject::~AGCLLVMObject((v1 + 585));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825819B0;
  v1[585] = &unk_282581D38;
  v1[798] = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282581E60);

  AGCLLVMObject::~AGCLLVMObject((v1 + 585));
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderGen3::setupShaderInputs(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderGen3::setupShaderWrapper(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::setupShaderWrapper(this);
  if (result)
  {
    v3 = strlen(off_277E20A10[*(this + 1168)]);
    v4 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this + *(*this - 24) + 1704, off_277E20A10[*(this + 1168)], v3, *(this + *(*this - 24) + 1880), *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1904));
    v5 = v4;
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(v4);
    }

    v6 = *(v5 + 11);
    llvm::Value::setName();
    v9 = "right";
    v10 = 259;
    llvm::Value::setName();
    v7 = *(this + *(*this - 24) + 2160);
    v9 = "entry";
    v10 = 259;
    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMDriverComputeControlFlowPredicateShaderGen3::~AGCLLVMDriverComputeControlFlowPredicateShaderGen3(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this)
{
  *this = &unk_2825819B0;
  v2 = (this + 4680);
  *(this + 585) = &unk_282581D38;
  *(this + 798) = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581E60);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825819B0;
  v2 = (this + 4680);
  *(this + 585) = &unk_282581D38;
  *(this + 798) = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581E60);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverComputeProgressMarkerShaderLegacy::~AGCLLVMDriverComputeProgressMarkerShaderLegacy(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282581EF8;
  v1[630] = &unk_282582280;
  v1[843] = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 626));
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v1, &off_2825823A8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 630));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282581EF8;
  v1[630] = &unk_282582280;
  v1[843] = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 626));
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v1, &off_2825823A8);

  AGCLLVMObject::~AGCLLVMObject((v1 + 630));
}

void virtual thunk toAGCLLVMDriverComputeKernelLegacy::~AGCLLVMDriverComputeKernelLegacy(AGCLLVMDriverComputeKernelLegacy *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v1, &off_28257DA28);
  AGCLLVMObject::~AGCLLVMObject((v1 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy((this + *(*this - 24)), &off_28257DA28);
  v2 = (v1 + 5008);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverComputeKernelLegacy::~AGCLLVMDriverComputeKernelLegacy(AGCLLVMDriverComputeKernelLegacy *this)
{
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_28257DA28);
  AGCLLVMObject::~AGCLLVMObject((v1 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_28257DA28);
  AGCLLVMObject::~AGCLLVMObject((v1 + 5008));
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderLegacy::setupShaderInputs(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 626);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderLegacy::setupShaderWrapper(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0x100000000);
  }

  return v2;
}

void AGCLLVMDriverComputeProgressMarkerShaderLegacy::~AGCLLVMDriverComputeProgressMarkerShaderLegacy(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this)
{
  *this = &unk_282581EF8;
  v2 = (this + 5040);
  *(this + 630) = &unk_282582280;
  *(this + 843) = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825823A8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282581EF8;
  v2 = (this + 5040);
  *(this + 630) = &unk_282582280;
  *(this + 843) = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825823A8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverComputeControlFlowPredicateShaderLegacy::~AGCLLVMDriverComputeControlFlowPredicateShaderLegacy(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282582440;
  v1[631] = &unk_2825827C8;
  v1[844] = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 626));
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v1, &off_2825828F0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 631));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282582440;
  v1[631] = &unk_2825827C8;
  v1[844] = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 626));
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v1, &off_2825828F0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 631));
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::setupShaderInputs(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 626);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::setupShaderWrapper(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::setupShaderWrapper(this);
  if (result)
  {
    v3 = strlen(off_277E20A10[*(this + 1260)]);
    v4 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this + *(*this - 24) + 1704, off_277E20A10[*(this + 1260)], v3, *(this + *(*this - 24) + 1880), *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1904));
    v5 = v4;
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(v4);
    }

    v6 = *(v5 + 11);
    llvm::Value::setName();
    v9 = "right";
    v10 = 259;
    llvm::Value::setName();
    v7 = *(this + *(*this - 24) + 2160);
    v9 = "entry";
    v10 = 259;
    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::~AGCLLVMDriverComputeControlFlowPredicateShaderLegacy(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this)
{
  *this = &unk_282582440;
  v2 = (this + 5048);
  *(this + 631) = &unk_2825827C8;
  *(this + 844) = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825828F0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282582440;
  v2 = (this + 5048);
  *(this + 631) = &unk_2825827C8;
  *(this + 844) = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825828F0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t virtual thunk toAGCLLVMDriverTensorBlitShader::dumpType(AGCLLVMDriverTensorBlitShader *this)
{
  v1 = this + *(*this - 64);
  llvm::SmallVectorTemplateBase<char,true>::push_back(v1 + 584, 0);
  --*(v1 + 585);
  return *(v1 + 584);
}

void virtual thunk toAGCLLVMDriverTensorBlitShader::~AGCLLVMDriverTensorBlitShader(AGCLLVMDriverTensorBlitShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282583418;
  v1[596] = &unk_2825837A0;
  v1[809] = &unk_2825838B0;
  v2 = v1[584];
  if (v2 != v1 + 587)
  {
    free(v2);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_2825838C8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 596));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282583418;
  v1[596] = &unk_2825837A0;
  v1[809] = &unk_2825838B0;
  v2 = v1[584];
  if (v2 != v1 + 587)
  {
    free(v2);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_2825838C8);

  AGCLLVMObject::~AGCLLVMObject((v1 + 596));
}

uint64_t AGCLLVMDriverTensorBlitShader::dumpType(AGCLLVMDriverTensorBlitShader *this)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(this + 584, 0);
  --*(this + 585);
  return *(this + 584);
}

uint64_t AGCLLVMDriverTensorBlitShader::setupShaderInputs(AGCLLVMDriverTensorBlitShader *this)
{
  v2 = AGCLLVMUserComputeKernelG10::setupShaderInputs(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2136);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v5 = Function;
      llvm::Function::addFnAttr();
      *(v5 + 32) = *(v5 + 32) & 0xFFFFBFC0 | 0x4007;
      v6 = *(this + *(*this - 24) + 2160);
      operator new();
    }
  }

  return v2;
}

void AGCLLVMDriverTensorBlitShader::~AGCLLVMDriverTensorBlitShader(AGCLLVMDriverTensorBlitShader *this)
{
  *this = &unk_282583418;
  v2 = (this + 4768);
  *(this + 596) = &unk_2825837A0;
  *(this + 809) = &unk_2825838B0;
  v3 = *(this + 584);
  if (v3 != this + 4696)
  {
    free(v3);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825838C8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282583418;
  v2 = (this + 4768);
  *(this + 596) = &unk_2825837A0;
  *(this + 809) = &unk_2825838B0;
  v3 = *(this + 584);
  if (v3 != this + 4696)
  {
    free(v3);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825838C8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMUserComputeKernelBase::AGCLLVMUserComputeKernelBase(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = AGCLLVMUserShader::AGCLLVMUserShader(a1, a2 + 1, a3, "air.kernel", &default_cs, 0, 0);
  v8 = *a2;
  *v7 = *a2;
  *(a1 + *(v8 - 24)) = a2[7];
  *(a1 + *(*a1 - 24) + 1704) = a2[8];
  *(a1 + 4536) = a4;
  *(a1 + 4544) = (*(a4 + 16) & 1) == 0;
  v9 = *a1;
  *(a1 + *(*a1 - 24) + 4577) = *(a4 + 13) & 1;
  *(*(a1 + *(v9 - 24) + 2168) + 1941) = (*(a4 + 16) & 0x1000) != 0;
  *(*(a1 + *(v9 - 24) + 2168) + 1942) = (*(a4 + 16) & 0x2000) != 0;
  *(a1 + 3912) = (*(a4 + 12) & 0x200) != 0;
  AGCLLVMUserShader::enableStatistics(a1, *(a4 + 12) & 1, (*(a4 + 12) >> 1) & 1);
  *(a1 + 18) = (*(a4 + 12) & 8) != 0;
  *(a1 + *(*a1 - 24) + 4576) = (*(a4 + 12) & 0x4000000) != 0;
  *(a1 + 3504) = *a4;
  *(a1 + 4548) = AGCLLVMUserShader::parseMaxTotalThreadsPerThreadgroup(a1);
  *(a1 + 20) = (*(a4 + 12) & 4) != 0;
  v10 = *(a1 + *(*a1 - 24) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v12 = *(Function + 8) != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1 + *(*a1 - 24);
  *(v13 + 2224) = v12;
  *(v13 + 5128) = Function;
  *(a1 + 19) = (*(a4 + 16) & 0x80) != 0;
  return a1;
}

uint64_t AGCLLVMDriverComputeKernelLegacy::AGCLLVMDriverComputeKernelLegacy(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = AGCLLVMUserComputeKernelBase::AGCLLVMUserComputeKernelBase(a1, a2 + 2, a3, a4);
  v6 = a2[1];
  *result = v6;
  *(result + *(v6 - 24)) = a2[11];
  *(result + *(*result - 24) + 1704) = a2[12];
  *(result + 4552) = result + 4568;
  *(result + 4560) = 0x200000000;
  v7 = -72;
  do
  {
    v8 = result + v7;
    *(v8 + 4664) = 4;
    *(v8 + 4672) = 0uLL;
    v7 += 24;
  }

  while (v7);
  *(result + 4664) = 4;
  *(result + 4672) = 0u;
  v9 = -72;
  do
  {
    v10 = result + v9;
    *(v10 + 4760) = 4;
    *(v10 + 4768) = 0uLL;
    v9 += 24;
  }

  while (v9);
  *(result + 4760) = 4;
  *(result + 4768) = 0u;
  *(result + 4784) = 4;
  *(result + 4792) = 0u;
  *(result + 4808) = 4;
  *(result + 4816) = 0u;
  v11 = -72;
  *(result + 4832) = 4;
  *(result + 4840) = 0u;
  do
  {
    v12 = result + v11;
    *(v12 + 4928) = 4;
    *(v12 + 4936) = 0uLL;
    v11 += 24;
  }

  while (v11);
  *(result + 4928) = 4;
  *(result + 4936) = 0u;
  *(result + 4952) = 4;
  *(result + 4960) = 0u;
  *(result + 4976) = 4;
  *(result + 4984) = 0u;
  *(result + 5000) = 0;
  v13 = *a2;
  *result = *a2;
  *(result + *(v13 - 24)) = a2[13];
  *(result + *(*result - 24) + 1704) = a2[14];
  return result;
}

uint64_t AGCLLVMUserComputeKernelG10::AGCLLVMUserComputeKernelG10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = AGCLLVMUserComputeKernelBase::AGCLLVMUserComputeKernelBase(a1, a2 + 1, a3, a4);
  v7 = 0;
  v8 = *a2;
  *result = *a2;
  *(result + *(v8 - 24)) = a2[10];
  *(result + *(*result - 24) + 1704) = a2[11];
  *(result + 4552) = 4;
  *(result + 4560) = 0u;
  *(result + 4576) = 4;
  *(result + 4584) = 0u;
  *(result + 4600) = 0;
  *(result + 4608) = 4;
  *(result + 4616) = 0u;
  if ((*(a4 + 16) & 4) != 0)
  {
    v7 = (*(a4 + 13) & 2) == 0;
  }

  *(result + 4632) = v7;
  return result;
}

void *AGCLLVMDriverComputeKernel::AGCLLVMDriverComputeKernel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = AGCLLVMUserComputeKernelG10::AGCLLVMUserComputeKernelG10(a1, a2 + 1, a3, a4);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 24)) = a2[13];
  *(result + *(*result - 24) + 1704) = a2[14];
  return result;
}

void AGCLLVMDriverTGSizeOptimizationShader::create(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "tg_size_opt");
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v6 >= 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  AGCLLVMObject::readBitcode(a2, v3, v4, 0);
  operator new();
}

void virtual thunk toAGCLLVMDriverSparseShaders::~AGCLLVMDriverSparseShaders(AGCLLVMDriverSparseShaders *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257EEF0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10((this + *(*this - 24)), &off_28257EEF0);
  v2 = (v1 + 4648);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverSparseShaders::~AGCLLVMDriverSparseShaders(AGCLLVMDriverSparseShaders *this)
{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257EEF0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257EEF0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4648));
}

void AGCLLVMDriverSparseShaders::create(AGCLLVMDriverSparseShaders *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v4 = *(*(this + 4) + 28) - 24;
  if (v4 < 0xF && ((0x4D81u >> v4) & 1) != 0)
  {
    v5 = off_277E20400;
  }

  else
  {
    v5 = off_277E20428;
  }

  v6 = v5[a3];
  if (v6)
  {
    v7 = strlen(v5[a3]);
  }

  else
  {
    v7 = 0;
  }

  AGCLLVMObject::readBitcode(a2, v6, v7, 1);
  {
    {
      AGCLLVMDriverSparseShaders::create(AGCLLVMCtx &,llvm::LLVMContext &,unsigned int)::computeCS = 0;
      *algn_27C8D97B8 = 0;
      qword_27C8D97C0 = 0;
    }
  }

  operator new();
}

void virtual thunk toAGCLLVMDriverFastClearShaders::~AGCLLVMDriverFastClearShaders(AGCLLVMDriverFastClearShaders *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_28257F438);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10((this + *(*this - 24)), &off_28257F438);
  v2 = (v1 + 4648);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverFastClearShaders::~AGCLLVMDriverFastClearShaders(AGCLLVMDriverFastClearShaders *this)
{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F438);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F438);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4648));
}

void AGCLLVMDriverFastClearShaders::create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 3) == 1)
  {
    if ((a3 & 4) != 0)
    {
      v4 = "blit_fast_clear_gen1_meta";
    }

    else
    {
      if ((a3 & 0x800) == 0)
      {
        v4 = 0;
        v7 = (a3 >> 3);
        if (v7 > 3)
        {
          if (v7 == 4)
          {
            v4 = "blit_fast_clear_gen1_4";
          }

          else if (v7 == 8)
          {
            v4 = "blit_fast_clear_gen1_8";
          }

          else
          {
            v6 = 0;
            if (v7 != 16)
            {
              goto LABEL_23;
            }

            v4 = "blit_fast_clear_gen1_16";
          }

          goto LABEL_22;
        }

        if (v7 == 1)
        {
          v4 = "blit_fast_clear_gen1_1";
          goto LABEL_22;
        }

        v6 = 0;
        if (v7 == 2)
        {
          v4 = "blit_fast_clear_gen1_2";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v4 = "blit_fast_clear_gen1_meta_copy";
    }
  }

  else
  {
    if ((a3 & 3) != 2)
    {
      v4 = 0;
      v6 = 0;
      goto LABEL_23;
    }

    if ((a3 & 4) != 0)
    {
      v4 = "blit_fast_clear_gen2_meta";
    }

    else
    {
      if ((a3 & 0x800) == 0)
      {
        v4 = 0;
        v5 = (a3 >> 3);
        if (v5 <= 4)
        {
          if (v5 == 1)
          {
            v4 = "blit_fast_clear_gen2_1";
          }

          else if (v5 == 2)
          {
            v4 = "blit_fast_clear_gen2_2";
          }

          else
          {
            v6 = 0;
            if (v5 != 4)
            {
              goto LABEL_23;
            }

            v4 = "blit_fast_clear_gen2_4";
          }

          goto LABEL_22;
        }

        if (v5 == 5)
        {
          v4 = "blit_fast_clear_gen2_5";
          goto LABEL_22;
        }

        if (v5 == 8)
        {
          v4 = "blit_fast_clear_gen2_8";
          goto LABEL_22;
        }

        v6 = 0;
        if (v5 == 16)
        {
          v4 = "blit_fast_clear_gen2_16";
          goto LABEL_22;
        }

LABEL_23:
        AGCLLVMObject::readBitcode(a2, v4, v6, 1);
        {
          {
            AGCLLVMDriverFastClearShaders::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBlitFastClearState const*)::computeCS = 0;
            *algn_27C8D97D8 = 0;
            qword_27C8D97E0 = 0;
          }
        }

        operator new();
      }

      v4 = "blit_fast_clear_gen2_meta_copy";
    }
  }

LABEL_22:
  v6 = strlen(v4);
  goto LABEL_23;
}

const char *getComputeControlFlowBitcodeFileName(uint64_t a1)
{
  v1 = *(a1 + 28) - 14;
  result = "compute_control_flow_predicate_g13";
  switch(v1)
  {
    case 0:
    case 2:
    case 11:
    case 12:
    case 13:
      return result;
    case 3:
    case 4:
      result = "compute_control_flow_predicate_g14";
      break;
    case 5:
    case 6:
    case 7:
      result = "compute_control_flow_predicate_g14x";
      break;
    case 8:
      result = "compute_control_flow_predicate_g15p_b0";
      break;
    case 10:
      v4 = HIWORD(*(a1 + 24));
      v5 = "compute_control_flow_predicate_g15g_a0";
      if (v4 == 3)
      {
        v5 = "compute_control_flow_predicate_g15g_b0";
      }

      if (v4 == 5)
      {
        result = "compute_control_flow_predicate_g15g_c0";
      }

      else
      {
        result = v5;
      }

      break;
    case 17:
      if (*(a1 + 26) - 3 >= 2)
      {
        result = "compute_control_flow_predicate_g16p_a0";
      }

      else
      {
        result = "compute_control_flow_predicate_g16p_b0";
      }

      break;
    case 18:
    case 20:
      result = "compute_control_flow_predicate_hal200";
      break;
    case 21:
    case 24:
      result = "compute_control_flow_predicate_hal300";
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t virtual thunk toAGCLLVMDriverUberBlitShader::dumpType(AGCLLVMDriverUberBlitShader *this)
{
  v1 = this + *(*this - 64);
  llvm::SmallVectorTemplateBase<char,true>::push_back(v1 + 584, 0);
  --*(v1 + 585);
  return *(v1 + 584);
}

void virtual thunk toAGCLLVMDriverUberBlitShader::~AGCLLVMDriverUberBlitShader(AGCLLVMDriverUberBlitShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282582988;
  v1[595] = &unk_282582D10;
  v1[808] = &unk_282582E20;
  v2 = v1[584];
  if (v2 != v1 + 587)
  {
    free(v2);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282582E38);
  AGCLLVMObject::~AGCLLVMObject((v1 + 595));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282582988;
  v1[595] = &unk_282582D10;
  v1[808] = &unk_282582E20;
  v2 = v1[584];
  if (v2 != v1 + 587)
  {
    free(v2);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282582E38);

  AGCLLVMObject::~AGCLLVMObject((v1 + 595));
}

uint64_t AGCLLVMDriverUberBlitShader::dumpType(AGCLLVMDriverUberBlitShader *this)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(this + 584, 0);
  --*(this + 585);
  return *(this + 584);
}

void AGCLLVMDriverUberBlitShader::~AGCLLVMDriverUberBlitShader(AGCLLVMDriverUberBlitShader *this)
{
  *this = &unk_282582988;
  v2 = (this + 4760);
  *(this + 595) = &unk_282582D10;
  *(this + 808) = &unk_282582E20;
  v3 = *(this + 584);
  if (v3 != this + 4696)
  {
    free(v3);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282582E38);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282582988;
  v2 = (this + 4760);
  *(this + 595) = &unk_282582D10;
  *(this + 808) = &unk_282582E20;
  v3 = *(this + 584);
  if (v3 != this + 4696)
  {
    free(v3);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282582E38);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t virtual thunk toAGCLLVMDriverBVHBuilderComputeShader::dumpType(AGCLLVMDriverBVHBuilderComputeShader *this)
{
  v1 = this + *(*this - 64);
  llvm::SmallVectorTemplateBase<char,true>::push_back(v1 + 584, 0);
  --*(v1 + 585);
  return *(v1 + 584);
}

void virtual thunk toAGCLLVMDriverBVHBuilderComputeShader::~AGCLLVMDriverBVHBuilderComputeShader(AGCLLVMDriverBVHBuilderComputeShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282582ED0;
  v1[595] = &unk_282583258;
  v1[808] = &unk_282583368;
  v2 = v1[584];
  if (v2 != v1 + 587)
  {
    free(v2);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282583380);
  AGCLLVMObject::~AGCLLVMObject((v1 + 595));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282582ED0;
  v1[595] = &unk_282583258;
  v1[808] = &unk_282583368;
  v2 = v1[584];
  if (v2 != v1 + 587)
  {
    free(v2);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 580));
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v1, &off_282583380);

  AGCLLVMObject::~AGCLLVMObject((v1 + 595));
}

uint64_t AGCLLVMDriverBVHBuilderComputeShader::dumpType(AGCLLVMDriverBVHBuilderComputeShader *this)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(this + 584, 0);
  --*(this + 585);
  return *(this + 584);
}

void AGCLLVMDriverBVHBuilderComputeShader::~AGCLLVMDriverBVHBuilderComputeShader(AGCLLVMDriverBVHBuilderComputeShader *this)
{
  *this = &unk_282582ED0;
  v2 = (this + 4760);
  *(this + 595) = &unk_282583258;
  *(this + 808) = &unk_282583368;
  v3 = *(this + 584);
  if (v3 != this + 4696)
  {
    free(v3);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282583380);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282582ED0;
  v2 = (this + 4760);
  *(this + 595) = &unk_282583258;
  *(this + 808) = &unk_282583368;
  v3 = *(this + 584);
  if (v3 != this + 4696)
  {
    free(v3);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282583380);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMUserDynamicLibrary::getTileConstant(void *a1, unsigned int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 <= 3)
  {
    v3 = dword_20E70CAD0[a2];
  }

  v4 = llvm::ArrayType::get(*(a1 + *(*a1 - 40) + *(*(a1 + *(*a1 - 40)) - 24) + 1888), 0x18);
  v5 = *v4;
  v25[0] = v4;
  v6 = llvm::StructType::get();
  v7 = (a1 + *(*a1 - 32));
  DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v7);
  v26 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 213), DylibBuiltinPerCommandStateVar, v25);
  v10 = llvm::PointerType::get();
  v24 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v7 + 214, Load, v10, v23);
  v12 = a1 + *(*a1 - 32);
  v13 = *(v12 + 238);
  v23[0] = llvm::ConstantInt::get();
  v14 = *(a1 + *(*a1 - 32) + 1904);
  v23[1] = llvm::ConstantInt::get();
  v15 = *(a1 + *(*a1 - 32) + 1904);
  v23[2] = llvm::ConstantInt::get();
  v26 = 257;
  llvm::Type::isOpaquePointerTy(*PointerCast);
  v16 = llvm::IRBuilderBase::CreateInBoundsGEP((v12 + 1712), v6, PointerCast, v23, 3, v25);
  v17 = a1 + *(*a1 - 32);
  v18 = *(v17 + 238);
  v19 = llvm::PointerType::get();
  v26 = 257;
  v20 = llvm::IRBuilderBase::CreatePointerCast(v17 + 214, v16, v19, v25);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*v20);
  result = llvm::IRBuilderBase::CreateAlignedLoad(v17 + 214, v18, v20, 0, v23);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t virtual thunk toAGCLLVMUserDynamicLibrary::disableGin1122SWWA(AGCLLVMUserDynamicLibrary *this)
{
  return *(this + *(*this - 416) + *(*(this + *(*this - 416)) - 24) + 8);
}

{
  return *(this + *(*this - 128) + *(*(this + *(*this - 128)) - 24) + 8);
}

uint64_t virtual thunk toAGCLLVMUserDynamicLibrary::getMaxSharedRegisters(AGCLLVMUserDynamicLibrary *this)
{
  v1 = *(this + *(*this - 312) + *(*(this + *(*this - 312)) - 32) + 2168);
  v2 = v1[235];
  v3 = v1[236];
  v4 = v1[237];
  if (v3 < v2)
  {
    v2 = v3;
  }

  if (v4 >= v2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t AGCLLVMUserDynamicLibrary::replaceBuiltins(AGCLLVMUserDynamicLibrary *this)
{
  v25[42] = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::replaceBuiltins((this + *(*this - 40)));
  if (v2)
  {
    v3 = *(this + *(*this - 32) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v21, *v3);
    v25[41] = this;
    v21 = &unk_28259FB30;
    v25[37] = v3;
    {
      std::string::basic_string[abi:nn200100]<0>(AGCLLVMUserDynamicLibrary::replaceWorkitemFunctions(void)::workitem_functions, "air.get_dispatch_local_size");
      dword_27C8D99D0 = 1;
      qword_27C8D99D8 = AGCLLVMUserDynamicLibrary::buildDispatchLocalSize;
      unk_27C8D99E0 = 0;
      dword_27C8D99E8 = 4;
      word_27C8D99EC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D99F0, "air.get_dispatch_quadgroups_per_threadgroup");
      dword_27C8D9A08 = 1;
      qword_27C8D9A10 = AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup;
      unk_27C8D9A18 = 0;
      dword_27C8D9A20 = 2;
      word_27C8D9A24 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9A26[2], "air.get_dispatch_simdgroups_per_threadgroup");
      dword_27C8D9A40 = 1;
      qword_27C8D9A48 = AGCLLVMUserDynamicLibrary::buildDispatchSimdgroupsPerThreadgroup;
      unk_27C8D9A50 = 0;
      dword_27C8D9A58 = 2;
      word_27C8D9A5C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9A60, "air.get_dispatch_threads_per_threadgroup");
      dword_27C8D9A78 = 1;
      qword_27C8D9A80 = AGCLLVMUserDynamicLibrary::buildDispatchLocalSize;
      unk_27C8D9A88 = 0;
      dword_27C8D9A90 = 4;
      word_27C8D9A94 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9A98, "air.get_global_id");
      dword_27C8D9AB0 = 1;
      qword_27C8D9AB8 = AGCLLVMUserDynamicLibrary::buildGlobalID;
      unk_27C8D9AC0 = 0;
      dword_27C8D9AC8 = 4;
      word_27C8D9ACC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9AD0, "air.get_global_size");
      dword_27C8D9AE8 = 1;
      qword_27C8D9AF0 = AGCLLVMUserDynamicLibrary::buildGlobalSize;
      unk_27C8D9AF8 = 0;
      dword_27C8D9B00 = 4;
      word_27C8D9B04 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9B06[2], "air.get_group_id");
      dword_27C8D9B20 = 1;
      qword_27C8D9B28 = AGCLLVMUserDynamicLibrary::buildGroupID;
      unk_27C8D9B30 = 0;
      dword_27C8D9B38 = 4;
      word_27C8D9B3C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9B40, "air.get_local_id");
      dword_27C8D9B58 = 1;
      qword_27C8D9B60 = AGCLLVMUserDynamicLibrary::buildLocalID;
      unk_27C8D9B68 = 0;
      dword_27C8D9B70 = 4;
      word_27C8D9B74 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9B78, "air.get_local_linear_id");
      dword_27C8D9B90 = 1;
      qword_27C8D9B98 = AGCLLVMUserDynamicLibrary::buildLocalLinearID;
      unk_27C8D9BA0 = 0;
      dword_27C8D9BA8 = 2;
      word_27C8D9BAC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9BB0, "air.get_local_size");
      dword_27C8D9BC8 = 1;
      qword_27C8D9BD0 = AGCLLVMUserDynamicLibrary::buildLocalSize;
      qword_27C8D9BD8 = 0;
      dword_27C8D9BE0 = 4;
      word_27C8D9BE4 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9BE6[2], "air.get_num_groups");
      dword_27C8D9C00 = 1;
      qword_27C8D9C08 = AGCLLVMUserDynamicLibrary::buildNumGroups;
      qword_27C8D9C10 = 0;
      dword_27C8D9C18 = 4;
      word_27C8D9C1C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9C20, "air.get_quadgroups_per_threadgroup");
      dword_27C8D9C38 = 1;
      qword_27C8D9C40 = AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup;
      qword_27C8D9C48 = 0;
      dword_27C8D9C50 = 2;
      word_27C8D9C54 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9C58, "air.get_quadgroup_index_in_threadgroup");
      dword_27C8D9C70 = 1;
      qword_27C8D9C78 = AGCLLVMUserDynamicLibrary::buildQuadGroup;
      qword_27C8D9C80 = 0;
      dword_27C8D9C88 = 2;
      word_27C8D9C8C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9C90, "air.get_quad_group");
      dword_27C8D9CA8 = 1;
      qword_27C8D9CB0 = AGCLLVMUserDynamicLibrary::buildQuadGroup;
      qword_27C8D9CB8 = 0;
      dword_27C8D9CC0 = 2;
      word_27C8D9CC4 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9CC6[2], "air.get_simdgroups_per_threadgroup");
      dword_27C8D9CE0 = 1;
      qword_27C8D9CE8 = AGCLLVMUserDynamicLibrary::buildSimdgroupsPerThreadgroup;
      qword_27C8D9CF0 = 0;
      dword_27C8D9CF8 = 2;
      word_27C8D9CFC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9D00, "air.get_simdgroup_index_in_threadgroup");
      dword_27C8D9D18 = 1;
      qword_27C8D9D20 = AGCLLVMUserDynamicLibrary::buildSimdGroupIndexInThreadgroup;
      qword_27C8D9D28 = 0;
      dword_27C8D9D30 = 2;
      word_27C8D9D34 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9D38, "air.get_stage_in_grid_origin");
      dword_27C8D9D50 = 1;
      qword_27C8D9D58 = AGCLLVMUserDynamicLibrary::buildStageInOrigin;
      qword_27C8D9D60 = 0;
      dword_27C8D9D68 = 4;
      word_27C8D9D6C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9D70, "air.get_stage_in_grid_size");
      dword_27C8D9D88 = 1;
      qword_27C8D9D90 = AGCLLVMUserDynamicLibrary::buildStageInSize;
      qword_27C8D9D98 = 0;
      dword_27C8D9DA0 = 4;
      word_27C8D9DA4 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9DA6[2], "air.get_thread_index_in_quadgroup");
      dword_27C8D9DC0 = 1;
      qword_27C8D9DC8 = AGCLLVMUserDynamicLibrary::buildQuadElement;
      qword_27C8D9DD0 = 0;
      dword_27C8D9DD8 = 2;
      word_27C8D9DDC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9DE0, "air.get_thread_index_in_simdgroup");
      dword_27C8D9DF8 = 1;
      qword_27C8D9E00 = AGCLLVMUserDynamicLibrary::buildThreadIndexInSimdGroup;
      qword_27C8D9E08 = 0;
      dword_27C8D9E10 = 2;
      word_27C8D9E14 = 0;
      __cxa_atexit(__cxx_global_array_dtor_1860, 0, &dword_20E4E1000);
    }

    v4 = 20;
    v5 = &dword_27C8D99D0;
    do
    {
      if (*(v5 - 1) >= 0)
      {
        v6 = *(v5 - 1);
      }

      else
      {
        v6 = *(v5 - 2);
      }

      std::string::basic_string[abi:nn200100](&__p, v6 + 4);
      if (v20 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v6)
      {
        if (*(v5 - 1) >= 0)
        {
          v8 = v5 - 6;
        }

        else
        {
          v8 = *(v5 - 3);
        }

        memmove(p_p, v8, v6);
      }

      strcpy(p_p + v6, ".i16");
      if (v20 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if (v20 >= 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = v19;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserDynamicLibrary>::doReplacement(&v21, v9, v10, v5);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (*(v5 - 1) >= 0)
      {
        v11 = *(v5 - 1);
      }

      else
      {
        v11 = *(v5 - 2);
      }

      std::string::basic_string[abi:nn200100](&__p, v11 + 4);
      if (v20 >= 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      if (v11)
      {
        if (*(v5 - 1) >= 0)
        {
          v13 = v5 - 6;
        }

        else
        {
          v13 = *(v5 - 3);
        }

        memmove(v12, v13, v11);
      }

      strcpy(v12 + v11, ".i32");
      if (v20 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (v20 >= 0)
      {
        v15 = v20;
      }

      else
      {
        v15 = v19;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserDynamicLibrary>::doReplacement(&v21, v14, v15, v5);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      v5 += 14;
      --v4;
    }

    while (v4);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v25);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v24);
    if (v22 != &v23)
    {
      free(v22);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t AGCLLVMAirBuiltinReplacement<AGCLLVMUserDynamicLibrary>::doReplacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 432);
  result = llvm::Module::getFunction();
  if (result)
  {
    v8 = result;
    v9 = *(a4 + 24);
    v89 = result;
    if (v9 == 12)
    {
      for (i = *(result + 8); i; *(a1 + 64) = 0)
      {
        v13 = *(i + 24);
        i = *(i + 8);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v13);
        v14 = *(a1 + 464) + *(**(a1 + 464) - 32);
        *v104 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v104[2], (a1 + 8));
        LODWORD(v104[3]) = *(a1 + 104);
        AGCLLVMBuilder::InsertPoint::restoreIP(v104, v14 + 1712);
        if (v104[2])
        {
          llvm::MetadataTracking::untrack();
        }

        v15 = *(a4 + 8);
        v16 = *(a4 + 16);
        v17 = (*(a1 + 464) + (v16 >> 1));
        if (v16)
        {
          v15 = *(*v17 + v15);
        }

        v15(v17, v13);
        *(a1 + 56) = 0;
      }

      goto LABEL_118;
    }

    if (v9 == 11)
    {
      v10 = *(a4 + 8);
      if (v10)
      {
        v11 = strlen(*(a4 + 8));
        v104[0] = &v104[3];
        *&v104[1] = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v104, v10, &v10[v11]);
      }

      else
      {
        v104[2] = 64;
        v104[0] = &v104[3];
        v104[1] = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v104, ".", "");
      if (v104[2] < v104[1])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v85 = *(v8 + 24);
      v86 = *(a1 + 432);
      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (v104[0] != &v104[3])
      {
        free(v104[0]);
      }

      goto LABEL_118;
    }

    v18 = **(*(result + 24) + 16);
    v19 = ((*(v18 + 8) & 0xFE) == 18) & *(a4 + 29);
    if (v19 == 1)
    {
      v20 = *(v18 + 32);
    }

    else
    {
      v20 = 1;
    }

    v91 = v20;
    v88 = *(a1 + 104);
    v21 = *(result + 8);
    if (!v21)
    {
LABEL_112:
      *(a1 + 104) = v88;
LABEL_118:
      result = llvm::Function::eraseFromParent(v89);
      goto LABEL_119;
    }

    v93 = a4;
    v90 = **(*(result + 24) + 16);
    while (1)
    {
      v22 = *(v21 + 24);
      v23 = *(v21 + 8);
      if (*a4 == 1)
      {
        v24 = 0;
      }

      else
      {
        if (*a4 != 2)
        {
          goto LABEL_23;
        }

        v24 = 121;
      }

      *(a1 + 104) = v24;
LABEL_23:
      v92 = v23;
      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v22);
      v25 = llvm::UndefValue::get();
      if (v91)
      {
        for (j = 0; j != v91; ++j)
        {
          v94 = v25;
          v106 = 0;
          v105 = 0u;
          memset(v104, 0, sizeof(v104));
          v27 = llvm::CallBase::arg_end(v22) - v22 + 32 * (*(v22 + 5) & 0x7FFFFFF);
          if ((v27 & 0x1FFFFFFFE0) != 0)
          {
            v28 = (v27 >> 5);
            v29 = v104;
            v30 = v22;
            do
            {
              v31 = (v30 - 32 * (*(v22 + 5) & 0x7FFFFFF));
              v32 = *v31;
              *v29 = *v31;
              if (v19 && (*(*v32 + 8) & 0xFE) == 0x12)
              {
                v103 = 257;
                v33 = *(a1 + 200);
                v34 = llvm::ConstantInt::get();
                *v29 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v32, v34, &PrimitiveSizeInBits);
              }

              ++v29;
              v30 = (v30 + 32);
              --v28;
            }

            while (v28);
          }

          if (*(v93 + 28))
          {
            v35 = *v104[0];
            if ((*(*v104[0] + 8) & 0xFE) == 0x12)
            {
              v35 = **(v35 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v35);
            v102 = v36;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v37 = 0;
            }

            else
            {
              v38 = *(a1 + 168);
              if ((*(*v104[0] + 8) & 0xFE) == 0x12)
              {
                v39 = *(*v104[0] + 32);
                v40 = *(a1 + 168);
                v38 = llvm::FixedVectorType::get();
              }

              if ((v27 & 0x1FFFFFFFE0) != 0)
              {
                v41 = (v27 >> 5);
                v42 = v104;
                do
                {
                  v43 = *v42;
                  v103 = 257;
                  *v42++ = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v43, v38, &PrimitiveSizeInBits);
                  --v41;
                }

                while (v41);
              }

              v37 = 1;
            }
          }

          else
          {
            v37 = 0;
          }

          if (llvm::FPMathOperator::classof(v22))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v22);
          }

          else
          {
            FastMathFlags = 0;
          }

          v45 = *(a1 + 464) + *(**(a1 + 464) - 32);
          v98 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (a1 + 8));
          v100 = *(a1 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v98, v45 + 1712);
          if (v99)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v47 = *(v93 + 24);
          if (v47 > 5)
          {
            if (v47 <= 7)
            {
              if (v47 != 6)
              {
                v60 = *(v93 + 8);
                v61 = *(v93 + 16);
                v62 = v104[0];
                v63 = v104[1];
                v64 = v104[2];
                v65 = (*(a1 + 464) + (v61 >> 1));
                if ((v61 & 1) == 0)
                {
                  goto LABEL_97;
                }

                v73 = (*(*v65 + v60))(v65, v104[0], v104[1], v104[2]);
LABEL_98:
                FPTrunc = v73;
                goto LABEL_99;
              }

              v69 = *(v93 + 8);
              v70 = *(v93 + 16);
              v71 = (*(a1 + 464) + (v70 >> 1));
              if (v70)
              {
                v69 = *(*v71 + v69);
              }

              v80 = v69(v71, v104[0], v104[1], FastMathFlags);
              goto LABEL_89;
            }

            switch(v47)
            {
              case 8:
                v74 = *(v93 + 8);
                v75 = *(v93 + 16);
                v76 = (*(a1 + 464) + (v75 >> 1));
                if (v75)
                {
                  v74 = *(*v76 + v74);
                }

                v80 = v74(v76, v104[0], v104[1], v104[2], FastMathFlags);
LABEL_89:
                FPTrunc = v80;
                break;
              case 9:
                v60 = *(v93 + 8);
                v79 = *(v93 + 16);
                v65 = (*(a1 + 464) + (v79 >> 1));
                if (v79)
                {
                  v60 = *(*v65 + v60);
                }

                v62 = v104;
                v63 = &unk_20E75F419;
                v64 = 0;
LABEL_97:
                v73 = v60(v65, v62, v63, v64);
                goto LABEL_98;
              case 10:
                v53 = *(v93 + 8);
                v54 = *(v93 + 16);
                v55 = (*(a1 + 464) + (v54 >> 1));
                if (v54)
                {
                  v53 = *(*v55 + v53);
                }

                v73 = v53(v55, *v22, v104, &unk_20E75F419, 0);
                goto LABEL_98;
            }
          }

          else
          {
            if (v47 > 2)
            {
              if (v47 != 3)
              {
                if (v47 == 4)
                {
                  v77 = (v104[0] + 24);
                  if (*(v104[0] + 8) >= 0x41u)
                  {
                    v77 = *v77;
                  }

                  v51 = *v77;
                  v48 = *(v93 + 8);
                  v78 = *(v93 + 16);
                  v50 = *v22;
                  v52 = (*(a1 + 464) + (v78 >> 1));
                  if (v78)
                  {
                    v48 = *(*v52 + v48);
                  }
                }

                else
                {
                  v48 = *(v93 + 8);
                  v49 = *(v93 + 16);
                  v50 = v104[0];
                  v51 = v104[1];
                  v52 = (*(a1 + 464) + (v49 >> 1));
                  if (v49)
                  {
                    v48 = *(*v52 + v48);
                  }
                }

                v73 = v48(v52, v50, v51);
                goto LABEL_98;
              }

              v56 = *(v93 + 8);
              v72 = *(v93 + 16);
              v58 = v104[0];
              v59 = (*(a1 + 464) + (v72 >> 1));
              if ((v72 & 1) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }

            if (v47 == 1)
            {
              v66 = *(v93 + 8);
              v67 = *(v93 + 16);
              v68 = (*(a1 + 464) + (v67 >> 1));
              if (v67)
              {
                v66 = *(*v68 + v66);
              }

              v73 = v66(v68);
              goto LABEL_98;
            }

            if (v47 == 2)
            {
              v56 = *(v93 + 8);
              v57 = *(v93 + 16);
              v58 = *v22;
              v59 = (*(a1 + 464) + (v57 >> 1));
              if ((v57 & 1) == 0)
              {
LABEL_73:
                v73 = v56(v59, v58);
                goto LABEL_98;
              }

LABEL_72:
              v56 = *(*v59 + v56);
              goto LABEL_73;
            }
          }

LABEL_99:
          v81 = *(a1 + 464) + *(**(a1 + 464) - 32);
          v95 = *(v81 + 1760);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v96, (v81 + 1712));
          v97 = *(v81 + 1808);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v95, a1 + 8);
          if (v96)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v37)
          {
            v82 = *v22;
            if (v19 && (*(v82 + 8) & 0xFE) == 0x12)
            {
              v82 = **(v82 + 16);
            }

            v103 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), FPTrunc, v82, &PrimitiveSizeInBits);
          }

          if (v19)
          {
            v103 = 257;
            v83 = *(a1 + 200);
            v84 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v94, FPTrunc, v84, &PrimitiveSizeInBits);
          }

          v25 = FPTrunc;
        }
      }

      if (*v22 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v22);
      a4 = v93;
      v21 = v92;
      if (!v92)
      {
        goto LABEL_112;
      }
    }
  }

LABEL_119:
  v87 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::buildThreadIndexInSimdGroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 32) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 32);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1624))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserDynamicLibrary::buildQuadElement(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 32) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 32);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserDynamicLibrary::buildStageInSize(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2, llvm::Type *a3)
{
  v5 = *(*this - 40);
  ComputeBuiltinPerCommandStatePtr = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(this);

  return AGCLLVMUserShader::buildStageInSizeCommon((this + v5), a3, ComputeBuiltinPerCommandStatePtr, v7);
}

uint64_t AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + *(*a1 - 32) + 1888);
  v3 = llvm::PointerType::get();
  v4 = *(a1 + *(*a1 - 32) + 1912);
  v5 = llvm::PointerType::get();
  v6 = (a1 + *(*a1 - 32));
  DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v6);
  v27 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v6 + 213), DylibBuiltinPerCommandStateVar, v26);
  v30 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v6 + 214, Load, v3, v29);
  v10 = a1 + *(*a1 - 32);
  v11 = *(v10 + 236);
  v12 = *(v10 + 239);
  v29[0] = llvm::ConstantInt::get();
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*PointerCast);
  v13 = llvm::IRBuilderBase::CreateInBoundsGEP((v10 + 1712), v11, PointerCast, v29, 1, v26);
  v14 = (a1 + *(*a1 - 32));
  v27 = 257;
  v15 = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, v13, v5, v26);
  v16 = a1 + *(*a1 - 32);
  v17 = *(v16 + 239);
  v18 = *(v16 + 238);
  v28 = llvm::ConstantInt::get();
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*v15);
  v19 = llvm::IRBuilderBase::CreateInBoundsGEP((v16 + 1712), v17, v15, &v28, 1, v26);
  v30 = 257;
  llvm::Type::isOpaquePointerTy(*v19);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v16 + 214, v17, v19, 0, v29);
  v21 = *(a1 + *(*a1 - 32) + 1904);
  v22 = llvm::PointerType::get();
  v23 = a1 + *(*a1 - 32);
  v27 = 257;
  result = llvm::IRBuilderBase::CreateCast((v23 + 1712), 48, AlignedLoad, v22, v26);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::buildStageInOrigin(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2, llvm::Type *a3)
{
  v5 = *(*this - 40);
  ComputeBuiltinPerCommandStatePtr = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(this);

  return AGCLLVMUserShader::buildStageInOriginCommon((this + v5), a3, ComputeBuiltinPerCommandStatePtr, v7);
}

uint64_t AGCLLVMUserDynamicLibrary::buildSimdGroupIndexInThreadgroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 32) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 32);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1632))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

void AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroupCommon<5u>(AGCLLVMUserDynamicLibrary *a1, llvm::Type *a2, int a3)
{
  v3 = a1 + *(*a1 - 32);
  if (a3)
  {
    AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(a1, a2);
  }

  AGCLLVMUserDynamicLibrary::buildLocalSize(a1, a2);
}

unsigned int *AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(void *a1, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  {
    std::string::basic_string[abi:nn200100]<0>(AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name, "Tile");
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name[24], "Compute");
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name[48], "Object");
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name[72], "Mesh");
    __cxa_atexit(__cxx_global_array_dtor_39, 0, &dword_20E4E1000);
  }

  v47 = 0x700000009;
  v7 = *(a1 + *(*a1 - 32) + 2168);
  (*(*v7 + 840))(v7);
  (*(**(a1 + *(*a1 - 32) + 2168) + 840))();
  v8 = a1 + *(*a1 - 32);
  v9 = *(v8 + 271);
  v44 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (v8 + 1712));
  v46 = *(v8 + 452);
  v10 = (*(*v9 + 968))(v9, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = a1 + *(*a1 - 32);
  v12 = *(v11 + 220);
  v13 = *(v11 + 221);
  v43 = 257;
  v14 = llvm::BasicBlock::splitBasicBlock();
  v37 = v12;
  v17 = *(v12 + 40);
  v16 = v12 + 40;
  v15 = v17;
  if (v17 == v16)
  {
    v20 = 0;
  }

  else
  {
    v18 = (v15 - 24);
    if (v15)
    {
      v19 = v15 - 24;
    }

    else
    {
      v19 = 0;
    }

    if (*(v19 + 16) - 29 >= 0xB)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

  llvm::Instruction::eraseFromParent(v20);
  v21 = a1 + *(*a1 - 32);
  *(v21 + 220) = v37;
  *(v21 + 221) = v16;
  Switch = llvm::IRBuilderBase::CreateSwitch((a1 + *(*a1 - 32) + 1712), v10, v14, 2);
  v22 = *(*a1 - 32);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v14);
  llvm::IRBuilderBase::SetInsertPoint(a1 + v22 + 1712, v14, FirstInsertionPt);
  v24 = *(*a1 - 32);
  v43 = 257;
  PHI = llvm::IRBuilderBase::CreatePHI((a1 + v24 + 1712), a2, 2, &p_p);
  v25 = 0;
  v41 = 0;
  v40 = 0;
  v26 = &v41;
  v27 = 1;
  do
  {
    v28 = v27;
    if (*(a4 + 4 * v25) != -1 && (*v26 & 1) == 0)
    {
      v29 = *(a1 + *(*a1 - 32) + 1776);
      std::operator+<char>();
      v43 = 260;
      p_p = &__p;
      v30 = *(v37 + 56);
      operator new();
    }

    v27 = 0;
    v26 = &v40;
    v25 = 1;
  }

  while ((v28 & 1) != 0);
  v31 = *(Switch + 20);
  if ((v31 & 0x40000000) != 0)
  {
    if (*(*(Switch - 8) + 32) == v14)
    {
      v32 = *(Switch - 8);
      goto LABEL_23;
    }
  }

  else if (*(Switch - 32 * (v31 & 0x7FFFFFF) + 32) == v14)
  {
    v32 = Switch - 32 * (v31 & 0x7FFFFFF);
LABEL_23:
    llvm::SwitchInst::setDefaultDest(Switch, *(v32 + 96));
  }

  v33 = a1 + *(*a1 - 32);
  v34 = llvm::BasicBlock::getFirstInsertionPt(v14);
  llvm::IRBuilderBase::SetInsertPoint((v33 + 1712), v14, v34);
  return PHI;
}

uint64_t std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::IRBuilderBase::CreateSwitch(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FE00](v8, a2, a3, a4, 0);
  v16 = 257;
  (*(*a1[10] + 16))(a1[10], v8, v15, a1[6], a1[7]);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *a1;
    v11 = &v10[4 * v9];
    do
    {
      v12 = *v10;
      v13 = *(v10 + 1);
      llvm::Instruction::setMetadata();
      v10 += 4;
    }

    while (v10 != v11);
  }

  return v8;
}

uint64_t llvm::SwitchInst::setDefaultDest(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  if ((v2 & 0x40000000) != 0)
  {
    v3 = *(result - 8);
  }

  else
  {
    v3 = result - 32 * (v2 & 0x7FFFFFF);
  }

  v4 = (v3 + 32);
  if (*(v3 + 32))
  {
    v5 = *(v3 + 40);
    **(v3 + 48) = v5;
    if (v5)
    {
      *(v5 + 16) = *(v3 + 48);
    }
  }

  *v4 = a2;
  if (a2)
  {
    v8 = *(a2 + 8);
    v6 = (a2 + 8);
    v7 = v8;
    *(v3 + 40) = v8;
    if (v8)
    {
      *(v7 + 16) = v3 + 40;
    }

    *(v3 + 48) = v6;
    *v6 = v4;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalSize(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FC20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FBD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildThreadgroupDispatchSize(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FD40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FCF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

unsigned int *AGCLLVMUserDynamicLibrary::buildQuadGroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FE60;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FEA8;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildQuadGroup(v4, &v8, *(a1 + 16));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FEA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FE60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned int *AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FF80;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FFC8;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

void AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroupCommon<2u>(AGCLLVMUserDynamicLibrary *a1, llvm::Type *a2, int a3)
{
  v3 = a1 + *(*a1 - 32);
  if (a3)
  {
    AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(a1, a2);
  }

  AGCLLVMUserDynamicLibrary::buildLocalSize(a1, a2);
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FFC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned int *AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FEF0;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FF38;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FF38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FEF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FF80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_3,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_3>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_2,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_2>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A01C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_3,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_3>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A00E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_2,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_2>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A00A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(*v1 - 40);
  v4 = *(a1 + 24);
  ComputeBuiltinPerCommandStatePtr = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(v1);
  v6 = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(v1);

  return AGCLLVMUserShader::buildGlobalSizeCommon((v1 + v3), v2, v4, ComputeBuiltinPerCommandStatePtr, v6);
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0058;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0010;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0130;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

unsigned int *AGCLLVMUserDynamicLibrary::buildLocalLinearID(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FC68;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FCB0;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(v4, &v8, *(a1 + 16));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FCB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FC68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::buildLocalID(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2, uint64_t a3)
{
  v6 = *(this + *(*this - 32) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 32);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = (*(*v7 + 272))(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FB90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FB48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_2,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_2>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FE18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildGlobalID(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FDD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FD88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::setupShaderOutputs(AGCLLVMUserDynamicLibrary *this)
{
  v2 = *(this + *(*this - 32) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v4 = Function;
    v5 = *(Function + 8);
    while (v5)
    {
      v6 = *(v5 + 24);
      v5 = *(v5 + 8);
      llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 32) + 1712), v6);
      v7 = this + *(*this - 32);
      v8 = *(v7 + 271);
      v12 = *(v7 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (v7 + 1712));
      v14 = *(v7 + 452);
      v9 = *(this + *(*this - 32) + 1904);
      v10 = llvm::ConstantInt::get();
      (*(*v8 + 624))(v8, &v12, v10);
      if (v13)
      {
        llvm::MetadataTracking::untrack();
      }

      llvm::Instruction::eraseFromParent(v6);
    }

    llvm::Function::eraseFromParent(v4);
  }

  return 1;
}

uint64_t AGCLLVMUserDynamicLibrary::setupShaderInputs(AGCLLVMUserDynamicLibrary *this)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 32) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v4 = Function;
    FragmentBuiltinPsoStateType = AGCLLVMUserObject::getFragmentBuiltinPsoStateType((this + *(*this - 40)));
    v6 = *(v4 + 1);
    if (v6)
    {
      v7 = FragmentBuiltinPsoStateType;
      v8 = this + 1712;
      do
      {
        v9 = *(v6 + 24);
        v6 = *(v6 + 8);
        llvm::IRBuilderBase::SetInsertPoint(&v8[*(*this - 32)], v9);
        v10 = (llvm::CallBase::arg_end(v9) - (v9 - 32 * (*(v9 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0;
        FragmentBuiltinPsoStatePtr = AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr((this + *(*this - 40)));
        v12 = *(*this - 32);
        v82 = 257;
        llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v8[v12], v7, FragmentBuiltinPsoStatePtr, 0, v81);
        if (v10 == 32)
        {
          LODWORD(v85) = 1;
          v83[0] = "colorSampleCount";
          v84 = 259;
          llvm::IRBuilderBase::CreateExtractValue(&v8[v12], AlignedLoad, &v85, 1, v83);
          v14 = *(*this - 32);
          v82 = 257;
          llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
          v15 = llvm::IRBuilderBase::CreateAlignedLoad(&v8[v14], v7, FragmentBuiltinPsoStatePtr, 0, v81);
          LODWORD(v85) = 0;
          v83[0] = "sampleCount";
          v84 = 259;
          llvm::IRBuilderBase::CreateExtractValue(&v8[v14], v15, &v85, 1, v83);
          v16 = this + *(*this - 32);
          v17 = *(v9 - 4 * (*(v9 + 5) & 0x7FFFFFF));
          v18 = *(v16 + 238);
          v19 = llvm::ConstantInt::get();
          v82 = 257;
          llvm::IRBuilderBase::CreateICmp(v16 + 214, 32, v17, v19, v81);
          v20 = *(*this - 32);
          v82 = 257;
          llvm::IRBuilderBase::CreateSelect();
        }

        else
        {
          LODWORD(v85) = 0;
          v83[0] = "sampleCount";
          v84 = 259;
          llvm::IRBuilderBase::CreateExtractValue(&v8[v12], AlignedLoad, &v85, 1, v83);
        }

        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v9);
      }

      while (v6);
    }

    llvm::Function::eraseFromParent(v4);
  }

  v21 = *(this + *(*this - 32) + 2136);
  v22 = llvm::Module::getFunction();
  if (v22)
  {
    v23 = v22;
    FragmentBuiltinEncoderStateType = AGCLLVMUserObject::getFragmentBuiltinEncoderStateType((this + *(*this - 40)));
    v76 = v23;
    v25 = *(v23 + 1);
    if (v25)
    {
      v26 = FragmentBuiltinEncoderStateType;
      v79 = this + 1712;
      v77 = this + 1904;
      v78 = this + 1704;
      do
      {
        v80 = *(v25 + 1);
        v27 = *(v25 + 3);
        llvm::IRBuilderBase::SetInsertPoint(&v79[*(*this - 32)], v27);
        PerEncoderIndirectionTableGlobal = AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal((this + *(*this - 40)));
        v29 = this + *(*this - 32);
        v82 = 257;
        Load = AGCLLVMBuilder::CreateLoad((v29 + 1704), v30, v81);
        v32 = *&v77[*(*this - 32)];
        v85 = llvm::ConstantInt::get();
        v33 = this + *(*this - 32);
        (*(**(*(v33 + 271) + 920) + 1200))();
        v34 = *(v33 + 238);
        v86 = llvm::ConstantInt::get();
        v84 = 257;
        llvm::Type::isOpaquePointerTy(*Load);
        v35 = llvm::IRBuilderBase::CreateGEP((v29 + 1712), PerEncoderIndirectionTableGlobal, Load, &v85, 2, v83);
        v36 = *(*this - 32);
        AGCLLVMUserObject::getFragmentBuiltinEncoderStateType((this + *(*this - 40)));
        v37 = llvm::PointerType::get();
        v82 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(&v79[v36], v35, v37, v81);
        v39 = *(this + *(*this - 32) + 1928);
        v40 = llvm::UndefValue::get();
        v41 = *(*this - 32);
        v42 = *&v77[v41];
        v83[0] = llvm::ConstantInt::get();
        v43 = *&v77[*(*this - 32)];
        v83[1] = llvm::ConstantInt::get();
        v82 = 257;
        llvm::Type::isOpaquePointerTy(*PointerCast);
        GEP = llvm::IRBuilderBase::CreateGEP(&v79[v41], v26, PointerCast, v83, 2, v81);
        v45 = this + *(*this - 32);
        v46 = *(v27 - 4 * (*(v27 + 5) & 0x7FFFFFF));
        v47 = *(v45 + 238);
        v48 = llvm::ConstantInt::get();
        v82 = 257;
        Mul = llvm::IRBuilderBase::CreateMul((v45 + 1712), v46, v48, v81);
        v50 = *(*this - 32);
        v51 = this + v50;
        v52 = *&v77[v50];
        v85 = llvm::ConstantInt::get();
        v86 = Mul;
        v82 = 257;
        llvm::Type::isOpaquePointerTy(*GEP);
        v53 = llvm::IRBuilderBase::CreateGEP((v51 + 1712), v26, GEP, &v85, 2, v81);
        v84 = 257;
        v54 = AGCLLVMBuilder::CreateLoad((v51 + 1704), v53, v83);
        v55 = v26;
        v56 = &v78[*(*this - 32)];
        v82 = 257;
        v57 = *(v56 + 25);
        v58 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((v56 + 8), v40, v54, v58, v81);
        v60 = this + *(*this - 32);
        v61 = *(v60 + 238);
        v62 = llvm::ConstantInt::get();
        v82 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v60 + 1712), Mul, v62, v81);
        v64 = *(*this - 32);
        v65 = this + v64;
        v66 = *(this + v64 + 1928);
        v67 = *&v77[v64];
        v85 = llvm::ConstantInt::get();
        v86 = Add;
        v82 = 257;
        llvm::Type::isOpaquePointerTy(*GEP);
        v68 = llvm::IRBuilderBase::CreateGEP((v65 + 1712), v66, GEP, &v85, 2, v81);
        v84 = 257;
        v69 = (v65 + 1704);
        v26 = v55;
        v70 = AGCLLVMBuilder::CreateLoad(v69, v68, v83);
        v71 = &v78[*(*this - 32)];
        v82 = 257;
        v72 = *(v71 + 25);
        v73 = llvm::ConstantInt::get();
        llvm::IRBuilderBase::CreateInsertElement((v71 + 8), InsertElement, v70, v73, v81);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v27);
        v25 = v80;
      }

      while (v80);
    }

    llvm::Function::eraseFromParent(v76);
  }

  v74 = *MEMORY[0x277D85DE8];
  return 1;
}

llvm::Value *AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v14 = *(v2 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v2 + 1712));
  v16 = *(v2 + 452);
  DylibBaseGetterFunc = AGCLLVMUserObject::createDylibBaseGetterFunc(this);
  v4 = this + *(*this - 24);
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v13 = v16;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v11, (v4 + 1712));
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = this + *(*this - 24);
  v10 = 257;
  v6 = llvm::IRBuilderBase::CreateCall((v5 + 1712), *(DylibBaseGetterFunc + 24), DylibBaseGetterFunc, 0, 0, v9);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  AGCLLVMUserObject::getFragmentBuiltinPsoStateType(this);
  v7 = llvm::PointerType::get();
  v10 = 257;
  return llvm::IRBuilderBase::CreatePointerCast(v2 + 214, v6, v7, v9);
}

void AGCLLVMUserDynamicLibrary::addInitCompilePass(AGCLLVMUserDynamicLibrary *this)
{
  v2 = this + *(*this - 32);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserDynamicLibrary>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 32);
  operator new();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGDynamicLibraryPass>::name()
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

  v2 = &aStringrefLlvmG_40[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGDynamicLibraryPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGDynamicLibraryPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserDynamicLibrary>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x69)
  {
    v1 = v0;
  }

  else
  {
    v1 = 105;
  }

  v2 = &aStringrefLlvmG_39[v1];
  v3 = 105 - v1;
  if ((105 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 105 - v1;
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

char *llvm::PassInfoMixin<SimplifyGenericIRUserDynamicLibraryPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x59)
  {
    v1 = v0;
  }

  else
  {
    v1 = 89;
  }

  v2 = &aStringrefLlvmG_41[v1];
  v3 = 89 - v1;
  if ((89 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 89 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimplifyGenericIRUserDynamicLibraryPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimplifyGenericIRUserDynamicLibraryPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

double llvm::detail::PassModel<llvm::Module,SimplifyGenericIRUserDynamicLibraryPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run@<D0>(llvm::Module *this@<X1>, uint64_t a2@<X8>)
{
  v21 = "air.visible_function_references";
  v22 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v21);
  if (NamedMetadata)
  {
    v4 = NamedMetadata;
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      v6 = NumOperands;
      for (i = 0; i != v6; ++i)
      {
        Operand = llvm::NamedMDNode::getOperand(v4);
        v9 = *(Operand - 8 * *(Operand + 8));
        if (!*v9)
        {
          String = llvm::MDString::getString(v9);
          if (v11 == 30)
          {
            v12 = *String == 0x697369762E726961 && String[1] == 0x636E75665F656C62;
            v13 = v12 && String[2] == 0x6665725F6E6F6974;
            if (v13 && *(String + 22) == 0x65636E6572656665)
            {
              v15 = Operand - 8 * *(Operand + 8);
              v16 = *(v15 + 8);
              if (v16 && *v16 - 1 <= 1)
              {
                v17 = *(v16 + 16);
                if (*(v17 + 16))
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v17;
                }
              }

              else
              {
                v18 = 0;
              }

              llvm::MDString::getString(*(v15 + 16));
              if (llvm::Module::getFunction())
              {
                v19 = *v18;
                llvm::ConstantExpr::getBitCast();
                llvm::Value::replaceAllUsesWith();
                llvm::Constant::removeDeadConstantUsers(v18);
                if (!*(v18 + 1))
                {
                  llvm::Function::eraseFromParent(v18);
                }
              }
            }
          }
        }
      }
    }

    llvm::NamedMDNode::clearOperands(v4);
    llvm::NamedMDNode::eraseFromParent(v4);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 24) = 0u;
  *a2 = a2 + 32;
  *(a2 + 8) = a2 + 32;
  *&result = 2;
  *(a2 + 16) = 2;
  *(a2 + 48) = a2 + 80;
  *(a2 + 56) = a2 + 80;
  *(a2 + 64) = 2;
  return result;
}

void virtual thunk toAGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(void *a1)
{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((a1 + *(*a1 - 32)));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((a1 + *(*a1 - 32)));
}

void AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(AGCLLVMUserDynamicLibrary *this)
{
  *this = &unk_28259D9E8;
  v2 = (this + 3472);
  *(this + 434) = &unk_28259DB18;
  v3 = (this + 3544);
  *(this + 443) = &unk_28259DC98;
  *(this + 656) = &unk_28259DDA8;
  v4 = *(this + 433);
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 3448));
  }

  for (i = 0; i != -3432; i -= 24)
  {
    v7 = *(this + i + 3432);
    if (v7 != -8192 && v7 != -4096 && v7 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + i + 3416));
    }
  }

  AGCLLVMUserShader::~AGCLLVMUserShader((this + 8712), off_28259E1D0);
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v2, off_28259E1B8);
  AGCLLVMObject::~AGCLLVMObject(v3);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(AGCLLVMDynamicLibrary *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + *(*this - 24) + 1704) = a2[2];
  v3 = *(this + 8);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 48));
  }
}

uint64_t AGCLLVMDynamicLibrary::finalizeDriverBindings(AGCLLVMDynamicLibrary *this, llvm::Function *a2)
{
  v3 = *(this + *(*this - 24) + 2136);
  llvm::Module::getOrInsertNamedMetadata();
  v4 = *this;
  v5 = this + *(*this - 24);
  v6 = *(v5 + 1150);
  if (v6)
  {
    v7 = *(v5 + 574);
    v8 = 8 * v6;
    do
    {
      v9 = (*v7 - 8 * *(*v7 + 8));
      if (*v9)
      {
        v10 = v9[1];
        if (v10)
        {
          if (*v10 == 1)
          {
            v11 = *(v10 + 128);
            if (*(v11 + 16) == 16)
            {
              v12 = (v11 + 24);
              if (*(v11 + 32) >= 0x41u)
              {
                v12 = *v12;
              }

              v13 = *v12;
              if (v13 == 114 || v13 == 18)
              {
                llvm::NamedMDNode::addOperand();
              }
            }
          }
        }
      }

      v7 += 8;
      v8 -= 8;
    }

    while (v8);
    v4 = *this;
  }

  v15 = this + *(v4 - 24);
  v16 = *(v15 + 1226);
  if (v16)
  {
    v17 = *(v15 + 612);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      llvm::NamedMDNode::addOperand();
      v18 -= 8;
    }

    while (v18);
    v4 = *this;
  }

  v20 = *(this + *(v4 - 24) + 2136);
  llvm::Module::getOrInsertNamedMetadata();
  v21 = this + *(*this - 24);
  v22 = *(v21 + 1190);
  if (v22)
  {
    v23 = *(v21 + 594);
    v24 = 8 * v22;
    do
    {
      v25 = *v23++;
      llvm::NamedMDNode::addOperand();
      v24 -= 8;
    }

    while (v24);
  }

  return 1;
}

BOOL AGCLLVMDynamicLibrary::constructReply(AGCLLVMDynamicLibrary *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v6 + 4288), v5);
    v9 = *(*this - 24);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    flatbuffers::FlatBufferBuilder::Finish((this + v9 + 4288), v10, v11);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v12 = *this;
    v13 = this + *(*this - 24);
    v13[4454] = 1;
    v14 = *(v12 - 24);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4384), *(v13 + 2208) - *(v13 + 2216) + *(v13 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4384), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

uint64_t virtual thunk toAGCLLVMUserDynamicLibrary::finalizeDriverBindings(AGCLLVMUserDynamicLibrary *this, llvm::Function *a2)
{
  AGCLLVMUserDynamicLibrary::finalizeDriverBindings((this + *(*this - 208)), a2);
  return 1;
}

{
  AGCLLVMUserDynamicLibrary::finalizeDriverBindings((this + *(*this - 96)), a2);
  return 1;
}

uint64_t AGCLLVMUserDynamicLibrary::finalizeDriverBindings(AGCLLVMUserDynamicLibrary *this, llvm::Function *a2)
{
  AGCLLVMDynamicLibrary::finalizeDriverBindings((this + *(*this - 24)), a2);
  v3 = *(this + *(*this - 32) + 2136);
  llvm::Module::getOrInsertNamedMetadata();
  v4 = this + *(*this - 40);
  v5 = *(v4 + 768);
  if (v5)
  {
    v6 = *(v4 + 383);
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      llvm::NamedMDNode::addOperand();
      v7 -= 8;
    }

    while (v7);
  }

  return 1;
}

uint64_t AGCLLVMUserDynamicLibrary::getTempRegistersLimit(AGCLLVMUserDynamicLibrary *this, unsigned int *a2)
{
  v4 = (this + *(*this - 40) + *(*(this + *(*this - 40)) - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  v6 = *(this + 860);
  if (v6)
  {
    v7 = this + *(*this - 32);
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

BOOL virtual thunk toAGCLLVMUserDynamicLibrary::constructReply(AGCLLVMUserDynamicLibrary *this)
{
  return AGCLLVMUserDynamicLibrary::constructReply((this + *(*this - 176)));
}

{
  return AGCLLVMUserDynamicLibrary::constructReply((this + *(*this - 120)));
}

BOOL AGCLLVMUserDynamicLibrary::constructReply(AGCLLVMUserDynamicLibrary *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 32) + 2288), *(*(this + *(*this - 32) + 1688) + 152), *(*(this + *(*this - 32) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 32)));
    v3 = AGCLLVMUserObject::constructFlatReply((this + *(*this - 40)));
    v4 = this + *(*this - 32);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v4 + 4288), v3);
    v7 = *(*this - 32);
    v8 = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    flatbuffers::FlatBufferBuilder::Finish((this + v7 + 4288), v8, v9);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 32)), (this + *(*this - 32) + 4288));
    v10 = *this;
    v11 = this + *(*this - 32);
    v11[4454] = 1;
    v12 = *(v10 - 32);
    v13 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4384), *(v11 + 2208) - *(v11 + 2216) + *(v11 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v12 + 4384), v13, v14);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 32)), (this + *(*this - 32) + 4384));
  }

  return v2;
}

void virtual thunk toAGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(AGCLLVMUserDynamicLibrary *this)
{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 24)));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 24)));
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 32)));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 32)));
}

uint64_t AGCLLVMUserDynamicLibrary::getMaxSharedRegisters(AGCLLVMUserDynamicLibrary *this)
{
  v1 = *(this + *(*this - 32) + 2168);
  v2 = v1[235];
  v3 = v1[236];
  v4 = v1[237];
  if (v3 < v2)
  {
    v2 = v3;
  }

  if (v4 >= v2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

BOOL AGCLLVMStatelessPSODynamicLibrary::constructReply(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    AGCLLVMObject::constructVisibleFunctionArray((this + *(*this - 24)), 0);
    v3 = this + *(*this - 24);
    v3[4358] = 1;
    v4 = *(v3 + 1082);
    v5 = *(v3 + 1080) - *(v3 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v3 + 536, 4, *(this + 128));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v3 + 536, 6, *(this + 129));
    flatbuffers::FlatBufferBuilder::EndTable((v3 + 4288), v5 + v4);
    operator new();
  }

  return v2;
}

void AGCLLVMStatelessPSODynamicLibrary::getCompilationKeyDescription(AGCLLVMStatelessPSODynamicLibrary *this@<X0>, std::string *a2@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = *(this + 14);
  if ((*(v3 + 20) & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v114, "AGCStatelessPSODynamicLibraryStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&v106, "common");
    _agcStringRepresentation(&v81, v3);
    _agcFieldString<std::string>(&v82, &v106.__r_.__value_.__l.__data_, &v81);
    std::string::basic_string[abi:nn200100]<0>(__p, "hasDrawBufferState");
    _agcFieldString<unsigned int>(&v83, __p, *(v3 + 20) & 1);
    _agcGroupWithHeader(a2, &v114, &v82, 2);
    for (i = 0; i != -6; i -= 3)
    {
      if (SHIBYTE(v83.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v82 + i * 8 + 24));
      }
    }

    if (v80 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_152;
    }

    v5 = &v114;
LABEL_151:
    operator delete(v5->__r_.__value_.__l.__data_);
LABEL_152:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  std::string::basic_string[abi:nn200100]<0>(v54, "AGCStatelessPSODynamicLibraryStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v52, "common");
  _agcStringRepresentation(&v51, v3);
  _agcFieldString<std::string>(&v82, v52, &v51);
  std::string::basic_string[abi:nn200100]<0>(v49, "drawBuffer");
  _agcStringRepresentation(&v48, (v3 + 8));
  _agcFieldString<std::string>(&v83, v49, &v48);
  std::string::basic_string[abi:nn200100]<0>(v46, "drawBufferState");
  std::string::basic_string[abi:nn200100]<0>(__p, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v77, "enabledBits");
  v6 = *(v3 + 12);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v114);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v114.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v114.__r_.__value_.__r + *(v114.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v114.__r_.__value_.__r + *(v114.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v7, v6);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v106, v77, &v81);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v114.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v114.__r_.__value_.__r.__words + *(v114.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v114.__r_.__value_.__r.__words[2] = v8;
  v115.__r_.__value_.__r.__words[0] = MEMORY[0x277D82878] + 16;
  if (v118.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v117.__r_.__value_.__r.__words[2]);
  }

  v115.__r_.__value_.__r.__words[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v115.__r_.__value_.__r.__words[1]);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v119.__r_.__value_.__r.__words[1]);
  std::string::basic_string[abi:nn200100]<0>(&v81, "sampleCount");
  _agcFieldString<unsigned char>(&v107, &v81.__r_.__value_.__l.__data_, 1 << (BYTE1(*(v3 + 12)) & 3));
  std::string::basic_string[abi:nn200100]<0>(v75, "colorSampleCount");
  _agcFieldString<unsigned char>(&v108, v75, 1 << ((*(v3 + 12) >> 10) & 3));
  v9 = *(v3 + 12) & 0x1FF000;
  if (v9 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v63, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v61, "unknown");
    _agcFieldString<std::string>(&v109, v63, v61);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v65, "outputPartitionSize");
    v10 = *(v3 + 12);
    if ((~v10 & 0x1FF000) == 0)
    {
      goto LABEL_153;
    }

    std::to_string(&v114, (v10 >> 12) & 0x1FF);
    _agcFieldString<std::string>(&v109, v65, &v114);
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(v3 + 12);
  if ((v11 & 0x400000) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v57, "LIBSpilling");
    std::string::basic_string[abi:nn200100]<0>(v55, "unknown");
    _agcFieldString<std::string>(&v110, v57, v55);
LABEL_27:
    std::string::basic_string[abi:nn200100]<0>(&v114, "forceSoftwareEmulatedRaytracing");
    _agcFieldString<unsigned char>(&v111, &v114.__r_.__value_.__l.__data_, (*(v3 + 12) & 0x800000) != 0);
    std::string::basic_string[abi:nn200100]<0>(v73, "maxSlabIndex");
    _agcFieldString<unsigned char>(&v112, v73, *(v3 + 15) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v71, "useSlabs");
    _agcFieldString<unsigned char>(&v113, v71, (*(v3 + 12) & 0x10000000) != 0);
    _agcGroupWithHeader(&v45, __p, &v106, 8);
    for (j = 0; j != -24; j -= 3)
    {
      if (SHIBYTE(v113.__r_.__value_.__r.__words[j + 2]) < 0)
      {
        operator delete(*(&v113.__r_.__value_.__l.__data_ + j * 8));
      }
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
      if ((v11 & 0x400000) == 0)
      {
        goto LABEL_37;
      }
    }

    else if ((v11 & 0x400000) == 0)
    {
LABEL_37:
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      if ((v58 & 0x80000000) == 0)
      {
LABEL_45:
        if (v9 == 2093056)
        {
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          if ((v64 & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          v15 = v63[0];
        }

        else
        {
          if ((v66 & 0x80000000) == 0)
          {
LABEL_53:
            if (v76 < 0)
            {
              operator delete(v75[0]);
            }

            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            if (v78 < 0)
            {
              operator delete(v77[0]);
            }

            if (v80 < 0)
            {
              operator delete(__p[0]);
            }

            _agcFieldString<std::string>(&v84, v46, &v45);
            std::string::basic_string[abi:nn200100]<0>(v43, "blendState");
            std::string::basic_string[abi:nn200100]<0>(&v106, "AGCBlendState");
            std::string::basic_string[abi:nn200100]<0>(&v81, "enabled");
            if (*(v3 + 16))
            {
              v16 = "yes";
            }

            else
            {
              v16 = "no";
            }

            _agcFieldString<char const*>(&v114, &v81.__r_.__value_.__l.__data_, v16);
            std::string::basic_string[abi:nn200100]<0>(__p, "src");
            _agcFieldString<char const*>(&v115, __p, _agcBlendFactorStrings[(*(v3 + 16) >> 1) & 0x1F]);
            std::string::basic_string[abi:nn200100]<0>(v77, "dst");
            _agcFieldString<char const*>(&v116, v77, _agcBlendFactorStrings[(*(v3 + 16) >> 6) & 0x1F]);
            std::string::basic_string[abi:nn200100]<0>(v75, "srcA");
            _agcFieldString<char const*>(&v117, v75, _agcBlendFactorStrings[*(v3 + 16) >> 11]);
            std::string::basic_string[abi:nn200100]<0>(v73, "dstA");
            _agcFieldString<char const*>(&v118, v73, _agcBlendFactorStrings[*(v3 + 18) & 0x1F]);
            std::string::basic_string[abi:nn200100]<0>(v71, "equation");
            _agcFieldString<char const*>(&v119, v71, _agcBlendEquationStrings[(*(v3 + 16) >> 21) & 7]);
            std::string::basic_string[abi:nn200100]<0>(v69, "equationA");
            _agcFieldString<char const*>(&v120, v69, _agcBlendEquationStrings[*(v3 + 19) & 7]);
            std::string::basic_string[abi:nn200100]<0>(v67, "unknown");
            if ((*(v3 + 16) & 0x8000000) != 0)
            {
              v17 = "yes";
            }

            else
            {
              v17 = "no";
            }

            _agcFieldString<char const*>(v121, v67, v17);
            _agcGroupWithHeader(&v42, &v106, &v114, 8);
            for (k = 0; k != 0x1FFFFFFFFFFFFFE8; k -= 3)
            {
              if (SHIBYTE(v121[0].__r_.__value_.__r.__words[k + 2]) < 0)
              {
                operator delete(v121[k / 3].__r_.__value_.__l.__data_);
              }
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (v70 < 0)
            {
              operator delete(v69[0]);
            }

            if (v72 < 0)
            {
              operator delete(v71[0]);
            }

            if (v74 < 0)
            {
              operator delete(v73[0]);
            }

            if (v76 < 0)
            {
              operator delete(v75[0]);
            }

            if (v78 < 0)
            {
              operator delete(v77[0]);
            }

            if (v80 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v106.__r_.__value_.__l.__data_);
            }

            _agcFieldString<std::string>(&v85, v43, &v42);
            std::string::basic_string[abi:nn200100]<0>(&v114, "hasDrawBufferState");
            _agcFieldString<unsigned int>(&v86, &v114.__r_.__value_.__l.__data_, *(v3 + 20) & 1);
            std::string::basic_string[abi:nn200100]<0>(&v106, "colorMask");
            _agcFieldString<unsigned int>(&v87, &v106.__r_.__value_.__l.__data_, (*(v3 + 20) >> 1) & 0xF);
            std::string::basic_string[abi:nn200100]<0>(&v81, "discardBool");
            _agcFieldString<unsigned int>(&v88, &v81.__r_.__value_.__l.__data_, (*(v3 + 20) >> 5) & 1);
            std::string::basic_string[abi:nn200100]<0>(__p, "buildRead");
            _agcFieldString<unsigned int>(&v89, __p, (*(v3 + 20) >> 6) & 1);
            std::string::basic_string[abi:nn200100]<0>(v77, "hasLogicOp");
            _agcFieldString<unsigned int>(&v90, v77, (*(v3 + 20) >> 7) & 1);
            std::string::basic_string[abi:nn200100]<0>(v75, "logicOp");
            _agcFieldString<unsigned int>(&v91, v75, (*(v3 + 20) >> 7) & 1);
            std::string::basic_string[abi:nn200100]<0>(v73, "output0IsFloat");
            _agcFieldString<unsigned int>(&v92, v73, (*(v3 + 20) >> 13) & 1);
            std::string::basic_string[abi:nn200100]<0>(v71, "output0Is32b");
            _agcFieldString<unsigned int>(&v93, v71, (*(v3 + 20) >> 14) & 1);
            std::string::basic_string[abi:nn200100]<0>(v69, "output0LenMinusOne");
            _agcFieldString<unsigned int>(&v94, v69, (*(v3 + 20) >> 15) & 3);
            std::string::basic_string[abi:nn200100]<0>(v67, "output1Present");
            _agcFieldString<unsigned int>(&v95, v67, (*(v3 + 20) >> 17) & 1);
            std::string::basic_string[abi:nn200100]<0>(v40, "output1IsFloat");
            _agcFieldString<unsigned int>(&v96, v40, (*(v3 + 20) >> 18) & 1);
            std::string::basic_string[abi:nn200100]<0>(v38, "output1Is32b");
            _agcFieldString<unsigned int>(&v97, v38, (*(v3 + 20) >> 19) & 1);
            std::string::basic_string[abi:nn200100]<0>(v36, "output1LenMinusOne");
            _agcFieldString<unsigned int>(&v98, v36, (*(v3 + 20) >> 20) & 3);
            std::string::basic_string[abi:nn200100]<0>(v34, "userValueUndef");
            _agcFieldString<unsigned int>(&v99, v34, (*(v3 + 20) >> 22) & 1);
            std::string::basic_string[abi:nn200100]<0>(v32, "supportGL");
            _agcFieldString<unsigned int>(&v100, v32, (*(v3 + 20) >> 23) & 1);
            std::string::basic_string[abi:nn200100]<0>(v30, "fastMath");
            _agcFieldString<unsigned int>(&v101, v30, HIBYTE(*(v3 + 20)) & 1);
            std::string::basic_string[abi:nn200100]<0>(v28, "isNullFunction");
            _agcFieldString<unsigned int>(&v102, v28, (*(v3 + 20) >> 25) & 1);
            std::string::basic_string[abi:nn200100]<0>(v26, "rtzMode");
            _agcFieldString<unsigned int>(&v103, v26, (*(v3 + 20) >> 26) & 3);
            std::string::basic_string[abi:nn200100]<0>(v24, "assumeFixedColorCoverageMask");
            _agcFieldString<unsigned int>(&v104, v24, (*(v3 + 20) >> 28) & 1);
            std::string::basic_string[abi:nn200100]<0>(v22, "unused");
            _agcFieldString<unsigned int>(&v105, v22, *(v3 + 20) >> 29);
            _agcGroupWithHeader(a2, v54, &v82, 24);
            v19 = 576;
            do
            {
              if (v82.__r_.__value_.__s.__data_[v19 - 1] < 0)
              {
                operator delete(*(&v81.__r_.__value_.__l.__data_ + v19));
              }

              v19 -= 24;
            }

            while (v19);
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }

            if (v25 < 0)
            {
              operator delete(v24[0]);
            }

            if (v27 < 0)
            {
              operator delete(v26[0]);
            }

            if (v29 < 0)
            {
              operator delete(v28[0]);
            }

            if (v31 < 0)
            {
              operator delete(v30[0]);
            }

            if (v33 < 0)
            {
              operator delete(v32[0]);
            }

            if (v35 < 0)
            {
              operator delete(v34[0]);
            }

            if (v37 < 0)
            {
              operator delete(v36[0]);
            }

            if (v39 < 0)
            {
              operator delete(v38[0]);
            }

            if (v41 < 0)
            {
              operator delete(v40[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (v70 < 0)
            {
              operator delete(v69[0]);
            }

            if (v72 < 0)
            {
              operator delete(v71[0]);
            }

            if (v74 < 0)
            {
              operator delete(v73[0]);
            }

            if (v76 < 0)
            {
              operator delete(v75[0]);
            }

            if (v78 < 0)
            {
              operator delete(v77[0]);
            }

            if (v80 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v106.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v114.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }

            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }

            if (v47 < 0)
            {
              operator delete(v46[0]);
            }

            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
            }

            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if (v53 < 0)
            {
              operator delete(v52[0]);
            }

            if ((v54[23] & 0x80000000) == 0)
            {
              goto LABEL_152;
            }

            v5 = v54;
            goto LABEL_151;
          }

          v15 = v65[0];
        }

        operator delete(v15);
        goto LABEL_53;
      }

      v14 = v57[0];
LABEL_44:
      operator delete(v14);
      goto LABEL_45;
    }

    if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v14 = v59[0];
    goto LABEL_44;
  }

  std::string::basic_string[abi:nn200100]<0>(v59, "LIBSpilling");
  v12 = *(v3 + 12);
  if ((v12 & 0x400000) != 0)
  {
    _agcFieldString<unsigned char>(&v110, v59, (v12 & 0x200000) != 0);
    goto LABEL_27;
  }

LABEL_153:
  v21 = std::__throw_bad_optional_access[abi:nn200100]();
}

uint64_t AGCLLVMStatelessPSODynamicLibrary::compile(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = v2[5];
  v4 = v2[3];
  LODWORD(v5) = (v3 >> 8) & 0x1F;
  if ((v3 & 0x80) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  v55 = v5;
  v6 = *this;
  v7 = 1872;
  if ((v3 & 0x4000) == 0)
  {
    v7 = 1856;
  }

  v8 = 1904;
  if ((v3 & 0x4000) == 0)
  {
    v8 = 1896;
  }

  if ((v3 & 0x2000) == 0)
  {
    v7 = v8;
  }

  v9 = *(this + *(*this - 24) + v7);
  if (((v2[5] >> 15) & 3) != 0)
  {
    v9 = llvm::VectorType::get();
    v10 = *(*(this + 14) + 20);
    v6 = *this;
  }

  else
  {
    v10 = v2[5];
  }

  v54 = v9;
  if ((v10 & 0x20000) != 0)
  {
    v12 = 1872;
    if ((v10 & 0x80000) == 0)
    {
      v12 = 1856;
    }

    v13 = 1904;
    if ((v10 & 0x80000) == 0)
    {
      v13 = 1896;
    }

    if ((v10 & 0x40000) == 0)
    {
      v12 = v13;
    }

    v11 = *(this + *(v6 - 24) + v12);
    if (((v10 >> 20) & 3) != 0)
    {
      v11 = llvm::VectorType::get();
      v10 = *(*(this + 14) + 20);
      v6 = *this;
    }
  }

  else
  {
    v11 = 0;
  }

  v53 = v11;
  v52 = 1 << (BYTE1(v4) & 3);
  if ((v10 & 0x20) != 0)
  {
    v15 = *(this + *(v6 - 24) + 1880);
    v14 = llvm::VectorType::get();
    v10 = *(*(this + 14) + 20);
  }

  else
  {
    v14 = 0;
  }

  v16 = (v10 >> 22) & 1;
  v17 = (v10 >> 23) & 1;
  v18 = HIBYTE(v10) & 1;
  AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(&v59, v2 + 3, v2[2]);
  v19 = *(this + *(*this - 24) + 2168);
  v68 = v59;
  v69[0] = v60;
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(v58, v19, 1, &v68, v2[4], (v3 & 0x2000000) != 0, ((v3 & 0x80) << 25) | v55, (v3 >> 1) & 0xF, (v3 >> 26) & 3, v54, v53, v14, v16, v17, v18, 0, 0, (v2[3] & 0x10000000) != 0, 0, (v3 & 0x10000000) != 0, v52);
  *(this + 129) = (v3 >> 1) & 0xF;
  v20 = (this + 72);
  v21 = this + 128;
  if ((v3 & 0x40) != 0)
  {
    FramebufferFunction = AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(v20, v58, v21);
  }

  else
  {
    FramebufferFunction = AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(v20, v58, v21, this + 129);
  }

  v23 = FramebufferFunction;
  AGCLLVMObject::replaceLIBSpillingFunctions((this + *(*this - 24)));
  if (v23)
  {
    v24 = *(*this - 24);
    StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal((this + v24));
    AGCLLVMObject::setDylibLinkage(StatelessPSOGlobal, v26);
    v27 = *(*(this + *(*this - 24) + 2168) + 928);
    (*(*v27 + 160))(v27);
    AGCLLVMObject::addDylibBinding((this + v24), StatelessPSOGlobal);
    llvm::GlobalValue::setLinkage(v23, 0);
    (*(*this + 72))(this, v23);
    *&v68 = v69;
    *(&v68 + 1) = 0x600000000;
    v28 = llvm::Function::args(v23);
    if (v28 != v29)
    {
      v30 = v28;
      v31 = v29;
      v32 = this + 2136;
      do
      {
        v33 = *(*this - 24);
        v34 = **&v32[v33];
        v35 = *(this + v33 + 1904);
        llvm::ConstantInt::get();
        v61 = llvm::ValueAsMetadata::get();
        v36 = **&v32[*(*this - 24)];
        v62 = llvm::MDString::get();
        v37 = **&v32[*(*this - 24)];
        v63 = llvm::MDString::get();
        v38 = **&v32[*(*this - 24)];
        v64 = llvm::MDString::get();
        v39 = **&v32[*(*this - 24)];
        v65 = llvm::MDString::get();
        v40 = **&v32[*(*this - 24)];
        Name = llvm::Value::getName(v30);
        if (Name)
        {
          std::string::basic_string[abi:nn200100](__p, Name, v41);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v57 = 0;
        }

        v66 = llvm::MDString::get();
        v43 = **&v32[*(*this - 24)];
        v67 = llvm::MDString::get();
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v68, Impl);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__p[0]);
        }

        v30 = (v30 + 40);
      }

      while (v30 != v31);
    }

    v45 = **(this + *(*this - 24) + 2136);
    v46 = llvm::MDTuple::getImpl();
    v47 = **(this + *(*this - 24) + 2136);
    v61 = llvm::ValueAsMetadata::get();
    v48 = **(this + *(*this - 24) + 2136);
    v62 = llvm::MDTuple::getImpl();
    v63 = v46;
    llvm::MDTuple::getImpl();
    v49 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
    if (v68 != v69)
    {
      free(v68);
    }
  }

  result = AGCLLVMDriverDynamicLibrary::compile(this, v18);
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMDriverDynamicLibrary::compile(AGCLLVMDriverDynamicLibrary *this, char a2)
{
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v4 = *(this + *(*this - 24) + 1696);
      v5 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v4, "------ Start compilation key description for %s shader %u  ------", v5, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = *(this + *(*this - 24) + 1696);
      (*(*this + 80))(__p, this);
      v7 = v13 >= 0 ? __p : __p[0];
      AGCTargetPrinter::printMessage(v6, "%s", v7);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v8 = *(this + *(*this - 24) + 1696);
      v9 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v8, "------ End compilation key description for %s shader %u  ------", v9, *(this + *(*this - 24) + 5088));
    }
  }

  LOWORD(__p[0]) = 0;
  BYTE2(__p[0]) = 1;
  HIDWORD(__p[0]) = 0;
  BYTE3(__p[0]) = (*(*this + 32))(this);
  v10 = AGCLLVMCtx::compile(*(this + *(*this - 24) + 1688), this + *(*this - 24), *(this + *(*this - 24) + 2136), a2, 1, __p);
  result = 0;
  if (v10)
  {
    return (*(*this + 96))(this);
  }

  return result;
}

void virtual thunk toAGCLLVMStatelessPSODynamicLibrary::~AGCLLVMStatelessPSODynamicLibrary(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_28259F808;
  *(v1 + 17) = off_28259F930;
  *(v1 + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject((v1 + 136));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_28259F808;
  *(v1 + 17) = off_28259F930;
  *(v1 + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);

  AGCLLVMObject::~AGCLLVMObject((v1 + 136));
}

void non-virtual thunk toAGCLLVMStatelessPSODynamicLibrary::~AGCLLVMStatelessPSODynamicLibrary(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v1 = (this - 72);
  *this = &off_28259F808;
  v2 = (this + 64);
  *(this + 8) = off_28259F930;
  *(this + 221) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this - 72);
  *this = &off_28259F808;
  v2 = (this + 64);
  *(this + 8) = off_28259F930;
  *(this + 221) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMStatelessPSODynamicLibrary::~AGCLLVMStatelessPSODynamicLibrary(AGCLLVMStatelessPSODynamicLibrary *this)
{
  *(this + 9) = &off_28259F808;
  v2 = (this + 136);
  *(this + 17) = off_28259F930;
  *(this + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(this, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_28259F808;
  v2 = (this + 136);
  *(this + 17) = off_28259F930;
  *(this + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(this, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t *AGCLLVMDynamicLibrary::AGCLLVMDynamicLibrary(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 24)) = a2[1];
  *(result + *(*result - 24) + 1704) = a2[2];
  *(result + 4) = 0;
  *(result + 10) = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a3;
  result[7] = 0;
  result[8] = 0;
  result[6] = 4;
  v4 = *result;
  *(result + *(*result - 24) + 4576) = (*a3 & 0x4000000) != 0;
  *(*(result + *(v4 - 24) + 2168) + 1941) = (*(a3 + 4) & 2) != 0;
  *(*(result + *(v4 - 24) + 2168) + 1942) = (*(a3 + 4) & 4) != 0;
  *(result + 8) = (*a3 & 0x20000000) != 0;
  return result;
}

BOOL AGCLLVMUserFragmentShader::getEffectiveFragmentRate(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1 && a3 == 18)
  {
    return *a2 == 0x706D61732E726961 && *(a2 + 8) == 0x5F6B73616D5F656CLL && *(a2 + 16) == 28265;
  }

  else
  {
    if (a3 != 21)
    {
      return 0;
    }

    v5 = 0x6169722E636F6C6FLL;
    v6 = bswap64(*a2);
    if (v6 == 0x6169722E636F6C6FLL && (v5 = 0x725F73616D706C65, v6 = bswap64(*(a2 + 8)), v6 == 0x725F73616D706C65) && (v5 = 0x706C655F6D61736BLL, v6 = bswap64(*(a2 + 13)), v6 == 0x706C655F6D61736BLL))
    {
      v7 = 0;
    }

    else if (v5 < v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    return v7 == 0;
  }
}

uint64_t AGCLLVMUserFragmentShader::buildStaticLtpLibOffsetArrayPtr(AGCLLVMUserFragmentShader *this)
{
  v12[4] = *MEMORY[0x277D85DE8];
  FragmentBuiltinPsoStatePtr = AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr(this);
  v3 = this + *(*this - 24);
  FragmentBuiltinPsoStateType = AGCLLVMUserObject::getFragmentBuiltinPsoStateType(this);
  v5 = *(this + *(*this - 24) + 1904);
  v12[0] = llvm::ConstantInt::get();
  v6 = *(this + *(*this - 24) + 1904);
  v12[1] = llvm::ConstantInt::get();
  v7 = *(this + *(*this - 24) + 1904);
  v12[2] = llvm::ConstantInt::get();
  v8 = *(this + *(*this - 24) + 1904);
  v12[3] = llvm::ConstantInt::get();
  v11[16] = 257;
  llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
  result = llvm::IRBuilderBase::CreateGEP((v3 + 1712), FragmentBuiltinPsoStateType, FragmentBuiltinPsoStatePtr, v12, 4, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMStatelessFragmentObject::buildDrawBufferState(uint64_t a1, uint64_t *a2, uint64_t a3, llvm::Value *a4)
{
  v7 = a2 + *(*a2 - 24);
  StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal(v7);
  v87 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 1704), StatelessPSOGlobal, &v86);
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v9 = *(a3 + 32);
  v10 = *(a2 + *(*a2 - 24) + 1904);
  *(a1 + 384) = llvm::ConstantInt::get();
  v11 = (*(a3 + 32) >> 8) & 3;
  v12 = *(a2 + *(*a2 - 24) + 1904);
  *(a1 + 392) = llvm::ConstantInt::get();
  v13 = (*(a3 + 32) >> 10) & 3;
  v14 = *(a2 + *(*a2 - 24) + 1904);
  *(a1 + 400) = llvm::ConstantInt::get();
  v15 = *a2;
  if ((~*(a3 + 32) & 0x1FF000) != 0)
  {
    v17 = *(a2 + *(v15 - 24) + 1896);
    *(a1 + 408) = llvm::ConstantInt::get();
  }

  else
  {
    v16 = a2 + *(v15 - 24);
    v83 = *(v16 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v84, (v16 + 1712));
    v85 = *(v16 + 1808);
    *(a1 + 408) = AGCLLVMObject::buildReadDynamicLIBSize(v16, &v83);
    if (v84)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  *(a1 + 416) = 0;
  if ((*(a3 + 32) & 0x400000) != 0)
  {
    v18 = *(a2 + *(*a2 - 24) + 1904);
    *(a1 + 416) = llvm::ConstantInt::get();
    v19 = *(a3 + 32);
  }

  v20 = *(a2 + *(*a2 - 24) + 1904);
  *(a1 + 424) = llvm::ConstantInt::get();
  v21 = *(a3 + 35);
  v22 = *(a2 + *(*a2 - 24) + 1896);
  v23 = 0;
  *(a1 + 432) = llvm::ConstantInt::get();
  v76 = a2 + 238;
  v24 = a2 + 237;
  v25 = (a1 + 24);
  do
  {
    std::to_string(&v79, v23);
    v26 = std::string::insert(&v79, 0, "agc_draw_buffer[");
    v27 = v26->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v86, "]");
    v29 = v28->__r_.__value_.__r.__words[2];
    *__p = *&v28->__r_.__value_.__l.__data_;
    v82 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    v30 = v24;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    v31 = (a2 + *(*a2 - 24));
    v32 = v31[238];
    v33 = llvm::ConstantInt::get();
    v87 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v31 + 214), v32, Load, v33, &v86);
    v80 = 260;
    v79.__r_.__value_.__r.__words[0] = __p;
    v35 = AGCLLVMBuilder::CreateLoad((v31 + 213), GEP, &v79);
    if ((*(a3 + 4 * v23) & 0x1F) == 0x17)
    {
      v36 = v35;
      if (v82 >= 0)
      {
        v37 = HIBYTE(v82);
      }

      else
      {
        v37 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v79, v37 + 16);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v79;
      }

      else
      {
        v38 = v79.__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if (v82 >= 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = __p[0];
        }

        memmove(v38, v39, v37);
      }

      strcpy(v38 + v37, ".pbeSourceFormat");
      v87 = 260;
      v86.__r_.__value_.__r.__words[0] = &v79;
      *(v25 - 3) = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v36, 5, 0, &v86);
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v82 >= 0)
      {
        v40 = HIBYTE(v82);
      }

      else
      {
        v40 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v79, v40 + 21);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v79;
      }

      else
      {
        v41 = v79.__r_.__value_.__r.__words[0];
      }

      if (v40)
      {
        if (v82 >= 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        memmove(v41, v42, v40);
      }

      strcpy(v41 + v40, ".numWrittenComponents");
      v87 = 260;
      v86.__r_.__value_.__r.__words[0] = &v79;
      *(v25 - 2) = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v36, 3, 5, &v86);
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v82 >= 0)
      {
        v43 = HIBYTE(v82);
      }

      else
      {
        v43 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v79, v43 + 16);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v79;
      }

      else
      {
        v44 = v79.__r_.__value_.__r.__words[0];
      }

      if (v43)
      {
        if (v82 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        memmove(v44, v45, v43);
      }

      strcpy(v44 + v43, ".gammaCorrection");
      v87 = 260;
      v86.__r_.__value_.__r.__words[0] = &v79;
      *(v25 - 1) = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v36, 1, 8, &v86);
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v82 >= 0)
      {
        v46 = HIBYTE(v82);
      }

      else
      {
        v46 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v79, v46 + 15);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v79;
      }

      else
      {
        v47 = v79.__r_.__value_.__r.__words[0];
      }

      if (v46)
      {
        if (v82 >= 0)
        {
          v48 = __p;
        }

        else
        {
          v48 = __p[0];
        }

        memmove(v47, v48, v46);
      }

      strcpy(v47 + v46, ".preEmitSwizzle");
      v87 = 260;
      v86.__r_.__value_.__r.__words[0] = &v79;
      *v25 = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v36, 3, 9, &v86);
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v49 = *(v76 + *(*a2 - 24));
      *(v25 - 3) = llvm::ConstantInt::get();
      v50 = *(v76 + *(*a2 - 24));
      *(v25 - 2) = llvm::ConstantInt::get();
      v51 = *(v76 + *(*a2 - 24));
      *(v25 - 1) = llvm::ConstantInt::get();
      v52 = *(v76 + *(*a2 - 24));
      *v25 = llvm::ConstantInt::get();
    }

    v24 = v30;
    v53 = *a2;
    if ((~*(a3 + 4 * v23) & 0xFF000) != 0)
    {
      v61 = *(v30 + *(v53 - 24));
      v25[1] = llvm::ConstantInt::get();
    }

    else
    {
      v54 = (a2 + *(v53 - 24));
      v55 = v54[237];
      if (a4)
      {
        v56 = v54[238];
        v57 = llvm::ConstantInt::get();
        v87 = 257;
        v58 = (v54 + 214);
        v59 = v55;
        v60 = a4;
      }

      else
      {
        if ((*(*Load + 8) & 0xFE) == 0x12)
        {
          v62 = *(**(*Load + 16) + 8);
        }

        v63 = llvm::PointerType::get();
        v87 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(v54 + 214, Load, v63, &v86);
        v65 = (a2 + *(*a2 - 24));
        v66 = v65[237];
        v67 = v65[238];
        v57 = llvm::ConstantInt::get();
        v87 = 257;
        v58 = (v65 + 214);
        v59 = v66;
        v60 = PointerCast;
      }

      v68 = llvm::IRBuilderBase::CreateGEP(v58, v59, v60, v57, &v86);
      v69 = a2 + *(*a2 - 24);
      v70 = *(v69 + 237);
      v87 = 257;
      llvm::Type::isOpaquePointerTy(*v68);
      v25[1] = llvm::IRBuilderBase::CreateAlignedLoad(v69 + 214, v70, v68, 0, &v86);
      if (v82 >= 0)
      {
        v71 = HIBYTE(v82);
      }

      else
      {
        v71 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v79, v71 + 22);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v79;
      }

      else
      {
        v72 = v79.__r_.__value_.__r.__words[0];
      }

      if (v71)
      {
        if (v82 >= 0)
        {
          v73 = __p;
        }

        else
        {
          v73 = __p[0];
        }

        memmove(v72, v73, v71);
      }

      strcpy(v72 + v71, ".outputPartitionOffset");
      v87 = 260;
      v86.__r_.__value_.__r.__words[0] = &v79;
      llvm::Value::setName();
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      v24 = v30;
    }

    v74 = *(a3 + 4 * v23);
    v75 = *(v24 + *(*a2 - 24));
    v25[2] = llvm::ConstantInt::get();
    if (SHIBYTE(v82) < 0)
    {
      operator delete(__p[0]);
    }

    ++v23;
    v25 += 6;
  }

  while (v23 != 8);
}

void AGCLLVMUserFragmentShader::readAndWriteFramebufferFunctionPointers(AGCLLVMUserFragmentShader *this, AGCLLVMUserObject *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  FragmentBuiltinPsoStatePtr = AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr(a2);
  v5 = a2 + *(*a2 - 24);
  FragmentBuiltinPsoStateType = AGCLLVMUserObject::getFragmentBuiltinPsoStateType(a2);
  v7 = *(a2 + *(*a2 - 24) + 1904);
  __p[0] = llvm::ConstantInt::get();
  v8 = *(a2 + *(*a2 - 24) + 1904);
  __p[1] = llvm::ConstantInt::get();
  v9 = *(a2 + *(*a2 - 24) + 1904);
  v35 = llvm::ConstantInt::get();
  v10 = *(a2 + *(*a2 - 24) + 1904);
  v36 = llvm::ConstantInt::get();
  v33 = 257;
  llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
  GEP = llvm::IRBuilderBase::CreateGEP((v5 + 1712), FragmentBuiltinPsoStateType, FragmentBuiltinPsoStatePtr, __p, 4, v32);
  v12 = 0;
  v13 = 0;
  v14 = (this + 64);
  do
  {
    v15 = a2 + *(*a2 - 24);
    v16 = *(v15 + 239);
    v17 = llvm::ConstantInt::get();
    v33 = 257;
    *(v14 - 8) = llvm::IRBuilderBase::CreateGEP((v15 + 1712), v16, GEP, v17, v32);
    std::to_string(&v30, v12);
    v18 = std::string::insert(&v30, 0, "agc.read_function[");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v31, "].i64");
    v21 = v20->__r_.__value_.__r.__words[2];
    *__p = *&v20->__r_.__value_.__l.__data_;
    v35 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v33 = 260;
    v32[0] = __p;
    llvm::Value::setName();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v22 = a2 + *(*a2 - 24);
    v23 = *(v22 + 239);
    v24 = llvm::ConstantInt::get();
    v33 = 257;
    *v14 = llvm::IRBuilderBase::CreateGEP((v22 + 1712), v23, GEP, v24, v32);
    std::to_string(&v30, v12);
    v25 = std::string::insert(&v30, 0, "agc.write_function[");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v31, "].i64");
    v28 = v27->__r_.__value_.__r.__words[2];
    *__p = *&v27->__r_.__value_.__l.__data_;
    v35 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v33 = 260;
    v32[0] = __p;
    llvm::Value::setName();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v13 += 2;
    ++v14;
    ++v12;
  }

  while (v13 != 16);
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(uint64_t a1, uint64_t a2, char a3, unsigned int *a4, int a5, char a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, __int128 a16, uint64_t a17, char a18, uint64_t a19, char a20, int a21)
{
  *a1 = a3;
  v24 = *a4;
  *(a1 + 4) = *a4;
  v25 = a4[1];
  *(a1 + 8) = v25;
  v26 = a4[2];
  *(a1 + 12) = v26;
  v27 = a4[3];
  *(a1 + 16) = v27;
  v28 = *(a4 + 16);
  *(a1 + 20) = v28;
  v29 = *(a4 + 17);
  *(a1 + 21) = v29;
  v30 = *(a4 + 18);
  *(a1 + 22) = v30;
  v31 = *(a4 + 19);
  *(a1 + 23) = v31;
  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  *(a1 + 32) = v26;
  *(a1 + 36) = v27;
  *(a1 + 40) = v28;
  *(a1 + 41) = v29;
  *(a1 + 42) = v30;
  *(a1 + 43) = v31;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = a7;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11;
  *(a1 + 80) = a12;
  *(a1 + 88) = a13;
  *(a1 + 89) = a14;
  *(a1 + 90) = a15;
  *(a1 + 140) = 0;
  *(a1 + 160) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 228) = 0;
  *(a1 + 248) = 0;
  *(a1 + 260) = 0;
  *(a1 + 252) = 0;
  *(a1 + 210) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 268) = 0;
  *(a1 + 272) = a9;
  *(a1 + 276) = a8;
  *(a1 + 280) = a16;
  *(a1 + 296) = a17;
  *(a1 + 304) = a18;
  *(a1 + 308) = a19;
  *(a1 + 316) = a20;
  *(a1 + 320) = a21;
  if (a6)
  {
    return a1;
  }

  v32 = (*(*a2 + 688))(a2);
  AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v44, v32, *a4, a9, a10, a11);
  if ((v50 & 1) == 0)
  {
    goto LABEL_19;
  }

  v33 = v47;
  *(a1 + 128) = v46;
  *(a1 + 144) = v33;
  *(a1 + 160) = v48;
  *(a1 + 176) = v49;
  v34 = v45;
  *(a1 + 96) = v44;
  *(a1 + 112) = v34;
  if (*(a1 + 21) != 1 || (*(a1 + 23) & 1) != 0)
  {
    return a1;
  }

  v35 = *a4;
  if (v35 <= 18)
  {
    if (v35 == 2)
    {
      v35 = 13;
      goto LABEL_16;
    }

    if (v35 != 3)
    {
      if (v35 == 18)
      {
        v35 = 9;
      }

      goto LABEL_16;
    }

LABEL_14:
    v35 = 14;
    goto LABEL_16;
  }

  if (v35 == 19)
  {
    goto LABEL_14;
  }

  if (v35 == 20 || v35 == 21)
  {
    v35 = 12;
  }

LABEL_16:
  *(a1 + 24) = v35;
  v36 = (*(*a2 + 688))(a2);
  AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v44, v36, v35, a9, a10, a11);
  if (v50)
  {
    v37 = v47;
    *(a1 + 216) = v46;
    *(a1 + 232) = v37;
    *(a1 + 248) = v48;
    *(a1 + 264) = v49;
    v38 = v45;
    *(a1 + 184) = v44;
    *(a1 + 200) = v38;
    return a1;
  }

LABEL_19:
  v40 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMBuilder::CreateConstInBoundsGEP1_32(v40, v41, v42, v43);
}

llvm::GetElementPtrInst *AGCLLVMBuilder::CreateConstInBoundsGEP1_32(AGCLLVMBuilder *this, llvm::Type *a2, llvm::Type **a3)
{
  v6 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v6 = **(v6 + 2);
  }

  llvm::Type::isOpaquePointerTy(v6);
  v11 = 257;
  llvm::Type::getInt32Ty(*(this + 9), v7);
  v13 = llvm::ConstantInt::get();
  v8 = (*(**(this + 10) + 48))(*(this + 10), a2, a3, &v13, 1, 1);
  if (!v8)
  {
    v12 = 257;
    v8 = llvm::GetElementPtrInst::Create(a2, a3, &v13, 1);
    llvm::GetElementPtrInst::setIsInBounds(v8);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this + 1, v8, v10);
  }

  return v8;
}

uint64_t AGCLLVMStatelessFragmentObject::buildDerivedReadOrWriteFramebufferValues(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 280);
  if (v6)
  {
    a2[1] = v6;
  }

  else
  {
    v7 = a1 + *(*a1 - 24);
    v24 = *(v7 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (v7 + 1712));
    v26 = *(v7 + 1808);
    a2[1] = AGCLLVMObject::buildReadDynamicLIBSize(v7, &v24);
    if (v25)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if (*(a3 + 21) != 1 || (*(a3 + 23) & 1) != 0)
  {
    a2[3] = a2[2];
    v16 = *(a1 + *(*a1 - 24) + 1880);
    ICmp = llvm::ConstantInt::get();
  }

  else
  {
    v8 = a1 + *(*a1 - 24);
    v9 = a2[2];
    v10 = *(v8 + 237);
    v11 = llvm::ConstantInt::get();
    v23 = 257;
    v12 = llvm::IRBuilderBase::CreateAnd((v8 + 1712), v9, v11, v22);
    a2[3] = v12;
    v13 = (a1 + *(*a1 - 24));
    v14 = a2[2];
    v23 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(v13 + 214, 33, v12, v14, v22);
  }

  a2[4] = ICmp;
  v17 = a2[3];
  v22[0] = "lib_offset";
  v23 = 259;
  llvm::Value::setName();
  v18 = a2[4];
  v22[0] = "is_packed";
  v23 = 259;
  result = llvm::Value::setName();
  v20 = *(a3 + 288);
  if (v20)
  {
    result = a2[3];
    if (result)
    {
      v22[0] = "lib_offset.dynamic.unused";
      v23 = 259;
      result = llvm::Value::setName();
    }

    a2[3] = v20;
  }

  if (*(a3 + 304) == 1)
  {
    v21 = *(a3 + 296);
    if (v21)
    {
      result = a2[5];
      if (result)
      {
        v22[0] = "slab_index.dynamic.unused";
        v23 = 259;
        result = llvm::Value::setName();
      }

      a2[5] = v21;
    }
  }

  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildBodyWithPossiblePromotion(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 21) == 1 && (*(a3 + 23) & 1) == 0)
  {
    v5 = *(a1 + *(*a1 - 24) + 1776);
    operator new();
  }

  v6 = *(a5 + 24);
  if (v6)
  {
    return (*(*v6 + 48))(v6, a3 + 4, a3 + 96);
  }

  v8 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::~__value_func[abi:nn200100](v8);
}

uint64_t std::__function::__value_func<void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(*v4 - 24);
  Framebuffer = AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v4, *(a1 + 24), a2, a3, *(a1 + 40), 0, 0);
  Element = AGCLLVMObject::buildConvertColor(v4 + *(*v4 - 24), Framebuffer, *(v5 + 64), *(a3 + 41), *(a3 + 40), *(a3 + 68));
  v9 = *(v5 + 64);
  if ((*(v9 + 8) & 0xFE) == 0x12 && *(v9 + 32) == 1)
  {
    v10 = v4 + *(*v4 - 24);
    v15 = 257;
    v11 = *(v10 + 238);
    v12 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v10 + 1712), Element, v12, v14);
  }

  return llvm::IRBuilderBase::CreateRet((v4 + v6 + 1712), Element);
}

llvm::Value *AGCLLVMStatelessFragmentObject::buildReadFramebuffer(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, _BYTE *a5, char a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    *a5 |= 0xFu;
  }

  v12 = a1 + *(*a1 - 24);
  v13 = *(v12 + 2168);
  v43 = *(v12 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v12 + 1712));
  v45 = *(v12 + 1808);
  v14 = (*(*v13 + 232))(v13, &v43, a3, a2[1], a2[3], *a4, a2[5], *a2);
  if (v44)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::getName(v14);
  if (!v15)
  {
    v41 = "buildReadFramebuffer.buildReadOutputPartitionFromState";
    v42 = 259;
    llvm::Value::setName();
  }

  NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v14);
  v17 = (a1 + *(*a1 - 24));
  if (NextNonDebugInstruction)
  {
    v18 = llvm::Instruction::getNextNonDebugInstruction(v14);
    llvm::IRBuilderBase::SetInsertPoint((v17 + 214), v18);
  }

  else
  {
    v19 = *(v14 + 5);
    v17[220] = v19;
    v17[221] = v19 + 40;
  }

  v20 = AGCLLVMObject::buildOutputFormatConversion(a1 + *(*a1 - 24), v14, *(a4 + 24), *(a4 + 36));
  llvm::Value::getName(v20);
  if (!v21)
  {
    v41 = "buildReadFramebuffer.buildOutputFormatConversion";
    v42 = 259;
    llvm::Value::setName();
  }

  v22 = AGCLLVMStatelessFragmentObject::buildPreEmitSwizzle(a1, v20, 0, a3[3]);
  llvm::Value::getName(v22);
  if (v23)
  {
    if (a6)
    {
      return v22;
    }
  }

  else
  {
    v41 = "buildReadFramebuffer.buildPreEmitSwizzle";
    v42 = 259;
    llvm::Value::setName();
    if (a6)
    {
      return v22;
    }
  }

  if ((*(a1 + 12) & 4) != 0 && *(a4 + 64) == 1 && *(a4 + 60) == 1)
  {
    v24 = a1 + *(*a1 - 24);
    v25 = *(v24 + 2168);
    if (*(v25 + 1845) == 1 && (*(a4 + 61) & 1) == 0)
    {
      v38 = *(v24 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (v24 + 1712));
      v40 = *(v24 + 1808);
      v22 = AGCLLVMTargetLowerer::buildClampColor(v25, &v38, v22, a4 + 44, 1);
      if (v39)
      {
        llvm::MetadataTracking::untrack();
      }

      llvm::Value::getName(v22);
      if (!v26)
      {
        v41 = "buildReadFramebuffer.buildClampColor";
        v42 = 259;
        llvm::Value::setName();
      }
    }
  }

  v27 = *(a4 + 40);
  v28 = *(a4 + 41);
  if (a3[3] == 6)
  {
    v29 = 8;
  }

  else
  {
    v29 = ~(-1 << a3[1]);
  }

  v22 = AGCLLVMBuilder::fillUnwrittenChannels((a1 + *(*a1 - 24) + 1704), v22, v29);
  llvm::Value::getName(v22);
  if (!v30)
  {
    v41 = "buildReadFramebuffer.fillUnwrittenChannels";
    v42 = 259;
    llvm::Value::setName();
  }

  if (*(a3 + 16) == 1)
  {
    v31 = a1 + *(*a1 - 24);
    v32 = *(v31 + 2168);
    v35 = *(v31 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v31 + 1712));
    v37 = *(v31 + 1808);
    v22 = (*(*v32 + 600))(v32, &v35, v22, *a3);
    if (v36)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::getName(v22);
    if (!v33)
    {
      v41 = "buildReadFramebuffer.buildGammaExpansion";
      v42 = 259;
      llvm::Value::setName();
    }
  }

  return v22;
}

__n128 std::__function::__func<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildReadFramebufferFunctionType(AGCLLVMStatelessFragmentObject *this, llvm::Type *a2, int a3, int a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if (!a3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(this + *(*this - 24) + 1896));
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(this + *(*this - 24) + 1896));
  if (a4)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(this + *(*this - 24) + 1896));
  }

  if ((*(a2 + 2) & 0xFE) == 0x12 && *(a2 + 8) == 1)
  {
    v7 = **(a2 + 2);
  }

  v8 = llvm::FunctionType::get();
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t AGCLLVMStatelessFragmentObject::buildExtractField(void *a1, llvm::Value *a2, uint64_t a3, uint64_t a4, const llvm::Twine *a5)
{
  v8 = a1 + *(*a1 - 24);
  v9 = *(v8 + 238);
  v10 = llvm::ConstantInt::get();
  v16 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v8 + 1712), a2, v10, v15);
  v12 = *(a1 + *(*a1 - 24) + 1904);
  v13 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateAnd((v8 + 1712), LShr, v13, a5);
}

llvm::GetElementPtrInst *AGCLLVMBuilder::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Type **a3, unsigned int a4)
{
  v8 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 2);
  }

  llvm::Type::isOpaquePointerTy(v8);
  v12 = 257;
  return llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(this + 1, a2, a3, a4, v11, v9);
}

uint64_t AGCLLVMUserFragmentShader::buildAlphaQuantize(AGCLLVMUserFragmentShader *this, llvm::Value *a2)
{
  v4 = this + *(*this - 24);
  v5 = *(v4 + 271);
  v14 = *(v4 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v4 + 1712));
  v16 = *(v4 + 452);
  v6 = (*(*v5 + 88))(v5, &v14, a2, 8, 0, 1);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = this + *(*this - 24);
  v8 = *(v7 + 271);
  v11 = *(v7 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v7 + 1712));
  v13 = *(v7 + 452);
  v9 = (*(*v8 + 96))(v8, &v11, v6, 8, 0, 32);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMFragmentShader::buildWriteFramebuffer(AGCLLVMStatelessFragmentObject *a1, llvm::Value *a2, llvm::Value *a3, uint64_t a4, llvm::Type **a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, int *a10, char a11, uint64_t *a12, char a13, char a14, unsigned int a15, uint64_t a16, int a17, llvm::Type **a18, int a19)
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = a17 & 0xF;
  v24 = a17 & 0xF;
  LOBYTE(v26) = 0;
  v28 = 0;
  if (*(a16 + 20) == 1)
  {
    v26 = *a16;
    v27 = *(a16 + 16);
    v28 = 1;
  }

  AGCLLVMStatelessFragmentObject::buildWriteFramebuffer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15 | 0x100000000, &v26, a17, a18, a19, 1 << (BYTE1(*(*(a1 + 93) + 32)) & 3), &v25, &v24);
  *(a1 + 94) |= v25 << (4 * a15);
  *(a1 + 95) |= v24 << (4 * a15);
  if ((~*(*(a1 + 93) + 4 * a15) & 0xFF000) == 0 || (result = (*(*a1 + 24))(a1, a15), (result & 1) == 0))
  {
    v21 = *(a1 + *(*a1 - 24) + 2160);
    *&v26 = llvm::MDString::get();
    v22 = *(a1 + *(*a1 - 24) + 1904);
    llvm::ConstantInt::get();
    *(&v26 + 1) = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    result = llvm::Instruction::setMetadata();
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildWriteFramebuffer(AGCLLVMStatelessFragmentObject *a1, llvm::Value *a2, llvm::Value *a3, uint64_t a4, llvm::Type **a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, int *a10, char a11, uint64_t *a12, char a13, char a14, unint64_t a15, __int128 *a16, int a17, llvm::Type **a18, int a19, int a20, unsigned __int8 *a21, unsigned __int8 *a22)
{
  InsertElement = a2;
  v77 = *MEMORY[0x277D85DE8];
  if (!a5 && (*(*a2 + 8) & 0xFE) != 0x12)
  {
    llvm::VectorType::get();
    v30 = llvm::UndefValue::get();
    v31 = a1 + *(*a1 - 24);
    v76 = 257;
    v32 = *(v31 + 238);
    v33 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v31 + 1712), v30, InsertElement, v33, &v73);
  }

  if (a3 && (*(*a3 + 8) & 0xFE) != 0x12)
  {
    llvm::VectorType::get();
    v34 = llvm::UndefValue::get();
    v35 = a1 + *(*a1 - 24);
    v76 = 257;
    v36 = *(v35 + 238);
    v37 = llvm::ConstantInt::get();
    a3 = llvm::IRBuilderBase::CreateInsertElement((v35 + 1712), v34, a3, v37, &v73);
  }

  v38 = a1 + *(*a1 - 24);
  v70 = *(v38 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (v38 + 1712));
  v72 = *(v38 + 452);
  if (a3)
  {
    v39 = *a3;
  }

  else
  {
    v39 = 0;
  }

  v40 = a18;
  if (a18)
  {
    v40 = *a18;
  }

  v41 = *InsertElement;
  if (a5)
  {
    v42 = AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunctionType(a1, v41, v39, v40, 0, a9);
    v43 = a1 + *(*a1 - 24);
    v44 = *(v43 + 239);
    v76 = 257;
    llvm::Type::isOpaquePointerTy(*a5);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v43 + 214, v44, a5, 0, &v73);
    v46 = a1 + *(*a1 - 24);
    v47 = llvm::PointerType::get();
    v76 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v46 + 1712), 48, AlignedLoad, v47, &v73);
LABEL_25:
    if (*(a1 + 2) <= 0)
    {
      *(a1 + 2) = 1;
    }

    goto LABEL_27;
  }

  if ((*(a16 + 20) & 1) == 0)
  {
    v62 = std::__throw_bad_optional_access[abi:nn200100]();
    return std::__function::__func<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::operator()(v62);
  }

  v49 = *(a1 + *(*a1 - 24) + 2168);
  v64 = *a16;
  v65 = *(a16 + 4);
  if (*(a6 + 16) == 16)
  {
    v50 = a6;
  }

  else
  {
    v50 = 0;
  }

  if (*(a7 + 16) == 16)
  {
    v51 = a7;
  }

  else
  {
    v51 = 0;
  }

  if (*(a8 + 16) == 16)
  {
    v52 = a8;
  }

  else
  {
    v52 = 0;
  }

  *(&v63 + 1) = v51;
  *&v63 = v50;
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(&v73, v49, 0, &v64, *a10, a11, *a12, a17, a19, v41, v39, v40, 0, a13, a14, v63, v52, a9, a15 & ((a15 >> 1) >> 31) | a15 & 0x100000000, 0, a20);
  Cast = AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(a1, &v73, a21, a22);
  v42 = *(Cast + 24);
  if (*a21)
  {
    goto LABEL_25;
  }

LABEL_27:
  v53 = a1 + *(*a1 - 24);
  v67 = v70;
  v68 = v71;
  if (v71)
  {
    llvm::MetadataTracking::track();
  }

  v69 = v72;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v67, (v53 + 1712));
  if (v68)
  {
    llvm::MetadataTracking::untrack();
  }

  v73 = v75;
  v74 = 0x700000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, InsertElement);
  if (a3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, a3);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, a4);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, a7);
  if (a9)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, a8);
  }

  if (a18)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, a18);
  }

  v54 = a1 + *(*a1 - 24);
  v55 = v73;
  v56 = v74;
  v66 = 257;
  llvm::Type::isOpaquePointerTy(*Cast);
  v57 = llvm::IRBuilderBase::CreateCall((v54 + 1712), v42, Cast, v55, v56, &v64);
  v58 = *a1;
  *(v57 + 9) = *(v57 + 9) & 0xF003 | (4 * *(*(a1 + *(*a1 - 24) + 2168) + 1960));
  v59 = *(a1 + *(v58 - 24) + 2160);
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  if (v73 != v75)
  {
    free(v73);
  }

  if (v71)
  {
    llvm::MetadataTracking::untrack();
  }

  v60 = *MEMORY[0x277D85DE8];
  return v57;
}

uint64_t std::__function::__func<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::operator()(void *a1, unsigned __int16 *a2, void *a3)
{
  v4 = a2;
  v141 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = a1[3];
  v121 = a1[2];
  v122 = a1[5];
  v7 = v6[6];
  v8 = v6[7];
  v9 = *(v121 + 56);
  v10 = *(v121 + 44);
  v123 = a1[6];
  if (((v9 | v10) & 1) != 0 && (*(v5 + 12) & 1) != 0 && *(a3 + 64) == 1)
  {
    v119 = a1[3];
    v11 = *(v121 + 89) | *(v121 + 90) ^ 1;
    v12 = v5 + *(*v5 - 24);
    v13 = *(v12 + 2168);
    v136 = *(v12 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v137, (v12 + 1712));
    v138 = *(v12 + 1808);
    v115 = v11;
    v7 = AGCLLVMTargetLowerer::buildClampColor(v13, &v136, v7, a3 + 44, v11 & 1);
    if (v137)
    {
      llvm::MetadataTracking::untrack();
    }

    *&v131 = "buildFragOps.buildClampColor(0)";
    LOWORD(v134) = 259;
    llvm::Value::setName();
    v4 = a2;
    if (v8)
    {
      v14 = v5 + *(*v5 - 24);
      v15 = *(v14 + 2168);
      v139 = *(v14 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v140, (v14 + 1712));
      DWORD2(v140) = *(v14 + 1808);
      v8 = AGCLLVMTargetLowerer::buildClampColor(v15, &v139, v8, a3 + 44, v115 & 1);
      if (v140)
      {
        llvm::MetadataTracking::untrack();
      }

      *&v131 = "buildFragOps.buildClampColor(1)";
      LOWORD(v134) = 259;
      llvm::Value::setName();
    }

    v6 = v119;
  }

  v16 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v7, a3[9], *(a3 + 41), *(a3 + 40), *(a3 + 17));
  *&v131 = "buildFragOps.buildConvertColor(0)";
  LOWORD(v134) = 259;
  llvm::Value::setName();
  if (v8)
  {
    v8 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v8, a3[10], *(a3 + 41), *(a3 + 40), *(a3 + 17));
    *&v131 = "buildFragOps.buildConvertColor(1)";
    LOWORD(v134) = 259;
    llvm::Value::setName();
  }

  if ((v9 | v10))
  {
    v134 = 0;
    v132 = 0;
    v131 = *v6;
    v17 = v6[5];
    v133 = v6[3];
    v135 = v17;
    v18 = AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v5, &v131, v4, a3, v122, 0, 0);
    *&v127 = "buildFragOps.buildReadFramebuffer";
    v130 = 259;
    llvm::Value::setName();
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v19 = *v4;
  if (v19 > 0x15 || ((1 << v19) & 0x331000) == 0)
  {
    v16 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v16, a3[2], *(a3 + 41), *(a3 + 40), *(a3 + 17));
    *&v131 = "buildFragOps.logic_color";
    LOWORD(v134) = 259;
    llvm::Value::setName();
    v24 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v18, a3[2], *(a3 + 41), *(a3 + 40), *(a3 + 17));
    *&v131 = "buildFragOps.logic_framebuffer";
    LOWORD(v134) = 259;
    llvm::Value::setName();
    switch(*(v121 + 52))
    {
      case 1:
        v26 = *v24;
        Xor = llvm::ConstantInt::get();
        goto LABEL_123;
      case 2:
        v99 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v92 = (v99 + 1712);
        v93 = &v131;
        v91 = v16;
        goto LABEL_109;
      case 3:
        v101 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        Not = llvm::IRBuilderBase::CreateNot((v101 + 1712), v24, &v131);
        v130 = 257;
        v92 = (v101 + 1712);
        v93 = &v127;
        v91 = v16;
        goto LABEL_112;
      case 4:
        break;
      case 5:
        v90 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v91 = llvm::IRBuilderBase::CreateNot((v90 + 1712), v16, &v131);
        v130 = 257;
        v92 = (v90 + 1712);
        v93 = &v127;
LABEL_109:
        Not = v24;
LABEL_112:
        Xor = llvm::IRBuilderBase::CreateAnd(v92, v91, Not, v93);
        goto LABEL_123;
      case 6:
        v104 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        Xor = llvm::IRBuilderBase::CreateXor((v104 + 1712), v16, v24, &v131);
        goto LABEL_123;
      case 7:
        v105 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v96 = (v105 + 1712);
        v97 = &v131;
        v95 = v16;
        goto LABEL_117;
      case 8:
        v102 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v103 = llvm::IRBuilderBase::CreateOr((v102 + 1712), v16, v24, &v131);
        goto LABEL_121;
      case 9:
        v102 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v103 = llvm::IRBuilderBase::CreateXor((v102 + 1712), v16, v24, &v131);
        goto LABEL_121;
      case 0xA:
        v98 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v87 = (v98 + 1712);
        v88 = &v131;
        v89 = v24;
        goto LABEL_122;
      case 0xB:
        v107 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v106 = llvm::IRBuilderBase::CreateNot((v107 + 1712), v24, &v131);
        v130 = 257;
        v96 = (v107 + 1712);
        v97 = &v127;
        v95 = v16;
        goto LABEL_119;
      case 0xC:
        v86 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v87 = (v86 + 1712);
        v88 = &v131;
        v89 = v16;
        goto LABEL_122;
      case 0xD:
        v94 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v95 = llvm::IRBuilderBase::CreateNot((v94 + 1712), v16, &v131);
        v130 = 257;
        v96 = (v94 + 1712);
        v97 = &v127;
LABEL_117:
        v106 = v24;
LABEL_119:
        Xor = llvm::IRBuilderBase::CreateOr(v96, v95, v106, v97);
        goto LABEL_123;
      case 0xE:
        v102 = v5 + *(*v5 - 24);
        LOWORD(v134) = 257;
        v103 = llvm::IRBuilderBase::CreateAnd((v102 + 1712), v16, v24, &v131);
LABEL_121:
        v89 = v103;
        v130 = 257;
        v87 = (v102 + 1712);
        v88 = &v127;
LABEL_122:
        Xor = llvm::IRBuilderBase::CreateNot(v87, v89, v88);
        goto LABEL_123;
      case 0xF:
        Xor = llvm::Constant::getAllOnesValue(*v24, v25);
LABEL_123:
        v16 = Xor;
        break;
      case 0x10:
        v16 = v24;
        break;
      default:
        v16 = 0;
        break;
    }

    *&v131 = "buildFragOps.buildLogicOp";
    LOWORD(v134) = 259;
    llvm::Value::setName();
    goto LABEL_22;
  }

LABEL_19:
  if ((v10 & 1) == 0 || (v20 = *v4, v20 <= 0x12) && ((1 << v20) & 0x40F30) != 0)
  {
LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  v34 = *(v121 + 44);
  v111 = (v34 >> 1) & 0x1F;
  v112 = (v34 >> 21) & 7;
  v116 = v34 >> 11;
  v118 = HIBYTE(v34) & 7;
  v114 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v16, a3[1], 0, 1, *(a3 + 17));
  if (v8)
  {
    v110 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v8, a3[1], 0, 1, *(a3 + 17));
  }

  else
  {
    v110 = 0;
  }

  v79 = (v34 >> 6) & 0x1F;
  v109 = HIWORD(v34) & 0x1F;
  v80 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v18, a3[1], *(a3 + 41), *(a3 + 40), *(a3 + 17));
  v21 = *(a3 + 64) == 1 && (v81 = *(v121 + 44), ((v81 >> 21) & 7) - 1 <= 1) && (HIBYTE(v81) & 7) - 1 < 2u;
  v82 = v5 + *(*v5 - 24);
  StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal(v82);
  LOWORD(v134) = 257;
  Load = AGCLLVMBuilder::CreateLoad((v82 + 1704), StatelessPSOGlobal, &v131);
  v113 = AGCLLVMStatelessFragmentObject::buildBlendEquation(v5, v114, v110, v80, Load, (*v121 & 1) == 0, v112, v111, v79, a3 + 44, *(a3 + 41), 1u);
  v85 = AGCLLVMStatelessFragmentObject::buildBlendEquation(v5, v114, v110, v80, Load, (*v121 & 1) == 0, v118, v116, v109, a3 + 44, *(a3 + 41), 0);
  v16 = AGCLLVMBuilder::combineRGBA((v5 + *(*v5 - 24) + 1704), v113, v85);
LABEL_23:
  if ((*(v5 + 12) & 2) != 0 && *(a3 + 64) == 1 && *(a3 + 60) == 1)
  {
    v22 = v5 + *(*v5 - 24);
    v23 = *(v22 + 2168);
    if (*(v23 + 1845) == 1)
    {
      if (v21 || (*(a3 + 61) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v21)
    {
      goto LABEL_34;
    }

    v131 = *(v22 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v132, (v22 + 1712));
    LODWORD(v133) = *(v22 + 1808);
    v16 = AGCLLVMTargetLowerer::buildClampColor(v23, &v131, v16, a3 + 44, 0);
    if (v132)
    {
      llvm::MetadataTracking::untrack();
    }
  }

LABEL_34:
  if ((a3[5] & 1) == 0)
  {
    v28 = (*(*v16 + 8) & 0xFE) == 0x12 ? *(**(*v16 + 16) + 8) : *(*v16 + 8);
    if (v28 != 13)
    {
      fwrite("AGC: Warning: encountered not scaled int, not int type\n", 0x37uLL, 1uLL, *MEMORY[0x277D85DF8]);
      goto LABEL_94;
    }
  }

  v29 = *v4;
  v30 = *(v4 + 1);
  v31 = v30 - 1;
  v32 = *v5;
  v33 = *(*(v5 + *(*v5 - 24) + 2168) + 964);
  if (*v4 > 0x16u)
  {
    goto LABEL_47;
  }

  if (((1 << v29) & 0x41F3C0) != 0)
  {
    v33 = (((2 * v30) + v33 - 1) & -v33) >> 1;
    goto LABEL_52;
  }

  if (((1 << v29) & 0x3C0000) != 0)
  {
    LOBYTE(v33) = 4;
    goto LABEL_52;
  }

  if (((1 << v29) & 0x20C00) != 0)
  {
    v33 = (((4 * v30) + v33 - 1) & -v33) >> 2;
  }

  else
  {
LABEL_47:
    if (v29 - 2 >= 4)
    {
      LOBYTE(v33) = 0;
    }

    else
    {
      LODWORD(v33) = (v33 + v31) & -v33;
    }
  }

LABEL_52:
  if (*(v4 + 3) == 6)
  {
    if (v30 != 1 || v29 != 14 && v29 != 3)
    {
      goto LABEL_94;
    }

    v35 = *v123 >> 3;
  }

  else
  {
    v35 = *v123;
  }

  v36 = -1 << v33;
  v37 = (-1 << v30) & 0xF;
  if (((1 << v31) & v35) == 0)
  {
    v37 = 0;
  }

  v38 = v35 | v37;
  v39 = v38 & ~v36;
  *v123 = v38 & ~v36;
  v40 = *v4;
  v41 = *(v4 + 2);
  v42 = (*(**(v5 + *(v32 - 24) + 2168) + 576))();
  if (*(v4 + 16) == 1)
  {
    v43 = *(v5 + *(*v5 - 24) + 2168);
    if (!(*(*v43 + 592))(v43, *v4))
    {
      goto LABEL_94;
    }

    v120 = v6;
    v44 = v5 + *(*v5 - 24);
    v45 = *(v44 + 2168);
    v136 = *(v44 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v137, (v44 + 1712));
    v138 = *(v44 + 1808);
    v16 = (*(*v45 + 608))(v45, &v136, v16, *v4, a3 + 44);
    if (v137)
    {
      llvm::MetadataTracking::untrack();
    }

    v6 = v120;
  }

  v46 = *(a3 + 40);
  if ((v46 & 1) != 0 || ((*(*v16 + 8) & 0xFE) != 0x12 ? (v47 = *(*v16 + 8)) : (v47 = *(**(*v16 + 16) + 8)), v47 == 13))
  {
    v48 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v16, a3[3], *(a3 + 41), v46, *(a3 + 17));
    if (v48)
    {
      v49 = *(a3 + 40);
      v50 = *(a3 + 41);
      if (*(v4 + 3) == 6)
      {
        v51 = 8;
      }

      else
      {
        v51 = ~(-1 << *(v4 + 1));
      }

      Select = AGCLLVMBuilder::fillUnwrittenChannels((v5 + *(*v5 - 24) + 1704), v48, v51);
      v134 = 0;
      v132 = 0;
      v131 = *v6;
      v53 = v6[5];
      v133 = v6[3];
      v135 = v53;
      if ((v42 | v36) != 0xFFFFFFFF)
      {
        v54 = *(v5 + *(*v5 - 24) + 1880);
        *&v139 = llvm::ConstantInt::get();
        v55 = *(v5 + *(*v5 - 24) + 1880);
        *(&v139 + 1) = llvm::ConstantInt::get();
        v56 = *(v5 + *(*v5 - 24) + 1880);
        *&v140 = llvm::ConstantInt::get();
        v57 = *(v5 + *(*v5 - 24) + 1880);
        *(&v140 + 1) = llvm::ConstantInt::get();
        llvm::ConstantVector::get();
        AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v5, &v131, v4, a3, v122, 1, 1);
        v58 = v5 + *(*v5 - 24);
        v130 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        v39 = 15;
      }

      if (!*(v121 + 80))
      {
        goto LABEL_85;
      }

      v59 = v6[8];
      if (v30 <= 3)
      {
        v139 = 0u;
        v140 = 0u;
        if (v30)
        {
          for (i = 0; i != v30; ++i)
          {
            v61 = *(v5 + 1904 + *(*v5 - 24));
            *(&v139 + i) = llvm::ConstantInt::get();
          }
        }

        do
        {
          v62 = *(v5 + 1904 + *(*v5 - 24));
          *(&v139 + v30++) = llvm::ConstantInt::get();
        }

        while (v30 != 4);
        v63 = (v5 + *(*v5 - 24));
        v64 = v63[235];
        v65 = llvm::ConstantInt::get();
        v66 = AGCLLVMBuilder::splat((v63 + 213), 4, v65);
        v67 = llvm::ConstantVector::get();
        v130 = 257;
        llvm::IRBuilderBase::CreateShuffleVector((v63 + 214), v59, v66, v67, &v127);
      }

      AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v5, &v131, v4, a3, v122, 1, 0);
      if (AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), Select, a3[3], *(a3 + 41), *(a3 + 40), *(a3 + 17)))
      {
        v68 = v5 + *(*v5 - 24);
        v130 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
LABEL_85:
        v69 = AGCLLVMStatelessFragmentObject::buildPreEmitSwizzle(v5, Select, v39, *(v4 + 3));
        v71 = v70;
        v72 = AGCLLVMObject::buildOutputFormatConversion(v5 + *(*v5 - 24), v69, *a3, *(a3 + 8));
        v73 = v5 + *(*v5 - 24);
        v74 = *(v73 + 2168);
        v139 = *(v73 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v140, (v73 + 1712));
        DWORD2(v140) = *(v73 + 1808);
        LODWORD(v108) = v71;
        HIDWORD(v108) = *(a3 + 17);
        (*(*v74 + 224))(&v127, v74, &v139, v4, v6[1], v6[3], *a3, v72, 0, v6[5], *v6, v108);
        if (v140)
        {
          llvm::MetadataTracking::untrack();
        }

        if (v127)
        {
          v75 = v5 + *(*v5 - 24);
          v124 = v127;
          v125 = v128;
          if (v128)
          {
            llvm::MetadataTracking::track();
          }

          v126 = v129;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v124, v75 + 1712);
          if (v125)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        if (v128)
        {
          llvm::MetadataTracking::untrack();
        }
      }
    }
  }

LABEL_94:
  v76 = *MEMORY[0x277D85DE8];
  v77 = (v5 + *(*v5 - 24) + 1712);

  return llvm::IRBuilderBase::CreateRetVoid(v77);
}

__n128 std::__function::__func<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0250;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunctionType(AGCLLVMStatelessFragmentObject *this, llvm::Type *a2, llvm::Type *a3, llvm::Type *a4, int a5, int a6)
{
  v17[7] = *MEMORY[0x277D85DE8];
  __src = a2;
  v16[0] = v17;
  v16[1] = 0x700000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v16, &__src, v16);
  if (a3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, a3);
  }

  if (!a5)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, *(this + *(*this - 24) + 1896));
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, *(this + *(*this - 24) + 1896));
  if (a6)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, *(this + *(*this - 24) + 1896));
  }

  if (a4)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, a4);
  }

  v11 = *(this + *(*this - 24) + 1848);
  v12 = llvm::FunctionType::get();
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL blendIsNoOpForPassthrough(int a1, int a2, int a3)
{
  if (a1 <= 3)
  {
    if ((a1 - 1) < 2)
    {
      return 1;
    }

    if (a1 == 3)
    {
      if (a2 == 2 && a3 == 1)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 3)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 7)
      {
        return 1;
      }

      v5 = a3 == 3 || a3 == 7;
      v6 = v5;
      if (a2 == 8 && v6)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 5)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 9)
      {
        return 1;
      }

      v7 = a3 == 5 || a3 == 9;
      v8 = v7;
      if (a2 == 10 && v8)
      {
        return 1;
      }

      if (a2 == 1 && a3 == 2)
      {
        return 1;
      }

      if (a2 == 3 && a3 == 4)
      {
        return 1;
      }

      if (a2 == 7 && a3 == 4)
      {
        return 1;
      }

      v9 = a2 == 3 || a2 == 7;
      v10 = v9;
      if (a3 == 8 && v10 || a2 == 5 && a3 == 6 || a2 == 9 && a3 == 6)
      {
        return 1;
      }

      return (a2 == 5 || a2 == 9) && a3 == 10;
    }

    return 0;
  }

  if (a1 == 4)
  {
    return a2 == 2 && a3 == 1;
  }

  else
  {
    if (a1 != 5 && a1 != 6)
    {
      return 0;
    }

    return a2 == 1 && a3 == 2;
  }
}

llvm::GetElementPtrInst *llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, uint64_t a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  v11 = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!v11)
  {
    v11 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2);
    llvm::GetElementPtrInst::setIsInBounds(v11);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v11, a5);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserFragmentShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x69)
  {
    v1 = v0;
  }

  else
  {
    v1 = 105;
  }

  v2 = &aStringrefLlvmG_44[v1];
  v3 = 105 - v1;
  if ((105 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 105 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMFragmentShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x65)
  {
    v1 = v0;
  }

  else
  {
    v1 = 101;
  }

  v2 = &aStringrefLlvmG_42[v1];
  v3 = 101 - v1;
  if ((101 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 101 - v1;
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

uint64_t AGCLLVMFragmentShader::buildWriteFramebuffer(AGCLLVMStatelessFragmentObject *a1, llvm::Value *a2, unsigned int a3, int a4, llvm::Type **a5)
{
  v10 = (*(*(a1 + 93) + 4 * a3) >> 21) & 0xF;
  v11 = *(a1 + *(*a1 - 24) + 1896);
  v12 = llvm::ConstantInt::get();
  v13 = a1 + *(*a1 - 24);
  v14 = *(v13 + 271);
  v37 = *(v13 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (v13 + 1712));
  v39 = *(v13 + 452);
  v15 = (*(*v14 + 208))(v14, &v37, v12);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(&v30, "case1_stateless_color_coverage_mask.");
  std::to_string(&v29, a3);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v29;
  }

  else
  {
    v16 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v30, v16, size);
  v19 = v18->__r_.__value_.__r.__words[2];
  *__p = *&v18->__r_.__value_.__l.__data_;
  v32 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v36 = 260;
  *&v33 = __p;
  llvm::Value::setName();
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if ((~*(*(a1 + 93) + 32) & 0x1FF000) != 0)
  {
    v20 = *(a1 + *(*a1 - 24) + 1896);
    v21 = llvm::ConstantInt::get();
    v22 = *(a1 + 93);
    v23 = *(v22 + 4 * a3);
    if ((~v23 & 0xFF000) != 0)
    {
      v25 = *(a1 + *(*a1 - 24) + 1896);
      v24 = llvm::ConstantInt::get();
      v22 = *(a1 + 93);
      v23 = *(v22 + 4 * a3);
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v29.__r_.__value_.__l.__data_) = 0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    v30.__r_.__value_.__s.__data_[4] = 0;
    v26 = (*(v22 + 32) >> 28) & 1;
    AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(__p, (v22 + 32), v23);
    v33 = *__p;
    v34 = v32;
    v35 = 1;
    return AGCLLVMFragmentShader::buildWriteFramebuffer(a1, a2, 0, v15, 0, v21, v24, v12, v26, &v29, 0, &v30, 0, 1, a3, &v33, a4, a5, 0);
  }

  else
  {
    v28 = std::__throw_bad_optional_access[abi:nn200100]();
  }
}

BOOL AGCLLVMGLFragmentShader::constructReply(AGCLLVMGLFragmentShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserFragmentShader::constructFlatReply(this, *(this + 6429));
    v5 = this + *(*this - 24);
    v5[4358] = 1;
    v6 = *(v5 + 1082);
    v7 = *(v5 + 1080) - *(v5 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v5 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v5 + 4288), v4);
    v8 = *(*this - 24);
    v9 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
    flatbuffers::FlatBufferBuilder::Finish((this + v8 + 4288), v9, v10);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMGLFragmentShader::getCompilationKeyDescription(AGCLLVMGLFragmentShader *this@<X0>, std::string *a2@<X8>)
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = *(this + 802);
  std::string::basic_string[abi:nn200100]<0>(v56, "AGCFragmentContextStateGL");
  std::string::basic_string[abi:nn200100]<0>(&v61, "AGCFragmentContextState");
  std::string::basic_string[abi:nn200100]<0>(v59, "fragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v104, "AGCFragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v86, "GL and Metal state:");
  std::string::basic_string[abi:nn200100]<0>(&v84, "alphaToCoverage");
  _agcFieldString<unsigned int>(&v87, &v84.__r_.__value_.__l.__data_, *v4 & 1);
  std::string::basic_string[abi:nn200100]<0>(v82, "alphaToOne");
  _agcFieldString<unsigned int>(&v88, v82, (*v4 >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v81, "sampleCoverage");
  _agcFieldString<unsigned int>(&v89, &v81.__r_.__value_.__l.__data_, (*v4 >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v79, "sampleCoverageInvert");
  _agcFieldString<unsigned int>(&v90, &v79, (*v4 >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v91, "GL specific state:");
  std::string::basic_string[abi:nn200100]<0>(&v78, "depthStencilWriteDisabled");
  _agcFieldString<unsigned int>(&v92, &v78.__r_.__value_.__l.__data_, (*v4 >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v76, "logicOp");
  _agcFieldString<unsigned int>(&v93, v76, (*v4 >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v75, "logicOpState");
  _agcFieldString<char const*>(&v94, &v75.__r_.__value_.__l.__data_, _agcLogicOpStrings[(*v4 >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v74, "alphaTest");
  _agcFieldString<unsigned int>(&v95, &v74.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v73, "alphaTestFunc");
  _agcFieldString<char const*>(&v96, &v73.__r_.__value_.__l.__data_, _agcCompareFuncStrings[*v4 >> 12]);
  std::string::basic_string[abi:nn200100]<0>(v71, "smoothPoints");
  _agcFieldString<unsigned int>(&v97, v71, HIWORD(*v4) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v70, "pointSpriteEnabled");
  _agcFieldString<unsigned int>(&v98, &v70.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v68, "outputPointSize");
  _agcFieldString<unsigned int>(&v99, v68, (*v4 >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v66, "shaderDebugEnable");
  _agcFieldString<unsigned int>(&v100, v66, (*v4 >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(v101, "MTL specific state:");
  std::string::basic_string[abi:nn200100]<0>(v64, "pridAllocationStrategy");
  _agcFieldString<char const*>(&v102, v64, _agcPRIDAllocationStrategyStrings[(*v4 >> 20) & 7]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v103, __p, *v4 >> 23);
  _agcGroupWithHeader(&v58, &v104, 0, &v86, 18);
  v5 = 432;
  do
  {
    if (v86.__r_.__value_.__s.__data_[v5 - 1] < 0)
    {
      operator delete(*(&v85.__r_.__value_.__l.__data_ + v5));
    }

    v5 -= 24;
  }

  while (v5);
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v104, v59, &v58);
  std::string::basic_string[abi:nn200100]<0>(&v75, "colorMaskState");
  std::string::basic_string[abi:nn200100]<0>(&v84, "AGCColorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v82, "redEnableBits");
  _agcFieldStringHex(&v86, v82, *(v4 + 8));
  std::string::basic_string[abi:nn200100]<0>(&v81, "greenEnableBits");
  _agcFieldStringHex(&v87, &v81.__r_.__value_.__l.__data_, *(v4 + 9));
  std::string::basic_string[abi:nn200100]<0>(&v79, "blueEnableBits");
  _agcFieldStringHex(&v88, &v79, *(v4 + 10));
  std::string::basic_string[abi:nn200100]<0>(&v78, "alphaEnableBits");
  _agcFieldStringHex(&v89, &v78.__r_.__value_.__l.__data_, *(v4 + 11));
  std::string::basic_string[abi:nn200100]<0>(v76, "unknownMaskBits");
  _agcFieldStringHex(&v90, v76, *(v4 + 12));
  _agcGroupWithHeader(&v74, &v84, 0, &v86, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v90.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v90.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v105, &v75.__r_.__value_.__l.__data_, &v74);
  _agcGroupWithHeader(&v84, &v61, 0, &v104, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v105.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v104 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(v71, "blendState");
  std::string::basic_string[abi:nn200100]<0>(&v104, "AGCBlendState");
  std::string::basic_string[abi:nn200100]<0>(v82, "enabled");
  if (v4[4])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  _agcFieldString<char const*>(&v86, v82, v8);
  std::string::basic_string[abi:nn200100]<0>(&v81, "src");
  _agcFieldString<char const*>(&v87, &v81.__r_.__value_.__l.__data_, _agcBlendFactorStrings[(v4[4] >> 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v79, "dst");
  _agcFieldString<char const*>(&v88, &v79, _agcBlendFactorStrings[(v4[4] >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v78, "srcA");
  _agcFieldString<char const*>(&v89, &v78.__r_.__value_.__l.__data_, _agcBlendFactorStrings[v4[4] >> 11]);
  std::string::basic_string[abi:nn200100]<0>(v76, "dstA");
  _agcFieldString<char const*>(&v90, v76, _agcBlendFactorStrings[*(v4 + 9) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v75, "equation");
  _agcFieldString<char const*>(&v91, &v75.__r_.__value_.__l.__data_, _agcBlendEquationStrings[(v4[4] >> 21) & 7]);
  std::string::basic_string[abi:nn200100]<0>(&v74, "equationA");
  _agcFieldString<char const*>(&v92, &v74.__r_.__value_.__l.__data_, _agcBlendEquationStrings[*(v4 + 19) & 7]);
  std::string::basic_string[abi:nn200100]<0>(&v73, "unknown");
  if ((v4[4] & 0x8000000) != 0)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  _agcFieldString<char const*>(&v93, &v73.__r_.__value_.__l.__data_, v9);
  _agcGroupWithHeader(&v70, &v104, 0, &v86, 8);
  for (k = 0; k != -24; k -= 3)
  {
    if (SHIBYTE(v93.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v93.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v85, v71, &v70);
  _agcGroupWithHeader(&v46, v56, 0, &v84, 2);
  for (m = 0; m != -6; m -= 3)
  {
    if (SHIBYTE(v85.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v84 + m * 8 + 24));
    }
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  v12 = *(this + 660);
  std::string::basic_string[abi:nn200100]<0>(&v74, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(&v84, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v82, "enabledBits");
  _agcFieldStringHex(&v86, v82, *(v12 + 32));
  std::string::basic_string[abi:nn200100]<0>(&v81, "sampleCount");
  _agcFieldString<unsigned char>(&v87, &v81.__r_.__value_.__l.__data_, 1 << (BYTE1(*(v12 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(&v79, "colorSampleCount");
  _agcFieldString<unsigned char>(&v88, &v79, 1 << ((*(v12 + 32) >> 10) & 3));
  v13 = *(v12 + 32) & 0x1FF000;
  if (v13 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(&v70, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v68, "unknown");
    _agcFieldString<std::string>(&v89, &v70.__r_.__value_.__l.__data_, v68);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v71, "outputPartitionSize");
    v14 = *(v12 + 32);
    if ((~v14 & 0x1FF000) == 0)
    {
      goto LABEL_289;
    }

    _agcFieldString<unsigned short>(&v89, v71, (v14 >> 12) & 0x1FF);
  }

  v15 = *(v12 + 32);
  if ((v15 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v66, "LIBSpilling");
    v16 = *(v12 + 32);
    if ((v16 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v90, v66, (v16 & 0x200000) != 0);
      goto LABEL_113;
    }

LABEL_289:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v64, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(__p, "unknown");
  _agcFieldString<std::string>(&v90, v64, __p);
LABEL_113:
  std::string::basic_string[abi:nn200100]<0>(&v78, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v91, &v78.__r_.__value_.__l.__data_, (*(v12 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v76, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v92, v76, *(v12 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v75, "useSlabs");
  _agcFieldString<unsigned char>(&v93, &v75.__r_.__value_.__l.__data_, (*(v12 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v104, &v84, 0, &v86, 8);
  for (n = 0; n != -24; n -= 3)
  {
    if (SHIBYTE(v93.__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(*(&v93.__r_.__value_.__l.__data_ + n * 8));
    }
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

LABEL_128:
    if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    v18 = v66[0];
    goto LABEL_130;
  }

  operator delete(v78.__r_.__value_.__l.__data_);
  if ((v15 & 0x400000) != 0)
  {
    goto LABEL_128;
  }

LABEL_123:
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    v18 = v64[0];
LABEL_130:
    operator delete(v18);
  }

LABEL_131:
  if (v13 != 2093056)
  {
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_139;
    }

    v19 = v71[0];
    goto LABEL_138;
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    v19 = v70.__r_.__value_.__r.__words[0];
LABEL_138:
    operator delete(v19);
  }

LABEL_139:
  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v84, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v82, "encoded[0]");
  _agcStringRepresentation(&v81, v12);
  _agcFieldString<std::string>(&v86, v82, &v81);
  std::string::basic_string[abi:nn200100]<0>(&v79, "encoded[1]");
  _agcStringRepresentation(&v78, (v12 + 4));
  _agcFieldString<std::string>(&v87, &v79, &v78);
  std::string::basic_string[abi:nn200100]<0>(v76, "encoded[2]");
  _agcStringRepresentation(&v75, (v12 + 8));
  _agcFieldString<std::string>(&v88, v76, &v75);
  std::string::basic_string[abi:nn200100]<0>(&v73, "encoded[3]");
  _agcStringRepresentation(&v61, (v12 + 12));
  _agcFieldString<std::string>(&v89, &v73.__r_.__value_.__l.__data_, &v61);
  std::string::basic_string[abi:nn200100]<0>(v59, "encoded[4]");
  _agcStringRepresentation(&v58, (v12 + 16));
  _agcFieldString<std::string>(&v90, v59, &v58);
  std::string::basic_string[abi:nn200100]<0>(v56, "encoded[5]");
  _agcStringRepresentation(&v55, (v12 + 20));
  _agcFieldString<std::string>(&v91, v56, &v55);
  std::string::basic_string[abi:nn200100]<0>(v53, "encoded[6]");
  _agcStringRepresentation(&v52, (v12 + 24));
  _agcFieldString<std::string>(&v92, v53, &v52);
  std::string::basic_string[abi:nn200100]<0>(v50, "encoded[7]");
  _agcStringRepresentation(&v49, (v12 + 28));
  _agcFieldString<std::string>(&v93, v50, &v49);
  _agcGroupWithHeader(&v105, &v84, 0, &v86, 8);
  std::string::basic_string[abi:nn200100]<0>(v47, "_unused");
  _agcFieldString<unsigned int>(&v106, v47, *(v12 + 36));
  _agcGroupWithHeader(&v45, &v74, 0, &v104, 3);
  for (ii = 0; ii != -9; ii -= 3)
  {
    if (SHIBYTE(v106.__r_.__value_.__r.__words[ii + 2]) < 0)
    {
      operator delete(*(&v106.__r_.__value_.__l.__data_ + ii * 8));
    }
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  for (jj = 0; jj != -24; jj -= 3)
  {
    if (SHIBYTE(v93.__r_.__value_.__r.__words[jj + 2]) < 0)
    {
      operator delete(*(&v93.__r_.__value_.__l.__data_ + jj * 8));
    }
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v22 = *(this + 812);
  std::string::basic_string[abi:nn200100]<0>(&v104, &unk_20E75F419);
  for (kk = 1; kk != 33; ++kk)
  {
    std::to_string(&v84, v22[kk]);
    v24 = std::string::append(&v84, " ");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v86;
    }

    else
    {
      v26 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v86.__r_.__value_.__l.__size_;
    }

    std::string::append(&v104, v26, size);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v84, "AGCSamplerRemapStateGL");
  std::string::basic_string[abi:nn200100]<0>(v82, "samplerCount");
  _agcFieldString<unsigned int>(&v86, v82, *v22);
  std::string::basic_string[abi:nn200100]<0>(&v81, "samplerToTexUnitMap");
  std::operator+<char>();
  v28 = std::string::append(&v78, "]");
  v29 = v28->__r_.__value_.__r.__words[2];
  v79 = *&v28->__r_.__value_.__l.__data_;
  v80 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  _agcFieldString<std::string>(&v87, &v81.__r_.__value_.__l.__data_, &v79);
  _agcGroupWithHeader(&v61, &v84, 0, &v86, 2);
  for (mm = 0; mm != -6; mm -= 3)
  {
    if (SHIBYTE(v87.__r_.__value_.__r.__words[mm + 2]) < 0)
    {
      operator delete(*(&v86 + mm * 8 + 24));
    }
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v31 = *(this + 810);
  if (v31)
  {
    std::string::basic_string[abi:nn200100]<0>(&v74, &unk_20E75F419);
    for (nn = 0; nn != 32; ++nn)
    {
      std::string::basic_string[abi:nn200100]<0>(&v104, "AGCSamplerPCFState");
      std::string::basic_string[abi:nn200100]<0>(&v84, "compareFunc");
      _agcFieldString<char const*>(&v86, &v84.__r_.__value_.__l.__data_, _agcCompareFuncStrings[*(v31 + 2 * nn) & 0xF]);
      std::string::basic_string[abi:nn200100]<0>(v82, "clampPCFEnabled");
      _agcFieldString<unsigned short>(&v87, v82, (*(v31 + 2 * nn) >> 4) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v81, "mipmapMinFilterEnabled");
      _agcFieldString<unsigned short>(&v88, &v81.__r_.__value_.__l.__data_, (*(v31 + 2 * nn) >> 5) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v79, "trilinearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v89, &v79, (*(v31 + 2 * nn) >> 6) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v78, "linearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v90, &v78.__r_.__value_.__l.__data_, (*(v31 + 2 * nn) >> 7) & 1);
      std::string::basic_string[abi:nn200100]<0>(v76, "linearMagFilterEnabled");
      _agcFieldString<unsigned short>(&v91, v76, HIBYTE(*(v31 + 2 * nn)) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v75, "unused");
      _agcFieldString<unsigned short>(&v92, &v75.__r_.__value_.__l.__data_, *(v31 + 2 * nn) >> 9);
      _agcGroupWithHeader(&v73, &v104, 1, &v86, 7);
      for (i1 = 0; i1 != -21; i1 -= 3)
      {
        if (SHIBYTE(v92.__r_.__value_.__r.__words[i1 + 2]) < 0)
        {
          operator delete(*(&v92.__r_.__value_.__l.__data_ + i1 * 8));
        }
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (v77 < 0)
      {
        operator delete(v76[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v83 < 0)
      {
        operator delete(v82[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v73;
      }

      else
      {
        v34 = v73.__r_.__value_.__r.__words[0];
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v73.__r_.__value_.__l.__size_;
      }

      std::string::append(&v74, v34, v35);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&v104, "AGCSamplerPCFStates");
    std::string::basic_string[abi:nn200100]<0>(&v86, "pcf : ");
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v87, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
    }

    else
    {
      v87 = v74;
    }

    _agcGroupWithHeader(&v84, &v104, 0, &v86, 2);
    for (i2 = 0; i2 != -6; i2 -= 3)
    {
      if (SHIBYTE(v87.__r_.__value_.__r.__words[i2 + 2]) < 0)
      {
        operator delete(*(&v86 + i2 * 8 + 24));
      }
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v84, &unk_20E75F419);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v104, &v46.__r_.__value_.__l.__data_, &v45.__r_.__value_.__l.__data_);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v61;
  }

  else
  {
    v37 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v61.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v104, v37, v38);
  v40 = v39->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v84;
  }

  else
  {
    v41 = v84.__r_.__value_.__r.__words[0];
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v84.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v86, v41, v42);
  *a2 = *v43;
  v43->__r_.__value_.__r.__words[0] = 0;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void _agcGroupWithHeader(std::string *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  _agcIndentedLine(&v29.__r_.__value_.__l.__data_, &v28, a3);
  std::string::basic_string[abi:nn200100]<0>(v23, "{");
  _agcIndentedLine(&__p, v23, a3);
  if ((v27 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v26;
  }

  v11 = std::string::append(&v29, p_p, v10);
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (a5)
  {
    for (i = 24 * a5; i; i -= 24)
    {
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *a4, *(a4 + 8));
      }

      else
      {
        v29 = *a4;
      }

      v14 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v29;
      }

      _agcIndentedLine(&__p, &v22, a3 + 1);
      if ((v27 & 0x80u) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v16 = v27;
      }

      else
      {
        v16 = v26;
      }

      std::string::append(&v30, v15, v16);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        if (v14 < 0)
        {
LABEL_39:
          operator delete(v29.__r_.__value_.__l.__data_);
        }
      }

      else if (v14 < 0)
      {
        goto LABEL_39;
      }

      a4 += 24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v20, "}");
  _agcIndentedLine(&v29.__r_.__value_.__l.__data_, v20, a3);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v19 = std::string::insert(&v29, 0, v17, size);
  *a1 = *v19;
  v19->__r_.__value_.__r.__words[0] = 0;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<unsigned short>(std::string *a1, const void **a2, unsigned __int16 a3)
{
  std::to_string(&v5, a3);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMGLFragmentShader::~AGCLLVMGLFragmentShader(AGCLLVMGLFragmentShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A0418;
  v1[817] = &unk_2825A07F0;
  v1[1030] = &unk_2825A0900;
  v1[567] = &unk_2825A06B8;
  v2 = v1[815];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 813));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject((v1 + 817));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A0418;
  v1[817] = &unk_2825A07F0;
  v1[1030] = &unk_2825A0900;
  v1[567] = &unk_2825A06B8;
  v2 = v1[815];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 813));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);

  AGCLLVMObject::~AGCLLVMObject((v1 + 817));
}

void non-virtual thunk toAGCLLVMGLFragmentShader::~AGCLLVMGLFragmentShader(AGCLLVMGLFragmentShader *this)
{
  v1 = (this - 4536);
  *(this - 567) = &unk_2825A0418;
  v2 = (this + 2000);
  *(this + 250) = &unk_2825A07F0;
  *(this + 463) = &unk_2825A0900;
  *this = &unk_2825A06B8;
  v3 = *(this + 248);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 1968));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this - 4536);
  *(this - 567) = &unk_2825A0418;
  v2 = (this + 2000);
  *(this + 250) = &unk_2825A07F0;
  *(this + 463) = &unk_2825A0900;
  *this = &unk_2825A06B8;
  v3 = *(this + 248);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 1968));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMGLFragmentShader::adjustFragCoordY(AGCLLVMGLFragmentShader *this, llvm::Value *a2)
{
  FragCoordYAdjustAndType = AGCLLVMGLFragmentShader::getFragCoordYAdjustAndType(this);
  v6 = v5;
  ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((this + *(*this - 24) + 1704), v5, FragCoordYAdjustAndType, 0);
  v8 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((this + *(*this - 24) + 1704), v6, FragCoordYAdjustAndType, 1u);
  v9 = this + *(*this - 24);
  v18 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), ConstInBoundsGEP2_32, v17);
  v11 = this + *(*this - 24);
  v18 = 257;
  v12 = AGCLLVMBuilder::CreateLoad((v11 + 1704), v8, v17);
  v13 = this + *(*this - 24);
  v18 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((v13 + 1712), a2, Load, v17);
  v16[16] = 257;
  return llvm::IRBuilderBase::CreateFAdd((v13 + 1712), FMul, v12, v16);
}

uint64_t AGCLLVMGLFragmentShader::getFragCoordYAdjustAndType(AGCLLVMGLFragmentShader *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 1872);
  v3 = *v2;
  v16[0] = v2;
  v16[1] = v2;
  v4 = llvm::StructType::get();
  if (!*(this + 815))
  {
    v5 = llvm::User::operator new(0x58);
    v6 = this + *(*this - 24);
    v7 = *(v6 + 267);
    v16[0] = "agc.frag_coord_y_adjust";
    v19 = 259;
    v15 = *(*(v6 + 271) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v8 = this + *(*this - 24);
    v9 = *(v8 + 268);
    v10 = AGCLLVMBuilder::buildGlobalMetadata((v8 + 1704), v5);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v9, v10);
    llvm::ValueHandleBase::operator=((this + 6504), v5);
  }

  llvm::ValueHandleBase::ValueHandleBase(v16, 2u, this + 813);
  v18 = v4;
  v11 = v17;
  if (v17 != -8192 && v17 != -4096 && v17 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v16);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t *AGCLLVMGLFragmentShader::getBarycentricCoordVarying@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  *(a1 + 48) = a1 + 64;
  return llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
}

uint64_t *AGCLLVMGLFragmentShader::getPrimitiveIdVarying@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  *(a1 + 48) = a1 + 64;
  return llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
}

uint64_t *AGCLLVMGLFragmentShader::getFragmentViewportOrLayerIdVarying@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  *(a1 + 48) = a1 + 64;
  return llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
}

void AGCLLVMGLFragmentShader::getFragmentVaryings(AGCLLVMBuilder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v53[3] = *MEMORY[0x277D85DE8];
  *a4 = a4 + 2;
  a4[1] = 0x400000000;
  AGCLLVMBuilder::getVariableTypeMap(a1);
  AGCLLVMUserShader::getVaryingModeMap(v8);
  AGCLLVMUserShader::getInterpolationLocationMap(v9);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = 1;
  }

  v47 = 0;
  LODWORD(v48) = 3;
  parseMDInt(0, a3, &v48, &v47);
  v11 = a3 - 8 * *(a3 + 8);
  v12 = *(v11 + 32);
  if (v12)
  {
    if (*v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v11 + 32);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v11 + 40);
  if (v14)
  {
    if (*v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  String = llvm::MDString::getString(v13);
  v18 = v17;
  v19 = llvm::MDString::getString(v15);
  v21 = v20;
  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  v37 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v36 = MEMORY[0x277D821F8] + 16;
  v44 = __p;
  llvm::raw_ostream::SetUnbuffered(&v36);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  llvm::Type::print(a2, &v36);
  v22 = *(v44 + 23);
  if (v22 < 0)
  {
    v23 = *v44;
  }

  if (v22 >= 0)
  {
    v24 = *(v44 + 23);
  }

  else
  {
    v24 = v44[1];
  }

  v25 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, v19, v21) + 8);
  v26 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, String, v18) + 8);
  if (v26 == 1)
  {
    v25 = 3;
  }

  v48 = 0uLL;
  v49 = 0;
  v50 = 0;
  v51 = 0uLL;
  v52[0] = v53;
  v52[1] = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(v52, 5uLL, -559038737);
  *&v48 = __PAIR64__(v26, v10);
  DWORD2(v48) = v25;
  Key = llvm::StringMapImpl::FindKey();
  v28 = 10;
  if (Key != -1 && Key != dword_28117E4D0)
  {
    v28 = *(*(AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map + 8 * Key) + 8);
  }

  HIDWORD(v48) = v28;
  v49 = v47;
  *&v51 = AGCLLVMUserFragmentShader::setupInterpolation(a1, 1, v47, v48);
  *(&v51 + 1) = v29;
  llvm::raw_ostream::~raw_ostream(&v36);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  v30 = llvm::SmallVectorTemplateCommon<AGCLLVMUserFragmentShader::FragmentVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>>(a4, &v48);
  v31 = *a4 + 88 * *(a4 + 2);
  v32 = *v30;
  v33 = *(v30 + 32);
  *(v31 + 16) = *(v30 + 16);
  *(v31 + 32) = v33;
  *v31 = v32;
  *(v31 + 56) = 0x500000000;
  *(v31 + 48) = v31 + 64;
  v34 = v31 + 48;
  if (*(v30 + 56))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(v34, v30 + 48);
  }

  ++*(a4 + 2);
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
}