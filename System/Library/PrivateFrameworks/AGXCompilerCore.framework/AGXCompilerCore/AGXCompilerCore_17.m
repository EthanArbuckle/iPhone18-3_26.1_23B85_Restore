llvm::GlobalVariable *AGCLLVMDriverShader::getImageStateGlobal(AGCLLVMDriverShader *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    return 0;
  }

  v1 = llvm::User::operator new(0x58);
  v3 = this + *(*this - 24);
  v4 = *(v3 + 267);
  v5 = *(*(v3 + 271) + 1784);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v6 = __clz(*(*(this + *(*this - 24) + 2168) + 1808)) ^ 0x13F;
  llvm::GlobalObject::setAlignment();
  v7 = this + *(*this - 24);
  v8 = *(v7 + 268);
  v9 = AGCLLVMBuilder::buildGlobalMetadata((v7 + 1704), v1);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, v9);
  return v1;
}

uint64_t AGCLLVMDriverShader::buildEOTBGOImageSample(llvm::Value *,llvm::Value *,llvm::Value *,llvm::GlobalVariable *,llvm::GlobalVariable *,unsigned int,BOOL,BOOL,BOOL,AGCLLVMBuilder::ImageDim,FragmentOutputConfiguration const&)::$_0::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (**a1)
  {
    v3 = llvm::User::operator new(0x58);
    v4 = (v1 + *(*v1 - 24));
    v5 = v4[267];
    v6 = v4[234];
    v7 = **(a1 + 16);
    v17[0] = "agc.slice_index";
    v17[2] = v7;
    v18 = 2051;
    v16 = *(v4[271] + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v8 = v1 + *(*v1 - 24);
    v9 = **(a1 + 16);
    v10 = *(v8 + 268);
    v11 = AGCLLVMBuilder::buildGlobalMetadata((v8 + 1704), v3);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
    v12 = v1 + *(*v1 - 24);
    v13 = *(v12 + 234);
    v18 = 257;
    llvm::Type::isOpaquePointerTy(*v3);
    return llvm::IRBuilderBase::CreateAlignedLoad(v12 + 214, v13, v3, 0, v17);
  }

  else
  {
    v15 = *(v1 + *(*v1 - 24) + 1872);

    return llvm::ConstantFP::get();
  }
}

void *AGCLLVMDriverShader::setSampleArgs(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a1 + *(*a1 - 24);
  if (*(*(v11 + 271) + 1900))
  {
    v12 = a1[6];
    v13 = (a1[7] | v12) & ((1 << a3) - 1);
    a1[6] = v12 | (1 << a3);
    v14 = *(v11 + 239);
    v15 = llvm::ConstantInt::get();
  }

  else
  {
    v15 = 0;
  }

  return AGCLLVMDriverShader::setSampleArgsStateless(a1, a2, v15, a4, a5, a6);
}

void *AGCLLVMDriverShader::setSampleArgsStateless(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = result + *(*result - 24);
  if (*(*(v7 + 271) + 1900))
  {
    v10 = result;
    v11 = *(v7 + 239);
    v12 = llvm::ConstantInt::get();
    v13 = v10 + *(*v10 - 24);
    v14 = *(v13 + 236);
    v15 = llvm::PointerType::get();
    v23 = 257;
    a2[5] = llvm::IRBuilderBase::CreateCast((v13 + 1712), 48, v12, v15, v22);
    v10[8] |= 1uLL;
    v16 = v10 + *(*v10 - 24);
    v17 = *(v16 + 236);
    v18 = llvm::PointerType::get();
    v23 = 257;
    a2[4] = llvm::IRBuilderBase::CreateCast((v16 + 1712), 48, a3, v18, v22);
    v19 = v10 + *(*v10 - 24);
    v20 = *(*(v19 + 271) + 1784);
    v21 = llvm::PointerType::get();
    v23 = 257;
    result = llvm::IRBuilderBase::CreateCast((v19 + 1712), 49, a6, v21, v22);
    a4 = result;
  }

  else
  {
    a2[11] = a5;
  }

  a2[6] = a4;
  return result;
}

uint64_t AGCLLVMDriverShader::getFormatInfo(uint64_t result, void *a2, int a3)
{
  switch(a3)
  {
    case 1:
      v4 = *(a2 + *(*a2 - 24) + 1888);
      goto LABEL_24;
    case 2:
      v4 = *(a2 + *(*a2 - 24) + 1896);
      goto LABEL_24;
    case 3:
    case 24:
      v4 = *(a2 + *(*a2 - 24) + 1904);
      goto LABEL_27;
    case 4:
      v4 = *(a2 + *(*a2 - 24) + 1856);
      goto LABEL_22;
    case 5:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 1872);
      goto LABEL_28;
    case 6:
      v4 = *(a2 + *(*a2 - 24) + 1936);
      goto LABEL_24;
    case 7:
      v4 = *(a2 + *(*a2 - 24) + 1944);
      goto LABEL_24;
    case 8:
      v4 = *(a2 + *(*a2 - 24) + 1952);
      goto LABEL_27;
    case 9:
      v4 = *(a2 + *(*a2 - 24) + 1920);
      goto LABEL_22;
    case 10:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 1928);
      goto LABEL_28;
    case 11:
      v4 = *(a2 + *(*a2 - 24) + 2024);
      goto LABEL_24;
    case 12:
      v4 = *(a2 + *(*a2 - 24) + 2032);
LABEL_24:
      v8 = 8;
      goto LABEL_28;
    case 13:
      v4 = *(a2 + *(*a2 - 24) + 2000);
LABEL_22:
      v8 = 1;
      goto LABEL_28;
    case 14:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 2016);
      goto LABEL_28;
    case 15:
      v4 = *(a2 + *(*a2 - 24) + 2040);
LABEL_27:
      v8 = 7;
LABEL_28:
      v7 = v4;
      break;
    case 16:
      v6 = a2 + *(*a2 - 24);
      v4 = *(v6 + 238);
      v7 = *(v6 + 254);
      v8 = 8;
      break;
    case 17:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[237];
      goto LABEL_18;
    case 18:
    case 19:
    case 20:
    case 21:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[237];
      goto LABEL_9;
    case 22:
    case 23:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[238];
LABEL_18:
      v7 = v5[246];
      goto LABEL_19;
    case 25:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[254];
LABEL_9:
      v7 = v3[250];
LABEL_19:
      v8 = 1;
      break;
    default:
      v4 = 0;
      v7 = 0;
      v8 = 10;
      break;
  }

  *result = v7;
  *(result + 8) = v4;
  *(result + 16) = v8;
  return result;
}

llvm::Value *AGCLLVMDriverShader::buildUnpack(void *a1, int a2, llvm::Value *a3, uint64_t a4)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a2 <= 20)
  {
    if (a2 > 17)
    {
      if (a2 == 18)
      {
        v24 = a1 + *(*a1 - 24);
        v25 = *(v24 + 271);
        v84 = *(v24 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v85, (v24 + 1712));
        v86 = *(v24 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        v9 = (*(*v25 + 112))(v25, &v84, 1, a4, a3, 1, 0);
        if (!v85)
        {
          goto LABEL_39;
        }

LABEL_38:
        llvm::MetadataTracking::untrack();
LABEL_39:
        v26 = *(a1 + *(*a1 - 24) + 1904);
        v92 = llvm::ConstantInt::get();
        v27 = *(a1 + *(*a1 - 24) + 1904);
        v93 = llvm::ConstantInt::get();
        v28 = *(a1 + *(*a1 - 24) + 1904);
        v94 = llvm::ConstantInt::get();
        v29 = *(a1 + *(*a1 - 24) + 1904);
LABEL_49:
        v95 = llvm::ConstantInt::get();
        v17 = a1 + *(*a1 - 24);
LABEL_50:
        v38 = llvm::ConstantVector::get();
        v88 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v17 + 1712), v9, v9, v38, v87);
LABEL_51:
        a3 = ShuffleVector;
        goto LABEL_52;
      }

      if (a2 != 19)
      {
        v7 = a1 + *(*a1 - 24);
        v8 = *(v7 + 271);
        v78 = *(v7 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v79, (v7 + 1712));
        v80 = *(v7 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        v9 = (*(*v8 + 112))(v8, &v78, 2, a4, a3, 1, 0);
        if (!v79)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v32 = a1 + *(*a1 - 24);
      v33 = *(v32 + 271);
      v81 = *(v32 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v82, (v32 + 1712));
      v83 = *(v32 + 452);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v33 + 112))(v33, &v81, 1, a4, a3, 1, 0);
      if (v82)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if (a2 != 16)
    {
      if (a2 == 17)
      {
        v12 = a1 + *(*a1 - 24);
        v13 = *(v12 + 271);
        v89 = *(v12 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v90, (v12 + 1712));
        v91 = *(v12 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        v9 = (*(*v13 + 112))(v13, &v89, 0, a4, a3, 1, 0);
        if (v90)
        {
          llvm::MetadataTracking::untrack();
        }

        v14 = *(a1 + *(*a1 - 24) + 1904);
        v92 = llvm::ConstantInt::get();
        v15 = *(a1 + *(*a1 - 24) + 1904);
        v93 = llvm::ConstantInt::get();
        v16 = *(a1 + *(*a1 - 24) + 1904);
        v94 = llvm::ConstantInt::get();
        v17 = a1 + *(*a1 - 24);
        goto LABEL_50;
      }

      goto LABEL_52;
    }

    v20 = a1 + *(*a1 - 24);
    v21 = *(v20 + 271);
    v72 = *(v20 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v73, (v20 + 1712));
    v74 = *(v20 + 452);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    a3 = (*(*v21 + 112))(v21, &v72, 6, a4, a3, 0, 0);
    if (!v73)
    {
      goto LABEL_52;
    }

LABEL_43:
    llvm::MetadataTracking::untrack();
    goto LABEL_52;
  }

  if (a2 <= 22)
  {
    if (a2 == 21)
    {
      v22 = a1 + *(*a1 - 24);
      v23 = *(v22 + 271);
      v75 = *(v22 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v76, (v22 + 1712));
      v77 = *(v22 + 452);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v23 + 112))(v23, &v75, 3, a4, a3, 1, 0);
      if (!v76)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v18 = a1 + *(*a1 - 24);
    v19 = *(v18 + 271);
    v69 = *(v18 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v70, (v18 + 1712));
    v71 = *(v18 + 452);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    a3 = (*(*v19 + 112))(v19, &v69, 7, a4, a3, 0, 0);
    if (v70)
    {
      goto LABEL_43;
    }
  }

  else
  {
    switch(a2)
    {
      case 23:
        v30 = a1 + *(*a1 - 24);
        v31 = *(v30 + 271);
        v66 = *(v30 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v67, (v30 + 1712));
        v68 = *(v30 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        a3 = (*(*v31 + 112))(v31, &v66, 8, a4, a3, 0, 0);
        if (!v67)
        {
          break;
        }

        goto LABEL_43;
      case 24:
        v42 = *(a1 + *(*a1 - 24) + 1872);
        v43 = llvm::ConstantFP::get();
        v44 = *(a1 + *(*a1 - 24) + 1904);
        v45 = llvm::ConstantInt::get();
        v46 = *(a1 + *(*a1 - 24) + 1904);
        v47 = llvm::ConstantInt::get();
        v48 = a1 + *(*a1 - 24);
        v49 = *(v48 + 238);
        v50 = llvm::ConstantInt::get();
        v88 = 257;
        v51 = llvm::IRBuilderBase::CreateAnd((v48 + 1712), a3, v50, v87);
        v52 = a1 + *(*a1 - 24);
        v88 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v52 + 1712), v51, v45, v87);
        v54 = *(a1 + *(*a1 - 24) + 1872);
        v96 = 257;
        llvm::IRBuilderBase::CreateCast((v52 + 1712), 49, Add, v54, &v92);
        v55 = a1 + *(*a1 - 24);
        v56 = *(v55 + 234);
        v88 = 257;
        UIToFP = llvm::IRBuilderBase::CreateUIToFP((v55 + 1712), v51, v56, v87);
        v96 = 257;
        llvm::IRBuilderBase::CreateFDiv((v55 + 1712), UIToFP, v43, &v92);
        v58 = (a1 + *(*a1 - 24));
        v88 = 257;
        llvm::IRBuilderBase::CreateICmp(v58 + 214, 34, v51, v47, v87);
        v59 = a1 + *(*a1 - 24);
        v88 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        v61 = a1 + *(*a1 - 24);
        v62 = *(v61 + 238);
        v88 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateCast((v61 + 1712), 49, Select, v62, v87);
        goto LABEL_51;
      case 25:
        v10 = a1 + *(*a1 - 24);
        v11 = *(v10 + 271);
        v63 = *(v10 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v64, (v10 + 1712));
        v65 = *(v10 + 452);
        v9 = (*(*v11 + 120))(v11, &v63, a3);
        if (v64)
        {
LABEL_47:
          llvm::MetadataTracking::untrack();
        }

LABEL_48:
        v34 = *(a1 + *(*a1 - 24) + 1904);
        v92 = llvm::ConstantInt::get();
        v35 = *(a1 + *(*a1 - 24) + 1904);
        v93 = llvm::ConstantInt::get();
        v36 = *(a1 + *(*a1 - 24) + 1904);
        v94 = llvm::ConstantInt::get();
        v37 = *(a1 + *(*a1 - 24) + 1904);
        goto LABEL_49;
    }
  }

LABEL_52:
  v40 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t AGCLLVMDriverShader::linkDriverRuntime(AGCLLVMDriverShader *a1, int a2, llvm::Function *a3)
{
  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(*(a1 + *(*a1 - 24) + 1688), a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 2136), a2);
  if (!MetalRuntime)
  {
    std::string::append((a1 + *(*a1 - 24) + 1656), "unable to load helper runtime files");
  }

  if ((AGCLLVMObject::linkCommon((a1 + *(*a1 - 24)), MetalRuntime, *(*(a1 + *(*a1 - 24) + 2168) + 1865), a3) & 1) == 0)
  {
    std::string::append((a1 + *(*a1 - 24) + 1656), "unable to link helper runtime");
  }

  return AGCLLVMDriverShader::finalizeDriverRuntimeLinking(a1, a3, 1);
}

uint64_t AGCLLVMDriverShader::finalizeDriverRuntimeLinking(AGCLLVMDriverShader *this, llvm::Function *a2, int a3)
{
  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(*(this + *(*this - 24) + 1688), this + *(*this - 24), *(this + *(*this - 24) + 2136), 0);
  if (!MetalRuntime)
  {
    std::string::append((this + *(*this - 24) + 1656), "unable to load math metal runtime files");
  }

  if ((AGCLLVMObject::linkCommon((this + *(*this - 24)), MetalRuntime, *(*(this + *(*this - 24) + 2168) + 1865), a2) & 1) == 0)
  {
    std::string::append((this + *(*this - 24) + 1656), "unable to link metal runtime");
  }

  if (a3)
  {
    v7 = *this;
    v8 = *(this + *(*this - 24) + 2136);
    v9 = *(v8 + 32);
    v10 = v8 + 24;
    if (v9 != v8 + 24)
    {
      do
      {
        v11 = *(v9 + 8);
        if (v9)
        {
          v12 = (v9 - 56);
        }

        else
        {
          v12 = 0;
        }

        isDeclaration = llvm::GlobalValue::isDeclaration(v12);
        if (v12 != a2 && (isDeclaration & 1) == 0)
        {
          llvm::Function::addFnAttr();
          *(v9 - 24) = *(v9 - 24) & 0xFFFFBFC0 | 0x4007;
        }

        v9 = v11;
      }

      while (v11 != v10);
      v7 = *this;
    }

    v14 = *(v7 - 24);
    v15 = *(this + v14 + 1688);
    v16 = *(this + v14 + 2136);
    AGCLLVMCtx::runInliner();
  }

  v17 = (*(**(this + *(*this - 24) + 2168) + 784))(*(this + *(*this - 24) + 2168), 0, *(this + *(*this - 24) + 2136));
  result = AGCLLVMAirBuiltins::replaceBuiltins(v17);
  if ((result & 1) == 0)
  {
    result = std::string::append((this + *(*this - 24) + 1656), "failed to replace builtins");
  }

  if (v17)
  {
    v19 = *(*v17 + 16);

    return v19(v17);
  }

  return result;
}

void AGCLLVMDriverShader::mutateAllConstantArgsToSharedRegister(AGCLLVMDriverShader *this, llvm::Function *a2)
{
  if (*(this + 12))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(this + 9))
      {
        llvm::Function::BuildLazyArguments(this);
      }

      v5 = *(this + 11);
      v6 = *(v5 + v3);
      if (v6)
      {
        v7 = *(v6 + 8) == 15;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        AGCLLVMObject::mutatePtrValueAddressSpace((v5 + v3), a2);
      }

      ++v4;
      v3 += 40;
    }

    while (*(this + 12) > v4);
  }
}

uint64_t llvm::IRBuilderBase::CreateURem(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = llvm::IRBuilderBase::foldConstant(this, 22, a2, a3, a4);
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t AGCLLVMDriverShader::getTextureHeapGlobal(AGCLLVMDriverShader *this, unsigned int a2)
{
  if (!*(*(this + *(*this - 24) + 2168) + 1900))
  {
    return 0;
  }

  {
    v13 = *(*(this + *(*this - 24) + 2168) + 920);
    AGCLLVMDriverShader::getTextureHeapGlobal(BOOL)::buffer_indices[0] = (*(*v13 + 264))(v13);
    dword_27C8D8194 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 536))();
    dword_27C8D8198 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 256))();
    dword_27C8D819C = (*(**(*(this + *(*this - 24) + 2168) + 920) + 528))();
  }

  v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 22;
  v5 = this + 16 * a2 + 8 * v4;
  v8 = *(v5 + 2);
  v7 = v5 + 16;
  result = v8;
  if (!v8)
  {
    v9 = AGCLLVMDriverShader::getTextureHeapGlobal(BOOL)::buffer_indices[2 * a2 + v4];
    v10 = *(this + *(*this - 24) + 1872);
    v11 = llvm::PointerType::get();
    v12 = *(*this - 24);
    v14[0] = "agc.texture_heap.";
    v14[2] = v9;
    v15 = 2051;
    result = AGCLLVMObject::createGlobalBufferBinding((this + v12), v11, v14, v9, 0);
    *v7 = result;
  }

  return result;
}

llvm::GlobalVariable *AGCLLVMDriverShader::getSamplerStateGlobal(AGCLLVMDriverShader *this)
{
  v2 = this + *(*this - 24);
  if (*(*(v2 + 271) + 1900))
  {
    v3 = *(v2 + 267);
    v19 = "agx.samplerHeapBufferIndex";
    v20 = 259;
    if (!llvm::Module::getNamedMetadata(v3, &v19))
    {
      AGCLLVMDriverShader::createGlobalSamplerHeap(this);
      v4 = *(this + *(*this - 24) + 2136);
      llvm::Module::getOrInsertNamedMetadata();
      v5 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v6 = **(*(this + *(*this - 24) + 2168) + 920);
      if (v5 == 22)
      {
        (*(v6 + 560))();
      }

      else
      {
        (*(v6 + 288))();
      }

      v15 = this + *(*this - 24);
      v16 = *(v15 + 270);
      v17 = *(v15 + 238);
      llvm::ConstantInt::get();
      v19 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }

    return 0;
  }

  else
  {
    v7 = llvm::User::operator new(0x58);
    v8 = this + *(*this - 24);
    v9 = *(v8 + 267);
    v10 = *(*(v8 + 271) + 1792);
    v19 = "agc.sampler_words";
    v20 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v11 = __clz(*(*(this + *(*this - 24) + 2168) + 1812)) ^ 0x13F;
    llvm::GlobalObject::setAlignment();
    v12 = this + *(*this - 24);
    v13 = *(v12 + 268);
    v14 = AGCLLVMBuilder::buildGlobalMetadata((v12 + 1704), v7);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v13, v14);
  }

  return v7;
}

char *AGCLLVMDriverShader::createGlobalSamplerHeap(char *this)
{
  if (*(*&this[*(*this - 24) + 2168] + 1900))
  {
    v1 = this;
    {
      {
        v8 = *(*&v1[*(*v1 - 24) + 2168] + 920);
        AGCLLVMDriverShader::createGlobalSamplerHeap(void)::bind_indices[0] = (*(*v8 + 560))(v8);
        dword_27C8D818C = (*(**(*&v1[*(*v1 - 24) + 2168] + 920) + 288))();
      }
    }

    v2 = AGCLLVMDriverShader::createGlobalSamplerHeap(void)::bind_indices[(*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) != 22];
    v3 = *&v1[*(*v1 - 24) + 1872];
    v4 = llvm::PointerType::get();
    v5 = *(*v1 - 24);
    v9[0] = "agc.sampler_heap.";
    v9[2] = v2;
    v10 = 2051;
    GlobalBufferBinding = AGCLLVMObject::createGlobalBufferBinding(&v1[v5], v4, v9, v2, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 24), v7);
    return llvm::GlobalVariable::setInitializer();
  }

  return this;
}

uint64_t AGCLLVMDriverShader::isValidUberFunctionCombination(void *a1, uint64_t a2, int a3)
{
  v6 = *(a1 + *(*a1 - 24) + 2168);
  if (!(*(*v6 + 552))(v6))
  {
    return 0;
  }

  if (a3)
  {
    v7 = *(a1 + *(*a1 - 24) + 2168);
    if (!(*(*v7 + 592))(v7, a2))
    {
      return 0;
    }
  }

  v8 = *(**(a1 + *(*a1 - 24) + 2168) + 560);

  return v8();
}

void AGCLLVMDriverShader::handleUberInvalidCombinationFunction(AGCLLVMDriverShader *this, llvm::Function *a2)
{
  v9[32] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = 0x2000000000;
  if (this)
  {
    v2 = this;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v7, *(v2 + 3));
      v2 = *(v2 + 1);
    }

    while (v2);
    v3 = v7;
    if (v8)
    {
      v4 = 8 * v8;
      do
      {
        v5 = *v3++;
        llvm::Instruction::eraseFromParent(v5);
        v4 -= 8;
      }

      while (v4);
      v3 = v7;
    }

    if (v3 != v9)
    {
      free(v3);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void AGCLLVMBackgroundObjectFragmentShader::buildStateless(AGCLLVMBackgroundObjectFragmentShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v146 = *MEMORY[0x277D85DE8];
  v5 = (*(*(this + 102) + 32) & 0xC00) == 0;
  v125 = *(*(this + 102) + 32) & 0xC00;
  if (v125)
  {
    v6 = "_msaa";
  }

  else
  {
    v6 = &unk_20E75F419;
  }

  *(this + 8) = 1;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  memset(&v135, 0, sizeof(v135));
  std::string::reserve(&v135, v7 | 8);
  std::string::append(&v135, "bgo_uber", 8uLL);
  std::string::append(&v135, v6, v7);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v135;
  }

  else
  {
    v8 = v135.__r_.__value_.__r.__words[0];
  }

  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v135.__r_.__value_.__l.__size_;
  }

  Bitcode = AGCLLVMObject::readBitcode(a2, v8, size, 0);
  v11 = *(*(this + *(*this - 24) + 1688) + 32);
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = strlen(*(v11 + 8));
  }

  else
  {
    v13 = 0;
  }

  llvm::Module::setTargetTriple(Bitcode, v12, v13);
  v14 = *(*(this + *(*this - 24) + 1688) + 32);
  if (*(v14 + 16))
  {
    v15 = strlen(*(v14 + 16));
  }

  llvm::Module::setDataLayout();
  v16 = *(this + *(*this - 24) + 2136);
  v134 = Bitcode;
  v145 = 0;
  llvm::Linker::linkModules();
  std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v144);
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v134);
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v17 = *this;
  *(*(this + *(*this - 24) + 2168) + 432) = *(this + *(*this - 24) + 2136);
  v18 = *(this + *(v17 - 24) + 2136);
  Function = llvm::Module::getFunction();
  v20 = *(this + *(*this - 24) + 2136);
  v21 = **(*(llvm::Module::getFunction() + 24) + 16);
  v22 = *(this + *(*this - 24) + 2136);
  v23 = **(*(llvm::Module::getFunction() + 24) + 16);
  v24 = llvm::User::operator new(0x58);
  v25 = this + *(*this - 24);
  v26 = *(v25 + 267);
  llvm::ArrayType::get(*(v25 + 252), 8);
  v135.__r_.__value_.__r.__words[0] = "agc.clear_colors";
  v136 = 259;
  v120 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v27 = this + *(*this - 24);
  v28 = *(v27 + 268);
  v127 = v24;
  v29 = AGCLLVMBuilder::buildGlobalMetadata((v27 + 1704), v24);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v29);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
  }

  llvm::Type::isOpaquePointerTy(*(*(Function + 88) + 120));
  v30 = llvm::User::operator new(0x58);
  v31 = this + *(*this - 24);
  v32 = *(v31 + 267);
  v33 = *(v31 + 241);
  v34 = *v33;
  v135.__r_.__value_.__r.__words[0] = v33;
  v135.__r_.__value_.__l.__size_ = v33;
  v135.__r_.__value_.__r.__words[2] = v33;
  v35 = llvm::StructType::get();
  llvm::ArrayType::get(v35, 8);
  v135.__r_.__value_.__r.__words[0] = "agc.pbe_rotations";
  v136 = 259;
  v121 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v36 = this + *(*this - 24);
  v37 = *(v36 + 268);
  v126 = v30;
  v38 = AGCLLVMBuilder::buildGlobalMetadata((v36 + 1704), v30);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, v38);
  v39 = llvm::User::operator new(0x58);
  v40 = this + *(*this - 24);
  v41 = *(v40 + 267);
  llvm::ArrayType::get(*(v40 + 234), 8);
  v135.__r_.__value_.__r.__words[0] = "agc.slice_indices";
  v136 = 259;
  v122 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v42 = this + *(*this - 24);
  v43 = *(v42 + 268);
  v44 = AGCLLVMBuilder::buildGlobalMetadata((v42 + 1704), v39);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v43, v44);
  v45 = llvm::User::operator new(0x58);
  v46 = *this;
  v47 = *(this + *(*this - 24) + 2136);
  v135.__r_.__value_.__r.__words[0] = "agc.draw_buffer_state";
  v136 = 259;
  v123 = *(*(this + *(v46 - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v48 = this + *(*this - 24);
  v49 = *(v48 + 268);
  v50 = AGCLLVMBuilder::buildGlobalMetadata((v48 + 1704), v45);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v49, v50);
  v51 = llvm::User::operator new(0x58);
  v52 = *this;
  v53 = *(this + *(*this - 24) + 2136);
  v135.__r_.__value_.__r.__words[0] = "agc.bgo_state";
  v136 = 259;
  v124 = *(*(this + *(v52 - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v54 = this + *(*this - 24);
  v55 = *(v54 + 268);
  v56 = AGCLLVMBuilder::buildGlobalMetadata((v54 + 1704), v51);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v55, v56);
  AGCLLVMDriverShader::getSamplerStateGlobal(this);
  AGCLLVMDriverShader::getTextureHeapGlobal(this, 1u);
  v57 = *this;
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    *(this + 6) |= 0xFFuLL;
  }

  else
  {
    llvm::User::operator new(0x58);
    v58 = this + *(*this - 24);
    v59 = *(v58 + 267);
    llvm::ArrayType::get(*(*(v58 + 271) + 1784), 8);
    v135.__r_.__value_.__r.__words[0] = "agc.read_image_words_indirect";
    v136 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v60 = __clz(*(*(this + *(*this - 24) + 2168) + 1808)) ^ 0x13F;
    llvm::GlobalObject::setAlignment();
    v135.__r_.__value_.__r.__words[0] = &v135.__r_.__value_.__r.__words[2];
    v135.__r_.__value_.__l.__size_ = 0x2000000000;
    v61 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v135, v61);
    v62 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v63 = llvm::ValueAsMetadata::get();
    for (i = 0; i != 8; ++i)
    {
      Cast = v63;
      v140 = 0;
      v65 = *(this + *(*this - 24) + 1904);
      llvm::ConstantInt::get();
      v140 = llvm::ValueAsMetadata::get();
      v66 = *(this + *(*this - 24) + 2160);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v135, Impl);
    }

    v68 = this + *(*this - 24);
    v69 = *(v68 + 268);
    v70 = *(v68 + 270);
    v71 = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, v71);
    if (v135.__r_.__value_.__l.__data_ != &v135.__r_.__value_.__r.__words[2])
    {
      free(v135.__r_.__value_.__l.__data_);
    }

    v57 = *this;
  }

  v72 = this + *(v57 - 24);
  v73 = *(Function + 80);
  if (v73)
  {
    v74 = (v73 - 24);
  }

  else
  {
    v74 = 0;
  }

  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v74);
  llvm::IRBuilderBase::SetInsertPoint((v72 + 1712), FirstNonPHI);
  v77 = *this;
  if (*(*(this + *(*this - 24) + 2168) + 972) != 2)
  {
    AGCLLVMDriverShader::mutateAllConstantArgsToSharedRegister(Function, v76);
    v77 = *this;
  }

  v142 = 0;
  v143 = 0;
  v78 = this + *(v77 - 24);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v77 = *this;
  }

  v79 = llvm::PointerType::getWithSamePointeeType(**(Function + 88), *(*(this + *(v77 - 24) + 2168) + 972));
  v136 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v78 + 1712), 49, v45, v79, &v135);
  v80 = *this;
  v81 = this + *(*this - 24);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v80 = *this;
  }

  v82 = llvm::PointerType::getWithSamePointeeType(*(*(Function + 88) + 40), *(*(this + *(v80 - 24) + 2168) + 972));
  v133 = 257;
  v140 = llvm::IRBuilderBase::CreateCast((v81 + 1712), 49, v51, v82, &v132);
  v83 = this + *(*this - 24);
  v84 = *(v83 + 252);
  v85 = *(*(v83 + 271) + 972);
  v86 = llvm::PointerType::get();
  v131 = 257;
  v141 = llvm::IRBuilderBase::CreateCast((v83 + 1712), 49, v127, v86, v130);
  v87 = *this;
  v88 = this + *(*this - 24);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v87 = *this;
  }

  v89 = llvm::PointerType::getWithSamePointeeType(*(*(Function + 88) + 120), *(*(this + *(v87 - 24) + 2168) + 972));
  v129 = 257;
  v142 = llvm::IRBuilderBase::CreateCast((v88 + 1712), 49, v126, v89, &v128);
  v90 = this + *(*this - 24);
  v91 = *(v90 + 234);
  v92 = *(*(v90 + 271) + 972);
  v93 = llvm::PointerType::get();
  v138 = 257;
  v143 = llvm::IRBuilderBase::CreateCast((v90 + 1712), 49, v39, v93, &v137);
  v94 = llvm::Function::args(Function);
  if (v94 != v95)
  {
    v96 = v94;
    v97 = v95;
    v98 = 0;
    do
    {
      v99 = v98 + 1;
      v100 = *(&Cast + v98);
      llvm::Value::replaceAllUsesWith();
      v96 += 40;
      v98 = v99;
    }

    while (v96 != v97);
  }

  v101 = this + *(*this - 24);
  v102 = *(v101 + 231);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v101 + 1704));
  v104 = inserted;
  v105 = *(inserted + 18) & 0xC00F;
  if (v125)
  {
    *(inserted + 18) = v105 | 0x680;
    v106 = this + *(*this - 24);
    if ((*(*(v106 + 271) + 1842) & 1) == 0)
    {
      v107 = *(v106 + 267);
      llvm::Module::getOrInsertNamedMetadata();
      v108 = this + *(*this - 24);
      v109 = *(v108 + 270);
      v110 = (*(*(this + 102) + 32) >> 10) & 3;
      v111 = *(v108 + 238);
      llvm::ConstantInt::get();
      v135.__r_.__value_.__r.__words[0] = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }

    if ((*(*(this + 102) + 35) & 0xF) != 0)
    {
      v112 = *(this + *(*this - 24) + 2136);
      llvm::Module::getOrInsertNamedMetadata();
      v113 = this + *(*this - 24);
      v114 = *(v113 + 270);
      v115 = *(v113 + 235);
      llvm::ConstantInt::get();
      v135.__r_.__value_.__r.__words[0] = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }
  }

  else
  {
    *(inserted + 18) = v105 | 0x650;
  }

  if (*(Function + 72) != Function + 72)
  {
    llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(v104 + 72, v104 + 72, Function + 72, *(Function + 80), Function + 72);
  }

  llvm::Function::eraseFromParent(Function);
  v116 = *(this + *(*this - 24) + 1872);
  v117 = llvm::PointerType::get();
  v118 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 24) + 1704, "agc.bgo_get_texture", 19, v117, *(this + *(*this - 24) + 1896));
  *(v118 + 32) = *(v118 + 32) & 0xFFFFBFC0 | 0x4007;
  v119 = *(this + *(*this - 24) + 2160);
  v135.__r_.__value_.__r.__words[0] = "entry";
  v136 = 259;
  operator new();
}

void *std::vector<llvm::Function *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    v2 = result[1] - *result;
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(a2);
  }

  return result;
}

void AGCLLVMEndOfTileProgram::buildStateless(AGCLLVMEndOfTileProgram *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v246 = *MEMORY[0x277D85DE8];
  v5 = *(this + *(*this - 24) + 2168);
  v6 = (*(*v5 + 688))(v5, a2, a3);
  v7 = **(this + 9);
  v215 = v6;
  if (v6)
  {
    v8 = "3";
  }

  else
  {
    v8 = "2";
  }

  v148 = **(this + 9) == 0;
  v216 = **(this + 9);
  *(this + 8) = 1;
  v9 = v7 != 0;
  if (v148)
  {
    v10 = &unk_20E75F419;
  }

  else
  {
    v10 = "_offChip";
  }

  v11 = 8 * v9;
  memset(&v240, 0, sizeof(v240));
  std::string::reserve(&v240, v11 + 13);
  std::string::append(&v240, "eot", 3uLL);
  std::string::append(&v240, v10, v11);
  std::string::append(&v240, "_uber_gen", 9uLL);
  std::string::append(&v240, v8, 1uLL);
  if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v240;
  }

  else
  {
    v12 = v240.__r_.__value_.__r.__words[0];
  }

  if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v240.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v240.__r_.__value_.__l.__size_;
  }

  Bitcode = AGCLLVMObject::readBitcode(a2, v12, size, 0);
  v15 = *(*(this + *(*this - 24) + 1688) + 32);
  v16 = *(v15 + 8);
  if (v16)
  {
    v17 = strlen(*(v15 + 8));
  }

  else
  {
    v17 = 0;
  }

  llvm::Module::setTargetTriple(Bitcode, v16, v17);
  v18 = *(*(this + *(*this - 24) + 1688) + 32);
  if (*(v18 + 16))
  {
    v19 = strlen(*(v18 + 16));
  }

  llvm::Module::setDataLayout();
  v20 = *(this + *(*this - 24) + 2136);
  v231 = Bitcode;
  v245 = 0;
  llvm::Linker::linkModules();
  std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v244);
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v231);
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  v21 = *this;
  *(*(this + *(*this - 24) + 2168) + 432) = *(this + *(*this - 24) + 2136);
  v22 = *(this + *(v21 - 3) + 2136);
  v23 = **(*(llvm::Module::getFunction() + 24) + 16);
  v24 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  if (*(*(this + *(*this - 24) + 2168) + 1850))
  {
    v26 = 17;
  }

  else
  {
    v26 = 16;
  }

  v27 = llvm::User::operator new(0x58);
  v28 = *this;
  v29 = *(this + *(*this - 24) + 2136);
  v240.__r_.__value_.__r.__words[0] = "agc.eot_key";
  v30 = 259;
  v241 = 259;
  v206 = *(*(this + *(v28 - 3) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v31 = this + *(*this - 24);
  v32 = *(v31 + 268);
  v33 = AGCLLVMBuilder::buildGlobalMetadata((v31 + 1704), v27);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, v33);
  v34 = llvm::User::operator new(0x58);
  v35 = this + *(*this - 24);
  v36 = *(v35 + 267);
  llvm::Type::getInt32Ty(*(v35 + 270), v37);
  v240.__r_.__value_.__r.__words[0] = "agc.emit_enabled";
  v241 = 259;
  v207 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v38 = this + *(*this - 24);
  v39 = *(v38 + 268);
  v40 = AGCLLVMBuilder::buildGlobalMetadata((v38 + 1704), v34);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v39, v40);
  v41 = llvm::User::operator new(0x58);
  v42 = this + *(*this - 24);
  v43 = *(v42 + 267);
  llvm::ArrayType::get(*(v42 + 238), 0x11);
  v240.__r_.__value_.__r.__words[0] = "agc.emit_info_array";
  v241 = 259;
  v208 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v44 = this + *(*this - 24);
  v45 = *(v44 + 268);
  v46 = AGCLLVMBuilder::buildGlobalMetadata((v44 + 1704), v41);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v45, v46);
  v47 = llvm::User::operator new(0x58);
  v48 = this + *(*this - 24);
  v49 = *(v48 + 267);
  v50 = *(v48 + 238);
  v51 = llvm::PointerType::get();
  llvm::ArrayType::get(v51, v26);
  v240.__r_.__value_.__r.__words[0] = "agc.sstt_address_array";
  v241 = 259;
  v209 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  *(v47 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v52 = this + *(*this - 24);
  v53 = *(v52 + 268);
  v54 = AGCLLVMBuilder::buildGlobalMetadata((v52 + 1704), v47);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, v54);
  v55 = llvm::User::operator new(0x58);
  v56 = this + *(*this - 24);
  v57 = *(v56 + 267);
  v58 = *(v56 + 238);
  v59 = llvm::PointerType::get();
  llvm::ArrayType::get(v59, v26);
  v240.__r_.__value_.__r.__words[0] = "agc.queue_address_array";
  v241 = 259;
  v210 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  *(v55 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v60 = this + *(*this - 24);
  v61 = *(v60 + 268);
  v62 = AGCLLVMBuilder::buildGlobalMetadata((v60 + 1704), v55);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v61, v62);
  v63 = llvm::User::operator new(0x58);
  v64 = this + *(*this - 24);
  v65 = *(v64 + 267);
  llvm::ArrayType::get(*(v64 + 238), v26);
  v240.__r_.__value_.__r.__words[0] = "agc.slice_level_array";
  v241 = 259;
  v211 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v66 = this + *(*this - 24);
  v67 = *(v66 + 268);
  v68 = AGCLLVMBuilder::buildGlobalMetadata((v66 + 1704), v63);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v67, v68);
  v69 = (this + *(*this - 24));
  if (*(v69[271] + 1955) == 1)
  {
    v70 = llvm::User::operator new(0x58);
    v71 = this + *(*this - 24);
    v72 = *(v71 + 267);
    llvm::ArrayType::get(*(v71 + 238), 0x11);
    v240.__r_.__value_.__r.__words[0] = "agc.slab_index_array";
    v241 = 259;
    v212 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v73 = this + *(*this - 24);
    v74 = *(v73 + 268);
    v75 = AGCLLVMBuilder::buildGlobalMetadata((v73 + 1704), v70);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v74, v75);
  }

  else
  {
    llvm::ArrayType::get(v69[238], 0x11);
    llvm::ConstantAggregateZero::get();
    v70 = llvm::User::operator new(0x58);
    v76 = this + *(*this - 24);
    v77 = *(v76 + 267);
    llvm::ArrayType::get(*(v76 + 238), 0x11);
    v240.__r_.__value_.__r.__words[0] = "agc.slab_index_dummy_zero_array";
    v241 = 259;
    v213 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
  }

  v243 = 0;
  memset(v242, 0, sizeof(v242));
  v78 = this + *(*this - 24);
  v79 = *(v78 + 271);
  v223 = v70;
  if (*(v79 + 1900))
  {
    *(this + 7) |= ~(-1 << v26);
  }

  else
  {
    v80 = *(v78 + 238);
    v81 = *(v79 + 1744);
    v82 = llvm::VectorType::get();
    v221 = v41;
    v222 = v34;
    if (*(*(this + *(*this - 24) + 2168) + 1852))
    {
      llvm::User::operator new(0x58);
      v83 = *(this + *(*this - 24) + 2136);
      llvm::ArrayType::get(v82, v26);
      v240.__r_.__value_.__r.__words[0] = "agc.pbe_words_indirect";
      v241 = 259;
      llvm::GlobalVariable::GlobalVariable();
      v84 = *(this + *(*this - 24) + 2168);
      if (*(v84 + 1824))
      {
        v85 = strlen(*(v84 + 1824));
      }

      llvm::GlobalObject::setSection();
      v99 = __clz(*(*(this + *(*this - 24) + 2168) + 1836)) ^ 0x13F;
      llvm::GlobalObject::setAlignment();
      v240.__r_.__value_.__r.__words[0] = &v240.__r_.__value_.__r.__words[2];
      v240.__r_.__value_.__l.__size_ = 0x2000000000;
      v100 = llvm::ValueAsMetadata::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v240, v100);
      v101 = this + *(*this - 24);
      v102 = *(*(v101 + 271) + 1832);
      v103 = *(v101 + 238);
      llvm::ConstantInt::get();
      v104 = llvm::ValueAsMetadata::get();
      for (i = 0; i != v26; ++i)
      {
        v238 = 0;
        FnAttrs = v104;
        v106 = *(this + *(*this - 24) + 1904);
        llvm::ConstantInt::get();
        v238 = llvm::ValueAsMetadata::get();
        v107 = *(this + *(*this - 24) + 2160);
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v240, Impl);
      }

      v109 = this + *(*this - 24);
      v110 = *(v109 + 268);
      v111 = *(v109 + 270);
      v112 = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v110, v112);
      if (v240.__r_.__value_.__l.__data_ != &v240.__r_.__value_.__r.__words[2])
      {
        free(v240.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v220 = v27;
      v86 = 0;
      v87 = this + 2168;
      do
      {
        v88 = llvm::User::operator new(0x58);
        v89 = *(this + *(*this - 24) + 2136);
        v240.__r_.__value_.__r.__words[0] = "agc.pbe_words";
        v240.__r_.__value_.__r.__words[2] = v86;
        v241 = 2307;
        *(v242 + v86) = llvm::GlobalVariable::GlobalVariable();
        v90 = *&v87[*(*this - 24)];
        if (*(v90 + 1824))
        {
          v91 = strlen(*(v90 + 1824));
        }

        llvm::GlobalObject::setSection();
        v92 = *(*&v87[*(*this - 24)] + 1836);
        v93 = __clz(v92) ^ 0x13F;
        if (v92)
        {
          v94 = v93;
        }

        else
        {
          v94 = 0;
        }

        v30 = v94 | v30 & 0xFFFFFFFFFFFF0000;
        llvm::GlobalObject::setAlignment();
        v95 = (this + *(*this - 24));
        v96 = *(v95[271] + 1832);
        v97 = v95[268];
        v98 = AGCLLVMBuilder::buildGlobalMetadata((v95 + 213), v88);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v97, v98);
        ++v86;
      }

      while (v26 != v86);
      v27 = v220;
    }

    v41 = v221;
    v34 = v222;
  }

  v113 = this + *(*this - 24);
  v114 = *(v113 + 271);
  if (*(v114 + 1852) != 1 || *(v114 + 1900))
  {
    v115 = this + *(*this - 24);
    v116 = *(Function + 80);
    if (v116)
    {
      v117 = (v116 - 24);
    }

    else
    {
      v117 = 0;
    }

    FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v117);
    llvm::IRBuilderBase::SetInsertPoint((v115 + 1712), FirstNonPHI);
    v120 = *this;
    if (*(*(this + *(*this - 24) + 2168) + 972) != 2)
    {
      AGCLLVMDriverShader::mutateAllConstantArgsToSharedRegister(Function, v119);
      v120 = *this;
    }

    v234 = 0;
    Cast = 0;
    v121 = this + *(v120 - 3);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
    }

    v122 = **(Function + 88);
    v241 = 257;
    v232[0] = llvm::IRBuilderBase::CreateCast((v121 + 1712), 49, v27, v122, &v240);
    v123 = this + *(*this - 24);
    v124 = *(v123 + 238);
    v239 = 257;
    llvm::Type::isOpaquePointerTy(*v34);
    v232[1] = llvm::IRBuilderBase::CreateAlignedLoad(v123 + 214, v124, v34, 0, &FnAttrs);
    v125 = this + *(*this - 24);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
    }

    v126 = *(*(Function + 88) + 80);
    v230 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v125 + 1712), 49, v41, v126, &v229);
    v127 = this + *(*this - 24);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
    }

    v128 = *(*(Function + 88) + 120);
    v236 = 257;
    v234 = llvm::IRBuilderBase::CreateCast((v127 + 1712), 49, v223, v128, &v235);
    v129 = llvm::Function::args(Function);
    if (v129 != v130)
    {
      v131 = v129;
      v132 = v130;
      v133 = 0;
      do
      {
        v134 = v133 + 1;
        v135 = v232[v133];
        llvm::Value::replaceAllUsesWith();
        v131 += 40;
        v133 = v134;
      }

      while (v131 != v132);
    }

    v136 = this + *(*this - 24);
    v137 = *(v136 + 231);
    inserted = AGCLLVMBuilder::getOrInsertFunction<>((v136 + 1704));
    v139 = inserted;
    *(inserted + 18) = *(inserted + 18) & 0xC00F | 0x6B0;
    if (*(Function + 72) != Function + 72)
    {
      llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(inserted + 72, inserted + 72, Function + 72, *(Function + 80), Function + 72);
    }

    if (*(*(this + *(*this - 24) + 2168) + 1843))
    {
      v240.__r_.__value_.__r.__words[0] = *(v139 + 112);
      FnAttrs = llvm::AttributeList::getFnAttrs(&v240);
      v140 = *(this + *(*this - 24) + 2160);
      FnAttrs = llvm::AttributeSet::addAttribute();
      v141 = *(this + *(*this - 24) + 2160);
      LODWORD(v240.__r_.__value_.__l.__data_) = -1;
      v240.__r_.__value_.__l.__size_ = FnAttrs;
      *(v139 + 112) = llvm::AttributeList::get();
    }

    llvm::Function::eraseFromParent(Function);
    v227 = 0;
    __p = 0;
    v228 = 0;
    std::vector<llvm::Function *>::reserve(&__p, 0x678uLL);
    v142 = *(this + *(*this - 24) + 2136);
    v143 = v142 + 24;
    v219 = this + 1712;
    v144 = *(v142 + 32);
    if (v144 != v142 + 24)
    {
      v217 = this + 2168;
      v218 = v142 + 24;
      do
      {
        if (v144)
        {
          v145 = (v144 - 56);
        }

        else
        {
          v145 = 0;
        }

        Name = llvm::Value::getName(v145);
        FnAttrs = Name;
        v238 = v147;
        if (v147 >= 0x10)
        {
          v148 = *Name == 0x5F746F652E636761 && *(Name + 1) == 0x5F78695074696D65;
          if (v148)
          {
            llvm::StringRef::find();
            llvm::StringRef::find();
            llvm::StringRef::find();
            v240.__r_.__value_.__r.__words[0] = 0;
            AsUnsignedInteger = llvm::getAsUnsignedInteger();
            v150 = v240.__r_.__value_.__s.__data_[0];
            if (v240.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v150 = 0;
            }

            if (AsUnsignedInteger)
            {
              v151 = 0;
            }

            else
            {
              v151 = v150;
            }

            v240.__r_.__value_.__r.__words[0] = 0;
            v152 = llvm::getAsUnsignedInteger();
            v153 = v240.__r_.__value_.__s.__data_[0];
            if (v240.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v153 = 0;
            }

            if (v152)
            {
              v153 = 0;
            }

            v224 = v153;
            v240.__r_.__value_.__r.__words[0] = 0;
            v154 = llvm::getAsUnsignedInteger();
            v155 = v240.__r_.__value_.__s.__data_[0];
            if (v240.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v155 = 0;
            }

            v156 = v155 != 0;
            v240.__r_.__value_.__r.__words[0] = 0;
            v157 = llvm::getAsUnsignedInteger();
            v158 = v240.__r_.__value_.__s.__data_[0];
            if (v240.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v158 = 0;
            }

            v159 = v158 != 0;
            if (AGCLLVMDriverShader::isValidUberFunctionCombination(this, v151, v156 & ~v154))
            {
              v161 = *&v217[*(*this - 24)];
              if ((*(*v161 + 544))(v161, v224))
              {
                v162 = *&v217[*(*this - 24)];
                if ((*(*v162 + 200))(v162) & 1) != 0 || ((v159 & ~v157 ^ 1))
                {
                  v163 = *(this + *(*this - 24) + 2160);
                  v240.__r_.__value_.__r.__words[0] = "entry";
                  v241 = 259;
                  operator new();
                }
              }
            }

            AGCLLVMDriverShader::handleUberInvalidCombinationFunction(v145[1], v160);
            v240.__r_.__value_.__r.__words[0] = v145;
            std::vector<llvm::User *>::push_back[abi:nn200100](&__p, &v240);
            v143 = v218;
          }
        }

        v144 = *(v144 + 8);
      }

      while (v144 != v143);
    }

    v164 = __p;
    v165 = v227;
    if (__p != v227)
    {
      v166 = __p;
      do
      {
        v167 = *v166++;
        llvm::Function::eraseFromParent(v167);
      }

      while (v166 != v165);
    }

    v227 = v164;
    if (v216)
    {
      v168 = *(this + *(*this - 24) + 2136);
      if (v215)
      {
        v169 = llvm::Module::getFunction();
        v170 = v169;
        if (*(v169 + 18))
        {
          llvm::Function::BuildLazyArguments(v169);
          v175 = *(v170 + 88);
          if (*(v170 + 18))
          {
            llvm::Function::BuildLazyArguments(v170);
            v180 = *(v170 + 88);
            if (*(v170 + 18))
            {
              llvm::Function::BuildLazyArguments(v170);
              v182 = *(v170 + 88);
              if (*(v170 + 18))
              {
                llvm::Function::BuildLazyArguments(v170);
                v199 = *(v170 + 88);
                if (*(v170 + 18))
                {
                  llvm::Function::BuildLazyArguments(v170);
                  v200 = *(v170 + 88);
                  if (*(v170 + 18))
                  {
                    llvm::Function::BuildLazyArguments(v170);
                    v202 = *(v170 + 88);
                    if (*(v170 + 18))
                    {
                      llvm::Function::BuildLazyArguments(v170);
                      v204 = *(v170 + 88);
                      if (*(v170 + 18))
                      {
                        llvm::Function::BuildLazyArguments(v170);
                        v205 = *(v170 + 88);
                      }
                    }

                    else
                    {
                      v203 = *(v170 + 88);
                    }
                  }

                  else
                  {
                    v201 = *(v170 + 88);
                  }
                }
              }
            }
          }

          else
          {
            v214 = *(v170 + 88);
          }
        }

        else
        {
          v171 = *(v169 + 88);
        }

        v183 = *(this + *(*this - 24) + 2160);
        v240.__r_.__value_.__r.__words[0] = "entry";
        v241 = 259;
        operator new();
      }

      v172 = llvm::Module::getFunction();
      v173 = v172;
      if (*(v172 + 18))
      {
        llvm::Function::BuildLazyArguments(v172);
        v179 = *(v173 + 88);
        if (*(v173 + 18))
        {
          llvm::Function::BuildLazyArguments(v173);
          v225 = *(v173 + 88);
        }
      }

      else
      {
        v174 = *(v172 + 88);
      }

      v181 = *(this + *(*this - 24) + 2160);
      v240.__r_.__value_.__r.__words[0] = "entry";
      v241 = 259;
      operator new();
    }

    v240.__r_.__value_.__r.__words[0] = &v240.__r_.__value_.__r.__words[2];
    v240.__r_.__value_.__l.__size_ = 0x2000000000;
    v184 = *(this + *(*this - 24) + 2136);
    for (j = *(llvm::Module::getFunction() + 8); j; j = *(j + 8))
    {
      v186 = *(j + 24);
      llvm::IRBuilderBase::SetInsertPoint(&v219[*(*this - 24)], v186);
      v187 = this + *(*this - 24);
      v188 = *(*(v187 + 271) + 1850);
      v189 = *(v187 + 235);
      llvm::ConstantInt::get();
      llvm::Value::replaceAllUsesWith();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v240, v186);
    }

    v190 = *(this + *(*this - 24) + 2136);
    for (k = *(llvm::Module::getFunction() + 8); k; k = *(k + 8))
    {
      v192 = *(k + 24);
      llvm::IRBuilderBase::SetInsertPoint(&v219[*(*this - 24)], v192);
      v193 = this + *(*this - 24);
      (*(**(v193 + 271) + 200))(*(v193 + 271));
      v194 = *(v193 + 235);
      llvm::ConstantInt::get();
      llvm::Value::replaceAllUsesWith();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v240, v192);
    }

    v195 = *(this + *(*this - 24) + 2136);
    llvm::Module::getFunction();
    if ((*(this + 81) & 1) == 0)
    {
      v196 = *(this + *(*this - 24) + 2160);
      FnAttrs = "entry";
      v239 = 259;
      operator new();
    }

    v197 = *(this + *(*this - 24) + 2136);
    llvm::Module::getFunction();
    v198 = *(this + *(*this - 24) + 2160);
    FnAttrs = "entry";
    v239 = 259;
    operator new();
  }

  v176 = *(v113 + 238);
  v177 = llvm::PointerType::get();
  AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 24) + 1704, "agc.eot_get_pbe_words", 21, v177, *(this + *(*this - 24) + 1896));
  v178 = *(this + *(*this - 24) + 2160);
  v240.__r_.__value_.__r.__words[0] = "entry";
  v241 = 259;
  operator new();
}

uint64_t AGCLLVMEndOfTileProgram::buildEmitSlice(AGCLLVMEndOfTileProgram *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, llvm::Value *a6, llvm::Value *a7)
{
  v167[2] = *MEMORY[0x277D85DE8];
  v12 = this + *(*this - 24);
  v13 = *(v12 + 238);
  v14 = *(*(v12 + 271) + 1744);
  llvm::FixedVectorType::get();
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    v140 = 0;
    v15 = a2;
  }

  else
  {
    v16 = llvm::User::operator new(0x58);
    v17 = *(this + *(*this - 24) + 2136);
    v15 = a2;
    *&v163 = "agc.pbe_words";
    v164 = a2;
    v166 = 2051;
    llvm::GlobalVariable::GlobalVariable();
    v18 = *(this + *(*this - 24) + 2168);
    if (*(v18 + 1824))
    {
      v19 = strlen(*(v18 + 1824));
    }

    llvm::GlobalObject::setSection();
    v20 = __clz(*(*(this + *(*this - 24) + 2168) + 1836)) ^ 0x13F;
    llvm::GlobalObject::setAlignment();
    v21 = (this + *(*this - 24));
    v22 = *(v21[271] + 1832);
    v23 = v21[268];
    v140 = v16;
    v24 = AGCLLVMBuilder::buildGlobalMetadata((v21 + 213), v16);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, v24);
  }

  v25 = llvm::User::operator new(0x58);
  v26 = *this;
  v27 = this + *(*this - 24);
  v28 = *(v27 + 267);
  v29 = *(v27 + 238);
  *&v163 = "agc.emit_info";
  v164 = v15;
  v166 = 2051;
  v127 = *(*(this + *(v26 - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v30 = this + *(*this - 24);
  v31 = *(v30 + 268);
  v138 = v25;
  v32 = AGCLLVMBuilder::buildGlobalMetadata((v30 + 1704), v25);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, v32);
  v33 = this + *(*this - 24);
  if (*(*(v33 + 271) + 1955) == 1)
  {
    v34 = llvm::User::operator new(0x58);
    v35 = *this;
    v36 = this + *(*this - 24);
    v37 = *(v36 + 267);
    v38 = *(v36 + 238);
    *&v163 = "agc.slab_index";
    v164 = v15;
    v166 = 2051;
    v128 = *(*(this + *(v35 - 24) + 2168) + 972) | 0x100000000;
    v39 = llvm::GlobalVariable::GlobalVariable();
    *(v39 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v40 = this + *(*this - 24);
    v41 = *(v40 + 268);
    v42 = AGCLLVMBuilder::buildGlobalMetadata((v40 + 1704), v34);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v41, v42);
    v43 = this + *(*this - 24);
    v166 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v43 + 1704), v34, &v163);
    v45 = *(this + *(*this - 24) + 1896);
    v162 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v43 + 1712), 38, Load, v45, &v159);
  }

  else
  {
    v47 = *(v33 + 237);
    Cast = llvm::ConstantInt::get();
  }

  v139 = Cast;
  v48 = *(this + 9);
  v49 = *(v48 + 4 * v15);
  if (v49 != a3)
  {
    v50 = this + *(*this - 24);
    v51 = *(v50 + 271);
    v156 = *(v50 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v157, (v50 + 1712));
    v158 = *(v50 + 452);
    (*(*v51 + 264))(&v163, v51, &v156, a2 & 7, *(this + 9), *(this + 81));
    if (v157)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v163)
    {
      v52 = this + *(*this - 24);
      v153 = v163;
      v154 = v164;
      if (v164)
      {
        llvm::MetadataTracking::track();
      }

      v155 = v165;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v153, (v52 + 1712));
      if (v154)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if (v164)
    {
      llvm::MetadataTracking::untrack();
    }

    a3 = v49;
  }

  v136 = a3;
  if (a6)
  {
    v53 = *this;
    v54 = *(this + *(*this - 24) + 2160);
    *&v163 = "cond_emit";
    v166 = 259;
    v55 = *(*(this + *(v53 - 24) + 1760) + 56);
    operator new();
  }

  if (a7)
  {
    v56 = *this;
    v57 = *(this + *(*this - 24) + 2160);
    *&v163 = "config";
    v166 = 259;
    v58 = *(*(this + *(v56 - 24) + 1760) + 56);
    operator new();
  }

  v59 = v48 + 4 * v15;
  if ((*(v59 + 3) & 2) != 0)
  {
    *(this + 80) = 1;
    v60 = llvm::User::operator new(0x58);
    v61 = this + *(*this - 24);
    v62 = *(v61 + 267);
    v63 = *(v61 + 238);
    llvm::PointerType::get();
    *&v163 = "agc.sstt_address";
    v164 = v15;
    v166 = 2051;
    v129 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    *(v60 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v64 = this + *(*this - 24);
    v65 = *(v64 + 268);
    v66 = AGCLLVMBuilder::buildGlobalMetadata((v64 + 1704), v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v66);
    v67 = this + *(*this - 24);
    v68 = *(v67 + 238);
    v69 = llvm::PointerType::get();
    v166 = 257;
    llvm::Type::isOpaquePointerTy(*v60);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v67 + 214, v69, v60, 0, &v163);
    v70 = llvm::User::operator new(0x58);
    v71 = this + *(*this - 24);
    v72 = *(v71 + 267);
    v73 = *(v71 + 238);
    llvm::PointerType::get();
    *&v163 = "agc.queue_address";
    v164 = v15;
    v166 = 2051;
    v130 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    *(v70 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v74 = this + *(*this - 24);
    v75 = *(v74 + 268);
    v76 = AGCLLVMBuilder::buildGlobalMetadata((v74 + 1704), v70);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v75, v76);
    v77 = this + *(*this - 24);
    v78 = *(v77 + 238);
    v79 = llvm::PointerType::get();
    v166 = 257;
    llvm::Type::isOpaquePointerTy(*v70);
    v80 = llvm::IRBuilderBase::CreateAlignedLoad(v77 + 214, v79, v70, 0, &v163);
    v81 = llvm::User::operator new(0x58);
    v82 = (this + *(*this - 24));
    v83 = v82[267];
    v84 = v82[238];
    *&v163 = "agc.slice_level";
    v164 = v15;
    v166 = 2051;
    v131 = *(v82[271] + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v85 = this + *(*this - 24);
    v86 = *(v85 + 268);
    v87 = AGCLLVMBuilder::buildGlobalMetadata((v85 + 1704), v81);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v86, v87);
    v88 = this + *(*this - 24);
    v89 = *(v88 + 238);
    v166 = 257;
    llvm::Type::isOpaquePointerTy(*v81);
    v90 = llvm::IRBuilderBase::CreateAlignedLoad(v88 + 214, v89, v81, 0, &v163);
    AGCLLVMEndOfTileProgram::setupOnDemandHwSparse(this, AlignedLoad, v80, v90);
  }

  if (*(this + 81) == 1 && (*(v59 + 3) & 0x20) != 0)
  {
    v91 = *(this + *(*this - 24) + 1896);
    v167[0] = llvm::ConstantInt::get();
    v92 = *(this + *(*this - 24) + 1896);
    v167[1] = llvm::ConstantInt::get();
    AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v167, 2);
    v93 = this + *(*this - 24);
    v94 = *(v93 + 271);
    v150 = *(v93 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v151, (v93 + 1712));
    v152 = *(v93 + 452);
    v95 = (*(*v94 + 208))(v94, &v150, v139);
    if (v151)
    {
      llvm::MetadataTracking::untrack();
    }

    v96 = this + *(*this - 24);
    v97 = *(v96 + 271);
    v147 = *(v96 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v148, (v96 + 1712));
    v149 = *(v96 + 452);
    v98 = *(v48 + 4 * v15);
    v99 = BYTE1(v98);
    v100 = (v98 >> 26) & 7;
    v101 = HIBYTE(v98) & 1;
    v102 = *(*(this + 9) + 72);
    v103 = *(this + *(*this - 24) + 1896);
    v104 = llvm::ConstantInt::get();
    v105 = this + *(*this - 24);
    v166 = 257;
    v106 = AGCLLVMBuilder::CreateLoad((v105 + 1704), v138, &v163);
    (*(*v97 + 304))(&v159, v97, &v147, v99, v100, v101, HIDWORD(v102) & 0xF, v104, v106, v139, v95, 0);
    if (v148)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v159)
    {
      v107 = this + *(*this - 24);
      v144 = v159;
      v145 = v160;
      if (v160)
      {
        llvm::MetadataTracking::track();
      }

      v146 = v161;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v144, (v107 + 1712));
      if (v145)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v167, 2);
    if (v160)
    {
      llvm::MetadataTracking::untrack();
    }

    v134 = 1;
  }

  else
  {
    v134 = 0;
  }

  v108 = *this;
  v109 = this + *(*this - 24);
  if (*(*(v109 + 271) + 1900))
  {
    v140 = *(this + 11);
    v110 = *(this + 7);
    v111 = vcnt_s8(((v110 | *(this + 6)) & ((1 << v15) - 1)));
    *(this + 7) = v110 | (1 << v15);
    v112 = *(v109 + 236);
    v113 = llvm::ConstantInt::get();
    v108 = *this;
  }

  else
  {
    v113 = 0;
  }

  v114 = this + *(v108 - 24);
  v115 = *(v114 + 271);
  v141 = *(v114 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v142, (v114 + 1712));
  v143 = *(v114 + 452);
  v116 = *(v48 + 4 * v15);
  v117 = this + *(*this - 24);
  v118 = *(v117 + 238);
  v166 = 257;
  llvm::Type::isOpaquePointerTy(*v138);
  v119 = llvm::IRBuilderBase::CreateAlignedLoad(v117 + 214, v118, v138, 0, &v163);
  LOBYTE(v132) = v134;
  (*(*v115 + 256))(v115, &v141, v140, v113, a4, BYTE1(v116), HIBYTE(v116) & 1, BYTE2(v116), v119, v139, v132);
  if (v142)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a5)
  {
    v120 = this + *(*this - 24);
    v121 = *(v120 + 271);
    if (*(v121 + 1752))
    {
      v122 = strlen(*(v121 + 1752));
    }

    v123 = *(v120 + 231);
    inserted = AGCLLVMBuilder::getOrInsertFunction<>((v120 + 1704));
    v166 = 257;
    llvm::IRBuilderBase::CreateCall((v120 + 1712), *(inserted + 24), inserted, 0, 0, &v163);
  }

  v125 = *MEMORY[0x277D85DE8];
  return v136;
}

llvm::Value *AGCLLVMEndOfTileProgram::buildFastClearOfMetadata(AGCLLVMEndOfTileProgram *this, unsigned int a2, llvm::Value *a3, llvm::GlobalVariable *a4, llvm::GlobalVariable *a5)
{
  v167 = *MEMORY[0x277D85DE8];
  v8 = this + *(*this - 24);
  v9 = *(v8 + 238);
  v158 = *(v8 + 237);
  v159 = v158;
  llvm::FunctionType::get();
  v143 = llvm::PointerType::get();
  v11 = llvm::ConstantPointerNull::get(v143, v10);
  v12 = this + *(*this - 24);
  if (*(*(v12 + 271) + 1844) == 1 && (*(*(this + 9) + 79) & 4) != 0)
  {
    v148[0] = "agc.eot_fastClearGin1403FetchFn.";
    v148[2] = a2;
    v149 = 2051;
    llvm::Twine::str(&v158, v148);
    if (v160[0] >= 0)
    {
      v13 = &v158;
    }

    else
    {
      v13 = v158;
    }

    if (v160[0] >= 0)
    {
      v14 = SHIBYTE(v160[0]);
    }

    else
    {
      v14 = v159;
    }

    AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v12 + 1704), v13, v14, *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1896), *(this + *(*this - 24) + 1896));
    if (SHIBYTE(v160[0]) < 0)
    {
      operator delete(v158);
    }

    v15 = this + *(*this - 24);
    v145 = *(v15 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v146, (v15 + 1712));
    v147 = *(v15 + 452);
    v16 = this + *(*this - 24);
    llvm::Twine::str(&v158, v148);
    if (v160[0] >= 0)
    {
      v17 = &v158;
    }

    else
    {
      v17 = v158;
    }

    if (v160[0] >= 0)
    {
      v18 = SHIBYTE(v160[0]);
    }

    else
    {
      v18 = v159;
    }

    v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v16 + 1704), v17, v18, *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1896), *(this + *(*this - 24) + 1896));
    if (SHIBYTE(v160[0]) < 0)
    {
      operator delete(v158);
    }

    *(v19 + 32) = *(v19 + 32) & 0xFFFFBFC0 | 0x4008;
    v20 = *(this + *(*this - 24) + 2160);
    v158 = "entry";
    LOWORD(v161) = 259;
    operator new();
  }

  v144 = v11;
  if (a3)
  {
    v21 = this + *(*this - 24);
    v22 = *(v21 + 270);
    v158 = "cond_emit";
    LOWORD(v161) = 259;
    v23 = *(*(v21 + 220) + 56);
    operator new();
  }

  v24 = llvm::User::operator new(0x58);
  v25 = this + *(*this - 24);
  v26 = *(v25 + 267);
  v27 = *(v25 + 238);
  llvm::PointerType::get();
  v158 = "agc.metadata_address";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v129 = *(*(this + *(*this - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  *(v24 + 80) |= 1u;
  v141 = v24;
  llvm::GlobalObject::setSection();
  v28 = this + *(*this - 24);
  v29 = *(v28 + 268);
  v30 = AGCLLVMBuilder::buildGlobalMetadata((v28 + 1704), v24);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v29, v30);
  llvm::User::operator new(0x58);
  v31 = (this + *(*this - 24));
  v32 = v31[267];
  v33 = v31[238];
  v158 = "agc.width_in_blocks";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v130 = *(v31[271] + 972) | 0x100000000;
  v34 = llvm::GlobalVariable::GlobalVariable();
  *(v34 + 80) |= 1u;
  v35 = v34;
  v139 = v34;
  llvm::GlobalObject::setSection();
  v36 = this + *(*this - 24);
  v37 = *(v36 + 268);
  v38 = AGCLLVMBuilder::buildGlobalMetadata((v36 + 1704), v35);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, v38);
  v39 = llvm::User::operator new(0x58);
  v40 = (this + *(*this - 24));
  v41 = v40[267];
  v42 = v40[238];
  v158 = "agc.height_in_blocks";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v131 = *(v40[271] + 972) | 0x100000000;
  v43 = llvm::GlobalVariable::GlobalVariable();
  *(v43 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v44 = this + *(*this - 24);
  v45 = *(v44 + 268);
  v46 = AGCLLVMBuilder::buildGlobalMetadata((v44 + 1704), v39);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v45, v46);
  v47 = llvm::User::operator new(0x58);
  v48 = (this + *(*this - 24));
  v49 = v48[267];
  v50 = v48[238];
  v158 = "agc.block_width";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v132 = *(v48[271] + 972) | 0x100000000;
  v51 = llvm::GlobalVariable::GlobalVariable();
  *(v51 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v52 = this + *(*this - 24);
  v53 = *(v52 + 268);
  v54 = AGCLLVMBuilder::buildGlobalMetadata((v52 + 1704), v47);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, v54);
  v55 = llvm::User::operator new(0x58);
  v56 = (this + *(*this - 24));
  v57 = v56[267];
  v58 = v56[238];
  v158 = "agc.block_height";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v133 = *(v56[271] + 972) | 0x100000000;
  v59 = llvm::GlobalVariable::GlobalVariable();
  *(v59 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v60 = this + *(*this - 24);
  v61 = *(v60 + 268);
  v62 = AGCLLVMBuilder::buildGlobalMetadata((v60 + 1704), v55);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v61, v62);
  v63 = llvm::User::operator new(0x58);
  v64 = (this + *(*this - 24));
  v65 = v64[267];
  v66 = v64[238];
  v158 = "agc.metadata_mb_info";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v134 = *(v64[271] + 972) | 0x100000000;
  v67 = llvm::GlobalVariable::GlobalVariable();
  *(v67 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v68 = this + *(*this - 24);
  v69 = *(v68 + 268);
  v70 = AGCLLVMBuilder::buildGlobalMetadata((v68 + 1704), v63);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v69, v70);
  v71 = llvm::User::operator new(0x58);
  v72 = (this + *(*this - 24));
  v73 = v72[267];
  v74 = v72[238];
  v158 = "agc.metadata_mb_per_tile";
  v160[0] = a2;
  LOWORD(v161) = 2051;
  v135 = *(v72[271] + 972) | 0x100000000;
  v75 = llvm::GlobalVariable::GlobalVariable();
  *(v75 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v76 = this + *(*this - 24);
  v77 = *(v76 + 268);
  v78 = AGCLLVMBuilder::buildGlobalMetadata((v76 + 1704), v71);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v77, v78);
  v79 = this + *(*this - 24);
  v80 = *(v79 + 238);
  v81 = llvm::PointerType::get();
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v141);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v79 + 214, v81, v141, 0, &v158);
  v82 = this + *(*this - 24);
  v83 = *(v82 + 238);
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v139);
  v140 = llvm::IRBuilderBase::CreateAlignedLoad(v82 + 214, v83, v139, 0, &v158);
  v84 = this + *(*this - 24);
  v85 = *(v84 + 238);
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v39);
  v138 = llvm::IRBuilderBase::CreateAlignedLoad(v84 + 214, v85, v39, 0, &v158);
  v86 = this + *(*this - 24);
  v87 = *(v86 + 238);
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v47);
  v137 = llvm::IRBuilderBase::CreateAlignedLoad(v86 + 214, v87, v47, 0, &v158);
  v88 = this + *(*this - 24);
  v89 = *(v88 + 238);
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v55);
  v136 = llvm::IRBuilderBase::CreateAlignedLoad(v88 + 214, v89, v55, 0, &v158);
  v90 = this + *(*this - 24);
  v91 = *(v90 + 238);
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v63);
  v92 = llvm::IRBuilderBase::CreateAlignedLoad(v90 + 214, v91, v63, 0, &v158);
  v93 = this + *(*this - 24);
  v94 = *(v93 + 238);
  LOWORD(v161) = 257;
  llvm::Type::isOpaquePointerTy(*v71);
  v95 = llvm::IRBuilderBase::CreateAlignedLoad(v93 + 214, v94, v71, 0, &v158);
  v96 = this + *(*this - 24);
  v97 = *(v96 + 238);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v96 + 1704));
  v99 = this + *(*this - 24);
  v100 = *(v99 + 238);
  v101 = AGCLLVMBuilder::getOrInsertFunction<>((v99 + 1704));
  v102 = this + *(*this - 24);
  v103 = *(v102 + 238);
  v104 = AGCLLVMBuilder::getOrInsertFunction<>((v102 + 1704));
  v105 = this + *(*this - 24);
  v106 = *(v105 + 238);
  v107 = AGCLLVMBuilder::getOrInsertFunction<>((v105 + 1704));
  v108 = this + *(*this - 24);
  LOWORD(v161) = 257;
  v109 = llvm::IRBuilderBase::CreateCall((v108 + 1712), *(v101 + 24), v101, 0, 0, &v158);
  v110 = this + *(*this - 24);
  LOWORD(v151) = 257;
  v111 = llvm::IRBuilderBase::CreateCall((v110 + 1712), *(inserted + 24), inserted, 0, 0, __src);
  v149 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v108 + 1712), v109, v111, v148);
  v113 = this + *(*this - 24);
  LOWORD(v161) = 257;
  v114 = llvm::IRBuilderBase::CreateCall((v113 + 1712), *(v107 + 24), v107, 0, 0, &v158);
  v115 = this + *(*this - 24);
  LOWORD(v151) = 257;
  v116 = llvm::IRBuilderBase::CreateCall((v115 + 1712), *(v104 + 24), v104, 0, 0, __src);
  v149 = 257;
  v117 = llvm::IRBuilderBase::CreateMul((v113 + 1712), v114, v116, v148);
  v118 = (this + *(*this - 24));
  v119 = v118[231];
  v120 = v118[238];
  v121 = llvm::PointerType::get();
  v122 = *(this + *(*this - 24) + 1904);
  __src[0] = v121;
  __src[1] = v122;
  __src[2] = v122;
  __src[3] = v122;
  v151 = v122;
  v152 = v122;
  v153 = v122;
  v154 = v122;
  v155 = v122;
  v156 = v143;
  v158 = v160;
  v159 = 0xA00000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v158, __src, &v157);
  llvm::FunctionType::get();
  v123 = v118[267];
  llvm::Module::getOrInsertFunction();
  v125 = v124;
  if (v158 != v160)
  {
    free(v158);
  }

  v158 = AlignedLoad;
  v159 = Mul;
  v160[0] = v117;
  v160[1] = v140;
  v161 = v138;
  v162 = v137;
  v163 = v136;
  v164 = v92;
  v165 = v95;
  v166 = v144;
  v126 = this + *(*this - 24);
  LOWORD(v151) = 257;
  result = llvm::IRBuilderBase::CreateCall((v126 + 1712), *(v125 + 24), v125, &v158, 10, __src);
  v128 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMEndOfTileProgram::setupOnDemandHwSparse(AGCLLVMEndOfTileProgram *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = this + *(*this - 24);
  v8 = *(v7 + 271);
  if (*(v8 + 1688))
  {
    v9 = strlen(*(v8 + 1688));
  }

  v10 = *(v7 + 234);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v7 + 1704));
  v12 = this + *(*this - 24);
  v13 = *(v12 + 271);
  if (*(v13 + 1696))
  {
    v14 = strlen(*(v13 + 1696));
  }

  v15 = *(v12 + 234);
  v16 = AGCLLVMBuilder::getOrInsertFunction<>((v12 + 1704));
  v17 = this + *(*this - 24);
  LOWORD(v42) = 257;
  v18 = llvm::IRBuilderBase::CreateCall((v17 + 1712), *(inserted + 24), inserted, 0, 0, &v39);
  v19 = this + *(*this - 24);
  LOWORD(v42) = 257;
  v20 = llvm::IRBuilderBase::CreateCall((v19 + 1712), *(v16 + 24), v16, 0, 0, &v39);
  v21 = (this + *(*this - 24));
  v22 = v21[231];
  v23 = v21[238];
  v24 = llvm::PointerType::get();
  v25 = *(this + *(*this - 24) + 1904);
  v26 = llvm::PointerType::get();
  v27 = this + *(*this - 24);
  v28 = *(v27 + 234);
  v29 = *(v27 + 238);
  __src[0] = v24;
  __src[1] = v26;
  __src[2] = v28;
  __src[3] = v28;
  v38 = v29;
  v39 = v41;
  v40 = 0x500000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v39, __src, &v39);
  llvm::FunctionType::get();
  v30 = v21[267];
  llvm::Module::getOrInsertFunction();
  v32 = v31;
  if (v39 != v41)
  {
    free(v39);
  }

  v39 = a3;
  v40 = a2;
  v41[0] = v18;
  v41[1] = v20;
  v42 = a4;
  v33 = this + *(*this - 24);
  LOWORD(v38) = 257;
  result = llvm::IRBuilderBase::CreateCall((v33 + 1712), *(v32 + 24), v32, &v39, 5, __src);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMTextureFetchFragmentShader::buildDefaultBlitShader(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  (*(*a1 + 80))(&__p);
  v3 = *(a1 + *(*a1 - 24) + 1848);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(v2 + 1704);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  *(inserted + 18) = *(inserted + 18) & 0xC00F | 0x650;
  v5 = *(a1 + *(*a1 - 24) + 2160);
  __p = "entry";
  LOWORD(v8) = 259;
  operator new();
}

void AGCLLVMTextureFetchFragmentShader::buildMRCDownsampleBlitShader(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  (*(*a1 + 80))(__p);
  v3 = *(a1 + *(*a1 - 24) + 1848);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(v2 + 1704);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *(inserted + 18) = *(inserted + 18) & 0xC00F | 0x6C0;
  v5 = *(a1 + *(*a1 - 24) + 2160);
  __p[0] = "entry";
  LOWORD(v8) = 259;
  operator new();
}

llvm::GlobalVariable *AGCLLVMDriverShader::getWriteImageStateGlobal(AGCLLVMDriverShader *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    return 0;
  }

  v1 = llvm::User::operator new(0x58);
  v3 = this + *(*this - 24);
  v4 = *(v3 + 267);
  v5 = *(*(v3 + 271) + 1784);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v6 = __clz(*(*(this + *(*this - 24) + 2168) + 1808)) ^ 0x13F;
  llvm::GlobalObject::setAlignment();
  v7 = this + *(*this - 24);
  v8 = *(v7 + 268);
  v9 = AGCLLVMBuilder::buildGlobalMetadata((v7 + 1704), v1);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, v9);
  return v1;
}

void *AGCLLVMDriverShader::setImageWriteSampleArgs(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *result;
  if (*(*(result + *(*result - 24) + 2168) + 1900))
  {
    v7 = result;
    result[7] |= 1uLL;
    v8 = *(result + *(v5 - 24) + 1912);
    v9 = llvm::ConstantInt::get();
    v10 = v7 + *(*v7 - 24);
    v11 = *(v10 + 236);
    v12 = llvm::PointerType::get();
    v17 = 257;
    *(a2 + 32) = llvm::IRBuilderBase::CreateCast((v10 + 1712), 48, v9, v12, v16);
    v13 = v7 + *(*v7 - 24);
    v14 = *(*(v13 + 271) + 1784);
    v15 = llvm::PointerType::get();
    v17 = 257;
    result = llvm::IRBuilderBase::CreateCast((v13 + 1712), 49, a4, v15, v16);
    a3 = result;
  }

  *(a2 + 56) = a3;
  return result;
}

llvm::Value *AGCLLVMTextureFetchFragmentShader::buildUDivURem(AGCLLVMTextureFetchFragmentShader *this, llvm::Value *a2, llvm::Value *a3, llvm::Value **a4, llvm::Value **a5)
{
  v9 = this + *(*this - 24);
  v13 = 257;
  *a4 = llvm::IRBuilderBase::CreateUDiv((v9 + 1712), a2, a3, v12);
  v10 = (this + *(*this - 24));
  v13 = 257;
  result = llvm::IRBuilderBase::CreateURem(v10 + 214, a2, a3, v12);
  *a5 = result;
  return result;
}

uint64_t AGCLLVMDriverCDMShader::buildLocalID(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + *(*a1 - 24) + 2168);
  v9 = (*(*v8 + 688))(v8);
  if (v9)
  {
    v10 = v9;
    v29 = *a2;
    v30 = *(a2 + 2);
    if (v30)
    {
      llvm::MetadataTracking::track();
    }

    v31 = *(a2 + 6);
    v11 = (*(*v10 + 272))(v10, &v29, a3, a4);
    if (v30)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v12 = *(*(a1 + 72) + 24 * a4 + 56);
    if (v12)
    {
      v13 = a1 + *(*a1 - 24);
      v32 = 257;
      return llvm::IRBuilderBase::CreateCast(v13 + 1712, 38, v12, a3, &v29);
    }

    else
    {
      v14 = a4;
      if (*a2)
      {
        v15 = a1 + *(*a1 - 24);
        v33 = *a2;
        v34 = *(a2 + 2);
        if (v34)
        {
          llvm::MetadataTracking::track();
        }

        v35 = *(a2 + 6);
        AGCLLVMBuilder::InsertPoint::restoreIP(&v33, v15 + 1712);
        if (v34)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v16 = *(*(a1 + 72) + 4 * a4 + 24);
      if (v16 == -2)
      {
        return 0;
      }

      else
      {
        v17 = *(a1 + 88);
        if (*(v17 + 18))
        {
          llvm::Function::BuildLazyArguments(*(a1 + 88));
        }

        if (v16)
        {
          v18 = *(v17 + 88) + 40 * (v16 - 1) + 40;
        }

        else
        {
          v18 = *(v17 + 88);
        }

        if (a4)
        {
          v19 = a1 + *(*a1 - 24);
          v20 = *(v19 + 1944);
          v32 = 257;
          Cast = llvm::IRBuilderBase::CreateCast(v19 + 1712, 49, v18, v20, &v29);
          v22 = a1 + *(*a1 - 24);
          v32 = 257;
          v23 = *(v22 + 1904);
          v24 = llvm::ConstantInt::get();
          Element = llvm::IRBuilderBase::CreateExtractElement((v22 + 1712), Cast, v24, &v29);
          v26 = a1 + *(*a1 - 24);
          v32 = 257;
          v18 = llvm::IRBuilderBase::CreateCast(v26 + 1712, 39, Element, a3, &v29);
        }

        v27 = a1 + *(*a1 - 24);
        v32 = 257;
        v11 = llvm::IRBuilderBase::CreateCast(v27 + 1712, 38, v18, a3, &v29);
        llvm::ValueHandleBase::operator=((*(a1 + 72) + 24 * v14 + 40), v11);
      }
    }
  }

  return v11;
}

uint64_t AGCLLVMDriverCDMBlitShader::getSampleResultType(void *a1, char a2, unsigned int a3)
{
  if ((a3 & 0x1F00) != 0)
  {
    AGCLLVMDriverShader::getFormatInfo(&v10, a1, (a3 >> 8) & 0x1F);
    return v12;
  }

  else
  {
    v5 = a2 & 0x1F;
    if (v5 == 23 || (v6 = *(a1 + *(*a1 - 24) + 2168), v7 = (*(*v6 + 688))(v6), AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v10, v7, v5, 0, 0, 0), (v13 & 1) == 0))
    {
      v9 = std::__throw_bad_optional_access[abi:nn200100]();
      return AGCLLVMDriverCDMBlitShader::readDestinationTexture(v9);
    }

    else
    {
      v8 = v11;
      if ((*(v11 + 8) & 0xFE) == 0x12)
      {
        v8 = **(v11 + 16);
      }

      LODWORD(result) = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), v8, &v10);
      if ((result - 3) >= 3)
      {
        return result;
      }

      else
      {
        return (result + 4);
      }
    }
  }
}

uint64_t AGCLLVMDriverCDMBlitShader::readDestinationTexture(AGCLLVMDriverShader *a1, _DWORD *a2, int a3)
{
  if ((*a2 & 0xC0) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + *(*a1 - 24) + 1952);
  v8 = llvm::UndefValue::get();
  v9 = a1 + *(*a1 - 24);
  v10 = *(a1 + 12);
  LOWORD(v57) = 257;
  v11 = *(v9 + 238);
  v12 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((v9 + 1712), v8, v10, v12, &v54);
  v14 = a1 + *(*a1 - 24);
  v15 = *(a1 + 13);
  LOWORD(v57) = 257;
  v16 = *(v14 + 238);
  v17 = llvm::ConstantInt::get();
  v18 = llvm::IRBuilderBase::CreateInsertElement((v14 + 1712), InsertElement, v15, v17, &v54);
  v19 = AGCLLVMDriverShader::buildRegionOffsets(a1, "agc.dest_padded_offsets");
  v20 = a1 + *(*a1 - 24);
  LOWORD(v57) = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v20 + 1712), v18, v19, &v54);
  if ((*a2 & 0xC0) != 0)
  {
    v22 = llvm::User::operator new(0x58);
    v23 = (a1 + *(*a1 - 24));
    v24 = v23[267];
    v25 = v23[238];
    v54 = "agc.texture_write_slice";
    LOWORD(v57) = 259;
    v50 = *(v23[271] + 972) | 0x100000000;
    v26 = llvm::GlobalVariable::GlobalVariable();
    *(v26 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v27 = a1 + *(*a1 - 24);
    v28 = *(v27 + 268);
    v29 = AGCLLVMBuilder::buildGlobalMetadata((v27 + 1704), v22);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v29);
    v30 = a1 + *(*a1 - 24);
    LOWORD(v57) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v30 + 1704), v22, &v54);
    v32 = AGCLLVMBuilder::extendVector((a1 + *(*a1 - 24) + 1704), Add, 4);
    v33 = a1 + *(*a1 - 24);
    LOWORD(v57) = 257;
    v34 = *(v33 + 238);
    v35 = llvm::ConstantInt::get();
    Add = llvm::IRBuilderBase::CreateInsertElement((v33 + 1712), v32, Load, v35, &v54);
  }

  v36 = a1 + *(*a1 - 24);
  v37 = *(v36 + 234);
  v38 = *(*Add + 32);
  v39 = llvm::FixedVectorType::get();
  LOWORD(v57) = 257;
  UIToFP = llvm::IRBuilderBase::CreateUIToFP((v36 + 1712), Add, v39, &v54);
  ImageStateGlobal = AGCLLVMDriverShader::getImageStateGlobal(a1);
  TextureHeapGlobal = AGCLLVMDriverShader::getTextureHeapGlobal(a1, 1u);
  SamplerStateGlobal = AGCLLVMDriverShader::getSamplerStateGlobal(a1);
  LODWORD(v54) = 0;
  HIDWORD(v54) = v6;
  v56[0] = 0;
  *(v56 + 7) = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  v72 = 0u;
  v73 = 0u;
  memset(v74, 0, 21);
  v74[21] = 1;
  v75 = 0;
  v76 = 0;
  v55 = a3;
  AGCLLVMDriverShader::setSampleArgs(a1, &v54, 1, ImageStateGlobal, SamplerStateGlobal, TextureHeapGlobal);
  *&v64 = UIToFP;
  v71 = 0;
  v66 = 1;
  v44 = *(a1 + *(*a1 - 24) + 1872);
  v45 = llvm::ConstantFP::get();
  BYTE6(v56[0]) = 1;
  v67 = v45;
  v65 = 0;
  v46 = a1 + *(*a1 - 24);
  v47 = *(v46 + 271);
  v51 = *(v46 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v46 + 1712));
  v53 = *(v46 + 452);
  v48 = (*(*v47 + 288))(v47, &v51, &v54);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  return v48;
}

uint64_t std::__function::__func<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#2},std::allocator<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#2}>,void ()(_CompilerData const&,section_64 *&,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825AFF10;
  a2[1] = v2;
  return result;
}

uint64_t AGCLLVMObjectArray::attachPrinter(uint64_t result, uint64_t a2)
{
  *(result + 1696) = a2;
  v2 = *(result + 1712);
  if (v2)
  {
    v4 = *(result + 1704);
    v5 = 32 * v2;
    do
    {
      v6 = *v4;
      v4 += 4;
      result = (*(*v6 + 64))(v6, a2);
      v5 -= 32;
    }

    while (v5);
  }

  return result;
}

uint64_t AGCLLVMObjectArray::composeCompilerReply(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 24) = a1[242];
  if (((a1[233] - a1[232]) >> 4))
  {
    v5 = (a1[233] - a1[232]) >> 4;
    operator new();
  }

  return 0;
}

uint64_t AGCLLVMObjectArray::compile(std::string *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = LODWORD(this[71].__r_.__value_.__r.__words[1]);
  if (v1)
  {
    data = this[71].__r_.__value_.__l.__data_;
    v4 = 32 * v1;
    while (1)
    {
      v5 = data + 8;
      if (((*(**data + 16))() & 1) == 0)
      {
        std::string::operator=(this + 69, (*data + 1656));
        goto LABEL_29;
      }

      v26 = 0;
      v27 = 0;
      v24 = 0u;
      v25 = 0u;
      v6 = *data;
      v32 = 0;
      v7 = (*(*v6 + 24))(v6, &v27, &v26, &v24, v31);
      std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v31);
      if (!v7)
      {
        break;
      }

      v9 = v26;
      v8 = v27;
      if ((data[31] & 0x80000000) == 0 || (v5 = *v5) != 0)
      {
        if (*v5)
        {
          std::string::basic_string[abi:nn200100]<0>(__p, v5);
          v10 = this[77].__r_.__value_.__r.__words[2];
          size = this[77].__r_.__value_.__l.__size_;
          if (!*std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(&this[79].__r_.__value_.__r.__words[2], &v30, __p))
          {
            operator new();
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v12 = this[77].__r_.__value_.__r.__words[2];
      v13 = this[78].__r_.__value_.__l.__data_;
      if (v12 >= v13)
      {
        v15 = this[77].__r_.__value_.__l.__size_;
        v16 = v12 - v15;
        v17 = (v12 - v15) >> 4;
        v18 = v17 + 1;
        if ((v17 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v19 = v13 - v15;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 60))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = (16 * v17);
        *v21 = v8;
        v21[1] = v9;
        v14 = 16 * v17 + 16;
        memcpy(0, v15, v16);
        this[77].__r_.__value_.__l.__size_ = 0;
        this[77].__r_.__value_.__r.__words[2] = v14;
        this[78].__r_.__value_.__r.__words[0] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v12 = v8;
        *(v12 + 1) = v9;
        v14 = (v12 + 16);
      }

      this[77].__r_.__value_.__r.__words[2] = v14;
      this[79].__r_.__value_.__l.__size_ += v9;
      this[80].__r_.__value_.__r.__words[2] += *(&v25 + 1);
      data += 32;
      v4 -= 32;
      if (!v4)
      {
        goto LABEL_26;
      }
    }

    MEMORY[0x20F331AA0](&this[69], "Error occurred composing compiler reply.");
LABEL_29:
    result = 0;
  }

  else
  {
LABEL_26:
    result = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMObjectArray::~AGCLLVMObjectArray(AGCLLVMObjectArray *this)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BDEC8;
  v2 = *(this + 232);
  v3 = *(this + 233);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    free(v4);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 240));
  v5 = *(this + 235);
  if (v5)
  {
    *(this + 236) = v5;
    operator delete(v5);
  }

  v6 = *(this + 232);
  if (v6)
  {
    *(this + 233) = v6;
    operator delete(v6);
  }

  v7 = *(this + 213);
  v8 = *(this + 428);
  if (v8)
  {
    v9 = &v7[32 * v8 - 32];
    v10 = -32 * v8;
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v11 = *v9;
      *v9 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v9 -= 32;
      v10 += 32;
    }

    while (v10);
    v7 = *(this + 213);
  }

  if (v7 != this + 1720)
  {
    free(v7);
  }

  AGCLLVMObjectBase::~AGCLLVMObjectBase(this);
}

void AGCModulePassManager::~AGCModulePassManager(AGCModulePassManager *this)
{
  *this = &unk_2825BDF78;
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BDF78;
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

uint64_t std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMCtx::initializeOptimizations(void)::$_0 &&>>(llvm::PassRegistry *a1)
{
  PassRegistry = llvm::PassRegistry::getPassRegistry(a1);
  llvm::initializeCore(PassRegistry, v2);
  llvm::initializeScalarOpts(PassRegistry, v3);
  llvm::initializeVectorization(PassRegistry, v4);
  llvm::initializeIPO(PassRegistry, v5);
  llvm::initializeAnalysis(PassRegistry, v6);
  llvm::initializeTransformUtils(PassRegistry, v7);
  llvm::initializeInstCombine(PassRegistry, v8);

  return MEMORY[0x2821F29B8](PassRegistry);
}

void AGCLLVMCtx::initialize(AGCLLVMCtx *this)
{
  AGCLLVMUserShader::getVaryingModeMap(this);
  v3 = &AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map;
  if (atomic_load_explicit(&AGCLLVMUserShader::initializeMaps(void)::varying_flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserShader::initializeMaps(void)::varying_flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_0 &&>>);
  }

  AGCLLVMUserShader::getInterpolationLocationMap(v1);
  v3 = &AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map;
  if (atomic_load_explicit(&AGCLLVMUserShader::initializeMaps(void)::interpolation_flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserShader::initializeMaps(void)::interpolation_flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_1 &&>>);
  }

  if (atomic_load_explicit(&AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::$_0 &&>>);
  }

  AGCLLVMUserObject::getBuiltinArgMap(v2);
  v3 = &AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map;
  if (atomic_load_explicit(&AGCLLVMUserObject::initializeBuiltinArgMaps(void)::flag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMUserObject::initializeBuiltinArgMaps(void)::flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeBuiltinArgMaps(void)::$_0 &&>>);
  }

  if (atomic_load_explicit(&AGCLLVMCtx::initializeOptimizations(void)::once, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&AGCLLVMCtx::initializeOptimizations(void)::once, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMCtx::initializeOptimizations(void)::$_0 &&>>);
  }
}

void AGCLLVMCtx::~AGCLLVMCtx(AGCLLVMCtx *this)
{
  v2 = *(this + 251);
  if (v2)
  {
    MEMORY[0x20F331DA0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 255);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  MEMORY[0x20F330C10](this + 2024);
  if (*(this + 2007) < 0)
  {
    operator delete(*(this + 248));
  }

  if (*(this + 1983) < 0)
  {
    operator delete(*(this + 245));
  }

  llvm::deallocate_buffer(*(this + 241), (24 * *(this + 486)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>,llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>::destroyAll(this + 476);
  llvm::deallocate_buffer(*(this + 238), (32 * *(this + 480)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::destroyAll(this + 470);
  llvm::deallocate_buffer(*(this + 235), (16 * *(this + 474)));
  llvm::deallocate_buffer(*(this + 232), (24 * *(this + 468)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>,llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>::destroyAll(this + 458);
  llvm::deallocate_buffer(*(this + 229), (32 * *(this + 462)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>::destroyAll(this + 452);
  llvm::deallocate_buffer(*(this + 226), (16 * *(this + 456)));
  llvm::deallocate_buffer(*(this + 223), (24 * *(this + 450)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>,llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>::destroyAll(this + 440);
  llvm::deallocate_buffer(*(this + 220), (32 * *(this + 444)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::destroyAll(this + 434);
  llvm::deallocate_buffer(*(this + 217), (16 * *(this + 438)));
  llvm::deallocate_buffer(*(this + 214), (24 * *(this + 432)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>,llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>::destroyAll(this + 422);
  llvm::deallocate_buffer(*(this + 211), (32 * *(this + 426)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>::destroyAll(this + 416);
  llvm::deallocate_buffer(*(this + 208), (16 * *(this + 420)));
  llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(this + 1632);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1488);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1344);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1200);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1056);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 912);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 768);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 624);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 480);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 336);
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  v4 = *(this + 19);
  if (v4 != this + 176)
  {
    free(v4);
  }

  if (*(this + 144) == 1)
  {
    MEMORY[0x20F330BA0](this + 128);
  }

  if (*(this + 120) == 1)
  {
    MEMORY[0x20F330BA0](this + 104);
  }

  if (*(this + 96) == 1)
  {
    MEMORY[0x20F330BA0](this + 80);
  }

  if (*(this + 72) == 1)
  {
    MEMORY[0x20F330BA0](this + 56);
  }

  llvm::AGX::AGXCompiler::~AGXCompiler((this + 48));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void AGCLLVMCtx::runInliner()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v0 = "AlwaysInlinerPass";
  v1 = 17;
  LOBYTE(v2) = 1;
  llvm::PassManager<llvm::Module,llvm::AnalysisManager<llvm::Module>>::addPass<AGCLLVMPrintModulePass>();
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 77;
  }

  v2 = &aStringrefLlvmG_96[v1];
  v3 = 77 - v1;
  if ((77 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 77 - v1;
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

void *llvm::detail::AnalysisResultModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::TargetLibraryInfo,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825B0188;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void *llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825B0158;
  llvm::optional_detail::OptionalStorage<llvm::TargetLibraryInfoImpl,false>::reset((a1 + 1));
  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMObject>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_90[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::GlobalDCEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void *llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  *a1 = &unk_2825B0018;
  llvm::GlobalDCEPass::~GlobalDCEPass((a1 + 1));
  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCLLVMVerifyModulePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCLLVMVerifyModulePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCLLVMPrintModulePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCLLVMPrintModulePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::DCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::DCEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::InstCombinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::InstCombinePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::detail::PassModel<llvm::Function,llvm::InstCombinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825B0118;
  v2 = *(a1 + 2232);
  if (v2 != (a1 + 2248))
  {
    free(v2);
  }

  if ((*(a1 + 2096) & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 2104), (8 * *(a1 + 2112)));
  }

  llvm::deallocate_buffer(*(a1 + 2072), (16 * *(a1 + 2088)));
  v3 = *(a1 + 8);
  if (v3 != (a1 + 24))
  {
    free(v3);
  }

  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::SROAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::SROAPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void *llvm::detail::PassModel<llvm::Function,llvm::SROAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(void *a1)
{
  *a1 = &unk_2825B00D8;
  llvm::SROAPass::~SROAPass((a1 + 1));
  return a1;
}

uint64_t AGCLLVMObject::linkCommon(AGCLLVMObject *this, llvm::Module *a2, int a3, llvm::Function *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = a2 + 24;
    for (i = *(a2 + 4); i != v8; i = *(i + 8))
    {
      if (i)
      {
        v10 = i - 56;
      }

      else
      {
        v10 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v10) && (*(v10 + 34) & 0x80) != 0)
      {
        llvm::GlobalValue::setLinkage(v10, 3);
      }

      if ((*(v10 + 32) & 0xFu) - 7 >= 2)
      {
        llvm::GlobalValue::setVisibility(v10);
      }
    }

    v11 = *(*(this + 211) + 32);
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = strlen(*(v11 + 8));
    }

    else
    {
      v13 = 0;
    }

    llvm::Module::setTargetTriple(a2, v12, v13);
    v15 = *(*(this + 211) + 32);
    if (*(v15 + 16))
    {
      v16 = strlen(*(v15 + 16));
    }

    llvm::Module::setDataLayout();
    v17 = *(this + 267);
    v43 = a2;
    v45 = 0;
    v18 = llvm::Linker::linkModules();
    std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v44);
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v43);
    if ((v18 & 1) == 0)
    {
      v19 = *(this + 267);
      v20 = *(v19 + 32);
      v21 = v19 + 24;
      if (a3)
      {
        if (v20 != v19 + 24)
        {
          do
          {
            v22 = *(v20 + 8);
            if (v20)
            {
              v23 = (v20 - 56);
            }

            else
            {
              v23 = 0;
            }

            if (v23 != a4)
            {
              Name = llvm::Value::getName((v20 - 56));
              if (v25 != 22 || (*Name == 0x626F6C672E636761 ? (v26 = Name[1] == 0x74736E6F635F6C61) : (v26 = 0), v26 ? (v27 = *(Name + 14) == 0x726F746375727473) : (v27 = 0), !v27))
              {
                llvm::Value::getName((v20 - 56));
                Key = llvm::StringMapImpl::FindKey();
                if (Key == -1 || Key == *(this + 1286))
                {
                  v29 = *(v20 - 24);
                  if ((v29 & 0xF) != 0)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v29 = *(v20 - 24);
                }

                if ((v29 & 0x30) == 0x10)
                {
LABEL_40:
                  if (!*(v20 - 48))
                  {
                    llvm::Function::eraseFromParent((v20 - 56));
                  }
                }
              }
            }

            v20 = v22;
          }

          while (v22 != v21);
        }
      }

      else
      {
        if (v20 == v19 + 24)
        {
          v35 = 0;
        }

        else
        {
          v30 = 1;
          do
          {
            v31 = *(v20 + 8);
            if (v20)
            {
              v32 = (v20 - 56);
            }

            else
            {
              v32 = 0;
            }

            if (v32 != a4)
            {
              v33 = *(v20 - 24);
              v34 = (v33 & 0xF) != 0 || (*(v20 - 24) & 0x30) == 16;
              if (v34 && !*(v20 - 48))
              {
                llvm::Function::eraseFromParent((v20 - 56));
              }

              else if ((v33 & 0x2000) == 0 && (llvm::GlobalValue::isDeclaration((v20 - 56)) & 1) == 0)
              {
                *(v20 - 24) = *(v20 - 24) & 0xFFFFBFC0 | 0x4007;
                llvm::Function::addFnAttr();
                ++v30;
              }
            }

            v20 = v31;
          }

          while (v31 != v21);
          v19 = *(this + 267);
          v35 = v30 > 1;
        }

        v36 = *(v19 + 16);
        v37 = v19 + 8;
        if (v36 != v19 + 8)
        {
          do
          {
            v38 = *(v36 + 8);
            if (v36)
            {
              v39 = (v36 - 56);
            }

            else
            {
              v39 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v39) & 1) == 0)
            {
              if (*(v36 - 48))
              {
                *(v36 - 24) = *(v36 - 24) & 0xFFFFBFC0 | 0x4007;
              }

              else
              {
                llvm::GlobalVariable::eraseFromParent((v36 - 56));
              }
            }

            v36 = v38;
          }

          while (v38 != v37);
        }

        if (v35)
        {
          v40 = *(this + 211);
          v41 = *(this + 267);
          AGCLLVMCtx::runInliner();
        }
      }
    }

    result = v18 ^ 1u;
  }

  else
  {
    result = 1;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Module *AGCLLVMObject::linkDSFile(AGCLLVMObject *this, const char *__s, llvm::Function *a3)
{
  v6 = **(this + 267);
  if (__s)
  {
    v7 = strlen(__s);
  }

  else
  {
    v7 = 0;
  }

  result = AGCLLVMObject::readBitcode(v6, __s, v7, 1);
  if (result)
  {
    v9 = result;
    v10 = (*(**(this + 271) + 784))(*(this + 271), 0, result);
    AGCLLVMAirBuiltins::replaceBuiltins(v10);
    result = AGCLLVMObject::linkCommon(this, v9, 0, a3);
    if (v10)
    {
      v11 = *(*v10 + 16);

      return v11(v10);
    }
  }

  return result;
}

uint64_t AGCLLVMObject::readBitcode(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v45[0] = a2;
  v45[1] = a3;
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AGXCompilerCore");
  if (!BundleWithIdentifier)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_0::operator()[abi:[AGX] Failed assertion _bundle_]();
  }

  if (!a3)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_1::operator()[abi:[AGX] Failed assertion _(file_name.empty() __ false)_]();
  }

  v7 = BundleWithIdentifier;
  llvm::StringRef::str(__p, v45);
  if (SHIBYTE(v61) >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v9)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_2::operator()[abi:[AGX] Failed assertion _filename_]();
  }

  if (a4)
  {
    v10 = "ds";
  }

  else
  {
    v10 = "ds_internal";
  }

  v11 = CFStringCreateWithCString(0, v10, 0x8000100u);
  if (!v11)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_3::operator()[abi:[AGX] Failed assertion _subdirectory_]();
  }

  v12 = v11;
  v13 = CFBundleCopyResourceURL(v7, v9, @"ds", v11);
  if (!v13)
  {
    __p[0] = @"com.apple.AGXCompilerCore";
    __p[1] = v9;
    v61 = @"ds";
    v62 = v12;
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_4::operator()[abi:[AGX] Failed assertion _bitcode_url_](__p);
  }

  v14 = v13;
  v15 = CFURLCopyFileSystemPath(v13, kCFURLPOSIXPathStyle);
  if (!v15)
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_5::operator()[abi:[AGX] Failed assertion _posix_path_]();
  }

  v16 = v15;
  bzero(__p, 0x401uLL);
  if (!CFStringGetCString(v16, __p, 1024, 0x600u))
  {
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_6::operator()[abi:[AGX] Failed assertion _success_](v16);
  }

  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v14);
  CFRelease(v16);
  v59[6] = 0;
  v17 = MEMORY[0x277D82858] + 24;
  v18 = MEMORY[0x277D82858] + 64;
  v59[0] = MEMORY[0x277D82858] + 64;
  v19 = MEMORY[0x277D82808];
  v20 = *(MEMORY[0x277D82808] + 16);
  v57[0] = *(MEMORY[0x277D82808] + 8);
  *(v57 + *(v57[0] - 24)) = v20;
  v57[1] = 0;
  v21 = (v57 + *(v57[0] - 24));
  std::ios_base::init(v21, v58);
  v21[1].__vftable = 0;
  v21[1].__fmtflags_ = -1;
  v57[0] = v17;
  v59[0] = v18;
  MEMORY[0x20F331B50](v58);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v57 + *(v57[0] - 24)), *&v58[*(v57[0] - 24) + 16] | 4);
  }

  v22 = v57 + *(v57[0] - 24);
  if ((v22[32] & 5) != 0)
  {
    v23 = MEMORY[0x277D82670];
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "readBitcode", 11);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "(): unable to open file: ", 25);
    v25 = strlen(__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, __p, v25);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v26 = std::locale::use_facet(v46, MEMORY[0x277D82680]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(v46);
    std::ostream::put();
    std::ostream::flush();
    v27 = 0;
    goto LABEL_38;
  }

  v28 = *(v22 + 5);
  if (v28)
  {
    v29 = v28[3];
    v30 = v28[4];
    if (v29 != v30)
    {
      goto LABEL_24;
    }

    if ((*(*v28 + 72))(v28) != -1)
    {
      v29 = v28[3];
      v30 = v28[4];
LABEL_24:
      if (v29 == v30)
      {
        (*(*v28 + 72))(v28);
      }

      else
      {
        v31 = *v29;
      }

      operator new();
    }
  }

  MEMORY[0] = 186106078;
  MEMORY[0x14] = -557825214;
  v49 = 0;
  *v47 = 0u;
  v48 = 0u;
  *&v46[0].__locale_ = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55[0] = &v56;
  v55[1] = 0x400000000;
  *&v40.__r_.__value_.__l.__data_ = 0uLL;
  v40.__r_.__value_.__r.__words[2] = __p;
  v41.__r_.__value_.__r.__words[0] = strlen(__p);
  v32 = llvm::parseIR();
  v27 = v44;
  v44 = 0;
  if (!v27)
  {
    v35 = llvm::errs(v32);
    llvm::SMDiagnostic::print(v46, "readBitcode", v35);
    v36 = v47;
    v37 = SBYTE7(v48);
    if (SBYTE7(v48) < 0)
    {
      v36 = v47[0];
    }

    if (SBYTE7(v48) < 0)
    {
      v37 = v47[1];
    }

    v40.__r_.__value_.__r.__words[0] = v36;
    v40.__r_.__value_.__l.__size_ = v37;
    llvm::StringRef::str(&v43, &v40);
    v38 = SBYTE7(v51);
    v39 = v50;
    if ((SBYTE7(v51) & 0x80u) == 0)
    {
      v39 = &v50;
    }

    if (SBYTE7(v51) < 0)
    {
      v38 = *(&v50 + 1);
    }

    v40.__r_.__value_.__r.__words[0] = v39;
    v40.__r_.__value_.__l.__size_ = v38;
    llvm::StringRef::str(&v42, &v40);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
    }

    else
    {
      v40 = v43;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = v42;
    }

    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_7::operator()[abi:[AGX] Failed assertion _false_](&v40);
    AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_0::operator()[abi:[AGX] Failed assertion _bundle_]();
  }

  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v44);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v55);
  v19 = MEMORY[0x277D82808];
  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*(&v51 + 1));
  }

  if (SBYTE7(v51) < 0)
  {
    operator delete(v50);
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(v47[0]);
  }

  operator delete(0);
LABEL_38:
  v57[0] = *v19;
  *(v57 + *(v57[0] - 24)) = v19[3];
  MEMORY[0x20F331B60](v58);
  std::istream::~istream();
  MEMORY[0x20F331D40](v59);
  v33 = *MEMORY[0x277D85DE8];
  return v27;
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_0::operator()[abi:[AGX] Failed assertion _bundle_]()
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_1::operator()[abi:[AGX] Failed assertion _(file_name.empty() __ false)_]()
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_2::operator()[abi:[AGX] Failed assertion _filename_]()
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_3::operator()[abi:[AGX] Failed assertion _subdirectory_]()
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_4::operator()[abi:[AGX] Failed assertion _bitcode_url_](CFStringRef *a1)
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  CFStringGetCStringPtr(*a1, 0x8000100u);
  CFStringGetCStringPtr(a1[1], 0x8000100u);
  CFStringGetCStringPtr(a1[2], 0x8000100u);
  CFStringGetCStringPtr(a1[3], 0x8000100u);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_5::operator()[abi:[AGX] Failed assertion _posix_path_]()
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_6::operator()[abi:[AGX] Failed assertion _success_](const __CFString *a1)
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  CFStringGetCStringPtr(a1, 0x8000100u);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

uint64_t AGCLLVMObject::readBitcode(AGCLLVMCtx &,llvm::LLVMContext &,llvm::StringRef,BOOL)::$_7::operator()[abi:[AGX] Failed assertion _false_](uint64_t *a1)
{
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    v3 = a1[3];
  }

  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void AGCLLVMObject::extractPhaseOffsetsWithAux(flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Offset<flatbuffers::Vector<unsigned int>> &)::$_0::operator()(uint64_t *a1, _DWORD *a2)
{
  if (a2 && *a2)
  {
    v3 = *(a1[1] + 16);
    if (v3)
    {
      v4 = a2 + 1;
      do
      {
        v5 = v4 + *v4 + *(v4 + *v4 - *(v4 + *v4) + 4);
        std::string::basic_string[abi:nn200100]<0>(__p, &v5[*v5 + 4]);
        v6 = *(v3 + 39);
        v7 = v27;
        if ((v27 & 0x80u) == 0)
        {
          v8 = v27;
        }

        else
        {
          v8 = __p[1];
        }

        if ((v27 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if (v6 >= 0)
        {
          v10 = *(v3 + 39);
        }

        else
        {
          v10 = v3[3];
        }

        if (v6 >= 0)
        {
          v11 = v3 + 2;
        }

        else
        {
          v11 = v3[2];
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        if (v10 == v8 && v13 == 0)
        {
          std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](*a1, v3 + 10);
          v7 = v27;
        }

        if ((v7 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }

        v3 = *v3;
      }

      while (v3);
    }
  }

  else
  {
    v15 = *a1;
    v17 = *(*a1 + 8);
    v16 = *(*a1 + 16);
    if (v17 >= v16)
    {
      v19 = *v15;
      v20 = v17 - *v15;
      v21 = v20 >> 2;
      v22 = (v20 >> 2) + 1;
      if (v22 >> 62)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v23 = v16 - v19;
      if (v23 >> 1 > v22)
      {
        v22 = v23 >> 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v24 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v24);
      }

      *(4 * v21) = -1;
      v18 = 4 * v21 + 4;
      memcpy(0, v19, v20);
      v25 = *v15;
      *v15 = 0;
      *(v15 + 8) = v18;
      *(v15 + 16) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v17 = -1;
      v18 = (v17 + 1);
    }

    *(v15 + 8) = v18;
  }
}

llvm::Value *AGCLLVMObject::buildWGBarrier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 2224) = 1;
  v6 = *(a1 + 2168);
  v7 = *(v6 + 1032);
  if (v7)
  {
    v8 = strlen(*(v6 + 1032));
  }

  else
  {
    v8 = 0;
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + 1704, v7, v8, *(a1 + 1848), *(a1 + 1896), *(a1 + 1896));
  v12 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 1712, *(v9 + 24), v9, a2, a3, v11);
}

void AGCLLVMObject::addDylibBinding(AGCLLVMObject *this, llvm::GlobalVariable *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  __src[0] = llvm::ValueAsMetadata::get();
  v3 = *(this + 238);
  llvm::ConstantInt::get();
  __src[1] = llvm::ValueAsMetadata::get();
  v8[0] = v9;
  v8[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v8, __src, v8);
  v4 = *(this + 270);
  Impl = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this + 4752, Impl);
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMObject::buildMulShiftDiv(AGCLLVMObject *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = *(this + 239);
  v29 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 1712, 39, a2, v8, v28);
  v10 = *(this + 239);
  v27 = 257;
  v11 = llvm::IRBuilderBase::CreateCast(this + 1712, 39, a3, v10, v26);
  v25 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((this + 1712), Cast, v11, v24);
  v13 = *(this + 239);
  v29 = 257;
  v14 = llvm::IRBuilderBase::CreateCast(this + 1712, 39, a2, v13, v28);
  v27 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((this + 1712), Mul, v14, v26);
  v16 = *(this + 244);
  v29 = 257;
  v17 = llvm::IRBuilderBase::CreateCast(this + 1712, 49, Add, v16, v28);
  v29 = 257;
  v18 = *(this + 238);
  v19 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((this + 1712), v17, v19, v28);
  v29 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1712), Element, a4, v28);
  v22 = *a2;
  v27 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 1712, 39, LShr, v22, v26);
}

void AGCLLVMObject::replaceConstantChainWithInstrs(AGCLLVMObject *this, llvm::Constant *a2)
{
  v79[32] = *MEMORY[0x277D85DE8];
  v77 = v79;
  v78 = 0x1000000000;
  v2 = *(this + 1);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 24);
      v4 = *(v3 + 8);
      if (v4 || *(v3 + 16) >= 0x1Cu)
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v77, v2, v4);
      }

      v2 = *(v2 + 8);
    }

    while (v2);
    v5 = v78;
    v74 = v76;
    for (i = 0x400000000; v78; v5 = v78)
    {
      while (1)
      {
        while (1)
        {
          v6 = &v77[16 * v5];
          v7 = *(*(v6 - 2) + 24);
          if (v7)
          {
            v8 = *(v7 + 16) >= 0x1Cu;
          }

          else
          {
            v8 = 0;
          }

          if (v8)
          {
            v70 = 128;
            v69[0] = MEMORY[0x20F330650](0x2000, 8);
            llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(v69);
            LOBYTE(v71) = 0;
            v73 = 0;
            if (i)
            {
              v14 = v74;
              v64 = v6;
              v65 = v74 + 8 * i;
              do
              {
                v15 = *v14;
                v16 = *(*v14 + 16);
                if (*v14)
                {
                  v17 = v16 == 5;
                }

                else
                {
                  v17 = 0;
                }

                v66 = v14;
                if (v17)
                {
                  AsInstruction = llvm::ConstantExpr::getAsInstruction(v15, 0);
                  if (*(v7 + 16) == 83)
                  {
                    v35 = *(v7 + 20);
                    v36 = (v35 & 0x40000000) != 0 ? *(v7 - 8) : v7 - 32 * (v35 & 0x7FFFFFF);
                    v52 = *(v36 + 32 * *(v7 + 60) + 8 * ((*(v64 - 2) - v36) >> 5));
                    v53 = *(v52 + 40);
                    if (v53 != v52 + 40)
                    {
                      if (v53)
                      {
                        v54 = v53 - 24;
                      }

                      else
                      {
                        v54 = 0;
                      }

                      *(v54 + 16);
                    }
                  }

                  llvm::Instruction::insertBefore();
                }

                else
                {
                  if (v15)
                  {
                    v18 = v16 == 10;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  if (v18)
                  {
                    v37 = *v15;
                    v38 = llvm::UndefValue::get();
                    Context = llvm::Value::getContext(v15);
                    llvm::Type::getInt32Ty(Context, v40);
                    v41 = *(*v15 + 32);
                    if (v41)
                    {
                      v42 = 0;
                      v43 = v15;
                      do
                      {
                        v44 = *(v43 - 4 * (*(v15 + 5) & 0x7FFFFFF));
                        *buf = 0;
                        if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v69[0], v70, v44, buf))
                        {
                          v45 = *buf;
                          v46 = v69[0];
                          v47 = v70;
                        }

                        else
                        {
                          v46 = v69[0];
                          v47 = v70;
                          v45 = v69[0] + 64 * v70;
                        }

                        if (v46 + 64 * v47 == v45)
                        {
                          *buf = 6;
                          *&buf[8] = 0;
                          *&buf[16] = v44;
                          if (v44 != -8192 && v44 != -4096 && v44 != 0)
                          {
                            llvm::ValueHandleBase::AddToUseList(buf);
                          }
                        }

                        else
                        {
                          v48 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v69, v44);
                          llvm::ValueHandleBase::ValueHandleBase(buf, 3u, v48);
                        }

                        v50 = *&buf[16];
                        if (*&buf[16] != -8192 && *&buf[16] != -4096 && *&buf[16])
                        {
                          llvm::ValueHandleBase::RemoveFromUseList(buf);
                        }

                        v51 = llvm::ConstantInt::get();
                        v68 = 257;
                        AsInstruction = llvm::User::operator new(0x40);
                        MEMORY[0x20F330760](AsInstruction, v38, v50, v51, buf, 0);
                        llvm::Instruction::insertBefore();
                        ++v42;
                        v43 = (v43 + 32);
                        v38 = AsInstruction;
                      }

                      while (v41 != v42);
                    }

                    else
                    {
                      AsInstruction = v38;
                    }
                  }

                  else
                  {
                    if (v15)
                    {
                      v19 = v16 == 9;
                    }

                    else
                    {
                      v19 = 0;
                    }

                    if (!v19)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "AGC: %s:%d:%s: !!! Unable to replace a constant with instructions\n", "agc_llvm_object.cpp", 2109, "void AGCLLVMObject::replaceConstantChainWithInstrs(Constant *)");
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "agc_llvm_object.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 2109;
                        *&buf[18] = 2080;
                        *&buf[20] = "void AGCLLVMObject::replaceConstantChainWithInstrs(Constant *)";
                        _os_log_error_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGC: AGC: %s:%d:%s: !!! Unable to replace a constant with instructions\n", buf, 0x1Cu);
                      }

                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315650;
                        *&buf[4] = "agc_llvm_object.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 2109;
                        *&buf[18] = 2080;
                        *&buf[20] = "void AGCLLVMObject::replaceConstantChainWithInstrs(Constant *)";
                        _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGC: AGC: %s:%d:%s: !!! Unable to replace a constant with instructions\n", buf, 0x1Cu);
                      }

                      abort();
                    }

                    v20 = *v15;
                    v21 = llvm::UndefValue::get();
                    v22 = v21;
                    v23 = *(*v15 + 12);
                    if (v23)
                    {
                      v24 = 0;
                      v25 = v15;
                      do
                      {
                        v26 = *(v25 - 4 * (*(v15 + 5) & 0x7FFFFFF));
                        *buf = 0;
                        if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v69[0], v70, v26, buf))
                        {
                          v27 = *buf;
                          v28 = v69[0];
                          v29 = v70;
                        }

                        else
                        {
                          v28 = v69[0];
                          v29 = v70;
                          v27 = v69[0] + 64 * v70;
                        }

                        if (v28 + 64 * v29 == v27)
                        {
                          *buf = 6;
                          *&buf[8] = 0;
                          *&buf[16] = v26;
                          if (v26 != -8192 && v26 != -4096 && v26 != 0)
                          {
                            llvm::ValueHandleBase::AddToUseList(buf);
                          }
                        }

                        else
                        {
                          v30 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v69, v26);
                          llvm::ValueHandleBase::ValueHandleBase(buf, 3u, v30);
                        }

                        if (*&buf[16] != -8192 && *&buf[16] != -4096 && *&buf[16])
                        {
                          llvm::ValueHandleBase::RemoveFromUseList(buf);
                        }

                        v68 = 257;
                        AsInstruction = llvm::User::operator new(0x60);
                        v33 = *v22;
                        v34 = llvm::Instruction::Instruction();
                        *(v34 + 64) = v34 + 80;
                        *(v34 + 72) = 0x400000000;
                        llvm::InsertValueInst::init();
                        llvm::Instruction::insertBefore();
                        ++v24;
                        v25 = (v25 + 32);
                        v22 = AsInstruction;
                      }

                      while (v23 != v24);
                    }

                    else
                    {
                      AsInstruction = v21;
                    }
                  }
                }

                v55 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v69, v15);
                llvm::ValueHandleBase::operator=(v55, AsInstruction);
                llvm::ValueMapper::ValueMapper();
                llvm::ValueMapper::remapInstruction(buf, AsInstruction);
                MEMORY[0x20F3300B0](buf);
                v14 = v66 + 1;
              }

              while (v66 + 1 != v65);
              v56 = *(v64 - 2);
              if (*v56)
              {
                v57 = *(v56 + 8);
                **(v56 + 16) = v57;
                if (v57)
                {
                  *(v57 + 16) = *(v56 + 16);
                }
              }

              *v56 = AsInstruction;
              v60 = AsInstruction[1];
              v59 = AsInstruction + 1;
              v58 = v60;
              *(v56 + 8) = v60;
              if (v60)
              {
                *(v58 + 16) = v56 + 8;
              }

              *(v56 + 16) = v59;
              *v59 = v56;
              LODWORD(v78) = v78 - 1;
              if (v73)
              {
                llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v71);
                llvm::deallocate_buffer(v71, (16 * v72));
                v73 = 0;
              }
            }

            else
            {
              LODWORD(v78) = v78 - 1;
            }

            llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v69[0], v70);
            llvm::deallocate_buffer(v69[0], (v70 << 6));
            goto LABEL_103;
          }

          v9 = *(v6 - 1);
          if (v9)
          {
            break;
          }

          LODWORD(v78) = --v5;
          LODWORD(i) = i - 1;
          if (!v5)
          {
            goto LABEL_106;
          }
        }

        v10 = *(v7 + 8);
        if (v10)
        {
          break;
        }

        LODWORD(v78) = --v5;
        if (!v5)
        {
          goto LABEL_106;
        }
      }

      if (v9 == v10 && (!i || *(v74 + i - 1) != v7))
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v74, *(*(v6 - 2) + 24));
        v9 = *(v6 - 1);
      }

      *(v6 - 1) = *(v9 + 8);
      v11 = *(v9 + 24);
      v12 = *(v11 + 16);
      if (v12 < 0x1C)
      {
        if (v12 < 4)
        {
          continue;
        }

        v13 = *(v11 + 8);
        if (!v13)
        {
          continue;
        }
      }

      else
      {
        v13 = *(v11 + 8);
      }

      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v77, v9, v13);
LABEL_103:
      ;
    }
  }

  else
  {
    v74 = v76;
    i = 0x400000000;
  }

LABEL_106:
  llvm::Constant::removeDeadConstantUsers(this);
  if (v74 != v76)
  {
    free(v74);
  }

  if (v77 != v79)
  {
    free(v77);
  }

  v61 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(uint64_t result)
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
    v3 = (*result + (v1 << 6));
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BF008;
      *(v4 + 3) = v9;
      v5 = v4 + 56;
      result = v4 + 64;
      v2 += 64;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BF008;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 6;
    v4[6] = 0;
    v4[7] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v14 = 2;
    v15 = 0;
    v16 = -4096;
    v17 = 0;
    v12 = 0;
    v13 = &unk_2825BF008;
    v9 = 2;
    v10 = 0;
    v11 = -8192;
    v2 = a2 << 6;
    v3 = (result + 40);
    do
    {
      v4 = *(v3 - 2);
      if (v4 != v16 && v4 != v11)
      {
        v6 = *(v3 + 2);
        if (v6 != -8192 && v6 != -4096 && v6 != 0)
        {
          result = llvm::ValueHandleBase::RemoveFromUseList(v3);
          v4 = *(v3 - 2);
        }
      }

      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 32));
      }

      v3 = (v3 + 64);
      v2 -= 64;
    }

    while (v2);
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v16, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v15 = &unk_2825BF008;
  v18 = v4;
  v10 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v17, &v10);
  v6 = *v4 + (v4[2].u32[0] << 6);
  if (v5)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  if ((*v18 + (v18[2].u32[0] << 6)) != v7)
  {
    llvm::ValueHandleBase::ValueHandleBase(v13, 3u, v7 + 5);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(v18, v7);
    v8 = v18;
    v10 = a2;
    llvm::ValueHandleBase::ValueHandleBase(v11, 3u, v13);
    llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(&v9, v8, &v10);
    if (v12 != -8192 && v12 != -4096 && v12)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    if (v14 != -8192 && v14 != -4096 && v14)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v13);
    }
  }

  if (v17 != -8192 && v17 != -4096)
  {
    if (v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 6);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 6);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[7];
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a2 + 5));
  }

  v9[0] = 2;
  v9[1] = 0;
  v10 = -8192;
  v11 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v9);
  v6 = v10;
  a2[4] = v11;
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v9);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

__n128 llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(__n128 *a1, uint64_t a2, llvm::Value **a3)
{
  v5 = a3 + 1;
  llvm::CallbackVH::CallbackVH(&v12, *a3);
  v12 = &unk_2825BF008;
  v15 = a2;
  llvm::ValueHandleBase::ValueHandleBase(v17, (LODWORD(v13[0]) >> 1) & 3, v13);
  v16 = &unk_2825BF008;
  v19 = v15;
  llvm::ValueHandleBase::ValueHandleBase(v20, 3u, v5);
  v22 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a2, *(a2 + 16), v18, &v22);
  v7 = v22;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a2, &v16, v22);
    llvm::ValueHandleBase::operator=((v7 + 1), v17);
    v7[4] = v19;
    llvm::ValueHandleBase::ValueHandleBase((v7 + 5), 3u, v20);
    v8 = 1;
  }

  v9 = *a2;
  v10 = *(a2 + 16);
  if (v21 != -8192 && v21 != -4096 && v21)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v20);
  }

  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v17);
  }

  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v13);
  }

  result.n128_u64[0] = v7;
  result.n128_u64[1] = v9 + (v10 << 6);
  *a1 = result;
  a1[1].n128_u8[0] = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8 << 6, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_2825BF008;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 6);
    if (v3)
    {
      v10 = (v4 + 32);
      v11 = v9;
      do
      {
        v12 = *(v10 - 1);
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v26);
          v16 = v26;
          llvm::ValueHandleBase::operator=((v26 + 8), v10 - 3);
          *(v16 + 32) = *v10;
          llvm::ValueHandleBase::ValueHandleBase((v16 + 40), 3u, v10 + 1);
          ++*(a1 + 8);
          v17 = v10[3];
          if (v17 != -8192 && v17 != -4096 && v17)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v10 + 1));
          }
        }

        v14 = *(v10 - 1);
        if (v14 != -8192 && v14 != -4096 && v14 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 3));
        }

        v10 += 8;
        v11 -= 64;
      }

      while (v11);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v9, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v11 = v2;
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v10, &v12);
  if (result)
  {
    v4 = v12;
    v5 = v12[7];
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((v12 + 5));
    }

    v13[0] = 2;
    v13[1] = 0;
    v14 = -8192;
    v15 = 0;
    v12 = &unk_2825BF008;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v13);
    v7 = v14;
    v4[4] = v15;
    if (v7 != -8192 && v7 != -4096 && v7)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v13);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v10 != -8192 && v10 != -4096 && v10 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v9);
  }

  return result;
}

void AGCLLVMObject::mutatePtrValueAddressSpace(AGCLLVMObject *this, llvm::Value *a2)
{
  v2 = *(*this + 8);
  if (v2 == 15)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v4 = *(this + 1);
    if (v4)
    {
      do
      {
        v9 = v4[3];
        std::vector<llvm::User *>::push_back[abi:nn200100](&v10, &v9);
        v4 = v4[1];
      }

      while (v4);
LABEL_4:
      v4 = v10;
      v5 = v11;
      while (v4 != v5)
      {
        v7 = *--v5;
        v6 = v7;
        v11 = v5;
        if (v7)
        {
          if (*(v6 + 16) != 60 && *(*v6 + 8) == 15 && (*(*v6 + 8) ^ v2) <= 0xFF)
          {
            *v6 = llvm::PointerType::getWithSamePointeeType(*v6, 0x40);
            v8 = *(v6 + 8);
            if (v8)
            {
              do
              {
                v9 = *(v8 + 24);
                std::vector<llvm::User *>::push_back[abi:nn200100](&v10, &v9);
                v8 = *(v8 + 8);
              }

              while (v8);
              goto LABEL_4;
            }
          }
        }
      }
    }

    *this = llvm::PointerType::getWithSamePointeeType(*this, 0x40);
    if (v4)
    {
      v11 = v4;
      operator delete(v4);
    }
  }
}

uint64_t AGCLLVMObject::AddPositionIndependentCodeMetadata(AGCLLVMObject *this)
{
  v2 = *(this + 267);
  v18 = "llvm.module.flags";
  v19 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, &v18);
  if (NamedMetadata)
  {
    v4 = NamedMetadata;
    for (i = 0; i < llvm::NamedMDNode::getNumOperands(v4); ++i)
    {
      Operand = llvm::NamedMDNode::getOperand(v4);
      v7 = *(Operand + 8);
      if (Operand + 8 - 8 * v7 != Operand)
      {
        v8 = Operand;
        v9 = 8 - 8 * v7;
        while (1)
        {
          v10 = *(v8 + v9);
          if (!*v10)
          {
            String = llvm::MDString::getString(v10);
            if (v12 == 9 && *String == 0x6576654C20434950 && *(String + 8) == 108)
            {
              break;
            }
          }

          v9 += 8;
          if (!v9)
          {
            goto LABEL_13;
          }
        }

        v15 = *(this + 238);
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        llvm::MDNode::replaceOperandWith();
        goto LABEL_16;
      }

LABEL_13:
      ;
    }
  }

  v14 = *(this + 267);
  llvm::Module::addModuleFlag();
LABEL_16:
  v16 = *(this + 267);
  return llvm::Module::getOrInsertNamedMetadata();
}

AGCLLVMObject *AGCLLVMObject::setDylibLinkage(AGCLLVMObject *this, llvm::Value *a2)
{
  llvm::GlobalValue::setLinkage(this, 10);
  *(this + 80) &= ~1u;
  llvm::Constant::getNullValue(*(this + 3), v3);
  llvm::GlobalVariable::setInitializer();
  return this;
}

uint64_t AGCLLVMObject::getDylibBuiltinPerCommandStateVar(AGCLLVMObject *this)
{
  result = *(this + 284);
  if (!result)
  {
    if ((*(*this + 80))(this) == 7 || (*(*this + 80))(this) == 22 || (*(*this + 80))(this) == 8 || (*(*this + 80))(this) == 3 || (*(*this + 80))(this) == 4)
    {
      v3 = (*(**(*(this + 271) + 920) + 672))(*(*(this + 271) + 920), 0);
    }

    else
    {
      v3 = (*(**(*(this + 271) + 920) + 384))(*(*(this + 271) + 920), 0);
    }

    v4 = v3;
    v5 = *(this + 238);
    v6 = llvm::PointerType::get();
    v9 = "agc.dylib_builtin_percommand_state_base";
    v10 = 259;
    GlobalBufferBinding = AGCLLVMObject::createGlobalBufferBinding(this, v6, &v9, v4, 0);
    if ((*(*this + 80))(this) == 8)
    {
      AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v8);
      (*(**(*(this + 271) + 928) + 152))(*(*(this + 271) + 928));
      AGCLLVMObject::addDylibBinding(this, GlobalBufferBinding);
    }

    llvm::ValueHandleBase::operator=((this + 2256), GlobalBufferBinding);
    return *(this + 284);
  }

  return result;
}

llvm::Value *AGCLLVMObject::buildReadDynamicLIBSize(uint64_t a1, __int128 *a2)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v9, a1 + 1712);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 1896);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1 + 1704);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 1712, *(inserted + 24), inserted, 0, 0, v7);
}

uint64_t std::__tree<llvm::Function *>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void AGCLLVMObject::createAndBindDylibResources(AGCLLVMObject *this, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = (*(**(*(this + 271) + 928) + 16))(*(*(this + 271) + 928));
  v5 = (*(**(*(this + 271) + 928) + 24))(*(*(this + 271) + 928));
  v6 = (*(**(*(this + 271) + 928) + 32))(*(*(this + 271) + 928));
  v7 = (*(**(*(this + 271) + 928) + 40))(*(*(this + 271) + 928));
  v8 = (*(**(*(this + 271) + 928) + 48))(*(*(this + 271) + 928));
  v9 = (*(**(*(this + 271) + 928) + 56))(*(*(this + 271) + 928));
  v10 = (*(**(*(this + 271) + 928) + 72))(*(*(this + 271) + 928));
  v11 = (*(**(*(this + 271) + 928) + 96))(*(*(this + 271) + 928));
  v31 = v33;
  v32 = 0x2000000008;
  v33[1] = v4;
  v33[2] = 1;
  v33[3] = v5;
  v33[4] = 2;
  v33[5] = v6;
  v33[6] = 3;
  v33[7] = v7;
  v33[8] = 4;
  v33[9] = v8;
  v33[10] = 5;
  v33[11] = v9;
  v33[12] = 7;
  v33[13] = v10;
  v33[14] = 8;
  v33[15] = v11;
  v33[0] = 0;
  if (a2)
  {
    v12 = 0;
    do
    {
      v13 = (*(**(*(this + 271) + 928) + 152))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v12 + 17) | ((v12 + v13) << 32));
      ++v12;
    }

    while (a2 != v12);
  }

  if ((*(*this + 80))(this) != 27 && (*(*this + 80))(this) != 28)
  {
    v14 = (*(**(*(this + 271) + 928) + 80))(*(*(this + 271) + 928));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v14 << 32) | 9);
    v15 = (*(**(*(this + 271) + 928) + 64))(*(*(this + 271) + 928));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v15 << 32) | 6);
    v16 = (*(**(*(this + 271) + 928) + 88))(*(*(this + 271) + 928));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v16 << 32) | 0x10);
  }

  v17 = *(this + 271);
  if (*(v17 + 1908))
  {
    if ((*(this + 4577) & 1) == 0)
    {
      v18 = (*(**(v17 + 928) + 104))(*(v17 + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v18 << 32) | 0xA);
      v19 = (*(**(*(this + 271) + 928) + 112))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v19 << 32) | 0xB);
      v20 = (*(**(*(this + 271) + 928) + 120))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v20 << 32) | 0xC);
      v21 = (*(**(*(this + 271) + 928) + 128))(*(*(this + 271) + 928));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v21 << 32) | 0xD);
      if ((*(*this + 80))(this) != 27 && (*(*this + 80))(this) != 28)
      {
        v22 = (*(**(*(this + 271) + 928) + 144))(*(*(this + 271) + 928));
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v22 << 32) | 0xF);
        v23 = *(this + 271);
        if (*(v23 + 1946) == 1)
        {
          v24 = (*(**(v23 + 928) + 136))(*(v23 + 928));
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, (v24 << 32) | 0xE);
        }
      }
    }
  }

  v25 = v31;
  if (v32)
  {
    v26 = 8 * v32;
    do
    {
      v27 = (*(*this + 248))(this, *v25);
      if (v27)
      {
        v29 = v27;
        AGCLLVMObject::setDylibLinkage(v27, v28);
        AGCLLVMObject::addDylibBinding(this, v29);
      }

      ++v25;
      v26 -= 8;
    }

    while (v26);
    v25 = v31;
  }

  if (v25 != v33)
  {
    free(v25);
  }

  v30 = *MEMORY[0x277D85DE8];
}

llvm::Type *RewriteAdressSpacePass::TypeRemapper::remapType(RewriteAdressSpacePass::TypeRemapper *this, llvm::Type *a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v5 = this + 16;
  v4 = *(this + 2);
  v6 = *(this + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  LODWORD(v7) = ((a2 >> 4) ^ (a2 >> 9)) & (v6 - 1);
  v8 = (v4 + 16 * v7);
  v9 = *v8;
  if (*v8 != a2)
  {
    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v7 + v11++;
      v7 = v12 & (v6 - 1);
      v9 = *(v4 + 16 * v7);
      if (v9 == a2)
      {
        v8 = (v4 + 16 * v7);
        goto LABEL_3;
      }
    }

LABEL_9:
    v13 = *(a2 + 2);
    if (a2 && v13 == 17)
    {
      v14 = (*(*this + 24))(this, *(a2 + 3));
      v15 = llvm::ArrayType::get(v14, *(a2 + 4));
LABEL_12:
      v10 = v15;
      goto LABEL_20;
    }

    if (a2 && v13 == 14)
    {
      v16 = *(a2 + 2);
      v17 = (v16 + 8 * *(a2 + 3));
      v40 = v42;
      v41 = 0x800000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v40, (v16 + 8), v17);
      if (v41)
      {
        v18 = v40;
        v19 = 8 * v41;
        do
        {
          *v18 = (*(*this + 24))(this, *v18);
          ++v18;
          v19 -= 8;
        }

        while (v19);
      }

      (*(*this + 24))(this, **(a2 + 2));
      v20 = *(a2 + 2);
      v10 = llvm::FunctionType::get();
      v21 = v40;
      if (v40 != v42)
      {
LABEL_19:
        free(v21);
      }
    }

    else
    {
      if (a2 && v13 == 15)
      {
        if (llvm::Type::isOpaquePointerTy(a2))
        {
          v28 = *(a2 + 2);
          if (*(this + 2) == v28 >> 8)
          {
            v29 = *(this + 3);
          }

          else
          {
            v29 = (v28 >> 8);
          }

          v15 = llvm::PointerType::get(*a2, v29);
        }

        else
        {
          (*(*this + 24))(this, **(a2 + 2));
          if (*(this + 2) == *(a2 + 2) >> 8)
          {
            v38 = *(this + 3);
          }

          v15 = llvm::PointerType::get();
        }

        goto LABEL_12;
      }

      if (a2 && v13 == 16)
      {
        v10 = a2;
        if ((v13 & 0x100) != 0)
        {
          v30 = *(a2 + 2);
          v31 = &v30[8 * *(a2 + 3)];
          v40 = v42;
          v41 = 0x800000000;
          llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v40, v30, v31);
          if (v41)
          {
            v32 = v40;
            v33 = 8 * v41;
            do
            {
              *v32 = (*(*this + 24))(this, *v32);
              ++v32;
              v33 -= 8;
            }

            while (v33);
          }

          if ((*(a2 + 2) & 0x400) != 0)
          {
            v39 = *a2;
            v35 = llvm::StructType::get();
          }

          else
          {
            llvm::StructType::getName(a2);
            v34 = *(a2 + 2);
            v35 = llvm::StructType::create();
          }

          v10 = v35;
          v21 = v40;
          if (v40 != v42)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v10 = a2;
        if (a2)
        {
          v10 = a2;
          if ((v13 & 0xFE) == 0x12)
          {
            (*(*this + 24))(this, *(a2 + 3));
            v36 = *(a2 + 8);
            v37 = *(a2 + 8);
            v15 = llvm::VectorType::get();
            goto LABEL_12;
          }
        }
      }
    }

LABEL_20:
    v40 = 0;
    v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 2), *(this + 8), a2, &v40);
    v23 = v40;
    if (v22)
    {
LABEL_26:
      v23[1] = v10;
      goto LABEL_27;
    }

    v24 = *(this + 6);
    v25 = *(this + 8);
    if (4 * v24 + 4 >= 3 * v25)
    {
      v25 *= 2;
    }

    else if (v25 + ~v24 - *(this + 7) > v25 >> 3)
    {
LABEL_23:
      ++*(this + 6);
      if (*v23 != -4096)
      {
        --*(this + 7);
      }

      *v23 = a2;
      v23[1] = 0;
      goto LABEL_26;
    }

    llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::grow(v5, v25);
    v40 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 2), *(this + 8), a2, &v40);
    v23 = v40;
    goto LABEL_23;
  }

LABEL_3:
  if (v8 == (v4 + 16 * v6))
  {
    goto LABEL_9;
  }

  v10 = v8[1];
LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

void RewriteAdressSpacePass::TypeRemapper::~TypeRemapper(llvm **this)
{
  *this = &unk_2825B01B0;
  llvm::deallocate_buffer(this[2], (16 * *(this + 8)));

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B01B0;
  llvm::deallocate_buffer(this[2], (16 * *(this + 8)));
}

uint64_t RewriteAdressSpacePass::runOnModule(RewriteAdressSpacePass *this, llvm::Module *a2)
{
  v55[32] = *MEMORY[0x277D85DE8];
  v53 = v55;
  v54 = 0x2000000000;
  v49 = 128;
  v47 = MEMORY[0x20F330650](0x2000, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(&v47);
  LOBYTE(v50) = 0;
  v52 = 0;
  for (i = *(a2 + 4); i != (a2 + 24); i = i[1])
  {
    if (i)
    {
      v5 = (i - 7);
    }

    else
    {
      v5 = 0;
    }

    llvm::Module::materialize();
    if (llvm::GlobalValue::isDeclaration(v5))
    {
      if (*(v5 + 36))
      {
        v6 = *(v5 + 24);
        v41 = &v43;
        v42 = 0x800000000;
        llvm::Intrinsic::getIntrinsicInfoTableEntries();
        v35[0] = &v36;
        v35[1] = 0x800000000;
        llvm::Intrinsic::matchIntrinsicSignature();
        Declaration = llvm::Intrinsic::getDeclaration();
        if (v5 != Declaration)
        {
          v8 = Declaration;
          v9 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v47, v5);
          llvm::ValueHandleBase::operator=(v9, v8);
        }

        if (v35[0] != &v36)
        {
          free(v35[0]);
        }

        if (v41 != &v43)
        {
          free(v41);
        }
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v53, v5);
    }
  }

  v43 = 128;
  v41 = MEMORY[0x20F330650](0x2000, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(&v41);
  LOBYTE(v44) = 0;
  v46 = 0;
  if (v54)
  {
    v10 = v53;
    v11 = 8 * v54;
    do
    {
      v12 = *v10++;
      v13 = RewriteAdressSpacePass::TypeRemapper::remapType((this + 32), *(v12 + 24));
      v14 = *(v12 + 32);
      v38 = 257;
      v15 = llvm::User::operator new(0x78);
      MEMORY[0x20F331170](v15, v13, v14 & 0xF, 0xFFFFFFFFLL, v35, a2);
      v16 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v41, v12);
      llvm::ValueHandleBase::operator=(v16, v15);
      v11 -= 8;
    }

    while (v11);
    if (v54)
    {
      v17 = v53;
      v18 = (v53 + 8 * v54);
      do
      {
        v19 = *v17;
        v20 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v41, *v17)[2];
        v36 = 128;
        v35[0] = MEMORY[0x20F330650](0x2000, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(v35);
        LOBYTE(v37) = 0;
        v40 = 0;
        v21 = v47;
        if (v48)
        {
          if (v49)
          {
            v22 = v49 << 6;
            while ((*(v21 + 3) | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v21 = (v21 + 64);
              v22 -= 64;
              if (!v22)
              {
                goto LABEL_26;
              }
            }
          }
        }

        else
        {
LABEL_26:
          v21 = (v47 + 64 * v49);
        }

        llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert<llvm::ValueMapIterator<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::Value const*>>(v35, v21, v47 + 64 * v49, v47 + 64 * v49);
        v23 = v41;
        if (v42)
        {
          if (v43)
          {
            v24 = v43 << 6;
            while ((*(v23 + 3) | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v23 = (v23 + 64);
              v24 -= 64;
              if (!v24)
              {
                goto LABEL_32;
              }
            }
          }
        }

        else
        {
LABEL_32:
          v23 = (v41 + 64 * v43);
        }

        llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert<llvm::ValueMapIterator<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::Value const*>>(v35, v23, v41 + 64 * v43, v41 + 64 * v43);
        if (*(v19 + 9))
        {
          llvm::Function::BuildLazyArguments(v19);
        }

        v25 = *(v19 + 11);
        if (*(v20 + 18))
        {
          llvm::Function::BuildLazyArguments(v20);
        }

        for (j = *(v20 + 88); ; j += 40)
        {
          if (*(v19 + 9))
          {
            llvm::Function::BuildLazyArguments(v19);
          }

          if (v25 == (*(v19 + 11) + 40 * *(v19 + 12)))
          {
            break;
          }

          if (*(v20 + 18))
          {
            llvm::Function::BuildLazyArguments(v20);
          }

          if (j == *(v20 + 88) + 40 * *(v20 + 96))
          {
            break;
          }

          v27 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v35, v25);
          llvm::ValueHandleBase::operator=(v27, j);
          v25 = (v25 + 40);
        }

        llvm::CloneFunctionInto();
        if (v40 == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v37);
          llvm::deallocate_buffer(v37, (16 * v39));
          v40 = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v35[0], v36);
        llvm::deallocate_buffer(v35[0], (v36 << 6));
        ++v17;
      }

      while (v17 != v18);
      if (v54)
      {
        v28 = v53;
        v29 = 8 * v54;
        do
        {
          v30 = *v28++;
          v31 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](&v41, v30)[2];
          llvm::Value::takeName();
          v32 = *v30;
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
          llvm::Function::eraseFromParent(v30);
          v29 -= 8;
        }

        while (v29);
      }
    }
  }

  if (v46 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v44);
    llvm::deallocate_buffer(v44, (16 * v45));
    v46 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v41, v43);
  llvm::deallocate_buffer(v41, (v43 << 6));
  if (v52 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v50);
    llvm::deallocate_buffer(v50, (16 * v51));
    v52 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(v47, v49);
  llvm::deallocate_buffer(v47, (v49 << 6));
  if (v53 != v55)
  {
    free(v53);
  }

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

void llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert<llvm::ValueMapIterator<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::Value const*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    v15 = v4;
    v16 = v5;
    v8 = a2;
    do
    {
      v12 = *(v8 + 24);
      llvm::ValueHandleBase::ValueHandleBase(v13, 3u, (v8 + 40));
      llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(&v11, a1, &v12);
      if (v14 != -8192 && v14 != -4096 && v14 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v13);
      }

      do
      {
        v8 += 64;
      }

      while (v8 != a3 && (*(v8 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v8 != a4);
  }
}

void RewriteAdressSpacePass::~RewriteAdressSpacePass(RewriteAdressSpacePass *this)
{
  *this = &unk_2825B01E0;
  *(this + 4) = &unk_2825B01B0;
  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
  MEMORY[0x20F32FD10](this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B01E0;
  *(this + 4) = &unk_2825B01B0;
  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));

  JUMPOUT(0x20F32FD10);
}

uint64_t AGCLLVMTargetLowerer::getIntIntrinsicName(uint64_t a1, llvm::Type *this)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(this);
  result = 0;
  HIDWORD(v6) = ScalarSizeInBits - 8;
  LODWORD(v6) = ScalarSizeInBits - 8;
  v5 = v6 >> 3;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      a1 += 16;
    }

    else
    {
      if (v5 != 7)
      {
        return result;
      }

      a1 += 24;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return result;
    }

    a1 += 8;
  }

  return *a1;
}

uint64_t llvm::IRBuilderBase::CreateNeg(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    Neg = (*(**(this + 9) + 192))(*(this + 9), a2, 0, 0);
    if (Neg)
    {
      v6 = *(Neg + 16) >= 0x1Cu;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Neg, a3);
    }
  }

  else
  {
    Neg = llvm::BinaryOperator::CreateNeg();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Neg, a3);
  }

  return Neg;
}

llvm::Value *AGCLLVMTargetBuilder::getMinMaxConstants(AGCLLVMTargetBuilder *this, llvm::Type *a2, int a3, llvm::Value **a4, llvm::Value **a5, llvm::Type **a6)
{
  llvm::Type::getScalarSizeInBits(a2);
  *a6 = llvm::IntegerType::get();
  result = llvm::Type::getScalarSizeInBits(a2);
  HIDWORD(v13) = result - 8;
  LODWORD(v13) = result - 8;
  v12 = v13 >> 3;
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 7)
      {
        return result;
      }

      *a6 = a2;
      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return result;
      }

      if (a3)
      {
        goto LABEL_13;
      }

LABEL_14:
      *a4 = llvm::ConstantInt::get();
      v15 = *a6;
      result = llvm::ConstantInt::get();
      goto LABEL_15;
    }

    if (!a3)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  *a4 = llvm::ConstantInt::getSigned();
  v14 = *a6;
  result = llvm::ConstantInt::getSigned();
LABEL_15:
  *a5 = result;
  return result;
}

uint64_t AGCLLVMTargetBuilder::buildAddSat(AGCLLVMTargetBuilder *this, llvm::Type **a2, llvm::Type **a3, int a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = 1144;
  if (a4)
  {
    v9 = 1112;
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(this + 58) + v9, *a2);
  if (!IntIntrinsicName)
  {
    v43 = 0;
    v44 = 0;
    v42 = 0;
    AGCLLVMTargetBuilder::getMinMaxConstants(*(this + 9), v8, a4, &v44, &v43, &v42);
    if (a4)
    {
      v15 = v42;
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v42);
      if (ScalarSizeInBits > llvm::Type::getScalarSizeInBits(v8))
      {
        v46 = 257;
        SExtOrTrunc = llvm::IRBuilderBase::CreateSExtOrTrunc((this + 8), a2, v15, v45);
        v46 = 257;
        v18 = llvm::IRBuilderBase::CreateSExtOrTrunc((this + 8), a3, v15, v45);
        v46 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((this + 8), SExtOrTrunc, v18, v45);
        v46 = 257;
        llvm::IRBuilderBase::CreateICmp(this + 1, 38, Add, v43, v45);
        v48 = 257;
        llvm::IRBuilderBase::CreateICmp(this + 1, 40, Add, v44, v47);
        llvm::IRBuilderBase::CreateSelect();
        Select = llvm::IRBuilderBase::CreateSelect();
        v21 = *a2;
        v46 = 257;
        result = llvm::IRBuilderBase::CreateSExtOrTrunc((this + 8), Select, v21, v45);
        goto LABEL_11;
      }

      v46 = 257;
      v24 = llvm::IRBuilderBase::CreateAdd((this + 8), a2, a3, v45);
      llvm::Type::getScalarSizeInBits(v8);
      v46 = 257;
      v25 = *a2;
      v26 = llvm::ConstantInt::get();
      LShr = llvm::IRBuilderBase::CreateLShr((this + 8), a2, v26, v45);
      llvm::Type::getScalarSizeInBits(v8);
      v46 = 257;
      v28 = *a3;
      v29 = llvm::ConstantInt::get();
      v30 = llvm::IRBuilderBase::CreateLShr((this + 8), a3, v29, v45);
      v46 = 257;
      Xor = llvm::IRBuilderBase::CreateXor(this + 1, LShr, v30, v45);
      v32 = llvm::ConstantInt::get();
      v48 = 257;
      v33 = llvm::IRBuilderBase::CreateXor(this + 1, Xor, v32, v47);
      llvm::Type::getScalarSizeInBits(v8);
      v46 = 257;
      v34 = *v24;
      v35 = llvm::ConstantInt::get();
      v36 = llvm::IRBuilderBase::CreateLShr((this + 8), v24, v35, v45);
      v46 = 257;
      v37 = llvm::IRBuilderBase::CreateXor(this + 1, LShr, v36, v45);
      v48 = 257;
      v38 = llvm::IRBuilderBase::CreateAnd((this + 8), v33, v37, v47);
      v39 = llvm::ConstantInt::get();
      v46 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 40, v24, v39, v45);
      v48 = 257;
      llvm::IRBuilderBase::CreateSelect();
      v40 = llvm::ConstantInt::get();
      v46 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 32, v38, v40, v45);
      v48 = 257;
    }

    else
    {
      v46 = 257;
      v22 = llvm::IRBuilderBase::CreateAdd((this + 8), a2, a3, v45);
      v46 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 36, v22, a2, v45);
      v23 = *a2;
      v48 = 257;
      llvm::IRBuilderBase::CreateZExtOrTrunc((this + 8), v43, v23, v47);
    }

    result = llvm::IRBuilderBase::CreateSelect();
    goto LABEL_11;
  }

  v11 = IntIntrinsicName;
  v12 = strlen(IntIntrinsicName);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v11, v12, v8, v8, v8);
  v47[0] = a2;
  v47[1] = a3;
  v46 = 257;
  result = llvm::IRBuilderBase::CreateCall(this + 8, *(v13 + 24), v13, v47, 2, v45);
LABEL_11:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Type **llvm::IRBuilderBase::CreateSExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 40;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

llvm::Value *AGCLLVMTargetBuilder::CreateBarrier(uint64_t *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = a1[58];
  v3 = *(v2 + 1032);
  if (v3)
  {
    v4 = strlen(*(v2 + 1032));
  }

  else
  {
    v4 = 0;
  }

  v5 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v3, v4, a1[18], a1[24], a1[24]);
  v6 = a1[24];
  v11[0] = llvm::ConstantInt::get();
  v7 = a1[24];
  v11[1] = llvm::ConstantInt::get();
  v10[16] = 257;
  result = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v5 + 24), v5, v11, 2, v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMTargetConfig::createTensorBlitShader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGCLLVMObject::readBitcode(a3, "tensor_blit", 11, 1);
  {
    {
      AGCLLVMDriverTensorBlitShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCTensorBlitState const*)::computeCS = 0;
      *algn_27C8D9988 = 0;
      qword_27C8D9990 = 0;
    }
  }

  operator new();
}

void AGCLLVMTargetConfig::createUberBlitShader(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = off_277E20A40[*a4 & 3];
  v6 = strlen(v5);
  AGCLLVMObject::readBitcode(a3, v5, v6, 0);
  {
    {
      qword_27C8D9938 = 0;
      *&dword_27C8D9940 = 512;
      AGCLLVMDriverUberBlitShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCUberBlitState const*)::computeCS = 0;
    }
  }

  operator new();
}

void AGCLLVMTargetConfig::createBVHBuilderShader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v7 = *a4 & 0x3FFFFFFF;
  v8 = off_277E20450[v7];
  v9 = strlen(v8);
  v17 = v19;
  v18 = xmmword_20E70C500;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v8, &v8[v9]);
  if (v7 > 0x79)
  {
    if ((*(a4 + 3) & 0x40) != 0)
    {
      v14 = "_assert";
      v15 = "";
    }

    else
    {
      v14 = "_release";
      v15 = "";
    }

    goto LABEL_36;
  }

  if ((v7 - 103) <= 0x12)
  {
    if (*a4 < 0)
    {
      v10 = "_legacy";
    }

    else
    {
      v10 = "_temporal";
    }

    v11 = 7;
    if (*a4 >= 0)
    {
      v11 = 9;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v10, &v10[v11]);
  }

  if ((*(a4 + 3) & 0x40) != 0)
  {
    v12 = "_assert";
    v13 = "";
  }

  else
  {
    v12 = "_release";
    v13 = "";
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v12, v13);
  {
    AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride = 0;
  }

  if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride < 1)
  {
    v16 = *(*(a2 + 32) + 28);
    if (v16 > 33)
    {
      if (v16 != 34)
      {
        if (v16 == 35 || v16 == 38)
        {
LABEL_33:
          v14 = "_gen3";
          goto LABEL_35;
        }

LABEL_37:
        AGCLLVMObject::readBitcode(a3, v17, v18, 0);
        {
          {
            AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::computeCS = 0;
            *algn_27C8D9968 = 0;
            qword_27C8D9970 = 0;
          }
        }

        operator new();
      }

LABEL_34:
      v14 = "_gen2";
      goto LABEL_35;
    }

    if (v16 != 24 && v16 != 31)
    {
      if (v16 != 32)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride > 2)
    {
      if ((AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride - 3) >= 2)
      {
        if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride != 5)
        {
          goto LABEL_37;
        }

        v14 = "_gen5";
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride != 1)
    {
      if (AGCLLVMDriverBVHBuilderComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBVHBuilderState const*)::riaBvhGenOverride != 2)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  v14 = "_gen1";
LABEL_35:
  v15 = v14 + 5;
LABEL_36:
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v17, v14, v15);
  goto LABEL_37;
}

void AGCLLVMTargetConfig::createComputeControlFlowPredicateShader(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  {
    AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::create(AGCLLVMCtx &,llvm::LLVMContext &,unsigned int,BOOL,BOOL)::computeCS = 0;
    *algn_27C8D9918 = 0;
    qword_27C8D9920 = 0;
  }

  ComputeControlFlowBitcodeFileName = getComputeControlFlowBitcodeFileName(*(a2 + 32));
  v8 = ComputeControlFlowBitcodeFileName;
  if (ComputeControlFlowBitcodeFileName)
  {
    v9 = strlen(ComputeControlFlowBitcodeFileName);
  }

  else
  {
    v9 = 0;
  }

  AGCLLVMObject::readBitcode(a3, v8, v9, 1);
  operator new();
}

void AGCLLVMTargetConfig::createComputeProgressMarkerShader(AGCLLVMTargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  {
    {
      AGCLLVMDriverComputeProgressMarkerShaderLegacy::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D98F8 = 0;
      qword_27C8D9900 = 0;
    }
  }

  AGCLLVMObject::readBitcode(a3, "progress_marker_compute", 23, 0);
  operator new();
}

llvm::Value *AGCLLVMTargetLowerer::buildUnpackFloatFormat(void *a1, unsigned int a2, llvm::Type *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = &formats + 9 * a2;
  v12 = *v11;
  llvm::FixedVectorType::get();
  InsertElement = llvm::UndefValue::get();
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v15 = (*(*a1 + 1488))(a1, a4, v11[i + 5], v11[i + 1], a5, a6);
      v16 = AGCLLVMBuilder::truncateToSmall(a1, v15, a3);
      v21 = 257;
      v17 = a1[25];
      v18 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v16, v18, v20);
    }
  }

  return InsertElement;
}

llvm::Value *AGCLLVMTargetLowerer::buildPackFloatFormat(AGCLLVMBuilder *a1, unsigned int a2, llvm::Type *a3, llvm::Value *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 25);
  v13 = llvm::ConstantInt::get();
  v14 = &formats + 9 * a2;
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    do
    {
      v23 = 257;
      v17 = *(a1 + 25);
      v18 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a4, v18, v22);
      v20 = (*(*a1 + 1496))(a1, Element, v14[v16 + 1], v14[v16 + 5], a5, a6);
      v23 = 257;
      v13 = llvm::IRBuilderBase::CreateOr((a1 + 8), v13, v20, v22);
      ++v16;
    }

    while (v15 != v16);
  }

  return AGCLLVMBuilder::truncateToSmall(a1, v13, a3);
}

uint64_t AGCLLVMTargetLowerer::buildUnpack1010102(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  return (*(*a1 + 1536))(a1, v5, a3, a2);
}

llvm::Value *AGCLLVMTargetLowerer::buildPackUIntTo1010102(AGCLLVMTargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 25);
  v5 = llvm::ConstantInt::get();
  v6 = 0;
  for (i = 0; i != 4; ++i)
  {
    v20 = 257;
    v8 = *(this + 25);
    v9 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v9, v19);
    if (i == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 10;
    }

    v12 = AGCLLVMBuilder::clampToWidth(this, Element, v11, 0);
    v13 = *(this + 25);
    v20 = 257;
    IntCast = llvm::IRBuilderBase::CreateIntCast(this + 1, v12, v13, 0, v19);
    v20 = 257;
    v15 = *IntCast;
    v16 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((this + 8), IntCast, v16, v19);
    v20 = 257;
    result = llvm::IRBuilderBase::CreateOr((this + 8), v5, Shl, v19);
    v5 = result;
    v6 += 10;
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildPackFromFloat(AGCLLVMTargetLowerer *this, llvm::Value *a2, int a3, int a4, BOOL a5, int a6)
{
  v10 = AGCLLVMBuilder::f32Extend(this, a2, 1);
  v30 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (this + 8));
  v32 = *(this + 26);
  v11 = *(this + 21);
  v12 = llvm::ConstantFP::get();
  v13 = *(this + 21);
  v14 = llvm::ConstantFP::get();
  v15 = (*(*this + 80))(this, &v30, v10, v12, v14, 0);
  if (v31)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = *(this + 21);
  v17 = llvm::ConstantFP::get();
  v29 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, v15, v17, v28);
  v18 = *(this + 172);
  if (v18)
  {
    v19 = strlen(*(this + 172));
  }

  else
  {
    v19 = 0;
  }

  v20 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v18, v19, *(this + 25), *(this + 21));
  v29 = 257;
  v21 = llvm::IRBuilderBase::CreateCall(this + 8, *(v20 + 24), v20, &FMul, 1, v28);
  v22 = v21;
  if ((a4 + a3) <= 0x1F && a6)
  {
    v29 = 257;
    v23 = *v21;
    v24 = llvm::ConstantInt::get();
    v22 = llvm::IRBuilderBase::CreateAnd((this + 8), v22, v24, v28);
  }

  v29 = 257;
  v25 = *v22;
  v26 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateShl((this + 8), v22, v26, v28);
}

uint64_t AGCLLVMTargetLowerer::buildUnpackToFloat(AGCLLVMTargetLowerer *this, llvm::Value *a2, int a3, int a4, int a5, int a6)
{
  v36 = 257;
  v12 = *a2;
  v13 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), a2, v13, v35);
  v15 = *(this + 24);
  v36 = 257;
  IntCast = llvm::IRBuilderBase::CreateIntCast(this + 1, LShr, v15, 0, v35);
  v17 = IntCast;
  if (a6)
  {
    v36 = 257;
    v18 = *IntCast;
    v19 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((this + 8), v17, v19, v35);
    v36 = 257;
    v21 = *Shl;
    v22 = llvm::ConstantInt::get();
    AShr = llvm::IRBuilderBase::CreateAShr((this + 8), Shl, v22, v35);
    if (a5)
    {
      v24 = *(this + 24);
      v25 = llvm::ConstantInt::get();
      AShr = AGCLLVMBuilder::buildICmpSel(this, AShr, v25, 38);
    }

    v26 = *(this + 21);
    v36 = 257;
    SIToFP = llvm::IRBuilderBase::CreateSIToFP((this + 8), AShr, v26, v35);
  }

  else
  {
    if ((a4 + a3) <= 0x1F)
    {
      v36 = 257;
      v28 = *IntCast;
      v29 = llvm::ConstantInt::get();
      v17 = llvm::IRBuilderBase::CreateAnd((this + 8), v17, v29, v35);
    }

    v30 = *(this + 21);
    v36 = 257;
    SIToFP = llvm::IRBuilderBase::CreateUIToFP((this + 8), v17, v30, v35);
  }

  v31 = SIToFP;
  if (a5)
  {
    v32 = *(this + 21);
    v33 = llvm::ConstantFP::get();
    v36 = 257;
    return llvm::IRBuilderBase::CreateFMul(this + 8, v31, v33, v35);
  }

  return v31;
}

llvm::Value *AGCLLVMTargetLowerer::buildUnpackNorm16(AGCLLVMTargetLowerer *this, llvm::Value *a2, llvm::Function *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12 && (v7 = *(v6 + 32), v7 != 1))
  {
    v12 = *(this + 21);
    v13 = *(v6 + 32);
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v23 = 257;
        v15 = *(this + 25);
        v16 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v16, v22);
        v24 = AGCLLVMBuilder::extendVector(this, Element, 2);
        v25 = 0;
        v18 = *(this + 25);
        v25 = llvm::ConstantInt::get();
        v23 = 257;
        v19 = llvm::IRBuilderBase::CreateCall(this + 8, *(a3 + 3), a3, &v24, 2, v22);
        v23 = 257;
        v20 = *(this + 25);
        v21 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v19, v21, v22);
      }
    }
  }

  else
  {
    v24 = AGCLLVMBuilder::extendVector(this, a2, 2);
    v8 = *(this + 25);
    v25 = llvm::ConstantInt::get();
    v23 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 8, *(a3 + 3), a3, &v24, 2, v22);
  }

  v10 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

llvm::Value *AGCLLVMTargetLowerer::buildUnpackNorm8(AGCLLVMTargetLowerer *this, llvm::Value *a2, llvm::Function *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) != 0x12)
  {
    v6 = AGCLLVMBuilder::extendVector(this, a2, 4);
    goto LABEL_8;
  }

  v5 = *(*a2 + 32);
  v6 = AGCLLVMBuilder::extendVector(this, a2, 4);
  if (v5 == 1)
  {
LABEL_8:
    v19 = v6;
    v14 = *(this + 25);
    v20 = llvm::ConstantInt::get();
    v18 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 8, *(a3 + 3), a3, &v19, 2, v17);
    goto LABEL_9;
  }

  v7 = *(this + 21);
  llvm::FixedVectorType::get();
  InsertElement = llvm::UndefValue::get();
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v19 = v6;
      v20 = 0;
      v10 = *(this + 25);
      v20 = llvm::ConstantInt::get();
      v18 = 257;
      v11 = llvm::IRBuilderBase::CreateCall(this + 8, *(a3 + 3), a3, &v19, 2, v17);
      v18 = 257;
      v12 = *(this + 25);
      v13 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v11, v13, v17);
    }
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

double AGCLLVMTargetLowerer::createShaderCoreBindings@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildCurveIntersectionTest@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildBoundingBoxIntersectionTest@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildTriangleIntersectionTest@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildGetUnpackedSCSLayout@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildPayloadStridesFromConfigurationBuffer@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double AGCLLVMTargetLowerer::buildIntersectRayWithResults@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AGCLLVMTargetLowerer::buildSCSConfiguration@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v5 = (a1 + 16);
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  if (v4)
  {
    result = llvm::MetadataTracking::retrack();
    *v5 = 0;
  }

  *(a2 + 24) = *(a1 + 24);
  return result;
}

double AGCLLVMTargetLowerer::readRayPointerT@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void AGCLLVMTargetLowerer::createGPUVAMasks(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

uint64_t AGCLLVMTargetLowerer::buildTextureOOBReadSWWA(void *a1, uint64_t a2, void *a3, AGCLLVMUserObject *a4, void *a5, int a6, int a7, int a8)
{
  v70 = *a2;
  v71 = *(a2 + 16);
  if (v71)
  {
    llvm::MetadataTracking::track();
  }

  v72 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v70);
  if (v71)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = a1[22];
  v17 = llvm::ConstantInt::get();
  if (a5[21])
  {
    v18 = AGCLLVMUserObject::buildImageArgumentPointer(a3, a4, 5u);
    v74 = 257;
    Load = AGCLLVMBuilder::CreateLoad(a1, v18, v73);
    v20 = a1[25];
    v21 = llvm::ConstantInt::get();
    v69 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), Load, v21, v68);
    v23 = a5[21];
    v24 = *v23;
    v74 = 257;
    ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 1), Sub, v24, v73);
    v69 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v23, ZExtOrTrunc, v68);
    v67 = 257;
    v17 = llvm::IRBuilderBase::CreateOr((a1 + 1), v17, ICmp, v66);
  }

  if (a6)
  {
    v27 = a3 + *(*a3 - 24);
    v28 = AGCLLVMUserObject::buildImageArgumentPointer(a3, a4, 2u);
    v74 = 257;
    v29 = AGCLLVMBuilder::CreateLoad((v27 + 1704), v28, v73);
    v30 = a3 + *(*a3 - 24);
    v74 = 257;
    v31 = *(v30 + 238);
    v32 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v30 + 1712), v29, v32, v73);
    v34 = a1[25];
    v35 = llvm::ConstantInt::get();
    v74 = 257;
    v36 = llvm::IRBuilderBase::CreateSub((a1 + 1), Element, v35, v73);
    v37 = a5[19];
    v38 = *v37;
    v74 = 257;
    v39 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 1), v36, v38, v73);
    v69 = 257;
    v40 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v37, v39, v68);
    v67 = 257;
    v17 = llvm::IRBuilderBase::CreateOr((a1 + 1), v17, v40, v66);
  }

  if (a7)
  {
    v41 = a5[29];
    v42 = *v41;
    v43 = llvm::ConstantInt::get();
    v74 = 257;
    v44 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v41, v43, v73);
    v69 = 257;
    v17 = llvm::IRBuilderBase::CreateOr((a1 + 1), v17, v44, v68);
  }

  if (a8)
  {
    v45 = AGCLLVMUserObject::buildImageArgumentPointer(a3, a4, 6u);
    v74 = 257;
    v46 = AGCLLVMBuilder::CreateLoad(a1, v45, v73);
    v47 = a1[25];
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateSub((a1 + 1), v46, v48, v68);
    v50 = a5[27];
    v51 = *v50;
    v74 = 257;
    v52 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 1), v49, v51, v73);
    v69 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v50, v52, v68);
    v67 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 1), v17, v53, v66);
  }

  v54 = a5[17];
  if ((*(*v54 + 8) & 0xFE) == 0x12)
  {
    v74 = 257;
    v55 = a1[25];
    v56 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v54, v56, v73);
    v57 = a5[17];
    v58 = *v57;
    if ((*(*v57 + 8) & 0xFE) == 0x12)
    {
      v58 = **(v58 + 16);
    }

    if (v58 != a1[25])
    {
      v59 = a1[24];
    }

    llvm::ConstantInt::get();
    v74 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v69 = 257;
    v61 = a1[25];
    v62 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v57, Select, v62, v68);
  }

  else
  {
    if (*v54 != a1[25])
    {
      v64 = a1[24];
    }

    llvm::ConstantInt::get();
    v65 = a5[17];
    v74 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  a5[17] = result;
  return result;
}

uint64_t AGCLLVMTargetLowerer::buildBarycentricCoords(void *a1, uint64_t a2, llvm::Value *a3, int a4)
{
  v35 = *a2;
  v36 = *(a2 + 16);
  if (v36)
  {
    llvm::MetadataTracking::track();
  }

  v37 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v35);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 == 3)
  {
    v34 = 257;
    v11 = a1[25];
    v12 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v12, v33);
    v34 = 257;
    v14 = a1[25];
    v15 = llvm::ConstantInt::get();
    v16 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v15, v33);
    v17 = a1[21];
    v18 = llvm::ConstantFP::get();
    v34 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd((a1 + 1), Element, v16, v33);
    v32[16] = 257;
    FSub = llvm::IRBuilderBase::CreateFSub((a1 + 1), v18, FAdd, v32);
    v21 = a1[34];
    v22 = llvm::UndefValue::get();
    v34 = 257;
    v23 = a1[25];
    v24 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v22, Element, v24, v33);
    v34 = 257;
    v26 = a1[25];
    v27 = llvm::ConstantInt::get();
    v28 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v16, v27, v33);
    v34 = 257;
    v29 = a1[25];
    v30 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v28, FSub, v30, v33);
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return 0;
    }

    v34 = 257;
    v8 = a1[25];
    v9 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a3, v9, v33);
  }

  return a3;
}

void AGCLLVMTargetLowerer::exceededResourceLimits(AGCLLVMTargetLowerer *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = a5 + a2;
  v13 = a6 + a3;
  v14 = a7 + a4;
  std::string::basic_string[abi:nn200100]<0>(&v65, &unk_20E75F419);
  v15 = (*(**(this + 115) + 24))(*(this + 115), a8);
  v16 = (*(**(this + 115) + 16))(*(this + 115));
  v17 = v16;
  if (v12 <= v15)
  {
    if (v14 <= 0x10 && v13 <= v16)
    {
      v31 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    std::to_string(&v59, v12);
    v18 = std::string::insert(&v59, 0, " buffers (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v60, "/");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = (*(**(this + 115) + 24))(*(this + 115), a8);
    std::to_string(&__p, v22);
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

    v25 = std::string::append(&v61, p_p, size);
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v62, ")");
    v28 = v27->__r_.__value_.__r.__words[2];
    v63 = *&v27->__r_.__value_.__l.__data_;
    v64 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63;
    }

    if (v64 >= 0)
    {
      v30 = HIBYTE(v64);
    }

    else
    {
      v30 = *(&v63 + 1);
    }

    std::string::append(&v65, v29, v30);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v13 > v17)
  {
    std::to_string(&v59, v13);
    v32 = std::string::insert(&v59, 0, " textures (");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v60, "/");
    v35 = v34->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = (*(**(this + 115) + 16))(*(this + 115));
    std::to_string(&__p, v36);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __p.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v61, v37, v38);
    v40 = v39->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v62, ")");
    v42 = v41->__r_.__value_.__r.__words[2];
    v63 = *&v41->__r_.__value_.__l.__data_;
    v64 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v43 = &v63;
    }

    else
    {
      v43 = v63;
    }

    if (v64 >= 0)
    {
      v44 = HIBYTE(v64);
    }

    else
    {
      v44 = *(&v63 + 1);
    }

    std::string::append(&v65, v43, v44);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v14 >= 0x11)
  {
    std::to_string(&v59, v14);
    v45 = std::string::insert(&v59, 0, " samplers (");
    v46 = v45->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v60, "/");
    v48 = v47->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v61, v49, v50);
    v52 = v51->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v62, ")");
    v54 = v53->__r_.__value_.__r.__words[2];
    v63 = *&v53->__r_.__value_.__l.__data_;
    v64 = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v55 = &v63;
    }

    else
    {
      v55 = v63;
    }

    if (v64 >= 0)
    {
      v56 = HIBYTE(v64);
    }

    else
    {
      v56 = *(&v63 + 1);
    }

    std::string::append(&v65, v55, v56);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  v31 = 1;
LABEL_80:
  *a9 = v31;
  v57 = (a9 + 8);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v57 = v65;
  }
}

void AGCLLVMTargetLowerer::buildConvertHFP8_ParseArgTypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t AGCLLVMTargetLowerer::getDisableTriangleMerging(AGCLLVMTargetLowerer *this, int a2, unsigned int a3, BOOL a4, unsigned int a5, const unsigned __int8 *a6)
{
  if (a3 > 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  return v6 | a5;
}

llvm::Value *AGCLLVMTargetLowerer::buildMovmsk(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
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

  v6 = *(a1 + 72);
  v7 = *(a1 + 936);
  v8 = llvm::IntegerType::get();
  v9 = *(a1 + 1624);
  if (v9)
  {
    v10 = strlen(*(a1 + 1624));
  }

  else
  {
    v10 = 0;
  }

  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v9, v10, *(a1 + 144), v8);
  v14 = 257;
  IntCast = llvm::IRBuilderBase::CreateIntCast((a1 + 8), a3, v8, 1, v13);
  v14 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(v11 + 24), v11, &IntCast, 1, v13);
}

llvm::Value *AGCLLVMTargetLowerer::buildDepthf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
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

  v5 = *(a1 + 1616);
  if (v5)
  {
    v6 = strlen(*(a1 + 1616));
  }

  else
  {
    v6 = 0;
  }

  v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v5, v6, *(a1 + 144), *(a1 + 168));
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(v7 + 24), v7, &v14, 1, v9);
}

uint64_t AGCLLVMTargetLowerer::buildGammaExpansion(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v34 = *a2;
  v35 = *(a2 + 16);
  if (v35)
  {
    llvm::MetadataTracking::track();
  }

  v36 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v34);
  if (v35)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = AGCLLVMBuilder::subrangeVector(a1, a3, 0, 3, 1);
  v7 = *(a1 + 296);
  InsertElement = llvm::UndefValue::get();
  v9 = *(*v6 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v33 = 257;
      v11 = *(a1 + 200);
      v12 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v6, v12, v32);
      v29 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (a1 + 8));
      v31 = *(a1 + 104);
      v14 = *(a1 + 192);
      v33 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Element, v14, v32);
      v16 = (*(*a1 + 152))(a1, &v29, Cast, 0, *(a1 + 152));
      if (v30)
      {
        llvm::MetadataTracking::untrack();
      }

      v33 = 257;
      v17 = *(a1 + 200);
      v18 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v16, v18, v32);
    }
  }

  v26 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v27, (a1 + 8));
  v28 = *(a1 + 104);
  v33 = 257;
  v19 = *(a1 + 200);
  v20 = llvm::ConstantInt::get();
  v21 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v20, v32);
  v22 = (*(*a1 + 96))(a1, &v26, v21, 8, 0, 32);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v23 = *(a1 + 152);
  v33 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), v22, v23, v32);
  return AGCLLVMBuilder::combineRGBA(a1, InsertElement, FPTrunc);
}

uint64_t AGCLLVMTargetLowerer::convertRegisterMaskToMRTMask(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = vdupq_n_s64(a3);
  while (1)
  {
    if (((*(a2 + 32) >> v3) & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = *(a2 + v4);
    v8 = v7 & 0x1F;
    if (v8 == 23)
    {
      goto LABEL_25;
    }

    if ((~v7 & 0xFF000) == 0)
    {
      break;
    }

    v9 = (*(a1 + 964) * (v7 >> 12)) >> 1;
    if (v8 <= 0x16)
    {
      if (((1 << v8) & 0x41F3C0) != 0)
      {
        v10 = vshlq_u32(xmmword_20E70C6D0, vdupq_n_s32(v9));
        v11.i64[0] = v10.i32[2];
        v11.i64[1] = v10.i32[3];
        v12 = v11;
        v11.i64[0] = v10.i32[0];
        v11.i64[1] = v10.i32[1];
        v13 = vbicq_s8(xmmword_20E70C6D0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v11)), vceqzq_s64(vandq_s8(v6, v12))));
LABEL_10:
        v21 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
        v22 = v21.i32[0] | v21.i32[1];
        goto LABEL_24;
      }

      if (((1 << v8) & 0x20C00) != 0)
      {
        v14 = vdupq_n_s32(v9);
        v15 = vshlq_u32(xmmword_20E70C6D0, v14);
        v16.i64[0] = v15.i32[2];
        v16.i64[1] = v15.i32[3];
        v17 = v16;
        v16.i64[0] = v15.i32[0];
        v16.i64[1] = v15.i32[1];
        v18 = vbicq_s8(xmmword_20E70C6E0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v17))));
        v19 = vshlq_u32(xmmword_20E70C6F0, v14);
        v16.i64[0] = v19.i32[2];
        v16.i64[1] = v19.i32[3];
        v20 = v16;
        v16.i64[0] = v19.i32[0];
        v16.i64[1] = v19.i32[1];
        v13 = vorrq_s8(vbicq_s8(xmmword_20E70C700, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v20)))), v18);
        goto LABEL_10;
      }

      if (v8 == 18)
      {
        if ((a3 & (1 << v9)) != 0)
        {
          v23 = 3;
        }

        else
        {
          v23 = 0;
        }

        v24 = 2 << v9;
        v25 = v23 | 0xE;
LABEL_21:
        if ((a3 & v24) != 0)
        {
          v22 = v25;
        }

        else
        {
          v22 = v23;
        }

        goto LABEL_24;
      }
    }

    if (v8 - 2 < 4)
    {
      if ((a3 & (1 << v9)) != 0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      v24 = 2 << v9;
      v25 = v23 | 0xC;
      goto LABEL_21;
    }

    v22 = 0;
LABEL_24:
    v5 |= ((-1 << (v7 >> 5)) & (((v22 & ~(-1 << (v7 >> 5))) >> ((v7 >> 5) - 1) << 31) >> 31) & 0xF | v22 & ~(-1 << (v7 >> 5))) << v4;
LABEL_25:
    v4 += 4;
    ++v3;
    if (v4 == 32)
    {
      return v5;
    }
  }

  v27 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMTargetLowerer::emulatedColorMask(v27, v28, v29);
}

uint64_t AGCLLVMTargetLowerer::buildFrontFacing(uint64_t a1, uint64_t a2)
{
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

  if (*(a1 + 1680))
  {
    v4 = strlen(*(a1 + 1680));
  }

  v5 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v11);
  v8 = *(a1 + 200);
  v9 = llvm::ConstantInt::get();
  v12 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v7, v9, v11);
}

void AGCLLVMTargetLowerer::getListOfFunctionsInMetalRuntimeWithFastAndNonFastVariants(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

llvm::Value *AGCLLVMTargetLowerer::getVertexInputCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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

  (*(*a1 + 448))(a1, a3, a4);
  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "agc.read_vi.f32", 15, a1[21], a1[25]);
  v9 = a1[25];
  v12 = llvm::ConstantInt::get();
  v11[16] = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 1), *(v8 + 24), v8, &v12, 1, v11);
}

uint64_t AGCLLVMTargetLowerer::getVertexInputRegister(uint64_t a1, _DWORD *a2)
{
  result = *a2;
  *a2 = result + 1;
  return result;
}

uint64_t AGCLLVMTargetLowerer::buildSparseSample(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x277D85DE8];
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

  v6 = *(a1 + 184);
  v7 = **a3;
  v18[0] = *a3;
  v18[1] = v6;
  llvm::StructType::get();
  v8 = llvm::UndefValue::get();
  v14 = 0;
  v19 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + 8, v8, a3, &v14, 1, v18);
  v10 = *(a1 + 184);
  v11 = llvm::ConstantInt::get();
  v14 = 1;
  v19 = 257;
  result = llvm::IRBuilderBase::CreateInsertValue(a1 + 8, InsertValue, v11, &v14, 1, v18);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMTargetLowerer::buildManualResolve(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t AGCLLVMTargetLowerer::buildReadOutputPartitionFromState(void *a1, uint64_t a2, int *a3, uint64_t a4, llvm::Value *a5, llvm::Type *a6)
{
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(a6);
  v29 = v12;
  v13 = llvm::TypeSize::operator unsigned long long();
  v15 = *a3;
  v14 = a3[1];
  if (*a3 > 0x16)
  {
    goto LABEL_12;
  }

  if (((1 << v15) & 0x41F3C0) != 0)
  {
    v16 = 2 * v14;
    goto LABEL_15;
  }

  if (((1 << v15) & 0x3C0000) != 0)
  {
    v16 = 4;
    goto LABEL_15;
  }

  if (((1 << v15) & 0x20C00) != 0)
  {
    v16 = 4 * v14;
  }

  else
  {
LABEL_12:
    if ((v15 - 2) >= 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = a3[1];
    }
  }

LABEL_15:
  v27 = a6;
  if (v13 == 32)
  {
    v34 = *a2;
    v35 = *(a2 + 16);
    if (v35)
    {
      llvm::MetadataTracking::track();
    }

    v36 = *(a2 + 24);
    InsertElement = (*(*a1 + 248))(a1, &v34, a5, a5);
    if (v35)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v18 = a1[25];
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v16)
    {
      v19 = 0;
      do
      {
        v31 = *a2;
        v32 = *(a2 + 16);
        if (v32)
        {
          llvm::MetadataTracking::track();
        }

        v33 = *(a2 + 24);
        v20 = a1[24];
        v21 = llvm::ConstantInt::get();
        v30 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), a5, v21, &PrimitiveSizeInBits);
        v23 = (*(*a1 + 248))(a1, &v31, Add, a4);
        if (v32)
        {
          llvm::MetadataTracking::untrack();
        }

        v30 = 257;
        v24 = a1[25];
        v25 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v23, v25, &PrimitiveSizeInBits);
        ++v19;
      }

      while ((v16 + 3) >> 2 != v19);
    }
  }

  v30 = 257;
  return llvm::IRBuilderBase::CreateCast((a1 + 1), 49, InsertElement, v27, &PrimitiveSizeInBits);
}

uint64_t AGCLLVMTargetLowerer::buildWriteOutputPartitionFromState@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, llvm::Value *a5@<X4>, llvm::Type *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = *a2;
  v44 = *(a2 + 16);
  if (v44)
  {
    llvm::MetadataTracking::track();
  }

  v45 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v43);
  if (v44)
  {
    llvm::MetadataTracking::untrack();
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(a6);
  v38 = v16;
  v17 = llvm::TypeSize::operator unsigned long long();
  v19 = *a3;
  v18 = a3[1];
  if (*a3 > 0x16)
  {
    goto LABEL_12;
  }

  if (((1 << v19) & 0x41F3C0) != 0)
  {
    v20 = 2 * v18;
    goto LABEL_15;
  }

  if (((1 << v19) & 0x3C0000) != 0)
  {
    v20 = 4;
    goto LABEL_15;
  }

  if (((1 << v19) & 0x20C00) != 0)
  {
    v20 = 4 * v18;
  }

  else
  {
LABEL_12:
    if ((v19 - 2) >= 4)
    {
      v20 = 0;
    }

    else
    {
      v20 = a3[1];
    }
  }

LABEL_15:
  if (v17 == 32)
  {
    v40 = *a2;
    v41 = *(a2 + 16);
    if (v41)
    {
      llvm::MetadataTracking::track();
    }

    v42 = *(a2 + 24);
    v21 = a1[25];
    v39 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a7, v21, &PrimitiveSizeInBits);
    result = (*(*a1 + 240))(a1, &v40, a5, Cast, a4);
    if (v41)
    {
      result = llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v24 = a1[25];
    v25 = llvm::FixedVectorType::get();
    v39 = 257;
    result = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a7, v25, &PrimitiveSizeInBits);
    if (v20)
    {
      v26 = result;
      v27 = 0;
      do
      {
        v39 = 257;
        v28 = a1[25];
        v29 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v26, v29, &PrimitiveSizeInBits);
        v34 = *a2;
        v35 = *(a2 + 16);
        if (v35)
        {
          llvm::MetadataTracking::track();
        }

        v36 = *(a2 + 24);
        v31 = a1[24];
        v32 = llvm::ConstantInt::get();
        v39 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), a5, v32, &PrimitiveSizeInBits);
        result = (*(*a1 + 240))(a1, &v34, Add, Element, a4);
        if (v35)
        {
          result = llvm::MetadataTracking::untrack();
        }

        ++v27;
      }

      while ((v20 + 3) >> 2 != v27);
    }
  }

  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 24) = 0;
  *(a8 + 16) = 0;
  return result;
}

uint64_t AGCLLVMTargetLowerer::buildPackXR10(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = a1[37];
  v7 = llvm::ConstantFP::get();
  v20 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), a3, v7, v19);
  v9 = a1[37];
  v10 = llvm::ConstantFP::get();
  v18 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((a1 + 1), FMul, v10, v17);
  v12 = a1[41];
  v20 = 257;
  FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), FAdd, v12, v19);
  v14 = a1[41];
  v15 = llvm::ConstantInt::get();
  v18 = 257;
  return llvm::IRBuilderBase::CreateShl((a1 + 1), FPToUI, v15, v17);
}

uint64_t AGCLLVMTargetLowerer::buildUnpackXR10(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v33 = *a2;
  v34 = *(a2 + 16);
  if (v34)
  {
    llvm::MetadataTracking::track();
  }

  v35 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v33);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 328);
  v7 = llvm::ConstantInt::get();
  v37 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), a3, v7, v36);
  v9 = *(a1 + 296);
  v37 = 257;
  UIToFP = llvm::IRBuilderBase::CreateUIToFP((a1 + 8), LShr, v9, v36);
  v11 = *(a1 + 296);
  v12 = llvm::ConstantFP::get();
  v32 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(a1 + 8, UIToFP, v12, v31);
  v14 = *(a1 + 296);
  v15 = llvm::ConstantFP::get();
  v37 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(a1 + 8, FSub, v15, v36);
  v28 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
  v30 = *(a1 + 104);
  v37 = 257;
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), FMul, v18, v36);
  v20 = *(a1 + 168);
  v21 = llvm::ConstantFP::get();
  v22 = *(a1 + 168);
  v23 = llvm::ConstantFP::get();
  v24 = (*(*a1 + 80))(a1, &v28, Element, v21, v23, 0);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v37 = 257;
  v25 = *(a1 + 200);
  v26 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((a1 + 8), FMul, v24, v26, v36);
}

uint64_t AGCLLVMTargetLowerer::buildUnpackFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
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

  result = 0;
  if (a3 <= 4)
  {
    if (a3 >= 4)
    {
      if (a3 == 4)
      {
        return (*(*a1 + 1512))(a1, a5, a4, 3, a6, a7);
      }
    }

    else
    {
      return (*(*a1 + 1536))(a1, a3, a4, a5, a6, a7);
    }
  }

  else if (a3 > 7)
  {
    if ((a3 - 9) >= 2)
    {
      if (a3 == 8)
      {
        return (*(*a1 + 1560))(a1, a5, a4);
      }
    }

    else
    {
      return (*(*a1 + 1576))(a1, a3, a5, a4, a7);
    }
  }

  else if (a3 == 5)
  {
    return (*(*a1 + 1512))(a1, a5, a4, 4, a6, a7);
  }

  else if (a3 == 6)
  {
    v15 = (*(*a1 + 1512))(a1, a5, a1[19], 4, a6, a7);
    v16 = a1[41];
    v18 = 257;
    return llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v15, v16, v17);
  }

  else
  {
    return (*(*a1 + 1544))(a1, a5, a4);
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildPackFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
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

  result = 0;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if ((a3 - 9) < 2)
      {
        return (*(*a1 + 1584))(a1, a3, a5, a7);
      }
    }

    else if (a3 == 6)
    {
      return (*(*a1 + 1504))(a1, a5);
    }

    else if (a3 == 7)
    {
      return (*(*a1 + 1552))(a1, a5);
    }

    else
    {
      return (*(*a1 + 1568))(a1, a5);
    }
  }

  else if (a3 >= 4)
  {
    if (a3 == 5)
    {
      return (*(*a1 + 1520))(a1, a5, a6, a7);
    }
  }

  else
  {
    return (*(*a1 + 1528))(a1, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildUnpackNorm(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 == 16)
  {
    v15 = 176;
    if (a5)
    {
      v15 = 174;
    }

    v16 = a1[v15];
    if (v16)
    {
      v17 = strlen(a1[v15]);
    }

    else
    {
      v17 = 0;
    }

    v21 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v16, v17, a1[21], a1[30], a1[25]);
    v20 = (*(*a1 + 1480))(a1, a3, v21);
  }

  else
  {
    if (a4 != 8)
    {
      return 0;
    }

    v12 = 177;
    if (a5)
    {
      v12 = 175;
    }

    v13 = a1[v12];
    if (v13)
    {
      v14 = strlen(a1[v12]);
    }

    else
    {
      v14 = 0;
    }

    v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v13, v14, a1[21], a1[40], a1[25]);
    v20 = (*(*a1 + 1472))(a1, a3, v19);
  }

  v18 = v20;
  if (a6 != 32)
  {
    v22 = a1[19];
    v25 = 257;
    return llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), v20, v22, v24);
  }

  return v18;
}

uint64_t AGCLLVMTargetLowerer::buildFMax(AGCLLVMBuilder *a1, __int128 *a2, llvm::Value *a3, llvm::Value *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = AGCLLVMTargetLowerer::flushNaN(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = AGCLLVMTargetLowerer::flushNaN(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMTargetLowerer::buildFCmpSel(a1, &v12, v9, a4);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

llvm::Value *AGCLLVMTargetLowerer::flushNaN(uint64_t a1, uint64_t a2, llvm::Value *a3, llvm::Value *a4)
{
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

  std::string::basic_string[abi:nn200100]<0>(&v15, *(a1 + 1976));
  v8 = *a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 16);
  }

  if (v8 == *(a1 + 152))
  {
    v9 = ".f16";
  }

  else
  {
    v9 = ".f32";
  }

  std::string::append(&v15, v9);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v10, size, v8, v8, v8);
  v13 = AGCLLVMBuilder::map2(a1, v12, a3, a4);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

uint64_t AGCLLVMTargetLowerer::buildFCmpSel(AGCLLVMBuilder *a1, uint64_t a2, uint64_t a3, llvm::Value *a4)
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

  if (*a3 != *a4)
  {
    AGCLLVMBuilder::splat(a1, *(*a3 + 32), a4);
  }

  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMTargetLowerer::buildFMin(AGCLLVMBuilder *a1, __int128 *a2, llvm::Value *a3, llvm::Value *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = AGCLLVMTargetLowerer::flushNaN(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = AGCLLVMTargetLowerer::flushNaN(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMTargetLowerer::buildFCmpSel(a1, &v12, v9, a4);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMTargetLowerer::remapGradients(uint64_t result, uint64_t a2, llvm::Value *a3, llvm::Value *a4, unsigned int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v8 = result;
    v9 = 0;
    v10 = a5;
    do
    {
      v17 = 0;
      v18 = 0;
      v11 = *(v8 + 200);
      v17 = llvm::ConstantInt::get();
      v12 = *(v8 + 200);
      v18 = llvm::ConstantInt::get();
      v13 = llvm::ConstantVector::get();
      v16[16] = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v8 + 8), a3, a4, v13, v16);
      result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2, ShuffleVector);
      ++v9;
    }

    while (v10 != v9);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm *AGCLLVMTargetLowerer::buildBiasF2IVarying(uint64_t a1, const char *a2, llvm *FAdd)
{
  v92 = *MEMORY[0x277D85DE8];
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_BIAS_F2I_VARYING", a2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        goto LABEL_11;
      }
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if ((AGCEnv::isEnabled(void)::is_internal != 1 || !AGCEnv::getValue("AGC_BIAS_F2I_VARYING", a2)) && *(a1 + 904) == 1 && (*(a1 + 1896) & 1) == 0)
  {
LABEL_11:
    v76 = a2;
    v83 = FAdd;
    __src = FAdd;
    v87 = 0xFFFFFFFFLL;
    v89 = v91;
    v90 = 0xA00000000;
    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::append<std::tuple<llvm::Value *,int> const*,void>(&v89, &__src, &v88);
    __src = 0;
    v87 = 0;
    v88 = 0;
    *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v83) + 8) = 255;
    v81 = &v89;
    p_src = &__src;
    v7 = v90;
    v77 = a1;
    if (v90)
    {
      v75 = &__src;
      while (1)
      {
        v8 = v89 + 16 * v7;
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        LODWORD(v90) = v7 - 1;
        v11 = *(v9 + 16);
        if (v9)
        {
          v12 = v11 >= 0x15;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          goto LABEL_51;
        }

        if (v9)
        {
          v13 = v11 >= 0x1C;
        }

        else
        {
          v13 = 0;
        }

        if (!v13)
        {
LABEL_149:
          v61 = 0;
          goto LABEL_151;
        }

        v14 = *(v9 + 16);
        if ((v14 - 59) > 0xFFFFFFED || v14 == 85 || v14 == 83)
        {
          v15 = *(v9 + 20);
          v16 = v15 & 0x7FFFFFF;
          if ((v15 & 0x7FFFFFF) != 0)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((v15 & 0x40000000) != 0)
              {
                v19 = *(v9 - 8);
              }

              else
              {
                v19 = v9 - 32 * v16;
              }

              v20 = *(v19 + v17);
              if (v20)
              {
                v21 = v20[16] == 22;
              }

              else
              {
                v21 = 0;
              }

              if (!v21)
              {
                if ((*(*v20 + 8) & 0xFE) == 0x12)
                {
                  v22 = v10;
                }

                else
                {
                  v22 = -1;
                }

                v84 = *(v19 + v17);
                v85 = 0;
                if (v22 == -1)
                {
                  v23 = 255;
                }

                else
                {
                  v23 = 1 << v22;
                }

                v24 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v88, v20, &v85);
                v25 = v85;
                if (v24)
                {
                  v26 = v85 == (__src + 16 * v88);
                }

                else
                {
                  v26 = 1;
                }

                if (v26)
                {
                  llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v20, v22);
                  *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v84) + 8) = v23;
                }

                else if ((v23 & ~v85[2]) != 0)
                {
                  llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v20, v22);
                  v25[2] |= v23;
                }

                v15 = *(v9 + 20);
              }

              ++v18;
              v16 = v15 & 0x7FFFFFF;
              v17 += 32;
            }

            while (v18 < v16);
          }

          goto LABEL_51;
        }

        if ((v14 - 79) >= 0xFFFFFFF3)
        {
          v37 = *(v9 - 32);
          if ((*(*v37 + 8) & 0xFE) == 0x12)
          {
            if (v10 == -1)
            {
              goto LABEL_99;
            }

            if ((*(*v9 + 8) & 0xFE) == 0x12 && *(*v37 + 32) == *(*v9 + 32))
            {
              v84 = *(v9 - 32);
              v32 = 1 << v10;
LABEL_100:
              v85 = 0;
              v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v88, v37, &v85);
              v34 = v85;
              if (v47)
              {
                v48 = v85 == (__src + 16 * v88);
              }

              else
              {
                v48 = 1;
              }

              if (v48)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v37, v10);
                v49 = &__src;
                goto LABEL_148;
              }

LABEL_141:
              if ((v32 & ~v34[2]) != 0)
              {
                v35 = v37;
                v36 = v10;
LABEL_143:
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v35, v36);
                v50 = v34[2] | v32;
LABEL_144:
                v34[2] = v50;
                goto LABEL_51;
              }

              goto LABEL_51;
            }
          }

          else if (v10 == -1)
          {
LABEL_99:
            v84 = *(v9 - 32);
            v32 = 255;
            goto LABEL_100;
          }

          v84 = *(v9 - 32);
          v85 = 0;
          v38 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v88, v37, &v85);
          v34 = v85;
          if (v38)
          {
            v39 = v85 == (__src + 16 * v88);
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v37, 0xFFFFFFFF);
            *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v84) + 8) = 255;
          }

          else if (*(v85 + 8) != 0xFF)
          {
            llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v37, 0xFFFFFFFF);
            v50 = v34[2] | 0xFF;
            goto LABEL_144;
          }
        }

        else
        {
          v27 = *(v9 + 16);
          if (v27 <= 0x59)
          {
            if (v27 == 89)
            {
              v40 = *(v9 - 32);
              if (v40)
              {
                v41 = *(v40 + 16) == 16;
              }

              else
              {
                v41 = 0;
              }

              if (v41)
              {
                v42 = (v40 + 24);
                if (*(v40 + 32) >= 0x41u)
                {
                  v42 = *v42;
                }

                LODWORD(v10) = *v42;
              }

              v43 = *(v9 - 64);
              v84 = v43;
              v85 = 0;
              if (v10 == -1)
              {
                v44 = 255;
              }

              else
              {
                v44 = 1 << v10;
              }

              v45 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v88, v43, &v85);
              v34 = v85;
              if (v45)
              {
                v46 = v85 == (__src + 16 * v88);
              }

              else
              {
                v46 = 1;
              }

              if (v46)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v43, v10);
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v84) + 8) = v44;
              }

              else if ((v44 & ~v85[2]) != 0)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v43, v10);
                v50 = v34[2] | v44;
                goto LABEL_144;
              }
            }

            else if (v27 == 84)
            {
              v67 = *(v9 + 20) & 0x7FFFFFF;
              v62 = v76;
              if ((*(v9 + 20) & 0x7FFFFFF) != 0)
              {
                v68 = 1;
                v69 = v9;
                do
                {
                  v70 = *(v69 - 32 * v67);
                  if (v70)
                  {
                    v71 = *(v70 + 16) == 3;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v61 = v71 && (Name = llvm::Value::getName(v70), v73 >= 0xF) && *Name == 0x66656F632E636761 && *(Name + 7) == 0x746E656963696666;
                  v67 = *(v9 + 20) & 0x7FFFFFF;
                  if (v68 >= v67)
                  {
                    break;
                  }

                  ++v68;
                  v69 += 32;
                }

                while (!v61);
              }

              else
              {
                v61 = 0;
              }

              goto LABEL_152;
            }

            goto LABEL_51;
          }

          if (v27 == 90)
          {
            v51 = *(v9 - 32);
            if (*(v51 + 16) != 16)
            {
              v51 = 0;
            }

            if (v10 == -1 || v51 == 0)
            {
              v53 = *(v9 - 64);
              v84 = v53;
              v85 = 0;
              v54 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v75, *(v75 + 4), v53, &v85);
              v55 = v85;
              if (v54)
              {
                v56 = v85 == (*v75 + 16 * *(v75 + 4));
              }

              else
              {
                v56 = 1;
              }

              if (v56)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v53, 0xFFFFFFFF);
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(v75, &v84) + 8) = 255;
              }

              else if (*(v85 + 8) != 0xFF)
              {
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v53, 0xFFFFFFFF);
                v55[2] |= 0xFFu;
              }

              v33 = p_src;
            }

            else
            {
              if (*(v51 + 32) >= 0x41u)
              {
                v57 = **(v51 + 24);
              }

              else
              {
                v57 = *(v51 + 24);
              }

              if (v57 == v10)
              {
                v58 = *(v9 - 64);
                goto LABEL_134;
              }

              v33 = v75;
            }

            v37 = *(v9 - 96);
            v84 = v37;
            v85 = 0;
            if (v10 == -1)
            {
              v32 = 255;
            }

            else
            {
              v32 = 1 << v10;
            }

            v75 = v33;
            if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v33, *(v33 + 4), v37, &v85) || (v34 = v85, v85 == (*v33 + 16 * *(v33 + 4))))
            {
              v59 = v37;
              v60 = v10;
              goto LABEL_147;
            }

            goto LABEL_141;
          }

          if (v27 == 91)
          {
            if (v10 == -1)
            {
              isSourcedFromVarying(llvm::Value *)::$_0::operator()(&v81, *(v9 - 64));
              v58 = *(v9 - 32);
LABEL_134:
              isSourcedFromVarying(llvm::Value *)::$_0::operator()(&v81, v58);
              goto LABEL_51;
            }

            v28 = *(*(v9 + 64) + 4 * v10);
            if (v28 != -1)
            {
              v29 = *(v9 - 64);
              v30 = *(*v29 + 32);
              v12 = v28 >= v30;
              v31 = v28 - v30;
              if (v12)
              {
                v29 = *(v9 - 32);
                v28 = v31;
              }

              v84 = v29;
              v85 = 0;
              if (v28 == -1)
              {
                v32 = 255;
              }

              else
              {
                v32 = 1 << v28;
              }

              v33 = v75;
              if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v75, *(v75 + 4), v29, &v85) || (v34 = v85, v85 == (*v75 + 16 * *(v75 + 4))))
              {
                v59 = v29;
                v60 = v28;
LABEL_147:
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v89, v59, v60);
                v49 = v33;
LABEL_148:
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(v49, &v84) + 8) = v32;
                goto LABEL_51;
              }

              if ((v32 & ~v85[2]) != 0)
              {
                v35 = v29;
                v36 = v28;
                goto LABEL_143;
              }
            }
          }
        }

LABEL_51:
        v7 = v90;
        if (!v90)
        {
          goto LABEL_149;
        }
      }
    }

    v61 = 0;
LABEL_151:
    v62 = v76;
LABEL_152:
    llvm::deallocate_buffer(__src, (16 * v88));
    if (v89 != v91)
    {
      free(v89);
    }

    if (v61)
    {
      v78 = *v62;
      v79 = *(v62 + 2);
      if (v79)
      {
        llvm::MetadataTracking::track();
      }

      v80 = *(v62 + 6);
      AGCLLVMTargetLowerer::SetIP(v77, &v78);
      if (v79)
      {
        llvm::MetadataTracking::untrack();
      }

      v63 = *(v77 + 168);
      v64 = llvm::ConstantFP::get();
      v91[8] = 257;
      FAdd = llvm::IRBuilderBase::CreateFAdd(v77 + 8, FAdd, v64, &v89);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
  return FAdd;
}

uint64_t isSourcedFromVarying(llvm::Value *)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v8 = 0;
  v4 = a1[1];
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*v4, *(v4 + 16), a2, &v8);
  if (result)
  {
    v6 = v8;
  }

  else
  {
    v6 = *v4 + 16 * *(v4 + 16);
  }

  if (v6 == *a1[1] + 16 * *(a1[1] + 16))
  {
    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(*a1, a2, 0xFFFFFFFF);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(a1[1], &v7);
    *(result + 8) = 255;
  }

  else if (*(v6 + 8) != 0xFF)
  {
    result = llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(*a1, a2, 0xFFFFFFFF);
    *(v6 + 8) |= 0xFFu;
  }

  return result;
}

uint64_t AGCLLVMTargetLowerer::buildRTZF16Value(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
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

  v8 = *a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v9 = *(v8 + 8);
    v10 = *(a1 + 200);
    v11 = llvm::FixedVectorType::get();
  }

  else
  {
    v11 = *(a1 + 200);
  }

  v46 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v11, v45);
  v13 = llvm::ConstantInt::get();
  v46 = 257;
  v14 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Cast, v13, v45);
  v15 = llvm::ConstantInt::get();
  v46 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v14, v15, v45);
  v16 = llvm::ConstantFP::get();
  v17 = llvm::ConstantFP::get();
  v42 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
  v44 = *(a1 + 104);
  v18 = (*(*a1 + 80))(a1, &v42, a3, v16, v17, 0);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4)
  {
    v19 = *(v8 + 2);
    v20 = *(a1 + 192);
    if ((v19 & 0xFE) == 0x12)
    {
      v20 = llvm::FixedVectorType::get();
      v19 = *(v8 + 2);
    }

    v21 = *(a1 + 152);
    v38 = v20;
    if ((v19 & 0xFE) == 0x12)
    {
      v21 = llvm::FixedVectorType::get();
    }

    v46 = 257;
    v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v11, v45);
    v23 = llvm::ConstantInt::get();
    v46 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v23, v45);
    v25 = llvm::ConstantInt::get();
    v46 = 257;
    v26 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v25, v45);
    v39 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v40, (a1 + 8));
    v41 = *(a1 + 104);
    AGCLLVMTargetLowerer::CreateFabs(a1, &v39, a3);
    if (v40)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::ConstantFP::get();
    v46 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v46 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v18, v11, v45);
    v28 = llvm::ConstantInt::get();
    v46 = 257;
    v29 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v27, v28, v45);
    v30 = llvm::ConstantInt::get();
    v46 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v29, v30, v45);
    v32 = llvm::ConstantInt::get();
    v46 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), Sub, v32, v45);
    v46 = 257;
    v34 = llvm::IRBuilderBase::CreateOr((a1 + 8), v33, v26, v45);
    v46 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v34, v38, v45);
    v46 = 257;
    v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v35, v21, v45);
    v46 = 257;
    llvm::IRBuilderBase::CreateFPExt((a1 + 8), v36, v8, v45);
    llvm::ConstantFP::get();
    v46 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  v46 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

void *AGCLLVMTargetLowerer::ResetIntersectionQueryArguments::ResetIntersectionQueryArguments(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a4 - 32) + 96);
  v8 = (a4 - 32 * (*(a4 + 20) & 0x7FFFFFF));
  v9 = a2 | a3;
  if (a2 | a3)
  {
    v10 = 18;
  }

  else
  {
    v10 = 16;
  }

  v11 = v8[4];
  *a1 = *v8;
  a1[1] = v11;
  v12 = v8[12];
  a1[2] = v8[8];
  a1[3] = v12;
  v13 = v8[20];
  a1[4] = v8[16];
  a1[5] = v13;
  if (v9 == 1)
  {
    v14 = v8 + 28;
    v15 = v8[24];
  }

  else
  {
    v14 = v8 + 24;
    v16 = *(a5 + 200);
    v15 = llvm::ConstantInt::get();
  }

  v17 = *v14;
  a1[6] = v15;
  a1[7] = v17;
  v18 = v14[8];
  a1[8] = v14[4];
  a1[9] = v18;
  v19 = v14[16];
  a1[10] = v14[12];
  a1[11] = v19;
  a1[12] = v14[20];
  if (v10 == v7)
  {
    v20 = v14[28];
    a1[13] = v14[24];
    a1[14] = v20;
    v21 = v14 + 36;
    v22 = v14[32];
  }

  else
  {
    v21 = v14 + 24;
    v23 = *(a5 + 200);
    a1[13] = llvm::ConstantInt::get();
    v24 = *(a5 + 200);
    a1[14] = llvm::ConstantInt::get();
    v25 = *(a5 + 200);
    v22 = llvm::ConstantInt::get();
  }

  a1[15] = v22;
  if (v9)
  {
    v27 = *v21;
    v21 += 4;
    v26 = v27;
  }

  else
  {
    v26 = 0;
  }

  v28 = *v21;
  a1[16] = v26;
  a1[17] = v28;
  return a1;
}

void AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig(AGCLLVMG13TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildShuffleAndFill(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v81[1] = *MEMORY[0x277D85DE8];
  v48 = *a2;
  v49 = *(a2 + 2);
  if (v49)
  {
    llvm::MetadataTracking::track();
    v50 = *(a2 + 6);
    v74 = v48;
    v75 = v49;
    llvm::MetadataTracking::track();
    v10 = v50;
  }

  else
  {
    v10 = *(a2 + 6);
    v50 = v10;
    v74 = *a2;
    v75 = 0;
  }

  v76 = v10;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v74, a1 + 8);
  if (v75)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a3[3];
  LOWORD(v78[0]) = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 35, v13, v14, v77);
  LOWORD(v78[0]) = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v16 = *(a1 + 192);
  v17 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v14, v17, v77);
  LOWORD(v78[0]) = 257;
  v46 = Sub;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v13, Sub, v77);
  v77[0] = &unk_2825BB730;
  v77[1] = AGCLLVMGen3TargetLowerer::buildSimdShuffleUp;
  v77[2] = 0;
  v77[3] = v77;
  v78[0] = &unk_2825BB730;
  v78[1] = AGCLLVMGen3TargetLowerer::buildSimdShuffleDown;
  v78[2] = 0;
  v78[3] = v78;
  v79[0] = &unk_2825BB778;
  v79[1] = AGCLLVMGen3TargetLowerer::buildQuadShuffleUp;
  v79[2] = 0;
  v79[3] = v79;
  v80[0] = &unk_2825BB778;
  v80[1] = AGCLLVMGen3TargetLowerer::buildQuadShuffleDown;
  v80[2] = 0;
  v81[0] = v80;
  v73 = 257;
  v20 = llvm::IRBuilderBase::CreateSub((a1 + 8), v14, v19, v72);
  v69 = v48;
  v70 = v49;
  if (v49)
  {
    llvm::MetadataTracking::track();
  }

  v71 = v50;
  v21 = std::function<llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(v77[8 * a6 + 3 + 4 * a5], a1, &v69, Select, v19);
  if (v70)
  {
    llvm::MetadataTracking::untrack();
  }

  v66 = v48;
  v67 = v49;
  if (v49)
  {
    llvm::MetadataTracking::track();
  }

  v68 = v50;
  std::function<llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(v77[8 * a6 + 3 + 4 * (a5 ^ 1)], a1, &v66, v12, v20);
  if (v67)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a6)
  {
    v63 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v64, (a1 + 8));
    v65 = *(a1 + 104);
    v22 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v63, *(a1 + 192));
    if (!v64)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v60 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v61, (a1 + 8));
  v62 = *(a1 + 104);
  v22 = (*(*a1 + 1624))(a1, &v60, *(a1 + 192));
  if (v61)
  {
LABEL_16:
    llvm::MetadataTracking::untrack();
  }

LABEL_17:
  v73 = 257;
  v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v22, v46, v72);
  v73 = 257;
  if (a5)
  {
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), v23, v19, v72);
  }

  else
  {
    Add = llvm::IRBuilderBase::CreateSub((a1 + 8), v23, v19, v72);
  }

  v25 = Add;
  v73 = 257;
  Not = llvm::IRBuilderBase::CreateNot((a1 + 8), v46, v72);
  v73 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v25, Not, v72);
  v28 = *(a1 + 192);
  v29 = llvm::ConstantInt::get();
  v59 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v27, v29, v58);
  v73 = 257;
  v30 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v22, Not, v72);
  v59 = 257;
  v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v25, v46, v58);
  v57 = 257;
  v32 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v30, v31, v56);
  v53 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (a1 + 8));
  v55 = *(a1 + 104);
  ActiveThreadsMask = AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(a1, &v53, a6);
  if (v54)
  {
    llvm::MetadataTracking::untrack();
  }

  v34 = *ActiveThreadsMask;
  v73 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v32, v34, v72);
  v59 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), ActiveThreadsMask, Cast, v58);
  v37 = llvm::ConstantInt::get();
  v57 = 257;
  v38 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v37, v56);
  v39 = *(a1 + 176);
  v52 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v38, v39, v51);
  v73 = 257;
  llvm::IRBuilderBase::CreateSelect();
  llvm::Constant::getNullValue(*v21, v40);
  v59 = 257;
  v41 = llvm::IRBuilderBase::CreateSelect();
  for (i = 0; i != -16; i -= 4)
  {
    v43 = v81[i];
    if (&v80[i] == v43)
    {
      (*(*v43 + 32))(v43);
    }

    else if (v43)
    {
      (*(*v43 + 40))(v43);
    }
  }

  if (v49)
  {
    llvm::MetadataTracking::untrack();
  }

  v44 = *MEMORY[0x277D85DE8];
  return v41;
}

uint64_t AGCLLVMG13TargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG13TargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  a3[1] = 0;
  v6 = a3 + 1;
  a3[2] = 0;
  *a3 = a3 + 1;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}