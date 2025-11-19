unint64_t llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::push_back(uint64_t a1, unint64_t a2)
{
  result = llvm::SmallVectorTemplateCommon<AGCLLVMUserFragmentShader::FragmentVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>>(a1, a2);
  v4 = *a1 + 88 * *(a1 + 8);
  v5 = *result;
  v6 = *(result + 32);
  *(v4 + 16) = *(result + 16);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 56) = 0x500000000;
  *(v4 + 48) = v4 + 64;
  v7 = v4 + 48;
  if (*(result + 56))
  {
    result = llvm::SmallVectorImpl<unsigned int>::operator=(v7, result + 48);
  }

  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<AGCLLVMUserFragmentShader::FragmentVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 88 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::grow();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::grow();
  }

  return a2;
}

llvm::Value *AGCLLVMUserFragmentShader::replaceInterpolation(uint64_t *a1, unsigned int *a2)
{
  v4 = a2[3];
  v5 = *a2;
  if (a2[1] == 1)
  {
    *(a1 + 6429) = 1;
    v6 = 3;
  }

  else
  {
    v6 = a2[2];
    if (v6 == 1)
    {
      if (*(a1 + 1136) <= 1)
      {
        *(a1 + 1136) = 2;
      }

      v6 = 1;
    }
  }

  v7 = *(a1 + *(*a1 - 24) + 2016);
  v8 = llvm::PointerType::get();
  if (a2[1] == 3 || (v9 = a1 + *(*a1 - 24), v10 = *(a2 + 4), v80 = 257, Cast = llvm::IRBuilderBase::CreateCast(v9 + 1712, 49, v10, v8, v79), v12 = a2[1], v12 == 5) || v12 == 3)
  {
    v13 = a1 + *(*a1 - 24);
    v14 = *(a2 + 4);
    v80 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v13 + 1704), v14, v79);
    goto LABEL_11;
  }

  v18 = Cast;
  if (v6 != 3)
  {
    v22 = a1 + *(*a1 - 24);
    v23 = *(v22 + 2168);
    if (v12)
    {
      v65 = *(v22 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v66, (v22 + 1712));
      v67 = *(v22 + 1808);
      Load = (*(*v23 + 280))(v23, &v65, v5, v6, v18, 0, 0);
      if (!v66)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v68 = *(v22 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v69, (v22 + 1712));
      v70 = *(v22 + 1808);
      Load = (*(*v23 + 280))(v23, &v68, v5, v6, v18, 0, a1[785]);
      if (!v69)
      {
        goto LABEL_11;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_11;
  }

  v19 = (a1 + *(*a1 - 24));
  if (*(v19[271] + 1887) == 1 && ((*(a1 + 14) & 1) != 0 || (*(a1[801] + 68) & 2) != 0))
  {
    v24 = v19[267];
    if (!llvm::Module::getGlobalVariable())
    {
      v25 = llvm::User::operator new(0x58);
      v26 = (a1 + *(*a1 - 24));
      v27 = v26[267];
      v28 = v26[238];
      v79[0] = "agc.provoking_vertex_index";
      v80 = 259;
      v63 = *(v26[271] + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      AGCLLVMBuilder::setupGlobalMetadata((a1 + *(*a1 - 24) + 1704), v25);
      v29 = a1 + *(*a1 - 24);
      v76 = *(v29 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (v29 + 1712));
      v78 = *(v29 + 1808);
      v30 = a1 + *(*a1 - 24);
      v31 = *(*(*(v30 + 1760) + 56) + 80);
      if (v31)
      {
        v32 = (v31 - 24);
      }

      else
      {
        v32 = 0;
      }

      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v32);
      llvm::IRBuilderBase::SetInsertPoint(v30 + 1712, v32, FirstInsertionPt);
      v34 = a1 + *(*a1 - 24);
      v80 = 257;
      v35 = AGCLLVMBuilder::CreateLoad((v34 + 1704), v25, v79);
      v36 = *(a1 + *(*a1 - 24) + 1904);
      v37 = llvm::ConstantInt::get();
      v75 = 257;
      llvm::IRBuilderBase::CreateICmp((v34 + 1712), 33, v35, v37, v74);
      v38 = *(a1 + *(*a1 - 24) + 1904);
      llvm::ConstantInt::get();
      v39 = *(a1 + *(*a1 - 24) + 1904);
      llvm::ConstantInt::get();
      v80 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      llvm::ValueHandleBase::operator=((a1 + 796), Select);
      v41 = a1 + *(*a1 - 24);
      v71 = v76;
      v72 = v77;
      if (v77)
      {
        llvm::MetadataTracking::track();
      }

      v73 = v78;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v71, v41 + 1712);
      if (v72)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v77)
      {
        llvm::MetadataTracking::untrack();
      }
    }
  }

  else
  {
    v20 = v19[238];
    v21 = llvm::ConstantInt::get();
    llvm::ValueHandleBase::operator=((a1 + 796), v21);
  }

  v42 = *(a1 + *(*a1 - 24) + 1872);
  llvm::FixedVectorType::get();
  Load = llvm::UndefValue::get();
  if (!v5)
  {
    if (v4 >= 2)
    {
      goto LABEL_41;
    }

    return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v4);
  }

  v64 = v4;
  v43 = 0;
  do
  {
    v44 = a1 + *(*a1 - 24);
    v45 = *(v44 + 2016);
    v46 = v5;
    v47 = v18;
    ConstInBoundsGEP1_32 = AGCLLVMBuilder::CreateConstInBoundsGEP1_32((v44 + 1704), v45, v18);
    v80 = 257;
    llvm::Type::isOpaquePointerTy(*ConstInBoundsGEP1_32);
    v49 = ConstInBoundsGEP1_32;
    v18 = v47;
    v5 = v46;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((v44 + 1712), v45, v49, 0, v79);
    v51 = *(*a1 - 24);
    v52 = a1[798];
    v80 = 257;
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + v51 + 1712), AlignedLoad, v52, v79);
    v54 = a1 + *(*a1 - 24) + 1704;
    v80 = 257;
    v55 = *(v54 + 200);
    v56 = llvm::ConstantInt::get();
    Load = llvm::IRBuilderBase::CreateInsertElement((v54 + 8), Load, Element, v56, v79);
    ++v43;
  }

  while (v46 != v43);
  if (v46 == 1)
  {
    v57 = a1 + *(*a1 - 24);
    v80 = 257;
    v58 = *(v57 + 1904);
    v59 = llvm::ConstantInt::get();
    Load = llvm::IRBuilderBase::CreateExtractElement((v57 + 1712), Load, v59, v79);
    v4 = v64;
    if (v64 < 2)
    {
      return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v4);
    }

    goto LABEL_13;
  }

  v4 = v64;
LABEL_11:
  if (v4 >= 2)
  {
    if (v5 == 1)
    {
LABEL_13:
      v16 = *a1;
      v17 = *(a1 + *(*a1 - 24) + 1904);
LABEL_42:
      v61 = a1 + *(v16 - 24);
      v80 = 257;
      Load = llvm::IRBuilderBase::CreateCast(v61 + 1712, 49, Load, v17, v79);
      return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v4);
    }

LABEL_41:
    v60 = *(a1 + *(*a1 - 24) + 1904);
    v17 = llvm::FixedVectorType::get();
    v16 = *a1;
    goto LABEL_42;
  }

  return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v4);
}

void AGCLLVMUserShader::getVaryingModeMap(AGCLLVMUserShader *this)
{
  {
    AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map = 0;
    qword_28117E558 = 0;
    unk_28117E560 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<AGCCodeTranslator::VertexShaderVaryingType,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, &dword_20E4E1000);
  }
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 4 * v7);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          memmove(*a1, v4, 4 * v8);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 4 * v8), (*a2 + 4 * v8), 4 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

llvm::Value *AGCLLVMBuilder::truncateToSmall(uint64_t a1, llvm::Value *a2, int a3)
{
  v3 = a2;
  v4 = a3 - 1;
  if (a3 - 1) <= 8 && ((0x19Bu >> v4))
  {
    v6 = *(a1 + qword_20E70D438[v4]);
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v7 = *(*a2 + 32);
      v6 = llvm::FixedVectorType::get();
    }

    if ((*(v6 + 8) & 0xFE) == 0x12)
    {
      v8 = *(**(v6 + 16) + 8);
    }

    else
    {
      v8 = *(v6 + 8);
    }

    v12 = 257;
    if (v8 > 6)
    {
      return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v3, v6, v11);
    }

    else
    {
      return llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), v3, v6, v11);
    }
  }

  return v3;
}

void *std::deque<llvm::MDNode const*>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<llvm::MDNode const**>::emplace_back<llvm::MDNode const**&>(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t AGCLLVMUserObject::setupBufferArgumentData(AGCLLVMUserObject *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, char a6, uint64_t a7)
{
  v14 = *(a2 + 8);
  if ((v14 & 0xFE) == 0x12)
  {
    v14 = *(**(a2 + 16) + 8);
  }

  if ((v14 & 0xFFFFFF00) == 0x300)
  {
    GlobalBufferBinding = llvm::User::operator new(0x58);
    v16 = (a1 + *(*a1 - 24));
    v17 = v16[267];
    v18 = v16[238];
    v42[0] = "agc.local_buffer_pointers.";
    v43 = a3;
    v44 = 2051;
    v36 = *(v16[271] + 972) | 0x100000000;
    v19 = llvm::GlobalVariable::GlobalVariable();
    *(v19 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v20 = a1 + *(*a1 - 24);
    v21 = *(v20 + 268);
    v22 = AGCLLVMBuilder::buildGlobalMetadata((v20 + 1704), GlobalBufferBinding);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v21, v22);
    v23 = a1 + *(*a1 - 24);
    v24 = *(v23 + 238);
    v44 = 257;
    llvm::Type::isOpaquePointerTy(*GlobalBufferBinding);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v23 + 214, v24, GlobalBufferBinding, 0, v42);
    v41 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v23 + 1712), 48, AlignedLoad, a2, v40);
  }

  else
  {
    if (a4 == -1)
    {
      LODWORD(v40[0]) = a3;
      v27 = 8;
      v28 = 1;
      v29 = v40[0];
    }

    else
    {
      v38[0] = a4;
      v38[2] = ".";
      v39 = 776;
      v40[0] = v38;
      v40[2] = a3;
      v27 = 2;
      v28 = 8;
      v29 = v40;
    }

    LOBYTE(v41) = v27;
    HIBYTE(v41) = v28;
    v42[0] = "agc.buffer_pointers.";
    v43 = v29;
    LOBYTE(v44) = 3;
    HIBYTE(v44) = v27;
    _AGCBindingInfo::_AGCBindingInfo(&v37, a3, a4);
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, a2, v42, v37, a5, 5, 0);
    v30 = (a1 + *(*a1 - 24));
    v44 = 257;
    llvm::Type::isOpaquePointerTy(*GlobalBufferBinding);
    Cast = llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, a2, GlobalBufferBinding, 0, v42);
    if (a4 == -1)
    {
      ++*(a1 + 878);
    }

    if ((a6 & 3) == 1)
    {
      v31 = *(a1 + *(*a1 - 24) + 2136);
      llvm::Module::getOrInsertNamedMetadata();
      v32 = *(a1 + *(*a1 - 24) + 2160);
      v42[0] = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }
  }

  if (a7 == -1)
  {
    return Cast;
  }

  v33 = a1 + *(*a1 - 24);
  if (v33[2284])
  {
    (*(**(v33 + 271) + 176))(*(v33 + 271), GlobalBufferBinding, a7, *(v33 + 570), 0, 0);
    return Cast;
  }

  v35 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMUserObject::setupBufferAliasInfo(v35);
}

uint64_t AGCLLVMUserObject::setupBufferAliasInfo(AGCLLVMUserObject *this)
{
  v43[16] = *MEMORY[0x277D85DE8];
  if (*(this + 1022))
  {
    v41 = v43;
    v42 = 0x1000000000;
    v2 = *(this + *(*this - 24) + 2136);
    v38 = "agx.buffer.alias.scopes";
    v40[8] = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v2, &v38);
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      v5 = NumOperands;
      for (i = 0; i != v5; ++i)
      {
        Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v41, Operand);
      }
    }

    v38 = v40;
    v39 = 0x2000000000;
    v34 = v37;
    v36 = 32;
    v8 = *(this + 1022);
    if (v8)
    {
      v9 = *(this + 510);
      v31 = &v9[2 * v8];
      v10 = this + 2160;
      while (1)
      {
        v11 = *v9;
        v12 = v9[1];
        LODWORD(v39) = 0;
        v35 = 0;
        v13 = *(v11 + 8);
        if (!v13)
        {
          goto LABEL_42;
        }

        do
        {
          v14 = *(v13 + 24);
          v15 = *(v14 + 16);
          if ((v15 - 60) < 2)
          {
            v16 = &v38;
            goto LABEL_13;
          }

          if (v15 == 77 || v15 == 62)
          {
            v16 = &v34;
LABEL_13:
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, v14);
          }

          v13 = *(v13 + 8);
        }

        while (v13);
LABEL_15:
        v17 = v35;
        while (v17)
        {
          v18 = *(v34 + --v17);
          v35 = v17;
          v19 = *(v18 + 16);
          if ((v19 - 60) < 2)
          {
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v38, v18);
            goto LABEL_15;
          }

          if (v19 == 62 || v19 == 77)
          {
            for (j = *(v18 + 8); j; j = *(j + 8))
            {
              v21 = *(j + 24);
              if (v21)
              {
                v22 = *(v21 + 16) >= 0x1Cu;
              }

              else
              {
                v22 = 0;
              }

              if (v22)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v34, v21);
              }
            }

            goto LABEL_15;
          }
        }

        if (v39)
        {
          v23 = v38;
          v24 = v38 + 8 * v39;
          do
          {
            if (*(*v23 + 16) == 60)
            {
              v25 = *&v10[*(*this - 24)];
              v32[0] = v12;
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
            }

            else
            {
              v32[0] = v33;
              v32[1] = 0x1000000000;
              if (v42)
              {
                v26 = v41;
                v27 = 8 * v42;
                do
                {
                  if (*v26 != v12)
                  {
                    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, *v26);
                  }

                  ++v26;
                  v27 -= 8;
                }

                while (v27);
              }

              v28 = *&v10[*(*this - 24)];
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
              if (v32[0] != v33)
              {
                free(v32[0]);
              }
            }

            v23 += 8;
          }

          while (v23 != v24);
        }

LABEL_42:
        v9 += 2;
        if (v9 == v31)
        {
          if (v34 != v37)
          {
            free(v34);
          }

          break;
        }
      }
    }

    if (v38 != v40)
    {
      free(v38);
    }

    if (v41 != v43)
    {
      free(v41);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMUserObject::setupStackOOBCheck(AGCLLVMUserObject *this, const char *a2)
{
  v3 = 0x27C8D7000uLL;
  {
    v3 = 0x27C8D7000;
    if (v7)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v3 = 0x27C8D7000;
    }
  }

  if (*(v3 + 2944) != 1 || (Value = AGCEnv::getValue("AGX_DISABLE_STACK_OOB_CHECK", a2)) == 0 || *Value == 48 || !atoi(Value))
  {
    v5 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
  }

  return 1;
}

uint64_t AGCLLVMAGPFragmentShader::setupInterpolationFunctions(AGCLLVMAGPFragmentShader *this)
{
  v104 = *MEMORY[0x277D85DE8];
  {
    AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map = 0;
    *&dword_28117E4A8 = 0;
    qword_28117E4B0 = 0x1800000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::flag, memory_order_acquire) != -1)
  {
    *&v96[0] = &v102;
    v98 = v96;
    std::__call_once(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::flag, &v98, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::$_0 &&>>);
  }

  v2 = *(this + *(*this - 24) + 2136);
  v3 = *(v2 + 32);
  v78 = v2 + 24;
  if (v3 != v2 + 24)
  {
    v4 = this + 1712;
    v5 = this + 1704;
    v6 = this + 2016;
    v7 = this + 1904;
    while (1)
    {
      v8 = v3 ? (v3 - 56) : 0;
      v80 = *(v3 + 8);
      llvm::Value::getName(v8);
      Key = llvm::StringMapImpl::FindKey();
      if (Key != -1 && Key != dword_28117E4A8)
      {
        v11 = *(v3 - 48);
        if (v11)
        {
          break;
        }
      }

LABEL_45:
      v3 = v80;
      if (v80 == v78)
      {
        goto LABEL_46;
      }
    }

    v12 = *(AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map + 8 * Key);
    v13 = *(v12 + 8);
    v86 = *(v12 + 12);
    v14 = *(v12 + 16);
    v15 = *(v12 + 20);
    v16 = *(v12 + 22);
    v17 = *(v12 + 21);
    v89 = v15;
    v84 = this + 24 * v15 + 7088;
    v85 = v14;
    v18 = 1904;
    if (v14 < 2)
    {
      v18 = 1872;
    }

    v79 = this + v18;
    v82 = 32 * v16;
    v83 = 32 * v17;
    v87 = v13;
    while (1)
    {
      v19 = *(v11 + 24);
      v11 = *(v11 + 8);
      llvm::IRBuilderBase::SetInsertPoint(&v4[*(*this - 24)], v19);
      if (v13 == 4 || v13 == 1)
      {
        v20 = *(v19 + v82 + -32 * (*(v19 + 5) & 0x7FFFFFF));
        if (v13 == 1 && v20)
        {
          v21 = *(v19 + v82 + -32 * (*(v19 + 5) & 0x7FFFFFF));
          v22 = v6;
          v23 = v19;
          v24 = v11;
          v25 = this + *(*this - 24);
          v26 = (-1 << (BYTE1(*(*(this + 660) + 32)) & 3));
          v27 = *(v25 + 238);
          v28 = llvm::ConstantInt::get();
          v97 = 257;
          v29 = (v25 + 1712);
          v11 = v24;
          v19 = v23;
          v6 = v22;
          v20 = llvm::IRBuilderBase::CreateAnd(v29, v21, v28, v96);
        }
      }

      else
      {
        v20 = 0;
      }

      v102 = 0;
      Cast = 0;
      v30 = *&v7[*(*this - 24)];
      v102 = llvm::ConstantInt::get();
      v31 = this + *(*this - 24);
      v32 = *(v19 + v83 + -32 * (*(v19 + 5) & 0x7FFFFFF));
      v33 = *(v31 + 238);
      v97 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v31 + 1712), 47, v32, v33, v96);
      v34 = *(*this - 24);
      v35 = *(v84 + 2);
      v97 = 257;
      v88 = AGCLLVMBuilder::CreateGEP(&v5[v34], v35, &v102, 2, v96);
      v36 = llvm::ArrayType::get(*&v6[*(*this - 24)], v89);
      if (v13 == 4)
      {
        v37 = v36;
        v38 = 0;
        v96[0] = 0uLL;
        if (!v86)
        {
          *&v96[0] = AGCLLVMAGPFragmentShader::calculateInterpolationCoords(this, 1, v20);
          *(&v96[0] + 1) = v39;
          v38 = AGCLLVMAGPFragmentShader::interpolateAtOffset(this, v96, 1u, *(this + 785), *(this + 786), 0);
        }

        *&v96[0] = AGCLLVMAGPFragmentShader::calculateInterpolationCoords(this, v89, v20);
        *(&v96[0] + 1) = v40;
        InsertElement = AGCLLVMAGPFragmentShader::interpolateAtOffset(this, v96, v89, v88, v37, v38);
      }

      else
      {
        v42 = *(*this - 24);
        if (v86 == 5)
        {
          v50 = *&v79[v42];
          llvm::FixedVectorType::get();
          InsertElement = llvm::UndefValue::get();
          if (v89)
          {
            v81 = v11;
            for (i = 0; i != v89; i = (i + 1))
            {
              v52 = &v5[*(*this - 24)];
              v53 = *(v52 + 25);
              v101[0] = llvm::ConstantInt::get();
              v54 = *&v7[*(*this - 24)];
              v101[1] = llvm::ConstantInt::get();
              v97 = 257;
              GEP = AGCLLVMBuilder::CreateGEP(v52, v88, v101, 2, v96);
              v100 = 257;
              Load = AGCLLVMBuilder::CreateLoad(v52, GEP, &v98);
              v57 = *(*this - 24);
              v58 = (v19 - 4 * (*(v19 + 5) & 0x7FFFFFF))[4];
              v97 = 257;
              Element = llvm::IRBuilderBase::CreateExtractElement(&v4[v57], Load, v58, v96);
              v60 = v5;
              v61 = v4;
              v62 = this + *(*this - 24);
              v97 = 257;
              v63 = llvm::IRBuilderBase::CreateCast((v62 + 1712), 49, Element, v50, v96);
              v100 = 257;
              v64 = *(v62 + 238);
              v65 = llvm::ConstantInt::get();
              v66 = (v62 + 1712);
              v4 = v61;
              v5 = v60;
              v7 = this + 1904;
              InsertElement = llvm::IRBuilderBase::CreateInsertElement(v66, InsertElement, v63, v65, &v98);
            }

            v13 = v87;
            if (v89 == 1)
            {
              v67 = &v5[*(*this - 24)];
              v97 = 257;
              v68 = *(v67 + 25);
              v69 = llvm::ConstantInt::get();
              InsertElement = llvm::IRBuilderBase::CreateExtractElement((v67 + 8), InsertElement, v69, v96);
            }

            v6 = this + 2016;
            v11 = v81;
          }

          goto LABEL_41;
        }

        v43 = v11;
        if (!v86)
        {
          v44 = &v5[v42];
          v45 = *&v5[v42 + 200];
          v98 = llvm::ConstantInt::get();
          v46 = *&v7[*(*this - 24)];
          v99 = llvm::ConstantInt::get();
          v97 = 257;
          v47 = AGCLLVMBuilder::CreateGEP(v44, v88, &v98, 2, v96);
          v48 = this + *(*this - 24);
          v49 = *(v48 + 271);
          v93 = *(v48 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v94, (v48 + 1712));
          v95 = *(v48 + 452);
          InsertElement = (*(*v49 + 280))(v49, &v93, v89, v87, v47, v20, *(this + 785));
          if (v94)
          {
            llvm::MetadataTracking::untrack();
          }

          v7 = this + 1904;
          v11 = v43;
          v13 = v87;
          v6 = this + 2016;
          goto LABEL_41;
        }

        v70 = &v5[v42];
        v71 = *&v5[v42 + 200];
        v98 = llvm::ConstantInt::get();
        v72 = *&v7[*(*this - 24)];
        v99 = llvm::ConstantInt::get();
        v97 = 257;
        v73 = AGCLLVMBuilder::CreateGEP(v70, v88, &v98, 2, v96);
        v74 = this + *(*this - 24);
        v75 = *(v74 + 271);
        v90 = *(v74 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v91, (v74 + 1712));
        v92 = *(v74 + 452);
        InsertElement = (*(*v75 + 280))(v75, &v90, v89, v87, v73, v20, 0);
        if (v91)
        {
          llvm::MetadataTracking::untrack();
        }

        v6 = this + 2016;
        v7 = this + 1904;
        v11 = v43;
      }

      v13 = v87;
LABEL_41:
      AGCLLVMBuilder::truncateToSmall(&v5[*(*this - 24)], InsertElement, v85);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v19);
      if (!v11)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_46:
  v76 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMUserObject::setupGlobalBindings(AGCLLVMUserObject *this)
{
  v2 = *(this + *(*this - 24) + 2136);
  v61 = "air.global_bindings";
  LOWORD(v64) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, &v61);
  if (NamedMetadata)
  {
    v4 = (this + *(*this - 24));
    if ((*(v4[90].__r_.__value_.__l.__size_ + 1904) & 1) == 0)
    {
      std::string::append(v4 + 69, "global bindings unsupported prior to Apple6 GPU family");
      LOBYTE(v9) = 0;
      return v9 & 1;
    }

    v5 = NamedMetadata;
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      v7 = NumOperands;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        Operand = llvm::NamedMDNode::getOperand(v5);
        v11 = Operand - 8 * *(Operand + 8);
        v12 = *(v11 + 8);
        if (v12 && *v12 - 1 <= 1 && ((v13 = *(v12 + 16)) != 0 ? (v14 = *(v13 + 16) == 3) : (v14 = 0), v14))
        {
          v15 = *(v11 + 16);
          String = llvm::MDString::getString(*(v15 - 8 * *(v15 + 8) + 8));
          if (v17 <= 24)
          {
            if (v17 <= 17)
            {
              if (v17 == 10)
              {
                if (*String != 0x666675622E726961 || *(String + 8) != 29285)
                {
                  if (*String != 0x736E65742E726961 || *(String + 8) != 29295)
                  {
                    goto LABEL_12;
                  }

                  AGCLLVMObject::replaceConstantChainWithInstrs(v13, 0xA);
                }

                goto LABEL_124;
              }

              if (v17 == 11)
              {
                if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
                {
                  if (*(v13 + 8))
                  {
                    v68 = 0;
                    v66 = 0;
                    v67 = 0;
                    LODWORD(v61) = 0;
                    *v62 = 0;
                    *v63 = 0xFFFFFFFFLL;
                    *&v63[3] = 0;
                    v64 = 0;
                    v65 = 0;
                    v46 = parseMDTexture(v15, &v67, &v66, v62, &v68 + 1, &v62[1], &v68, v63);
                    if (v46)
                    {
                      v47 = *v13;
                      v60 = v46;
                      if (llvm::Type::isOpaquePointerTy(*v13))
                      {
                        v48 = *(this + *(*this - 24) + 1776);
                        v49 = llvm::StructType::create();
                      }

                      else
                      {
                        if (HIBYTE(v68) == 1)
                        {
                          v50 = **(v47 + 2);
                          if (*(v50 + 8) == 16)
                          {
                            v50 = **(v50 + 16);
                          }

                          v47 = **(v50 + 16);
                        }

                        v51 = *(v47 + 2);
                        if ((v51 & 0x1FF) == 0x110)
                        {
                          v47 = **(v47 + 2);
                          LOBYTE(v51) = *(v47 + 8);
                        }

                        if (v51 == 15)
                        {
                          v52 = **(v47 + 2);
                          if ((*(v52 + 8) & 0x1FF) == 0x110)
                          {
                            v47 = **(v52 + 16);
                          }
                        }

                        v49 = **(v47 + 2);
                      }

                      v64 = v49;
                      v53 = (*(*this + 296))(this, v67);
                      v67 = v53;
                      v54 = v66;
                      *(this + 879) += v66;
                      *(this + 3760) |= v68;
                      LODWORD(v61) = v53 & 0xFFFFF;
                      HIDWORD(v61) = v54;
                      v65 = 1;
                      std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(this + 1000, v53 & 0xFFFFF);
                      v55 = HIBYTE(v68);
                      if ((v62[0] & 2) != 0)
                      {
                        if ((v68 & 0x100) != 0)
                        {
                          v56 = v54 + v53;
                          if (v54 + v53 >= 0x40)
                          {
                            v56 = 64;
                          }

                          v57 = v56 - v53;
                          if (v53 >= 0x40)
                          {
                            v57 = 0;
                          }

                          *(this + 490) |= ~(-1 << v57) << v53;
                          if (v53 <= 0x40)
                          {
                            v58 = 64;
                          }

                          else
                          {
                            v58 = v53;
                          }

                          *(this + 491) |= ~(-1 << (v54 - v57)) << v58;
                          v55 = 1;
                        }

                        else
                        {
                          v55 = 0;
                          if (v53 > 0x3F)
                          {
                            *(this + 491) |= 1 << v53;
                          }

                          else
                          {
                            *(this + 490) |= 1 << v53;
                          }
                        }
                      }

                      AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(this, v13, v53, v54, v55 & 1, this + 387, this + 411);
                      v46 = v60;
                    }
                  }

                  else
                  {
                    v46 = 1;
                  }

                  v9 &= v46;
                  goto LABEL_12;
                }

                if (*String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL)
                {
                  v29 = AGCLLVMUserObject::replaceSamplerInput<llvm::GlobalVariable>(this, v13, v15);
LABEL_125:
                  v9 &= v29;
                }
              }
            }

            else
            {
              switch(v17)
              {
                case 18:
                  if (*String != 0x6D6D6F632E726961 || *(String + 8) != 0x666675625F646E61 || *(String + 16) != 29285)
                  {
                    break;
                  }

                  goto LABEL_124;
                case 19:
                  v22 = *(String + 11);
                  v23 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
                  v24 = 0x7265666675625F74;
LABEL_64:
                  if (!v23 || v22 != v24)
                  {
                    break;
                  }

                  goto LABEL_124;
                case 23:
                  v22 = *(String + 15);
                  v23 = *String == 0x747065642E726961 && *(String + 8) == 0x69636E6574735F68;
                  v24 = 0x65746174735F6C69;
                  goto LABEL_64;
              }
            }
          }

          else if (v17 > 30)
          {
            switch(v17)
            {
              case 31:
                v18 = *(String + 23);
                v20 = *String == 0x65746E692E726961 && *(String + 8) == 0x6E6F697463657372 && *(String + 16) == 0x6F6974636E75665FLL;
                v21 = 0x656C6261745F6E6FLL;
LABEL_119:
                if (!v20 || v18 != v21)
                {
                  goto LABEL_12;
                }

                goto LABEL_124;
              case 35:
                v25 = "air.instance_acceleration_structure";
                v26 = 35;
                break;
              case 36:
                v25 = "air.primitive_acceleration_structure";
                v26 = 36;
                break;
              default:
                goto LABEL_12;
            }

            if (!memcmp(String, v25, v26))
            {
              goto LABEL_124;
            }
          }

          else
          {
            switch(v17)
            {
              case 25:
                v36 = *(String + 24);
                v38 = *String == 0x646E65722E726961 && *(String + 8) == 0x6C657069705F7265 && *(String + 16) == 0x746174735F656E69;
                v39 = 101;
                goto LABEL_106;
              case 26:
                if (*String == 0x706D6F632E726961 && *(String + 8) == 0x657069705F657475 && *(String + 16) == 0x6174735F656E696CLL && *(String + 24) == 25972)
                {
LABEL_124:
                  v29 = AGCLLVMUserObject::replaceGlobalBufferBinding(this, v13, v15);
                  goto LABEL_125;
                }

                v36 = *(String + 24);
                v38 = *String == 0x697369762E726961 && *(String + 8) == 0x636E75665F656C62 && *(String + 16) == 0x6261745F6E6F6974;
                v39 = 25964;
LABEL_106:
                if (!v38 || v36 != v39)
                {
                  break;
                }

                goto LABEL_124;
              case 27:
                v18 = *(String + 19);
                v20 = *String == 0x69646E692E726961 && *(String + 8) == 0x6D6F635F74636572 && *(String + 16) == 0x6675625F646E616DLL;
                v21 = 0x7265666675625F64;
                goto LABEL_119;
            }
          }
        }

        else
        {
          std::string::append((this + *(*this - 24) + 1656), "global binding variable is empty\n");
        }

LABEL_12:
        if (v7 == ++v8)
        {
          return v9 & 1;
        }
      }
    }
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

uint64_t AGCLLVMUserObject::setupArgumentBuffers(int32x2_t *this)
{
  v426[4] = *MEMORY[0x277D85DE8];
  v391[0] = 0;
  v391[1] = 0;
  v392 = 0;
  if (*(*(&this[271] + *(*this - 24)) + 1869) == 1)
  {
    v2 = this[424].u32[0];
    if (v2)
    {
      v3 = this[423];
      v4 = 8 * v2;
      do
      {
        v5 = **&v3;
        if (*(**&v3 + 1) == 1 && *(v5 + 2) == 1)
        {
          std::to_string(&v423, *(v5 + 48));
          v353 = std::string::insert(&v423, 0, "buffer(");
          v354 = v353->__r_.__value_.__r.__words[2];
          *&v412.__r_.__value_.__l.__data_ = *&v353->__r_.__value_.__l.__data_;
          v412.__r_.__value_.__r.__words[2] = v354;
          v353->__r_.__value_.__l.__size_ = 0;
          v353->__r_.__value_.__r.__words[2] = 0;
          v353->__r_.__value_.__r.__words[0] = 0;
          v355 = std::string::append(&v412, "): Argument buffer participates in modification as well as resource use");
          v356 = v355->__r_.__value_.__r.__words[2];
          *__p = *&v355->__r_.__value_.__l.__data_;
          *&__p[16] = v356;
          v355->__r_.__value_.__l.__size_ = 0;
          v355->__r_.__value_.__r.__words[2] = 0;
          v355->__r_.__value_.__r.__words[0] = 0;
          if (__p[23] >= 0)
          {
            v357 = __p;
          }

          else
          {
            v357 = *__p;
          }

          if (__p[23] >= 0)
          {
            v358 = __p[23];
          }

          else
          {
            v358 = *&__p[8];
          }

          std::string::append((&this[207] + *(*this - 24)), v357, v358);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v412.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v412.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v423.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v423.__r_.__value_.__l.__data_);
          }

LABEL_525:
          v149 = 0;
          goto LABEL_526;
        }

        *&v3 += 8;
        v4 -= 8;
      }

      while (v4);
    }
  }

  if (this[431].i32[0])
  {
    v6 = this + 214;
    v371 = &this[270];
    v374 = this + 238;
    v366 = this + 239;
    v370 = this + 213;
    v388 = this + 214;
    do
    {
      v7 = this[430];
      v8 = this[432].u32[0];
      v9 = v7 + 48 * v8;
      if (v8)
      {
        v10 = 48 * v8;
        while ((*(v7 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v7 += 48;
          v10 -= 48;
          if (!v10)
          {
            v7 = v9;
            break;
          }
        }
      }

      v11 = *(v7 + 24);
      v12 = *(v7 + 40);
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::erase(this + 430, v7);
      if ((*(v12 + 8) & 0xFFFFFFFC) != 4)
      {
        goto LABEL_525;
      }

      v13 = *(v11 + 16);
      if (v13 == 62 && v11 != 0)
      {
        v18 = this[428];
        if (!*&v18)
        {
LABEL_541:
          abort();
        }

        v19 = *(*(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF)) + 32);
        while (1)
        {
          while (1)
          {
            v20 = *(*&v18 + 32);
            if (v19 >= v20)
            {
              break;
            }

            v18 = **&v18;
            if (!*&v18)
            {
              goto LABEL_541;
            }
          }

          if (v20 >= v19)
          {
            break;
          }

          v18 = *(*&v18 + 8);
          if (!*&v18)
          {
            goto LABEL_541;
          }
        }

        v21 = *(*&v18 + 40);
        llvm::IRBuilderBase::SetInsertPoint((v6 + *(*this - 24)), v11);
        v381 = v11;
        if (v12 && *(v12 + 8) == 7)
        {
          v416[0] = 0;
          AGCArgumentBuffer::lookup(*(v21 + 56), v11, v416, __p);
          v22 = v416[0];
          v23 = v11 - 32 * (*(v11 + 20) & 0x7FFFFFF);
          *__p = &__p[16];
          *&__p[8] = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(__p, (v23 + 32), v416[0]);
          AGCArgumentBuffer::Constant::remapToTier1Indices(&v412, v12, __p);
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v412, v22, v11);
          v24 = *(*this - 24);
          v25 = *(v21 + 16);
          v26 = *(v21 + 112);
          v27 = v412.__r_.__value_.__r.__words[0];
          v28 = LODWORD(v412.__r_.__value_.__r.__words[1]);
          v424 = 257;
          llvm::Type::isOpaquePointerTy(*v26);
          llvm::IRBuilderBase::CreateGEP(v6 + v24, v25, v26, v27, v28, &v423);
          if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
          {
            free(v412.__r_.__value_.__l.__data_);
          }

          if (*__p != &__p[16])
          {
            free(*__p);
          }

          v29 = "constant_gep";
        }

        else
        {
          v423.__r_.__value_.__r.__words[0] = &v423.__r_.__value_.__r.__words[2];
          v423.__r_.__value_.__l.__size_ = 0x400000000;
          v33 = v11 - 32 * (*(v11 + 20) & 0x7FFFFFF);
          *__p = &__p[16];
          *&__p[8] = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(__p, (v33 + 32), v11);
          v34 = *(v12 + 8);
          if (v12 && v34 == 5)
          {
            v415.__r_.__value_.__r.__words[0] = &v415.__r_.__value_.__r.__words[2];
            v415.__r_.__value_.__l.__size_ = 0x400000000;
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v415, 0);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v415, 1);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v415, 2);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v415, 3);
            v36 = v415.__r_.__value_.__r.__words[0];
            if (LODWORD(v415.__r_.__value_.__r.__words[1]))
            {
              v384 = v415.__r_.__value_.__r.__words[0] + 4 * LODWORD(v415.__r_.__value_.__r.__words[1]);
              do
              {
                v37 = *(*this - 24);
                v38 = *(v21 + 16);
                v39 = *(v21 + 112);
                v40 = LODWORD(v36->__r_.__value_.__l.__data_) == 1;
                if (!LODWORD(v36->__r_.__value_.__l.__data_))
                {
                  v40 = 1;
                }

                v41 = SLODWORD(v36->__r_.__value_.__l.__data_) <= 1 && v40;
                v412.__r_.__value_.__r.__words[0] = &v412.__r_.__value_.__r.__words[2];
                v412.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v12 + 112))
                {
                  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v412, v12 + 104);
                }

                v42 = *(v12 + 192);
                if (v42)
                {
                  v43 = *(v12 + 184);
                  v44 = &v43[2 * v42];
                  do
                  {
                    v45 = *v43;
                    v46 = v43[1];
                    v43 += 2;
                    *(v412.__r_.__value_.__r.__words[0] + 8 * v46) = *(*__p + 8 * v45);
                  }

                  while (v43 != v44);
                }

                v47 = (v388 + v37);
                llvm::Type::getInt32Ty(v47[8], v35);
                *(v412.__r_.__value_.__r.__words[0] + 8 * LODWORD(v412.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v41)
                {
                  llvm::Type::getInt32Ty(v47[8], v48);
                  *(v412.__r_.__value_.__r.__words[0] + 8 * LODWORD(v412.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  ResourceArrayIndex = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v47, __p);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v412, ResourceArrayIndex);
                  v50 = LODWORD(v412.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v51 = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v47, __p);
                  v50 = LODWORD(v412.__r_.__value_.__r.__words[1]);
                  *(v412.__r_.__value_.__r.__words[0] + 8 * LODWORD(v412.__r_.__value_.__r.__words[1]) - 8) = v51;
                }

                v52 = v412.__r_.__value_.__r.__words[0];
                v418 = 257;
                llvm::Type::isOpaquePointerTy(*v39);
                GEP = llvm::IRBuilderBase::CreateGEP(v47, v38, v39, v52, v50, v416);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, GEP);
                if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
                {
                  free(v412.__r_.__value_.__l.__data_);
                }

                v36 = (v36 + 4);
              }

              while (v36 != v384);
              v36 = v415.__r_.__value_.__r.__words[0];
              v6 = v388;
            }

            if (v36 != &v415.__r_.__value_.__r.__words[2])
            {
              free(v36);
            }

            v29 = "texture_gep";
          }

          else if (v12 && v34 == 6)
          {
            v415.__r_.__value_.__r.__words[0] = &v415.__r_.__value_.__r.__words[2];
            v415.__r_.__value_.__l.__size_ = 0x300000000;
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v415, 0);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v415, 2);
            v55 = v415.__r_.__value_.__r.__words[0];
            if (LODWORD(v415.__r_.__value_.__r.__words[1]))
            {
              v385 = v415.__r_.__value_.__r.__words[0] + 4 * LODWORD(v415.__r_.__value_.__r.__words[1]);
              do
              {
                v56 = *(*this - 24);
                v57 = *(v21 + 16);
                v58 = *(v21 + 112);
                v59 = LODWORD(v55->__r_.__value_.__l.__data_) == 1;
                if (LODWORD(v55->__r_.__value_.__l.__data_) == 2)
                {
                  v59 = 0;
                }

                if (LODWORD(v55->__r_.__value_.__l.__data_))
                {
                  v60 = v59;
                }

                else
                {
                  v60 = 1;
                }

                v412.__r_.__value_.__r.__words[0] = &v412.__r_.__value_.__r.__words[2];
                v412.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v12 + 112))
                {
                  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v412, v12 + 104);
                }

                v61 = *(v12 + 192);
                if (v61)
                {
                  v62 = *(v12 + 184);
                  v63 = &v62[2 * v61];
                  do
                  {
                    v64 = *v62;
                    v65 = v62[1];
                    v62 += 2;
                    *(v412.__r_.__value_.__r.__words[0] + 8 * v65) = *(*__p + 8 * v64);
                  }

                  while (v62 != v63);
                }

                v66 = (v388 + v56);
                llvm::Type::getInt32Ty(v66[8], v54);
                *(v412.__r_.__value_.__r.__words[0] + 8 * LODWORD(v412.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v60)
                {
                  llvm::Type::getInt32Ty(v66[8], v67);
                  *(v412.__r_.__value_.__r.__words[0] + 8 * LODWORD(v412.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  v68 = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v66, __p);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v412, v68);
                  v69 = LODWORD(v412.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v70 = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v66, __p);
                  v69 = LODWORD(v412.__r_.__value_.__r.__words[1]);
                  *(v412.__r_.__value_.__r.__words[0] + 8 * LODWORD(v412.__r_.__value_.__r.__words[1]) - 8) = v70;
                }

                v71 = v412.__r_.__value_.__r.__words[0];
                v418 = 257;
                llvm::Type::isOpaquePointerTy(*v58);
                v72 = llvm::IRBuilderBase::CreateGEP(v66, v57, v58, v71, v69, v416);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v72);
                if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
                {
                  free(v412.__r_.__value_.__l.__data_);
                }

                v55 = (v55 + 4);
              }

              while (v55 != v385);
              v55 = v415.__r_.__value_.__r.__words[0];
              v6 = v388;
            }

            if (v55 != &v415.__r_.__value_.__r.__words[2])
            {
              free(v55);
            }

            v29 = "sampler_gep";
          }

          else
          {
            if (v34 == 4)
            {
              v93 = v12;
            }

            else
            {
              v93 = 0;
            }

            v94 = *(*this - 24);
            v95 = *(v21 + 16);
            v96 = *(v21 + 112);
            AGCArgumentBuffer::Buffer::remapToTier1Indices(&v412, v93, (v6 + v94), __p);
            v97 = v412.__r_.__value_.__r.__words[0];
            v98 = LODWORD(v412.__r_.__value_.__r.__words[1]);
            v418 = 257;
            llvm::Type::isOpaquePointerTy(*v96);
            v99 = llvm::IRBuilderBase::CreateGEP(v6 + v94, v95, v96, v97, v98, v416);
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v99);
            if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
            {
              free(v412.__r_.__value_.__l.__data_);
            }

            v29 = "buffer_gep";
          }

          v100 = (*v423.__r_.__value_.__l.__data_ - 32 * (*(*v423.__r_.__value_.__l.__data_ + 20) & 0x7FFFFFF));
          v101 = **(**v100 + 16);
          v102 = this + *(*this - 24);
          v103 = *(v21 + 16);
          v104 = *(v21 + 112);
          v416[0] = v100[4];
          v105 = *(v101 + 12);
          v106 = *(v102 + 238);
          v416[1] = llvm::ConstantInt::get();
          v107 = *(v374 + *(*this - 24));
          v417[0] = llvm::ConstantInt::get();
          v414[0] = 257;
          llvm::Type::isOpaquePointerTy(*v104);
          v108 = llvm::IRBuilderBase::CreateGEP((v102 + 1712), v103, v104, v416, 3, &v412);
          v109 = *(v374 + *(*this - 24));
          v110 = *(v21 + 24);
          v111 = llvm::ConstantInt::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v108);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v111);
          v412.__r_.__value_.__r.__words[0] = &v412.__r_.__value_.__r.__words[2];
          v412.__r_.__value_.__l.__size_ = 0x400000000;
          if (LODWORD(v423.__r_.__value_.__r.__words[1]))
          {
            v112 = v423.__r_.__value_.__r.__words[0];
            v113 = 8 * LODWORD(v423.__r_.__value_.__r.__words[1]);
            do
            {
              v114 = *v112++;
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v412, *v114);
              v113 -= 8;
            }

            while (v113);
          }

          v115 = *(v371 + *(*this - 24));
          v116 = llvm::StructType::get();
          InsertValue = llvm::UndefValue::get();
          LODWORD(v415.__r_.__value_.__l.__data_) = 0;
          if (LODWORD(v423.__r_.__value_.__r.__words[1]))
          {
            v118 = 0;
            do
            {
              v119 = *(*this - 24);
              v120 = *(v423.__r_.__value_.__r.__words[0] + 8 * v118);
              v418 = 257;
              InsertValue = llvm::IRBuilderBase::CreateInsertValue(v6 + v119, InsertValue, v120, &v415, 1, v416);
              v118 = LODWORD(v415.__r_.__value_.__l.__data_) + 1;
              LODWORD(v415.__r_.__value_.__l.__data_) = v118;
            }

            while (LODWORD(v423.__r_.__value_.__r.__words[1]) > v118);
          }

          AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((v370 + *(*this - 24)), v116);
          llvm::IRBuilderBase::CreateAlignedStore((v6 + *(*this - 24)), InsertValue, AllocaInEntryBlock, 0);
          AGCLLVMUserObject::addrSpaceReconciliation(this, AllocaInEntryBlock, *v381);
          if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
          {
            free(v412.__r_.__value_.__l.__data_);
          }

          if (*__p != &__p[16])
          {
            free(*__p);
          }

          if (v423.__r_.__value_.__l.__data_ != &v423.__r_.__value_.__r.__words[2])
          {
            free(v423.__r_.__value_.__l.__data_);
          }
        }

        v122 = 1;
        BYTE1(v421) = 1;
        if (*v29)
        {
          *__p = v29;
          v122 = 3;
        }

        LOBYTE(v421) = v122;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v381);
        continue;
      }

      if (v13 != 60 || v11 == 0)
      {
        if (v13 != 61 || v11 == 0)
        {
          goto LABEL_525;
        }

        llvm::IRBuilderBase::SetInsertPoint((v6 + *(*this - 24)), v11);
        *__p = &__p[16];
        *&__p[8] = 0x400000000;
        v17 = *(v12 + 8);
        if (v12 && v17 == 5)
        {
          AGCArgumentBuffer::Texture::typeSet(&v412, *(&this[271] + *(*this - 24)), *(&this[270] + *(*this - 24)));
        }

        else
        {
          if (!v12 || v17 != 6)
          {
            v123 = this + *(*this - 24);
            v124 = *(v11 - 64);
            v125 = *(v123 + 239);
            v414[0] = 257;
            Cast = llvm::IRBuilderBase::CreateCast((v123 + 1712), 47, v124, v125, &v412);
            v126 = v11;
            v127 = **(v11 - 32);
            if ((*(v127 + 8) & 0xFE) == 0x12)
            {
              v128 = *(**(v127 + 16) + 8);
            }

            v129 = this + *(*this - 24);
            v130 = *(v129 + 270);
            v131 = *(v129 + 239);
            v412.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
            v132 = *(v374 + *(*this - 24));
            v412.__r_.__value_.__l.__size_ = llvm::PointerType::get();
            v412.__r_.__value_.__r.__words[2] = *(v374 + *(*this - 24));
            v133 = llvm::StructType::get();
            v134 = *(v11 - 32);
            v135 = llvm::PointerType::get();
            v136 = AGCLLVMUserObject::addrSpaceReconciliation(this, v134, v135);
            v137 = *(*this - 24);
            v414[0] = 257;
            llvm::Type::isOpaquePointerTy(*v136);
            AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((v6 + v137), v133, v136, 0, &v412);
            v139 = *(*this - 24);
            LODWORD(v423.__r_.__value_.__l.__data_) = 0;
            v414[0] = 257;
            Value = llvm::IRBuilderBase::CreateExtractValue(v6 + v139, AlignedLoad, &v423, 1, &v412);
            v141 = *(*this - 24);
            LODWORD(v423.__r_.__value_.__l.__data_) = 1;
            v414[0] = 257;
            v142 = llvm::IRBuilderBase::CreateExtractValue(v6 + v141, AlignedLoad, &v423, 1, &v412);
            v143 = *(*this - 24);
            LODWORD(v423.__r_.__value_.__l.__data_) = 2;
            v414[0] = 257;
            v144 = llvm::IRBuilderBase::CreateExtractValue(v6 + v143, AlignedLoad, &v423, 1, &v412);
            v11 = v126;
            llvm::IRBuilderBase::CreateAlignedStore((v6 + *(*this - 24)), Cast, Value, 0);
            llvm::IRBuilderBase::CreateAlignedStore((v6 + *(*this - 24)), v144, v142, 0);
            goto LABEL_119;
          }

          AGCArgumentBuffer::Sampler::typeSet(&v412, *(&this[271] + *(*this - 24)), *(&this[270] + *(*this - 24)));
        }

        llvm::SmallVectorImpl<llvm::MDNode *>::operator=(__p, &v412);
        if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
        {
          free(v412.__r_.__value_.__l.__data_);
        }

        AGCLLVMUserObject::replaceArgumentBufferStoreTextureOrSampler(this, v11, __p);
      }

      else
      {
        llvm::IRBuilderBase::SetInsertPoint((v6 + *(*this - 24)), v11);
        *__p = &__p[16];
        *&__p[8] = 0x400000000;
        v30 = *(v12 + 8);
        if (v12)
        {
          v31 = v30 == 5;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          AGCArgumentBuffer::Texture::typeSet(&v412, *(&this[271] + *(*this - 24)), *(&this[270] + *(*this - 24)));
          llvm::SmallVectorImpl<llvm::MDNode *>::operator=(__p, &v412);
          if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
          {
            free(v412.__r_.__value_.__l.__data_);
          }

          AGCLLVMUserObject::replaceArgumentBufferLoadTextureOrSampler(this, v11, __p);
          v32 = "texture_load";
        }

        else if (v12 && v30 == 6)
        {
          AGCArgumentBuffer::Sampler::typeSet(&v412, *(&this[271] + *(*this - 24)), *(&this[270] + *(*this - 24)));
          llvm::SmallVectorImpl<llvm::MDNode *>::operator=(__p, &v412);
          if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
          {
            free(v412.__r_.__value_.__l.__data_);
          }

          AGCLLVMUserObject::replaceArgumentBufferLoadTextureOrSampler(this, v11, __p);
          v32 = "sampler_load";
        }

        else
        {
          v382 = v11;
          v73 = *(v11 - 32);
          if ((*(*v73 + 8) & 0xFE) == 0x12)
          {
            v74 = *(**(*v73 + 16) + 8);
          }

          v75 = *(v366 + *(*this - 24));
          v76 = llvm::PointerType::get();
          v77 = *v76;
          v412.__r_.__value_.__r.__words[0] = v76;
          v78 = llvm::StructType::get();
          v79 = llvm::PointerType::get();
          v80 = AGCLLVMUserObject::addrSpaceReconciliation(this, v73, v79);
          v81 = this + *(*this - 24);
          v82 = *(v81 + 238);
          v423.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
          v83 = *(v374 + *(*this - 24));
          v423.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
          v414[0] = 257;
          llvm::Type::isOpaquePointerTy(*v80);
          v84 = llvm::IRBuilderBase::CreateGEP((v81 + 1712), v78, v80, &v423, 2, &v412);
          v85 = *(*this - 24);
          v414[0] = 257;
          llvm::Type::isOpaquePointerTy(*v84);
          v86 = llvm::IRBuilderBase::CreateAlignedLoad((v6 + v85), v76, v84, 0, &v412);
          v87 = this + *(*this - 24);
          v88 = *(v87 + 239);
          v414[0] = 257;
          llvm::Type::isOpaquePointerTy(*v86);
          v89 = llvm::IRBuilderBase::CreateAlignedLoad(v87 + 214, v88, v86, 0, &v412);
          v90 = *(*this - 24);
          v11 = v382;
          v91 = *v382;
          v414[0] = 257;
          llvm::IRBuilderBase::CreateCast(v6 + v90, 48, v89, v91, &v412);
          v32 = "buffer_load";
        }

        v92 = 1;
        HIBYTE(v414[0]) = 1;
        if (*v32)
        {
          v412.__r_.__value_.__r.__words[0] = v32;
          v92 = 3;
        }

        LOBYTE(v414[0]) = v92;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
      }

LABEL_119:
      llvm::Instruction::eraseFromParent(v11);
      if (*__p != &__p[16])
      {
        free(*__p);
      }
    }

    while (this[431].i32[0]);
  }

  v145 = this[424].u32[0];
  if (!v145)
  {
    v149 = 1;
    goto LABEL_517;
  }

  v146 = this[423];
  v147 = &v146[v145];
  v148 = this + 207;
  v389 = this + 214;
  v361 = this + 213;
  v364 = this + 238;
  LOBYTE(v149) = 1;
  v362 = v147;
  do
  {
    if ((v149 & 1) == 0)
    {
      v149 = 0;
      goto LABEL_514;
    }

    v363 = v146;
    v150 = *v146;
    *v409 = 0u;
    *v410 = 0u;
    v411 = 1065353216;
    *v406 = 0u;
    *v407 = 0u;
    v408 = 1065353216;
    *v403 = 0u;
    *v404 = 0u;
    v405 = 1065353216;
    __val = *(v150 + 48);
    v151 = *(*(&this[271] + *(*this - 24)) + 1869);
    v401[0] = this;
    v401[1] = v409;
    v401[2] = &__val;
    v425[0] = v426;
    v425[1] = 0x400000000;
    v383 = v150;
    v152 = *(v150 + 8);
    if (*(v150 + 3) == 1 && (v153 = *(v152 + 8)) != 0)
    {
      v154 = 0;
      do
      {
        v155 = *(v153 + 24);
        if (*(v155 + 16) == 60)
        {
          ++v154;
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v425, v155);
        }

        v153 = *(v153 + 8);
      }

      while (v153);
      v156 = v154 + 1;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v425, *(v383 + 8));
      if (v154 == -1)
      {
        goto LABEL_495;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v425, v152);
      v156 = 1;
    }

    v157 = 0;
    v365 = v156;
    v387 = v151;
LABEL_161:
    v158 = *(v425[0] + v157);
    v159 = *(v158 + 8);
    if (!v159)
    {
      goto LABEL_492;
    }

    v367 = v157;
    v380 = *(v425[0] + v157);
    while (1)
    {
      v160 = *(v159 + 8);
      if (*(*(v159 + 24) + 16) <= 0x1Bu)
      {
        v161 = 0;
      }

      else
      {
        v161 = *(v159 + 24);
      }

      v399[0] = 4;
      v399[1] = 0;
      v400 = v161;
      if (v161 != -8192 && v161 != -4096 && v161 != 0)
      {
        llvm::ValueHandleBase::AddToUseList(v399);
      }

      if (*(v158 + 16) == 21)
      {
        v163 = v158;
      }

      else
      {
        v163 = 0;
      }

      v390 = v160;
      if (AGCLLVMUserObject::isAllocaStoreForDebugger(this[4].i8[7], v161, v163))
      {
        llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v161);
        v164 = *(*this - 24);
        v165 = *(v383 + 112);
        v166 = *v158;
        LOWORD(v421) = 257;
        v167 = llvm::IRBuilderBase::CreateCast(v389 + v164, 49, v165, v166, __p);
        v168 = (v161 - 64);
        if (*(v161 - 8))
        {
          v169 = *(v161 - 7);
          **(v161 - 6) = v169;
          if (v169)
          {
            *(v169 + 16) = *(v161 - 6);
          }
        }

        *v168 = v167;
        if (v167)
        {
          v172 = *(v167 + 8);
          v170 = (v167 + 8);
          v171 = v172;
          *(v161 - 7) = v172;
          if (v172)
          {
            *(v171 + 16) = v161 - 56;
          }

          *(v161 - 6) = v170;
          *v170 = v168;
        }

        v173 = 6;
        goto LABEL_388;
      }

      v174 = v400;
      if (!v400 || *(v400 + 16) != 62)
      {
        if (v151)
        {
          std::to_string(&v423, __val);
          v185 = std::string::insert(&v423, 0, "buffer(");
          v186 = v185->__r_.__value_.__r.__words[2];
          *&v412.__r_.__value_.__l.__data_ = *&v185->__r_.__value_.__l.__data_;
          v412.__r_.__value_.__r.__words[2] = v186;
          v185->__r_.__value_.__l.__size_ = 0;
          v185->__r_.__value_.__r.__words[2] = 0;
          v185->__r_.__value_.__r.__words[0] = 0;
          v187 = std::string::append(&v412, "): Unable to map argument buffer access to resource");
          v188 = v187->__r_.__value_.__r.__words[2];
          *__p = *&v187->__r_.__value_.__l.__data_;
          *&__p[16] = v188;
          v187->__r_.__value_.__l.__size_ = 0;
          v187->__r_.__value_.__r.__words[2] = 0;
          v187->__r_.__value_.__r.__words[0] = 0;
          if (__p[23] >= 0)
          {
            v189 = __p;
          }

          else
          {
            v189 = *__p;
          }

          if (__p[23] >= 0)
          {
            v190 = __p[23];
          }

          else
          {
            v190 = *&__p[8];
          }

          std::string::append((v148 + *(*this - 24)), v189, v190);
          v158 = v380;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v412.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v412.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v423.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v423.__r_.__value_.__l.__data_);
          }

          v173 = 1;
          goto LABEL_388;
        }

        goto LABEL_386;
      }

      v398 = 0;
      v397 = 0;
      v175 = AGCArgumentBuffer::lookup(*(v383 + 56), v400, &v398, &v397);
      if (!v175 || (v176 = *(v175 + 2), (v176 & 0xFFFFFFFC) != 4))
      {
        if (!v151)
        {
          goto LABEL_386;
        }

        std::to_string(&v423, __val);
        v191 = std::string::insert(&v423, 0, "buffer(");
        v192 = v191->__r_.__value_.__r.__words[2];
        *&v412.__r_.__value_.__l.__data_ = *&v191->__r_.__value_.__l.__data_;
        v412.__r_.__value_.__r.__words[2] = v192;
        v191->__r_.__value_.__l.__size_ = 0;
        v191->__r_.__value_.__r.__words[2] = 0;
        v191->__r_.__value_.__r.__words[0] = 0;
        v193 = "): Unable to map argument buffer access to resource";
LABEL_211:
        v194 = std::string::append(&v412, v193);
        v195 = v194->__r_.__value_.__r.__words[2];
        *__p = *&v194->__r_.__value_.__l.__data_;
        *&__p[16] = v195;
        v194->__r_.__value_.__l.__size_ = 0;
        v194->__r_.__value_.__r.__words[2] = 0;
        v194->__r_.__value_.__r.__words[0] = 0;
        if (__p[23] >= 0)
        {
          v196 = __p;
        }

        else
        {
          v196 = *__p;
        }

        if (__p[23] >= 0)
        {
          v197 = __p[23];
        }

        else
        {
          v197 = *&__p[8];
        }

        std::string::append((v148 + *(*this - 24)), v196, v197);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v412.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v412.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v423.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v423.__r_.__value_.__l.__data_);
        }

        v173 = 1;
        goto LABEL_387;
      }

      v368 = v175;
      if (v151 && v397 && v398 == v174)
      {
        if (AGCLLVMUserObject::isVoidPointerUseInIntrinsic(this, v174))
        {
          llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v174);
          v177 = *(v383 + 112);
          v178 = *v177;
          if ((*(*v177 + 8) & 0xFE) == 0x12)
          {
            v178 = **(v178 + 16);
          }

          v179 = **(v178 + 16);
          v180 = *(*this - 24);
          v181 = (v174 - 4 * (*(v174 + 5) & 0x7FFFFFF))[4];
          LOWORD(v421) = 257;
          v182 = llvm::IRBuilderBase::CreateGEP((v389 + v180), v179, v177, v181, __p);
          v183 = *(*this - 24);
          v184 = *v174;
          LOWORD(v421) = 257;
          llvm::IRBuilderBase::CreateCast(v389 + v183, 49, v182, v184, __p);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v174);
          goto LABEL_386;
        }

        v175 = v368;
        v176 = *(v368 + 8);
      }

      AGCArgumentBuffer::Resource::getResourceIdBounds(v175, v174);
      if (v198)
      {
        if (v176 != 4)
        {
          goto LABEL_230;
        }

        goto LABEL_237;
      }

      if (v176 != 4)
      {
        if (v176 != 7)
        {
          if (!v151)
          {
            goto LABEL_386;
          }

          std::to_string(&v423, __val);
          v281 = std::string::insert(&v423, 0, "buffer(");
          v282 = v281->__r_.__value_.__r.__words[2];
          *&v412.__r_.__value_.__l.__data_ = *&v281->__r_.__value_.__l.__data_;
          v412.__r_.__value_.__r.__words[2] = v282;
          v281->__r_.__value_.__l.__size_ = 0;
          v281->__r_.__value_.__r.__words[2] = 0;
          v281->__r_.__value_.__r.__words[0] = 0;
          v193 = "): Argument buffer accessed with non-zero array index";
          goto LABEL_211;
        }

LABEL_230:
        if (v176 == 7 && v151)
        {
          v199 = v398;
          v200 = v174 - 32 * (*(v174 + 5) & 0x7FFFFFF);
          *__p = &__p[16];
          *&__p[8] = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(__p, v200 + 32, v398);
          AGCArgumentBuffer::Constant::remapToTier1Indices(&v412, v368, __p);
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v412, v199, v174);
          llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v174);
          v201 = *(*this - 24);
          v202 = *(v383 + 16);
          v203 = *(v383 + 112);
          v204 = v412.__r_.__value_.__r.__words[0];
          v205 = LODWORD(v412.__r_.__value_.__r.__words[1]);
          v424 = 257;
          llvm::Type::isOpaquePointerTy(*v203);
          llvm::IRBuilderBase::CreateGEP(v389 + v201, v202, v203, v204, v205, &v423);
          llvm::Value::replaceAllUsesWith();
          llvm::Value::takeName();
          if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
          {
            free(v412.__r_.__value_.__l.__data_);
          }

          v148 = this + 207;
          v157 = v367;
          if (*__p != &__p[16])
          {
            free(*__p);
          }

          v151 = v387;
          goto LABEL_384;
        }

        if (v176 != 7)
        {
          goto LABEL_384;
        }

LABEL_386:
        v173 = 6;
        goto LABEL_387;
      }

LABEL_237:
      if (!v151)
      {
        goto LABEL_386;
      }

      v372 = v198;
      v423.__r_.__value_.__r.__words[0] = &v423.__r_.__value_.__r.__words[2];
      v423.__r_.__value_.__l.__size_ = 0x800000000;
      *__p = &v421;
      *&__p[8] = &v421;
      *&__p[16] = 8;
      LODWORD(v420) = 0;
      v416[0] = v417;
      v416[1] = 0x800000000;
      v206 = *(v174 + 1);
      if (!v206)
      {
        goto LABEL_376;
      }

      do
      {
        v207 = *(v206 + 8);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, *(v206 + 24));
        v206 = v207;
      }

      while (v207);
      v208 = v423.__r_.__value_.__r.__words[1];
      if (!LODWORD(v423.__r_.__value_.__r.__words[1]))
      {
        goto LABEL_365;
      }

      v360 = v174 + 32;
      v209 = 0x9DDFEA08EB382D69 * ((8 * (v368 & 0x1FFFFFFF) + 8) ^ HIDWORD(v368));
      v210 = 0x9DDFEA08EB382D69 * (HIDWORD(v368) ^ (v209 >> 47) ^ v209);
      v359 = 0x9DDFEA08EB382D69 * (v210 ^ (v210 >> 47));
      do
      {
        v211 = *(v423.__r_.__value_.__r.__words[0] + 8 * v208 - 8);
        LODWORD(v423.__r_.__value_.__r.__words[1]) = v208 - 1;
        v395[0] = 4;
        v395[1] = 0;
        v396 = v211;
        if (v211 == -8192 || (v211 != -4096 ? (v212 = v211 == 0) : (v212 = 1), v212))
        {
          if (v211)
          {
            goto LABEL_249;
          }
        }

        else
        {
          llvm::ValueHandleBase::AddToUseList(v395);
          if (v211)
          {
LABEL_249:
            if (*(v211 + 16) == 83)
            {
              llvm::SmallPtrSetImpl<void *>::insert(&v412, __p, v211);
              if ((AGCLLVMUserObject::IsPhiInputsEquivalent(v211, v213) & 1) == 0)
              {
                std::to_string(&v393, __val);
                v229 = std::string::insert(&v393, 0, "buffer(");
                v230 = v229->__r_.__value_.__r.__words[2];
                *&v415.__r_.__value_.__l.__data_ = *&v229->__r_.__value_.__l.__data_;
                v415.__r_.__value_.__r.__words[2] = v230;
                v229->__r_.__value_.__l.__size_ = 0;
                v229->__r_.__value_.__r.__words[2] = 0;
                v229->__r_.__value_.__r.__words[0] = 0;
                v231 = std::string::append(&v415, "): Unable to map argument buffer access to resource");
                v232 = v231->__r_.__value_.__r.__words[2];
                *&v412.__r_.__value_.__l.__data_ = *&v231->__r_.__value_.__l.__data_;
                v412.__r_.__value_.__r.__words[2] = v232;
                v231->__r_.__value_.__l.__size_ = 0;
                v231->__r_.__value_.__r.__words[2] = 0;
                v231->__r_.__value_.__r.__words[0] = 0;
                if ((v412.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v233 = &v412;
                }

                else
                {
                  v233 = v412.__r_.__value_.__r.__words[0];
                }

                if ((v412.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v412.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v412.__r_.__value_.__l.__size_;
                }

                std::string::append((v148 + *(*this - 24)), v233, size);
                if (SHIBYTE(v412.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v412.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v415.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v415.__r_.__value_.__l.__data_);
                }

                v157 = v367;
                if (SHIBYTE(v393.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v393.__r_.__value_.__l.__data_);
                }

                v173 = 1;
                goto LABEL_353;
              }

              v214 = v211[1];
              while (v214)
              {
                while (1)
                {
                  v215 = *(v214 + 24);
                  v214 = *(v214 + 8);
                  v216 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(__p, v215);
                  v217 = (*&__p[8] == *__p ? &__p[20] : &__p[16]);
                  if ((*&__p[8] + 8 * *v217) == v216)
                  {
                    break;
                  }

                  if (!v214)
                  {
                    goto LABEL_261;
                  }
                }

                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v215);
              }
            }
          }
        }

LABEL_261:
        v218 = *(v396 + 16);
        if (v218 == 61)
        {
          v173 = 9;
          goto LABEL_352;
        }

        if (v218 != 60)
        {
          goto LABEL_350;
        }

        if ((v372 & 1) == 0)
        {
          goto LABEL_300;
        }

        if (llvm::GetElementPtrInst::hasAllConstantIndices(v174))
        {
          v219 = *(v368 + 232);
          v220 = *(v368 + 24);
          if (v220)
          {
            v221 = *(v368 + 16);
            v222 = 16 * v220;
            do
            {
              v223 = *&v360[32 * *(*v221 + 32) + -32 * (*(v174 + 5) & 0x7FFFFFF)];
              v224 = (v223 + 24);
              if (*(v223 + 32) >= 0x41u)
              {
                v224 = *v224;
              }

              v219 = (v219 + *(*v221 + 28) * *v224);
              v221 += 16;
              v222 -= 16;
            }

            while (v222);
          }

          if (*v383 == 1)
          {
            (*(*this + 304))(this, v396, v219, __val);
          }

          v225 = *(*&this[21] + 80);
          if (v225)
          {
            v226 = v225 - 24;
          }

          else
          {
            v226 = 0;
          }

          v227 = *(v226 + 40);
          if (v227)
          {
            v228 = (v227 - 24);
          }

          else
          {
            v228 = 0;
          }

          llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v228);
          v173 = v396;
          if (v396)
          {
            AGCLLVMUserObject::replaceArgumentBufferAccesses(AGCLLVMUserObject::IndirectArgumentBufferInfo const*)::$_0::operator()(v401, v219, v368);
            llvm::Value::replaceAllUsesWith();
            goto LABEL_349;
          }

          goto LABEL_352;
        }

        v235 = &RASTER_ORDER_GROUP_NONE;
        if (*(v368 + 276))
        {
          v235 = (v368 + 272);
        }

        if (*v235 == -1)
        {
LABEL_300:
          llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v211);
          v238 = v398;
          v239 = &v360[-32 * (*(v174 + 5) & 0x7FFFFFF)];
          v412.__r_.__value_.__r.__words[0] = &v412.__r_.__value_.__r.__words[2];
          v412.__r_.__value_.__l.__size_ = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v412, v239, v398);
          AGCArgumentBuffer::Buffer::remapToTier1Indices(&v415, v368, (v389 + *(*this - 24)), &v412);
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v415, v238, v174);
          v240 = *(*this - 24);
          v241 = *(v383 + 16);
          v242 = *(v383 + 112);
          v243 = v415.__r_.__value_.__r.__words[0];
          v377 = LODWORD(v415.__r_.__value_.__r.__words[1]);
          v394 = 257;
          llvm::Type::isOpaquePointerTy(*v242);
          v244 = llvm::IRBuilderBase::CreateGEP(v389 + v240, v241, v242, v243, v377, &v393);
          v245 = *(*this - 24);
          v394 = 257;
          Load = AGCLLVMBuilder::CreateLoad((v361 + v245), v244, &v393);
          v247 = *(*this - 24);
          v248 = *v211;
          v394 = 257;
          llvm::IRBuilderBase::CreateCast(v389 + v247, 48, Load, v248, &v393);
          llvm::Value::replaceAllUsesWith();
          if (v415.__r_.__value_.__l.__data_ != &v415.__r_.__value_.__r.__words[2])
          {
            free(v415.__r_.__value_.__l.__data_);
          }

          if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
          {
            free(v412.__r_.__value_.__l.__data_);
          }

          v148 = this + 207;
          goto LABEL_349;
        }

        if (v406[1])
        {
          v236 = vcnt_s8(v406[1]);
          v236.i16[0] = vaddlv_u8(v236);
          if (v236.u32[0] > 1uLL)
          {
            v237 = v359;
            if (v359 >= v406[1])
            {
              v237 = v359 % v406[1];
            }
          }

          else
          {
            v237 = v359 & (v406[1] - 1);
          }

          v249 = *(v406[0] + v237);
          if (v249)
          {
            v250 = *v249;
            if (*v249)
            {
              do
              {
                v251 = v250[1];
                if (v251 == v359)
                {
                  if (v250[2] == v368)
                  {
                    goto LABEL_348;
                  }
                }

                else
                {
                  if (v236.u32[0] > 1uLL)
                  {
                    if (v251 >= v406[1])
                    {
                      v251 %= v406[1];
                    }
                  }

                  else
                  {
                    v251 &= v406[1] - 1;
                  }

                  if (v251 != v237)
                  {
                    break;
                  }
                }

                v250 = *v250;
              }

              while (v250);
            }
          }
        }

        v252 = *(*&this[21] + 80);
        if (v252)
        {
          v253 = v252 - 24;
        }

        else
        {
          v253 = 0;
        }

        v254 = *(v253 + 40);
        if (v254)
        {
          v255 = (v254 - 24);
        }

        else
        {
          v255 = 0;
        }

        llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v255);
        v375 = llvm::ArrayType::get(*(v368 + 264), *(v368 + 240));
        v378 = AGCLLVMBuilder::createAllocaInEntryBlock((v361 + *(*this - 24)), v375);
        if (!v406[1])
        {
          goto LABEL_341;
        }

        v256 = vcnt_s8(v406[1]);
        v256.i16[0] = vaddlv_u8(v256);
        if (v256.u32[0] > 1uLL)
        {
          v257 = v359;
          v258 = v368;
          if (v359 >= v406[1])
          {
            v257 = v359 % v406[1];
          }
        }

        else
        {
          v257 = v359 & (v406[1] - 1);
          v258 = v368;
        }

        v259 = *(v406[0] + v257);
        if (!v259 || (v260 = *v259) == 0)
        {
LABEL_341:
          operator new();
        }

        v261 = v260;
        while (1)
        {
          v262 = v261[1];
          if (v262 == v359)
          {
            break;
          }

          if (v256.u32[0] > 1uLL)
          {
            if (v262 >= v406[1])
            {
              v262 %= v406[1];
            }
          }

          else
          {
            v262 &= v406[1] - 1;
          }

          if (v262 != v257)
          {
            goto LABEL_341;
          }

LABEL_340:
          v261 = *v261;
          if (!v261)
          {
            goto LABEL_341;
          }
        }

        if (v261[2] != v258)
        {
          goto LABEL_340;
        }

        v250 = v261;
        if (*(v258 + 240))
        {
          v263 = 0;
          do
          {
            v264 = *(v258 + 232);
            v265 = *(v258 + 24);
            if (v265)
            {
              v266 = *(v258 + 16);
              v267 = &v266[4 * v265];
              v268 = v263;
              do
              {
                v269 = v266[2];
                v270 = v268 / v269;
                v268 %= v269;
                v264 += *(*v266 + 28) * v270;
                v266 += 4;
              }

              while (v266 != v267);
            }

            v271 = *(*this - 24);
            v272 = *(v364 + v271);
            v415.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
            v273 = *(v364 + *(*this - 24));
            v415.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
            v414[0] = 257;
            llvm::Type::isOpaquePointerTy(*v378);
            v274 = llvm::IRBuilderBase::CreateGEP(v389 + v271, v375, v378, &v415, 2, &v412);
            v275 = AGCLLVMUserObject::replaceArgumentBufferAccesses(AGCLLVMUserObject::IndirectArgumentBufferInfo const*)::$_0::operator()(v401, v264, v368);
            llvm::IRBuilderBase::CreateAlignedStore((v389 + *(*this - 24)), v275, v274, 0);
            v258 = v368;
            ++v263;
          }

          while (v263 < *(v368 + 240));
        }

LABEL_348:
        llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v211);
        v276 = v250[3];
        v277 = v361 + *(*this - 24);
        v278 = *(v277 + 200);
        v415.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
        v415.__r_.__value_.__l.__size_ = AGCArgumentBuffer::Resource::getResourceId(v368, (v389 + *(*this - 24)), v174);
        v414[0] = 257;
        v279 = AGCLLVMBuilder::CreateGEP(v277, v276, &v415, 2, &v412);
        v280 = *(*this - 24);
        v414[0] = 257;
        AGCLLVMBuilder::CreateLoad((v361 + v280), v279, &v412);
        llvm::Value::replaceAllUsesWith();
        v148 = this + 207;
LABEL_349:
        if (v396)
        {
LABEL_350:
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v416, v211);
        }

        v173 = 0;
LABEL_352:
        v157 = v367;
LABEL_353:
        if (v396 != -8192 && v396 != -4096 && v396)
        {
          llvm::ValueHandleBase::RemoveFromUseList(v395);
        }

        if (v173 != 9 && v173)
        {
          v151 = v387;
          goto LABEL_377;
        }

        v208 = v423.__r_.__value_.__r.__words[1];
      }

      while (LODWORD(v423.__r_.__value_.__r.__words[1]));
LABEL_365:
      v412.__r_.__value_.__r.__words[0] = v414;
      v412.__r_.__value_.__l.__size_ = v414;
      v412.__r_.__value_.__r.__words[2] = 8;
      v413 = 0;
      v151 = v387;
      if (LODWORD(v416[1]))
      {
        v283 = (v416[0] + 8 * LODWORD(v416[1]));
        do
        {
          v285 = *--v283;
          v284 = v285;
          if (v285)
          {
            v286 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(&v412, v284);
            v287 = v412.__r_.__value_.__l.__size_ == v412.__r_.__value_.__r.__words[0] ? (&v412.__r_.__value_.__r.__words[2] + 4) : &v412.__r_.__value_.__r.__words[2];
            if ((v412.__r_.__value_.__l.__size_ + 8 * *v287) == v286)
            {
              llvm::Instruction::eraseFromParent(*v283);
              llvm::SmallPtrSetImpl<void *>::insert(&v415, &v412, *v283);
            }
          }
        }

        while (v283 != v416[0]);
        if (v412.__r_.__value_.__l.__size_ != v412.__r_.__value_.__r.__words[0])
        {
          free(v412.__r_.__value_.__l.__size_);
        }
      }

LABEL_376:
      v173 = 0;
LABEL_377:
      if (v416[0] != v417)
      {
        free(v416[0]);
      }

      if (*&__p[8] != *__p)
      {
        free(*&__p[8]);
      }

      if (v423.__r_.__value_.__l.__data_ != &v423.__r_.__value_.__r.__words[2])
      {
        free(v423.__r_.__value_.__l.__data_);
      }

      if (v173)
      {
        goto LABEL_387;
      }

LABEL_384:
      v288 = *(v368 + 8);
      if (v288 == 9)
      {
        if (v151)
        {
          goto LABEL_488;
        }

        goto LABEL_386;
      }

      if (v288 == 5)
      {
        v289 = v368;
      }

      else
      {
        v289 = 0;
      }

      if (v288 == 6)
      {
        v290 = v368;
      }

      else
      {
        v290 = 0;
      }

      v291 = **(*v174 + 16);
      v379 = v291;
      if (*(v291 + 8) == 15)
      {
        v291 = **(v291 + 16);
      }

      if ((v151 & 1) == 0 && *v383 != 1)
      {
        v173 = 6;
        goto LABEL_387;
      }

      if (v289)
      {
        v422 = 0;
        *&__p[8] = *(v289 + 244);
        v292 = (v289 + 248);
        if (!*(v289 + 252))
        {
          v292 = &RASTER_ORDER_GROUP_NONE;
        }

        v293 = *v292;
        *&__p[16] = 0;
        *&__p[12] = v293;
        v420 = v289;
        v421 = v291;
        _AGCBindingInfo::_AGCBindingInfo(&v412, *(v289 + 236), __val);
        v294 = *(v289 + 240);
        *__p = v412.__r_.__value_.__l.__data_;
        *&__p[4] = v294;
        data = v412.__r_.__value_.__l.__data_;
        std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(&this[125], v412.__r_.__value_.__l.__data_);
        this[482].i8[2] = 1;
        v295 = 0x9DDFEA08EB382D69 * ((8 * (v289 & 0x1FFFFFFF) + 8) ^ HIDWORD(v289));
        v296 = 0x9DDFEA08EB382D69 * (HIDWORD(v289) ^ (v295 >> 47) ^ v295);
        v297 = 0x9DDFEA08EB382D69 * (v296 ^ (v296 >> 47));
        if (v403[1])
        {
          v298 = vcnt_s8(v403[1]);
          v298.i16[0] = vaddlv_u8(v298);
          if (v298.u32[0] > 1uLL)
          {
            v299 = 0x9DDFEA08EB382D69 * (v296 ^ (v296 >> 47));
            if (v297 >= v403[1])
            {
              v299 = v297 % v403[1];
            }
          }

          else
          {
            v299 = v297 & (v403[1] - 1);
          }

          v301 = *(v403[0] + v299);
          if (v301)
          {
            for (i = *v301; i; i = *i)
            {
              v303 = i[1];
              if (v303 == v297)
              {
                if (i[2] == v289)
                {
                  goto LABEL_431;
                }
              }

              else
              {
                if (v298.u32[0] > 1uLL)
                {
                  if (v303 >= v403[1])
                  {
                    v303 %= v403[1];
                  }
                }

                else
                {
                  v303 &= v403[1] - 1;
                }

                if (v303 != v299)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      LOBYTE(v420) = 0;
      *&__p[8] = v290;
      *&__p[16] = v291;
      _AGCBindingInfo::_AGCBindingInfo(&v412, *(v290 + 236), __val);
      v300 = *(v290 + 240);
      *__p = v412.__r_.__value_.__l.__data_;
      *&__p[4] = v300;
      data = v412.__r_.__value_.__l.__data_;
      std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>(&this[128], v412.__r_.__value_.__l.__data_);
      this[482].i8[3] = 1;
LABEL_431:
      llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v174);
      v304 = *v174;
      ResourceId = AGCArgumentBuffer::Resource::getResourceId(v368, (v389 + *(*this - 24)), v174);
      v305 = v174;
      if (v151)
      {
        v305 = llvm::UndefValue::get();
      }

      ResourceIdBounds = AGCArgumentBuffer::Resource::getResourceIdBounds(v368, v174);
      if ((v307 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v395[0] = vadd_s32(vdup_n_s32(data), ResourceIdBounds);
      if (v289)
      {
        v308 = 399;
      }

      else
      {
        v308 = 405;
      }

      AGCLLVMUserObject::buildABResourceIntrinsic(this, &this[v308], v379, ResourceId, v395, data, v305);
      llvm::Value::takeName();
      v309 = *(v174 + 1);
LABEL_438:
      if (v309)
      {
        v412.__r_.__value_.__r.__words[0] = &v412.__r_.__value_.__r.__words[2];
        v412.__r_.__value_.__l.__size_ = 0x800000000;
        v423.__r_.__value_.__r.__words[0] = &v423.__r_.__value_.__r.__words[2];
        v423.__r_.__value_.__l.__size_ = 0x800000000;
        *__p = &v421;
        *&__p[8] = &v421;
        *&__p[16] = 8;
        LODWORD(v420) = 0;
        v369 = *(v309 + 1);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v412, *(v309 + 3));
        v310 = v412.__r_.__value_.__r.__words[1];
        if (!LODWORD(v412.__r_.__value_.__r.__words[1]))
        {
LABEL_460:
          if (LODWORD(v423.__r_.__value_.__r.__words[1]))
          {
            v320 = v423.__r_.__value_.__r.__words[0];
            v321 = v423.__r_.__value_.__r.__words[0] + 8 * LODWORD(v423.__r_.__value_.__r.__words[1]);
            do
            {
              v323 = *(v321 - 8);
              v321 -= 8;
              v322 = v323;
              if (v323)
              {
                llvm::Instruction::eraseFromParent(v322);
                v320 = v423.__r_.__value_.__r.__words[0];
              }
            }

            while (v321 != v320);
          }

          v324 = 1;
          goto LABEL_479;
        }

        v311 = 0;
        while (1)
        {
          v312 = *(v412.__r_.__value_.__r.__words[0] + 8 * v310 - 8);
          LODWORD(v412.__r_.__value_.__r.__words[1]) = v310 - 1;
          v313 = v312[16];
          if (v313 == 83)
          {
            v314 = v312;
          }

          else
          {
            v314 = 0;
          }

          if (v151 && v314)
          {
            llvm::SmallPtrSetImpl<void *>::insert(v416, __p, v312);
            if ((AGCLLVMUserObject::IsPhiInputsEquivalent(v314, v315) & 1) == 0)
            {
              std::to_string(&v393, __val);
              v325 = std::string::insert(&v393, 0, "buffer(");
              v326 = v325->__r_.__value_.__r.__words[2];
              *&v415.__r_.__value_.__l.__data_ = *&v325->__r_.__value_.__l.__data_;
              v415.__r_.__value_.__r.__words[2] = v326;
              v325->__r_.__value_.__l.__size_ = 0;
              v325->__r_.__value_.__r.__words[2] = 0;
              v325->__r_.__value_.__r.__words[0] = 0;
              v327 = std::string::append(&v415, "): Unable to map argument buffer access to resource");
              v328 = v327->__r_.__value_.__r.__words[2];
              *v416 = *&v327->__r_.__value_.__l.__data_;
              v417[0] = v328;
              v327->__r_.__value_.__l.__size_ = 0;
              v327->__r_.__value_.__r.__words[2] = 0;
              v327->__r_.__value_.__r.__words[0] = 0;
              if (v417[0] >= 0)
              {
                v329 = v416;
              }

              else
              {
                v329 = v416[0];
              }

              if (v417[0] >= 0)
              {
                v330 = HIBYTE(v417[0]);
              }

              else
              {
                v330 = v416[1];
              }

              std::string::append((&this[207] + *(*this - 24)), v329, v330);
              if (SHIBYTE(v417[0]) < 0)
              {
                operator delete(v416[0]);
              }

              if (SHIBYTE(v415.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v415.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v393.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v393.__r_.__value_.__l.__data_);
              }

              v324 = 0;
LABEL_479:
              if (*&__p[8] != *__p)
              {
                free(*&__p[8]);
              }

              if (v423.__r_.__value_.__l.__data_ != &v423.__r_.__value_.__r.__words[2])
              {
                free(v423.__r_.__value_.__l.__data_);
              }

              if (v412.__r_.__value_.__l.__data_ != &v412.__r_.__value_.__r.__words[2])
              {
                free(v412.__r_.__value_.__l.__data_);
              }

              v309 = v369;
              if ((v324 & 1) == 0)
              {
                v173 = 1;
                v148 = this + 207;
                v157 = v367;
                goto LABEL_387;
              }

              goto LABEL_438;
            }

            v316 = *(v314 + 1);
            while (v316)
            {
              v317 = *(v316 + 24);
              v316 = *(v316 + 8);
              v318 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(__p, v317);
              if (*&__p[8] == *__p)
              {
                v319 = &__p[20];
              }

              else
              {
                v319 = &__p[16];
              }

              if ((*&__p[8] + 8 * *v319) == v318)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v412, v317);
                v311 = 1;
              }
            }

            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v312);
            v313 = v312[16];
            v151 = v387;
          }

          if (v313 == 60)
          {
            if ((v151 & v311) == 1)
            {
              llvm::IRBuilderBase::SetInsertPoint((v389 + *(*this - 24)), v312);
              AGCLLVMUserObject::buildABResourceIntrinsic(this, &this[v308], v379, ResourceId, v395, data, v305);
            }

            llvm::Value::replaceAllUsesWith();
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v423, v312);
          }

          v310 = v412.__r_.__value_.__r.__words[1];
          if (!LODWORD(v412.__r_.__value_.__r.__words[1]))
          {
            goto LABEL_460;
          }
        }
      }

      v148 = this + 207;
      v157 = v367;
LABEL_488:
      v173 = 0;
      if (v151 && v400)
      {
        llvm::Instruction::eraseFromParent(v161);
        v173 = 0;
      }

LABEL_387:
      v158 = v380;
LABEL_388:
      if (v400 != -8192 && v400 != -4096 && v400)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v399);
      }

      if (v173 <= 4)
      {
        break;
      }

      if (v173 != 6)
      {
        if (v173 != 5)
        {
          goto LABEL_498;
        }

LABEL_492:
        if (++v157 == v365)
        {
LABEL_495:
          if ((v151 & 1) == 0)
          {
            v331 = *(v383 + 8);
            v332 = *(v383 + 112);
            llvm::Value::replaceAllUsesWith();
          }

          v149 = 1;
          goto LABEL_499;
        }

        goto LABEL_161;
      }

LABEL_396:
      v159 = v390;
      if (!v390)
      {
        goto LABEL_492;
      }
    }

    if (!v173)
    {
      goto LABEL_396;
    }

    if (v173 == 2)
    {
      goto LABEL_495;
    }

LABEL_498:
    v149 = 0;
LABEL_499:
    if (v425[0] != v426)
    {
      free(v425[0]);
    }

    v333 = v404[0];
    if (v404[0])
    {
      do
      {
        v334 = *v333;
        operator delete(v333);
        v333 = v334;
      }

      while (v334);
    }

    v335 = v403[0];
    v403[0] = 0;
    if (v335)
    {
      operator delete(v335);
    }

    v336 = v407[0];
    if (v407[0])
    {
      do
      {
        v337 = *v336;
        operator delete(v336);
        v336 = v337;
      }

      while (v337);
    }

    v338 = v406[0];
    v406[0] = 0;
    if (v338)
    {
      operator delete(v338);
    }

    v339 = v410[0];
    if (v410[0])
    {
      do
      {
        v340 = *v339;
        operator delete(v339);
        v339 = v340;
      }

      while (v340);
    }

    v341 = v409[0];
    v409[0] = 0;
    if (v341)
    {
      operator delete(v341);
    }

    v146 = v363;
    v147 = v362;
LABEL_514:
    ++v146;
  }

  while (v146 != v147);
LABEL_517:
  v342 = this[439].u32[0];
  v343 = this[439].u32[1];
  v344 = this[440].u32[0];
  v345 = this[440].u32[1];
  v346 = this[441].u32[0];
  v347 = this[441].u32[1];
  v348 = this[2].u8[2];
  (*(**(&this[271] + *(*this - 24)) + 792))(__p);
  *v391 = *&__p[8];
  v392 = v420;
  if (__p[0])
  {
    std::string::append((&this[207] + *(*this - 24)), "Total number of indirect argument buffer resources exceeded for");
    if (v392 >= 0)
    {
      v349 = v391;
    }

    else
    {
      v349 = v391[0];
    }

    if (v392 >= 0)
    {
      v350 = HIBYTE(v392);
    }

    else
    {
      v350 = v391[1];
    }

    std::string::append((&this[207] + *(*this - 24)), v349, v350);
    goto LABEL_525;
  }

LABEL_526:
  if (SHIBYTE(v392) < 0)
  {
    operator delete(v391[0]);
  }

  v351 = *MEMORY[0x277D85DE8];
  return v149;
}

void AGCLLVMGen5TargetLowerer::exceededResourceLimits(AGCLLVMGen5TargetLowerer *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X7>, char *a6@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v62, &unk_20E75F419);
  v12 = (*(**(this + 115) + 24))(*(this + 115), a5);
  v13 = (*(**(this + 115) + 16))(*(this + 115));
  v14 = v13;
  if (v12 >= a2)
  {
    if (a4 <= 0x10 && v13 >= a3)
    {
      v28 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    std::to_string(&v56, a2);
    v15 = std::string::insert(&v56, 0, " buffers (");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v57, "/");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = (*(**(this + 115) + 24))(*(this + 115), a5);
    std::to_string(&__p, v19);
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

    v22 = std::string::append(&v58, p_p, size);
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v59, ")");
    v25 = v24->__r_.__value_.__r.__words[2];
    v60 = *&v24->__r_.__value_.__l.__data_;
    v61 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v26 = &v60;
    }

    else
    {
      v26 = v60;
    }

    if (v61 >= 0)
    {
      v27 = HIBYTE(v61);
    }

    else
    {
      v27 = *(&v60 + 1);
    }

    std::string::append(&v62, v26, v27);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  if (v14 < a3)
  {
    std::to_string(&v56, a3);
    v29 = std::string::insert(&v56, 0, " textures (");
    v30 = v29->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v57, "/");
    v32 = v31->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = (*(**(this + 115) + 16))(*(this + 115));
    std::to_string(&__p, v33);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = __p.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v58, v34, v35);
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v59, ")");
    v39 = v38->__r_.__value_.__r.__words[2];
    v60 = *&v38->__r_.__value_.__l.__data_;
    v61 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v40 = &v60;
    }

    else
    {
      v40 = v60;
    }

    if (v61 >= 0)
    {
      v41 = HIBYTE(v61);
    }

    else
    {
      v41 = *(&v60 + 1);
    }

    std::string::append(&v62, v40, v41);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  if (a4 >= 0x11)
  {
    std::to_string(&v56, a4);
    v42 = std::string::insert(&v56, 0, " samplers (");
    v43 = v42->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v57, "/");
    v45 = v44->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __p.__r_.__value_.__l.__size_;
    }

    v48 = std::string::append(&v58, v46, v47);
    v49 = v48->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = std::string::append(&v59, ")");
    v51 = v50->__r_.__value_.__r.__words[2];
    v60 = *&v50->__r_.__value_.__l.__data_;
    v61 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v52 = &v60;
    }

    else
    {
      v52 = v60;
    }

    if (v61 >= 0)
    {
      v53 = HIBYTE(v61);
    }

    else
    {
      v53 = *(&v60 + 1);
    }

    std::string::append(&v62, v52, v53);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  v28 = 1;
LABEL_80:
  *a6 = v28;
  v54 = (a6 + 8);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v54, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v54 = v62;
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<128,31,4,128,500000,500000,true>>::getRenderMaxAPIBindPointsBuffer(uint64_t a1, int a2)
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

double llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), *a2, &v10);
  v6 = v10;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 12) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::grow(a1, v8);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), *a2, &v10);
    v6 = v10;
  }

  ++*(a1 + 8);
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  v9 = *a2;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *v6 = v9;
  *(v6 + 8) = v6 + 24;
  *&result = 0x400000000;
  *(v6 + 16) = 0x400000000;
  *(v6 + 56) = v6 + 72;
  *(v6 + 68) = 4;
  *(v6 + 104) = v6 + 120;
  *(v6 + 116) = 4;
  *(v6 + 152) = v6 + 168;
  *(v6 + 164) = 4;
  *(v6 + 200) = v6 + 216;
  *(v6 + 212) = 4;
  *(v6 + 248) = v6 + 264;
  *(v6 + 260) = 4;
  return result;
}

void *llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x20F330650](v8, 296 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 296 * v10 - 296;
      v13 = vdupq_n_s64(v12 / 0x128);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[37] = -4096;
        }

        v11 += 2;
        result += 74;
      }

      while (((v12 / 0x128 + 2) & 0x1FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      do
      {
        v16 = v4 + v15;
        v17 = *(v4 + v15);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v39 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), v17, &v39);
          v18 = v39;
          *v39 = *v16;
          *(v18 + 1) = v18 + 24;
          *(v18 + 2) = 0x400000000;
          if (*(v16 + 4))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 8), (v16 + 8));
          }

          *(v18 + 7) = v18 + 72;
          *(v18 + 8) = 0x400000000;
          v19 = v4 + v15;
          if (*(v4 + v15 + 64))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 56), (v19 + 56));
          }

          *(v18 + 13) = v18 + 120;
          *(v18 + 14) = 0x400000000;
          if (*(v19 + 28))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 104), v4 + v15 + 104);
          }

          *(v18 + 19) = v18 + 168;
          *(v18 + 20) = 0x400000000;
          v20 = v4 + v15;
          if (*(v4 + v15 + 160))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 152), (v20 + 152));
          }

          *(v18 + 25) = v18 + 216;
          *(v18 + 26) = 0x400000000;
          if (*(v20 + 52))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 200), v4 + v15 + 200);
          }

          *(v18 + 31) = v18 + 264;
          *(v18 + 32) = 0x400000000;
          v21 = v4 + v15;
          v22 = *(v4 + v15 + 256);
          if (v22 && v16 != v18)
          {
            v23 = *(v21 + 31);
            v24 = v4 + v15 + 264;
            if (v24 == v23)
            {
              if (v22 >= 5)
              {
                *(v18 + 64) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(*(v18 + 31), *(v21 + 31), 8 * *(v4 + v15 + 256));
              *(v18 + 64) = v22;
              *(v21 + 64) = 0;
            }

            else
            {
              v25 = *(v21 + 32);
              *(v18 + 31) = v23;
              *(v18 + 32) = v25;
              *(v21 + 31) = v24;
              *(v21 + 32) = 0;
            }
          }

          ++*(a1 + 8);
          v26 = *(v21 + 31);
          if (v21 + 264 != v26)
          {
            free(v26);
          }

          v27 = v4 + v15;
          v28 = *(v4 + v15 + 200);
          if (v4 + v15 + 216 != v28)
          {
            free(v28);
          }

          v29 = *(v27 + 19);
          if (v27 + 168 != v29)
          {
            free(v29);
          }

          v30 = v4 + v15;
          v31 = *(v4 + v15 + 104);
          if (v4 + v15 + 120 != v31)
          {
            free(v31);
          }

          v32 = *(v30 + 7);
          if (v30 + 72 != v32)
          {
            free(v32);
          }

          v33 = *(v16 + 1);
          if (v4 + v15 + 24 != v33)
          {
            free(v33);
          }
        }

        v15 += 296;
      }

      while (296 * v3 != v15);
    }

    return llvm::deallocate_buffer(v4, (296 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v34 = *(a1 + 16);
    if (v34)
    {
      v35 = 0;
      v36 = 296 * v34 - 296;
      v37 = vdupq_n_s64(v36 / 0x128);
      do
      {
        v38 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(vdupq_n_s64(v35), xmmword_20E70C4F0)));
        if (v38.i8[0])
        {
          *result = -4096;
        }

        if (v38.i8[4])
        {
          result[37] = -4096;
        }

        v35 += 2;
        result += 74;
      }

      while (((v36 / 0x128 + 2) & 0x1FFFFFFFFFFFFFELL) != v35);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 296 * v5);
    v7 = *v6;
    if (*v6 == a3)
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
        v6 = (a1 + 296 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
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

void std::__introsort<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,false>(uint64_t a1, void **a2, uint64_t a3, char a4, __n128 a5)
{
  v298 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2 - 1;
  v231 = (a2 - 1);
  v232 = (a2 - 4);
  v229 = a2 - 5;
  v230 = a2 - 8;
  v233 = a2 - 17;
  v234 = a2 - 9;
  v227 = a2 - 9;
  v228 = a2 - 12;
  v9 = a1;
  v237 = a2;
  v235 = a2 - 1;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 5;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      goto LABEL_204;
    }

    if (v10 == 2)
    {
      if (*v8 > *(a1 + 28))
      {
        v293 = *(a1 + 16);
        v263 = *a1;
        v151 = *v232;
        *(a1 + 16) = v232[1].n128_u64[0];
        *a1 = v151;
        v232[1].n128_u64[0] = v293;
        *v232 = v263;
        v152 = *(a1 + 24);
        *(a1 + 24) = *v231;
        *v231 = v152;
        v153 = *(a1 + 28);
        *(a1 + 28) = *v8;
        *v8 = v153;
      }

      goto LABEL_204;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v163 = (a1 + 32);
      v165 = a1 == a2 || v163 == a2;
      if (a4)
      {
        if (!v165)
        {
          v166 = 0;
          v167 = a1;
          do
          {
            v168 = v163;
            v169 = *(v167 + 60);
            if (v169 > *(v167 + 28))
            {
              v170 = *v163;
              *v265 = *(v167 + 40);
              *&v265[7] = *(v167 + 47);
              v171 = *(v167 + 55);
              v163[1] = 0;
              v163[2] = 0;
              *v163 = 0;
              v172 = *(v167 + 56);
              v173 = v166;
              while (1)
              {
                std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + v173 + 32, (a1 + v173));
                if (!v173)
                {
                  break;
                }

                v174 = *(a1 + v173 - 4);
                v173 -= 32;
                if (v169 <= v174)
                {
                  v175 = a1 + v173 + 32;
                  goto LABEL_142;
                }
              }

              v175 = a1;
LABEL_142:
              if (*(v175 + 23) < 0)
              {
                operator delete(*v175);
              }

              *v175 = v170;
              *(v175 + 8) = *v265;
              *(v175 + 15) = *&v265[7];
              *(v175 + 23) = v171;
              *(v175 + 24) = v172;
              *(v175 + 28) = v169;
            }

            v163 = v168 + 4;
            v166 += 32;
            v167 = v168;
          }

          while (v168 + 4 != a2);
        }
      }

      else if (!v165)
      {
        do
        {
          v212 = v163;
          v213 = *(a1 + 60);
          if (v213 > *(a1 + 28))
          {
            v214 = *v163;
            *v269 = *(a1 + 40);
            *&v269[7] = *(a1 + 47);
            v215 = *(a1 + 55);
            v163[1] = 0;
            v163[2] = 0;
            *v163 = 0;
            v216 = *(a1 + 56);
            do
            {
              v217 = a1;
              std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + 32, a1);
              a1 -= 32;
            }

            while (v213 > *(v217 - 4));
            if (*(v217 + 23) < 0)
            {
              operator delete(*v217);
            }

            *v217 = v214;
            *(v217 + 15) = *&v269[7];
            *(v217 + 8) = *v269;
            *(v217 + 23) = v215;
            *(v217 + 24) = v216;
            *(v217 + 28) = v213;
          }

          v163 = v212 + 4;
          a1 = v212;
        }

        while (v212 + 4 != a2);
      }

      goto LABEL_204;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v176 = v11 >> 1;
        v177 = v11 >> 1;
        do
        {
          v178 = v177;
          if (v176 >= v177)
          {
            v179 = (2 * v177) | 1;
            v180 = (a1 + 32 * v179);
            if (2 * v178 + 2 < v10)
            {
              v181 = v180[1].n128_u32[3] > v180[3].n128_u32[3];
              v180 += 2 * v181;
              if (v181)
              {
                v179 = 2 * v178 + 2;
              }
            }

            v182 = (a1 + 32 * v178);
            v183 = v182[1].n128_u32[3];
            if (v180[1].n128_u32[3] <= v183)
            {
              v184 = v182->n128_u64[0];
              *&v266[7] = *(&v182->n128_u64[1] + 7);
              *v266 = v182->n128_u64[1];
              v185 = v182[1].n128_u8[7];
              v182->n128_u64[0] = 0;
              v182->n128_u64[1] = 0;
              v182[1].n128_u64[0] = 0;
              v186 = v182[1].n128_u32[2];
              do
              {
                v187 = v182;
                v182 = v180;
                std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v187, v180);
                if (v176 < v179)
                {
                  break;
                }

                v188 = (2 * v179) | 1;
                v180 = (a1 + 32 * v188);
                if (2 * v179 + 2 < v10)
                {
                  v181 = v180[1].n128_u32[3] > v180[3].n128_u32[3];
                  v180 += 2 * v181;
                  if (v181)
                  {
                    v188 = 2 * v179 + 2;
                  }
                }

                v179 = v188;
              }

              while (v180[1].n128_u32[3] <= v183);
              if (v182[1].n128_i8[7] < 0)
              {
                operator delete(v182->n128_u64[0]);
              }

              v182->n128_u64[0] = v184;
              v182->n128_u64[1] = *v266;
              *(&v182->n128_u64[1] + 7) = *&v266[7];
              v182[1].n128_u8[7] = v185;
              v182[1].n128_u32[2] = v186;
              v182[1].n128_u32[3] = v183;
              a2 = v237;
            }
          }

          v177 = v178 - 1;
        }

        while (v178);
        do
        {
          v189 = 0;
          v190 = a2;
          v191 = *a1;
          *v240 = *(a1 + 8);
          *&v240[7] = *(a1 + 15);
          v192 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v193 = a1;
          v195 = *(a1 + 24);
          v194 = *(a1 + 28);
          do
          {
            v196 = v193 + 32 * v189;
            v197 = v196 + 32;
            if (2 * v189 + 2 >= v10)
            {
              v189 = (2 * v189) | 1;
            }

            else
            {
              v198 = *(v196 + 60);
              v199 = *(v196 + 92);
              v200 = v196 + 64;
              if (v198 <= v199)
              {
                v189 = (2 * v189) | 1;
              }

              else
              {
                v197 = v200;
                v189 = 2 * v189 + 2;
              }
            }

            std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v193, v197);
            v193 = v197;
          }

          while (v189 <= ((v10 - 2) >> 1));
          a2 -= 4;
          if (v197 == v190 - 4)
          {
            if (*(v197 + 23) < 0)
            {
              operator delete(*v197);
            }

            *v197 = v191;
            *(v197 + 8) = *v240;
            *(v197 + 15) = *&v240[7];
            *(v197 + 23) = v192;
            *(v197 + 24) = v195;
            *(v197 + 28) = v194;
          }

          else
          {
            std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v197, v190 - 2);
            if (*(v190 - 9) < 0)
            {
              operator delete(*a2);
            }

            *(v190 - 4) = v191;
            *(v190 - 17) = *&v240[7];
            *(v190 - 3) = *v240;
            *(v190 - 9) = v192;
            *(v190 - 2) = v195;
            *(v190 - 1) = v194;
            v201 = (v197 + 32 - a1) >> 5;
            v181 = v201 < 2;
            v202 = v201 - 2;
            if (!v181)
            {
              v203 = v202 >> 1;
              v204 = (a1 + 32 * (v202 >> 1));
              v205 = *(v197 + 28);
              if (v204[1].n128_u32[3] > v205)
              {
                v206 = *v197;
                *v267 = *(v197 + 8);
                *&v267[7] = *(v197 + 15);
                v207 = *(v197 + 23);
                *(v197 + 8) = 0;
                *(v197 + 16) = 0;
                *v197 = 0;
                v208 = *(v197 + 24);
                do
                {
                  v209 = v197;
                  v197 = v204;
                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v209, v204);
                  if (!v203)
                  {
                    break;
                  }

                  v203 = (v203 - 1) >> 1;
                  v204 = (a1 + 32 * v203);
                }

                while (v204[1].n128_u32[3] > v205);
                if (*(v197 + 23) < 0)
                {
                  operator delete(*v197);
                }

                *v197 = v206;
                *(v197 + 8) = *v267;
                *(v197 + 15) = *&v267[7];
                *(v197 + 23) = v207;
                *(v197 + 24) = v208;
                *(v197 + 28) = v205;
              }
            }
          }

          v181 = v10-- <= 2;
        }

        while (!v181);
      }

      goto LABEL_204;
    }

    v12 = a1 + 32 * (v10 >> 1);
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = (v12 + 28);
      v15 = *(v12 + 28);
      v16 = (a1 + 28);
      v17 = *(a1 + 28);
      if (v15 <= v17)
      {
        if (v13 > v15)
        {
          v273 = *(v12 + 16);
          v243 = *v12;
          v26 = *v232;
          *(v12 + 16) = v232[1].n128_u64[0];
          *v12 = v26;
          v232[1].n128_u64[0] = v273;
          *v232 = v243;
          v20 = (v12 + 24);
          v27 = *(v12 + 24);
          *(v12 + 24) = *v231;
          *v231 = v27;
          v28 = *(v12 + 28);
          *(v12 + 28) = *v8;
          *v8 = v28;
          if (*(v12 + 28) > *v16)
          {
            v274 = *(a1 + 16);
            v244 = *a1;
            v29 = *v12;
            *(a1 + 16) = *(v12 + 16);
            *a1 = v29;
            *(v12 + 16) = v274;
            *v12 = v244;
            v18 = (a1 + 24);
            v21 = (a1 + 28);
            v30 = (v12 + 28);
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (v13 > v15)
        {
          v18 = (a1 + 24);
          v271 = *(a1 + 16);
          v241 = *a1;
          v19 = *v232;
          *(a1 + 16) = v232[1].n128_u64[0];
          *a1 = v19;
          v232[1].n128_u64[0] = v271;
          *v232 = v241;
          v20 = v231;
          v21 = (a1 + 28);
          goto LABEL_27;
        }

        v277 = *(a1 + 16);
        v247 = *a1;
        v35 = *v12;
        *(a1 + 16) = *(v12 + 16);
        *a1 = v35;
        *(v12 + 16) = v277;
        *v12 = v247;
        v18 = (v12 + 24);
        v36 = *(a1 + 24);
        *(a1 + 24) = *(v12 + 24);
        *(v12 + 24) = v36;
        *(v12 + 28) = v17;
        if (*v8 > v17)
        {
          v278 = *(v12 + 16);
          v248 = *v12;
          v37 = *v232;
          *(v12 + 16) = v232[1].n128_u64[0];
          *v12 = v37;
          v232[1].n128_u64[0] = v278;
          *v232 = v248;
          v20 = v231;
          v21 = (v12 + 28);
LABEL_27:
          v30 = v8;
LABEL_28:
          v38 = *v18;
          *v18 = *v20;
          *v20 = v38;
          v39 = *v21;
          *v21 = *v30;
          *v30 = v39;
        }
      }

      v40 = (v12 - 4);
      v41 = *(v12 - 4);
      v42 = (v12 - 32);
      v43 = (a1 + 60);
      v44 = *(a1 + 60);
      v45 = *v234;
      if (v41 <= v44)
      {
        if (v45 > v41)
        {
          v279 = *(v12 - 16);
          v249 = *v42;
          v51 = *v230;
          *(v12 - 16) = v230[2];
          *v42 = v51;
          v230[2] = v279;
          *v230 = v249;
          v50 = (v12 - 8);
          v52 = *(v12 - 8);
          *(v12 - 8) = *v229;
          *v229 = v52;
          v53 = *(v12 - 4);
          *(v12 - 4) = *v234;
          *v234 = v53;
          if (*(v12 - 4) > *v43)
          {
            v54 = *(a1 + 32);
            v55 = *(a1 + 48);
            v56 = *(v12 - 16);
            *(a1 + 32) = *v42;
            *(a1 + 48) = v56;
            *(v12 - 16) = v55;
            *v42 = v54;
            v46 = (a1 + 56);
            v57 = (v12 - 4);
            goto LABEL_41;
          }
        }
      }

      else
      {
        v46 = (a1 + 56);
        if (v45 > v41)
        {
          v47 = *(a1 + 32);
          v48 = *(a1 + 48);
          v49 = v230[2];
          *(a1 + 32) = *v230;
          *(a1 + 48) = v49;
          v230[2] = v48;
          *v230 = v47;
          v50 = v229;
          goto LABEL_40;
        }

        v62 = *(a1 + 32);
        v63 = *(a1 + 48);
        v64 = *(v12 - 16);
        *(a1 + 32) = *v42;
        *(a1 + 48) = v64;
        *(v12 - 16) = v63;
        *v42 = v62;
        LODWORD(v64) = *v46;
        *v46 = *(v12 - 8);
        *(v12 - 8) = v64;
        *(v12 - 4) = v44;
        if (*v234 > v44)
        {
          v282 = *(v12 - 16);
          v252 = *v42;
          v65 = *v230;
          *(v12 - 16) = v230[2];
          *v42 = v65;
          v230[2] = v282;
          *v230 = v252;
          v46 = (v12 - 8);
          v50 = v229;
          v43 = (v12 - 4);
LABEL_40:
          v57 = v234;
LABEL_41:
          v66 = *v46;
          *v46 = *v50;
          *v50 = v66;
          v67 = *v43;
          *v43 = *v57;
          *v57 = v67;
        }
      }

      v69 = (v12 + 60);
      v68 = *(v12 + 60);
      v70 = (v12 + 32);
      v71 = (a1 + 92);
      v72 = *(a1 + 92);
      v73 = *v233;
      if (v68 <= v72)
      {
        if (v73 > v68)
        {
          v283 = *(v12 + 48);
          v253 = *v70;
          v79 = *v228;
          *(v12 + 48) = v228[2];
          *v70 = v79;
          v228[2] = v283;
          *v228 = v253;
          v78 = (v12 + 56);
          v80 = *(v12 + 56);
          *(v12 + 56) = *v227;
          *v227 = v80;
          v81 = *(v12 + 60);
          *(v12 + 60) = *v233;
          *v233 = v81;
          v68 = *(v12 + 60);
          if (v68 > *v71)
          {
            v82 = *(a1 + 64);
            v83 = *(a1 + 80);
            v84 = *(v12 + 48);
            *(a1 + 64) = *v70;
            *(a1 + 80) = v84;
            *(v12 + 48) = v83;
            *v70 = v82;
            v74 = (a1 + 88);
            v85 = (v12 + 60);
            goto LABEL_51;
          }
        }
      }

      else
      {
        v74 = (a1 + 88);
        if (v73 > v68)
        {
          v75 = *(a1 + 64);
          v76 = *(a1 + 80);
          v77 = v228[2];
          *(a1 + 64) = *v228;
          *(a1 + 80) = v77;
          v228[2] = v76;
          *v228 = v75;
          v78 = v227;
          goto LABEL_50;
        }

        v86 = *(a1 + 64);
        v87 = *(a1 + 80);
        v88 = *(v12 + 48);
        *(a1 + 64) = *v70;
        *(a1 + 80) = v88;
        *(v12 + 48) = v87;
        *v70 = v86;
        LODWORD(v88) = *v74;
        *v74 = *(v12 + 56);
        *(v12 + 56) = v88;
        *(v12 + 60) = v72;
        v68 = v72;
        if (*v233 > v72)
        {
          v284 = *(v12 + 48);
          v254 = *v70;
          v89 = *v228;
          *(v12 + 48) = v228[2];
          *v70 = v89;
          v228[2] = v284;
          *v228 = v254;
          v74 = (v12 + 56);
          v78 = v227;
          v71 = (v12 + 60);
LABEL_50:
          v85 = v233;
LABEL_51:
          v90 = *v74;
          *v74 = *v78;
          *v78 = v90;
          v91 = *v71;
          *v71 = *v85;
          *v85 = v91;
          v68 = *v69;
        }
      }

      v92 = *v14;
      if (*v14 <= *v40)
      {
        if (v68 > v92)
        {
          v286 = *(v12 + 16);
          v256 = *v12;
          *v12 = *v70;
          *(v12 + 16) = *(v12 + 48);
          *(v12 + 48) = v286;
          *v70 = v256;
          v94 = (v12 + 24);
          v95 = *(v12 + 24);
          v96 = *(v12 + 60);
          *(v12 + 24) = *(v12 + 56);
          *(v12 + 28) = v96;
          *(v12 + 56) = v95;
          if (v96 > *v40)
          {
            v287 = *(v12 - 16);
            v257 = *v42;
            *v42 = *v12;
            *(v12 - 16) = *(v12 + 16);
            *(v12 + 16) = v287;
            *v12 = v257;
            v93 = (v12 - 8);
            v69 = (v12 + 28);
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (v68 > v92)
        {
          v93 = (v12 - 8);
          v285 = *(v12 - 16);
          v255 = *v42;
          *v42 = *v70;
          *(v12 - 16) = *(v12 + 48);
          *(v12 + 48) = v285;
          *v70 = v255;
          v94 = (v12 + 56);
          goto LABEL_60;
        }

        v288 = *(v12 - 16);
        v258 = *v42;
        *v42 = *v12;
        *(v12 - 16) = *(v12 + 16);
        *(v12 + 16) = v288;
        *v12 = v258;
        v93 = (v12 + 24);
        v97 = *(v12 - 8);
        v98 = *(v12 - 4);
        *(v12 - 8) = *(v12 + 24);
        *(v12 + 24) = v97;
        *(v12 + 28) = v98;
        if (*v69 > v98)
        {
          v289 = *(v12 + 16);
          v259 = *v12;
          *v12 = *v70;
          *(v12 + 16) = *(v12 + 48);
          *(v12 + 48) = v289;
          *v70 = v259;
          v94 = (v12 + 56);
          v40 = (v12 + 28);
LABEL_60:
          v99 = *v93;
          *v93 = *v94;
          *v94 = v99;
          v100 = *v40;
          *v40 = *v69;
          *v69 = v100;
        }
      }

      v290 = *(a1 + 16);
      v260 = *a1;
      v101 = *v12;
      *(a1 + 16) = *(v12 + 16);
      *a1 = v101;
      a5 = v260;
      *(v12 + 16) = v290;
      *v12 = v260;
      v23 = (a1 + 24);
      v24 = (v12 + 24);
      goto LABEL_62;
    }

    v14 = (a1 + 28);
    v22 = *(a1 + 28);
    v16 = (v12 + 28);
    if (v22 <= *(v12 + 28))
    {
      if (v13 <= v22)
      {
        goto LABEL_63;
      }

      v275 = *(a1 + 16);
      v245 = *a1;
      v31 = *v232;
      *(a1 + 16) = v232[1].n128_u64[0];
      *a1 = v31;
      a5 = v245;
      v232[1].n128_u64[0] = v275;
      *v232 = v245;
      v24 = (a1 + 24);
      v32 = *(a1 + 24);
      *(a1 + 24) = *v231;
      *v231 = v32;
      v33 = *(a1 + 28);
      *(a1 + 28) = *v8;
      *v8 = v33;
      if (*(a1 + 28) <= *v16)
      {
        goto LABEL_63;
      }

      v276 = *(v12 + 16);
      v246 = *v12;
      v34 = *a1;
      *(v12 + 16) = *(a1 + 16);
      *v12 = v34;
      a5 = v246;
      *(a1 + 16) = v276;
      *a1 = v246;
      v23 = (v12 + 24);
      goto LABEL_62;
    }

    if (v13 > v22)
    {
      v23 = (v12 + 24);
      v272 = *(v12 + 16);
      v242 = *v12;
      v24 = v231;
      v25 = *v232;
      *(v12 + 16) = v232[1].n128_u64[0];
      *v12 = v25;
      a5 = v242;
      v232[1].n128_u64[0] = v272;
      *v232 = v242;
      goto LABEL_37;
    }

    v280 = *(v12 + 16);
    v250 = *v12;
    v58 = *a1;
    *(v12 + 16) = *(a1 + 16);
    *v12 = v58;
    a5 = v250;
    *(a1 + 16) = v280;
    *a1 = v250;
    v23 = (a1 + 24);
    v59 = *(v12 + 24);
    v60 = *(v12 + 28);
    *(v12 + 24) = *(a1 + 24);
    *(v12 + 28) = v22;
    *(a1 + 24) = v59;
    *(a1 + 28) = v60;
    if (*v8 > v60)
    {
      v281 = *(a1 + 16);
      v251 = *a1;
      v24 = v231;
      v61 = *v232;
      *(a1 + 16) = v232[1].n128_u64[0];
      *a1 = v61;
      a5 = v251;
      v232[1].n128_u64[0] = v281;
      *v232 = v251;
      v16 = (a1 + 28);
LABEL_37:
      v14 = v8;
LABEL_62:
      v102 = *v23;
      *v23 = *v24;
      *v24 = v102;
      v103 = *v16;
      *v16 = *v14;
      *v14 = v103;
    }

LABEL_63:
    --a3;
    if (a4)
    {
      v104 = *(a1 + 28);
LABEL_66:
      v105 = *a1;
      *v238 = *(a1 + 8);
      *&v238[7] = *(a1 + 15);
      v106 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v107 = *(a1 + 24);
      v108 = a1;
      do
      {
        v109 = v108;
        v108 += 2;
      }

      while (v109[3].n128_u32[3] > v104);
      v110 = v237;
      if (v109 == a1)
      {
        v113 = v237;
        while (v108 < v113)
        {
          v111 = v113 - 2;
          v114 = v113[-1].n128_u32[3];
          v113 -= 2;
          if (v114 > v104)
          {
            goto LABEL_76;
          }
        }

        v111 = v113;
      }

      else
      {
        do
        {
          v111 = v110 - 2;
          v112 = v110[-1].n128_u32[3];
          v110 -= 2;
        }

        while (v112 <= v104);
      }

LABEL_76:
      v9 = v108;
      if (v108 < v111)
      {
        v115 = v111;
        do
        {
          a5 = *v9;
          v116 = v9[1].n128_u64[0];
          v117 = v115[1].n128_u64[0];
          *v9 = *v115;
          v9[1].n128_u64[0] = v117;
          v115[1].n128_u64[0] = v116;
          *v115 = a5;
          LODWORD(v116) = v9[1].n128_u32[2];
          v9[1].n128_u32[2] = v115[1].n128_u32[2];
          v115[1].n128_u32[2] = v116;
          LODWORD(v116) = v9[1].n128_u32[3];
          v9[1].n128_u32[3] = v115[1].n128_u32[3];
          v115[1].n128_u32[3] = v116;
          do
          {
            v118 = v9[3].n128_u32[3];
            v9 += 2;
          }

          while (v118 > v104);
          do
          {
            v119 = v115[-1].n128_u32[3];
            v115 -= 2;
          }

          while (v119 <= v104);
        }

        while (v9 < v115);
      }

      if (&v9[-2] != a1)
      {
        a5 = std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, v9 - 2);
      }

      if (v9[-1].n128_i8[7] < 0)
      {
        operator delete(v9[-2].n128_u64[0]);
      }

      v9[-2].n128_u64[0] = v105;
      *(&v9[-2].n128_u64[1] + 7) = *&v238[7];
      v9[-2].n128_u64[1] = *v238;
      v9[-1].n128_u8[7] = v106;
      v9[-1].n128_u32[2] = v107;
      v9[-1].n128_u32[3] = v104;
      v120 = v108 >= v111;
      a2 = v237;
      v8 = v235;
      if (!v120)
      {
        goto LABEL_90;
      }

      v121 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *>(a1, v9 - 2);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *>(v9, v237))
      {
        a2 = &v9[-2];
        if (!v121)
        {
          goto LABEL_2;
        }

        goto LABEL_204;
      }

      if (!v121)
      {
LABEL_90:
        std::__introsort<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,false>(a1, &v9[-2], a3, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      v104 = *(a1 + 28);
      if (*(a1 - 4) > v104)
      {
        goto LABEL_66;
      }

      v122 = *a1;
      *v239 = *(a1 + 8);
      *&v239[7] = *(a1 + 15);
      v123 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (v104 <= *v8)
      {
        v126 = (a1 + 32);
        do
        {
          v9 = v126;
          if (v126 >= a2)
          {
            break;
          }

          v127 = v126[1].n128_u32[3];
          v126 += 2;
        }

        while (v104 <= v127);
      }

      else
      {
        v124 = a1;
        do
        {
          v9 = v124 + 2;
          v125 = v124[3].n128_u32[3];
          v124 += 2;
        }

        while (v104 <= v125);
      }

      v128 = a2;
      if (v9 < a2)
      {
        v129 = a2;
        do
        {
          v128 = v129 - 4;
          v130 = *(v129 - 1);
          v129 -= 4;
        }

        while (v104 > v130);
      }

      v131 = *(a1 + 24);
      while (v9 < v128)
      {
        v291 = v9[1].n128_u64[0];
        v261 = *v9;
        v132 = *v128;
        v9[1].n128_u64[0] = v128[2];
        *v9 = v132;
        a5 = v261;
        v128[2] = v291;
        *v128 = v261;
        v133 = v9[1].n128_u32[2];
        v9[1].n128_u32[2] = *(v128 + 6);
        *(v128 + 6) = v133;
        v134 = v9[1].n128_u32[3];
        v9[1].n128_u32[3] = *(v128 + 7);
        *(v128 + 7) = v134;
        do
        {
          v135 = v9[3].n128_u32[3];
          v9 += 2;
        }

        while (v104 <= v135);
        do
        {
          v136 = *(v128 - 1);
          v128 -= 4;
        }

        while (v104 > v136);
      }

      if (&v9[-2] != a1)
      {
        a5 = std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, v9 - 2);
      }

      if (v9[-1].n128_i8[7] < 0)
      {
        operator delete(v9[-2].n128_u64[0]);
      }

      a4 = 0;
      v9[-2].n128_u64[0] = v122;
      *(&v9[-2].n128_u64[1] + 7) = *&v239[7];
      v9[-2].n128_u64[1] = *v239;
      v9[-1].n128_u8[7] = v123;
      v9[-1].n128_u32[2] = v131;
      v9[-1].n128_u32[3] = v104;
    }
  }

  if (v10 == 3)
  {
    v154 = (a1 + 60);
    v155 = *(a1 + 60);
    v156 = a1 + 32;
    v157 = (a1 + 28);
    v158 = *(a1 + 28);
    v159 = *v8;
    if (v155 <= v158)
    {
      if (v159 <= v155)
      {
        goto LABEL_204;
      }

      v210 = *v156;
      v295 = *(a1 + 48);
      v211 = v232[1].n128_u64[0];
      *v156 = *v232;
      *(a1 + 48) = v211;
      v232[1].n128_u64[0] = v295;
      *v232 = v210;
      LODWORD(v211) = *(a1 + 56);
      *(a1 + 56) = *v231;
      *v231 = v211;
      LODWORD(v211) = *(a1 + 60);
      *(a1 + 60) = *v8;
      *v8 = v211;
      if (*(a1 + 60) <= *(a1 + 28))
      {
        goto LABEL_204;
      }

      v296 = *(a1 + 16);
      v268 = *a1;
      *a1 = *v156;
      *(a1 + 16) = *(a1 + 48);
      *v156 = v268;
      *(a1 + 48) = v296;
      v160 = (a1 + 24);
      v231 = (a1 + 56);
    }

    else
    {
      if (v159 <= v155)
      {
        v297 = *(a1 + 16);
        v270 = *a1;
        *a1 = *v156;
        *(a1 + 16) = *(a1 + 48);
        *v156 = v270;
        *(a1 + 48) = v297;
        v219 = *(a1 + 56);
        v218 = (a1 + 56);
        v220 = *(v218 - 8);
        *(v218 - 8) = v219;
        *(v218 - 7) = v155;
        *v218 = v220;
        v218[1] = v158;
        if (*v8 <= v158)
        {
LABEL_204:
          v226 = *MEMORY[0x277D85DE8];
          return;
        }

        v221 = *v156;
        v222 = *(v156 + 16);
        v223 = v232[1].n128_u64[0];
        *v156 = *v232;
        *(v156 + 16) = v223;
        v232[1].n128_u64[0] = v222;
        *v232 = v221;
        v160 = v218;
        v157 = v154;
      }

      else
      {
        v160 = (a1 + 24);
        v294 = *(a1 + 16);
        v264 = *a1;
        v161 = *v232;
        *(a1 + 16) = v232[1].n128_u64[0];
        *a1 = v161;
        v232[1].n128_u64[0] = v294;
        *v232 = v264;
      }

      v154 = v8;
    }

    v224 = *v160;
    *v160 = *v231;
    *v231 = v224;
    v225 = *v157;
    *v157 = *v154;
    *v154 = v225;
    goto LABEL_204;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96));
      if (*v8 > *(a1 + 124))
      {
        v137 = *(a1 + 96);
        v138 = *(a1 + 112);
        v139 = v232[1].n128_u64[0];
        *(a1 + 96) = *v232;
        *(a1 + 112) = v139;
        v232[1].n128_u64[0] = v138;
        *v232 = v137;
        LODWORD(v138) = *(a1 + 120);
        *(a1 + 120) = *v231;
        *v231 = v138;
        LODWORD(v138) = *(a1 + 124);
        *(a1 + 124) = *v8;
        *v8 = v138;
        v140 = *(a1 + 124);
        v141 = *(a1 + 92);
        if (v140 > v141)
        {
          v142 = *(a1 + 80);
          v143 = *(a1 + 64);
          *(a1 + 64) = *(a1 + 96);
          *(a1 + 80) = *(a1 + 112);
          *(a1 + 96) = v143;
          *(a1 + 112) = v142;
          v144 = *(a1 + 88);
          v145 = *(a1 + 120);
          *(a1 + 88) = v145;
          *(a1 + 92) = v140;
          *(a1 + 120) = v144;
          *(a1 + 124) = v141;
          v146 = *(a1 + 60);
          if (v140 > v146)
          {
            v147 = *(a1 + 48);
            v148 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 64);
            *(a1 + 48) = *(a1 + 80);
            *(a1 + 64) = v148;
            *(a1 + 80) = v147;
            LODWORD(v147) = *(a1 + 56);
            *(a1 + 56) = v145;
            *(a1 + 60) = v140;
            *(a1 + 88) = v147;
            *(a1 + 92) = v146;
            v149 = *(a1 + 28);
            if (v140 > v149)
            {
              v292 = *(a1 + 16);
              v262 = *a1;
              *a1 = *(a1 + 32);
              *(a1 + 16) = *(a1 + 48);
              *(a1 + 32) = v262;
              *(a1 + 48) = v292;
              v150 = *(a1 + 24);
              *(a1 + 24) = v145;
              *(a1 + 28) = v140;
              *(a1 + 56) = v150;
              *(a1 + 60) = v149;
            }
          }
        }
      }

      goto LABEL_204;
    }

    goto LABEL_10;
  }

  v162 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, (a1 + 32), (a1 + 64), v232);
}

uint64_t AGCLLVMUserObject::setupShaderWrapper(AGCLLVMUserObject *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = this + *(*this - 24);
  (*(*this + 80))();
  v3 = *(v2 + 267);
  llvm::Module::getOrInsertFunction();
  *(this + 20) = v4;
  v5 = *(this + 21);
  if (*(v5 + 72) != v5 + 72)
  {
    llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(v4 + 72, v4 + 72, v5 + 72, *(v5 + 80), v5 + 72);
    v5 = *(this + 21);
  }

  v27 = *(v5 + 112);
  FnAttrs = llvm::AttributeList::getFnAttrs(&v27);
  v26 = FnAttrs;
  v7 = *(this + 6);
  if (!v7 || llvm::ConstantDataSequential::getElementAsInteger(v7) <= 0xD)
  {
    v8 = *(this + *(*this - 24) + 2160);
    FnAttrs = llvm::AttributeSet::removeAttribute();
    v26 = FnAttrs;
  }

  if (FnAttrs)
  {
    v9 = *(this + 20);
    v10 = *(this + *(*this - 24) + 2160);
    LODWORD(v27) = -1;
    *v28 = FnAttrs;
    *(v9 + 112) = llvm::AttributeList::get();
  }

  v11 = *(*(this + 20) + 80);
  if (v11)
  {
    v12 = (v11 - 24);
  }

  else
  {
    v12 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v12);
  AGCLLVMUserObject::hoistAllocas(this, v12, &FirstInsertionPt);
  v29 = 257;
  v13 = llvm::BasicBlock::splitBasicBlock();
  v14 = *(v12 + 5);
  if (v14 == (v12 + 40))
  {
    v17 = 0;
  }

  else
  {
    v15 = (v14 - 3);
    if (v14)
    {
      v16 = v14 - 3;
    }

    else
    {
      v16 = 0;
    }

    if (*(v16 + 16) - 29 >= 0xB)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }
  }

  llvm::Instruction::eraseFromParent(v17);
  v18 = this + *(*this - 24);
  *(v18 + 220) = v12;
  *(v18 + 221) = v12 + 40;
  v19 = (*(*this + 64))(this);
  if (v19)
  {
    v20 = *(this + *(*this - 24) + 2168);
    (*(*v20 + 424))(v20, *(this + 20));
    llvm::IRBuilderBase::CreateBr((this + *(*this - 24) + 1712), v13);
    v21 = *(this + *(*this - 24) + 2160);
    v27 = "wrapper_exit";
    v29 = 259;
    v22 = *(this + 20);
    operator new();
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(uint64_t result, unsigned int a2)
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
      v4 = *(v2 + 32);
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

void llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a5)
  {
    llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList();
  }
}

uint64_t AGCLLVMUserObject::replaceTextureOrSamplerArgument(AGCLLVMUserObject *this, llvm::Type **a2, unsigned int a3, unsigned int a4, char a5, unsigned __int8 ***a6)
{
  v8 = a2;
  v130 = *MEMORY[0x277D85DE8];
  if ((a5 & 1) == 0)
  {
    v12 = *(*(this + 21) + 80);
    if (v12)
    {
      v13 = v12 - 24;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = (v14 - 24);
    }

    else
    {
      v15 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v15);
    LODWORD(__p) = a3;
    HIDWORD(__p) = a3;
    v16 = *v8;
    v17 = *(this + *(*this - 24) + 1904);
    v18 = llvm::ConstantInt::get();
    AGCLLVMUserObject::buildAPIResourceIntrinsic(this, a6, v16, v18, &__p);
    goto LABEL_145;
  }

  if (*(*a2 + 8) == 15)
  {
    if (llvm::Type::isOpaquePointerTy(*a2))
    {
      v10 = llvm::PointerType::get(*(this + *(*this - 24) + 1776), 1);
      v11 = *v8;
    }

    else
    {
      v11 = *v8;
      v10 = **(**(*v8 + 16) + 16);
    }

    if (llvm::Type::isOpaquePointerTy(v11))
    {
      v20 = llvm::ArrayType::get(v10, a4);
      v21 = *v8;
    }

    else
    {
      v21 = *v8;
      v20 = **(*v8 + 16);
    }

    v22 = a3;
    v98 = v8;
    if ((llvm::Type::isOpaquePointerTy(v21) & 1) == 0)
    {
      v23 = **(v20 + 2);
      v97 = v20;
      if (*(v23 + 8) == 16)
      {
        v111 = **(v23 + 16);
      }

      else
      {
        v111 = **(v20 + 2);
      }

      __src = v8;
      __p = v127;
      v126 = 0x2000000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&__p, &__src, &v123);
      for (i = *(v8 + 1); i; i = *(i + 8))
      {
        v25 = *(i + 24);
        if (*(v25 + 16) == 77)
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, v25);
        }
      }

      __src = v124;
      v123 = 0x2000000000;
      if (v126)
      {
        v104 = a6;
        v105 = v10;
        v26 = __p;
        v27 = (__p + 8 * v126);
        v28 = a4;
        v96 = a3;
        v101 = (a3 | ((a3 + a4 - 1) << 32));
        v102 = this + 1712;
        v29 = v111;
        v103 = a3;
        v99 = v27;
        while (1)
        {
          v30 = *(**v26 + 16);
          v31 = *v30;
          v32 = *(*v30 + 8);
          if (*v30)
          {
            v33 = v32 == 16;
          }

          else
          {
            v33 = 0;
          }

          if (v33)
          {
            if (*(v31 + 12) != 1)
            {
              goto LABEL_119;
            }

            v35 = *(**(v31 + 16) + 8);
            v33 = v35 == 15;
            v34 = v35 != 15;
            if (!v33)
            {
              v31 = **(v31 + 16);
            }

            v32 = *(v31 + 8);
          }

          else
          {
            v34 = 0;
          }

          if (v32 == 17)
          {
            v36 = v31;
          }

          else
          {
            v36 = 0;
          }

          if (v36)
          {
            if (*(v36 + 32) > v28)
            {
              goto LABEL_119;
            }

            v31 = **(v36 + 16);
            ++v34;
            v32 = *(v31 + 8);
          }

          if (v32 == 16)
          {
            v37 = v31;
          }

          else
          {
            v37 = 0;
          }

          if (v37)
          {
            if (*(v37 + 12) != 1)
            {
              goto LABEL_119;
            }

            v31 = **(v37 + 16);
            v38 = v34 + 2;
          }

          else
          {
            v38 = v34 + 1;
          }

          if (v36 | v37)
          {
            v39 = v31 == v29;
          }

          else
          {
            v39 = 0;
          }

          if (v39)
          {
            v109 = v37;
            v106 = *v26;
            v40 = *(*v26 + 8);
            if (!v40)
            {
LABEL_117:
              v28 = a4;
              v27 = v99;
              if (*(v106 + 16) > 0x1Bu)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v106);
                v29 = v111;
              }

              goto LABEL_119;
            }

            v107 = 32 * (v34 + 1);
            v108 = v34;
            v110 = v38;
            while (2)
            {
              v41 = *(v40 + 24);
              if (!v41 || *(v41 + 16) != 62 || ((v42 = *(v41 + 20) & 0x7FFFFFF, v43 = (v42 - 1), v44 = **(*v41 + 16), v44 == v29) ? (v45 = v43 == v38) : (v45 = 1), !v45 || (v44 == v109 ? (v46 = v42 == v38) : (v46 = 1), !v46)))
              {
LABEL_116:
                v40 = *(v40 + 8);
                if (!v40)
                {
                  goto LABEL_117;
                }

                continue;
              }

              break;
            }

            if (v42 != 1)
            {
              v47 = v41 - 32 * v42 + 32;
              v48 = v108;
              do
              {
                if (v48)
                {
                  v49 = *v47;
                  if (*(*v47 + 16) != 16)
                  {
                    goto LABEL_116;
                  }

                  v50 = (v49 + 24);
                  v51 = *(v49 + 32);
                  if (v51 >= 0x41)
                  {
                    v52 = llvm::APInt::countLeadingZerosSlowCase((v49 + 24));
                    v38 = v110;
                    v29 = v111;
                    if (v51 - v52 > 0x40)
                    {
                      goto LABEL_116;
                    }

                    v50 = *v50;
                  }

                  if (*v50)
                  {
                    goto LABEL_116;
                  }
                }

                v47 += 32;
                --v48;
              }

              while (--v43);
            }

            v53 = this + *(*this - 24);
            v119 = *(v53 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v120, (v53 + 1712));
            v121 = *(v53 + 452);
            llvm::IRBuilderBase::SetInsertPoint(&v102[*(*this - 24)], v41);
            v54 = *(v41 - 32 * (*(v41 + 20) & 0x7FFFFFF) + v107);
            v55 = this + *(*this - 24);
            v56 = *(v55 + 238);
            v118 = 257;
            IntCast = llvm::IRBuilderBase::CreateIntCast(v55 + 214, v54, v56, 0, v117);
            if (IntCast)
            {
              v58 = *(IntCast + 16) == 16;
            }

            else
            {
              v58 = 0;
            }

            v59 = v101;
            if (v58)
            {
              v60 = (IntCast + 24);
              if (*(IntCast + 8) >= 0x41u)
              {
                v60 = *v60;
              }

              v59 = (*v60 + v103) | ((*v60 + v103) << 32);
            }

            v116 = v59;
            v61 = AGCLLVMUserObject::buildAPIResourceIntrinsic(this, v104, v105, IntCast, &v116);
            if (v44 == v109)
            {
              v62 = *(*this - 24);
              v63 = llvm::UndefValue::get();
              v115 = 0;
              v118 = 257;
              llvm::IRBuilderBase::CreateInsertValue(&v102[v62], v63, v61, &v115, 1, v117);
            }

            v64 = *(v41 + 8);
            if (!v64)
            {
LABEL_109:
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v41);
              v72 = *(*this - 24);
              v112 = v119;
              v113 = v120;
              if (v120)
              {
                llvm::MetadataTracking::track();
              }

              v114 = v121;
              AGCLLVMBuilder::InsertPoint::restoreIP(&v112, &v102[v72]);
              if (v113)
              {
                llvm::MetadataTracking::untrack();
              }

              if (v120)
              {
                llvm::MetadataTracking::untrack();
              }

              v29 = v111;
              v38 = v110;
              goto LABEL_116;
            }

            while (2)
            {
              v69 = *(v64 + 24);
              v70 = *(v69 + 16);
              if (v69 && v70 == 60)
              {
                v71 = *(v64 + 24);
                llvm::Value::replaceAllUsesWith();
LABEL_107:
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v69);
              }

              else if (v69)
              {
                if (v70 == 77)
                {
                  v65 = *(v69 + 8);
                  if (v65)
                  {
                    if (!*(v65 + 8) && *(*v69 + 8) == 15 && **(*v69 + 16) == *(this + *(*this - 24) + 1912))
                    {
                      v66 = *(v65 + 24);
                      if (v66)
                      {
                        if (*(v66 + 16) == 60)
                        {
                          v67 = *(v66 + 8);
                          if (v67)
                          {
                            if (!*(v67 + 8))
                            {
                              v68 = *(v67 + 24);
                              if (v68)
                              {
                                if (*(v68 + 16) == 76 && (*v68 == v105 || *v68 == v109))
                                {
                                  v94 = *(v67 + 24);
                                  v95 = v66;
                                  llvm::Value::replaceAllUsesWith();
                                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v94);
                                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v95);
                                  goto LABEL_107;
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

              v64 = *(v64 + 8);
              if (!v64)
              {
                goto LABEL_109;
              }

              continue;
            }
          }

LABEL_119:
          if (++v26 == v27)
          {
            v73 = __src;
            if (v123)
            {
              v74 = 8 * v123;
              v8 = v98;
              a6 = v104;
              v10 = v105;
              v22 = v96;
              do
              {
                if (!*(*v73 + 1))
                {
                  llvm::Instruction::eraseFromParent(*v73);
                }

                ++v73;
                v74 -= 8;
              }

              while (v74);
              v73 = __src;
            }

            else
            {
              v8 = v98;
              a6 = v104;
              v10 = v105;
              v22 = v96;
            }

            if (v73 != v124)
            {
              free(v73);
            }

            break;
          }
        }
      }

      if (__p != v127)
      {
        free(__p);
      }

      v20 = v97;
    }

    if (!*(v8 + 1))
    {
      goto LABEL_146;
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v75 = v20;
      v76 = *(this + *(*this - 24) + 1696);
      __src = llvm::Value::getName(v8);
      v123 = v77;
      llvm::StringRef::str(&__p, &__src);
      if (v128 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      AGCTargetPrinter::printMessage(v76, "!!!! Perf: Argument %s: failed to patten match the array of texture/sampler, spilling!!", p_p);
      if (v128 < 0)
      {
        operator delete(__p);
      }

      v20 = v75;
    }

    AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((this + *(*this - 24) + 1704), v20);
    v80 = this + 1712;
    v81 = AllocaInEntryBlock + 24;
    if (!AllocaInEntryBlock)
    {
      v81 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint(&v80[*(*this - 24)], *(AllocaInEntryBlock + 40), *(v81 + 8));
    if (a4)
    {
      v82 = v22;
      v83 = v10;
      v84 = 0;
      v85 = this + 1904;
      do
      {
        v117[0] = v82 + v84;
        v117[1] = v82 + v84;
        v86 = this + *(*this - 24) + 1704;
        v87 = *(v86 + 25);
        __src = llvm::ConstantInt::get();
        v88 = *&v85[*(*this - 24)];
        v123 = llvm::ConstantInt::get();
        v129 = 257;
        GEP = AGCLLVMBuilder::CreateGEP(v86, AllocaInEntryBlock, &__src, 2, &__p);
        v90 = *&v85[*(*this - 24)];
        v91 = llvm::ConstantInt::get();
        v92 = AGCLLVMUserObject::buildAPIResourceIntrinsic(this, a6, v83, v91, v117);
        llvm::IRBuilderBase::CreateAlignedStore(&v80[*(*this - 24)], v92, GEP, 0);
        ++v84;
      }

      while (a4 != v84);
    }

LABEL_145:
    llvm::Value::replaceAllUsesWith();
LABEL_146:
    result = 1;
    goto LABEL_147;
  }

  result = 0;
LABEL_147:
  v93 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v25[3] = *MEMORY[0x277D85DE8];
  AGCLLVMAGPFragmentShader::addWrapperPrefix(this);
  v2 = *(this + 20);
  v3 = *(v2 + 80);
  v4 = v2 + 72;
  while (1)
  {
    v3 = *(v3 + 8);
    if (v3 == v4)
    {
      break;
    }

    v5 = v3 - 24;
    if (!v3)
    {
      v5 = 0;
    }

    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = v6 - 24;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 16) - 40;
    if (v8 >= 0xFFFFFFF5)
    {
      v9 = v6 - 24;
    }

    else
    {
      v9 = 0;
    }

    if (*(v9 + 16) == 29 && v8 >= 0xFFFFFFF5)
    {
      v11 = *(v6 - 4);
      v12 = v11 & 0x7FFFFFF;
      if ((v11 & 0x7FFFFFF) != 0)
      {
        v13 = *(this + 8);
        if (v13)
        {
          v14 = *(v6 - 24 - 32 * v12);
          if (v14)
          {
            v15 = *v14;
            v22 = 0;
            v16 = *(v13 + 8);
            if (v16)
            {
              v17 = 0;
              do
              {
                v18 = *(v13 - 8 * v16 + 8 * v17);
                if (v18)
                {
                  if (isStringMDNode(*(v18 - 8 * *(v18 + 8)), "air.imageblock_data"))
                  {
                    v24[0] = v25;
                    v24[1] = 0x500000000;
                    IndexedType = llvm::ExtractValueInst::getIndexedType();
                    v23[0] = &unk_282558560;
                    v23[1] = this;
                    v23[3] = v23;
                    AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(this, IndexedType, v24, this + 7552, 0, 1, v23);
                    std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v23);
                    if (v24[0] != v25)
                    {
                      free(v24[0]);
                    }
                  }
                }

                v17 = v22 + 1;
                v22 = v17;
                v13 = *(this + 8);
                v16 = *(v13 + 8);
              }

              while (v17 < v16);
            }
          }
        }
      }

      break;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

llvm::Value *AGCLLVMUserObject::buildAPIResourceIntrinsic(AGCLLVMUserObject *this, unsigned __int8 ***a2, llvm::Type *a3, llvm::Value *a4, AGCArgumentBuffer::Resource::Bounds *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = (this + *(*this - 24));
  v10 = v9[244];
  v21 = v9[238];
  v22 = v10;
  v11 = v9[235];
  v23 = v21;
  v24 = v11;
  v12 = v9[267];
  Function = AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(a2);
  v14 = (this + *(*this - 24));
  v20[0] = a4;
  v20[1] = AGCArgumentBuffer::Resource::Bounds::toConstantVector(a5, v14 + 214);
  v15 = *(this + *(*this - 24) + 1904);
  v20[2] = llvm::ConstantInt::get();
  v16 = *(this + *(*this - 24) + 1880);
  v20[3] = llvm::ConstantInt::get();
  v19[16] = 257;
  result = llvm::IRBuilderBase::CreateCall((v14 + 214), *(Function + 24), Function, v20, 4, v19);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserFragmentShader::addWrapperPrefix(AGCLLVMUserFragmentShader *this)
{
  v2 = this + 1712;
  v3 = (this + 5800);
  v4 = 8;
  do
  {
    v5 = *(v3 - 33);
    if (v5)
    {
      v6 = *(*this - 24);
      v57 = 257;
      Alloca = llvm::IRBuilderBase::CreateAlloca(&v2[v6], v5, 0, v56);
      llvm::ValueHandleBase::operator=((v3 - 256), Alloca);
    }

    v8 = *(v3 - 1);
    if (v8)
    {
      v9 = *(*this - 24);
      v57 = 257;
      v10 = llvm::IRBuilderBase::CreateAlloca(&v2[v9], v8, 0, v56);
      llvm::ValueHandleBase::operator=(v3, v10);
    }

    v3 = (v3 + 32);
    --v4;
  }

  while (v4);
  v11 = *(this + 6056);
  if ((v11 & 4) != 0)
  {
    v12 = this + *(*this - 24);
    v53 = *(v12 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (v12 + 1712));
    v55 = *(v12 + 452);
    llvm::IRBuilderBase::SetInsertPoint(this + *(*this - 24) + 1712, *(*(this + 782) + 40), *(*(this + 782) + 32));
    v13 = this + *(*this - 24);
    v14 = *(v13 + 234);
    v57 = 257;
    v15 = llvm::IRBuilderBase::CreateAlloca(v13 + 214, v14, 0, v56);
    llvm::ValueHandleBase::operator=((this + 6064), v15);
    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), *(this + 782), *(this + 760), 0);
    v16 = this + *(*this - 24);
    v50 = v53;
    v51 = v54;
    if (v54)
    {
      llvm::MetadataTracking::track();
    }

    v52 = v55;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v50, (v16 + 1712));
    if (v51)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v54)
    {
      llvm::MetadataTracking::untrack();
    }

    v11 = *(this + 6056);
    if ((v11 & 8) == 0)
    {
LABEL_9:
      if ((v11 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_20:
      v23 = this + *(*this - 24);
      v24 = *(v23 + 238);
      v57 = 257;
      v25 = llvm::IRBuilderBase::CreateAlloca(v23 + 214, v24, 0, v56);
      llvm::ValueHandleBase::operator=((this + 6112), v25);
      v26 = this + *(*this - 24);
      v27 = *(this + 1606);
      v28 = *(v26 + 238);
      v29 = llvm::ConstantInt::get();
      llvm::IRBuilderBase::CreateAlignedStore(v26 + 214, v29, *(this + 766), 0);
      if ((*(this + 6056) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 6056) & 8) == 0)
  {
    goto LABEL_9;
  }

  v17 = this + *(*this - 24);
  v18 = *(v17 + 237);
  v57 = 257;
  v19 = llvm::IRBuilderBase::CreateAlloca(v17 + 214, v18, 0, v56);
  llvm::ValueHandleBase::operator=((this + 6088), v19);
  v20 = this + *(*this - 24);
  v21 = *(v20 + 237);
  v22 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateAlignedStore(v20 + 214, v22, *(this + 763), 0);
  v11 = *(this + 6056);
  if ((v11 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v11 & 1) == 0)
  {
    return 1;
  }

LABEL_21:
  if ((*(*(this + 800) + 1) & 8) != 0)
  {
    v38 = llvm::User::operator new(0x58);
    v39 = (this + *(*this - 24));
    v40 = v39[267];
    v41 = v39[234];
    v56[0] = "agc.alpha_test_ref";
    v57 = 259;
    v49 = *(v39[271] + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v42 = this + *(*this - 24);
    v43 = *(v42 + 268);
    v44 = AGCLLVMBuilder::buildGlobalMetadata((v42 + 1704), v38);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v43, v44);
    v45 = this + *(*this - 24);
    v57 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v45 + 1704), v38, v56);
    v47 = AGCLLVMUserFragmentShader::buildAlphaQuantize(this, Load);
    llvm::ValueHandleBase::operator=((this + 6160), v47);
  }

  else
  {
    v30 = *(this + *(*this - 24) + 1872);
    v31 = llvm::ConstantFP::get();
    llvm::ValueHandleBase::operator=((this + 6160), v31);
    *(this + 1546) = 6;
    v32 = this + *(*this - 24);
    v33 = *(v32 + 234);
    v57 = 257;
    v34 = llvm::IRBuilderBase::CreateAlloca(v32 + 214, v33, 0, v56);
    llvm::ValueHandleBase::operator=((this + 6136), v34);
    v35 = this + *(*this - 24);
    v36 = *(v35 + 234);
    v37 = llvm::ConstantFP::get();
    llvm::IRBuilderBase::CreateAlignedStore(v35 + 214, v37, *(this + 769), 0);
  }

  return 1;
}

uint64_t AGCLLVMAGPFragmentShader::addWrapperPrefix(AGCLLVMAGPFragmentShader *this)
{
  AGCLLVMUserFragmentShader::addWrapperPrefix(this);
  if (*(this + 1760) == 1)
  {
    v3 = *(this + *(*this - 24) + 2168);
    if (*(v3 + 1858) != 1 || *(this + 6445) == 1 && *(this + 6462) == 1)
    {
      *(v3 + 1858) = 0;
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("AGC_DISABLE_STUB_MOVMSK", v2)) == 0 || *Value == 48 || !atoi(Value))
      {
        v5 = this + *(*this - 24);
        v6 = *(v5 + 271);
        v11 = *(v5 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v5 + 1712));
        v13 = *(v5 + 452);
        v7 = *(this + 1606);
        v8 = *(this + *(*this - 24) + 1904);
        v9 = llvm::ConstantInt::get();
        (*(*v6 + 624))(v6, &v11, v9);
        if (v12)
        {
          llvm::MetadataTracking::untrack();
        }
      }
    }

    *(this + 6060) = 1;
  }

  return 1;
}

uint64_t AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(unsigned __int8 ***a1)
{
  v2 = llvm::FunctionType::get();
  v3 = v2;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(v2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[2];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = a1[1][v9];
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v13 = *a1;
    v14 = **a1;
    v27 = a1[4];
    v15 = &v27;
    if (v14)
    {
      v28[2] = &v27;
      v16 = 10;
      v17 = 3;
      v15 = v13;
    }

    else
    {
      v16 = 1;
      v17 = 10;
    }

    v28[0] = v15;
    v29 = v17;
    v30 = v16;
    llvm::Twine::str(&__p, v28);
    llvm::Module::getOrInsertFunction();
    v26 = v18;
    if (v32 < 0)
    {
      operator delete(__p);
    }

    v19 = a1[2];
    if (!*&v19)
    {
      goto LABEL_39;
    }

    v20 = vcnt_s8(v19);
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] > 1uLL)
    {
      v21 = v6;
      if (v6 >= *&v19)
      {
        v21 = v6 % *&v19;
      }
    }

    else
    {
      v21 = v6 & (*&v19 - 1);
    }

    v22 = a1[1][v21];
    if (!v22 || (v23 = *v22) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v24 = v23[1];
      if (v24 == v6)
      {
        if (v23[2] == v3)
        {
          llvm::ValueHandleBase::operator=((v23 + 3), v26);
          return v26;
        }
      }

      else
      {
        if (v20.u32[0] > 1uLL)
        {
          if (v24 >= *&v19)
          {
            v24 %= *&v19;
          }
        }

        else
        {
          v24 &= *&v19 - 1;
        }

        if (v24 != v21)
        {
          goto LABEL_39;
        }
      }

      v23 = *v23;
      if (!v23)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != v2)
  {
    goto LABEL_16;
  }

  return v11[5];
}

uint64_t llvm::IRBuilderBase::CreateAlloca(llvm::BasicBlock **this, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  Module = llvm::BasicBlock::getModule(this[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v9 = DataLayout[1];
  v10 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  (*(*this[10] + 16))(this[10], v10, a4, this[6], this[7]);
  v11 = *(this + 2);
  if (v11)
  {
    v12 = *this;
    v13 = (v12 + 16 * v11);
    do
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      llvm::Instruction::setMetadata();
      v12 = (v12 + 16);
    }

    while (v12 != v13);
  }

  return v10;
}

uint64_t AGCArgumentBuffer::Resource::Bounds::toConstantVector(unsigned int *a1, llvm::Type **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  llvm::Type::getInt32Ty(a2[8], a2);
  llvm::ConstantInt::get();
  v5 = a1[1];
  llvm::Type::getInt32Ty(a2[8], v6);
  llvm::ConstantInt::get();
  result = llvm::ConstantVector::get();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::replaceSamplerInput<llvm::Argument>(unsigned __int8 ***a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 8))
  {
    return 1;
  }

  v17 = 0;
  v16 = 0;
  v5 = parseMDSampler(a3, &v17 + 1, &v17, &v16);
  result = 0;
  if (v5)
  {
    v7 = *a2;
    if (llvm::Type::isOpaquePointerTy(*a2))
    {
      v8 = *&(*(*a1 - 3))[a1 + 1776];
      llvm::StructType::create();
      v9 = v16;
    }

    else
    {
      v9 = v16;
      if (v16)
      {
        v10 = **(v7 + 2);
        if (*(v10 + 8) == 16)
        {
          v10 = **(v10 + 16);
        }

        v7 = **(v10 + 16);
      }

      v11 = *(v7 + 2);
      if ((v11 & 0x1FF) == 0x110)
      {
        v7 = **(v7 + 2);
        LOBYTE(v11) = *(v7 + 8);
      }

      if (v11 == 15)
      {
        v12 = **(v7 + 2);
        if ((*(v12 + 8) & 0x1FF) == 0x110)
        {
          v7 = **(v12 + 16);
        }
      }

      v13 = **(v7 + 2);
    }

    v15 = v17;
    v14 = HIDWORD(v17);
    std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>((a1 + 128), HIDWORD(v17) & 0xFFFFF);
    return AGCLLVMUserObject::replaceTextureOrSamplerArgument(a1, a2, v14, v15, v9, a1 + 393);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateBr(unsigned int **this, llvm::BasicBlock *a2)
{
  v3 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  v6 = 257;
  llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v3, v5);
  return v3;
}

uint64_t parseMDSampler(uint64_t a1, _DWORD *a2, _DWORD *a3, BOOL *a4)
{
  String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8));
  if (v9 != 11)
  {
    return 0;
  }

  if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
  {
    return 0;
  }

  *a4 = 0;
  *a3 = 1;
  v12 = *(a1 + 8);
  v21 = 2;
  if (v12 >= 3)
  {
    do
    {
      if (parseMDLocationIndex(a1, &v21, a2, a3))
      {
        v13 = v21;
      }

      else
      {
        v14 = parseMDInt("air.binding", a1, &v21, a2);
        v15 = v21;
        v13 = v21;
        if ((v14 & 1) == 0)
        {
          v13 = ++v21;
          if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v15), "air.arg_type_name"))
          {
            v16 = v15 + 2;
            v21 = v16;
            v17 = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v13));
            v19 = v18 >= 5 && *v17 == 1634890337 && *(v17 + 4) == 121;
            *a4 = v19;
            v13 = v16;
          }
        }
      }
    }

    while (v13 < v12);
  }

  return 1;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x277D85DE8];
  __src = a5;
  v12[0] = v13;
  v12[1] = 0x100000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v12, &__src, v12);
  llvm::FunctionType::get();
  v6 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v8 = v7;
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>(uint64_t result, unsigned int a2)
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
      v4 = *(v2 + 32);
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

uint64_t AGCLLVMAGPFragmentShaderGen3::addWrapperPostfix(AGCLLVMAGPFragmentShaderGen3 *this)
{
  result = AGCLLVMUserFragmentShader::addWrapperPostfix(this);
  if (*(this + 1896))
  {
    v3 = *(this + 1898);
    if (v3)
    {
      v4 = 40 * v3;
      for (i = *(this + 947); *i >= 0xFFFFFFFE; i += 20)
      {
        v4 -= 40;
        if (!v4)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(this + 947);
    }

    v6 = *(this + 947) + 40 * v3;
    if (i != v6)
    {
      v7 = this + 1712;
      v40 = this + 2168;
      v8 = this + 1896;
LABEL_10:
      v9 = *i;
      v10 = *(i + 1);
      v11 = *(*this - 24);
      v12 = *(i + 4);
      v62 = 257;
      Load = AGCLLVMBuilder::CreateLoad((this + v11 + 1704), v12, &v59);
      v14 = *(*this - 24);
      v62 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(&v7[v14], 49, Load, v10, &v59);
      v15 = *(this + 1881);
      v59 = 0uLL;
      v61 = 0;
      v60 = 0;
      v16 = *&v8[*(*this - 24)];
      v17 = llvm::ConstantInt::get();
      v18 = this + *(*this - 24);
      v19 = *(v18 + 271);
      v56 = *(v18 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (v18 + 1712));
      v58 = *(v18 + 452);
      v38 = (*(*v19 + 208))(v19, &v56, v17);
      if (v57)
      {
        llvm::MetadataTracking::untrack();
      }

      v20 = *(*this - 24);
      if (*(this + 3766) == 1)
      {
        v21 = *(this + 2264);
        v22 = *&v8[v20];
        v23 = llvm::ConstantInt::get();
      }

      else
      {
        v24 = this + v20;
        v53 = *(this + v20 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (this + v20 + 1712));
        v55 = *(v24 + 452);
        v23 = AGCLLVMObject::buildReadDynamicLIBSize(v24, &v53);
        if (v54)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v25 = *&v40[*(*this - 24)];
      (*(*v25 + 688))(v25);
      if (*(v10 + 8) == 15)
      {
        v10 = **(v10 + 16);
      }

      if ((~(-1 << llvm::DataLayout::getABITypeAlign((this + 224), v10)) & (v15 + v9)) != 0)
      {
        v26 = *&v40[*(*this - 24)];
        v27 = (*(*v26 + 688))(v26);
        v28 = this + *(*this - 24);
        v47 = *(v28 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v48, (v28 + 1712));
        v49 = *(v28 + 452);
        LODWORD(v28) = 1 << ((*(*(this + 660) + 32) >> 10) & 3);
        v29 = *&v8[*(*this - 24)];
        v30 = llvm::ConstantInt::get();
        AGCLLVMGen3TargetLowerer::splitUnalignedStore(&v50, v27, &v47, 0, v28, v23, Cast, v30, v17, v38, 0, 0);
        v59 = v50;
        result = llvm::TrackingMDRef::operator=(&v60, &v51);
        v61 = v52;
        if (v51)
        {
          result = llvm::MetadataTracking::untrack();
        }

        v7 = this + 1712;
        if (v48)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      else
      {
        v31 = *&v40[*(*this - 24)];
        v32 = (*(*v31 + 688))(v31);
        v33 = this + *(*this - 24);
        v44 = *(v33 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (v33 + 1712));
        v46 = *(v33 + 452);
        LODWORD(v33) = 1 << ((*(*(this + 660) + 32) >> 10) & 3);
        v34 = *&v8[*(*this - 24)];
        v35 = llvm::ConstantInt::get();
        v36 = (*(**&v40[*(*this - 24)] + 688))();
        AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(&v50, v32, &v44, 0, 0, v33, v23, Cast, v35, *(v36 + 1889), v17, v38, 0, 0, 0);
        v59 = v50;
        result = llvm::TrackingMDRef::operator=(&v60, &v51);
        v61 = v52;
        if (v51)
        {
          result = llvm::MetadataTracking::untrack();
        }

        v7 = this + 1712;
        if (v45)
        {
          result = llvm::MetadataTracking::untrack();
        }

        v8 = this + 1896;
      }

      if (v59)
      {
        v37 = *(*this - 24);
        v41 = v59;
        v42 = v60;
        if (v60)
        {
          llvm::MetadataTracking::track();
        }

        v43 = v61;
        result = AGCLLVMBuilder::InsertPoint::restoreIP(&v41, &v7[v37]);
        v8 = this + 1896;
        if (v42)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      if (v60)
      {
        result = llvm::MetadataTracking::untrack();
      }

      while (1)
      {
        i += 20;
        if (i == v6)
        {
          break;
        }

        if (*i < 0xFFFFFFFE)
        {
          if (i != v6)
          {
            goto LABEL_10;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserFragmentShader::addWrapperPostfix(AGCLLVMUserFragmentShader *this)
{
  v395 = *MEMORY[0x277D85DE8];
  v1 = this + 4096;
  if (*(this + 6445) == 1 && (*(this + 6462) & 1) == 0)
  {
    v56 = this + *(*this - 24);
    v57 = *(v56 + 220);
    v58 = *(v56 + 270);
    *&v383 = "feedback_output";
    LOWORD(v385) = 259;
    v59 = *(v57 + 56);
    operator new();
  }

  v329 = 0;
  v3 = **(this + 800);
  if (v3)
  {
    v4 = *(this + 692);
    v5 = this + *(*this - 24);
    if (v4 == *(v5 + 252) || v4 == *(v5 + 250))
    {
      v6 = *(v5 + 271);
      v378 = *(v5 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v379, (v5 + 1712));
      v380 = *(v5 + 452);
      v7 = (this + *(*this - 24));
      v8 = *(this + 695);
      v354 = 257;
      Load = AGCLLVMBuilder::CreateLoad((v7 + 213), v8, v353);
      LOWORD(v385) = 257;
      v10 = v7[238];
      v11 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v7 + 214), Load, v11, &v383);
      v13 = (*(*v6 + 32))(v6, &v378, Element, (1 << (BYTE1(*(*(this + 660) + 32)) & 3)));
      if (v379)
      {
        llvm::MetadataTracking::untrack();
      }

      v14 = this + *(*this - 24);
      v15 = *(this + 766);
      LOWORD(v385) = 257;
      v16 = AGCLLVMBuilder::CreateLoad((v14 + 1704), v15, &v383);
      v17 = this + *(*this - 24);
      LOWORD(v385) = 257;
      v18 = llvm::IRBuilderBase::CreateAnd((v17 + 1712), v16, v13, &v383);
      llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v18, *(this + 766), 0);
      v3 = **(this + 800);
    }
  }

  v19 = this;
  if ((v3 & 2) != 0)
  {
    v20 = *(this + 692);
    v21 = (this + *(*this - 24));
    if (v20 == v21[252] || v20 == v21[250])
    {
      v22 = *(this + 695);
      LOWORD(v385) = 257;
      v23 = AGCLLVMBuilder::CreateLoad((v21 + 213), v22, &v383);
      v24 = this + *(*this - 24);
      v25 = 1856;
      if (*(this + 692) == *(v24 + 252))
      {
        v25 = 1872;
      }

      v26 = *&v24[v25];
      v27 = llvm::ConstantFP::get();
      v28 = this + *(*this - 24);
      LOWORD(v385) = 257;
      v19 = this;
      v29 = *(v28 + 238);
      v30 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((v28 + 1712), v23, v27, v30, &v383);
      llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), InsertElement, *(this + 695), 0);
      v3 = **(this + 800);
    }
  }

  v328 = v1;
  if ((v3 & 4) != 0)
  {
    v32 = v19 + *(*v19 - 24);
    v33 = *(v32 + 234);
    v34 = *(v32 + 238);
    v35 = *v33;
    *&v383 = v33;
    *(&v383 + 1) = v34;
    v36 = llvm::StructType::get();
    v37 = v19;
    v38 = llvm::User::operator new(0x58);
    v39 = *v19;
    v40 = *(v19 + *(*v19 - 24) + 2136);
    *&v383 = "agc.coverage";
    LOWORD(v385) = 259;
    v325 = *(*(v19 + *(v39 - 24) + 2168) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v41 = v37 + *(*v37 - 24);
    v42 = *(v41 + 268);
    v43 = AGCLLVMBuilder::buildGlobalMetadata((v41 + 1704), v38);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v42, v43);
    ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((v37 + *(*v37 - 24) + 1704), v36, v38, 0);
    v45 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((v37 + *(*v37 - 24) + 1704), v36, v38, 1u);
    v46 = v37 + *(*v37 - 24);
    v47 = *(v46 + 234);
    LOWORD(v385) = 257;
    llvm::Type::isOpaquePointerTy(*ConstInBoundsGEP2_32);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v46 + 214, v47, ConstInBoundsGEP2_32, 0, &v383);
    v49 = v37 + *(*v37 - 24);
    v50 = *(v49 + 238);
    LOWORD(v385) = 257;
    llvm::Type::isOpaquePointerTy(*v45);
    v51 = llvm::IRBuilderBase::CreateAlignedLoad(v49 + 214, v50, v45, 0, &v383);
    v52 = v37 + *(*v37 - 24);
    v53 = *(v52 + 271);
    v375 = *(v52 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v376, (v52 + 1712));
    v377 = *(v52 + 452);
    Not = (*(*v53 + 32))(v53, &v375, AlignedLoad, (1 << (BYTE1(*(*(v19 + 660) + 32)) & 3)));
    if (v376)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(this + 14) == 1 && (**(this + 800) & 8) != 0)
    {
      v55 = this + *(*this - 24);
      LOWORD(v385) = 257;
      Not = llvm::IRBuilderBase::CreateNot((v55 + 1712), Not, &v383);
    }

    v60 = this + *(*this - 24);
    LOWORD(v385) = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((v60 + 1712), Not, v51, &v383);
    v62 = this + *(*this - 24);
    v63 = *(this + 766);
    LOWORD(v385) = 257;
    v64 = AGCLLVMBuilder::CreateLoad((v62 + 1704), v63, &v383);
    v65 = this + *(*this - 24);
    LOWORD(v385) = 257;
    v19 = this;
    v66 = llvm::IRBuilderBase::CreateAnd((v65 + 1712), v64, v61, &v383);
    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v66, *(this + 766), 0);
  }

  if (v1[2338] == 1)
  {
    v67 = 6320;
    if ((*(*(v19 + 660) + 32) & 0x300) == 0)
    {
      v67 = 6296;
    }

    v68 = *(v19 + v67 + 16);
    v69 = this + *(*v19 - 24);
    v70 = *(v69 + 234);
    llvm::ConstantFP::get();
    Splat = llvm::ConstantDataVector::getSplat();
    LOWORD(v385) = 257;
    v72 = (v69 + 1712);
    v19 = this;
    FSub = llvm::IRBuilderBase::CreateFSub(v72, v68, Splat, &v383);
    v74 = AGCLLVMBuilder::buildDotProduct((this + *(*this - 24) + 1704), FSub, FSub);
    v75 = *(this + *(*this - 24) + 1872);
    v76 = llvm::ConstantFP::get();
    v77 = this + *(*this - 24);
    LOWORD(v385) = 257;
    v78 = llvm::IRBuilderBase::CreateFSub((v77 + 1712), v76, v74, &v383);
    if (v1[1960])
    {
      if (v1[1960])
      {
        v93 = *(this + *(*this - 24) + 1872);
        llvm::ConstantFP::get();
        LOWORD(v385) = 257;
        v19 = this;
        FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
      }

      else
      {
        if ((v1[1960] & 2) != 0)
        {
          v79 = this + *(*this - 24);
          v80 = *(this + 766);
          LOWORD(v385) = 257;
          v81 = AGCLLVMBuilder::CreateLoad((v79 + 1704), v80, &v383);
          v82 = *(this + *(*this - 24) + 1872);
          llvm::ConstantFP::get();
          LOWORD(v385) = 257;
          llvm::IRBuilderBase::CreateFCmpHelper();
          v83 = *(this + *(*this - 24) + 1904);
          llvm::ConstantInt::get();
          v84 = *(this + *(*this - 24) + 1904);
          llvm::ConstantInt::get();
          LOWORD(v385) = 257;
          Select = llvm::IRBuilderBase::CreateSelect();
          v86 = this + *(*this - 24);
          LOWORD(v385) = 257;
          v19 = this;
          v87 = llvm::IRBuilderBase::CreateAnd((v86 + 1712), v81, Select, &v383);
          llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v87, *(this + 766), 0);
        }

        FCmpHelper = 0;
      }
    }

    else
    {
      v89 = this + *(*this - 24);
      v90 = *(v89 + 271);
      v372 = *(v89 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v373, (v89 + 1712));
      v374 = *(v89 + 452);
      v91 = *(this + *(*this - 24) + 1872);
      v92 = llvm::ConstantFP::get();
      (*(*v90 + 24))(v90, &v372, v92, v78, 2, *(this + 1606));
      if (v373)
      {
        llvm::MetadataTracking::untrack();
      }

      FCmpHelper = 0;
      v1[1964] = 1;
      v19 = this;
    }

    if ((*(*(v19 + 660) + 33) & 3) == 0)
    {
      v94 = v19 + *(*v19 - 24);
      v95 = *(v94 + 271);
      v96 = *(v95 + 1648);
      if (v96)
      {
        v97 = strlen(*(v95 + 1648));
      }

      else
      {
        v97 = 0;
      }

      v98 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v94 + 1704), v96, v97, *(v94 + 234), *(v94 + 234));
      v99 = this + *(*this - 24);
      v100 = *(this + 789);
      LOWORD(v385) = 257;
      v101 = *(v99 + 238);
      v102 = llvm::ConstantInt::get();
      *&v391 = llvm::IRBuilderBase::CreateExtractElement((v99 + 1712), v100, v102, &v383);
      v354 = 257;
      v103 = llvm::IRBuilderBase::CreateCall((v99 + 1712), *(v98 + 24), v98, &v391, 1, v353);
      v104 = this + *(*this - 24);
      v105 = *(v104 + 234);
      v106 = llvm::ConstantFP::get();
      LOWORD(v385) = 257;
      v107 = llvm::IRBuilderBase::CreateFSub((v104 + 1712), v106, v103, &v383);
      v108 = this + *(*this - 24);
      LOWORD(v385) = 257;
      FMul = llvm::IRBuilderBase::CreateFMul((v108 + 1712), v103, v107, &v383);
      v354 = 257;
      FDiv = llvm::IRBuilderBase::CreateFDiv((v108 + 1712), v78, FMul, v353);
      v111 = this + *(*this - 24);
      v112 = *(v111 + 271);
      v369 = *(v111 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v370, (v111 + 1712));
      v371 = *(v111 + 452);
      FPCast = (*(*v112 + 40))(v112, &v369, FDiv, 0);
      if (v370)
      {
        llvm::MetadataTracking::untrack();
      }

      v19 = this;
      v114 = *(this + 695);
      if (v114)
      {
        v115 = this + *(*this - 24);
        LOWORD(v385) = 257;
        v116 = AGCLLVMBuilder::CreateLoad((v115 + 1704), v114, &v383);
        v117 = *v116;
        v118 = this + *(*this - 24);
        v354 = 257;
        v119 = *(v118 + 238);
        v120 = llvm::ConstantInt::get();
        v121 = llvm::IRBuilderBase::CreateExtractElement((v118 + 1712), v116, v120, v353);
        v122 = *(*this - 24);
        v123 = **(v117 + 16);
        v394 = 257;
        if (*FPCast != v123)
        {
          v124 = (this + v122);
          if (*(FPCast + 16) > 0x14u)
          {
            LOWORD(v385) = 257;
            FPCast = llvm::CastInst::CreateFPCast();
            llvm::IRBuilderBase::Insert<llvm::CastInst>(v124 + 214, FPCast, &v391);
          }

          else
          {
            v125 = (*(*v124[223] + 256))(v124[223], FPCast, v123);
            FPCast = v125;
            if (v125 && *(v125 + 16) >= 0x1Cu)
            {
              llvm::IRBuilderBase::Insert<llvm::CastInst>(v124 + 214, v125, &v391);
            }
          }
        }

        LOWORD(v385) = 257;
        v126 = llvm::IRBuilderBase::CreateFMul((v118 + 1712), v121, FPCast, &v383);
        v127 = this + *(*this - 24);
        LOWORD(v385) = 257;
        v19 = this;
        v128 = *(v127 + 238);
        v129 = llvm::ConstantInt::get();
        v130 = llvm::IRBuilderBase::CreateInsertElement((v127 + 1712), v116, v126, v129, &v383);
        llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v130, *(this + 695), 0);
      }
    }
  }

  else
  {
    FCmpHelper = 0;
  }

  v131 = v1[1960];
  if (v131)
  {
    if ((*(*(v19 + 800) + 1) & 8) != 0)
    {
      v145 = *(v19 + 695);
      v144 = *v19;
      if (v145)
      {
        v146 = (this + *(v144 - 24));
        v354 = 257;
        v147 = AGCLLVMBuilder::CreateLoad((v146 + 213), v145, v353);
        LOWORD(v385) = 257;
        v148 = v146[238];
        v149 = llvm::ConstantInt::get();
        v150 = llvm::IRBuilderBase::CreateExtractElement((v146 + 214), v147, v149, &v383);
        v151 = (v146 + 213);
        v19 = this;
        v152 = AGCLLVMBuilder::f32Extend(v151, v150, 1);
        v153 = AGCLLVMUserFragmentShader::buildAlphaQuantize(this, v152);
        goto LABEL_64;
      }
    }

    else
    {
      v144 = *v19;
    }

    v154 = v19 + *(v144 - 24);
    v155 = *(v19 + 769);
    LOWORD(v385) = 257;
    v153 = AGCLLVMBuilder::CreateLoad((v154 + 1704), v155, &v383);
LABEL_64:
    v156 = v153;
    v157 = v19 + *(*v19 - 24);
    if (v1[2338] == 1)
    {
      v158 = *(v19 + 1546) - 2;
      if (v158 <= 6)
      {
        v159 = dword_20E70D480[v158];
      }

      v163 = *(v19 + 772);
      v164 = v19;
      LOWORD(v385) = 257;
      v165 = llvm::IRBuilderBase::CreateFCmpHelper();
      v166 = v164 + *(*v164 - 24);
      LOWORD(v385) = 257;
      llvm::IRBuilderBase::CreateAnd((v166 + 1712), v165, FCmpHelper, &v383);
      v167 = *(v164 + *(*v164 - 24) + 1872);
      llvm::ConstantFP::get();
      v168 = *(v164 + *(*v164 - 24) + 1872);
      llvm::ConstantFP::get();
      LOWORD(v385) = 257;
      v169 = llvm::IRBuilderBase::CreateSelect();
      v170 = v164 + *(*v164 - 24);
      v171 = *(v170 + 271);
      v366 = *(v170 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v367, (v170 + 1712));
      v368 = *(v170 + 452);
      v172 = *(v164 + *(*v164 - 24) + 1872);
      v173 = llvm::ConstantFP::get();
      (*(*v171 + 24))(v171, &v366, v169, v173, 4, *(v19 + 1606));
      if (!v367)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v160 = *(v157 + 271);
      v363 = *(v157 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v364, (v157 + 1712));
      v365 = *(v157 + 452);
      (*(*v160 + 24))(v160, &v363, v156, *(v19 + 772), *(v19 + 1546), *(v19 + 1606));
      if (!v364)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_99;
  }

  if ((v1[1960] & 0xC) != 0)
  {
    if ((v1[1960] & 4) != 0)
    {
      v161 = v19 + *(*v19 - 24);
      v162 = *(v19 + 760);
      LOWORD(v385) = 257;
      v132 = AGCLLVMBuilder::CreateLoad((v161 + 1704), v162, &v383);
      v131 = v1[1960];
      if ((v131 & 8) != 0)
      {
LABEL_55:
        v133 = v19 + *(*v19 - 24);
        v134 = *(v19 + 763);
        LOWORD(v385) = 257;
        v135 = AGCLLVMBuilder::CreateLoad((v133 + 1704), v134, &v383);
        if ((v1[1960] & 2) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v132 = 0;
      if ((v1[1960] & 8) != 0)
      {
        goto LABEL_55;
      }
    }

    v135 = 0;
    if ((v131 & 2) == 0)
    {
      goto LABEL_88;
    }

LABEL_56:
    v136 = v19 + *(*v19 - 24);
    v137 = *(v19 + 766);
    v138 = v1;
    v139 = v19;
    LOWORD(v385) = 257;
    v140 = AGCLLVMBuilder::CreateLoad((v136 + 1704), v137, &v383);
    if (v138[2348] == 1)
    {
      v141 = v19 + *(*v19 - 24);
      v142 = *(v141 + 271);
      if (*(v142 + 1704))
      {
        v143 = strlen(*(v142 + 1704));
      }

      v182 = *(v141 + 238);
      inserted = AGCLLVMBuilder::getOrInsertFunction<>((v141 + 1704));
      v139 = this;
      v184 = this + *(*this - 24);
      LOWORD(v385) = 257;
      v185 = llvm::IRBuilderBase::CreateCall((v184 + 1712), *(inserted + 24), inserted, 0, 0, &v383);
      v186 = this + *(*this - 24);
      v187 = *(v186 + 238);
      v188 = llvm::ConstantInt::get();
      LOWORD(v385) = 257;
      Shl = llvm::IRBuilderBase::CreateShl((v186 + 1712), v188, v185, &v383);
      v190 = this + *(*this - 24);
      LOWORD(v385) = 257;
      v140 = llvm::IRBuilderBase::CreateAnd((v190 + 1712), v140, Shl, &v383);
    }

    v191 = v139 + *(*v139 - 24);
    v192 = *(v191 + 238);
    v193 = llvm::ConstantInt::get();
    LOWORD(v385) = 257;
    llvm::IRBuilderBase::CreateICmp(v191 + 214, 33, v140, v193, &v383);
    v194 = *(v139 + *(*v139 - 24) + 1872);
    llvm::ConstantFP::getNaN();
    LOWORD(v385) = 257;
    v132 = llvm::IRBuilderBase::CreateSelect();
    v19 = v139;
    if (*(v139 + 1136) <= 1)
    {
      *(v139 + 1136) = 2;
    }

    v1 = v328;
LABEL_88:
    v195 = *(v19 + *(*v19 - 24) + 2168);
    v196 = (*(*v195 + 848))(v195);
    if (v132 && v196)
    {
      if (!*(v19 + 808))
      {
        v197 = *(v19 + *(*v19 - 24) + 1904);
        v198 = llvm::PointerType::get();
        *&v383 = "agc.viewport_depth_range_pointer_global";
        LOWORD(v385) = 259;
        v199 = *(*(v19 + *(*v19 - 24) + 2168) + 920);
        v202 = (*(*v199 + 328))(v199, v200, v201);
        *(v19 + 808) = AGCLLVMUserObject::createGlobalBufferBinding(v19, v198, &v383, v202, 0, 5, 0);
      }

      if (!*(v19 + 795))
      {
        v1[2362] = 1;
        (*(*this + 528))(&v383, this, *(this + *(*this - 24) + 1904), "air.viewport_array_index", 24);
        v203 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v383);
        v19 = this;
        llvm::ValueHandleBase::operator=((this + 6344), v203);
        if (v386 != v387)
        {
          free(v386);
        }
      }

      v345 = v135;
      v204 = v19 + *(*v19 - 24);
      v205 = *(v19 + 808);
      LOWORD(v385) = 257;
      v206 = AGCLLVMBuilder::CreateLoad((v204 + 1704), v205, &v383);
      v207 = v19 + *(*v19 - 24);
      v208 = *(v207 + 238);
      LOWORD(v385) = 257;
      llvm::Type::isOpaquePointerTy(*v206);
      v209 = llvm::IRBuilderBase::CreateAlignedLoad(v207 + 214, v208, v206, 0, &v383);
      Cast = *(v19 + 795);
      v211 = *v209;
      if (*Cast != *v209)
      {
        v212 = v19 + *(*v19 - 24);
        LOWORD(v385) = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v212 + 1712), 39, Cast, v211, &v383);
      }

      v213 = (v19 + *(*v19 - 24));
      LOWORD(v385) = 257;
      llvm::IRBuilderBase::CreateICmp(v213 + 214, 36, Cast, v209, &v383);
      v214 = *(v19 + *(*v19 - 24) + 1904);
      llvm::ConstantInt::get();
      v354 = 257;
      v215 = llvm::IRBuilderBase::CreateSelect();
      v216 = *(v19 + *(*v19 - 24) + 1928);
      v217 = llvm::PointerType::get();
      v218 = v19 + *(*v19 - 24);
      v219 = *(v218 + 238);
      v220 = llvm::ConstantInt::get();
      LOWORD(v385) = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v218 + 1712), v219, v206, v220, &v383);
      v354 = 257;
      v222 = llvm::IRBuilderBase::CreateCast((v218 + 1712), 49, GEP, v217, v353);
      v223 = (v19 + *(*v19 - 24));
      v224 = v223[241];
      *&v391 = v215;
      v225 = v223[238];
      *(&v391 + 1) = llvm::ConstantInt::get();
      LOWORD(v385) = 257;
      llvm::Type::isOpaquePointerTy(*v222);
      v226 = llvm::IRBuilderBase::CreateGEP((v223 + 214), v224, v222, &v391, 2, &v383);
      v354 = 257;
      AGCLLVMBuilder::CreateLoad((v223 + 213), v226, v353);
      v227 = (v19 + *(*v19 - 24));
      v228 = v227[241];
      *&v391 = v215;
      v229 = v227[238];
      *(&v391 + 1) = llvm::ConstantInt::get();
      LOWORD(v385) = 257;
      llvm::Type::isOpaquePointerTy(*v222);
      v230 = llvm::IRBuilderBase::CreateGEP((v227 + 214), v228, v222, &v391, 2, &v383);
      v354 = 257;
      AGCLLVMBuilder::CreateLoad((v227 + 213), v230, v353);
      v231 = v19 + *(*v19 - 24);
      LOWORD(v385) = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v354 = 257;
      llvm::IRBuilderBase::CreateSelect();
      v232 = v19 + *(*v19 - 24);
      LOWORD(v385) = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v354 = 257;
      v132 = llvm::IRBuilderBase::CreateSelect();
      v1 = v328;
      v135 = v345;
    }

    v233 = v19 + *(*v19 - 24);
    v234 = *(v233 + 271);
    v360 = *(v233 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v361, (v233 + 1712));
    v362 = *(v233 + 452);
    (*(*v234 + 616))(v234, &v360, v132, v135);
    if (!v361)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  if ((v1[1960] & 2) == 0)
  {
    goto LABEL_101;
  }

  v174 = v19 + *(*v19 - 24);
  v175 = *(v19 + 766);
  LOWORD(v385) = 257;
  v176 = AGCLLVMBuilder::CreateLoad((v174 + 1704), v175, &v383);
  if (v1[1964])
  {
    if ((v1[2366] & 1) == 0)
    {
      if (v1[2348] == 1 && (*(*(v19 + 660) + 33) & 3) != 0)
      {
        v177 = v19 + *(*v19 - 24);
        v178 = *(v177 + 271);
        if (*(v178 + 1704))
        {
          v179 = strlen(*(v178 + 1704));
        }

        v311 = *(v177 + 238);
        v312 = AGCLLVMBuilder::getOrInsertFunction<>((v177 + 1704));
        v313 = this + *(*this - 24);
        LOWORD(v385) = 257;
        v314 = llvm::IRBuilderBase::CreateCall((v313 + 1712), *(v312 + 24), v312, 0, 0, &v383);
        v315 = this + *(*this - 24);
        v316 = *(v315 + 238);
        v317 = llvm::ConstantInt::get();
        LOWORD(v385) = 257;
        v318 = llvm::IRBuilderBase::CreateShl((v315 + 1712), v317, v314, &v383);
        v319 = this + *(*this - 24);
        LOWORD(v385) = 257;
        v19 = this;
        v176 = llvm::IRBuilderBase::CreateAnd((v319 + 1712), v176, v318, &v383);
      }

      v320 = this + *(*v19 - 24);
      v321 = *(v320 + 238);
      v322 = llvm::ConstantInt::get();
      LOWORD(v385) = 257;
      ICmp = llvm::IRBuilderBase::CreateICmp(v320 + 214, 32, v176, v322, &v383);
      v324 = (v320 + 1704);
      v19 = this;
      v329 = AGCLLVMBuilder::splat(v324, 4, ICmp);
    }

    goto LABEL_101;
  }

  v180 = v19 + *(*v19 - 24);
  v181 = *(v180 + 271);
  v357 = *(v180 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v358, (v180 + 1712));
  v359 = *(v180 + 452);
  (*(*v181 + 624))(v181, &v357, v176);
  if (v358)
  {
LABEL_99:
    llvm::MetadataTracking::untrack();
  }

LABEL_100:
  v1[1964] = 1;
  v19 = this;
LABEL_101:
  v235 = **(*(*(v19 + 21) + 24) + 16);
  v236 = v19 + *(*v19 - 24);
  if (v235 == *(v236 + 231))
  {
    v326 = 0;
  }

  else
  {
    v237 = *(*(v19 + 8) + 8);
    v238 = *(v236 + 267);
    v239 = *(*(llvm::Module::getFunction() + 8) + 24);
    if (((llvm::CallBase::arg_end(v239) - (v239 - 32 * (*(v239 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0)
    {
      *&v383 = &v384;
      *(&v383 + 1) = 0x800000000;
      llvm::SmallVectorImpl<llvm::Value *>::assign(&v383, v237, 0);
      if (v237)
      {
        if (*(v235 + 8) == 16)
        {
          AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, *(v239 - 4 * (*(v239 + 5) & 0x7FFFFFF)), &v383);
        }

        else
        {
          *v383 = *(v239 - 4 * (*(v239 + 5) & 0x7FFFFFF));
        }

        v240 = 0;
        v241 = 0;
        do
        {
          v242 = *(*(this + 8) - 8 * *(*(this + 8) + 8) + 8 * v240);
          if (isStringMDNode(*(v242 - 8 * *(v242 + 8)), "air.render_target"))
          {
            v243 = *(v383 + 8 * v240);
            if (v243)
            {
              if (*(v243 + 16) == 21)
              {
                v244 = *(*(this + 10) + 8 * *(v243 + 32));
                if (v244)
                {
                  if (isStringMDNode(*(v244 - 8 * *(v244 + 8) + 8), "air.render_target"))
                  {
                    LODWORD(v391) = 0;
                    LODWORD(v381) = 0;
                    v353[0] = 2;
                    parseMDInt(0, v244, v353, &v391);
                    v353[0] = 1;
                    parseMDInt(0, v242, v353, &v381);
                    if (v391 == v381)
                    {
                      v245 = 1 << v391;
                    }

                    else
                    {
                      LOBYTE(v245) = 0;
                    }

                    v241 |= v245;
                  }
                }
              }
            }
          }

          ++v240;
        }

        while (v237 != v240);
        v326 = v241;
      }

      else
      {
        v326 = 0;
      }

      if (v383 != &v384)
      {
        free(v383);
      }

      v19 = this;
    }

    else
    {
      v326 = 0;
    }
  }

  v246 = *(*(v19 + 801) + 64);
  if ((~v246 & 0xF) != 0)
  {
    v248 = -1;
    v249 = 4;
    while (v248 != 6)
    {
      v250 = v246 >> v249;
      ++v248;
      v249 += 4;
      if ((~v250 & 0xF) == 0)
      {
        if (v248 < 7)
        {
          goto LABEL_126;
        }

        break;
      }
    }

    v247 = AGCLLVMUserFragmentShader::buildStaticLtpLibOffsetArrayPtr(v19);
  }

  else
  {
LABEL_126:
    v247 = 0;
  }

  v389 = 0u;
  v390 = 0u;
  v388 = 0u;
  memset(v387, 0, sizeof(v387));
  v385 = 0u;
  v386 = 0u;
  v383 = 0u;
  v384 = 0u;
  AGCLLVMStatelessFragmentObject::buildDrawBufferState(&v383, v19 + 567, *(v19 + 660), v247);
  LOBYTE(v353[0]) = 0;
  v356 = 0;
  if ((*(*v19 + 616))(v19))
  {
    AGCLLVMUserFragmentShader::readAndWriteFramebufferFunctionPointers(v353, v19);
    v356 = 1;
  }

  if ((*(v19 + *(*v19 - 24) + 2284) & 1) == 0)
  {
LABEL_216:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v251 = 0;
  v330 = v19 + 1704;
  v252 = &v387[312];
  v253 = 14;
  v254 = 52;
  v255 = 5192;
  v256 = 5760;
  v327 = (*(*(v19 + 660) + 32) >> 28) & 1;
  do
  {
    v257 = *(v19 + 660);
    v347 = (1 << (v251 + 7));
    if ((*(v257 + 32) & v347) == 0)
    {
      goto LABEL_198;
    }

    v258 = *(v19 + v256);
    if (!v258 && (*(v257 + 4 * v251 + 28) & 0x1F) == 0x17)
    {
      goto LABEL_198;
    }

    v346 = 1 << (v251 + 7);
    v343 = v254;
    v344 = v251 + 7;
    v342 = v255;
    v259 = *v252;
    v260 = v19 + *(*v19 - 24);
    v261 = *(v260 + 271);
    v350 = *(v260 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v351, (v260 + 1712));
    v352 = *(v260 + 452);
    v339 = v259;
    v262 = (*(*v261 + 208))(v261, &v350, v259);
    if (v351)
    {
      llvm::MetadataTracking::untrack();
    }

    *&v391 = "case2_stateless_color_coverage_mask";
    v394 = 259;
    v338 = v262;
    llvm::Value::setName();
    v263 = v328[1432];
    v264 = *(v19 + 800);
    v265 = *(v264 + 1);
    v266 = v251 + 7;
    if ((v347 & HIDWORD(v265)) == 0)
    {
      v279 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v265), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v344))), 0x200000001), 0x400000002);
      v337 = (*(v264 + 1) >> v344) & 1 | (8 * ((BYTE3(*(v264 + 1)) >> v344) & 1)) | v279.i32[0] | v279.i32[1];
      v268 = 1 << (v251 + 7);
      if ((v346 & v326) == 0)
      {
        v267 = 15;
        goto LABEL_143;
      }

      v280 = *v264;
      if ((v280 & 0x20) != 0)
      {
        v306 = (v280 >> 6) & 0x1F;
        v267 = 15;
        if (v306 <= 0x10 && ((1 << v306) & 0x10014) != 0)
        {
          v267 = 0;
        }

        goto LABEL_143;
      }

      v281 = *(v19 + 802);
      if (v281)
      {
        v282 = *(v281 + 16);
        if ((v282 & 1) == 0)
        {
LABEL_161:
          v267 = 0;
LABEL_211:
          v266 = v251 + 7;
          goto LABEL_143;
        }
      }

      else
      {
        v282 = *(*(v19 + 801) + 4 * v251 + 52);
        if ((v282 & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      if (blendIsNoOpForPassthrough((v282 >> 21) & 7, (v282 >> 1) & 0x1F, (v282 >> 6) & 0x1F))
      {
        v307 = 0;
      }

      else
      {
        v307 = 7;
      }

      IsNoOpForPassthrough = blendIsNoOpForPassthrough(HIBYTE(v282) & 7, v282 >> 11, HIWORD(v282) & 0x1F);
      v268 = 1 << (v251 + 7);
      if (IsNoOpForPassthrough)
      {
        v267 = v307;
      }

      else
      {
        v267 = v307 | 8;
      }

      goto LABEL_211;
    }

    v337 = 15;
    v267 = 15;
    v268 = 1 << (v251 + 7);
LABEL_143:
    if ((v268 & v263) != 0)
    {
      v269 = 15;
    }

    else
    {
      v269 = 0;
    }

    v270 = *v19;
    v271 = v19 + *(*v19 - 24);
    if ((v271[2284] & 1) == 0)
    {
      goto LABEL_216;
    }

    v272 = *(v271 + 570);
    if (v272 == 7 || v272 == 2)
    {
      v274 = *(v19 + 1512);
      v275 = *(v19 + 1345);
      if ((v274 & v268) == 0)
      {
        *(v19 + 1512) = v274 | v268;
        v275 |= v268;
      }

      *(v19 + 1513) |= v268;
      *(v19 + 1345) = v275 | (256 << v266);
    }

    v334 = v269;
    v335 = v267;
    v336 = v268 & v263;
    if (v258)
    {
      v276 = *(v270 - 24);
      v277 = *(v19 + v256 + 24);
      v394 = 257;
      v278 = AGCLLVMBuilder::CreateLoad(&v330[v276], v277, &v391);
    }

    else
    {
      v283 = *(v19 + v342);
      v278 = llvm::UndefValue::get();
    }

    v340 = v278;
    if (*(v19 + v256 + 256))
    {
      v284 = *(*v19 - 24);
      v285 = *(v19 + v256 + 280);
      v394 = 257;
      v341 = AGCLLVMBuilder::CreateLoad(&v330[v284], v285, &v391);
    }

    else
    {
      v341 = 0;
    }

    v286 = *(v252 - 1);
    v349 = 0;
    LOBYTE(v348) = 0;
    BYTE4(v348) = 0;
    v287 = *(v19 + 660);
    v288 = *(v287 + 32);
    v289 = *(v19 + 801);
    if ((*(v289 + 4 * v251 + 52) & 0x8000000) != 0)
    {
      v290 = *(v19 + 800);
    }

    else
    {
      v291 = (v289 + v343);
      v292 = *(v19 + 802);
      if (v292)
      {
        v291 = (v292 + 16);
      }

      v349 = *v291;
      v290 = *(v19 + 800);
      if ((*v290 & 0x20) != 0)
      {
        LODWORD(v348) = (*v290 >> 6) & 0x1F;
        BYTE4(v348) = 1;
      }
    }

    v293 = *(v290 + 8);
    v294 = *(v287 + 4 * v251 + 28);
    v332 = v286;
    v333 = *(&v388 + 1);
    v331 = v288;
    if ((v347 & HIDWORD(v293)) == 0 || (v294 & 0x1F) != 0x17)
    {
      v340 = AGCLLVMStatelessFragmentObject::removeUnusedComponents(v19 + 567, v340);
      if (v341)
      {
        v341 = AGCLLVMStatelessFragmentObject::removeUnusedComponents(v19 + 567, v341);
      }

      else
      {
        v341 = 0;
      }

      v266 = v251 + 7;
    }

    if ((*(*v19 + 608))(v19, v266))
    {
      v295 = *(v19 + 14);
      v296 = *(v19 + 32);
      AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(&v381, (*(v19 + 660) + 32), *(*(v19 + 660) + 4 * v251 + 28));
      v297 = 0;
      v391 = v381;
      v392 = v382;
      v298 = 1;
    }

    else
    {
      if ((v356 & 1) == 0)
      {
        goto LABEL_216;
      }

      v298 = 0;
      v297 = *(&v355 + v251);
      v295 = *(v19 + 14);
      v296 = *(v19 + 32);
      LOBYTE(v391) = 0;
    }

    v393 = v298;
    RTZMode = AGCLLVMTargetLowerer::getRTZMode(*(v19 + *(*v19 - 24) + 2168), *(*(v19 + 684) + 4 * v251 + 28));
    AGCLLVMFragmentShader::buildWriteFramebuffer((v19 + 4536), v340, v341, v338, v297, v333, v332, v339, v327, &v349, (v331 & v347) == 0, &v348, v295 & 1, v296 & 1, v344, &v391, v337 & v335 & v334, v329, RTZMode);
    if (v336)
    {
      *(v19 + 1330) |= (v329 != 0) << v344;
      *(v19 + 1331) |= v346;
      v300 = *v340;
      *(v19 + 1334) |= (llvm::Type::getScalarSizeInBits(*v340) == 32) << v344;
      v301 = (*(v300 + 2) & 0xFE) == 0x12 ? *(**(v300 + 2) + 8) : *(v300 + 2);
      *(v19 + 1333) |= (v301 < 7) << v344;
      v302 = (*(v300 + 2) & 0xFE) == 0x12 ? *(v300 + 8) - 1 : 0;
      *(v19 + 1335) |= v302 << v253;
      if (v341)
      {
        *(v19 + 1336) |= v346;
        v303 = *v341;
        *(v19 + 1338) |= (llvm::Type::getScalarSizeInBits(*v341) == 32) << v344;
        if ((*(v303 + 2) & 0xFE) == 0x12)
        {
          v304 = *(**(v303 + 2) + 8);
        }

        else
        {
          v304 = *(v303 + 2);
        }

        *(v19 + 1337) |= (v304 < 7) << v344;
        if ((*(v303 + 2) & 0xFE) == 0x12)
        {
          v305 = *(v303 + 8) - 1;
        }

        else
        {
          v305 = 0;
        }

        *(v19 + 1339) |= v305 << v253;
      }
    }

    v255 = v342;
    v254 = v343;
LABEL_198:
    --v251;
    v254 -= 4;
    v255 -= 88;
    v252 -= 6;
    v253 -= 2;
    v256 -= 32;
  }

  while (v251 != -8);
  if ((*(v19 + *(*v19 - 24) + 2284) & 1) == 0)
  {
    goto LABEL_216;
  }

  result = (*(*v19 + 600))(v19);
  v310 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::SmallVectorImpl<llvm::Value *>::assign(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (*(result + 3) < a2)
  {
    *(result + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(result + 2);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(result + 2);
  }

  if (v4)
  {
    v5 = 0;
    v6 = *result;
    v7 = vdupq_n_s64(v4 - 1);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_20E70C4F0)));
      if (v8.i8[0])
      {
        *(v6 + 8 * v5) = a3;
      }

      if (v8.i8[4])
      {
        *(v6 + 8 * v5 + 8) = a3;
      }

      v5 += 2;
    }

    while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
  }

  v9 = a2 - v3;
  if (a2 > v3)
  {
    v10 = 0;
    v11 = *result + 8 * v3;
    v12 = vdupq_n_s64(v9 - 1);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
      if (v13.i8[0])
      {
        *(v11 + 8 * v10) = a3;
      }

      if (v13.i8[4])
      {
        *(v11 + 8 * v10 + 8) = a3;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  *(result + 2) = a2;
  return result;
}

void AGCLLVMBuilder::unboxStruct(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(*a2 + 12);
  v7 = *(a3 + 8);
  if (v7 != v6)
  {
    if (v7 <= v6)
    {
      if (*(a3 + 12) < v6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v7 != v6)
      {
        bzero((*a3 + 8 * v7), 8 * v6 - 8 * v7);
      }
    }

    *(a3 + 8) = v6;
  }

  if (*(a2 + 16) == 93)
  {
    v8 = a2;
    do
    {
      if (*(v8 + 18) != 1)
      {
        break;
      }

      v9 = *v8[8];
      if (!*(*a3 + 8 * v9))
      {
        *(*a3 + 8 * v9) = *(v8 - 4);
      }

      v8 = *(v8 - 8);
    }

    while (*(v8 + 16) == 93 && v8 != 0);
  }

  v14 = 0;
  if (v6)
  {
    v11 = 0;
    do
    {
      if (!*(*a3 + 8 * v11))
      {
        v13[16] = 257;
        Value = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, a2, &v14, 1, v13);
        v11 = v14;
        *(*a3 + 8 * v14) = Value;
      }

      v14 = ++v11;
    }

    while (v11 < v6);
  }
}

llvm::Value *AGCLLVMTargetLowerer::buildColorCoverageMask(uint64_t a1, uint64_t a2)
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

  v4 = *(a1 + 192);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Constant **AGCLLVMStatelessFragmentObject::removeUnusedComponents(void *a1, llvm::Constant **a2)
{
  ShuffleVector = a2;
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 8) == 18)
  {
    v4 = *(*a2 + 8);
    v5 = *(a1 + *(*a1 - 24) + 1904);
    v16 = llvm::ConstantInt::get();
    v6 = *(a1 + *(*a1 - 24) + 1904);
    v17 = llvm::ConstantInt::get();
    v7 = *(a1 + *(*a1 - 24) + 1904);
    v18 = llvm::ConstantInt::get();
    v8 = *(a1 + *(*a1 - 24) + 1904);
    v19 = llvm::ConstantInt::get();
    NullValue = llvm::Constant::getNullValue(*ShuffleVector, v9);
    v11 = a1 + *(*a1 - 24);
    v12 = llvm::ConstantVector::get();
    v15[16] = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v11 + 1712), ShuffleVector, NullValue, v12, v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return ShuffleVector;
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v12[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(this, a2, a3, v12, 0, a5);
  v10 = *MEMORY[0x277D85DE8];
  return ShuffleVector;
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v12 = (*(**(a1 + 72) + 336))(*(a1 + 72), a2, a3, a4, a5);
    if (v12)
    {
      v13 = *(v12 + 16) >= 0x1Cu;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
    }
  }

  else
  {
    v12 = llvm::User::operator new(0x68);
    v21 = 257;
    MEMORY[0x20F3307A0](v12, a2, a3, a4, a5, v20, 0);
    (*(**(a1 + 80) + 16))(*(a1 + 80), v12, a6, *(a1 + 48), *(a1 + 56));
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = *a1;
      v16 = &v15[4 * v14];
      do
      {
        v17 = *v15;
        v18 = *(v15 + 1);
        llvm::Instruction::setMetadata();
        v15 += 4;
      }

      while (v15 != v16);
    }
  }

  return v12;
}

uint64_t AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(uint64_t result, unsigned int *a2, unsigned int a3)
{
  if ((a3 & 0x1F) == 0x17)
  {
    v7 = std::__throw_bad_optional_access[abi:nn200100]();
    return AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(v7, v8, v9, v10);
  }

  else
  {
    v3 = *a2;
    v4 = 1 << ((*a2 >> 10) & 3);
    v5 = (~*a2 & 0x1FF000) != 0;
    v6 = (~*a2 & 0x600000) != 0;
    *result = a3 & 0x1F;
    *(result + 4) = a3 >> 5;
    *(result + 8) = v4;
    *(result + 12) = (a3 >> 9) & 7;
    *(result + 16) = BYTE1(a3) & 1;
    *(result + 17) = (a3 & 0x2000000) != 0;
    *(result + 18) = v6 & (v3 >> 22) | ((a3 & 0x100000) >> 20);
    *(result + 19) = v5;
  }

  return result;
}

unint64_t AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject *this, const AGCLLVMStatelessFragmentObject::WriteFramebufferOptions *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::str(&__p, a2, 0);
  v6 = *(a2 + 9);
  v7 = *(a2 + 316);
  v8 = *(a2 + 80);
  v9 = *(a2 + 304);
  v34 = *(a2 + 10);
  AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunctionType(this, *(a2 + 8), v6, v34, v7, v9);
  v10 = *(this + *(*this - 24) + 2136);
  llvm::Module::getOrInsertFunction();
  v12 = v11;
  v13 = *(v11 + 9);
  *(v11 + 9) = v13 & 0xC00F | (16 * *(*(this + *(*this - 24) + 2168) + 1960));
  if (v13)
  {
    llvm::Function::BuildLazyArguments(v11);
  }

  v14 = *(v12 + 88);
  llvm::Value::setName();
  if (v6)
  {
    if (*(v12 + 18))
    {
      llvm::Function::BuildLazyArguments(v12);
    }

    v15 = *(v12 + 88) + 40;
    llvm::Value::setName();
    v16 = 2;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 1;
    if (v7)
    {
LABEL_7:
      v17 = *(this + *(*this - 24) + 1896);
      llvm::ConstantInt::get();
      goto LABEL_12;
    }
  }

  if (*(v12 + 18))
  {
    llvm::Function::BuildLazyArguments(v12);
  }

  v18 = *(v12 + 88) + 40 * v16;
  llvm::Value::setName();
  ++v16;
LABEL_12:
  if (*(v12 + 18))
  {
    llvm::Function::BuildLazyArguments(v12);
  }

  v19 = v16 + 1;
  v20 = *(v12 + 88) + 40 * v16;
  llvm::Value::setName();
  if (v9)
  {
    if (*(v12 + 18))
    {
      llvm::Function::BuildLazyArguments(v12);
    }

    v21 = v16 + 2;
    v22 = *(v12 + 88) + 40 * v19;
    llvm::Value::setName();
  }

  else
  {
    v21 = v16 + 1;
  }

  if (v34)
  {
    if (*(v12 + 18))
    {
      llvm::Function::BuildLazyArguments(v12);
    }

    v23 = *(v12 + 88) + 40 * v21;
    llvm::Value::setName();
  }

  if (*(v12 + 72) == v12 + 72)
  {
    v29 = *(this + *(*this - 24) + 1776);
    operator new();
  }

  v24 = *(this + 3);
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = this + 24;
  do
  {
    v26 = *(v24 + 4);
    v27 = v26 >= v12;
    v28 = v26 < v12;
    if (v27)
    {
      v25 = v24;
    }

    v24 = *&v24[8 * v28];
  }

  while (v24);
  if (v25 == this + 24 || *(v25 + 4) > v12)
  {
LABEL_32:
    v25 = this + 24;
  }

  *a3 = v25[40];
  *a4 = v25[41];
  v30 = this + *(*this - 24);
  if (v30[2284] == 1)
  {
    v31 = *(v30 + 570);
  }

  else
  {
    v31 = 0;
  }

  AGCLLVMStatelessFragmentObject::addOrRemoveLogicalRasterOrderGroup(this, v12, v31, *(a2 + 308) & 0xFFFFFFFFFFLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

void AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::str(std::string *this, uint64_t a2, int a3)
{
  v6 = 0;
  if (*(a2 + 304))
  {
    v7 = 0x10000000;
  }

  else
  {
    v7 = 0;
  }

  v128 = *(a2 + 22);
  if (*(a2 + 22))
  {
    v8 = 0x400000;
  }

  else
  {
    v8 = 6291456;
  }

  v9 = (v7 | v8) & 0xFFFFF0FF | (((27 - __clz(*(a2 + 320))) & 3) << 8) & 0xF3FF | (((27 - __clz(*(a2 + 12))) & 3) << 10);
  if (!*(a2 + 23))
  {
    v9 |= 0x1FF000u;
  }

  v131 = v9;
  if (*(a2 + 56) == 1)
  {
    v6 = ((*(a2 + 52) & 0x1F) << 8) | 0x80;
  }

  v10 = v6 | (2 * (*(a2 + 276) & 0xF));
  v11 = *(a2 + 64);
  v12 = *(v11 + 8);
  if ((*(v11 + 8) & 0xFE) == 0x12)
  {
    v13 = **(v11 + 16);
    v14 = v10 | ((v13[8] < 7u) << 13);
    v12 = *(v11 + 8) & 0x13;
  }

  else
  {
    v14 = v10 | ((v12 < 7) << 13);
    v13 = *(a2 + 64);
  }

  v15 = *(a2 + 4) & 0x1FLL;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v129 = *(a2 + 20);
  v130 = *(a2 + 21);
  v18 = *(a2 + 44);
  v19 = v14 | ((llvm::Type::getScalarSizeInBits(v13) == 32) << 14);
  if (v12 == 18)
  {
    v20 = ((*(v11 + 32) << 15) + 98304) & 0x18000;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v19;
  v22 = *(a2 + 72);
  if (v22)
  {
    v23 = v21 | 0x20000;
    v24 = *(v22 + 8);
    if ((*(v22 + 8) & 0xFE) == 0x12)
    {
      v25 = **(v22 + 16);
      v26 = v23 | ((v25[8] < 7u) << 18);
      v24 = *(v22 + 8) & 0x13;
    }

    else
    {
      v26 = v23 | ((v24 < 7) << 18);
      v25 = *(a2 + 72);
    }

    v27 = v26 | ((llvm::Type::getScalarSizeInBits(v25) == 32) << 19);
    if (v24 == 18)
    {
      v28 = ((*(v22 + 32) << 20) + 3145728) & 0x300000;
    }

    else
    {
      v28 = 0;
    }

    v21 = v28 | v27;
  }

  v132 = *(a2 + 80);
  v133 = *(a2 + 88);
  if (*(a2 + 88))
  {
    v29 = 0x400000;
  }

  else
  {
    v29 = 0;
  }

  v134 = *(a2 + 89);
  if (*(a2 + 89))
  {
    v30 = 0x800000;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a2 + 90);
  if (*(a2 + 90))
  {
    v32 = 0x1000000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v29 | v30 | v32;
  if (*(a2 + 48))
  {
    v34 = 0x2000000;
  }

  else
  {
    v34 = 0;
  }

  if (*(a2 + 316))
  {
    v35 = 0x10000000;
  }

  else
  {
    v35 = 0;
  }

  if (a3)
  {
    v36 = 64;
  }

  else
  {
    v36 = 0;
  }

  v135 = v34 & 0xF3FFFFFF | ((*(a2 + 272) & 3) << 26) | v33 | v21 & 0xFFFFFF9F | (32 * (v132 != 0));
  v37 = v35 | v36 | v135;
  if ((v37 & 0x40) != 0)
  {
    v38 = "agc.read_framebuffer.";
  }

  else
  {
    v38 = "agc.write_framebuffer.";
  }

  std::string::basic_string[abi:nn200100]<0>(this, v38);
  if (v15 == 23)
  {
    v124 = std::__throw_bad_optional_access[abi:nn200100]();
    _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(v124, v125, v126, v127);
    return;
  }

  if (v15 <= 0x16)
  {
    std::string::append(this, off_277E20B38[v15]);
  }

  std::to_string(&v137, v16 & 7);
  v39 = std::string::insert(&v137, 0, ".");
  v40 = v39->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v138, ".");
  v42 = v41->__r_.__value_.__r.__words[2];
  v139 = *&v41->__r_.__value_.__l.__data_;
  v140 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v43 = &v139;
  }

  else
  {
    v43 = v139;
  }

  if (v140 >= 0)
  {
    v44 = HIBYTE(v140);
  }

  else
  {
    v44 = *(&v139 + 1);
  }

  std::string::append(this, v43, v44);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v45 = v17 & 7;
  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if ((v17 & 7u) > 3)
  {
    if ((v17 & 7u) > 5)
    {
      if (v45 != 6)
      {
        goto LABEL_76;
      }

      v46 = "A000";
    }

    else if (v45 == 4)
    {
      v46 = "GABR";
    }

    else
    {
      v46 = "GBRA";
    }
  }

  else if ((v17 & 7u) > 1)
  {
    if (v45 == 2)
    {
      v46 = "RABG";
    }

    else
    {
      v46 = "RAGB";
    }
  }

  else if ((v17 & 7) != 0)
  {
    v46 = "BGRA";
  }

  else
  {
    v46 = "RGBA";
  }

  std::string::append(this, v46);
LABEL_76:
  if (v129)
  {
    std::string::append(this, ".gammaCorrection");
  }

  if (v130)
  {
    std::string::append(this, ".packed");
  }

  if ((((~v131 & 0x600000) != 0) & (v131 >> 22)) != 0 || v128)
  {
    std::string::append(this, ".vouchedNoLIBSpilling");
  }

  else
  {
    std::to_string(&v138, 1 << ((v131 >> 10) & 3));
    v47 = std::string::insert(&v138, 0, ".LIBSpilling.");
    v48 = v47->__r_.__value_.__r.__words[2];
    v139 = *&v47->__r_.__value_.__l.__data_;
    v140 = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v49 = &v139;
    }

    else
    {
      v49 = v139;
    }

    if (v140 >= 0)
    {
      v50 = HIBYTE(v140);
    }

    else
    {
      v50 = *(&v139 + 1);
    }

    std::string::append(this, v49, v50);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_113;
  }

  std::string::basic_string[abi:nn200100]<0>(&v137, ".blend(");
  std::to_string(&v136, v18);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v136;
  }

  else
  {
    v51 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v136.__r_.__value_.__l.__size_;
  }

  v53 = std::string::append(&v137, v51, size);
  v54 = v53->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v53->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  v55 = std::string::append(&v138, ")");
  v56 = v55->__r_.__value_.__r.__words[2];
  v139 = *&v55->__r_.__value_.__l.__data_;
  v140 = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v57 = &v139;
  }

  else
  {
    v57 = v139;
  }

  if (v140 >= 0)
  {
    v58 = HIBYTE(v140);
  }

  else
  {
    v58 = *(&v139 + 1);
  }

  std::string::append(this, v57, v58);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_135;
    }
  }

  else
  {
LABEL_113:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_135;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v137, ".logic_op(");
  std::to_string(&v136, (v21 >> 8) & 0x1F);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v136;
  }

  else
  {
    v59 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v136.__r_.__value_.__l.__size_;
  }

  v61 = std::string::append(&v137, v59, v60);
  v62 = v61->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  v63 = std::string::append(&v138, ")");
  v64 = v63->__r_.__value_.__r.__words[2];
  v139 = *&v63->__r_.__value_.__l.__data_;
  v140 = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v65 = &v139;
  }

  else
  {
    v65 = v139;
  }

  if (v140 >= 0)
  {
    v66 = HIBYTE(v140);
  }

  else
  {
    v66 = *(&v139 + 1);
  }

  std::string::append(this, v65, v66);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

LABEL_135:
  std::string::basic_string[abi:nn200100]<0>(&v137, ".color_mask(");
  std::to_string(&v136, (v21 >> 1) & 0xF);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &v136;
  }

  else
  {
    v67 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v68 = v136.__r_.__value_.__l.__size_;
  }

  v69 = std::string::append(&v137, v67, v68);
  v70 = v69->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  v71 = std::string::append(&v138, ")");
  v72 = v71->__r_.__value_.__r.__words[2];
  v139 = *&v71->__r_.__value_.__l.__data_;
  v140 = v72;
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v73 = &v139;
  }

  else
  {
    v73 = v139;
  }

  if (v140 >= 0)
  {
    v74 = HIBYTE(v140);
  }

  else
  {
    v74 = *(&v139 + 1);
  }

  std::string::append(this, v73, v74);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(this, (v21 >> 13) & 1, (v21 >> 14) & 1, (v21 >> 15) & 3);
  if ((v37 & 0x20040) == 0x20000)
  {
    _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(this, (v21 >> 18) & 1, (v21 >> 19) & 1, v21 >> 20);
  }

  if (v132)
  {
    std::string::append(this, ".discard");
  }

  if (v133)
  {
    std::string::append(this, ".undef");
  }

  if (!v134)
  {
    if (!v31)
    {
      goto LABEL_163;
    }

LABEL_266:
    std::string::append(this, ".fast_math");
    if ((v135 & 0x2000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  std::string::append(this, ".gl");
  if (v31)
  {
    goto LABEL_266;
  }

LABEL_163:
  if ((v135 & 0x2000000) != 0)
  {
LABEL_164:
    std::string::append(this, ".null");
  }

LABEL_165:
  std::to_string(&v137, (v135 >> 26) & 3);
  v75 = std::string::insert(&v137, 0, ".rtz(");
  v76 = v75->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  v77 = std::string::append(&v138, ")");
  v78 = v77->__r_.__value_.__r.__words[2];
  v139 = *&v77->__r_.__value_.__l.__data_;
  v140 = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v79 = &v139;
  }

  else
  {
    v79 = v139;
  }

  if (v140 >= 0)
  {
    v80 = HIBYTE(v140);
  }

  else
  {
    v80 = *(&v139 + 1);
  }

  std::string::append(this, v79, v80);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (v131 >> 28)
  {
    std::string::append(this, ".slabs");
  }

  if ((v37 & 0x10000000) != 0)
  {
    std::to_string(&v137, 1 << (BYTE1(v131) & 3));
    v81 = std::string::insert(&v137, 0, ".fixed_sample_count(");
    v82 = v81->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v81->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    v83 = std::string::append(&v138, ")");
    v84 = v83->__r_.__value_.__r.__words[2];
    v139 = *&v83->__r_.__value_.__l.__data_;
    v140 = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v85 = &v139;
    }

    else
    {
      v85 = v139;
    }

    if (v140 >= 0)
    {
      v86 = HIBYTE(v140);
    }

    else
    {
      v86 = *(&v139 + 1);
    }

    std::string::append(this, v85, v86);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  v87 = *(a2 + 308);
  if ((v87 & 0x100000000) != 0)
  {
    std::to_string(&v137, v87);
    v88 = std::string::insert(&v137, 0, ".raster_order_group(");
    v89 = v88->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = std::string::append(&v138, ")");
    v91 = v90->__r_.__value_.__r.__words[2];
    v139 = *&v90->__r_.__value_.__l.__data_;
    v140 = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v92 = &v139;
    }

    else
    {
      v92 = v139;
    }

    if (v140 >= 0)
    {
      v93 = HIBYTE(v140);
    }

    else
    {
      v93 = *(&v139 + 1);
    }

    std::string::append(this, v92, v93);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  v94 = *(a2 + 280);
  if (v94)
  {
    v95 = (v94 + 24);
    if (*(v94 + 32) >= 0x41u)
    {
      v95 = *v95;
    }

    std::to_string(&v137, *v95);
    v96 = std::string::insert(&v137, 0, ".lib_size(");
    v97 = v96->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v96->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    v98 = std::string::append(&v138, ")");
    v99 = v98->__r_.__value_.__r.__words[2];
    v139 = *&v98->__r_.__value_.__l.__data_;
    v140 = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v100 = &v139;
    }

    else
    {
      v100 = v139;
    }

    if (v140 >= 0)
    {
      v101 = HIBYTE(v140);
    }

    else
    {
      v101 = *(&v139 + 1);
    }

    std::string::append(this, v100, v101);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  v102 = *(a2 + 288);
  if (v102)
  {
    v103 = (v102 + 24);
    if (*(v102 + 32) >= 0x41u)
    {
      v103 = *v103;
    }

    std::to_string(&v137, *v103);
    v104 = std::string::insert(&v137, 0, ".lib_offset(");
    v105 = v104->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v104->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v105;
    v104->__r_.__value_.__l.__size_ = 0;
    v104->__r_.__value_.__r.__words[2] = 0;
    v104->__r_.__value_.__r.__words[0] = 0;
    v106 = std::string::append(&v138, ")");
    v107 = v106->__r_.__value_.__r.__words[2];
    v139 = *&v106->__r_.__value_.__l.__data_;
    v140 = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v108 = &v139;
    }

    else
    {
      v108 = v139;
    }

    if (v140 >= 0)
    {
      v109 = HIBYTE(v140);
    }

    else
    {
      v109 = *(&v139 + 1);
    }

    std::string::append(this, v108, v109);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 304) == 1)
  {
    v110 = *(a2 + 296);
    if (v110)
    {
      v111 = (v110 + 24);
      if (*(v110 + 32) >= 0x41u)
      {
        v111 = *v111;
      }

      std::to_string(&v137, *v111);
      v112 = std::string::insert(&v137, 0, ".slab_index(");
      v113 = v112->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = *&v112->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v113;
      v112->__r_.__value_.__l.__size_ = 0;
      v112->__r_.__value_.__r.__words[2] = 0;
      v112->__r_.__value_.__r.__words[0] = 0;
      v114 = std::string::append(&v138, ")");
      v115 = v114->__r_.__value_.__r.__words[2];
      v139 = *&v114->__r_.__value_.__l.__data_;
      v140 = v115;
      v114->__r_.__value_.__l.__size_ = 0;
      v114->__r_.__value_.__r.__words[2] = 0;
      v114->__r_.__value_.__r.__words[0] = 0;
      if (v140 >= 0)
      {
        v116 = &v139;
      }

      else
      {
        v116 = v139;
      }

      if (v140 >= 0)
      {
        v117 = HIBYTE(v140);
      }

      else
      {
        v117 = *(&v139 + 1);
      }

      std::string::append(this, v116, v117);
      if (SHIBYTE(v140) < 0)
      {
        operator delete(v139);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 316) == 1)
  {
    std::to_string(&v137, *(a2 + 320));
    v118 = std::string::insert(&v137, 0, ".fixed_sample_count(");
    v119 = v118->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v118->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v119;
    v118->__r_.__value_.__l.__size_ = 0;
    v118->__r_.__value_.__r.__words[2] = 0;
    v118->__r_.__value_.__r.__words[0] = 0;
    v120 = std::string::append(&v138, ")");
    v121 = v120->__r_.__value_.__r.__words[2];
    v139 = *&v120->__r_.__value_.__l.__data_;
    v140 = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v122 = &v139;
    }

    else
    {
      v122 = v139;
    }

    if (v140 >= 0)
    {
      v123 = HIBYTE(v140);
    }

    else
    {
      v123 = *(&v139 + 1);
    }

    std::string::append(this, v122, v123);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }
}