uint64_t llvm::IRBuilderBase::CreateSub(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 72))(*(this + 9));
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

llvm::Value *AGCLLVMUserVertexShader::replaceOutputUses(uint64_t *a1, unsigned __int8 *a2, llvm::Value *a3, int a4, int a5, unsigned int a6)
{
  v8 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v10 = **(v10 + 2);
  }

  v11 = (a1 + *(*a1 - 24));
  v12 = v10 == v11[234] || v10 == v11[232];
  if (a4 > 2)
  {
    v13 = 1520;
    if (a5)
    {
      v13 = 1576;
    }

    v14 = 1528;
    if (a5)
    {
      v14 = 1584;
    }

    v16 = 1536;
    if (a5)
    {
      v16 = 1592;
    }

    if (a4 != 4)
    {
      v14 = v16;
    }

    v15 = a4 == 3;
    goto LABEL_23;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v13 = 1488;
      if (v12)
      {
        v13 = 1496;
      }

      v14 = 1544;
      if (v12)
      {
        v14 = 1552;
      }

      v15 = a5 == 0;
LABEL_23:
      if (!v15)
      {
        v13 = v14;
      }

      goto LABEL_30;
    }

    v17 = a5 == 0;
    v13 = 1512;
    v18 = 1568;
  }

  else
  {
    v17 = a5 == 0;
    v13 = 1504;
    v18 = 1560;
  }

  if (!v17)
  {
    v13 = v18;
  }

LABEL_30:
  v19 = *(v11[271] + v13);
  v15 = !v12;
  v20 = 238;
  if (!v15)
  {
    v20 = 234;
  }

  v21 = v11[v20];
  if (v19)
  {
    v22 = strlen(*(v11[271] + v13));
  }

  else
  {
    v22 = 0;
  }

  v64 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v11 + 213), v19, v22, v11[231], v11[573], v21);
  v23 = *v8;
  if (*v8 && *(v23 + 8) == 18)
  {
    v24 = *(v23 + 32);
    if (v24 >= a6)
    {
      v25 = a6;
    }

    else
    {
      v25 = v24;
    }

    *v72 = 0u;
    v73 = 0u;
    v26 = v8[16];
    v27 = a1 + *(*a1 - 24);
    if (v26 < 0x15 || (v26 & 0xFE) == 0x5A)
    {
      AGCLLVMBuilder::unboxVector((v27 + 1704), v8, v72);
      if (!v25)
      {
LABEL_57:
        result = EraseInstructionChain(v8);
        goto LABEL_58;
      }

      v41 = v72;
      v42 = v25;
      do
      {
        *v41 = AGCLLVMBuilder::extendFromSmall((a1 + *(*a1 - 24) + 1704), *v41, v10, 1);
        ++v41;
        --v42;
      }

      while (v42);
    }

    else
    {
      v8 = AGCLLVMBuilder::extendFromSmall((v27 + 1704), v8, v10, 1);
      AGCLLVMBuilder::unboxVector((a1 + *(*a1 - 24) + 1704), v8, v72);
    }

    if (v25)
    {
      v43 = 0;
      v44 = a1 + 214;
      v62 = a1 + 238;
      v63 = a3;
      v61 = v8;
      do
      {
        Select = v72[v43];
        v46 = *a1;
        v47 = (a1 + *(*a1 - 24));
        if (v10 == v47[234] && *(a1 + 5277) == 1)
        {
          v48 = v47[238];
          v68 = 257;
          Cast = llvm::IRBuilderBase::CreateCast((v47 + 214), 49, Select, v48, v67);
          v50 = *(v62 + *(*a1 - 24));
          v51 = llvm::ConstantInt::get();
          v71 = 257;
          v52 = llvm::IRBuilderBase::CreateAnd((v47 + 214), Cast, v51, &Add);
          v53 = *(v62 + *(*a1 - 24));
          v54 = llvm::ConstantInt::get();
          v66 = 257;
          llvm::IRBuilderBase::CreateICmp(v47 + 214, 34, v52, v54, v65);
          v55 = *(a1 + *(*a1 - 24) + 1872);
          llvm::ConstantFP::get();
          a3 = v63;
          Select = llvm::IRBuilderBase::CreateSelect();
          v46 = *a1;
        }

        v56 = *(a1 + *(v46 - 24) + 4584);
        v57 = llvm::ConstantInt::get();
        v58 = *(*a1 - 24);
        v68 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v44 + v58), a3, v57, v67);
        v70 = Select;
        v59 = *(*a1 - 24);
        v68 = 257;
        llvm::IRBuilderBase::CreateCall(v44 + v59, *(v64 + 24), v64, &Add, 2, v67);
        ++v43;
      }

      while (v25 != v43);
      v8 = v61;
    }

    goto LABEL_57;
  }

  v28 = AGCLLVMBuilder::extendFromSmall((a1 + *(*a1 - 24) + 1704), v8, v10, 1);
  v29 = *a1;
  v30 = (a1 + *(*a1 - 24));
  if (v10 == v30[234] && *(a1 + 5277) == 1)
  {
    v31 = v30[238];
    v68 = 257;
    v32 = llvm::IRBuilderBase::CreateCast((v30 + 214), 49, v28, v31, v67);
    v33 = *(a1 + *(*a1 - 24) + 1904);
    v34 = llvm::ConstantInt::get();
    v71 = 257;
    v35 = llvm::IRBuilderBase::CreateAnd((v30 + 214), v32, v34, &Add);
    v36 = *(a1 + *(*a1 - 24) + 1904);
    v37 = llvm::ConstantInt::get();
    v66 = 257;
    llvm::IRBuilderBase::CreateICmp(v30 + 214, 34, v35, v37, v65);
    v38 = *(a1 + *(*a1 - 24) + 1872);
    llvm::ConstantFP::get();
    v28 = llvm::IRBuilderBase::CreateSelect();
    v29 = *a1;
  }

  Add = a3;
  v70 = v28;
  v39 = a1 + *(v29 - 24);
  v68 = 257;
  result = llvm::IRBuilderBase::CreateCall(v39 + 1712, *(v64 + 24), v64, &Add, 2, v67);
LABEL_58:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMBuilder::extendFromSmall(llvm::Type **this, llvm::Value *a2, llvm::Type *a3, int a4)
{
  v5 = a2;
  v7 = *a2;
  if (this[19] == a3)
  {
    v8 = 21;
  }

  else
  {
    if (this[24] != a3 && this[23] != a3 && this[22] != a3)
    {
      return v5;
    }

    v8 = 25;
  }

  v9 = this[v8];
  if ((*(v7 + 8) & 0xFE) == 0x12)
  {
    v10 = *(v7 + 32);
    v9 = llvm::FixedVectorType::get();
  }

  if ((*(v9 + 8) & 0xFE) == 0x12)
  {
    v11 = *(**(v9 + 16) + 8);
  }

  else
  {
    v11 = *(v9 + 8);
  }

  if (v11 > 6)
  {
    v16 = 257;
    if (a4)
    {
      v13 = 40;
    }

    else
    {
      v13 = 39;
    }

    return llvm::IRBuilderBase::CreateCast((this + 1), v13, v5, v9, v15);
  }

  else
  {
    v16 = 257;
    return llvm::IRBuilderBase::CreateFPExt((this + 1), v5, v9, v15);
  }
}

uint64_t AGCLLVMUserVertexShader::markInvariantOutputs(AGCLLVMUserVertexShader *this, const char *a2)
{
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_POS_INVARIANCE", a2))
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    v5 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_POS_INVARIANCE", v3)) != 0 && *Value != 48 && atoi(Value) != 0;
    *(this + 5273) = v5;
  }

  if ((*(this + 5272) & 1) != 0 || ((*(this + 5273) & 1) != 0 || *(this + 5275) == 1) && *(this + 32) == 1)
  {
    v6 = this + *(*this - 24);
    v7 = *(v6 + 267);
    v8 = *(v6 + 271);
    if (*(v8 + 1504))
    {
      v9 = strlen(*(v8 + 1504));
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      if (*(this + 32) == 1 && (*(this + 5275) != 1 || *(this + 5273) == 1))
      {
        v11 = *(this + 5274);
      }

      else
      {
        v11 = 0;
      }

      v12 = *this;
      v13 = *(this + *(*this - 24) + 2136);
      __p = 0;
      v29 = 0;
      v32[0] = 0;
      v32[1] = 0;
      v30 = 0;
      v31 = v32;
      v32[2] = v13;
      v33 = v11 & 1;
      v14 = *(Function + 8);
      if (v14)
      {
        do
        {
          v15 = (*(v14 + 24) - 32 * (*(*(v14 + 24) + 20) & 0x7FFFFFF));
          v16 = (*v15 + 24);
          if (*(*v15 + 8) >= 0x41u)
          {
            v16 = *v16;
          }

          if ((*v16 & 0xFFFFFFFC) == 0)
          {
            MarkInvariants::addSeed(&__p, v15[4], 0);
          }

          v14 = *(v14 + 8);
        }

        while (v14);
        v12 = *this;
      }

      if ((MarkInvariants::markInvariant(&__p, (this + *(v12 - 24) + 1704)) & 1) == 0)
      {
        v18 = *(this + *(*this - 24) + 2136);
        v19 = v18 + 24;
        for (i = *(v18 + 32); i != v19; i = *(i + 8))
        {
          v21 = i - 56;
          if (!i)
          {
            v21 = 0;
          }

          v22 = v21 + 72;
          v23 = *(v21 + 80);
          if (v23 == v21 + 72)
          {
            v25 = 0;
          }

          else
          {
            do
            {
              v24 = v23 - 24;
              if (!v23)
              {
                v24 = 0;
              }

              v25 = *(v24 + 48);
              if (v25 != v24 + 40)
              {
                break;
              }

              v23 = *(v23 + 8);
            }

            while (v23 != v22);
          }

          while (v23 != v22)
          {
            if (v25)
            {
              v26 = (v25 - 24);
            }

            else
            {
              v26 = 0;
            }

            if (llvm::FPMathOperator::classof(v26))
            {
              llvm::Instruction::setFast(v26);
            }

            v25 = *(v25 + 8);
            v27 = v23 - 24;
            if (!v23)
            {
              v27 = 0;
            }

            while (v25 == v27 + 40)
            {
              v23 = *(v23 + 8);
              if (v23 == v22)
              {
                break;
              }

              v27 = v23 - 24;
              if (!v23)
              {
                v27 = 0;
              }

              v25 = *(v27 + 48);
            }
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v32[0]);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a2, a3);
  v8 = *(a3 + 24);
  v9 = *(a3 + 47);
  v10 = *(a4 + 47);
  if (v10 >= 0)
  {
    v11 = *(a4 + 47);
  }

  else
  {
    v11 = *(a4 + 32);
  }

  if (v10 >= 0)
  {
    v12 = (a4 + 24);
  }

  else
  {
    v12 = *(a4 + 24);
  }

  if (v9 >= 0)
  {
    v13 = *(a3 + 47);
  }

  else
  {
    v13 = *(a3 + 32);
  }

  if (v9 >= 0)
  {
    v14 = (a3 + 24);
  }

  else
  {
    v14 = *(a3 + 24);
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v12, v14, v15);
  v18 = v11 < v13;
  if (v16)
  {
    v18 = v16 < 0;
  }

  if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a3, a4);
    v19 = *(a2 + 24);
    v20 = *(a2 + 47);
    v21 = *(a3 + 47);
    if (v21 >= 0)
    {
      v22 = *(a3 + 47);
    }

    else
    {
      v22 = *(a3 + 32);
    }

    if (v21 >= 0)
    {
      v23 = (a3 + 24);
    }

    else
    {
      v23 = *(a3 + 24);
    }

    if (v20 >= 0)
    {
      v24 = *(a2 + 47);
    }

    else
    {
      v24 = *(a2 + 32);
    }

    if (v20 >= 0)
    {
      v25 = (a2 + 24);
    }

    else
    {
      v25 = *(a2 + 24);
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a2, a3);
      v29 = *(a1 + 47);
      v30 = *(a2 + 47);
      if (v30 >= 0)
      {
        v31 = *(a2 + 47);
      }

      else
      {
        v31 = *(a2 + 32);
      }

      if (v30 >= 0)
      {
        v32 = (a2 + 24);
      }

      else
      {
        v32 = *(a2 + 24);
      }

      if (v29 >= 0)
      {
        v33 = *(a1 + 47);
      }

      else
      {
        v33 = *(a1 + 32);
      }

      if (v29 >= 0)
      {
        v34 = (a1 + 24);
      }

      else
      {
        v34 = *(a1 + 24);
      }

      if (v33 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v33;
      }

      v36 = memcmp(v32, v34, v35);
      v37 = v31 < v33;
      if (v36)
      {
        v37 = v36 < 0;
      }

      if (v37)
      {

        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(__int128 *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v12 = *(a1 + 4);
  v3 = *(a1 + 3);
  *v10 = *(a1 + 4);
  *&v10[7] = *(a1 + 39);
  v4 = *(a1 + 47);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 3) = 0;
  v9 = a1[3];
  v5 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 4) = v5;
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 5) = v6;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  a1[3] = a2[3];
  *a2 = v11;
  *(a2 + 4) = v12;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v3;
  *(a2 + 4) = *v10;
  *(a2 + 39) = *&v10[7];
  *(a2 + 47) = v4;
  result = v9;
  a2[3] = v9;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL AGCLLVMAGPVertexShaderRegular::constructReply(AGCLLVMAGPVertexShaderRegular *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    v5 = AGCLLVMAGPVertexShader::constructMTLVertexInfo(this);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v6 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v6 + 4288), v4);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((v6 + 4288), v5);
    v9 = *(*this - 24);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    flatbuffers::FlatBufferBuilder::Finish((this + v9 + 4288), v10, v11);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));

    return AGCLLVMAGPVertexShader::validateReply(this);
  }

  return result;
}

BOOL AGCLLVMAGPVertexShaderGen4::constructReply(AGCLLVMAGPVertexShaderGen4 *this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::constructReply(this);
  if (v2)
  {
    v3 = this + *(*this - 24);
    v18 = *(this + 5249);
    v4 = *(this + 5250);
    v5 = *(this + 5308);
    v6 = *(this + 5309);
    v7 = *(this + 5310);
    v8 = *(this + 5311);
    v3[4454] = 1;
    v9 = *(v3 + 1106);
    v10 = *(v3 + 1104) - *(v3 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 548, 14, v8, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 548, 12, v7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 548, 10, v6, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 548, 8, v5, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 548, 6, v4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 548, 4, v18, 0);
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4384), v10 + v9);
    v12 = this + *(*this - 24);
    v12[4454] = 1;
    v13 = *(v12 + 1106);
    v14 = *(v12 + 1104) - *(v12 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v12 + 4384), v11);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4384), v14 + v13);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4384), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

uint64_t AGCLLVMUserVertexShader::constructFlatReply(AGCLLVMUserVertexShader *this)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(*(this + *(*this - 24) + 2168) + 1849))
  {
    if (*(this + 1352))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }
  }

  else if (*(this + 1352))
  {
    v2 = 0;
    do
    {
      v3 = *(this + v2 + 668);
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v3 + 8);
        v6 = *v5;
        if (v4 <= 1)
        {
          i = 1;
        }

        else
        {
          for (i = 1; i != v4; ++i)
          {
            if (v6 + i != v5[i])
            {
              goto LABEL_13;
            }
          }

          i = *v3;
        }

LABEL_13:
        v8 = this + *(*this - 24);
        v8[4358] = 1;
        v9 = *(v8 + 1082);
        v10 = *(v8 + 1080) - *(v8 + 1084);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 4, i);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 6, v6);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 8, v2);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 10, 0);
        flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v10 + v9);
        operator new();
      }

      ++v2;
    }

    while (v2 < *(this + 1352));
  }

  v39 = this + 4096;
  v11 = *(this + 5096);
  __p = 0;
  v42 = 0u;
  v43[0] = v44;
  v43[1] = 0x800000000;
  v44[64] = 0x1FFFFFFFFLL;
  v45 = v11;
  v52[7] = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  memset(v52, 0, 26);
  v53 = 1;
  if (*(this + 1142))
  {
    v12 = *(this + 570);
    do
    {
      GenericVaryingAllocator::addVarying(&__p, v12);
      v12 += 64;
    }

    while (v12 < *(this + 570) + (*(this + 1142) << 6));
  }

  GenericVaryingAllocator::allocate(&__p, *(this + *(*this - 24) + 2168));
  GenericVaryingAllocator::serialize(&__p, (this + *(*this - 24) + 4288));
  if (v42 == __p)
  {
    v13 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v13 = __p;
  }

  v37 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v13, (v42 - __p) >> 2);
  v14 = this + *(*this - 24);
  v14[4358] = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((v14 + 4288), 0, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((v14 + 4288), 0, 4uLL);
  v14[4358] = 0;
  v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v14 + 4288), 0);
  v35 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((this + *(*this - 24) + 4288), &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t, 0);
  v15 = this + *(*this - 24);
  v15[4358] = 1;
  v16 = *(v15 + 1082);
  v17 = *(v15 + 1080) - *(v15 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 4, v49);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 6, SDWORD1(v49));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 8, DWORD2(v49) + *(this + 1311));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 16, SDWORD1(v50));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 10, SDWORD2(v47));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 12, SHIDWORD(v47));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 14, v48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 18, SHIDWORD(v48));
  v18 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v17 + v16);
  v19 = this + *(*this - 24);
  v20 = *(v19 + 1080);
  v19[4358] = 1;
  v21 = *(v19 + 1082);
  v22 = v20 - *(v19 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 4, v52[0]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 6, v52[1]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 8, v52[2]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 16, v52[5]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 10, SDWORD2(v50));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 12, SHIDWORD(v50));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 14, v51);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 18, SHIDWORD(v51));
  v23 = flatbuffers::FlatBufferBuilder::EndTable((v19 + 4288), v22 + v21);
  v24 = *this;
  v25 = this + *(*this - 24);
  v25[4358] = 1;
  v26 = *(v25 + 1080);
  v27 = *(v25 + 1084);
  v28 = *(v25 + 1082);
  v29 = (*(v24 + 560))(this);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v25 + 4288), v29);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v25 + 536, 6, v53, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v25 + 536, 8, v39[1152], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 536, 10, *(this + 1313));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 536, 12, *(this + 1314));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 536, 14, *(this + 1315));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 16, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 18, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v25 + 536, 20, LOBYTE(v52[6]), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 22, v37);
  if (v36)
  {
    flatbuffers::FlatBufferBuilder::Align((v25 + 4288), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 536, 24, *(v25 + 1080) - *(v25 + 1084) + *(v25 + 1082) - v36 + 4);
  }

  v30 = v26 - v27;
  v31 = *(this + 1352);
  if (v31)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 536, 26, v31);
    if (*(*(this + *(*this - 24) + 2168) + 1849) == 1)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 28, v35);
    }
  }

  v32 = flatbuffers::FlatBufferBuilder::EndTable((v25 + 4288), v30 + v28);
  v40 = &v46;
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v40);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(v43);
  if (__p)
  {
    *&v42 = __p;
    operator delete(__p);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t AGCLLVMAGPVertexShader::constructMTLVertexInfo(AGCLLVMAGPVertexShader *this)
{
  v2 = *this;
  v3 = this + *(*this - 24);
  if (*(v3 + 334))
  {
    v4 = v3 + 2672;
    v5 = *(v3 + 335);
    v6 = v3 + 3232;
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = v3 + 3232;
  }

  v8 = *v6;
  v7 = *(v6 + 1);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && (v10 = *v8, v80 = (v8 + v10), v11 = (v8 + v10 - *(v8 + v10)), *v11 >= 5u) && (v12 = v11[2], v12) && (v13 = *(v80 + v12), *(v80 + v12 + v13)))
  {
    v79 = 0;
    v81 = 0;
    v14 = 0;
    v15 = v8 + v10 + 8;
    do
    {
      v16 = v12;
      v17 = v13 + v12;
      v18 = *(v15 + v17 - 4);
      v19 = v17 + v18;
      v20 = v15 + v17 + v18;
      v21 = *(v20 - 4);
      v22 = *(v15 + v19 - v21 - 4);
      if (v22 >= 0xB && (v23 = v16 + v13 + v18, *(v15 + v23 - v21 + 6)))
      {
        v24 = *(v15 + v23 + *(v15 + v23 - v21 + 6) - 4);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(this + 2460);
      v26 = v24 - v25;
      if (v24 >= v25)
      {
        v31 = this + *(*this - 24);
        v31[4358] = 1;
        if (v22 >= 5 && (v32 = v16 + v13 + v18, (v33 = *(v15 + v32 - v21)) != 0))
        {
          v34 = *(v15 + v32 + v33 - 4);
        }

        else
        {
          v34 = 0;
        }

        v40 = *(v31 + 1082);
        v41 = *(v31 + 1080) - *(v31 + 1084);
        v42 = *(this + 1295);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v31 + 536, 4, v34);
        flatbuffers::FlatBufferBuilder::AddElement<signed char>(v31 + 536, 6, *(v42 + 8 * v26 + 4));
        v43 = flatbuffers::FlatBufferBuilder::EndTable((v31 + 4288), v41 + v40);
        v49 = v81;
        v50 = v81 >> 2;
        if (((v81 >> 2) + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v81 >> 2 != -1)
        {
          if (!(((v81 >> 2) + 1) >> 62))
          {
            operator new();
          }

LABEL_67:
          std::string::__throw_length_error[abi:nn200100]();
        }

        *(4 * v50) = v43;
        v81 = 4 * v50 + 4;
        memcpy(0, 0, v49);
      }

      else
      {
        v27 = this + *(*this - 24);
        v27[4358] = 1;
        if (v22 >= 5 && (v28 = v16 + v13 + v18, (v29 = *(v15 + v28 - v21)) != 0))
        {
          v30 = *(v15 + v28 + v29 - 4);
        }

        else
        {
          v30 = 0;
        }

        v76 = *(v27 + 1084);
        v77 = *(v27 + 1080);
        v78 = *(v27 + 1082);
        v35 = *(this + 1229) + 32 * v24;
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 4, v30);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 6, *(v35 + 4));
        flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v27 + 536, 8, *(v35 + 8), 0);
        v36 = v16 + v13 + v18;
        v37 = v15 + v36 - *(v20 - 4);
        if (*(v37 - 4) >= 7u && (v38 = *(v37 + 2)) != 0)
        {
          v39 = *(v15 + v16 + v13 + v18 + v38 - 4);
        }

        else
        {
          v39 = 0;
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 10, v39);
        v44 = *(v20 - 4);
        if (*(v15 + v36 - v44 - 4) >= 9u && (v45 = v16 + v13 + v18, (v46 = *(v15 + v45 - v44 + 4)) != 0))
        {
          v47 = *(v15 + v45 + v46 - 4);
        }

        else
        {
          v47 = 0;
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 12, v47);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 14, *(v35 + 20));
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 16, *(v35 + 24));
        flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v27 + 536, 18, *(v35 + 28), 0);
        v48 = flatbuffers::FlatBufferBuilder::EndTable((v27 + 4288), v77 - v76 + v78);
        v51 = v79;
        v52 = v79 >> 2;
        if (((v79 >> 2) + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v79 >> 2 != -1)
        {
          if (!(((v79 >> 2) + 1) >> 62))
          {
            operator new();
          }

          goto LABEL_67;
        }

        *(4 * v52) = v48;
        v79 = 4 * v52 + 4;
        memcpy(0, 0, v51);
      }

      ++v14;
      v12 = *(v80 - *v80 + 4);
      v13 = *(v80 + v12);
      v15 += 4;
    }

    while (v14 < *(v80 + v12 + v13));
    v2 = *this;
    v53 = v79;
  }

  else
  {
    v81 = 0;
    v53 = 0;
  }

  v54 = this + *(v2 - 24);
  v55 = v53;
  v54[4358] = 1;
  v56 = v53;
  flatbuffers::FlatBufferBuilder::PreAlign((v54 + 4288), v53, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((v54 + 4288), v55, 4uLL);
  v57 = v56;
  if (v56)
  {
    v58 = 0;
  }

  else
  {
    v58 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::MTLVertexAttribInput>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::MTLVertexAttribInput>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::MTLVertexAttribInput>> const&)::t;
  }

  if (v56)
  {
    v59 = v56 >> 2;
    v60 = v58 - 4;
    do
    {
      v61 = v59 - 1;
      v62 = *&v60[4 * v59];
      flatbuffers::FlatBufferBuilder::Align((v54 + 4288), 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), *(v54 + 1080) - *(v54 + 1084) + *(v54 + 1082) - v62 + 4);
      v59 = v61;
    }

    while (v61);
  }

  v54[4358] = 0;
  v63 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), v57 >> 2);
  v64 = this + *(*this - 24);
  v64[4358] = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((v64 + 4288), v81, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((v64 + 4288), v81, 4uLL);
  if (v81)
  {
    v65 = 0;
  }

  else
  {
    v65 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::MTLVertexBuiltin>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::MTLVertexBuiltin>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::MTLVertexBuiltin>> const&)::t;
  }

  if (v81)
  {
    v66 = v81 >> 2;
    v67 = v65 - 4;
    do
    {
      v68 = v66 - 1;
      v69 = *&v67[4 * v66];
      flatbuffers::FlatBufferBuilder::Align((v64 + 4288), 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v64 + 4288), *(v64 + 1080) - *(v64 + 1084) + *(v64 + 1082) - v69 + 4);
      v66 = v68;
    }

    while (v68);
  }

  v64[4358] = 0;
  v70 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v64 + 4288), v81 >> 2);
  v71 = this + *(*this - 24);
  v71[4358] = 1;
  v72 = *(v71 + 1080);
  v73 = *(v71 + 1084);
  v74 = *(v71 + 1082);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v71 + 536, 4, *(this + 1310));
  if (v63)
  {
    flatbuffers::FlatBufferBuilder::Align((v71 + 4288), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v71 + 536, 6, *(v71 + 1080) - *(v71 + 1084) + *(v71 + 1082) - v63 + 4);
  }

  if (v70)
  {
    flatbuffers::FlatBufferBuilder::Align((v71 + 4288), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v71 + 536, 8, *(v71 + 1080) - *(v71 + 1084) + *(v71 + 1082) - v70 + 4);
  }

  return flatbuffers::FlatBufferBuilder::EndTable((v71 + 4288), v72 - v73 + v74);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 12, v4);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 6, v4);
  }

  return result;
}

BOOL AGCLLVMAGPVertexShader::validateReply(AGCLLVMAGPVertexShader *this)
{
  v1 = this + *(*this - 24);
  if (*(v1 + 314))
  {
    v2 = v1 + 2512;
    v3 = *(v1 + 315);
    v4 = v1 + 3072;
    if (v3)
    {
      v4 = v2;
    }
  }

  else
  {
    v4 = v1 + 3072;
  }

  v5 = (*v4 + **v4);
  v6 = (v5 + *(v5 - *v5 + 4));
  v7 = (v6 + *v6 + *(v6 + *v6 - *(v6 + *v6) + 8));
  return *(v7 + *v7) < 0x21;
}

uint64_t AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>(AGCTargetPrinter **a1, _DWORD *a2)
{
  result = AGCLLVMObjectBase::dumpShaderToFile(a1);
  if (result)
  {
    if (a2[8] - a2[12] + a2[10])
    {
      flatbuffers::IDLOptions::IDLOptions(&v4);
      flatbuffers::Parser::Parser(v5, &v4);
    }
  }

  return result;
}

void virtual thunk toAGCLLVMAGPVertexShaderGen4::~AGCLLVMAGPVertexShaderGen4(AGCLLVMAGPVertexShaderGen4 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_282570FE8;
  v1[1307] = off_282571368;
  v1[1520] = &off_282571478;
  v2 = v1[1295];
  if (v2 != v1 + 1297)
  {
    free(v2);
  }

  v3 = v1[1229];
  if (v3 != v1 + 1231)
  {
    free(v3);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v1 + 1224));
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282562CB0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_282570FE8;
  v1[1307] = off_282571368;
  v1[1520] = &off_282571478;
  v2 = v1[1295];
  if (v2 != v1 + 1297)
  {
    free(v2);
  }

  v3 = v1[1229];
  if (v3 != v1 + 1231)
  {
    free(v3);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v1 + 1224));
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282562CB0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));
}

void AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(AGCLLVMUserVertexShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[7];
  *(this + *(*this - 24) + 1704) = a2[8];
  for (i = 668; i != 672; ++i)
  {
    v6 = *(this + i);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        MEMORY[0x20F331DA0](v7, 0x1000C8052888210);
      }

      MEMORY[0x20F331DC0](v6, 0x1010C4082113244);
    }
  }

  v8 = (this + 9688);
  v9 = -3432;
  do
  {
    v10 = *(v8 + 2);
    if (v10 != -8192 && v10 != -4096 && v10 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v8);
    }

    v8 = (v8 - 24);
    v9 += 24;
  }

  while (v9);
  v12 = *(this + 665);
  if (v12)
  {
    v13 = *(this + 666);
    v14 = *(this + 665);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        if (v15 != -8192 && v15 != -4096 && v15 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v13 - 24));
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = *(this + 665);
    }

    *(this + 666) = v12;
    operator delete(v14);
  }

  v18 = (this + 5104);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v18);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4560);
  v17 = *(this + 567);
  if (v17)
  {
    *(this + 568) = v17;
    operator delete(v17);
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 1);
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  GenericVarying::getComponentSemantic(&__p, String, v14, a7);
  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), *(*(a2 + 16) + 8 * a3), &v21);
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

  GenericVaryingInfo = AGCLLVMAGPVertexShader::getGenericVaryingInfo(a1, ComponentType, 1, p_p, size, a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return GenericVaryingInfo;
}

void GenericVarying::getComponentSemantic(std::string *a1, void *a2, size_t a3, unsigned int a4)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "xyzw");
  if (a2)
  {
    std::string::basic_string[abi:nn200100](&__dst, a2, a3);
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v8 = std::string::append(&__dst, ".agc_comp.");
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = __p;
  if (v14 < 0)
  {
    v10 = __p[0];
  }

  std::string::push_back(&v12, *(v10 + a4));
  *a1 = v12;
  memset(&v12, 0, sizeof(v12));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t AGCLLVMAGPVertexShader::buildBackendRequest(AGCLLVMAGPVertexShader *this, llvm::AGX::CompileRequest *a2)
{
  if (*(this + 2460))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(this + 1229) + v4);
      v7 = *v6;
      v8 = v6[3];
      v9 = v6[4];
      llvm::AGX::CompileRequest::addDMAListEntry(a2);
      ++v5;
      v4 += 32;
    }

    while (v5 < *(this + 2460));
  }

  v10 = *(this + *(*this - 24) + 2168);
  result = (*(*v10 + 472))(v10);
  if (!result && *(this + 2592))
  {
    v12 = 0;
    v13 = 0;
    v14 = *(this + 2460);
    do
    {
      v15 = *(*(this + 1295) + v12);
      result = llvm::AGX::CompileRequest::addDMAListEntry(a2);
      ++v13;
      ++v14;
      v12 += 8;
    }

    while (v13 < *(this + 2592));
  }

  return result;
}

uint64_t GLCompilerCreate(void *__src, size_t __len)
{
  v2 = std::string::basic_string[abi:nn200100](&__dst, __src, __len);
  Internal = AGCCodeGenServiceCreateInternal(v2);
  if (v6 < 0)
  {
    operator delete(__dst);
  }

  return Internal;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t a3)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (a3 <= v6 - v5)
  {
    if (a3)
    {
      memcpy(v5, a2, a3);
      *(this + 4) += a3;
    }

    return this;
  }

  else
  {

    return llvm::raw_ostream::write(this, a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1)
{
  v1 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&AGCEnv::getEnvLookup(void)::envlookup, &v3, a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void *std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x20F331B70](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    ++v6;
    std::string::push_back(a2, v7);
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

std::string *AGCEnv::trim(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  if (v2 >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v6 = MEMORY[0x277D85DE0];
  if (size)
  {
    v7 = (v4 + size);
    do
    {
      v8 = v4->__r_.__value_.__s.__data_[0];
      if ((v8 & 0x80000000) != 0)
      {
        if (!__maskrune(v8, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else if ((*(v6 + 4 * v8 + 60) & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      v4 = (v4 + 1);
      --size;
    }

    while (size);
    v4 = v7;
LABEL_15:
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = v3;
  }

  std::string::erase(this, 0, v4 - v9);
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v11 >= 0)
  {
    v14 = this;
  }

  else
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  while (v13 != v14)
  {
    v16 = *--v13;
    v15 = v16;
    if ((v16 & 0x80000000) != 0)
    {
      if (!__maskrune(v15, 0x4000uLL))
      {
LABEL_30:
        v14 = (v13 + 1);
        break;
      }
    }

    else if ((*(v6 + 4 * v15 + 60) & 0x4000) == 0)
    {
      goto LABEL_30;
    }
  }

  v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v18 = v17;
  v19 = this + v17;
  if (v18 >= 0)
  {
    v20 = this;
  }

  else
  {
    v19 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v20 = this->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(this, v14 - v20, v19 - v14);
}

uint64_t AGCCodeGenServiceDestroyInternal(uint64_t result)
{
  v1 = result;
  v2 = OGLCodeGenService::oglCodeGenService;
  if (OGLCodeGenService::oglCodeGenService)
  {
    (*(OGLCodeGenService::oglCodeGenService + 8))();
    dlclose(*v2);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    result = MEMORY[0x20F331DC0](v2, 0x80C40D6874129);
  }

  OGLCodeGenService::oglCodeGenService = 0;
  if (v1)
  {
    v3 = *(v1 + 64);
    if (v3)
    {
      AGCLLVMCtx::~AGCLLVMCtx(v3);
      MEMORY[0x20F331DC0]();
    }

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

uint64_t isComputeShader(unsigned int a1)
{
  result = 1;
  if (a1 > 0x1B || ((1 << a1) & 0x8070040) == 0)
  {
    v3 = a1 - 91;
    if (v3 > 0xC || ((1 << v3) & 0x1401) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GLCompilerLogBuildRequest(int a1, void *a2, size_t a3, const void *a4, size_t a5, unsigned int a6, char *a7)
{
  v11 = a6;
  result = GLCompilerLogBuildRequestInternal(a2, a3, a7, "state", &v11);
  if (result)
  {
    return GLCompilerLogBuildRequestInternal(a4, a5, a7, "bitcode", 0);
  }

  return result;
}

void GLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

char *generateInternalErrorMessage(char **a1, int a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v7, "Internal error during ");
  if ((a2 - 3) <= 5)
  {
    std::string::append(&v7, off_277E1F918[a2 - 3]);
  }

  std::string::append(&v7, "function compilation");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v7.__r_.__value_.__r.__words[0];
    v4 = strdup(v7.__r_.__value_.__l.__data_);
    *a1 = v4;
    operator delete(v5);
  }

  else
  {
    v4 = strdup(&v7);
    *a1 = v4;
  }

  return v4;
}

uint64_t MTLCompilerBuildRequestWithSerializedBitcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char **a13)
{
  *a11 = 0;
  *a9 = 0;
  *a7 = 0;
  *a12 = 0;
  *a10 = 0;
  *a8 = 0;
  *a13 = generateInternalErrorMessage(&v14, 0);
  return 1;
}

uint64_t MTLCompilerBuildRequest(void *a1, char *a2, unint64_t a3, llvm::Module *a4, void *a5, void *a6, char **a7)
{
  v14 = 0;
  if (AGCCodeGenServiceBuildRequestInternal(a1, a2, a3, 0, 0, a4, &v14, a5, a6))
  {
    InternalErrorMessage = 0;
    v10 = 0;
  }

  else
  {
    v12 = a1[2];
    v11 = (a1 + 2);
    InternalErrorMessage = v12;
    if (!v12)
    {
      InternalErrorMessage = generateInternalErrorMessage(v11, v14);
    }

    v10 = 1;
  }

  *a7 = InternalErrorMessage;
  return v10;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 1));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t AGCEnv::getOSLog(AGCEnv *this)
{
  v1 = &qword_28117E000;
  {
    v1 = &qword_28117E000;
    if (v3)
    {
      AGCEnv::getOSLog(void)::log = os_log_create("com.apple.agx", "AGCEnv");
      v1 = &qword_28117E000;
    }
  }

  return v1[161];
}

uint64_t GLCompilerLogBuildRequestInternal(const void *a1, size_t a2, const char *a3, const char *a4, unsigned int *a5)
{
  if (!a2)
  {
    return 1;
  }

  v17 = 0;
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    syslog(3, "Unable to create log directory");
    return 0;
  }

  v10 = MEMORY[0x277CCACA8];
  if (getFileDateFormatter(void)::onceToken != -1)
  {
    dispatch_once(&getFileDateFormatter(void)::onceToken, &__block_literal_global);
  }

  v11 = [v10 stringWithFormat:@"%@/%s_%@_%s.log", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/AGX", a3, objc_msgSend(getFileDateFormatter(void)::formatter, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date")), a4];
  v12 = fopen([v11 UTF8String], "wb");
  if (!v12)
  {
    [v11 UTF8String];
    syslog(3, "Failure to create log file: %s");
    return 0;
  }

  v13 = v12;
  if (a5 && fwrite(a5, 1uLL, 4uLL, v12) != 4 || (v14 = 1, v15 = fwrite(a1, 1uLL, a2, v13), fclose(v13), v15 != a2))
  {
    [v11 UTF8String];
    syslog(3, "Failed to write log file (wrote %zu bytes, expected %zu bytes): %s");
    return 0;
  }

  return v14;
}

uint64_t ___ZL20getFileDateFormatterv_block_invoke()
{
  getFileDateFormatter(void)::formatter = objc_alloc_init(MEMORY[0x277CCA968]);
  [getFileDateFormatter(void)::formatter setDateStyle:1];
  v0 = getFileDateFormatter(void)::formatter;

  return [v0 setDateFormat:@"yyyy_MM_dd_HH_mm_ssZZZ"];
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x20F331BD0](v19, a1);
  if (v19[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = a2 + a3;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v10;
      if (!v7)
      {
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
    }

    v12 = *(v6 + 3);
    v13 = v12 <= a3;
    v14 = v12 - a3;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
    {
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v21 = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v21 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (v21 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x20F331BE0](v19);
  return a1;
}

uint64_t printHexDump(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, int a6)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v24);
  if (a6)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "{", 1);
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v11 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
  }

  if (a3)
  {
    v12 = 0;
    do
    {
      if (a6 && !(v12 % a4))
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "\t", 1);
      }

      v13 = strlen(a5);
      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, a5, v13);
      *(a1 + *(*a1 - 24) + 24) = 2;
      v15 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v14, 48);
      *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
      v16 = MEMORY[0x20F331C20](v15, *(a2 + v12));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " ", 1);
      if (v12 % a4 == a4 - 1)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v17 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v29);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v12;
    }

    while (a3 != v12);
  }

  if (a6)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v18 = MEMORY[0x277D82680];
    v19 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "}", 1);
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v20 = std::locale::use_facet(&v29, v18);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ostream::flush();
  v24[0] = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v24[2] = v21;
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x20F331D40](&v28);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v9 = *(MEMORY[0x277D82818] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x20F331D00](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
    (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
  }

  *(v4 + 36) = a2;
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void AGCPrinterFactory::getStatusFileName(std::string *a1, int a2, char a3, char a4, uint64_t a5)
{
  std::string::basic_string[abi:nn200100]<0>(a1, &unk_20E75F419);
  v11 = 0x27C8D7000uLL;
  {
    v11 = 0x27C8D7000;
    if (v27)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v11 = 0x27C8D7000;
    }
  }

  if (*(v11 + 2944) != 1 || (Value = AGCEnv::getValue("AGC_CLIENT_PROCESS_NAME", v10)) == 0)
  {
    if (a2)
    {
      Value = "agc_gl_status";
    }

    else
    {
      Value = "agc_mtl_status";
    }
  }

  v13 = std::string::append(a1, Value);
  if (a3)
  {
    goto LABEL_17;
  }

  v14 = getpid();
  std::to_string(&v28, v14);
  v15 = std::string::insert(&v28, 0, "_");
  v16 = v15->__r_.__value_.__r.__words[2];
  *__p = *&v15->__r_.__value_.__l.__data_;
  v30 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v30 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v30 >= 0)
  {
    v18 = HIBYTE(v30);
  }

  else
  {
    v18 = __p[1];
  }

  v13 = std::string::append(a1, v17, v18);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if (a4)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_17:
    if (a4)
    {
      goto LABEL_29;
    }
  }

  threadid = llvm::get_threadid(v13);
  std::to_string(&v28, threadid);
  v20 = std::string::insert(&v28, 0, "_");
  v21 = v20->__r_.__value_.__r.__words[2];
  *__p = *&v20->__r_.__value_.__l.__data_;
  v30 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v30 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v30 >= 0)
  {
    v23 = HIBYTE(v30);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

LABEL_29:
  v24 = *(a5 + 23);
  if (v24 < 0)
  {
    v24 = *(a5 + 8);
  }

  if (v24)
  {
    std::operator+<char>();
    if (v30 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v30 >= 0)
    {
      v26 = HIBYTE(v30);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(a1, v25, v26);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void AGCEnv::getLogDirectory(std::string *this, const char *a2)
{
  v2 = a2;
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_STATUS_LOG_DIRECTORY", a2);
  }

  else
  {
    Value = 0;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v5 = AGCEnv::getValue("USE_MONOLITHIC_COMPILER", a2);
    if (v5)
    {
      if (*v5 != 48 && atoi(v5))
      {
        v6 = 1;
        if (!Value)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1 || (v7 = AGCEnv::getValue("MTL_MONOLITHIC_COMPILER", a2)) == 0 || *v7 == 48)
  {
    if (stat("/private/var/mobile/Library/Logs/", &v23))
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v6 = atoi(v7) != 0;
  if (Value)
  {
LABEL_27:
    if (v6)
    {
      v10 = this;
      v11 = Value;
LABEL_36:
      std::string::append(v10, v11);
      goto LABEL_37;
    }
  }

LABEL_29:
  if (!stat("/private/var/mobile/Library/Logs/", &v23))
  {
LABEL_35:
    v11 = "/private/var/mobile/Library/Logs/";
    v10 = this;
    goto LABEL_36;
  }

  if (v6)
  {
    v12 = [(NSString *)NSHomeDirectory() UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v22 = v13;
    if (v13)
    {
      memmove(__p, v12, v13);
    }

    *(__p + v14) = 0;
    goto LABEL_18;
  }

LABEL_17:
  std::string::basic_string[abi:nn200100]<0>(__p, "/tmp/");
LABEL_18:
  if ((v22 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v9 = v22;
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(this, v8, v9);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v16 = this;
  }

  else
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v16->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(this, 47);
  }

  if (v2)
  {
    v17 = "OpenGL";
  }

  else
  {
    v17 = "Metal";
  }

  std::string::append(this, v17);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v19 = AGCEnv::getValue("AGC_STATUS_LOG_PREFIX", v18);
    if (v19)
    {
      v20 = v19;
      std::string::push_back(this, 47);
      std::string::append(this, v20);
    }
  }
}

BOOL AGCPrinterFactory::createDirectoryIgnoreExisting(std::string::size_type a1)
{
  v1 = a1;
  v22 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  *v20 = 0xFFFFLL;
  *&v20[8] = 0;
  v21 = 0;
  v18 = 260;
  v17.__r_.__value_.__r.__words[0] = a1;
  v2 = 1;
  if (llvm::sys::fs::status())
  {
    *&v19[32] = 260;
    *v19 = v1;
    directories = llvm::sys::fs::create_directories();
    *&v16.__val_ = directories;
    v16.__cat_ = v4;
    v2 = directories == 0;
    if (directories)
    {
      v5 = *MEMORY[0x277D85DF8];
      if (*(v1 + 23) >= 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = *v1;
      }

      std::error_code::message(v19, &v16);
      if (v19[23] >= 0)
      {
        v7 = v19;
      }

      else
      {
        v7 = *v19;
      }

      fprintf(v5, "AGC: %s:%d:%s: *** Failed to create: %s, with error code %d (%s)\n", "agc_file_printer.cpp", 302, "createDirectoryIgnoreExisting", v6, directories, v7);
      if ((v19[23] & 0x80000000) != 0)
      {
        operator delete(*v19);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = *(v1 + 23) >= 0 ? v1 : *v1;
        val = v16.__val_;
        std::error_code::message(&v17, &v16);
        v15 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
        *v19 = 136316418;
        *&v19[4] = "agc_file_printer.cpp";
        *&v19[12] = 1024;
        *&v19[14] = 302;
        *&v19[18] = 2080;
        *&v19[20] = "createDirectoryIgnoreExisting";
        *&v19[28] = 2080;
        *&v19[30] = v13;
        *&v19[38] = 1024;
        *&v19[40] = val;
        *v20 = 2080;
        *&v20[2] = v15;
        _os_log_error_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGC: AGC: %s:%d:%s: *** Failed to create: %s, with error code %d (%s)\n", v19, 0x36u);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        if (*(v1 + 23) < 0)
        {
          v1 = *v1;
        }

        v8 = v16.__val_;
        std::error_code::message(&v17, &v16);
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v17;
        }

        else
        {
          v9 = v17.__r_.__value_.__r.__words[0];
        }

        *v19 = 136316418;
        *&v19[4] = "agc_file_printer.cpp";
        *&v19[12] = 1024;
        *&v19[14] = 302;
        *&v19[18] = 2080;
        *&v19[20] = "createDirectoryIgnoreExisting";
        *&v19[28] = 2080;
        *&v19[30] = v1;
        *&v19[38] = 1024;
        *&v19[40] = v8;
        *v20 = 2080;
        *&v20[2] = v9;
        _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGC: AGC: %s:%d:%s: *** Failed to create: %s, with error code %d (%s)\n", v19, 0x36u);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      if (*(v1 + 23) >= 0)
      {
        v10 = v1;
      }

      else
      {
        v10 = *v1;
      }

      tryChangeOwnerToMobile(v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

void AGCPrinterFactory::newOfstream(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a1, *(a1 + 8));
  }

  else
  {
    v11 = *a1;
  }

  for (i = 1; ; ++i)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 0xFFFFLL;
    v17 = 0;
    v18 = 0;
    v13 = 260;
    v12.__r_.__value_.__r.__words[0] = &v11;
    if (llvm::sys::fs::status())
    {
      break;
    }

    if (*(a1 + 23) >= 0)
    {
      v3 = *(a1 + 23);
    }

    else
    {
      v3 = *(a1 + 8);
    }

    std::string::basic_string[abi:nn200100](v15, v3 + 1);
    if (v15[23] >= 0)
    {
      v4 = v15;
    }

    else
    {
      v4 = *v15;
    }

    if (v3)
    {
      if (*(a1 + 23) >= 0)
      {
        v5 = a1;
      }

      else
      {
        v5 = *a1;
      }

      memmove(v4, v5, v3);
    }

    *&v4[v3] = 95;
    std::to_string(&v12, i);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v12;
    }

    else
    {
      v6 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(v15, v6, size);
    v9 = v8->__r_.__value_.__r.__words[0];
    v14[0] = v8->__r_.__value_.__l.__size_;
    *(v14 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    v11.__r_.__value_.__r.__words[0] = v9;
    v11.__r_.__value_.__l.__size_ = v14[0];
    *(&v11.__r_.__value_.__r.__words[1] + 7) = *(v14 + 7);
    *(&v11.__r_.__value_.__s + 23) = v10;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if ((v15[23] & 0x80000000) != 0)
    {
      operator delete(*v15);
    }
  }

  operator new();
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__shared_ptr_emplace<AGCTargetPrinter>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v3 = result == MEMORY[0x277D82670];
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    result = (*(*result + 8))(result);
    *(a1 + 24) = 0;
  }

  return result;
}

void std::__shared_ptr_emplace<AGCTargetPrinter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_282550490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x20F331DC0);
}

void tryChangeOwnerToMobile(const char *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (chown(a1, 0x1F5u, 0xFFFFFFFF))
  {
    v2 = *MEMORY[0x277D85DF8];
    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    fprintf(v2, "AGC: %s:%d:%s: *** Failed to change owner uid to 501: %s, with error code %d (%s)\n", "agc_file_printer.cpp", 39, "tryChangeOwnerToMobile", a1, v3, v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 136316418;
      v14 = "agc_file_printer.cpp";
      v15 = 1024;
      v16 = 39;
      v17 = 2080;
      v18 = "tryChangeOwnerToMobile";
      v19 = 2080;
      v20 = a1;
      v21 = 1024;
      v22 = v10;
      v23 = 2080;
      v24 = v12;
      _os_log_error_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGC: AGC: %s:%d:%s: *** Failed to change owner uid to 501: %s, with error code %d (%s)\n", buf, 0x36u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136316418;
      v14 = "agc_file_printer.cpp";
      v15 = 1024;
      v16 = 39;
      v17 = 2080;
      v18 = "tryChangeOwnerToMobile";
      v19 = 2080;
      v20 = a1;
      v21 = 1024;
      v22 = v6;
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGC: AGC: %s:%d:%s: *** Failed to change owner uid to 501: %s, with error code %d (%s)\n", buf, 0x36u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t std::unordered_map<std::string,std::shared_ptr<AGCTargetPrinter>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void AGCPrinterFactory::createObjectPrinter(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_27C8D81C0 != 1 || (byte_27C8D81C1 & 1) != 0)
  {
    goto LABEL_3;
  }

  GetAGCPrinterFactoryMutex();
  std::mutex::lock(&GetAGCPrinterFactoryMutex(void)::m);
  AGCEnv::getLogDirectory(&v46, a2);
  v10 = std::string::append(&v46, "/");
  v12 = v10->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v12;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v14 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_STATUS_FILE_NO_PID", v11)) != 0 && *Value != 48 && atoi(Value) != 0;
  std::string::basic_string[abi:nn200100]<0>(v48, &unk_20E75F419);
  AGCPrinterFactory::getStatusFileName(&v46, a2, v14, 1, v48);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v46;
  }

  else
  {
    v15 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  std::string::append(&v50, v15, size);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  DirectoryIgnoreExisting = AGCPrinterFactory::createDirectoryIgnoreExisting(&v50);
  if (!DirectoryIgnoreExisting)
  {
    *a1 = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    std::mutex::unlock(&GetAGCPrinterFactoryMutex(void)::m);
    if (DirectoryIgnoreExisting)
    {
LABEL_3:
      operator new();
    }

    return;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v46);
  v18 = *(a3 + 23);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = a3;
    if (!*(a3 + 23))
    {
      goto LABEL_30;
    }

    do
    {
LABEL_27:
      if (*v19 == 32)
      {
        *v19 = 95;
      }

      ++v19;
      --v18;
    }

    while (v18);
    goto LABEL_30;
  }

  v19 = *a3;
  v18 = *(a3 + 8);
  if (v18)
  {
    goto LABEL_27;
  }

LABEL_30:
  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46.__r_.__value_.__r.__words[2], "agc_status_", 11);
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, v22, v23);
  v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "_", 1);
  v26 = *(a4 + 23);
  if (v26 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = *a4;
  }

  if (v26 >= 0)
  {
    v28 = *(a4 + 23);
  }

  else
  {
    v28 = *(a4 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v27, v28);
  if (*(a5 + 32) != 1)
  {
LABEL_46:
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v50.__r_.__value_.__l.__size_;
    }

    v34 = &v43;
    std::string::basic_string[abi:nn200100](&v43, v33 + 1);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v43.__r_.__value_.__r.__words[0];
    }

    if (v33)
    {
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v50;
      }

      else
      {
        v35 = v50.__r_.__value_.__r.__words[0];
      }

      memmove(v34, v35, v33);
    }

    *(&v34->__r_.__value_.__l.__data_ + v33) = 47;
    std::stringbuf::str();
    if ((v42 & 0x80u) == 0)
    {
      v36 = v41;
    }

    else
    {
      v36 = v41[0];
    }

    if ((v42 & 0x80u) == 0)
    {
      v37 = v42;
    }

    else
    {
      v37 = v41[1];
    }

    v38 = std::string::append(&v43, v36, v37);
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    v45 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    AGCPrinterFactory::newOfstream(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46.__r_.__value_.__r.__words[2], "_", 1);
  if (*(a5 + 32) == 1)
  {
    for (i = 0; i != 32; ++i)
    {
      v30 = *(a5 + i);
      v31 = v46.__r_.__value_.__r.__words[2];
      *(v47 + *(v46.__r_.__value_.__r.__words[2] - 24)) = *(v47 + *(v46.__r_.__value_.__r.__words[2] - 24)) & 0xFFFFFFB5 | 8;
      *(v47 + *(v31 - 24)) |= 0x4000u;
      *(&v47[2] + *(v31 - 24)) = 2;
      v32 = std::operator<<[abi:nn200100]<std::char_traits<char>>(&v46.__r_.__value_.__r.__words[2], 48);
      MEMORY[0x20F331C10](v32, v30);
    }

    goto LABEL_46;
  }

  v40 = std::__throw_bad_optional_access[abi:nn200100]();
  llvm::LLT::dump(v40);
}

uint64_t llvm::LLT::dump(llvm::LLT *this)
{
  v2 = llvm::dbgs(this);
  v3 = llvm::LLT::print(this, v2);
  result = llvm::dbgs(v3);
  v5 = *(result + 32);
  if (v5 >= *(result + 24))
  {

    return MEMORY[0x2821F1EB8]();
  }

  else
  {
    *(result + 32) = v5 + 1;
    *v5 = 10;
  }

  return result;
}

uint64_t AGCLLVMBuilder::CreateLoad(AGCLLVMBuilder *this, llvm::Type **a2, const llvm::Twine *a3)
{
  v6 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v6)
  {
    v7 = v6;
    llvm::Type::isOpaquePointerTy(*a2);
    v8 = (this + 8);
    v9 = v7;
  }

  else
  {
    v8 = (this + 8);
    v9 = 0;
  }

  return llvm::IRBuilderBase::CreateAlignedLoad(v8, v9, a2, 0, a3);
}

uint64_t llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

void std::vector<AGCLLVMGLVertexShader::VertexInput>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
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
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

const void **llvm::PreservedAnalyses::preserve(uint64_t a1, void *a2)
{
  llvm::SmallPtrSetImplBase::erase_imp((a1 + 48), a2);
  if (*(a1 + 68) != *(a1 + 72))
  {
    return llvm::SmallPtrSetImpl<void *>::insert(v7, a1, a2);
  }

  result = llvm::SmallPtrSetImplBase::find_imp(a1, MEMORY[0x277D82070]);
  v5 = *(a1 + 8);
  v6 = 16;
  if (v5 == *a1)
  {
    v6 = 20;
  }

  if (result == (v5 + 8 * *(a1 + v6)))
  {
    return llvm::SmallPtrSetImpl<void *>::insert(v7, a1, a2);
  }

  return result;
}

uint64_t anonymous namespace::reportError(uint64_t a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("Error occured during IR replacement\n", 0x24uLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  return fprintf(*v2, "%s\n", v3);
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

BOOL validateUserLocalMemoryUsage(unsigned int __val, unsigned int a2, std::string *a3)
{
  if (__val > a2)
  {
    std::to_string(&v22, __val);
    v6 = std::string::insert(&v22, 0, "Threadgroup memory size (");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v23, ") ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v24, "exceeds the maximum threadgroup memory allowed (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a2);
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

    v14 = std::string::append(&v25, p_p, size);
    v15 = v14->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v26, ")");
    v17 = v16->__r_.__value_.__r.__words[2];
    v27 = *&v16->__r_.__value_.__l.__data_;
    v28 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v18 = &v27;
    }

    else
    {
      v18 = v27;
    }

    if (v28 >= 0)
    {
      v19 = HIBYTE(v28);
    }

    else
    {
      v19 = *(&v27 + 1);
    }

    std::string::append(a3, v18, v19);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  return __val <= a2;
}

uint64_t validateUserMeshLocalMemoryUsage(unsigned int a1, unsigned int __val, unsigned int a3, unsigned int a4, unsigned int a5, std::string *a6)
{
  if (a1 > a3)
  {
    std::to_string(&v58, a1);
    v8 = std::string::insert(&v58, 0, "Threadgroup memory size (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v59, ") ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v60, "exceeds the maximum threadgroup memory allowed (");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = a3;
LABEL_5:
    std::to_string(&v57, v14);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v57;
    }

    else
    {
      v23 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v61, v23, size);
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

    std::string::append(a6, v29, v30);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
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

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v31 = v58.__r_.__value_.__r.__words[0];
    goto LABEL_31;
  }

  if (__val > a4)
  {
    std::to_string(&v58, __val);
    v17 = std::string::insert(&v58, 0, "Total mesh size (");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v59, ") ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v60, "exceeds the maximum mesh size allowed (");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v14 = a4;
    goto LABEL_5;
  }

  if (__val + a1 <= a5)
  {
    return 1;
  }

  std::to_string(&v56, a1);
  v34 = std::string::insert(&v56, 0, "Threadgroup memory size and mesh size (");
  v35 = v34->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v57, " + ");
  v37 = v36->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v55, __val);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v55;
  }

  else
  {
    v38 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v55.__r_.__value_.__l.__size_;
  }

  v40 = std::string::append(&v58, v38, v39);
  v41 = v40->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v40->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  v42 = std::string::append(&v59, ") ");
  v43 = v42->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = std::string::append(&v60, "exceed the maximum limit allowed (");
  v45 = v44->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v54, a5);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &v54;
  }

  else
  {
    v46 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v54.__r_.__value_.__l.__size_;
  }

  v48 = std::string::append(&v61, v46, v47);
  v49 = v48->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&v62, ")");
  v51 = v50->__r_.__value_.__r.__words[2];
  v63 = *&v50->__r_.__value_.__l.__data_;
  v64 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  if (v64 >= 0)
  {
    v52 = &v63;
  }

  else
  {
    v52 = v63;
  }

  if (v64 >= 0)
  {
    v53 = HIBYTE(v64);
  }

  else
  {
    v53 = *(&v63 + 1);
  }

  std::string::append(a6, v52, v53);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
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

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
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
    v31 = v56.__r_.__value_.__r.__words[0];
LABEL_31:
    operator delete(v31);
  }

  return 0;
}

flatbuffers::IDLOptions *flatbuffers::IDLOptions::IDLOptions(flatbuffers::IDLOptions *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 2) = 2;
  *(this + 3) = 257;
  *(this + 16) = 1;
  *(this + 17) = 0;
  *(this + 25) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 32, "std::unique_ptr");
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 112, "T");
  *(this + 68) = 1;
  *(this + 138) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 165) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 1;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 255) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 336, "_generated");
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 1;
  *(this + 49) = 0;
  *(this + 200) = 257;
  return this;
}

void flatbuffers::Parser::Parser(flatbuffers::Parser *this, const flatbuffers::IDLOptions *a2)
{
  *this = 0u;
  *(this + 2) = 0xFFFFFFFF00000000;
  *(this + 24) = 1;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 136) = 0u;
  *(this + 16) = this + 136;
  *(this + 152) = 0u;
  *(this + 184) = 0u;
  *(this + 21) = 0;
  *(this + 22) = this + 184;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 232) = 0u;
  *(this + 28) = this + 232;
  *(this + 344) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 22) = xmmword_20E70C4D0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 50) = 0;
  *(this + 51) = 1;
  *(this + 208) = 256;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  operator new();
}

void flatbuffers::IDLOptions::~IDLOptions(void **this)
{
  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = this + 33;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void flatbuffers::Parser::~Parser(flatbuffers::Parser *this)
{
  v3 = *(this + 34);
  for (i = *(this + 35); v3 != i; ++v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v32 = *v3;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
      MEMORY[0x20F331DC0](v4, 0x1020C4016EE4530);
      i = *(this + 35);
    }
  }

  v5 = *(this + 147);
  if (v5)
  {
    v6 = *(this + 148);
    v7 = *(this + 147);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 17) < 0)
        {
          operator delete(*(v6 - 40));
        }

        v6 -= 72;
      }

      while (v6 != v5);
      v7 = *(this + 147);
    }

    *(this + 148) = v5;
    operator delete(v7);
  }

  if (*(this + 1175) < 0)
  {
    operator delete(*(this + 144));
  }

  flatbuffers::IDLOptions::~IDLOptions(this + 91);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 89));
  v32 = (this + 680);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(this + 83));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 80));
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 607) < 0)
  {
    operator delete(*(this + 73));
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 67));
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 63));
  v8 = *(this + 57);
  if (v8)
  {
    *(this + 58) = v8;
    operator delete(v8);
  }

  v9 = *(this + 54);
  if (v9)
  {
    *(this + 55) = v9;
    operator delete(v9);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 336));
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v10 = *(this + 34);
  if (v10)
  {
    *(this + 35) = v10;
    operator delete(v10);
  }

  v12 = *(this + 31);
  v11 = *(this + 32);
  if (v12 != v11)
  {
    do
    {
      v13 = *v12;
      if (*v12)
      {
        v15 = *(v13 + 176);
        v14 = *(v13 + 184);
        if (v15 != v14)
        {
          do
          {
            v16 = *v15;
            if (*v15)
            {
              flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v16 + 72);
              v32 = (v16 + 48);
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
              if (*(v16 + 47) < 0)
              {
                operator delete(*(v16 + 24));
              }

              if (*(v16 + 23) < 0)
              {
                operator delete(*v16);
              }

              MEMORY[0x20F331DC0](v16, 0x10B2C40EE200C30);
              v14 = *(v13 + 184);
            }

            ++v15;
          }

          while (v15 != v14);
          v15 = *(v13 + 176);
        }

        if (v15)
        {
          *(v13 + 184) = v15;
          operator delete(v15);
        }

        std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v13 + 160));
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v13 + 72);
        v32 = (v13 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
        if (*(v13 + 47) < 0)
        {
          operator delete(*(v13 + 24));
        }

        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        MEMORY[0x20F331DC0](v13, 0x10B2C401A85D49FLL);
        v11 = *(this + 32);
      }

      ++v12;
    }

    while (v12 != v11);
    v12 = *(this + 31);
  }

  if (v12)
  {
    *(this + 32) = v12;
    operator delete(v12);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 29));
  v18 = *(this + 25);
  v17 = *(this + 26);
  if (v18 != v17)
  {
    do
    {
      v19 = *v18;
      if (*v18)
      {
        v21 = *(v19 + 208);
        v20 = *(v19 + 216);
        if (v21 != v20)
        {
          do
          {
            v22 = *v21;
            if (*v21)
            {
              flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v22 + 88);
              v32 = (v22 + 24);
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
              if (*(v22 + 23) < 0)
              {
                operator delete(*v22);
              }

              MEMORY[0x20F331DC0](v22, 0x10B2C4072A4B994);
              v20 = *(v19 + 216);
            }

            ++v21;
          }

          while (v21 != v20);
          v21 = *(v19 + 208);
        }

        if (v21)
        {
          *(v19 + 216) = v21;
          operator delete(v21);
        }

        std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v19 + 192));
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v19 + 72);
        v32 = (v19 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
        if (*(v19 + 47) < 0)
        {
          operator delete(*(v19 + 24));
        }

        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        MEMORY[0x20F331DC0](v19, 0x10B2C409EE52067);
        v17 = *(this + 26);
      }

      ++v18;
    }

    while (v18 != v17);
    v18 = *(this + 25);
  }

  if (v18)
  {
    *(this + 26) = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 23));
  v24 = *(this + 19);
  v23 = *(this + 20);
  if (v24 != v23)
  {
    do
    {
      v25 = *v24;
      if (*v24)
      {
        v26 = *(v25 + 224);
        *(v25 + 224) = 0;
        if (v26)
        {
          if (*(v26 + 23) < 0)
          {
            operator delete(*v26);
          }

          MEMORY[0x20F331DC0](v26, 0x1012C40EC159624);
        }

        v28 = *(v25 + 176);
        v27 = *(v25 + 184);
        if (v28 != v27)
        {
          do
          {
            v29 = *v28;
            if (*v28)
            {
              if (*(v29 + 207) < 0)
              {
                operator delete(*(v29 + 184));
              }

              flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v29 + 72);
              v32 = (v29 + 48);
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
              if (*(v29 + 47) < 0)
              {
                operator delete(*(v29 + 24));
              }

              if (*(v29 + 23) < 0)
              {
                operator delete(*v29);
              }

              MEMORY[0x20F331DC0](v29, 0x10B2C40559199D4);
              v27 = *(v25 + 184);
            }

            ++v28;
          }

          while (v28 != v27);
          v28 = *(v25 + 176);
        }

        if (v28)
        {
          *(v25 + 184) = v28;
          operator delete(v28);
        }

        std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v25 + 160));
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v25 + 72);
        v32 = (v25 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
        if (*(v25 + 47) < 0)
        {
          operator delete(*(v25 + 24));
        }

        if (*(v25 + 23) < 0)
        {
          operator delete(*v25);
        }

        MEMORY[0x20F331DC0](v25, 0x10B2C4058EA06FBLL);
        v23 = *(this + 20);
      }

      ++v24;
    }

    while (v24 != v23);
    v24 = *(this + 19);
  }

  if (v24)
  {
    *(this + 20) = v24;
    operator delete(v24);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 17));
  v31 = *(this + 13);
  v30 = *(this + 14);
  if (v31 != v30)
  {
    do
    {
      if (*v31)
      {
        MEMORY[0x20F331DC0](*v31, 0x1020C4001A1C0B8);
        v30 = *(this + 14);
      }

      ++v31;
    }

    while (v31 != v30);
    v31 = *(this + 13);
  }

  if (v31)
  {
    *(this + 14) = v31;
    operator delete(v31);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 11));
  v32 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(a1 + 1));
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        MEMORY[0x20F331DC0](v4, 0x1032C40E9BF265ALL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 8));
  return a1;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2, v2 + 4))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v4 + 4, a2))
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void AGCLLVMAGPFragmentShader::getCompilationKeyDescription(AGCLLVMAGPFragmentShader *this@<X0>, uint64_t a2@<X8>)
{
  v130 = *MEMORY[0x277D85DE8];
  v4 = *(this + 801);
  std::string::basic_string[abi:nn200100]<0>(v52, "AGCFragmentContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(&v57, "AGCFragmentContextState");
  std::string::basic_string[abi:nn200100]<0>(v55, "fragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v122, "AGCFragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v84, "GL and Metal state:");
  std::string::basic_string[abi:nn200100]<0>(v82, "alphaToCoverage");
  _agcFieldString<unsigned int>(&v85, v82, *v4 & 1);
  std::string::basic_string[abi:nn200100]<0>(v80, "alphaToOne");
  _agcFieldString<unsigned int>(&v86, v80, (*v4 >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v79, "sampleCoverage");
  _agcFieldString<unsigned int>(&v87, &v79.__r_.__value_.__l.__data_, (*v4 >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v77, "sampleCoverageInvert");
  _agcFieldString<unsigned int>(&v88, v77, (*v4 >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v89, "GL specific state:");
  std::string::basic_string[abi:nn200100]<0>(v75, "depthStencilWriteDisabled");
  _agcFieldString<unsigned int>(&v90, v75, (*v4 >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v73, "logicOp");
  _agcFieldString<unsigned int>(&v91, v73, (*v4 >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(v71, "logicOpState");
  _agcFieldString<char const*>(&v92, v71, _agcLogicOpStrings[(*v4 >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v70, "alphaTest");
  _agcFieldString<unsigned int>(&v93, &v70.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  std::string::basic_string[abi:nn200100]<0>(v68, "alphaTestFunc");
  _agcFieldString<char const*>(&v94, v68, _agcCompareFuncStrings[*v4 >> 12]);
  std::string::basic_string[abi:nn200100]<0>(v66, "smoothPoints");
  _agcFieldString<unsigned int>(&v95, v66, HIWORD(*v4) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v65, "pointSpriteEnabled");
  _agcFieldString<unsigned int>(&v96, &v65.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v63, "outputPointSize");
  _agcFieldString<unsigned int>(&v97, v63, (*v4 >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v62, "shaderDebugEnable");
  _agcFieldString<unsigned int>(&v98, &v62.__r_.__value_.__l.__data_, (*v4 >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v99, "MTL specific state:");
  std::string::basic_string[abi:nn200100]<0>(v60, "pridAllocationStrategy");
  _agcFieldString<char const*>(&v100, v60, _agcPRIDAllocationStrategyStrings[(*v4 >> 20) & 7]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v101, __p, *v4 >> 23);
  _agcGroupWithHeader(&v54, &v122, &v84, 18);
  v5 = 54;
  do
  {
    if (v84.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v82[v5]);
    }

    v5 -= 3;
  }

  while (v5 * 8);
  if (v59 < 0)
  {
    operator delete(__p[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
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

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v122, v55, &v54);
  std::string::basic_string[abi:nn200100]<0>(v71, "colorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v82, "AGCColorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v80, "redEnableBits");
  _agcFieldStringHex(&v84, v80, *(v4 + 8));
  std::string::basic_string[abi:nn200100]<0>(&v79, "greenEnableBits");
  _agcFieldStringHex(&v85, &v79.__r_.__value_.__l.__data_, *(v4 + 9));
  std::string::basic_string[abi:nn200100]<0>(v77, "blueEnableBits");
  _agcFieldStringHex(&v86, v77, *(v4 + 10));
  std::string::basic_string[abi:nn200100]<0>(v75, "alphaEnableBits");
  _agcFieldStringHex(&v87, v75, *(v4 + 11));
  std::string::basic_string[abi:nn200100]<0>(v73, "unknownMaskBits");
  _agcFieldStringHex(&v88, v73, *(v4 + 12));
  _agcGroupWithHeader(&v70, v82, &v84, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v88.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v88.__r_.__value_.__l.__data_ + i * 8));
    }
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

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  _agcFieldString<std::string>(&v123, v71, &v70);
  _agcGroupWithHeader(&v84, &v57, &v122, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v123.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v122 + j * 8 + 24));
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

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(v66, "mutableBuffers");
  _agcFieldStringHex(&v85, v66, *(v4 + 2));
  v8 = v4[16];
  if ((~v8 & 0xF) != 0)
  {
    v10 = -1;
    v11 = 4;
    while (v10 != 6)
    {
      v12 = v8 >> v11;
      ++v10;
      v11 += 4;
      if ((~v12 & 0xF) == 0)
      {
        if (v10 <= 6)
        {
          goto LABEL_68;
        }

        break;
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v82, "AGCLogicalToPhysicalRemap");
    std::string::basic_string[abi:nn200100]<0>(v80, "logicalToPhysical[0]");
    _agcFieldString<unsigned char>(&v122, v80, v4[16] & 0xF);
    std::string::basic_string[abi:nn200100]<0>(&v79, "logicalToPhysical[1]");
    _agcFieldString<unsigned char>(&v123, &v79.__r_.__value_.__l.__data_, *(v4 + 64) >> 4);
    std::string::basic_string[abi:nn200100]<0>(v77, "logicalToPhysical[2]");
    _agcFieldString<unsigned char>(&v124, v77, *(v4 + 65) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v75, "logicalToPhysical[3]");
    _agcFieldString<unsigned char>(&v125, v75, v4[16] >> 12);
    std::string::basic_string[abi:nn200100]<0>(v73, "logicalToPhysical[4]");
    _agcFieldString<unsigned char>(&v126, v73, *(v4 + 66) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v71, "logicalToPhysical[5]");
    _agcFieldString<unsigned char>(&v127, v71, (v4[16] >> 20) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(&v70, "logicalToPhysical[6]");
    _agcFieldString<unsigned char>(&v128, &v70.__r_.__value_.__l.__data_, *(v4 + 67) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v68, "logicalToPhysical[7]");
    _agcFieldString<unsigned char>(&v129, v68, v4[16] >> 28);
    _agcGroupWithHeader(&v86, v82, &v122, 8);
    for (k = 0; k != -24; k -= 3)
    {
      if (SHIBYTE(v129.__r_.__value_.__r.__words[k + 2]) < 0)
      {
        operator delete(*(&v129.__r_.__value_.__l.__data_ + k * 8));
      }
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

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }
  }

  else
  {
LABEL_68:
    std::string::basic_string[abi:nn200100]<0>(v82, "AGCLogicalToPhysicalRemap");
    std::string::basic_string[abi:nn200100]<0>(&v122, "logicalToPhysical[0]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v123, "logicalToPhysical[1]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v124, "logicalToPhysical[2]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v125, "logicalToPhysical[3]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v126, "logicalToPhysical[4]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v127, "logicalToPhysical[5]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v128, "logicalToPhysical[6]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(&v129, "logicalToPhysical[7]: dynamic");
    _agcGroupWithHeader(&v86, v82, &v122, 8);
    for (m = 0; m != -24; m -= 3)
    {
      if (SHIBYTE(v129.__r_.__value_.__r.__words[m + 2]) < 0)
      {
        operator delete(*(&v129.__r_.__value_.__l.__data_ + m * 8));
      }
    }
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v122, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v87, &v122.__r_.__value_.__l.__data_, v4[15] & 1);
  std::string::basic_string[abi:nn200100]<0>(v82, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v88, v82, (v4[15] >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v80, "fragmentOnly");
  _agcFieldString<unsigned int>(&v89, v80, v4[17] & 1);
  std::string::basic_string[abi:nn200100]<0>(&v79, "openglMode");
  _agcFieldString<unsigned int>(&v90, &v79.__r_.__value_.__l.__data_, (v4[17] >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v77, "customBorderColor");
  _agcFieldString<unsigned int>(&v91, v77, (v4[17] >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v75, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v92, v75, (v4[15] >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v73, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v93, v73, (v4[15] >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v71, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v94, v71, (v4[15] >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v70, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v95, &v70.__r_.__value_.__l.__data_, (v4[15] >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v68, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v96, v68, (v4[15] >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v65, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v97, &v65.__r_.__value_.__l.__data_, (v4[15] >> 10));
  std::string::basic_string[abi:nn200100]<0>(v63, "enableStackShadow");
  _agcFieldString<unsigned int>(&v98, v63, (v4[15] >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v62, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v99, &v62.__r_.__value_.__l.__data_, v4[15] >> 31);
  std::string::basic_string[abi:nn200100]<0>(v60, "enableHLSLDiscardSemantics");
  _agcFieldString<unsigned int>(&v100, v60, (v4[17] >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "textureWriteFPRoundingMode");
  _agcFieldString<unsigned int>(&v101, __p, (v4[17] >> 4) & 3);
  std::string::basic_string[abi:nn200100]<0>(&v57, "usesMeshShader");
  _agcFieldString<unsigned int>(&v102, &v57.__r_.__value_.__l.__data_, (v4[17] >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v55, "statelessPSOOverride");
  _agcFieldString<unsigned int>(&v103, v55, v4[17] >> 14);
  std::string::basic_string[abi:nn200100]<0>(&v54, "lbrtOverride");
  _agcFieldString<unsigned int>(&v104, &v54.__r_.__value_.__l.__data_, HIWORD(v4[17]) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v51, "unused");
  _agcFieldString<unsigned int>(&v105, &v51.__r_.__value_.__l.__data_, v4[17] >> 17);
  _agcStringRepresentation(&v50, v4 + 6);
  v14 = std::string::insert(&v50, 0, "blendState[0]: ");
  v15 = v14->__r_.__value_.__r.__words[2];
  v106 = *&v14->__r_.__value_.__l.__data_;
  v107 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v49, v4 + 7);
  v16 = std::string::insert(&v49, 0, "blendState[1]: ");
  v17 = v16->__r_.__value_.__r.__words[2];
  v108 = *&v16->__r_.__value_.__l.__data_;
  v109 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v48, v4 + 8);
  v18 = std::string::insert(&v48, 0, "blendState[2]: ");
  v19 = v18->__r_.__value_.__r.__words[2];
  v110 = *&v18->__r_.__value_.__l.__data_;
  v111 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v47, v4 + 9);
  v20 = std::string::insert(&v47, 0, "blendState[3]: ");
  v21 = v20->__r_.__value_.__r.__words[2];
  v112 = *&v20->__r_.__value_.__l.__data_;
  v113 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v46, v4 + 10);
  v22 = std::string::insert(&v46, 0, "blendState[4]: ");
  v23 = v22->__r_.__value_.__r.__words[2];
  v114 = *&v22->__r_.__value_.__l.__data_;
  v115 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v45, v4 + 11);
  v24 = std::string::insert(&v45, 0, "blendState[5]: ");
  v25 = v24->__r_.__value_.__r.__words[2];
  v116 = *&v24->__r_.__value_.__l.__data_;
  v117 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v44, v4 + 12);
  v26 = std::string::insert(&v44, 0, "blendState[6]: ");
  v27 = v26->__r_.__value_.__r.__words[2];
  v118 = *&v26->__r_.__value_.__l.__data_;
  v119 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v43, v4 + 13);
  v28 = std::string::insert(&v43, 0, "blendState[7]: ");
  v29 = v28->__r_.__value_.__r.__words[2];
  v120 = *&v28->__r_.__value_.__l.__data_;
  v121 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  _agcGroupWithHeader(&v42, v52, &v84, 30);
  v30 = 90;
  do
  {
    if (v84.__r_.__value_.__s.__data_[v30 * 8 - 1] < 0)
    {
      operator delete(v82[v30]);
    }

    v30 -= 3;
  }

  while (v30 * 8);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(__p[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
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

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  v31 = *(this + 660);
  std::string::basic_string[abi:nn200100]<0>(v60, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(v82, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v80, "enabledBits");
  _agcFieldStringHex(&v84, v80, *(v31 + 32));
  std::string::basic_string[abi:nn200100]<0>(&v79, "sampleCount");
  _agcFieldString<unsigned char>(&v85, &v79.__r_.__value_.__l.__data_, 1 << (BYTE1(*(v31 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(v77, "colorSampleCount");
  _agcFieldString<unsigned char>(&v86, v77, 1 << ((*(v31 + 32) >> 10) & 3));
  v32 = *(v31 + 32) & 0x1FF000;
  if (v32 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v73, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v71, "unknown");
    _agcFieldString<std::string>(&v87, v73, v71);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v75, "outputPartitionSize");
    v33 = *(v31 + 32);
    if ((~v33 & 0x1FF000) == 0)
    {
      goto LABEL_255;
    }

    std::to_string(&v122, (v33 >> 12) & 0x1FF);
    _agcFieldString<std::string>(&v87, v75, &v122);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }
  }

  v34 = *(v31 + 32);
  if ((v34 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v70, "LIBSpilling");
    v35 = *(v31 + 32);
    if ((v35 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v88, &v70.__r_.__value_.__l.__data_, (v35 & 0x200000) != 0);
      goto LABEL_170;
    }

LABEL_255:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v68, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v66, "unknown");
  _agcFieldString<std::string>(&v88, v68, v66);
LABEL_170:
  std::string::basic_string[abi:nn200100]<0>(&v65, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v89, &v65.__r_.__value_.__l.__data_, (*(v31 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v63, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v90, v63, *(v31 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v62, "useSlabs");
  _agcFieldString<unsigned char>(&v91, &v62.__r_.__value_.__l.__data_, (*(v31 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v122, v82, &v84, 8);
  for (n = 0; n != -24; n -= 3)
  {
    if (SHIBYTE(v91.__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(*(&v91.__r_.__value_.__l.__data_ + n * 8));
    }
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_180;
    }

LABEL_185:
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    v37 = v70.__r_.__value_.__r.__words[0];
    goto LABEL_187;
  }

  operator delete(v65.__r_.__value_.__l.__data_);
  if ((v34 & 0x400000) != 0)
  {
    goto LABEL_185;
  }

LABEL_180:
  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    v37 = v68[0];
LABEL_187:
    operator delete(v37);
  }

LABEL_188:
  if (v32 != 2093056)
  {
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    v38 = v75[0];
    goto LABEL_195;
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    v38 = v73[0];
LABEL_195:
    operator delete(v38);
  }

LABEL_196:
  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v82, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v80, "encoded[0]");
  _agcStringRepresentation(&v79, v31);
  _agcFieldString<std::string>(&v84, v80, &v79);
  std::string::basic_string[abi:nn200100]<0>(v77, "encoded[1]");
  _agcStringRepresentation(&v65, (v31 + 4));
  _agcFieldString<std::string>(&v85, v77, &v65);
  std::string::basic_string[abi:nn200100]<0>(v63, "encoded[2]");
  _agcStringRepresentation(&v62, (v31 + 8));
  _agcFieldString<std::string>(&v86, v63, &v62);
  std::string::basic_string[abi:nn200100]<0>(__p, "encoded[3]");
  _agcStringRepresentation(&v57, (v31 + 12));
  _agcFieldString<std::string>(&v87, __p, &v57);
  std::string::basic_string[abi:nn200100]<0>(v55, "encoded[4]");
  _agcStringRepresentation(&v54, (v31 + 16));
  _agcFieldString<std::string>(&v88, v55, &v54);
  std::string::basic_string[abi:nn200100]<0>(v52, "encoded[5]");
  _agcStringRepresentation(&v51, (v31 + 20));
  _agcFieldString<std::string>(&v89, v52, &v51);
  std::string::basic_string[abi:nn200100]<0>(&v50, "encoded[6]");
  _agcStringRepresentation(&v49, (v31 + 24));
  _agcFieldString<std::string>(&v90, &v50.__r_.__value_.__l.__data_, &v49);
  std::string::basic_string[abi:nn200100]<0>(&v48, "encoded[7]");
  _agcStringRepresentation(&v47, (v31 + 28));
  _agcFieldString<std::string>(&v91, &v48.__r_.__value_.__l.__data_, &v47);
  _agcGroupWithHeader(&v123, v82, &v84, 8);
  std::string::basic_string[abi:nn200100]<0>(&v46, "_unused");
  _agcFieldString<unsigned int>(&v124, &v46.__r_.__value_.__l.__data_, *(v31 + 36));
  _agcGroupWithHeader(&v45, v60, &v122, 3);
  for (ii = 0; ii != -9; ii -= 3)
  {
    if (SHIBYTE(v124.__r_.__value_.__r.__words[ii + 2]) < 0)
    {
      operator delete(*(&v124.__r_.__value_.__l.__data_ + ii * 8));
    }
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  for (jj = 0; jj != -24; jj -= 3)
  {
    if (SHIBYTE(v91.__r_.__value_.__r.__words[jj + 2]) < 0)
    {
      operator delete(*(&v91.__r_.__value_.__l.__data_ + jj * 8));
    }
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v42.__r_.__value_.__l.__data_, &v45.__r_.__value_.__l.__data_);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void _agcFieldString<unsigned int>(std::string *a1, const void **a2, unsigned int __val)
{
  std::to_string(&v5, __val);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

{
  std::to_string(&__p, __val);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v12;
  std::string::basic_string[abi:nn200100](&v12, v5 + 3);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
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

  v10 = std::string::append(&v12, p_p, size);
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<char const*>(std::string *a1, const void **a2, char *__s)
{
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  _agcFieldString<std::string>(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v13;
  std::string::basic_string[abi:nn200100](&v13, v5 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v13.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v13, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void _agcGroupWithHeader(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  _agcIndentedLine(&v27.__r_.__value_.__l.__data_, &v26, 0);
  std::string::basic_string[abi:nn200100]<0>(v21, "{");
  _agcIndentedLine(&__p, v21, 0);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  v9 = std::string::append(&v27, p_p, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    for (i = 24 * a4; i; i -= 24)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
      }

      else
      {
        v27 = *a3;
      }

      v12 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v27;
      }

      _agcIndentedLine(&__p, &v20, 1);
      if ((v25 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v24;
      }

      std::string::append(&v28, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if (v12 < 0)
        {
LABEL_39:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      else if (v12 < 0)
      {
        goto LABEL_39;
      }

      a3 += 24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v18, "}");
  _agcIndentedLine(&v27.__r_.__value_.__l.__data_, v18, 0);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v28;
  }

  else
  {
    v15 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v27, 0, v15, size);
  *a1 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  _agcIndentedLine(&v27.__r_.__value_.__l.__data_, &v26, 0);
  std::string::basic_string[abi:nn200100]<0>(v21, "{");
  _agcIndentedLine(&__p, v21, 0);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  v9 = std::string::append(&v27, p_p, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    for (i = 24 * a4; i; i -= 24)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
      }

      else
      {
        v27 = *a3;
      }

      v12 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v27;
      }

      _agcIndentedLine(&__p, &v20, 1);
      if ((v25 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v24;
      }

      std::string::append(&v28, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if (v12 < 0)
        {
LABEL_39:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      else if (v12 < 0)
      {
        goto LABEL_39;
      }

      a3 += 24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v18, "}");
  _agcIndentedLine(&v27.__r_.__value_.__l.__data_, v18, 0);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v28;
  }

  else
  {
    v15 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v27, 0, v15, size);
  *a1 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<std::string>(std::string *a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v13;
  std::string::basic_string[abi:nn200100](&v13, v6 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 2112032;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&v13, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t _agcFieldStringHex(std::string *a1, const void **a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, "0x", 2);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v6, a3);
  std::stringbuf::str();
  _agcFieldString<std::string>(a1, a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x20F331D40](&v16);
}

void _agcFieldString<unsigned char>(std::string *a1, const void **a2, unsigned __int8 a3)
{
  std::to_string(&v5, a3);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void _agcStringRepresentation(std::string *a1, unsigned int *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v24, "AGCBlendState");
  std::string::basic_string[abi:nn200100]<0>(v22, "enabled");
  if (*a2)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  _agcFieldString<char const*>(&v26, v22, v4);
  std::string::basic_string[abi:nn200100]<0>(v20, "src");
  _agcFieldString<char const*>(&v27, v20, _agcBlendFactorStrings[(*a2 >> 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v18, "dst");
  _agcFieldString<char const*>(&v28, v18, _agcBlendFactorStrings[(*a2 >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v16, "srcA");
  _agcFieldString<char const*>(&v29, v16, _agcBlendFactorStrings[*a2 >> 11]);
  std::string::basic_string[abi:nn200100]<0>(v14, "dstA");
  _agcFieldString<char const*>(&v30, v14, _agcBlendFactorStrings[*(a2 + 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v12, "equation");
  _agcFieldString<char const*>(&v31, v12, _agcBlendEquationStrings[(*a2 >> 21) & 7]);
  std::string::basic_string[abi:nn200100]<0>(v10, "equationA");
  _agcFieldString<char const*>(&v32, v10, _agcBlendEquationStrings[*(a2 + 3) & 7]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unknown");
  if ((*a2 & 0x8000000) != 0)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  _agcFieldString<char const*>(&v33, __p, v5);
  _agcGroupWithHeader(a1, v24, &v26, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v33.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v33.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _agcStringRepresentation(std::string *a1, _DWORD *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v27, "AGCDrawBuffer");
  std::string::basic_string[abi:nn200100]<0>(v25, "pbeSourceFormat");
  if ((*a2 & 0x1F) == 0x17)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = _agcPBESourceFormatTypeStrings[*a2 & 0x1F];
  }

  std::string::basic_string[abi:nn200100]<0>(v23, v4);
  _agcFieldString<std::string>(&v29, v25, v23);
  std::string::basic_string[abi:nn200100]<0>(v21, "numWrittenComponents");
  _agcFieldString<unsigned int>(&v30, v21, *a2 >> 5);
  std::string::basic_string[abi:nn200100]<0>(v19, "gammaCorrection");
  _agcFieldString<unsigned int>(&v31, v19, (*a2 >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v17, "preEmitSwizzle");
  _agcFieldString<char const*>(&v32, v17, _agcPreEmitSwizzleStrings[(*a2 >> 9) & 7]);
  std::string::basic_string[abi:nn200100]<0>(v15, "outputPartitionOffset");
  _agcFieldString<unsigned int>(&v33, v15, (*a2 >> 12));
  std::string::basic_string[abi:nn200100]<0>(v13, "knownOnLIB");
  _agcFieldString<unsigned int>(&v34, v13, (*a2 >> 20) & 1);
  std::string::basic_string[abi:nn200100]<0>(v11, "slabIndex");
  _agcFieldString<unsigned int>(&v35, v11, (*a2 >> 21) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v9, "packed");
  _agcFieldString<unsigned int>(&v36, v9, (*a2 >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v37, __p, *a2 >> 26);
  _agcGroupWithHeader(a1, v27, &v29, 9);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v37.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v37.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

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

  v6 = *MEMORY[0x277D85DE8];
}

{
  v47 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v32, "AGCDynamicLibraryStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v30, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v34, v30, *a2 & 1);
  std::string::basic_string[abi:nn200100]<0>(v28, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v35, v28, (*a2 >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v26, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v36, v26, (*a2 >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v24, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v37, v24, (*a2 >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v22, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v38, v22, (*a2 >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v20, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v39, v20, (*a2 >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v18, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v40, v18, (*a2 >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v16, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v41, v16, (*a2 >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v14, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v42, v14, (*a2 >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v12, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v43, v12, (*a2 >> 10));
  std::string::basic_string[abi:nn200100]<0>(v10, "enableStackShadow");
  _agcFieldString<unsigned int>(&v44, v10, (*a2 >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v45, v8, *a2 >> 31);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v46, __p, a2[1] >> 3);
  _agcGroupWithHeader(a1, v32, &v34, 13);
  v4 = 39;
  do
  {
    if (v34.__r_.__value_.__s.__data_[v4 * 8 - 1] < 0)
    {
      operator delete(v32[v4]);
    }

    v4 -= 3;
  }

  while (v4 * 8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

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

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:nn200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void _agcIndentedLine(void **a1, std::string::value_type *a2, int a3)
{
  std::string::basic_string[abi:nn200100]<0>(&v14, &unk_20E75F419);
  for (; a3; --a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:nn200100](a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

{
  std::string::basic_string[abi:nn200100]<0>(&v14, &unk_20E75F419);
  if (a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:nn200100](a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void AGCLLVMObject::getObjectName(AGCLLVMObject *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 5087) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 633), *(this + 634));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 5064);
    a2->__r_.__value_.__r.__words[2] = *(this + 635);
  }
}

void virtual thunk toAGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v1 + 7528));

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (v1 + 7528);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMFragmentShader::isAnyPsoStateUnknown(AGCLLVMFragmentShader *this)
{
  v1 = *(this + 93);
  if ((*v1 & 0x1F) == 0x17)
  {
    return 1;
  }

  v3 = v1 + 1;
  v4 = -1;
  while (v4 != 6)
  {
    v5 = *v3++;
    ++v4;
    if ((v5 & 0x1F) == 0x17)
    {
      return v4 < 7;
    }
  }

  v4 = 7;
  return v4 < 7;
}

void non-virtual thunk toAGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 2992));

  JUMPOUT(0x20F331DC0);
}

{

  AGCLLVMObject::~AGCLLVMObject((this + 2992));
}

uint64_t AGCLLVMAGPFragmentShader::buildPixelPositionInTile(AGCLLVMAGPFragmentShader *this, llvm::Type *a2, uint64_t a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 271);
  v9 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v5 + 1712));
  v11 = *(v5 + 452);
  v7 = (*(*v6 + 272))(v6, &v9, a2, a3);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

void AGCLLVMAGPFragmentShader::setupPullMode_Or_ParentVertex_Globals(AGCLLVMAGPFragmentShader *this)
{
  v33 = this + 7048;
  v32 = this + 2016;
  v44 = *MEMORY[0x277D85DE8];
  v2 = this + 2160;
  v30 = this + 7088;
  v31 = this + 2136;
  v29 = this + 7208;
  v28 = this + 7368;
  v3 = this + 1904;
  for (i = 1; i != 5; ++i)
  {
    v5 = *&v33[4 * i];
    if (v5)
    {
      v6 = llvm::ArrayType::get(*&v32[*(*this - 24)], i);
      llvm::ArrayType::get(v6, v5);
      v7 = llvm::User::operator new(0x58);
      v8 = *&v31[*(*this - 24)];
      v40 = "agc.pullmode_or_parentvertex_";
      v35 = v35 & 0xFFFFFFFF00000000 | i;
      v42 = v35;
      v43 = 2051;
      v37[0] = &v40;
      v38[0] = "_component_coefficients";
      v39 = 770;
      v9 = llvm::GlobalVariable::GlobalVariable();
      *(v9 + 80) |= 1u;
      v34 = v34 & 0xFFFFFFFFFFFF0000 | 0x104;
      llvm::GlobalObject::setAlignment();
      llvm::ValueHandleBase::operator=(&v30[24 * i], v7);
      v37[0] = v38;
      v37[1] = 0x400000000;
      v10 = llvm::ValueAsMetadata::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, v10);
      v11 = *&v3[*(*this - 24)];
      llvm::ConstantInt::get();
      v12 = llvm::ValueAsMetadata::get();
      v13 = *&v3[*(*this - 24)];
      llvm::ConstantInt::get();
      v14 = llvm::ValueAsMetadata::get();
      v15 = *&v3[*(*this - 24)];
      llvm::ConstantInt::get();
      v16 = llvm::ValueAsMetadata::get();
      v36 = i;
      v17 = &v29[32 * i];
      if (*(v17 + 2))
      {
        v18 = v16;
        v19 = 0;
        do
        {
          if (*(*&v28[32 * v36] + 4 * v19) == 1)
          {
            v20 = v12;
          }

          else
          {
            v20 = v14;
          }

          v41 = 0;
          v42 = 0;
          v40 = v20;
          v21 = *(*v17 + 4 * v19);
          v22 = *&v3[*(*this - 24)];
          llvm::ConstantInt::get();
          v41 = llvm::ValueAsMetadata::get();
          v42 = v18;
          v23 = *&v2[*(*this - 24)];
          Impl = llvm::MDTuple::getImpl();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, Impl);
          ++v19;
        }

        while (v19 < *(v17 + 2));
      }

      v25 = *(this + 690);
      v26 = *&v2[*(*this - 24)];
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      if (v37[0] != v38)
      {
        free(v37[0]);
      }

      i = v36;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMAGPFragmentShader::replacePullMode_Or_ParentVertex_Index(void *a1, unsigned int *a2)
{
  v4 = *(*(a2 + 6) + 4 * *a2);
  v5 = *(a1 + *(*a1 - 24) + 1904);
  v6 = llvm::ConstantInt::get();
  v7 = a1 + *(*a1 - 24);
  v8 = *(a2 + 3);
  v11 = 257;
  return llvm::IRBuilderBase::CreateCast((v7 + 1712), 48, v6, v8, v10);
}

uint64_t llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          llvm::deallocate_buffer(v5, (*v5 + 65));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAGPFragmentShader::getBarycentricCoordVarying@<X0>(AGCLLVMUserShader *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  v15 = 0;
  AGCLLVMAGPFragmentShader::agpParseStageIOMetadata(a1, a3, v17, &v18 + 1, &v18, &v16, &v15, &v14);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  if (v15 == 2 && a2 == *(a1 + *(*a1 - 24) + 1888))
  {
    v8 = 5;
  }

  else
  {
    v8 = v15;
  }

  v10 = v18;
  v9 = HIDWORD(v18);
  *(a4 + 16) = 0;
  *a4 = 0uLL;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0uLL;
  *(a4 + 48) = a4 + 64;
  *(a4 + 56) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign((a4 + 48), 5uLL, -559038737);
  *(a4 + 8) = v10;
  *(a4 + 12) = v8;
  *a4 = 2;
  *(a4 + 4) = v9;
  v11 = v9 != 0;
  *(a4 + 16) = v11;
  result = AGCLLVMUserFragmentShader::setupInterpolation(a1, 8, v11, 2);
  *(a4 + 32) = result;
  *(a4 + 40) = v13;
  return result;
}

uint64_t llvm::StringMap<InterpolationLocation,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

uint64_t llvm::StringMap<AGCCodeTranslator::VertexShaderVaryingType,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

uint64_t AGCLLVMAGPFragmentShader::getPrimitiveIdVarying@<X0>(AGCLLVMAGPFragmentShader *this@<X0>, llvm::Type *a2@<X1>, uint64_t a3@<X8>)
{
  ComponentType = AGCLLVMBuilder::getComponentType((this + *(*this - 24) + 1704), a2, &v8);
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = a3 + 64;
  *(a3 + 56) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign((a3 + 48), 5uLL, -559038737);
  *a3 = 0x100000001;
  *(a3 + 8) = 3;
  *(a3 + 12) = ComponentType;
  *(a3 + 16) = 0;
  result = AGCLLVMUserFragmentShader::setupInterpolation(this, 7, 0, 1);
  *(a3 + 32) = result;
  *(a3 + 40) = v7;
  return result;
}

void AGCLLVMAGPFragmentShader::getFragmentViewportOrLayerIdVarying(void *a1@<X0>, const llvm::Type *a2@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a1[801] + 68) & 0x100) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), a2, &v12);
  AGCLLVMAGPFragmentShader::getFragmentVarying(a5, a1, a2, a3, a4, v10, 3, 1, ComponentType, 0);
}

uint64_t AGCLLVMBuilder::CreateGEP(uint64_t a1, llvm::Type **this, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  v10 = AGCLLVMBuilder::tryDeducePointeeType(this, this);
  if (v10)
  {
    v11 = v10;
    llvm::Type::isOpaquePointerTy(*this);
    v12 = a1 + 8;
    v13 = v11;
  }

  else
  {
    v12 = a1 + 8;
    v13 = 0;
  }

  return llvm::IRBuilderBase::CreateGEP(v12, v13, this, a3, a4, a5);
}

uint64_t AGCLLVMAGPFragmentShader::calculateInterpolationCoords(AGCLLVMAGPFragmentShader *this, uint64_t a2, llvm::Value *a3)
{
  v3 = a2;
  v5 = *(this + *(*this - 24) + 1872);
  if (a2 >= 2)
  {
    llvm::FixedVectorType::get();
  }

  v6 = 0;
  v56 = llvm::UndefValue::get();
  v57 = v56;
  v51 = this + 1704;
  v49 = this + 1712;
  v54 = v56;
  v55 = v56;
  v53 = &v57;
  v7 = &v55;
  v8 = 1;
  v9 = v3;
  do
  {
    v10 = v8;
    v11 = (this + *(*this - 24));
    v12 = v11[271];
    v13 = v11[237];
    v50 = v8;
    if (*(v12 + 1912) == 1)
    {
      v14 = 1696;
      if (v10)
      {
        v14 = 1688;
      }

      if (*(v12 + v14))
      {
        v15 = strlen(*(v12 + v14));
      }

      v17 = v11[234];
      inserted = AGCLLVMBuilder::getOrInsertFunction<>((v11 + 213));
      v19 = *(*this - 24);
      v61 = 257;
      v20 = llvm::IRBuilderBase::CreateCall(&v49[v19], *(inserted + 24), inserted, 0, 0, v60);
      v59 = 257;
      FPToUI = llvm::IRBuilderBase::CreateFPToUI(&v49[v19], v20, v13, v58);
      v22 = *(*this - 24);
      v23 = llvm::ConstantInt::get();
      v61 = 257;
      v16 = llvm::IRBuilderBase::CreateAnd(&v49[v22], FPToUI, v23, v60);
    }

    else
    {
      v16 = (*(*this + 640))(this, v13, v6);
    }

    v24 = this + *(*this - 24);
    v25 = *(v24 + 234);
    v61 = 257;
    UIToFP = llvm::IRBuilderBase::CreateUIToFP((v24 + 1712), v16, v25, v60);
    v26 = &v51[*(*this - 24)];
    v61 = 257;
    v27 = *(v26 + 25);
    v28 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v26 + 8), a3, v28, v60);
    if (v3)
    {
      v30 = Element;
      v31 = 0;
      do
      {
        if (v3 < 2)
        {
          *v53 = UIToFP;
          InsertElement = v30;
        }

        else
        {
          v32 = v3;
          v33 = &v51[*(*this - 24)];
          v34 = *v53;
          v61 = 257;
          v35 = *(v33 + 25);
          v36 = llvm::ConstantInt::get();
          *v53 = llvm::IRBuilderBase::CreateInsertElement((v33 + 8), v34, UIToFP, v36, v60);
          v37 = &v51[*(*this - 24)];
          v38 = *v7;
          v61 = 257;
          v39 = *(v37 + 25);
          v40 = llvm::ConstantInt::get();
          v41 = (v37 + 8);
          v3 = v32;
          InsertElement = llvm::IRBuilderBase::CreateInsertElement(v41, v38, v30, v40, v60);
        }

        *v7 = InsertElement;
        ++v31;
      }

      while (v9 != v31);
    }

    v43 = *(*this - 24);
    v44 = *v53;
    v45 = *v7;
    v61 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd(&v49[v43], v44, v45, v60);
    v8 = 0;
    *v53 = FAdd;
    v6 = 1;
    v53 = &v56;
    v7 = &v54;
  }

  while ((v50 & 1) != 0);
  return v57;
}

uint64_t AGCLLVMAGPFragmentShader::interpolateAtOffset(uint64_t *a1, _OWORD *a2, unsigned int a3, llvm::Type **a4, uint64_t a5, llvm::Value *a6)
{
  v6 = a6;
  v7 = a3;
  v8 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + *(*a1 - 24) + 1872);
  if (a3 < 2)
  {
    v11 = llvm::UndefValue::get();
    v113 = v11;
    v114 = v11;
    v115 = v11;
    v12 = a1 + 213;
    if (!v7)
    {
      FAdd = v11;
      goto LABEL_14;
    }

    v100 = a1 + 213;
    v101 = v8;
    v102 = v6;
  }

  else
  {
    v101 = a2;
    v102 = a6;
    llvm::FixedVectorType::get();
    v113 = llvm::UndefValue::get();
    v114 = v113;
    v115 = v113;
    v100 = a1 + 213;
  }

  v13 = 0;
  v14 = a1 + 213;
  v103 = v7;
  do
  {
    GEP = a4;
    if (*(a5 + 8) == 17)
    {
      v16 = v14 + *(*a1 - 24);
      v17 = *(v16 + 200);
      v110[0] = llvm::ConstantInt::get();
      v18 = *(a1 + *(*a1 - 24) + 1904);
      v110[1] = llvm::ConstantInt::get();
      v109 = 257;
      GEP = AGCLLVMBuilder::CreateGEP(v16, a4, v110, 2, v108);
    }

    v19 = a1 + *(*a1 - 24);
    v20 = *(v19 + 252);
    v109 = 257;
    llvm::Type::isOpaquePointerTy(*GEP);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v19 + 214, v20, GEP, 0, v108);
    for (i = 0; i != 3; ++i)
    {
      v23 = v14 + *(*a1 - 24);
      v109 = 257;
      v24 = *(v23 + 25);
      v25 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v23 + 8), AlignedLoad, v25, v108);
      if (v7 >= 2)
      {
        v27 = v14 + *(*a1 - 24);
        v28 = *(&v113 + i);
        v109 = 257;
        v29 = *(v27 + 25);
        v30 = llvm::ConstantInt::get();
        v31 = (v27 + 8);
        v7 = a3;
        Element = llvm::IRBuilderBase::CreateInsertElement(v31, v28, Element, v30, v108);
      }

      *(&v113 + i) = Element;
    }

    ++v13;
  }

  while (v13 != v103);
  FAdd = v115;
  v8 = v101;
  v6 = v102;
  v12 = v100;
LABEL_14:
  v33 = v12 + 1;
  v112 = *v8;
  for (j = 8; j != -8; j -= 8)
  {
    v35 = *(*a1 - 24);
    v36 = *(&v113 + j);
    v37 = *(&v112 + j);
    v109 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul(v33 + v35, v36, v37, v108);
    v109 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd(v33 + v35, FMul, FAdd, v108);
  }

  if (v6)
  {
    v39 = a1 + *(*a1 - 24);
    v40 = AGCLLVMBuilder::splat((v39 + 1704), a3, v6);
    v109 = 257;
    FAdd = llvm::IRBuilderBase::CreateFDiv((v39 + 1712), FAdd, v40, v108);
  }

  v41 = (a1 + *(*a1 - 24));
  if (*(v41[271] + 1893) == 1)
  {
    v42 = v41[238];
    v43 = llvm::ConstantInt::get();
    v44 = AGCLLVMBuilder::splat((v41 + 213), a3, v43);
    v45 = a1 + *(*a1 - 24);
    v46 = *(v45 + 238);
    v47 = llvm::ConstantInt::get();
    v48 = AGCLLVMBuilder::splat((v45 + 1704), a3, v47);
    v49 = a1 + *(*a1 - 24);
    v50 = *(v49 + 238);
    v51 = llvm::ConstantInt::get();
    v52 = AGCLLVMBuilder::splat((v49 + 1704), a3, v51);
    v53 = a1 + *(*a1 - 24);
    v54 = *(v53 + 238);
    v55 = llvm::ConstantInt::get();
    v56 = AGCLLVMBuilder::splat((v53 + 1704), a3, v55);
    v57 = (a1 + *(*a1 - 24));
    llvm::Type::getFPMantissaWidth(v57[234]);
    v58 = v57[238];
    v59 = llvm::ConstantInt::get();
    v60 = AGCLLVMBuilder::splat((v57 + 213), a3, v59);
    v61 = *a1;
    v62 = *(a1 + *(*a1 - 24) + 1904);
    v105 = v52;
    v63 = v48;
    if (a3 >= 2)
    {
      v62 = llvm::FixedVectorType::get();
      v61 = *a1;
    }

    v64 = a1 + *(v61 - 24);
    v109 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v64 + 1712), 49, v113, v62, v108);
    v66 = a1 + *(*a1 - 24);
    v109 = 257;
    v67 = llvm::IRBuilderBase::CreateCast((v66 + 1712), 49, v114, v62, v108);
    v68 = a1 + *(*a1 - 24);
    v109 = 257;
    v69 = llvm::IRBuilderBase::CreateAnd((v68 + 1712), Cast, v44, v108);
    v70 = a1 + *(*a1 - 24);
    v109 = 257;
    v71 = llvm::IRBuilderBase::CreateAnd((v70 + 1712), Cast, v63, v108);
    v111 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((v70 + 1712), v71, v60, v110);
    v73 = a1 + *(*a1 - 24);
    v109 = 257;
    v74 = llvm::IRBuilderBase::CreateAnd((v73 + 1712), v67, v44, v108);
    v75 = a1 + *(*a1 - 24);
    v109 = 257;
    v76 = llvm::IRBuilderBase::CreateAnd((v75 + 1712), v67, v63, v108);
    v111 = 257;
    v77 = llvm::IRBuilderBase::CreateLShr((v75 + 1712), v76, v60, v110);
    v78 = (a1 + *(*a1 - 24));
    v109 = 257;
    v79 = v69;
    ICmp = llvm::IRBuilderBase::CreateICmp(v78 + 214, 33, v69, v105, v108);
    v81 = (a1 + *(*a1 - 24));
    v109 = 257;
    v82 = llvm::IRBuilderBase::CreateICmp(v81 + 214, 32, LShr, v105, v108);
    v83 = (a1 + *(*a1 - 24));
    v109 = 257;
    v84 = llvm::IRBuilderBase::CreateICmp(v83 + 214, 33, v74, v105, v108);
    v85 = (a1 + *(*a1 - 24));
    v109 = 257;
    v86 = llvm::IRBuilderBase::CreateICmp(v85 + 214, 32, v77, v105, v108);
    v87 = a1 + *(*a1 - 24);
    v109 = 257;
    v88 = llvm::IRBuilderBase::CreateAnd((v87 + 1712), ICmp, v82, v108);
    v89 = a1 + *(*a1 - 24);
    v109 = 257;
    v90 = llvm::IRBuilderBase::CreateAnd((v89 + 1712), v84, v86, v108);
    v91 = a1 + *(*a1 - 24);
    v109 = 257;
    v92 = llvm::IRBuilderBase::CreateAnd((v91 + 1712), v79, v56, v108);
    v93 = *v88;
    v111 = 257;
    v94 = llvm::IRBuilderBase::CreateCast((v91 + 1712), 38, v92, v93, v110);
    v95 = a1 + *(*a1 - 24);
    v109 = 257;
    v96 = llvm::IRBuilderBase::CreateAnd((v95 + 1712), v88, v90, v108);
    v111 = 257;
    llvm::IRBuilderBase::CreateAnd((v95 + 1712), v96, v94, v110);
    v97 = a1 + *(*a1 - 24);
    v109 = 257;
    FAdd = llvm::IRBuilderBase::CreateSelect();
  }

  v98 = *MEMORY[0x277D85DE8];
  return FAdd;
}

uint64_t llvm::IRBuilderBase::CreateFDiv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 21, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v7);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

uint64_t llvm::IRBuilderBase::CreateFPToUI(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 41, a2, a3, a4);
}

uint64_t llvm::IRBuilderBase::CreateGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 0);
  if (!v12)
  {
    v12 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
  }

  return v12;
}

uint64_t llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          llvm::deallocate_buffer(v5, (*v5 + 25));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

char *llvm::PassInfoMixin<AGCPrintIRPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_1[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCPrintIRPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCPrintIRPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x61)
  {
    v1 = v0;
  }

  else
  {
    v1 = 97;
  }

  v2 = &aStringrefLlvmG[v1];
  v3 = 97 - v1;
  if ((97 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 97 - v1;
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

void AGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((v1 + 7528));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v1 + 7528));
}

void virtual thunk toAGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v1 + 7920));

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (v1 + 7920);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void non-virtual thunk toAGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 3384));

  JUMPOUT(0x20F331DC0);
}

{

  AGCLLVMObject::~AGCLLVMObject((this + 3384));
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildPixelPositionInTile(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMAGPFragmentShaderGen3::buildSimdGroupIndexInThreadgroup(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v15, "llvm.agx2.simd.group", "");
  v4 = this + *(*this - 24);
  v5 = *(v4 + 238);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v4 + 1704));
  v7 = this + *(*this - 24);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall((v7 + 1712), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 38, v8, a2, v12);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildThreadIndexInSimdGroup(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v15, "llvm.agx2.simd.element", "");
  v4 = this + *(*this - 24);
  v5 = *(v4 + 238);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v4 + 1704));
  v7 = this + *(*this - 24);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall((v7 + 1712), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 38, v8, a2, v12);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildTileIndex(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  if (!*(this + 981))
  {
    v4 = llvm::User::operator new(0x58);
    v5 = (this + *(*this - 24));
    v6 = v5[267];
    v7 = v5[238];
    v38[0] = "agc.tile.count.x";
    v39 = 259;
    v27 = *(v5[271] + 972) | 0x100000000;
    v8 = llvm::GlobalVariable::GlobalVariable();
    *(v8 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v9 = this + *(*this - 24);
    v10 = *(v9 + 268);
    v11 = AGCLLVMBuilder::buildGlobalMetadata((v9 + 1704), v4);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
    llvm::ValueHandleBase::operator=((this + 7832), v4);
  }

  v12 = *(this + *(*this - 24) + 2168);
  v13 = (*(*v12 + 688))(v12);
  v14 = this + *(*this - 24);
  v35 = *(v14 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v14 + 1712));
  v37 = *(v14 + 452);
  v15 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v13, &v35, a2, 0);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = *(this + *(*this - 24) + 2168);
  v17 = (*(*v16 + 688))(v16);
  v18 = this + *(*this - 24);
  v32 = *(v18 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (v18 + 1712));
  v34 = *(v18 + 452);
  v19 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v17, &v32, a2, 1);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v20 = this + *(*this - 24);
  v21 = *(this + 981);
  v39 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v20 + 1704), v21, v38);
  v31 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v20 + 1712), 38, Load, a2, v30);
  v29 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v20 + 1712), v19, Cast, v28);
  v25 = this + *(*this - 24);
  v39 = 257;
  return llvm::IRBuilderBase::CreateAdd((v25 + 1712), Mul, v15, v38);
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildPixelsPerTile(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2, int a3)
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

uint64_t AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v9 = a2;
  v10 = result;
  v50 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 8);
  if (a2 && v11 == 16)
  {
    v13 = a5;
    result = llvm::DataLayout::getStructLayout();
    if (*(v9 + 12))
    {
      v14 = 0;
      v15 = result + 16;
      do
      {
        v16 = v7;
        v17 = *(v15 + 8 * v14);
        llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(a3, v14);
        v18 = v9;
        v19 = *(*(v9 + 16) + 8 * v14);
        std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__value_func[abi:nn200100](v49, a7);
        v20 = v17 + v13;
        v7 = v16;
        v21 = v19;
        v9 = v18;
        AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(v10, v21, a3, a4, v20, v16, v49);
        result = std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v49);
        --*(a3 + 8);
        ++v14;
      }

      while (v14 < *(v18 + 12));
    }

    goto LABEL_33;
  }

  if (a2 && v11 == 17)
  {
    v22 = *(a4 + 8);
    if (v22)
    {
      v25 = a4 + 8;
      do
      {
        v26 = *(v22 + 28);
        v27 = v26 >= a5;
        v28 = v26 < a5;
        if (v27)
        {
          v25 = v22;
        }

        v22 = *(v22 + 8 * v28);
      }

      while (v22);
      if (v25 != a4 + 8 && *(v25 + 28) <= a5 && *(a2 + 32))
      {
        v29 = result;
        LODWORD(v30) = 0;
        v31 = *(v25 + 32);
        do
        {
          TypeAllocSize = llvm::DataLayout::getTypeAllocSize((v29 + 224), *(v9 + 24));
          v46 = v32;
          v33 = llvm::TypeSize::operator unsigned long long();
          llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(a3, v30);
          v34 = *(v9 + 24);
          std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__value_func[abi:nn200100](v48, a7);
          AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(v29, v34, a3, a4, (v31 + v30 * v33), v30 == 0, v48);
          result = std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v48);
          --*(a3 + 8);
          v30 = (v30 + 1);
        }

        while (*(v9 + 32) > v30);
      }
    }

    goto LABEL_33;
  }

  if (a6)
  {
    v37 = *(a4 + 8);
    v35 = a4 + 8;
    v36 = v37;
    if (!v37)
    {
      goto LABEL_33;
    }

    v38 = v35;
    do
    {
      v39 = *(v36 + 28);
      v27 = v39 >= a5;
      v40 = v39 < a5;
      if (v27)
      {
        v38 = v36;
      }

      v36 = *(v36 + 8 * v40);
    }

    while (v36);
    if (v38 == v35 || *(v38 + 28) > a5)
    {
      goto LABEL_33;
    }

    a5 = *(v38 + 32);
  }

  TypeAllocSize = a2;
  v47 = a5;
  v41 = *(a7 + 24);
  if (v41)
  {
    result = (*(*v41 + 48))(v41, &TypeAllocSize, a3, &v47);
LABEL_33:
    v42 = *MEMORY[0x277D85DE8];
    return result;
  }

  v43 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v43);
}

uint64_t std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  v5 = *(a1 + 8);
  v6 = v5 + *(*v5 - 24);
  v7 = **(a1 + 16);
  v8 = *a3;
  v9 = *(a3 + 8);
  v14 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue(v6 + 1712, v7, v8, v9, v13);
  v13[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*(v5 + 7576), *(v5 + 7592), v4, v13);
  if (result)
  {
    v12 = v13[0] == *(v5 + 7576) + 40 * *(v5 + 7592);
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    return llvm::IRBuilderBase::CreateAlignedStore((v5 + *(*v5 - 24) + 1712), Value, *(v13[0] + 32), 0);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 40 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 40 * (v13 & v4));
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

__n128 std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825585F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, __int16 *a4)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 16);
  v8 = *(v7 + 3764);
  v9 = *(v7 + *(*v7 - 24) + 1896);
  v10 = llvm::ConstantInt::get();
  v11 = v7 + *(*v7 - 24);
  v12 = *(v11 + 2168);
  v51 = *(v11 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v11 + 1712));
  v53 = *(v11 + 1808);
  v13 = (*(*v12 + 208))(v12, &v51, v10);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = v7 + *(*v7 - 24);
  if (*(v7 + 3766) == 1)
  {
    v15 = *(v7 + 4528);
    v16 = *(v14 + 1896);
    v17 = llvm::ConstantInt::get();
  }

  else
  {
    v48 = *(v14 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (v14 + 1712));
    v50 = *(v14 + 1808);
    v17 = AGCLLVMObject::buildReadDynamicLIBSize(v14, &v48);
    if (v49)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v18 = *(v7 + *(*v7 - 24) + 2168);
  (*(*v18 + 688))(v18);
  v19 = v5;
  if (*(v5 + 8) == 15)
  {
    v19 = **(v5 + 16);
  }

  v20 = ~(-1 << llvm::DataLayout::getABITypeAlign((v7 + 224), v19)) & (v8 + v6);
  v21 = (*(**(v7 + *(*v7 - 24) + 2168) + 688))();
  v22 = v7 + *(*v7 - 24);
  v45 = *(v22 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v46, (v22 + 1712));
  v47 = *(v22 + 1808);
  if (v20)
  {
    v23 = 1 << ((*(*(v7 + 5280) + 32) >> 10) & 3);
    v24 = *(v7 + *(*v7 - 24) + 1896);
    v25 = llvm::ConstantInt::get();
    v26 = AGCLLVMGen3TargetLowerer::splitUnalignedLoads(v21, &v45, 0, v23, v17, v5, v25, v10, v13, 0, 0);
  }

  else
  {
    v27 = (1 << ((*(*(v7 + 5280) + 32) >> 10) & 3));
    v28 = *(v7 + *(*v7 - 24) + 1896);
    v29 = llvm::ConstantInt::get();
    v26 = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(v21, &v45, 0, 0, v27, v17, v5, v29, v10, v13, 0, 0);
  }

  v30 = v26;
  if (v46)
  {
    llvm::MetadataTracking::untrack();
  }

  NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v30);
  v32 = (v7 + *(*v7 - 24));
  if (NextNonDebugInstruction)
  {
    v33 = llvm::Instruction::getNextNonDebugInstruction(v30);
    llvm::IRBuilderBase::SetInsertPoint((v32 + 214), v33);
  }

  else
  {
    v34 = *(v30 + 5);
    v32[220] = v34;
    v32[221] = v34 + 40;
  }

  v35 = v7 + *(*v7 - 24);
  v44 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v35 + 1712, 49, v30, v5, v43);
  v37 = v7 + *(*v7 - 24);
  v38 = **(a1 + 8);
  v39 = *a3;
  v40 = *(a3 + 8);
  v44 = 257;
  result = llvm::IRBuilderBase::CreateInsertValue(v37 + 1712, v38, Cast, v39, v40, v43);
  **(a1 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825585A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return (a1 + 16 * a2);
  }

  LODWORD(v3) = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v4 = (a1 + 16 * v3);
  v5 = *v4;
  if (*v4 != a3)
  {
    v6 = 1;
    while (v5 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v5 = *(a1 + 16 * v3);
      if (v5 == a3)
      {
        return (a1 + 16 * v3);
      }
    }

    return (a1 + 16 * a2);
  }

  return v4;
}

uint64_t *llvm::TrackingMDRef::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    if (*a1)
    {
      llvm::MetadataTracking::untrack();
    }

    v4 = *a2;
    *a1 = *a2;
    if (v4)
    {
      llvm::MetadataTracking::retrack();
      *a2 = 0;
    }
  }

  return a1;
}

llvm::ValueHandleBase *std::__function::__func<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::operator()(uint64_t a1, llvm::Type **a2, uint64_t a3, int *a4)
{
  v4 = *a2;
  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = v6 + *(*v6 - 24);
  v18 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca((v7 + 1712), v4, 0, &v15);
  v15 = v4;
  v16[0] = 4;
  v16[1] = 0;
  v17 = Alloca;
  if (Alloca != -8192 && Alloca != -4096 && Alloca != 0)
  {
    llvm::ValueHandleBase::AddToUseList(v16);
  }

  v19 = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*(v6 + 7576), *(v6 + 7592), v5, &v19);
  v11 = v19;
  if ((v10 & 1) == 0)
  {
    v12 = *(v6 + 7584);
    v13 = *(v6 + 7592);
    if (4 * v12 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v12 - *(v6 + 7588) > v13 >> 3)
    {
LABEL_10:
      ++*(v6 + 7584);
      if (*v11 != -1)
      {
        --*(v6 + 7588);
      }

      *v11 = v5;
      *(v11 + 8) = xmmword_20E70C520;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      goto LABEL_13;
    }

    llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::grow(v6 + 7576, v13);
    v19 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*(v6 + 7576), *(v6 + 7592), v5, &v19);
    v11 = v19;
    goto LABEL_10;
  }

LABEL_13:
  *(v11 + 8) = v15;
  result = llvm::ValueHandleBase::operator=((v11 + 16), v16);
  if (v17 != -8192 && v17 != -4096)
  {
    if (v17)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  return result;
}

void *llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x20F330650](v8, 40 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      v14 = result + 10;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_20E70C4F0)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 20) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 10) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_20E70C4E0)))).i32[1])
        {
          *v14 = -1;
          v14[10] = -1;
        }

        v11 += 4;
        v14 += 40;
      }

      while (((v12 / 0x28 + 4) & 0xFFFFFFFFFFFFFFCLL) != v11);
    }

    v17 = 5 * v3;
    if (v3)
    {
      v18 = 40 * v3;
      v19 = (v4 + 16);
      do
      {
        v20 = *(v19 - 4);
        if (v20 <= 0xFFFFFFFD)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *(v19 - 4);
          *(v21 + 1) = *(v19 - 1);
          llvm::ValueHandleBase::ValueHandleBase((v21 + 4), 2u, v19);
          ++*(a1 + 8);
          v22 = v19[2];
          if (v22 != -8192 && v22 != -4096 && v22)
          {
            llvm::ValueHandleBase::RemoveFromUseList(v19);
          }
        }

        v19 += 5;
        v18 -= 40;
      }

      while (v18);
    }

    return llvm::deallocate_buffer(v4, (8 * v17));
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = 40 * v23 - 40;
      v26 = vdupq_n_s64(v25 / 0x28);
      v27 = result + 10;
      do
      {
        v28 = vdupq_n_s64(v24);
        v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_20E70C4F0)));
        if (vuzp1_s16(v29, *v26.i8).u8[0])
        {
          *(v27 - 20) = -1;
        }

        if (vuzp1_s16(v29, *&v26).i8[2])
        {
          *(v27 - 10) = -1;
        }

        if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_20E70C4E0)))).i32[1])
        {
          *v27 = -1;
          v27[10] = -1;
        }

        v24 += 4;
        v27 += 40;
      }

      while (((v25 / 0x28 + 4) & 0xFFFFFFFFFFFFFFCLL) != v24);
    }
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282558560;
  a2[1] = v2;
  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPFragmentShaderGen3Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPFragmentShaderGen3Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGFragShaderGen3Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGFragShaderGen3Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPFragmentShaderGen3>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_2[v1];
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

void AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this)
{
  AGCLLVMObject::~AGCLLVMObject((v1 + 7920));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v1 + 7920));
}

void virtual thunk toAGCLLVMAGPFragmentShaderGen4::~AGCLLVMAGPFragmentShaderGen4(AGCLLVMAGPFragmentShaderGen4 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825510B8;
  v1[1008] = &unk_2825514C0;
  v1[1221] = &unk_2825515D0;
  v1[567] = &unk_282551388;
  v2 = v1[990];
  if (v2 != v1 + 992)
  {
    free(v2);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v1, off_2825515E0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1008));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825510B8;
  v1[1008] = &unk_2825514C0;
  v1[1221] = &unk_2825515D0;
  v1[567] = &unk_282551388;
  v2 = v1[990];
  if (v2 != v1 + 992)
  {
    free(v2);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v1, off_2825515E0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1008));
}

void non-virtual thunk toAGCLLVMAGPFragmentShaderGen4::~AGCLLVMAGPFragmentShaderGen4(AGCLLVMAGPFragmentShaderGen4 *this)
{
  v2 = (this - 4536);
  *(this - 567) = &unk_2825510B8;
  v3 = (this + 3528);
  *(this + 441) = &unk_2825514C0;
  *(this + 654) = &unk_2825515D0;
  *this = &unk_282551388;
  v4 = *(this + 423);
  if (v4 != this + 3400)
  {
    free(v4);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v2, off_2825515E0);
  AGCLLVMObject::~AGCLLVMObject(v3);

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (this - 4536);
  *(this - 567) = &unk_2825510B8;
  v3 = (this + 3528);
  *(this + 441) = &unk_2825514C0;
  *(this + 654) = &unk_2825515D0;
  *this = &unk_282551388;
  v4 = *(this + 423);
  if (v4 != this + 3400)
  {
    free(v4);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v2, off_2825515E0);

  AGCLLVMObject::~AGCLLVMObject(v3);
}

uint64_t AGCLLVMAGPFragmentShaderGen4::setupPerPrimitiveVarying(AGCLLVMAGPFragmentShaderGen4 *this, unsigned int a2, int a3, int a4)
{
  v6 = this + *(*this - 24);
  v7 = 1872;
  if (a4)
  {
    v7 = 1856;
  }

  v8 = *&v6[v7];
  if (a3 != 1)
  {
    v9 = *&v6[v7];
    llvm::FixedVectorType::get();
  }

  v10 = llvm::User::operator new(0x58);
  v11 = *(this + *(*this - 24) + 2136);
  llvm::GlobalVariable::GlobalVariable();
  v12 = *(this + 1982);
  if (v12 >= *(this + 1983))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (*(this + 990) + 16 * v12);
  *v13 = a2;
  v13[1] = v10;
  ++*(this + 1982);
  return v10;
}

void AGCLLVMAGPFragmentShaderGen4::setupPerPrimitiveVaryings(AGCLLVMAGPFragmentShaderGen4 *this)
{
  v112 = *MEMORY[0x277D85DE8];
  if (*(this + 1982))
  {
    v2 = this + *(*this - 24);
    v88 = *(v2 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v2 + 1712));
    v90 = *(v2 + 452);
    v3 = *(this + 798);
    if (v3 && v3[16] >= 0x1Cu)
    {
      v4 = this + *(*this - 24);
      NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v3);
      llvm::IRBuilderBase::SetInsertPoint((v4 + 1712), NextNonDebugInstruction);
    }

    else
    {
      v6 = *(*(this + 20) + 80);
      if (v6)
      {
        v7 = (v6 - 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = this + *(*this - 24);
      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v7);
      llvm::IRBuilderBase::SetInsertPoint((v8 + 1712), v7, FirstInsertionPt);
    }

    AGCLLVMAGPFragmentShader::getFragmentVarying(&__p, this, *(this + *(*this - 24) + 1904), "agc.per_prim.primitive_address_2", 0x20uLL, 1, 3, 1, 7, 0);
    v10 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p);
    v11 = this + *(*this - 24);
    v12 = *(v11 + 239);
    LOWORD(v94) = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 39, v10, v12, &v91);
    if (v102 != v103)
    {
      free(v102);
    }

    AGCLLVMAGPFragmentShader::getFragmentVarying(&__p, this, *(this + *(*this - 24) + 1904), "agc.per_prim.primitive_address", 0x1EuLL, 1, 3, 1, 7, 0);
    v14 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p);
    v15 = this + *(*this - 24);
    v16 = *(v15 + 239);
    LOWORD(v94) = 257;
    v17 = llvm::IRBuilderBase::CreateCast((v15 + 1712), 39, v14, v16, &v91);
    v18 = this + *(*this - 24);
    LOWORD(v94) = 257;
    v19 = *v17;
    v20 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((v18 + 1712), v17, v20, &v91);
    if (v102 != v103)
    {
      free(v102);
    }

    v22 = this + *(*this - 24);
    LOWORD(v100) = 257;
    v76 = llvm::IRBuilderBase::CreateOr((v22 + 1712), Cast, Shl, &__p);
    if (!*(this + 986))
    {
      AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(&__p, this, *(this + *(*this - 24) + 1904), "air.amplification_id", 0x14uLL);
      v23 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p);
      llvm::ValueHandleBase::operator=((this + 7872), v23);
      *(this + 6460) = 1;
      if (v102 != v103)
      {
        free(v102);
      }
    }

    if (!*(this + 989))
    {
      AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(&__p, this, *(this + *(*this - 24) + 1904), "air.amplification_count", 0x17uLL);
      v24 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p);
      llvm::ValueHandleBase::operator=((this + 7896), v24);
      *(this + 6461) = 1;
      if (v102 != v103)
      {
        free(v102);
      }
    }

    v25 = *this;
    v26 = *(*(this + *(*this - 24) + 2168) + 1878);
    __p = 0;
    v98 = 0u;
    v99 = &v101;
    v100 = 0x800000000;
    v103[61] = 0xFFFFFFFFLL;
    v104 = v26;
    v110[7] = 0;
    memset(v105, 0, sizeof(v105));
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    memset(v110, 0, 26);
    v111 = 1;
    v27 = *(this + 1630);
    if (v27)
    {
      v28 = *(this + 814);
      v29 = v27 << 6;
      do
      {
        GenericVaryingAllocator::addVarying(&__p, v28);
        v28 += 64;
        v29 -= 64;
      }

      while (v29);
      v25 = *this;
    }

    GenericVaryingAllocator::allocate(&__p, *(this + *(v25 - 24) + 2168));
    v87[0] = 0;
    v87[1] = 4 * DWORD1(v106);
    if (v104)
    {
      v30 = (HIDWORD(v107) + 1) >> 1;
    }

    else
    {
      v30 = HIDWORD(v107);
    }

    v31 = v30 + DWORD1(v106);
    v86[0] = 4 * v31;
    v86[1] = 4 * (v31 + DWORD1(v109));
    v32 = this + *(*this - 24);
    v33 = *(v32 + 238);
    v34 = llvm::ConstantInt::get();
    v35 = this + *(*this - 24);
    v36 = *(this + 986);
    v37 = *(v35 + 238);
    LOWORD(v94) = 257;
    v38 = llvm::IRBuilderBase::CreateCast((v35 + 1712), 39, v36, v37, &v91);
    v85 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v32 + 1712), v34, v38, v84);
    v39 = this + *(*this - 24);
    v40 = *(v39 + 238);
    v41 = llvm::ConstantInt::get();
    v42 = this + *(*this - 24);
    v43 = *(v42 + 238);
    v44 = llvm::ConstantInt::get();
    v45 = *(this + 989);
    LOWORD(v94) = 257;
    v46 = llvm::IRBuilderBase::CreateMul((v42 + 1712), v44, v45, &v91);
    v85 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v39 + 1712), v41, v46, v84);
    v92 = 0;
    v91 = 0u;
    v93 = 0;
    v94 = 0u;
    v95[0] = v96;
    v95[1] = 0x500000000;
    llvm::SmallVectorImpl<unsigned int>::assign(v95, 5uLL, -559038737);
    v92 = 0;
    v91 = xmmword_20E70C550;
    *&v94 = AGCLLVMUserFragmentShader::setupInterpolation(this, 7, 0, 1);
    *(&v94 + 1) = v48;
    v49 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v91);
    v50 = *(*this - 24);
    v51 = this + 1712;
    v85 = 257;
    v52 = llvm::IRBuilderBase::CreateMul((this + v50 + 1712), Add, v49, v84);
    v53 = *(this + 1982);
    if (v53)
    {
      v54 = v52;
      v55 = *(this + 990);
      v56 = v55 + 16 * v53;
      do
      {
        if (v100)
        {
          v57 = v99;
          v58 = v100 << 6;
          while (*(v57 + 4) != *v55)
          {
            v57 += 8;
            v58 -= 64;
            if (!v58)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
LABEL_32:
          v57 = 0;
        }

        v59 = *(v55 + 8);
        v60 = v87;
        if (*(v57 + 57))
        {
          v60 = v86;
        }

        v61 = v60[*(v57 + 56)];
        v62 = *(v57 + 13);
        *(v57 + 56);
        v63 = *(this + *(*this - 24) + 1904);
        v64 = llvm::ConstantInt::get();
        if (*(v57 + 57) == 1)
        {
          v65 = *(*this - 24);
          v85 = 257;
          v64 = llvm::IRBuilderBase::CreateAdd(&v51[v65], v64, Mul, v84);
        }

        v66 = *(*this - 24);
        v85 = 257;
        v67 = llvm::IRBuilderBase::CreateAdd(&v51[v66], v64, v54, v84);
        v68 = *(this + *(*this - 24) + 1912);
        v83 = 257;
        v69 = llvm::IRBuilderBase::CreateCast(&v51[v66], 39, v67, v68, v82);
        v81 = 257;
        v70 = llvm::IRBuilderBase::CreateAdd(&v51[v66], v76, v69, v80);
        v71 = *(*this - 24);
        v72 = *v59;
        v85 = 257;
        llvm::IRBuilderBase::CreateCast(&v51[v71], 48, v70, v72, v84);
        llvm::Value::replaceAllUsesWith();
        v55 += 16;
      }

      while (v55 != v56);
    }

    v73 = this + *(*this - 24);
    v77 = v88;
    v78 = v89;
    if (v89)
    {
      llvm::MetadataTracking::track();
    }

    v79 = v90;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v77, (v73 + 1712));
    if (v78)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v95[0] != v96)
    {
      free(v95[0]);
    }

    *&v91 = v105;
    std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v91);
    llvm::SmallVector<GenericVarying,8u>::~SmallVector(&v99);
    if (__p)
    {
      *&v98 = __p;
      operator delete(__p);
    }

    if (v89)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v74 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::IRBuilderBase::CreateShl(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 152))(*(this + 9));
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

void AGCLLVMAGPFragmentShaderGen4::getPrimitiveIdVarying(AGCLLVMAGPFragmentShaderGen4 *this@<X0>, llvm::Type *a2@<X1>, unsigned int *a3@<X8>)
{
  ComponentType = AGCLLVMBuilder::getComponentType((this + *(*this - 24) + 1704), a2, v14);
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 3) = 0;
  *(a3 + 2) = 0u;
  *(a3 + 6) = a3 + 16;
  *(a3 + 7) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(a3 + 6, 5uLL, -559038737);
  *a3 = 1;
  a3[2] = 3;
  a3[3] = ComponentType;
  a3[4] = 0;
  if ((*(*(this + 801) + 69) & 1) == 0 || (Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == *(this + 1622))
  {
    a3[1] = 1;
    *(a3 + 4) = AGCLLVMUserFragmentShader::setupInterpolation(this, 7, a3[4], *a3);
    *(a3 + 5) = v7;
  }

  else
  {
    v8 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((this + 6480), "agc.per_prim.primitive_id", 0x19uLL) + 8);
    v9 = *(this + 1630);
    v14[0] = 1;
    v14[1] = ComponentType;
    v15 = 0x300000003;
    v16 = v9;
    *__p = 0u;
    v18 = 0u;
    v19 = ComponentType == 1;
    v20 = v8 < 0;
    v21 = 0;
    if (ComponentType == 1)
    {
      v10 = 19;
    }

    else
    {
      v10 = 18;
    }

    if (ComponentType == 1)
    {
      v11 = 21;
    }

    else
    {
      v11 = 20;
    }

    if (v8 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v22 = v12;
    MEMORY[0x20F331AA0](__p, "agc.per_prim.primitive_id");
    v13 = llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(this + 6512, v14);
    a3[4] = v9;
    *(a3 + 1) = 0x300000003;
    *(a3 + 4) = (*(*this + 680))(this, v9, 1, 0, v13);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimplifyGenericIRAGPFragmentGen4Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimplifyGenericIRAGPFragmentGen4Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void AGCLLVMAGPFragmentShaderGen4::~AGCLLVMAGPFragmentShaderGen4(AGCLLVMAGPFragmentShaderGen4 *this)
{
  *this = &unk_2825510B8;
  v2 = (this + 8064);
  *(this + 1008) = &unk_2825514C0;
  *(this + 1221) = &unk_2825515D0;
  *(this + 567) = &unk_282551388;
  v3 = *(this + 990);
  if (v3 != this + 7936)
  {
    free(v3);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_2825515E0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825510B8;
  v2 = (this + 8064);
  *(this + 1008) = &unk_2825514C0;
  *(this + 1221) = &unk_2825515D0;
  *(this + 567) = &unk_282551388;
  v3 = *(this + 990);
  if (v3 != this + 7936)
  {
    free(v3);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_2825515E0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void non-virtual thunk toAGCLLVMAGPFragmentShaderGen6::~AGCLLVMAGPFragmentShaderGen6(AGCLLVMAGPFragmentShaderGen6 *this)
{
  v2 = (this - 4536);
  *(this - 567) = off_282556258;
  v3 = (this + 3528);
  *(this + 441) = off_282556660;
  *(this + 654) = &off_282556770;
  *this = &off_282556528;
  v4 = *(this + 423);
  if (v4 != this + 3400)
  {
    free(v4);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v2, off_282551C00);
  AGCLLVMObject::~AGCLLVMObject(v3);

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (this - 4536);
  *(this - 567) = off_282556258;
  v3 = (this + 3528);
  *(this + 441) = off_282556660;
  *(this + 654) = &off_282556770;
  *this = &off_282556528;
  v4 = *(this + 423);
  if (v4 != this + 3400)
  {
    free(v4);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v2, off_282551C00);

  AGCLLVMObject::~AGCLLVMObject(v3);
}

void AGCLLVMAGPFragmentShaderGen6::getPrimitiveIdVarying(AGCLLVMAGPFragmentShaderGen6 *this@<X0>, llvm::Type *a2@<X1>, unsigned int *a3@<X8>)
{
  ComponentType = AGCLLVMBuilder::getComponentType((this + *(*this - 24) + 1704), a2, v14);
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 3) = 0;
  *(a3 + 2) = 0u;
  *(a3 + 6) = a3 + 16;
  *(a3 + 7) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(a3 + 6, 5uLL, -559038737);
  *a3 = 1;
  a3[2] = 3;
  a3[3] = ComponentType;
  a3[4] = 0;
  if ((*(*(this + 801) + 69) & 1) == 0 || (Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == *(this + 1622))
  {
    a3[1] = 1;
    *(a3 + 4) = AGCLLVMUserFragmentShader::setupInterpolation(this, 7, a3[4], *a3);
    *(a3 + 5) = v7;
  }

  else
  {
    v8 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((this + 6480), "agc.per_prim.primitive_id", 0x19uLL) + 8);
    v9 = *(this + 1630);
    v14[0] = 1;
    v14[1] = ComponentType;
    v15 = 0x300000003;
    v16 = v9;
    *__p = 0u;
    v18 = 0u;
    v19 = ComponentType == 1;
    v20 = v8 < 0;
    v21 = 0;
    if (ComponentType == 1)
    {
      v10 = 19;
    }

    else
    {
      v10 = 18;
    }

    if (ComponentType == 1)
    {
      v11 = 21;
    }

    else
    {
      v11 = 20;
    }

    if (v8 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v22 = v12;
    MEMORY[0x20F331AA0](__p, "agc.per_prim.primitive_id");
    v13 = llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(this + 6512, v14);
    a3[4] = v9;
    *(a3 + 1) = 0x300000003;
    *(a3 + 4) = (*(*this + 680))(this, v9, 1, 0, v13);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void AGCLLVMAGPFragmentShaderGen6::~AGCLLVMAGPFragmentShaderGen6(AGCLLVMAGPFragmentShaderGen6 *this)
{
  *this = off_282556258;
  v2 = (this + 8064);
  *(this + 1008) = off_282556660;
  *(this + 1221) = &off_282556770;
  *(this + 567) = &off_282556528;
  v3 = *(this + 990);
  if (v3 != this + 7936)
  {
    free(v3);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_282551C00);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282556258;
  v2 = (this + 8064);
  *(this + 1008) = off_282556660;
  *(this + 1221) = &off_282556770;
  *(this + 567) = &off_282556528;
  v3 = *(this + 990);
  if (v3 != this + 7936)
  {
    free(v3);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_282551C00);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMAGPFragmentShaderGen3::setupROGTable(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a1 + 4528);
  v8 = *(a2 + 8);
  if (v8 != v7)
  {
    if (v8 <= v7)
    {
      llvm::SmallVectorImpl<unsigned int>::append(a2, v7 - v8);
    }

    else
    {
      *(a2 + 8) = v7;
    }
  }

  if (*(a1 + 7860))
  {
    goto LABEL_71;
  }

  v9 = *(a4 + 2);
  if (v9)
  {
      ;
    }
  }

  else
  {
    i = *a4;
  }

  v42 = *a4 + 8 * v9;
  if (i == v42)
  {
LABEL_71:
    v13 = 1;
  }

  else
  {
    v12 = *i;
    v13 = 1;
    do
    {
      v14 = v12[3];
      v15 = v12[4];
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = v15 * v14;
      if (v12[2] + a3 < v15 * v14 + v12[2] + a3)
      {
        v17 = v12[6];
        v18 = 4 * (v12[2] + a3);
        do
        {
          v19 = *(*a2 + v18);
          if (v19 == -1)
          {
            *(*a2 + v18) = v17;
          }

          else if (((v19 != v17) & v13) == 1)
          {
            v20 = **i;
            v51.__r_.__value_.__r.__words[0] = *i + 48;
            v51.__r_.__value_.__l.__size_ = v20;
            v50.__r_.__value_.__s.__data_[0] = 64;
            llvm::StringRef::split(&v52, &v51, &v50, 1);
            if (v53)
            {
              std::string::basic_string[abi:nn200100](&__dst, v53, v54);
            }

            else
            {
              memset(&__dst, 0, sizeof(__dst));
            }

            v21 = std::string::insert(&__dst, 0, "Raster order group for imageblock field ");
            v22 = v21->__r_.__value_.__r.__words[2];
            *&v47.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
            v47.__r_.__value_.__r.__words[2] = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            v23 = std::string::append(&v47, " in output struct (");
            v24 = v23->__r_.__value_.__r.__words[2];
            *&v48.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
            v48.__r_.__value_.__r.__words[2] = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v45, v17);
            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v45;
            }

            else
            {
              v25 = v45.__r_.__value_.__r.__words[0];
            }

            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v45.__r_.__value_.__l.__size_;
            }

            v27 = std::string::append(&v48, v25, size);
            v28 = v27->__r_.__value_.__r.__words[2];
            *&v49.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
            v49.__r_.__value_.__r.__words[2] = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            v29 = std::string::append(&v49, ") does not match raster order group in input struct (");
            v30 = v29->__r_.__value_.__r.__words[2];
            *&v50.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
            v50.__r_.__value_.__r.__words[2] = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v44, *(*a2 + v18));
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v44;
            }

            else
            {
              v31 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v44.__r_.__value_.__l.__size_;
            }

            v33 = std::string::append(&v50, v31, v32);
            v34 = v33->__r_.__value_.__r.__words[2];
            *&v51.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
            v51.__r_.__value_.__r.__words[2] = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            v35 = std::string::append(&v51, ")");
            v36 = v35[1].n128_u64[0];
            v52 = *v35;
            v53 = v36;
            v35->n128_u64[1] = 0;
            v35[1].n128_u64[0] = 0;
            v35->n128_u64[0] = 0;
            if (SHIBYTE(v53) >= 0)
            {
              v37 = &v52;
            }

            else
            {
              v37 = v52.n128_u64[0];
            }

            if (SHIBYTE(v53) >= 0)
            {
              v38 = HIBYTE(v53);
            }

            else
            {
              v38 = v52.n128_u64[1];
            }

            std::string::append((a1 + 1656 + *(*a1 - 24)), v37, v38);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52.n128_u64[0]);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v13 = 0;
          }

          v18 += 4;
          --v16;
        }

        while (v16);
      }

      do
      {
        v39 = *(i + 8);
        i += 8;
        v12 = v39;
        if (v39)
        {
          v40 = v12 + 2 == 0;
        }

        else
        {
          v40 = 1;
        }
      }

      while (v40);
    }

    while (i != v42);
  }

  return v13 & 1;
}

__n128 llvm::StringRef::split(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = llvm::StringRef::find();
  if (v7 == -1)
  {
    a1[1].n128_u64[0] = 0;
    a1[1].n128_u64[1] = 0;
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v10 = a2->n128_u64[0];
    v9 = a2->n128_u64[1];
    if (v9 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = a2->n128_u64[1];
    }

    v12 = v7 + a4;
    if (v9 < v7 + a4)
    {
      v12 = a2->n128_u64[1];
    }

    a1->n128_u64[0] = v10;
    a1->n128_u64[1] = v11;
    a1[1].n128_u64[0] = v10 + v12;
    a1[1].n128_u64[1] = v9 - v12;
  }

  return result;
}

BOOL AGCLLVMAGPFragmentShaderGen3::setupLIBViewToMasterFieldOffsetMap(uint64_t *a1, int a2, llvm::StringMapImpl *a3, uint64_t a4)
{
  i = a1;
  if (a2)
  {
      ;
    }
  }

  v8 = &a1[a2];
  if (i != v8)
  {
    v9 = *i;
    do
    {
      if (*(a3 + 3))
      {
        v10 = llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::try_emplace<>(a3, (v9 + 48), *v9);
        v11 = *i;
        v9 = *v10;
      }

      else
      {
        v11 = v9;
      }

      v12 = *(v9 + 8);
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a4, *(v11 + 8)) + 8) = v12;
      do
      {
        v13 = i[1];
        ++i;
        v9 = v13;
        if (v13)
        {
          v14 = v9 == -8;
        }

        else
        {
          v14 = 1;
        }
      }

      while (v14);
    }

    while (i != v8);
  }

  return *(a4 + 16) != 0;
}

uint64_t *llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 49, 8);
  v11 = v10;
  v12 = v10 + 48;
  if (a3)
  {
    memcpy((v10 + 48), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = a3;
  *(v11 + 24) = -1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 28);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          llvm::deallocate_buffer(v5, (*v5 + 49));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMUserMeshShaderAnalysis::constructReply(AGCLLVMUserMeshShaderAnalysis *this)
{
  v2 = this + 4096;
  *(this + 4358) = 1;
  v3 = *(this + 1082);
  v4 = *(this + 1080) - *(this + 1084);
  if (*(this + 4368) == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
    flatbuffers::FlatBufferBuilder::TrackField(this + 536, 4, v5);
    if (v2[272])
    {
      v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
      flatbuffers::FlatBufferBuilder::TrackField(this + 536, 6, v6);
      if (v2[272])
      {
        v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this + 536, 8, v7);
      }
    }
  }

  v8 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v4 + v3);
  GenericVaryingAllocator::allocate((this + 5168), *(this + 271));
  GenericVaryingAllocator::serialize((this + 5168), (this + 4288));
  v9 = *(this + 647) - *(this + 646);
  if (v9)
  {
    v10 = *(this + 646);
  }

  else
  {
    v10 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  v11 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + 4288, v10, v9 >> 2);
  v66 = 0;
  VaryingSignature = GenericVaryingAllocator::getVaryingSignature(this + 5168, (this + 4288), &v66 + 1, &v66);
  v2[262] = 1;
  v13 = *(this + 1082);
  v14 = *(this + 1080) - *(this + 1084);
  if (VaryingSignature)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 10, HIDWORD(v66));
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 12, v66);
  }

  v15 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v14 + v13);
  v16 = AGCLLVMObject::constructFlatReply(this);
  v18 = flatbuffers::FlatBufferBuilder::EndTable(v16, v17);
  v2[262] = 1;
  v19 = *(this + 540);
  v20 = *(this + 542);
  v21 = *(this + 541);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 4, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 536, 6, *(this + 1471));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 536, 8, *(this + 1472));
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(this + 536, 10, *(this + 5892));
  if (v2[272] == 1)
  {
    v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
    flatbuffers::FlatBufferBuilder::TrackField(this + 536, 12, v22);
    if (v2[272])
    {
      v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
      flatbuffers::FlatBufferBuilder::TrackField(this + 536, 14, v23);
      if (v2[272])
      {
        v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this + 536, 16, v24);
        if (v2[272])
        {
          v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
          flatbuffers::FlatBufferBuilder::TrackField(this + 536, 18, v25);
          if (v2[272])
          {
            v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this + 536, 60, v26);
            if (v2[272])
            {
              v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this + 536, 20, v27);
              if (v2[272])
              {
                v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this + 536, 22, v28);
              }
            }
          }
        }
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 536, 28, v2[1760], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 30, v11);
  if (v2[272] == 1)
  {
    v29 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
    flatbuffers::FlatBufferBuilder::TrackField(this + 536, 32, v29);
    if (v2[272])
    {
      v30 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
      flatbuffers::FlatBufferBuilder::TrackField(this + 536, 34, v30);
      if (v2[272])
      {
        v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this + 536, 36, v31);
        if (v2[272])
        {
          v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
          flatbuffers::FlatBufferBuilder::TrackField(this + 536, 38, v32);
          if (v2[272])
          {
            v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this + 536, 40, v33);
            if (v2[272])
            {
              v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this + 536, 42, v34);
              if (v2[272])
              {
                v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this + 536, 44, v35);
                if (v2[272])
                {
                  v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
                  flatbuffers::FlatBufferBuilder::TrackField(this + 536, 46, v36);
                }
              }
            }
          }
        }
      }
    }
  }

  v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 1);
  flatbuffers::FlatBufferBuilder::TrackField(this + 536, 54, v37);
  v38 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v19 - v20 + v21);
  v2[262] = 1;
  v39 = *(this + 1082);
  v40 = *(this + 1080) - *(this + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((this + 4288), v18);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>((this + 4288), v38);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((this + 4288), v15);
  v41 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v40 + v39);
  flatbuffers::FlatBufferBuilder::Finish((this + 4288), v41, v42);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>(this, this + 1072);
  v57 = 0;
  v58 = 0;
  v59 = xmmword_20E70C4D0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0x1000000000000;
  v63 = 1;
  v64 = 256;
  v65 = 0;
  v43 = flatbuffers::FlatBufferBuilder::EndTable(&v57, 0);
  flatbuffers::FlatBufferBuilder::Finish(&v57, v43, v44);
  v45 = v61;
  v46 = (v60 - v61 + DWORD2(v60));
  v47 = (*(this + 1080) - *(this + 1084) + *(this + 1082));
  v48 = (v46 + 7) & 0x1FFFFFFF8;
  v49 = (v47 + 7) & 0x1FFFFFFF8;
  v50 = v49 + v48 + 376;
  v51 = malloc_type_calloc(1uLL, v50 + 40, 0x100004077774924uLL);
  *v51 = -17958193;
  *(v51 + 4) = 0x13800000019;
  *(v51 + 4) = 2;
  v52 = v48 + v49 + 8;
  *(v51 + 8) = v52;
  *(v51 + 9) = 368;
  *(v51 + 10) = v52;
  *(v51 + 24) = 3;
  *(v51 + 120) = *"__TEXT";
  *(v51 + 38) = 368;
  *(v51 + 18) = 8;
  *(v51 + 46) = 0;
  *(v51 + 200) = *"__GPU_METADATA";
  *(v51 + 58) = 376;
  *(v51 + 28) = v48;
  memcpy(v51 + 376, v45, v46);
  *(v51 + 280) = *"__GPU_LD_MD";
  *(v51 + 78) = v48 + 376;
  *(v51 + 38) = v49;
  memcpy(&v51[(v48 + 376)], *(this + 542), v47);
  v53 = &v51[*(v51 + 9) + 32];
  *v53 = 0x1800000002;
  *(v53 + 8) = v50;
  *(v53 + 12) = 1;
  v54 = (v50 + 16);
  *(v53 + 16) = v54;
  *(v53 + 20) = 20;
  strcpy(&v51[v54], "__agc.ctx_switch");
  v55 = &v51[*(v53 + 8)];
  *v55 = 1;
  *(v55 + 2) = 270;
  *(this + 286) = v51;
  *(this + 287) = v50 + 40;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v57);
  return 1;
}