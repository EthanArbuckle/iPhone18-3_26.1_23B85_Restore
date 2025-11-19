uint64_t llvm::StringMap<ComponentType,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

uint64_t AGCLLVMGLFragmentShader::getTextureBiasStateForUnit(AGCLLVMGLFragmentShader *this, unsigned int a2)
{
  v2 = *(this + 811);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMGLFragmentShader::getPCFStateForUnit(AGCLLVMGLFragmentShader *this, unsigned int a2)
{
  v2 = *(this + 810);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMGLFragmentShader::remapTexSampUnit(AGCLLVMGLFragmentShader *this, uint64_t a2)
{
  v2 = *(this + 812);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

char *llvm::PassInfoMixin<InitCompileGLFragmentShaderPass>::name()
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

  v2 = &aStringrefLlvmG_46[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileGLFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileGLFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t AGCLLVMGLFragmentShader::adjustDfDyForInversion(AGCLLVMGLFragmentShader *this, llvm::Type **a2)
{
  FragCoordYAdjustAndType = AGCLLVMGLFragmentShader::getFragCoordYAdjustAndType(this);
  ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((this + *(*this - 24) + 1704), v5, FragCoordYAdjustAndType, 0);
  v7 = this + *(*this - 24);
  v15 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 1704), ConstInBoundsGEP2_32, v14);
  v9 = this + *(*this - 24);
  v10 = *a2;
  v15 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v9 + 1712), Load, v10, v14);
  v12 = this + *(*this - 24);
  v15 = 257;
  return llvm::IRBuilderBase::CreateFMul((v12 + 1712), a2, FPTrunc, v14);
}

void AGCLLVMGLFragmentShader::~AGCLLVMGLFragmentShader(AGCLLVMGLFragmentShader *this)
{
  *this = &unk_2825A0418;
  v2 = (this + 6536);
  *(this + 817) = &unk_2825A07F0;
  *(this + 1030) = &unk_2825A0900;
  *(this + 567) = &unk_2825A06B8;
  v3 = *(this + 815);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6504));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(this, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A0418;
  v2 = (this + 6536);
  *(this + 817) = &unk_2825A07F0;
  *(this + 1030) = &unk_2825A0900;
  *(this + 567) = &unk_2825A06B8;
  v3 = *(this + 815);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6504));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(this, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMGLVertexShader::constructReply(AGCLLVMGLVertexShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    v5 = this + *(*this - 24);
    v5[4358] = 1;
    v6 = *(v5 + 1082);
    v7 = *(v5 + 1080) - *(v5 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v5 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v5 + 4288), v4);
    v8 = *(*this - 24);
    v9 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
    flatbuffers::FlatBufferBuilder::Finish((this + v8 + 4288), v9, v10);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMGLVertexShader::getCompilationKeyDescription(AGCLLVMGLVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1251);
  std::string::basic_string[abi:nn200100]<0>(v35, "AGCVertexContextStateGL");
  std::string::basic_string[abi:nn200100]<0>(v33, "vertexUnpackState");
  std::string::basic_string[abi:nn200100]<0>(&v38, &unk_20E75F419);
  if (*(v2 + 80))
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 4 * v3);
      std::string::basic_string[abi:nn200100]<0>(&v48, "AGCVertexElement");
      std::string::basic_string[abi:nn200100]<0>(&v47, "code");
      _agcFieldString<unsigned int>(&v50, &v47.__r_.__value_.__l.__data_, *v4);
      std::string::basic_string[abi:nn200100]<0>(v45, "components");
      _agcFieldString<unsigned int>(&v51, v45, v4[1]);
      std::string::basic_string[abi:nn200100]<0>(v43, "type");
      _agcFieldString<char const*>(&v52, v43, _agcVertexElementTypeStrings[v4[2]]);
      std::string::basic_string[abi:nn200100]<0>(v41, "normalized");
      _agcFieldString<unsigned int>(&v53, v41, HIBYTE(*v4) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v40, "bgraSwizzle");
      _agcFieldString<unsigned int>(&v54, &v40.__r_.__value_.__l.__data_, (*v4 >> 25) & 1);
      std::string::basic_string[abi:nn200100]<0>(&__p, "unused");
      _agcFieldString<unsigned int>(v55, &__p.__r_.__value_.__l.__data_, *v4 >> 26);
      _agcGroupWithHeader(&v37, &v48, 0, &v50, 6);
      for (i = 0; i != 0x1FFFFFFFFFFFFFEELL; i -= 3)
      {
        if (SHIBYTE(v55[0].__r_.__value_.__r.__words[i + 2]) < 0)
        {
          operator delete(v55[i / 3].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42) < 0)
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

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v37;
      }

      else
      {
        v6 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      std::string::append(&v38, v6, size);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      ++v3;
    }

    while (v3 < *(v2 + 80));
  }

  std::string::basic_string[abi:nn200100]<0>(&v48, "AGCVertexUnpackState");
  std::string::basic_string[abi:nn200100]<0>(&v47, "currentAttribs");
  _agcFieldString<unsigned long long>(&v50, &v47.__r_.__value_.__l.__data_, *(v2 + 64));
  std::string::basic_string[abi:nn200100]<0>(v45, "instancedAttribs");
  _agcFieldString<unsigned long long>(&v51, v45, *(v2 + 72));
  std::string::basic_string[abi:nn200100]<0>(v43, "elementCount");
  _agcFieldString<unsigned long long>(&v52, v43, *(v2 + 80));
  std::string::basic_string[abi:nn200100]<0>(v41, "vertexIDCode");
  _agcFieldString<unsigned long long>(&v53, v41, *(v2 + 84));
  std::string::basic_string[abi:nn200100]<0>(&v40, "instanceIDCode");
  _agcFieldString<unsigned long long>(&v54, &v40.__r_.__value_.__l.__data_, *(v2 + 85));
  std::string::basic_string[abi:nn200100]<0>(&__p, "unused");
  _agcFieldString<unsigned long long>(v55, &__p.__r_.__value_.__l.__data_, *(v2 + 86));
  std::string::basic_string[abi:nn200100]<0>(&v37, "elements : ");
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v38;
  }

  _agcGroupWithHeader(&v56, &v37, 0, &v49, 1);
  _agcGroupWithHeader(&v32, &v48, 0, &v50, 7);
  for (j = 0; j != -21; j -= 3)
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v56.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
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

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v50, v33, &v32);
  std::string::basic_string[abi:nn200100]<0>(&v48, "clip_distance_enable_mask");
  _agcFieldString<unsigned long long>(&v51, &v48.__r_.__value_.__l.__data_, *(v2 + 88));
  std::string::basic_string[abi:nn200100]<0>(&v47, "outputPointSize");
  _agcFieldString<unsigned long long>(&v52, &v47.__r_.__value_.__l.__data_, (*(v2 + 88) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v45, "shaderDebugEnable");
  _agcFieldString<unsigned long long>(&v53, v45, (*(v2 + 88) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v43, "unused");
  _agcFieldString<unsigned long long>(&v54, v43, *(v2 + 88) >> 10);
  _agcGroupWithHeader(&v31, v35, 0, &v50, 5);
  for (k = 0; k != -15; k -= 3)
  {
    if (SHIBYTE(v54.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v54.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  v10 = *(this + 1252);
  if (v10)
  {
    std::string::basic_string[abi:nn200100]<0>(&v37, &unk_20E75F419);
    for (m = 0; m != 32; ++m)
    {
      std::string::basic_string[abi:nn200100]<0>(&v48, "AGCSamplerPCFState");
      std::string::basic_string[abi:nn200100]<0>(&v47, "compareFunc");
      _agcFieldString<char const*>(&v50, &v47.__r_.__value_.__l.__data_, _agcCompareFuncStrings[*(v10 + 2 * m) & 0xF]);
      std::string::basic_string[abi:nn200100]<0>(v45, "clampPCFEnabled");
      _agcFieldString<unsigned short>(&v51, v45, (*(v10 + 2 * m) >> 4) & 1);
      std::string::basic_string[abi:nn200100]<0>(v43, "mipmapMinFilterEnabled");
      _agcFieldString<unsigned short>(&v52, v43, (*(v10 + 2 * m) >> 5) & 1);
      std::string::basic_string[abi:nn200100]<0>(v41, "trilinearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v53, v41, (*(v10 + 2 * m) >> 6) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v40, "linearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v54, &v40.__r_.__value_.__l.__data_, (*(v10 + 2 * m) >> 7) & 1);
      std::string::basic_string[abi:nn200100]<0>(&__p, "linearMagFilterEnabled");
      _agcFieldString<unsigned short>(v55, &__p.__r_.__value_.__l.__data_, HIBYTE(*(v10 + 2 * m)) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v38, "unused");
      _agcFieldString<unsigned short>(&v56, &v38.__r_.__value_.__l.__data_, *(v10 + 2 * m) >> 9);
      _agcGroupWithHeader(&v49, &v48, 1, &v50, 7);
      for (n = 0; n != -21; n -= 3)
      {
        if (SHIBYTE(v56.__r_.__value_.__r.__words[n + 2]) < 0)
        {
          operator delete(*(&v56.__r_.__value_.__l.__data_ + n * 8));
        }
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42) < 0)
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

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v49;
      }

      else
      {
        v13 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v49.__r_.__value_.__l.__size_;
      }

      std::string::append(&v37, v13, v14);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&v48, "AGCSamplerPCFStates");
    std::string::basic_string[abi:nn200100]<0>(&v50, "pcf : ");
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    }

    else
    {
      v51 = v37;
    }

    _agcGroupWithHeader(&__p, &v48, 0, &v50, 2);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (SHIBYTE(v51.__r_.__value_.__r.__words[ii + 2]) < 0)
      {
        operator delete(*(&v50 + ii * 8 + 24));
      }
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
  }

  v16 = *(this + 1253);
  std::string::basic_string[abi:nn200100]<0>(&v48, &unk_20E75F419);
  for (jj = 1; jj != 33; ++jj)
  {
    std::to_string(&v47, v16[jj]);
    v18 = std::string::append(&v47, " ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v50;
    }

    else
    {
      v20 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v50.__r_.__value_.__l.__size_;
    }

    std::string::append(&v48, v20, v21);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v47, "AGCSamplerRemapStateGL");
  std::string::basic_string[abi:nn200100]<0>(v45, "samplerCount");
  _agcFieldString<unsigned int>(&v50, v45, *v16);
  std::string::basic_string[abi:nn200100]<0>(v43, "samplerToTexUnitMap");
  std::operator+<char>();
  v22 = std::string::append(&v40, "]");
  v23 = v22->__r_.__value_.__r.__words[2];
  *v41 = *&v22->__r_.__value_.__l.__data_;
  v42 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  _agcFieldString<std::string>(&v51, v43, v41);
  _agcGroupWithHeader(&v38, &v47, 0, &v50, 2);
  for (kk = 0; kk != -6; kk -= 3)
  {
    if (SHIBYTE(v51.__r_.__value_.__r.__words[kk + 2]) < 0)
    {
      operator delete(*(&v50 + kk * 8 + 24));
    }
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v50, &v31.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v38;
  }

  else
  {
    v25 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v38.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v50, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__r.__words[0] = 0;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMGLVertexShader::~AGCLLVMGLVertexShader(AGCLLVMGLVertexShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A1BE8;
  v1[1257] = &unk_2825A1F50;
  v1[1470] = &unk_2825A2060;
  v2 = v1[1254];
  if (v2)
  {
    v1[1255] = v2;
    operator delete(v2);
  }

  v3 = v1[1247];
  if (v3)
  {
    v1[1248] = v3;
    operator delete(v3);
  }

  v4 = v1[1224];
  if (v4 != v1 + 1226)
  {
    free(v4);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_2825A2070);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1257));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A1BE8;
  v1[1257] = &unk_2825A1F50;
  v1[1470] = &unk_2825A2060;
  v2 = v1[1254];
  if (v2)
  {
    v1[1255] = v2;
    operator delete(v2);
  }

  v3 = v1[1247];
  if (v3)
  {
    v1[1248] = v3;
    operator delete(v3);
  }

  v4 = v1[1224];
  if (v4 != v1 + 1226)
  {
    free(v4);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_2825A2070);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1257));
}

uint64_t AGCLLVMGLVertexShader::constructFlatVertexInputs(AGCLLVMGLVertexShader *this)
{
  v2 = this + *(*this - 24);
  if (*(*(v2 + 271) + 1848))
  {
    goto LABEL_68;
  }

  v3 = *(v2 + 267);
  Function = llvm::Module::getFunction();
  llvm::SmallBitVector::SmallBitVector(&v54, *(this + 1310));
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v5 = *(Function + 88);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
      v6 = *(Function + 88);
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(Function + 88);
  }

  v6 = v5;
LABEL_7:
  v7 = v6 + 40 * *(Function + 96);
  if (v5 != v7)
  {
    v8 = 0;
    do
    {
      if (*(v5 + 8))
      {
        if (v54)
        {
          v54 = v54 & 0xFC00000000000001 | (2 * (((1 << v8) | (v54 >> 1)) & ~(-1 << (v54 >> 58))));
        }

        else
        {
          *(*v54 + 8 * (v8 >> 6)) |= 1 << v8;
        }
      }

      v5 += 40;
      ++v8;
    }

    while (v5 != v7);
  }

  v9 = *(this + 1247);
  if (*(this + 1248) != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v9 + 20 * v10);
      v13 = v12[2];
      if (v13 > 0xA)
      {
        LODWORD(v14) = -1;
      }

      else
      {
        v14 = (qword_20E70D080[v13] * (*v12 + 1) + 3) >> 2;
      }

      v15 = v12[3];
      llvm::SmallBitVector::SmallBitVector(&v53, *(this + 1310));
      if (v14)
      {
        v16 = v14 + v15;
        if (v53)
        {
          v53 = v53 & 0xFC00000000000001 | (2 * ((((1 << v16) + (-1 << v15)) | (v53 >> 1)) & ~(-1 << (v53 >> 58))));
          goto LABEL_30;
        }

        v17 = v15 >> 6;
        if ((v15 >> 6) == v16 >> 6)
        {
          v18 = (1 << v16) + (-1 << v15);
          v19 = (*v53 + 8 * v17);
LABEL_29:
          *v19 |= v18;
          goto LABEL_30;
        }

        v20 = *v53;
        *(*v53 + 8 * v17) |= -1 << v15;
        v21 = (v15 + 63) & 0xFFFFFFC0;
        if (v21 + 64 <= v16)
        {
          do
          {
            v20[v21 >> 6] = -1;
            v22 = v21 + 64;
            v23 = v21 + 128;
            v21 += 64;
          }

          while (v23 <= v16);
        }

        else
        {
          v22 = (v15 + 63) & 0xFFFFFFC0;
        }

        if (v22 < v16)
        {
          v18 = ~(-1 << v16);
          v19 = &v20[v22 >> 6];
          goto LABEL_29;
        }
      }

LABEL_30:
      if (v53)
      {
        v34 = v53 >> 58;
        if ((v54 & 1) == 0)
        {
          v35 = *(v54 + 64);
          goto LABEL_47;
        }

        if ((((v53 & v54) >> 1) & ~((-1 << v34) | (-1 << (v54 >> 58)))) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v54)
        {
          v34 = *(v53 + 64);
          v35 = v54 >> 58;
LABEL_47:
          if (v35 < v34)
          {
            v34 = v35;
          }

          if (!v34)
          {
LABEL_63:
            v37 = *(this + 1247) + 20 * v11;
            v38 = *(this + 1248);
            v39 = v38 - (v37 + 20);
            if (v38 != v37 + 20)
            {
              memmove((*(this + 1247) + 20 * v11), (v37 + 20), v38 - (v37 + 20));
            }

            *(this + 1248) = v37 + v39;
            goto LABEL_66;
          }

          v36 = 0;
          while (2)
          {
            if (v53)
            {
              if (((v53 >> 1) & ~(-1 << (v53 >> 58)) & (1 << v36)) == 0)
              {
                goto LABEL_59;
              }
            }

            else if ((*(*v53 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
            {
              goto LABEL_59;
            }

            if (v54)
            {
              if (((v54 >> 1) & ~(-1 << (v54 >> 58)) & (1 << v36)) != 0)
              {
                goto LABEL_62;
              }
            }

            else if ((*(*v54 + 8 * (v36 >> 6)) & (1 << v36)) != 0)
            {
              goto LABEL_62;
            }

LABEL_59:
            if (v34 == ++v36)
            {
              goto LABEL_63;
            }

            continue;
          }
        }

        LODWORD(v24) = *(v53 + 8);
        v25 = *(v54 + 8);
        if (v25 >= v24)
        {
          v24 = v24;
        }

        else
        {
          v24 = v25;
        }

        if (!v24)
        {
          goto LABEL_63;
        }

        v26 = *v53;
        v27 = *v54;
        v28 = v24 - 1;
        do
        {
          v30 = *v26++;
          v29 = v30;
          v31 = *v27++;
          v32 = v31 & v29;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v28 == 0;
          }

          --v28;
        }

        while (!v33);
        if (!v32)
        {
          goto LABEL_63;
        }
      }

LABEL_62:
      ++v11;
LABEL_66:
      llvm::SmallBitVector::~SmallBitVector(&v53);
      v10 = v11;
      v9 = *(this + 1247);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(this + 1248) - v9) >> 2) > v11);
  }

  llvm::SmallBitVector::~SmallBitVector(&v54);
LABEL_68:
  v40 = *(this + 1247);
  if (-858993459 * ((*(this + 1248) - v40) >> 2))
  {
    v41 = v40[4];
    v42 = this + *(*this - 24);
    v42[4358] = 1;
    v43 = *(v42 + 1082);
    v44 = *(v42 + 1080) - *(v42 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v42 + 536, 4, *v40);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v42 + 536, 6, *(*(this + 1247) + 4));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v42 + 536, 8, *(*(this + 1247) + 8));
    v45 = *(*(this + 1247) + 12);
    v46 = v42 + 4288;
    if (v41)
    {
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v46, 12, v45);
      flatbuffers::FlatBufferBuilder::AddElement<signed char>(v42 + 536, 10, *(*(this + 1247) + 16));
      flatbuffers::FlatBufferBuilder::EndTable((v42 + 4288), v44 + v43);
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v46, 10, v45);
    flatbuffers::FlatBufferBuilder::EndTable((v42 + 4288), v44 + v43);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  v47 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>> const&)::t, 0);
  v48 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t, 0);
  v49 = this + *(*this - 24);
  v49[4358] = 1;
  v50 = *(v49 + 1082);
  v51 = *(v49 + 1080) - *(v49 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v49 + 4288), v47);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v49 + 4288), v48);
  return flatbuffers::FlatBufferBuilder::EndTable((v49 + 4288), v51 + v50);
}

uint64_t *llvm::SmallBitVector::SmallBitVector(uint64_t *this, uint64_t a2)
{
  *this = 1;
  if (a2 > 0x39)
  {
    operator new();
  }

  *this = (a2 << 58) | 1;
  return this;
}

void llvm::SmallBitVector::~SmallBitVector(void ***this)
{
  v1 = *this;
  if ((*this & 1) == 0 && v1)
  {
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x20F331DC0](v1, 0x1080C40EF38A13ELL);
  }
}

uint64_t AGCLLVMGLVertexShader::getPointSize(AGCLLVMGLVertexShader *this, llvm::Value *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v4 = *(this + *(*this - 24) + 1872);
    v3 = llvm::ConstantFP::get();
  }

  v5 = llvm::User::operator new(0x58);
  v6 = (this + *(*this - 24));
  v7 = v6[267];
  v8 = v6[234];
  v22[0] = "agc.vertex_point_size_adjust";
  v23 = 259;
  v19 = *(v6[271] + 972) | 0x100000000;
  v9 = llvm::GlobalVariable::GlobalVariable();
  *(v9 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v10 = this + *(*this - 24);
  v11 = *(v10 + 268);
  v12 = AGCLLVMBuilder::buildGlobalMetadata((v10 + 1704), v5);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, v12);
  v13 = this + *(*this - 24);
  v23 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v13 + 1704), v5, v22);
  v15 = *v3;
  v21 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v13 + 1712), Load, v15, v20);
  v17 = this + *(*this - 24);
  v23 = 257;
  return llvm::IRBuilderBase::CreateFAdd((v17 + 1712), v3, FPTrunc, v22);
}

uint64_t AGCLLVMGLVertexShader::getGenericVaryingInfo(AGCLLVMUserShader *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  AGCLLVMUserShader::getVaryingModeMap(a1);
  AGCLLVMUserShader::getInterpolationLocationMap(v10);
  v11 = *(*(a2 + 16) + 8 * a3);
  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), v11, &v34);
  if ((*(v11 + 2) & 0xFE) == 0x12)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = 1;
  }

  v33 = 0;
  v35 = 2;
  v14 = parseMDInt(0, a4, &v35, &v33);
  v15 = a4 - 8 * *(a4 + 8);
  v16 = *(v15 + 24);
  if (v16 && *v16)
  {
    v16 = 0;
  }

  v17 = *(v15 + 32);
  if (!v17)
  {
    return 0;
  }

  v18 = 0;
  v19 = v14 ^ 1;
  if (!v16)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && !*v17)
  {
    String = llvm::MDString::getString(v16);
    v22 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, String, v21) + 8);
    v23 = llvm::MDString::getString(v17);
    v25 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, v23, v24) + 8);
    v26 = v33;
    if (v22 == 1)
    {
      v25 = 3;
    }

    if (v22 <= 1)
    {
      if (ComponentType == 1)
      {
        v27 = 5;
      }

      else
      {
        v27 = 1;
      }

      if (ComponentType == 1)
      {
        v28 = 6;
      }

      else
      {
        v28 = 2;
      }

      if (v22 != 1)
      {
        v28 = v33;
      }

      v30 = v22 == 0;
    }

    else
    {
      if (ComponentType == 1)
      {
        v27 = 7;
      }

      else
      {
        v27 = 3;
      }

      if (ComponentType == 1)
      {
        v28 = 19;
      }

      else
      {
        v28 = 18;
      }

      if (ComponentType == 1)
      {
        v29 = 8;
      }

      else
      {
        v29 = 4;
      }

      if (v22 != 5)
      {
        v29 = v33;
      }

      if (v22 != 3)
      {
        v28 = v29;
      }

      v30 = v22 == 2;
    }

    if (v30)
    {
      v31 = v27;
    }

    else
    {
      v31 = v28;
    }

    *a5 = v13;
    *(a5 + 4) = ComponentType;
    *(a5 + 8) = v22;
    *(a5 + 12) = v25;
    *(a5 + 16) = v26;
    if (*(a5 + 47) < 0)
    {
      operator delete(*(a5 + 24));
    }

    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 56) = ComponentType == 1;
    *(a5 + 57) = 0;
    *(a5 + 60) = v31;
    return 1;
  }

  return v18;
}

uint64_t AGCLLVMGLVertexShader::setupClipDistanceOutput(void *a1, llvm::Value *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v22 = 0;
  v20[0] = 1;
  parseMDInt(0, a3, v20, &v22);
  v9 = *a2;
  if (*a2)
  {
    v10 = *(*a2 + 8) == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = *(v9 + 32);
    if (v12)
    {
      v13 = 0;
      v14 = 4 * v22;
      do
      {
        v15 = a1 + *(*a1 - 24) + 1704;
        v21 = 257;
        v16 = *(v15 + 200);
        v17 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((v15 + 8), a2, v17, v20);
        *a5 |= 1 << (v14 + v13);
        *(a4 + 8 * (v14 + v13++)) = Element;
      }

      while (v12 != v13);
    }
  }

  else if (*(a1 + *(*a1 - 24) + 1872) == v9)
  {
    v11 = 4 * v22;
    *a5 |= 1 << (4 * v22);
    *(a4 + 8 * v11) = a2;
  }

  return 1;
}

uint64_t AGCLLVMGLVertexShader::getPCFStateForUnit(AGCLLVMGLVertexShader *this, unsigned int a2)
{
  v2 = *(this + 1252);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMGLVertexShader::remapTexSampUnit(AGCLLVMGLVertexShader *this, uint64_t a2)
{
  v2 = *(this + 1253);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

uint64_t AGCLLVMGLVertexShader::setupShaderInputs(llvm::Function **this)
{
  v101 = *MEMORY[0x277D85DE8];
  AGCLLVMUserVertexShader::setupShaderInputs(this);
  v2 = *(this + *(*this - 3) + 1888);
  v3 = llvm::PointerType::get();
  v4 = *(this + *(*this - 3) + 1904);
  v5 = *v3;
  v99[0] = v3;
  v99[1] = v4;
  llvm::StructType::get();
  v6 = this[1251];
  v7 = *(v6 + 8);
  v89 = *(v6 + 9);
  v8 = *(this[21] + 10);
  if (v8)
  {
    v9 = (v8 - 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = *this;
  if ((*(this + *(*this - 3) + 2168))[1848])
  {
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v9);
    AGCLLVMUserObject::hoistAllocas(this, v9, &FirstInsertionPt);
    llvm::IRBuilderBase::SetInsertPoint(this + *(*this - 3) + 1712, v9, FirstInsertionPt);
    if (*(this + 2501) != -1)
    {
      v11 = this + *(*this - 3);
      VIRead = AGCLLVMUserVertexShader::createVIRead(this);
      v13 = *(this + *(*this - 3) + 1904);
      v100 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 49, VIRead, v13, v99);
      v15 = *(this + *(*this - 3) + 1912);
      v98 = 257;
      llvm::IRBuilderBase::CreateCast((v11 + 1712), 39, Cast, v15, v97);
    }

    if (*(this + 2500) != -1)
    {
      v34 = this + *(*this - 3);
      v35 = AGCLLVMUserVertexShader::createVIRead(this);
      v36 = *(this + *(*this - 3) + 1904);
      v100 = 257;
      v37 = llvm::IRBuilderBase::CreateCast((v34 + 1712), 49, v35, v36, v99);
      v38 = *(this + *(*this - 3) + 1912);
      v98 = 257;
      llvm::IRBuilderBase::CreateCast((v34 + 1712), 39, v37, v38, v97);
    }

    v39 = llvm::User::operator new(0x58);
    v40 = (this + *(*this - 3));
    v41 = v40[267];
    v42 = v40[237];
    v99[0] = "agc.primitive_buffer_path";
    v100 = 259;
    v88 = *(v40[271] + 972) | 0x100000000;
    v43 = llvm::GlobalVariable::GlobalVariable();
    *(v43 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v44 = this + *(*this - 3);
    v45 = *(v44 + 268);
    v46 = AGCLLVMBuilder::buildGlobalMetadata((v44 + 1704), v39);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v45, v46);
    v100 = 257;
    this[1246] = llvm::BasicBlock::splitBasicBlock();
    v47 = *(this + *(*this - 3) + 2160);
    v99[0] = "primbuf_path";
    v100 = 259;
    v48 = this[21];
    operator new();
  }

  this[1246] = v9;
  v16 = this + *(v10 - 3);
  v17 = llvm::BasicBlock::getFirstInsertionPt(v9);
  if (v17)
  {
    v18 = (v17 - 24);
  }

  else
  {
    v18 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((v16 + 1712), v18);
  v90 = *(this + 2450);
  if (v90)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(this[1224] + v19);
      v22 = *(this[1254] + v21);
      v23 = this[1251];
      v24 = *(this + *(*this - 3) + 1872);
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      if (v22)
      {
        v91 = v23;
        v93 = v21;
        for (i = 0; i != v22; ++i)
        {
          v27 = this + *(*this - 3) + 1704;
          v28 = AGCLLVMUserVertexShader::createVIRead(this);
          v100 = 257;
          v29 = *(v27 + 25);
          v30 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v27 + 8), InsertElement, v28, v30, v99);
        }

        v20 += i;
        v21 = v93;
        v31 = *(v91 + v93);
        v32 = this;
        v33 = InsertElement;
      }

      else
      {
        v31 = *(v23 + v21);
        v32 = this;
        v33 = InsertElement;
      }

      this[v21 + 1230] = AGCLLVMGLVertexShader::castAttribToElementType(v32, v31, v33);
      ++v19;
    }

    while (v19 != v90);
  }

  v49 = *(this + *(*this - 3) + 2136);
  Function = llvm::Module::getFunction();
  v51 = Function;
  if (Function)
  {
    v52 = *(*(Function + 8) + 24);
  }

  else
  {
    v52 = 0;
  }

  v53 = this[1246];
  v97[0] = 0;
  v54 = this[21];
  v92 = v52;
  if (*(v54 + 9))
  {
    llvm::Function::BuildLazyArguments(v54);
    v56 = this[21];
    v55 = *(v54 + 11);
    if (*(v56 + 9))
    {
      llvm::Function::BuildLazyArguments(this[21]);
    }

    v54 = v56;
  }

  else
  {
    v55 = *(v54 + 11);
  }

  v57 = *(v54 + 11) + 40 * *(v54 + 12);
  if (v55 != v57)
  {
    v58 = (this + 214);
    v59 = 0x747265762E726961;
    v60 = 0x7475706E695F7865;
    do
    {
      if (*(v55 + 8))
      {
        v61 = *(v53 + 5);
        v62 = v61 ? (v61 - 24) : 0;
        llvm::IRBuilderBase::SetInsertPoint(&v58[*(*this - 3)], v62);
        v63 = *(v55 + 32);
        v64 = *(this[10] + v63);
        if ((AGCLLVMUserShader::replaceInputArgument(this, v55, v63, v64) & 1) == 0)
        {
          String = llvm::MDString::getString(*(v64 - 8 * *(v64 + 8) + 8));
          if (v66 == 16 && *String == v59 && String[1] == v60)
          {
            v68 = *(v64 - 8 * *(v64 + 8) + 16);
            if (v68)
            {
              if (*v68)
              {
                v69 = 0;
              }

              else
              {
                v69 = *(v64 - 8 * *(v64 + 8) + 16);
              }
            }

            else
            {
              v69 = 0;
            }

            v70 = llvm::MDString::getString(v69);
            if (v71 == 12 && (*v70 == 0x61636F6C2E726961 ? (v72 = *(v70 + 8) == 1852795252) : (v72 = 0), v72))
            {
              v82 = *(*(v55 + 8) + 24);
              LODWORD(v99[0]) = 3;
              parseMDInt(0, v64, v99, v97);
              AGCLLVMGLVertexShader::replaceAttributeUses(this, v82[1], v97[0], 0);
              llvm::Instruction::eraseFromParent(v82);
            }

            else
            {
              v96[0] = 0;
              LODWORD(v99[0]) = 3;
              parseMDInt(0, v64, v99, v96);
              v73 = v96[0];
              v74 = v51;
              v75 = v60;
              v76 = v59;
              v77 = this[1251];
              v94 = this[v96[0] + 1230];
              v78 = *this;
              v79 = *(this[1246] + 5);
              if (v79)
              {
                v80 = (v79 - 24);
              }

              else
              {
                v80 = 0;
              }

              llvm::IRBuilderBase::SetInsertPoint(&v58[*(*this - 3)], v80);
              v81 = (v77 + 4 * v73);
              v59 = v76;
              v60 = v75;
              v51 = v74;
              AGCLLVMGLVertexShader::generateAttributeValue(this, v81, *v55, v94);
              llvm::Value::replaceAllUsesWith();
            }
          }
        }
      }

      v55 += 40;
    }

    while (v55 != v57);
  }

  if (v51)
  {
    if (v92)
    {
      if (llvm::Value::getNumUses(v92))
      {
        AGCLLVMGLVertexShader::replaceAttributeUses(this, v51[1], *(this[1251] + 84), 3);
      }

      else
      {
        llvm::Instruction::eraseFromParent(v92);
      }
    }

    llvm::Function::eraseFromParent(v51);
  }

  v83 = *(this + *(*this - 3) + 2136);
  v84 = llvm::Module::getFunction();
  if (v84)
  {
    v85 = v84;
    AGCLLVMGLVertexShader::replaceAttributeUses(this, *(v84 + 8), WORD2(*(this[1251] + 10)) >> 8, 1);
    llvm::Function::eraseFromParent(v85);
  }

  v86 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMGLVertexShader::replaceAttributeUses(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = *(result + 10008);
    v8 = result + 1904;
    v9 = result + 1712;
    v10 = a4 & 0xFFFFFFFD;
    v11 = result + 9840;
    do
    {
      v12 = *(v5 + 24);
      v5 = *(v5 + 8);
      v13 = *v6;
      v14 = v12;
      if (v10 == 1)
      {
        v15 = *v6;
        v14 = (v8 + *(v13 - 24));
      }

      v16 = *v14;
      v17 = *v6;
      llvm::IRBuilderBase::SetInsertPoint((v9 + *(v13 - 24)), v12);
      v18 = v6[1251];
      v19 = *(v18 + 80);
      if (*(v18 + 80))
      {
        v20 = 0;
        while (*(v7 + 4 * v20) != a3)
        {
          if (v19 == ++v20)
          {
            v21 = 0;
            LODWORD(v20) = v19;
            goto LABEL_12;
          }
        }

        v21 = *(v11 + 8 * v20);
      }

      else
      {
        LODWORD(v20) = 0;
        v21 = 0;
      }

LABEL_12:
      AGCLLVMGLVertexShader::generateAttributeValue(v6, (v7 + 4 * v20), v16, v21);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v12);
    }

    while (v5);
  }

  return result;
}

llvm::Value *AGCLLVMGLVertexShader::generateAttributeValue(uint64_t *a1, int *a2, uint64_t a3, llvm::Value *a4)
{
  v5 = a3;
  v103 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    v8 = *(a3 + 32);
    v5 = **(a3 + 16);
  }

  else
  {
    v8 = 1;
  }

  v9 = *a1;
  v10 = (a1 + *(*a1 - 24));
  v84 = v5;
  if (v5 == v10[234] || v5 == v10[232])
  {
    if (*(a2 + 2) - 9 >= 2)
    {
      v14 = *(*a4 + 32);
      llvm::FixedVectorType::get();
      v9 = *a1;
    }

    v15 = *(a1 + *(v9 - 24) + 1872);
    v12 = llvm::ConstantFP::get();
    v16 = *(a1 + *(*a1 - 24) + 1872);
    v11 = llvm::ConstantFP::get();
    v17 = *a2;
    if ((*a2 & 0x1000000) == 0)
    {
      v18 = BYTE2(v17);
      if (v18 <= 0xA)
      {
        if (((1 << v18) & 0xAC) != 0)
        {
LABEL_42:
          v19 = (a1 + *(*a1 - 24) + 1704);
          v20 = a4;
          v21 = 1;
          goto LABEL_43;
        }

        if (((1 << v18) & 0x150) != 0)
        {
          v19 = (a1 + *(*a1 - 24) + 1704);
          v20 = a4;
          v21 = 0;
LABEL_43:
          FMul = AGCLLVMBuilder::f32Extend(v19, v20, v21);
LABEL_62:
          ShuffleVector = FMul;
          goto LABEL_63;
        }

        if (((1 << v18) & 0x600) != 0)
        {
          v42 = a1 + *(*a1 - 24);
          v43 = *(v42 + 271);
          v94 = *(v42 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v95, (v42 + 1712));
          v96 = *(v42 + 452);
          ShuffleVector = (*(*v43 + 112))(v43, &v94, 5, *(a1 + *(*a1 - 24) + 1872), a4, 0, *(a2 + 2) << 16 == 589824);
          if (!v95)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }
      }

      if (v18 != 1)
      {
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }

      v23 = AGCLLVMBuilder::f32Extend((a1 + *(*a1 - 24) + 1704), a4, 1);
      v63 = *v23;
LABEL_61:
      v64 = llvm::ConstantFP::get();
      v65 = a1 + *(*a1 - 24);
      v98 = 257;
      FMul = llvm::IRBuilderBase::CreateFMul((v65 + 1712), v23, v64, v97);
      goto LABEL_62;
    }

    ShuffleVector = 0;
    v22 = BYTE2(v17);
    if (v22 > 6)
    {
      if ((v22 - 9) < 2)
      {
        v40 = a1 + *(*a1 - 24);
        v41 = *(v40 + 271);
        v88 = *(v40 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v40 + 1712));
        v90 = *(v40 + 452);
        ShuffleVector = (*(*v41 + 112))(v41, &v88, 5, *(a1 + *(*a1 - 24) + 1872), a4, 1, *(a2 + 2) << 16 == 589824);
        if (!v89)
        {
          goto LABEL_63;
        }

LABEL_59:
        llvm::MetadataTracking::untrack();
        goto LABEL_63;
      }

      if (v22 != 7)
      {
        if (v22 != 8)
        {
          goto LABEL_63;
        }

        v32 = 0;
        v33 = 8;
LABEL_58:
        v61 = a1 + *(*a1 - 24);
        v62 = *(v61 + 271);
        v85 = *(v61 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v61 + 1712));
        v87 = *(v61 + 452);
        ShuffleVector = (*(*v62 + 96))(v62, &v85, a4, v33, v32, 32);
        if (!v86)
        {
          goto LABEL_63;
        }

        goto LABEL_59;
      }

      v33 = 8;
    }

    else
    {
      if (v22 <= 4)
      {
        if (v22 == 3)
        {
          v52 = AGCLLVMBuilder::f32Extend((a1 + *(*a1 - 24) + 1704), a4, 1);
          v53 = *v52;
          v54 = llvm::ConstantFP::get();
          v55 = *v52;
          v56 = llvm::ConstantFP::get();
          v57 = a1 + *(*a1 - 24);
          v98 = 257;
          v58 = llvm::IRBuilderBase::CreateFMul((v57 + 1712), v52, v54, v97);
          v59 = a1 + *(*a1 - 24);
          v60 = *(v59 + 271);
          v91 = *(v59 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v59 + 1712));
          v93 = *(v59 + 452);
          ShuffleVector = (*(*v60 + 56))(v60, &v91, v58, v56, 0);
          if (!v92)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }

        if (v22 != 4)
        {
          goto LABEL_63;
        }

        v23 = AGCLLVMBuilder::f32Extend((a1 + *(*a1 - 24) + 1704), a4, 0);
        v24 = *v23;
        goto LABEL_61;
      }

      if (v22 != 5)
      {
        v32 = 0;
        v33 = 16;
        goto LABEL_58;
      }

      v33 = 16;
    }

    v32 = 1;
    goto LABEL_58;
  }

  if (v5 != v10[238] && v5 != v10[237])
  {
    v11 = 0;
    v12 = 0;
LABEL_9:
    ShuffleVector = 0;
    goto LABEL_63;
  }

  v11 = 0;
  v25 = *(a2 + 2);
  if (v25 <= 0xA)
  {
    if (((1 << v25) & 0x2A8) != 0)
    {
      v34 = *(*a4 + 32);
      v27 = llvm::FixedVectorType::get();
      v35 = *(a1 + *(*a1 - 24) + 1904);
      v12 = llvm::ConstantInt::get();
      v36 = *(a1 + *(*a1 - 24) + 1904);
      v11 = llvm::ConstantInt::get();
      if (llvm::Type::getScalarSizeInBits(*a4) <= 0x1F)
      {
        v37 = a1 + *(*a1 - 24);
        v98 = 257;
        v38 = (v37 + 1712);
        v39 = 40;
LABEL_49:
        FMul = llvm::IRBuilderBase::CreateCast(v38, v39, a4, v27, v97);
        goto LABEL_62;
      }
    }

    else
    {
      if (((1 << v25) & 0x550) == 0)
      {
        v12 = 0;
        ShuffleVector = 0;
        if (*(a2 + 2))
        {
          goto LABEL_63;
        }

        v47 = *(*a4 + 32);
        v48 = llvm::FixedVectorType::get();
        v49 = *(a1 + *(*a1 - 24) + 1904);
        v12 = llvm::ConstantInt::get();
        v50 = *(a1 + *(*a1 - 24) + 1904);
        v11 = llvm::ConstantInt::get();
        v51 = a1 + *(*a1 - 24);
        v98 = 257;
        FMul = llvm::IRBuilderBase::CreateFPToSI((v51 + 1712), a4, v48, v97);
        goto LABEL_62;
      }

      v26 = *(*a4 + 32);
      v27 = llvm::FixedVectorType::get();
      v28 = *(a1 + *(*a1 - 24) + 1904);
      v12 = llvm::ConstantInt::get();
      v29 = *(a1 + *(*a1 - 24) + 1904);
      v11 = llvm::ConstantInt::get();
      v30 = *a4;
      if ((*(*a4 + 8) & 0xFE) == 0x12)
      {
        v31 = *(**(v30 + 2) + 8);
      }

      else
      {
        v31 = *(*a4 + 8);
      }

      if (v31 <= 6)
      {
        v45 = a1 + *(*a1 - 24);
        v98 = 257;
        FMul = llvm::IRBuilderBase::CreateFPToUI((v45 + 1712), a4, v27, v97);
        goto LABEL_62;
      }

      if (llvm::Type::getScalarSizeInBits(v30) <= 0x1F)
      {
        v46 = a1 + *(*a1 - 24);
        v98 = 257;
        v38 = (v46 + 1712);
        v39 = 39;
        goto LABEL_49;
      }
    }

    ShuffleVector = a4;
    goto LABEL_63;
  }

  v12 = 0;
  ShuffleVector = 0;
LABEL_63:
  v66 = *(*ShuffleVector + 32);
  v67 = *a2;
  if ((*a2 & 0x2000000) != 0)
  {
    v68 = *(a1 + *(*a1 - 24) + 1904);
    v99 = llvm::ConstantInt::get();
    v69 = *(a1 + *(*a1 - 24) + 1904);
    v100 = llvm::ConstantInt::get();
    v70 = *(a1 + *(*a1 - 24) + 1904);
    v101 = llvm::ConstantInt::get();
    v71 = *(a1 + *(*a1 - 24) + 1904);
    v102 = llvm::ConstantInt::get();
    v72 = llvm::ConstantVector::get();
    v73 = a1 + *(*a1 - 24);
    v74 = *ShuffleVector;
    v75 = llvm::UndefValue::get();
    v98 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v73 + 1712), ShuffleVector, v75, v72, v97);
    v67 = *a2;
  }

  v76 = BYTE1(v67);
  v77 = BYTE1(v67) + 1;
  if (v66 > v77)
  {
    ShuffleVector = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), ShuffleVector, 0, v77, 0);
  }

  if (v8 == 1 || v8 <= v76)
  {
    ShuffleVector = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), ShuffleVector, 0, v8, 1);
  }

  else if (v8 > v77)
  {
    ShuffleVector = AGCLLVMBuilder::extendVector((a1 + *(*a1 - 24) + 1704), ShuffleVector, v8);
    do
    {
      if (v77 == 3)
      {
        v78 = v11;
      }

      else
      {
        v78 = v12;
      }

      v79 = a1 + *(*a1 - 24) + 1704;
      v98 = 257;
      v80 = *(v79 + 200);
      v81 = llvm::ConstantInt::get();
      ShuffleVector = llvm::IRBuilderBase::CreateInsertElement((v79 + 8), ShuffleVector, v78, v81, v97);
      ++v77;
    }

    while (v8 != v77);
  }

  result = AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), ShuffleVector, v84);
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGLVertexShader::castAttribToElementType(void *a1, int a2, llvm::Value *a3)
{
  result = 0;
  if (BYTE2(a2) <= 4u)
  {
    if (BYTE2(a2) > 2u)
    {
      goto LABEL_11;
    }

    if (!BYTE2(a2))
    {
      return a3;
    }

    if (BYTE2(a2) == 1)
    {
LABEL_11:
      v16 = *(a1 + *(*a1 - 24) + 1904);
      v11 = llvm::FixedVectorType::get();
      v14 = a1 + *(*a1 - 24);
      v15 = "as_i32";
    }

    else
    {
      v13 = *(a1 + *(*a1 - 24) + 1856);
      v11 = llvm::FixedVectorType::get();
      v14 = a1 + *(*a1 - 24);
      v15 = "as_half";
    }

    goto LABEL_14;
  }

  if (BYTE2(a2) > 0xAu)
  {
    return result;
  }

  if (((1 << SBYTE2(a2)) & 0x60) != 0)
  {
    v17 = *(a1 + *(*a1 - 24) + 1896);
    v11 = llvm::FixedVectorType::get();
    v14 = a1 + *(*a1 - 24);
    v15 = "as_i16";
LABEL_14:
    v19[0] = v15;
    v20 = 259;
    v12 = (v14 + 1712);
    Element = a3;
    return llvm::IRBuilderBase::CreateCast(v12, 49, Element, v11, v19);
  }

  if (((1 << SBYTE2(a2)) & 0x180) != 0)
  {
    v18 = *(a1 + *(*a1 - 24) + 1888);
    v11 = llvm::FixedVectorType::get();
    v14 = a1 + *(*a1 - 24);
    v15 = "as_i8";
    goto LABEL_14;
  }

  if (((1 << SBYTE2(a2)) & 0x600) == 0)
  {
    return result;
  }

  v6 = a1 + *(*a1 - 24);
  v20 = 257;
  v7 = *(v6 + 238);
  v8 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v6 + 1712), a3, v8, v19);
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 238);
  v19[0] = "as_packed_i32";
  v20 = 259;
  v12 = (v10 + 1712);
  return llvm::IRBuilderBase::CreateCast(v12, 49, Element, v11, v19);
}

llvm::GetElementPtrInst *AGCLLVMBuilder::CreateConstInBoundsGEP2_32(AGCLLVMBuilder *this, llvm::Type **a2, unsigned int a3)
{
  v6 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v6)
  {
    v8 = v6;
    llvm::Type::isOpaquePointerTy(*a2);
    v13 = 257;
    v9 = (this + 8);
    v10 = v8;
  }

  else
  {
    v13 = 257;
    v9 = (this + 8);
    v10 = 0;
  }

  return llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v9, v10, a2, a3, v12, v7);
}

char *llvm::PassInfoMixin<InitCompileGLVertexShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 79;
  }

  v2 = &aStringrefLlvmG_48[v1];
  v3 = 79 - v1;
  if ((79 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 79 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileGLVertexShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileGLVertexShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMGLVertexShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_47[v1];
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

void AGCLLVMGLVertexShader::~AGCLLVMGLVertexShader(AGCLLVMGLVertexShader *this)
{
  *this = &unk_2825A1BE8;
  v2 = (this + 10056);
  *(this + 1257) = &unk_2825A1F50;
  *(this + 1470) = &unk_2825A2060;
  v3 = *(this + 1254);
  if (v3)
  {
    *(this + 1255) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1247);
  if (v4)
  {
    *(this + 1248) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1224);
  if (v5 != this + 9808)
  {
    free(v5);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825A2070);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A1BE8;
  v2 = (this + 10056);
  *(this + 1257) = &unk_2825A1F50;
  *(this + 1470) = &unk_2825A2060;
  v3 = *(this + 1254);
  if (v3)
  {
    *(this + 1255) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1247);
  if (v4)
  {
    *(this + 1248) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1224);
  if (v5 != this + 9808)
  {
    free(v5);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825A2070);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMAirImageBlockGen3::~AGCLLVMAirImageBlockGen3(AGCLLVMAirImageBlockGen3 *this)
{
  AGCLLVMAirImageBlockGen3::~AGCLLVMAirImageBlockGen3(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A71C8;
  v2 = *(this + 123);
  if (v2 != *(this + 122))
  {
    free(v2);
  }

  if (*(this + 960) == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(this + 936);
    llvm::deallocate_buffer(*(this + 117), (16 * *(this + 238)));
    *(this + 960) = 0;
  }

  v3 = *(this + 232);
  v4 = *(this + 114);
  if (v3)
  {
    v17 = 2;
    v18 = 0;
    v19 = -4096;
    v20 = 0;
    v15 = 0;
    v16 = &unk_2825A7200;
    v12 = 2;
    v13 = 0;
    v14 = -8192;
    v5 = v4 + 72;
    v6 = 112 * v3;
    do
    {
      v7 = *(v5 - 6);
      v8 = v7 == v19 || v7 == v14;
      if (!v8 && v5[23] < 0)
      {
        operator delete(*v5);
        v7 = *(v5 - 6);
      }

      if (v7 != -8192 && v7 != -4096 && v7 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v5 - 64));
      }

      v5 += 112;
      v6 -= 112;
    }

    while (v6);
    v4 = *(this + 114);
    v10 = 112 * *(this + 232);
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v4, v10);
  *this = &unk_2825A7228;
  MEMORY[0x20F32FD00](this + 480);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 128));
  v11 = *(this + 1);
  if (v11 != this + 24)
  {
    free(v11);
  }
}

void llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v19, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v21 = v4;
  v26 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v20, &v26))
  {
    v5 = v26;
  }

  else
  {
    v5 = *v4 + 112 * v4[2].u32[0];
  }

  v6 = v21;
  if (*v21 + 112 * v21[2].u32[0] != v5)
  {
    v17 = *(v5 + 40);
    v18 = *(v5 + 56);
    v7 = *(v5 + 72);
    v35[0] = *(v5 + 80);
    *(v35 + 7) = *(v5 + 87);
    v8 = *(v5 + 95);
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 72) = 0;
    *&v16[5] = *(v5 + 101);
    *v16 = *(v5 + 96);
    v27[0] = 2;
    v27[1] = 0;
    v28 = -8192;
    v29 = 0;
    v26 = &unk_2825A7200;
    llvm::ValueHandleBase::operator=((v5 + 8), v27);
    v9 = v28;
    *(v5 + 32) = v29;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v27);
    }

    v6[1] = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v10 = v21;
    llvm::CallbackVH::CallbackVH(&v22, a2);
    v22 = &unk_2825A7200;
    v25 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v27, (LODWORD(v23[0]) >> 1) & 3, v23);
    v30 = v17;
    v26 = &unk_2825A7200;
    v29 = v25;
    v31 = v18;
    __p[0] = v7;
    __p[1] = v35[0];
    *(&__p[1] + 7) = *(v35 + 7);
    HIBYTE(__p[2]) = v8;
    v33[0] = *v16;
    *(v33 + 5) = *&v16[5];
    v34 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v28, &v34))
    {
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v10, &v26, v34);
      llvm::ValueHandleBase::operator=((v11 + 8), v27);
      *(v11 + 32) = v29;
      v12 = v30;
      *(v11 + 56) = v31;
      *(v11 + 40) = v12;
      v13 = *__p;
      *(v11 + 88) = __p[2];
      *(v11 + 72) = v13;
      memset(__p, 0, sizeof(__p));
      v14 = *(v33 + 5);
      *(v11 + 96) = v33[0];
      *(v11 + 101) = v14;
    }

    if (v28 != -8192 && v28 != -4096 && v28)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v27);
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }
  }

  if (v20 != -8192 && v20 != -4096 && v20)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v19);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 112 * v5;
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
        v6 = a1 + 112 * (v13 & v4);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x20F330650](v8, 112 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(a1);
    v24[0] = 2;
    v24[1] = 0;
    v25 = -4096;
    v26 = 0;
    v22 = 0;
    v23 = &unk_2825A7200;
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    if (v3)
    {
      v9 = v4 + 72;
      v10 = 112 * v3;
      do
      {
        v11 = *(v9 - 6);
        if (v11 != v25 && v11 != v21)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v11, &v27);
          v13 = v27;
          llvm::ValueHandleBase::operator=((v27 + 8), v9 - 8);
          *(v13 + 32) = *(v9 - 5);
          v14 = *(v9 - 2);
          *(v13 + 56) = *(v9 - 1);
          *(v13 + 40) = v14;
          v15 = *v9;
          *(v13 + 88) = *(v9 + 2);
          *(v13 + 72) = v15;
          *(v9 + 1) = 0;
          *(v9 + 2) = 0;
          *v9 = 0;
          v16 = *(v9 + 3);
          *(v13 + 101) = *(v9 + 29);
          *(v13 + 96) = v16;
          ++*(a1 + 8);
          if (v9[23] < 0)
          {
            operator delete(*v9);
          }
        }

        v17 = *(v9 - 6);
        if (v17 != -8192 && v17 != -4096 && v17 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 64));
        }

        v9 += 112;
        v10 -= 112;
      }

      while (v10);
      if (v21 != -8192 && v21 != -4096 && v21)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v20);
      }
    }

    if (v25 != -8192 && v25 != -4096 && v25)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v24);
    }

    return llvm::deallocate_buffer(v4, (112 * v3));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(a1);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(uint64_t result)
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
    v3 = *result + 112 * v1;
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825A7200;
      *(v4 + 3) = v9;
      v5 = v4 + 104;
      result = v4 + 112;
      v2 += 112;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    if (*(v10 + 95) < 0)
    {
      operator delete(v10[9]);
    }

    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A7200;
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

uint64_t AGCLLVMAirImageBlockGen3::setupImageBlocks(uint64_t a1, std::string *a2, int a3, int a4, uint64_t a5)
{
  v346[1] = *MEMORY[0x277D85DE8];
  {
    AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map = 0;
    *&dword_27C8D8170 = 0;
    qword_27C8D8178 = 0x3000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::flag, memory_order_acquire) != -1)
  {
    v340 = &v336;
    v317[0] = &v340;
    std::__call_once(&AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::flag, v317, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0 &&>>);
  }

  v8 = 0;
  v340 = v342;
  v341 = 0x800000000;
  v336 = v338;
  v337 = 0x800000000;
  v9 = &v339;
  do
  {
    if (v8 <= 7)
    {
      *v9 = 0;
      *(v9 - 1) = 0;
      *(v9 - 3) = 0;
    }

    v8 += 4;
    v9 += 4;
  }

  while (v8 != 8);
  LODWORD(v337) = 8;
  v237 = a4;
  v235 = a5;
  if (a5)
  {
    v10 = *(a5 + 32);
    if (((v10 >> 8) & 3) != 0)
    {
      v11 = 1 << (BYTE1(v10) & 3);
    }

    else
    {
      v11 = 1;
    }

    v240 = v11;
  }

  else
  {
    v240 = 1;
  }

  v12 = *(a1 + 192);
  v236 = llvm::ConstantInt::get();
  v13 = *(a1 + 192);
  v241 = llvm::ConstantInt::get();
  v14 = *(a1 + 432);
  v15 = v14 + 24;
  v16 = *(v14 + 32);
  if (v16 != v14 + 24)
  {
    do
    {
      v17 = v16 - 56;
      if (!v16)
      {
        v17 = 0;
      }

      v18 = v17 + 72;
      v19 = *(v17 + 80);
      if (v19 == v17 + 72)
      {
        v21 = 0;
      }

      else
      {
        do
        {
          v20 = v19 - 24;
          if (!v19)
          {
            v20 = 0;
          }

          v21 = *(v20 + 48);
          if (v21 != v20 + 40)
          {
            break;
          }

          v19 = *(v19 + 8);
        }

        while (v19 != v18);
      }

      while (v19 != v18)
      {
        if (v21)
        {
          v22 = v21 - 24;
        }

        else
        {
          v22 = 0;
        }

        v23 = *(v22 + 16);
        if (v21 && v23 == 84)
        {
          v24 = *(v22 - 32);
          if (v24 && !*(v24 + 16) && *(v24 + 24) == *(v22 + 72))
          {
            llvm::Value::getName(v24);
            Key = llvm::StringMapImpl::FindKey();
            if (Key != -1 && Key != dword_27C8D8170)
            {
              if (*(*(AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map + 8 * Key) + 8) > 1u)
              {
                goto LABEL_47;
              }

              v27 = v341;
              if (!v341)
              {
                goto LABEL_47;
              }

              if (v341 >= HIDWORD(v341))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v28 = v340;
              v340[v341] = v340[v341 - 1];
              v29 = &v340[v27 - 1];
              if (v29 != v28)
              {
                memmove(v28 + 1, v28, v29 - v28);
                LODWORD(v27) = v341;
              }

              LODWORD(v341) = v27 + 1;
              *v28 = (v21 - 24);
            }
          }
        }

        else if ((v23 & 0xFE) == 0x3C && v21 != 0)
        {
LABEL_47:
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v340, v21 - 24);
        }

        v21 = *(v21 + 8);
        v31 = v19 - 24;
        if (!v19)
        {
          v31 = 0;
        }

        while (v21 == v31 + 40)
        {
          v19 = *(v19 + 8);
          if (v19 == v18)
          {
            break;
          }

          v31 = v19 - 24;
          if (!v19)
          {
            v31 = 0;
          }

          v21 = *(v31 + 48);
        }
      }

      v16 = *(v16 + 8);
    }

    while (v16 != v15);
  }

  v238 = 1;
  if (!v341)
  {
    goto LABEL_297;
  }

  v32 = v340;
  v33 = 8 * v341;
  v34 = a4;
  while (1)
  {
    v35 = *v32;
    v36 = *(*v32 + 16);
    v37 = v36 == 60 ? *v32 : 0;
    v38 = v36 == 61 ? *v32 : 0;
    if (v35)
    {
      if (v36 == 84)
      {
        v39 = *(v35 - 32);
        if (v39)
        {
          if (!*(v39 + 16) && *(v39 + 24) == *(v35 + 72))
          {
            break;
          }
        }
      }
    }

    if (!v37)
    {
      if (!v38)
      {
        goto LABEL_135;
      }

      v49 = **(v38 - 4);
      v50 = *(v49 + 8);
      if ((v50 & 0xFE) == 0x12)
      {
        v50 = *(**(v49 + 16) + 8);
      }

      if ((v50 & 0xFFFFFF00) != 0x400)
      {
        goto LABEL_135;
      }

      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v38);
      memset(v320, 0, 21);
      *v319 = 0u;
      *v317 = 0u;
      v318 = 0u;
      v51 = *(v38 - 4);
      v260[0] = 0;
      v260[1] = 0;
      v261 = 0;
      AGCLLVMAirImageBlockGen3::unpackImageBlockData(a1, v317, v51, v260);
      if (SHIBYTE(v261) < 0)
      {
        operator delete(v260[0]);
      }

      if ((v34 & 0x10000) != 0)
      {
        v52 = *(a1 + 192);
        v53 = llvm::ConstantInt::get();
        v335 = 257;
        v317[0] = llvm::IRBuilderBase::CreateAdd((a1 + 8), v53, v317[0], v332);
      }

      v54 = *(v38 - 8);
      v257 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v258, (a1 + 8));
      v259 = *(a1 + 104);
      v55 = AGCLLVMAirImageBlockGen3::buildEmulatedRTZConversion(a1, &v257, v54, v317);
      if (v258)
      {
        llvm::MetadataTracking::untrack();
      }

      v332[1] = 0;
      v332[0] = 0;
      v334 = 0;
      v333 = 0;
      if ((a3 & 0x10000) != 0)
      {
        v71 = *(a1 + 192);
        v58 = llvm::ConstantInt::get();
      }

      else
      {
        v56 = *(a1 + 472);
        v57 = *(*v56 - 24);
        v254 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v255, (a1 + 8));
        v256 = *(a1 + 104);
        v58 = AGCLLVMObject::buildReadDynamicLIBSize(v56 + v57, &v254);
        if (v255)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      (*(**(a1 + 464) + 688))(*(a1 + 464));
      v72 = **(v38 - 8);
      if (*(v72 + 8) == 15)
      {
        v72 = **(v72 + 16);
      }

      v73 = 1 << (v38[9] >> 1);
      if ((v73 & ~(-1 << llvm::DataLayout::getABITypeAlign((a1 + 480), v72))) != 0)
      {
        v74 = (*(**(a1 + 464) + 688))(*(a1 + 464));
        v251 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v252, (a1 + 8));
        v253 = *(a1 + 104);
        AGCLLVMGen3TargetLowerer::splitUnalignedStore(v343, v74, &v251, 0, v240, v58, v55, v317[0], v241, 0, v317[1], v318);
        *v332 = *v343;
        llvm::TrackingMDRef::operator=(&v333, &v343[16]);
        v334 = *&v343[24];
        if (*&v343[16])
        {
          llvm::MetadataTracking::untrack();
        }

        if (v252)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v87 = *(a1 + 464);
        v248 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v249, (a1 + 8));
        v250 = *(a1 + 104);
        v88 = (*(*v87 + 208))(v87, &v248, v241);
        if (v249)
        {
          llvm::MetadataTracking::untrack();
        }

        v89 = (*(**(a1 + 464) + 688))(*(a1 + 464));
        v245 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v246, (a1 + 8));
        v247 = *(a1 + 104);
        if ((SBYTE7(v320[0]) & 0x80u) == 0)
        {
          v90 = v319;
        }

        else
        {
          v90 = v319[0];
        }

        if ((SBYTE7(v320[0]) & 0x80u) == 0)
        {
          v91 = SBYTE7(v320[0]);
        }

        else
        {
          v91 = v319[1];
        }

        AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(v343, v89, &v245, v90, v91, v240, v58, v55, v317[0], LODWORD(v320[1]) == 1, v241, v88, v317[1], v318, 0);
        *v332 = *v343;
        llvm::TrackingMDRef::operator=(&v333, &v343[16]);
        v334 = *&v343[24];
        if (*&v343[16])
        {
          llvm::MetadataTracking::untrack();
        }

        if (v246)
        {
LABEL_148:
          llvm::MetadataTracking::untrack();
        }
      }

      if (v332[0])
      {
        v242 = *v332;
        v243 = v333;
        if (v333)
        {
          llvm::MetadataTracking::track();
        }

        v244 = v334;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v242, a1 + 8);
        if (v243)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      llvm::Instruction::eraseFromParent(v38);
      if (v333)
      {
        llvm::MetadataTracking::untrack();
      }

      goto LABEL_133;
    }

    v40 = **(v37 - 4);
    v41 = *(v40 + 8);
    if ((v41 & 0xFE) == 0x12)
    {
      v41 = *(**(v40 + 16) + 8);
    }

    if ((v41 & 0xFFFFFF00) != 0x400)
    {
      goto LABEL_135;
    }

    llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v37);
    memset(v320, 0, 21);
    *v319 = 0u;
    *v317 = 0u;
    v318 = 0u;
    v42 = *(v37 - 4);
    __p[1] = 0;
    __p[0] = 0;
    v275 = 0;
    AGCLLVMAirImageBlockGen3::unpackImageBlockData(a1, v317, v42, __p);
    if (SHIBYTE(v275) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v34 & 0x10000) != 0)
    {
      v43 = *(a1 + 192);
      v44 = llvm::ConstantInt::get();
      v335 = 257;
      v317[0] = llvm::IRBuilderBase::CreateAdd((a1 + 8), v44, v317[0], v332);
    }

    v45 = *v37;
    if ((a3 & 0x10000) != 0)
    {
      v59 = *(a1 + 192);
      v48 = llvm::ConstantInt::get();
    }

    else
    {
      v46 = *(a1 + 472);
      v47 = *(*v46 - 24);
      v271 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v272, (a1 + 8));
      v273 = *(a1 + 104);
      v48 = AGCLLVMObject::buildReadDynamicLIBSize(v46 + v47, &v271);
      if (v272)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    (*(**(a1 + 464) + 688))(*(a1 + 464));
    v60 = *v37;
    if (*(*v37 + 8) == 15)
    {
      v60 = **(v60 + 2);
    }

    v61 = 1 << (v37[9] >> 1);
    ABITypeAlign = llvm::DataLayout::getABITypeAlign((a1 + 480), v60);
    v63 = *(a1 + 464);
    if ((v61 & ~(-1 << ABITypeAlign)) != 0)
    {
      v64 = (*(*v63 + 688))(*(a1 + 464));
      v268 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v269, (a1 + 8));
      v270 = *(a1 + 104);
      v65 = AGCLLVMGen3TargetLowerer::splitUnalignedLoads(v64, &v268, 0, v240, v48, v45, v317[0], v241, 0, v317[1], v318);
      if (v269)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v265 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v266, (a1 + 8));
      v267 = *(a1 + 104);
      v66 = (*(*v63 + 208))(v63, &v265, v241);
      if (v266)
      {
        llvm::MetadataTracking::untrack();
      }

      v67 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v262 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v263, (a1 + 8));
      v264 = *(a1 + 104);
      if ((SBYTE7(v320[0]) & 0x80u) == 0)
      {
        v68 = v319;
      }

      else
      {
        v68 = v319[0];
      }

      if ((SBYTE7(v320[0]) & 0x80u) == 0)
      {
        v69 = SBYTE7(v320[0]);
      }

      else
      {
        v69 = v319[1];
      }

      v65 = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(v67, &v262, v68, v69, v240, v48, v45, v317[0], v241, v66, v317[1], v318);
      if (v263)
      {
        llvm::MetadataTracking::untrack();
      }

      if (llvm::Instruction::getNextNonDebugInstruction(v65))
      {
        NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v65);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), NextNonDebugInstruction);
      }

      else
      {
        v85 = *(v65 + 5);
        *(a1 + 56) = v85;
        *(a1 + 64) = v85 + 40;
      }
    }

    v86 = *v37;
    v335 = 257;
    llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v65, v86, v332);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v37);
LABEL_133:
    if (SBYTE7(v320[0]) < 0)
    {
      operator delete(v319[0]);
    }

LABEL_135:
    ++v32;
    v33 -= 8;
    if (!v33)
    {
      v238 = 1;
      goto LABEL_297;
    }
  }

  Name = llvm::Value::getName(*(v35 - 32));
  v325 = v75;
  v76 = llvm::StringMapImpl::FindKey();
  v77 = AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map;
  if (v76 == -1)
  {
    v78 = dword_27C8D8170;
  }

  else
  {
    v78 = v76;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v35);
  v79 = *(v77 + 8 * v78);
  v80 = *(v79 + 24);
  v321 = *(v79 + 8);
  *__len = v80;
  v323 = *(v79 + 40);
  if (v321 <= 2)
  {
    if (v321 < 2)
    {
      memset(v320, 0, 21);
      *v319 = 0u;
      *v317 = 0u;
      v318 = 0u;
      if (v321)
      {
        v81 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * v323);
        v82 = (v81 + 24);
        if (*(v81 + 32) >= 0x41u)
        {
          v82 = *v82;
        }

        v83 = *v82;
        v84 = *(a1 + 192);
        v317[0] = llvm::ConstantInt::get();
        if (AGCLLVMAirImageBlockGen3::getRTZModeFromImageBlockUser(a1, v317, v35))
        {
          *(v336 + v83) = v320[1];
        }
      }

      else
      {
        v142 = *(a1 + 192);
        v317[0] = llvm::ConstantInt::get();
      }

      *&v318 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * BYTE1(v323));
      v143 = v318;
      ImageBlockSampleMask = AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(a1, &v321, v35, v240, v236);
      v317[1] = ImageBlockSampleMask;
      v232 = *v35;
      v145 = *(a1 + 328);
      v146 = llvm::UndefValue::get();
      v147 = v317[0];
      v335 = 257;
      v148 = *(a1 + 200);
      v149 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v146, v147, v149, v332);
      v335 = 257;
      v151 = *(a1 + 200);
      v152 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v143, v152, v332);
      v344 = 257;
      v154 = *(a1 + 200);
      v155 = llvm::ConstantInt::get();
      v156 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, Element, v155, v343);
      v335 = 257;
      v157 = *(a1 + 200);
      v158 = llvm::ConstantInt::get();
      v159 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v143, v158, v332);
      v344 = 257;
      v160 = *(a1 + 200);
      v161 = llvm::ConstantInt::get();
      v162 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v156, v159, v161, v343);
      v335 = 257;
      v163 = *(a1 + 200);
      v164 = llvm::ConstantInt::get();
      v165 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v162, ImageBlockSampleMask, v164, v332);
      v166 = *(a1 + 208);
      v335 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v165, v166, v332);
      v344 = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Cast, v232, v343);
      if (SBYTE7(v320[0]) < 0)
      {
        operator delete(v319[0]);
      }

      v34 = v237;
      goto LABEL_247;
    }

    if (v321 == 2)
    {
      switch(DWORD1(v321))
      {
        case 0:
          goto LABEL_235;
        case 2:
          v196 = (*(v235 + 32) >> 8) & 3;
          v197 = *(a1 + 192);
          v198 = llvm::ConstantInt::get();
LABEL_236:
          ShuffleVector = v198;
          goto LABEL_247;
        case 1:
LABEL_235:
          v199 = *(a1 + 200);
          llvm::FunctionType::get();
          v200 = *(a1 + 432);
          llvm::Module::getOrInsertFunction();
          LOWORD(v319[0]) = 257;
          v202 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v201 + 24), v201, 0, 0, v317);
          v203 = *v35;
          LOWORD(v319[0]) = 257;
          v198 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v202, v203, v317);
          goto LABEL_236;
      }
    }

LABEL_249:
    llvm::Instruction::eraseFromParent(v35);
    if (!*(v39 + 8))
    {
      llvm::Function::eraseFromParent(v39);
    }

    goto LABEL_135;
  }

  if (v321 == 3)
  {
    memset(v320, 0, 21);
    *v319 = 0u;
    *v317 = 0u;
    v318 = 0u;
    *&v318 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * BYTE1(v323));
    v317[1] = AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(a1, &v321, v35, v240, v236);
    v121 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * v323);
    v122 = (v121 + 24);
    if (*(v121 + 32) >= 0x41u)
    {
      v122 = *v122;
    }

    v123 = *v122;
    ImageBlockOffsetAndFormatFromDrawBuffer = AGCLLVMAirImageBlockGen3::getImageBlockOffsetAndFormatFromDrawBuffer(a1, v317, v235, *v122);
    v125 = ImageBlockOffsetAndFormatFromDrawBuffer;
    if (ImageBlockOffsetAndFormatFromDrawBuffer)
    {
      v229 = ImageBlockOffsetAndFormatFromDrawBuffer;
      if ((a3 & 0x10000) != 0)
      {
        v180 = *(a1 + 192);
        v231 = llvm::ConstantInt::get();
      }

      else
      {
        v126 = *(a1 + 472);
        v127 = *(*v126 - 24);
        v302 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v303, (a1 + 8));
        v304 = *(a1 + 104);
        v231 = AGCLLVMObject::buildReadDynamicLIBSize(v126 + v127, &v302);
        if (v303)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v181 = *(a1 + 464);
      v299 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v300, (a1 + 8));
      v301 = *(a1 + 104);
      v182 = (*(*v181 + 208))(v181, &v299, *(&v318 + 1));
      if (v300)
      {
        llvm::MetadataTracking::untrack();
      }

      v183 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v296 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v297, (a1 + 8));
      v298 = *(a1 + 104);
      if ((SBYTE7(v320[0]) & 0x80u) == 0)
      {
        v184 = v319;
      }

      else
      {
        v184 = v319[0];
      }

      if ((SBYTE7(v320[0]) & 0x80u) == 0)
      {
        v185 = SBYTE7(v320[0]);
      }

      else
      {
        v185 = v319[1];
      }

      ShuffleVector = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(v183, &v296, v184, v185, v240, v231, *v35, v317[0], *(&v318 + 1), v182, v317[1], v318);
      if (v297)
      {
        llvm::MetadataTracking::untrack();
      }

      v186 = *(v235 + 4 * v123);
      if ((v186 & 0x1F) == 0x17)
      {
LABEL_317:
        std::__throw_bad_optional_access[abi:nn200100]();
LABEL_318:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v125 = v229;
      if ((v186 & 0xE00) == 0xC00)
      {
        v187 = *ShuffleVector;
        memset(v343, 0, sizeof(v343));
        v188 = *(a1 + 200);
        *v343 = llvm::ConstantInt::get();
        v189 = *(a1 + 200);
        *&v343[8] = llvm::ConstantInt::get();
        v190 = *(a1 + 200);
        *&v343[16] = llvm::ConstantInt::get();
        v191 = *(a1 + 200);
        *&v343[24] = llvm::ConstantInt::get();
        NullValue = llvm::Constant::getNullValue(v187, v192);
        v194 = llvm::ConstantVector::get();
        v335 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), ShuffleVector, NullValue, v194, v332);
      }

      if (llvm::Instruction::getNextNonDebugInstruction(ShuffleVector))
      {
        v195 = llvm::Instruction::getNextNonDebugInstruction(ShuffleVector);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v195);
      }

      else
      {
        v206 = ShuffleVector[5];
        *(a1 + 56) = v206;
        *(a1 + 64) = v206 + 40;
      }
    }

    else
    {
      std::to_string(v343, v123);
      v168 = std::string::insert(v343, 0, "Invalid pixel format for render target ");
      v169 = v168->__r_.__value_.__r.__words[2];
      *v332 = *&v168->__r_.__value_.__l.__data_;
      v333 = v169;
      v168->__r_.__value_.__l.__size_ = 0;
      v168->__r_.__value_.__r.__words[2] = 0;
      v168->__r_.__value_.__r.__words[0] = 0;
      if (v333 >= 0)
      {
        v170 = v332;
      }

      else
      {
        v170 = v332[0];
      }

      if (v333 >= 0)
      {
        v171 = HIBYTE(v333);
      }

      else
      {
        v171 = v332[1];
      }

      std::string::append(a2, v170, v171);
      if (SHIBYTE(v333) < 0)
      {
        operator delete(v332[0]);
      }

      if ((v343[23] & 0x80000000) != 0)
      {
        operator delete(*v343);
      }

      ShuffleVector = 0;
    }

    if (SBYTE7(v320[0]) < 0)
    {
      operator delete(v319[0]);
    }

    if ((v125 & 1) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_247;
  }

  if (v321 != 4)
  {
    if (v321 != 5)
    {
      goto LABEL_249;
    }

    v92 = (v35 - 32 * (*(v35 + 20) & 0x7FFFFFF));
    v93 = *v92;
    if (DWORD2(v321) == 1)
    {
      v176 = v92[4];
      v177 = *(a1 + 464);
      v308 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v309, (a1 + 8));
      v310 = *(a1 + 104);
      v178 = (*(*v177 + 216))(v177, &v308, v93, v240, v236);
      if (v309)
      {
        llvm::MetadataTracking::untrack();
      }

      v179 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v305 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v306, (a1 + 8));
      v307 = *(a1 + 104);
      ShuffleVector = AGCLLVMGen3TargetLowerer::buildExtractColorCoverageMask(v179, &v305, v178, v176);
      if (v306)
      {
        goto LABEL_174;
      }
    }

    else
    {
      if (DWORD2(v321))
      {
        goto LABEL_249;
      }

      v94 = *(a1 + 464);
      v314 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v315, (a1 + 8));
      v316 = *(a1 + 104);
      v95 = (*(*v94 + 216))(v94, &v314, v93, v240, v236);
      if (v315)
      {
        llvm::MetadataTracking::untrack();
      }

      v96 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v311 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v312, (a1 + 8));
      v313 = *(a1 + 104);
      v228 = (*(*v96 + 1608))(v96);
      v329 = v311;
      v330 = v312;
      if (v312)
      {
        llvm::MetadataTracking::track();
      }

      v331 = v313;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v329, v96 + 8);
      if (v330)
      {
        llvm::MetadataTracking::untrack();
      }

      v230 = v95;
      v326 = v311;
      v327 = v312;
      if (v312)
      {
        llvm::MetadataTracking::track();
      }

      v328 = v313;
      v227 = *(v96 + 208);
      v97 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(v96, "llvm.agx2.ft1", 13, *(v96 + 200), *(v96 + 200));
      v98 = *(v96 + 200);
      LOWORD(v319[0]) = 257;
      v346[0] = llvm::IRBuilderBase::CreateCast(v96 + 8, 38, v230, v98, v317);
      LOWORD(v319[0]) = 257;
      v99 = llvm::IRBuilderBase::CreateCall(v96 + 8, *(v97 + 24), v97, v346, 1, v317);
      v100 = *(v96 + 192);
      v335 = 257;
      Select = llvm::IRBuilderBase::CreateCast(v96 + 8, 38, v99, v100, v332);
      if (v228 == v227)
      {
        v102 = *(v96 + 208);
        v103 = llvm::ConstantInt::get();
        LOWORD(v319[0]) = 257;
        LShr = llvm::IRBuilderBase::CreateLShr((v96 + 8), v230, v103, v317);
        v105 = *(v96 + 200);
        v335 = 257;
        v345 = llvm::IRBuilderBase::CreateCast(v96 + 8, 38, LShr, v105, v332);
        LOWORD(v319[0]) = 257;
        v106 = llvm::IRBuilderBase::CreateCall(v96 + 8, *(v97 + 24), v97, &v345, 1, v317);
        v107 = *(v96 + 192);
        v335 = 257;
        v108 = llvm::IRBuilderBase::CreateCast(v96 + 8, 38, v106, v107, v332);
        v109 = v345;
        v110 = *(v96 + 200);
        v111 = llvm::ConstantInt::get();
        LOWORD(v319[0]) = 257;
        llvm::IRBuilderBase::CreateICmp((v96 + 8), 32, v109, v111, v317);
        v112 = *(v96 + 192);
        v113 = llvm::ConstantInt::get();
        v335 = 257;
        llvm::IRBuilderBase::CreateAdd((v96 + 8), v108, v113, v332);
        v344 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
      }

      if (v327)
      {
        llvm::MetadataTracking::untrack();
      }

      v114 = *(v96 + 2540);
      v115 = *(v96 + 192);
      v116 = llvm::ConstantInt::get();
      LOWORD(v319[0]) = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv((v96 + 8), Select, v116, v317);
      v118 = *(v96 + 192);
      v119 = llvm::ConstantInt::get();
      LOWORD(v319[0]) = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateAdd((v96 + 8), UDiv, v119, v317);
      if (v312)
      {
LABEL_174:
        llvm::MetadataTracking::untrack();
      }
    }

LABEL_247:
    if (ShuffleVector)
    {
      llvm::Value::replaceAllUsesWith();
    }

    goto LABEL_249;
  }

  memset(v320, 0, 21);
  *v319 = 0u;
  *v317 = 0u;
  v318 = 0u;
  v128 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * BYTE6(v323));
  if (llvm::StringRef::find() == -1)
  {
    v172 = llvm::CallBase::arg_end(v35);
    v173 = v35 - 32 * (*(v35 + 20) & 0x7FFFFFF);
    if (((v172 - v173) & 0x1FFFFFFFE0) == 0xA0)
    {
      v174 = *(v173 + 32 * HIBYTE(v323));
      v175 = (v174 + 24);
      if (*(v174 + 32) >= 0x41u)
      {
        v175 = *v175;
      }

      v141 = *v175;
    }

    else
    {
      v141 = 0;
    }

    v204 = *(v173 + 32 * BYTE5(v323));
    if (__len[0])
    {
      v205 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_318;
      }

      v233 = *(v173 + 32 * BYTE5(v323));
      if (__len[1] >= 0x17)
      {
        operator new();
      }

      HIBYTE(v295) = __len[1];
      if (__len[1])
      {
        memmove(__dst, __len[0], __len[1]);
      }

      v204 = v233;
      *(__dst + v205) = 0;
    }

    else
    {
      __dst[1] = 0;
      __dst[0] = 0;
      v295 = 0;
    }

    AGCLLVMAirImageBlockGen3::unpackImageBlockData(a1, v317, v204, __dst);
    if (SHIBYTE(v295) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v237 & 0x10000) != 0)
    {
      v207 = *(a1 + 192);
      v208 = llvm::ConstantInt::get();
      v335 = 257;
      v317[0] = llvm::IRBuilderBase::CreateAdd((a1 + 8), v208, v317[0], v332);
    }

LABEL_259:
    v317[1] = AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(a1, &v321, v35, v240, v236);
    if (BYTE4(v323) != 255)
    {
      *(a1 + 1040) = 1;
    }

    v291 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v292, (a1 + 8));
    v293 = *(a1 + 104);
    v209 = AGCLLVMAirImageBlockGen3::buildEmulatedRTZConversion(a1, &v291, v128, v317);
    if (v292)
    {
      llvm::MetadataTracking::untrack();
    }

    v332[1] = 0;
    v332[0] = 0;
    v334 = 0;
    v333 = 0;
    if ((a3 & 0x10000) != 0)
    {
      v213 = *(a1 + 192);
      v212 = llvm::ConstantInt::get();
      if (!v141)
      {
        goto LABEL_276;
      }
    }

    else
    {
      v210 = *(a1 + 472);
      v211 = *(*v210 - 24);
      v288 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v289, (a1 + 8));
      v290 = *(a1 + 104);
      v212 = AGCLLVMObject::buildReadDynamicLIBSize(v210 + v211, &v288);
      if (v289)
      {
        llvm::MetadataTracking::untrack();
      }

      if (!v141)
      {
        goto LABEL_276;
      }
    }

    (*(**(a1 + 464) + 688))(*(a1 + 464));
    v214 = *v209;
    if (*(*v209 + 8) == 15)
    {
      v214 = **(v214 + 2);
    }

    if ((~(-1 << llvm::DataLayout::getABITypeAlign((a1 + 480), v214)) & v141) != 0)
    {
      v215 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v285 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v286, (a1 + 8));
      v287 = *(a1 + 104);
      AGCLLVMGen3TargetLowerer::splitUnalignedStore(v343, v215, &v285, 0, v240, v212, v209, v317[0], *(&v318 + 1), 0, v317[1], v318);
      *v332 = *v343;
      llvm::TrackingMDRef::operator=(&v333, &v343[16]);
      v334 = *&v343[24];
      if (*&v343[16])
      {
        llvm::MetadataTracking::untrack();
      }

      v34 = v237;
      if (!v286)
      {
        goto LABEL_288;
      }

LABEL_287:
      llvm::MetadataTracking::untrack();
LABEL_288:
      if (v332[0])
      {
        v276 = *v332;
        v277 = v333;
        if (v333)
        {
          llvm::MetadataTracking::track();
        }

        v278 = v334;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v276, a1 + 8);
        if (v277)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if (v333)
      {
        llvm::MetadataTracking::untrack();
      }

      if (SBYTE7(v320[0]) < 0)
      {
        operator delete(v319[0]);
      }

      goto LABEL_249;
    }

LABEL_276:
    v216 = *(a1 + 464);
    v282 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v283, (a1 + 8));
    v284 = *(a1 + 104);
    v217 = (*(*v216 + 208))(v216, &v282, *(&v318 + 1));
    if (v283)
    {
      llvm::MetadataTracking::untrack();
    }

    v218 = (*(**(a1 + 464) + 688))(*(a1 + 464));
    v279 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v280, (a1 + 8));
    v281 = *(a1 + 104);
    if ((SBYTE7(v320[0]) & 0x80u) == 0)
    {
      v219 = v319;
    }

    else
    {
      v219 = v319[0];
    }

    if ((SBYTE7(v320[0]) & 0x80u) == 0)
    {
      v220 = SBYTE7(v320[0]);
    }

    else
    {
      v220 = v319[1];
    }

    AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(v343, v218, &v279, v219, v220, v240, v212, v209, v317[0], LODWORD(v320[1]) == 1, *(&v318 + 1), v217, v317[1], v318, SBYTE4(v320[1]));
    *v332 = *v343;
    llvm::TrackingMDRef::operator=(&v333, &v343[16]);
    v334 = *&v343[24];
    v34 = v237;
    if (*&v343[16])
    {
      llvm::MetadataTracking::untrack();
    }

    if (!v280)
    {
      goto LABEL_288;
    }

    goto LABEL_287;
  }

  *&v318 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * BYTE1(v323));
  v129 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF) + 32 * v323);
  v130 = (v129 + 24);
  if (*(v129 + 32) >= 0x41u)
  {
    v130 = *v130;
  }

  v131 = *v130;
  if (AGCLLVMAirImageBlockGen3::getImageBlockOffsetAndFormatFromDrawBuffer(a1, v317, v235, *v130))
  {
    BYTE4(v320[1]) = 1;
    LODWORD(v320[1]) = *(v336 + v131);
    v132 = *(v235 + 4 * v131);
    if ((v132 & 0x1F) == 0x17)
    {
      goto LABEL_317;
    }

    if ((v132 & 0xE00) == 0xC00)
    {
      v133 = *v128;
      memset(v343, 0, sizeof(v343));
      v134 = *(a1 + 200);
      *v343 = llvm::ConstantInt::get();
      v135 = *(a1 + 200);
      *&v343[8] = llvm::ConstantInt::get();
      v136 = *(a1 + 200);
      *&v343[16] = llvm::ConstantInt::get();
      v137 = *(a1 + 200);
      *&v343[24] = llvm::ConstantInt::get();
      v139 = llvm::Constant::getNullValue(v133, v138);
      v140 = llvm::ConstantVector::get();
      v335 = 257;
      v128 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v128, v139, v140, v332);
    }

    v141 = 0;
    goto LABEL_259;
  }

  std::to_string(v343, v131);
  v223 = std::string::insert(v343, 0, "Invalid pixel format for render target ");
  v224 = v223->__r_.__value_.__r.__words[2];
  *v332 = *&v223->__r_.__value_.__l.__data_;
  v333 = v224;
  v223->__r_.__value_.__l.__size_ = 0;
  v223->__r_.__value_.__r.__words[2] = 0;
  v223->__r_.__value_.__r.__words[0] = 0;
  if (v333 >= 0)
  {
    v225 = v332;
  }

  else
  {
    v225 = v332[0];
  }

  if (v333 >= 0)
  {
    v226 = HIBYTE(v333);
  }

  else
  {
    v226 = v332[1];
  }

  std::string::append(a2, v225, v226);
  if (SHIBYTE(v333) < 0)
  {
    operator delete(v332[0]);
  }

  if ((v343[23] & 0x80000000) != 0)
  {
    operator delete(*v343);
  }

  if (SBYTE7(v320[0]) < 0)
  {
    operator delete(v319[0]);
  }

LABEL_314:
  v238 = 0;
LABEL_297:
  if (v336 != v338)
  {
    free(v336);
  }

  if (v340 != v342)
  {
    free(v340);
  }

  v221 = *MEMORY[0x277D85DE8];
  return v238;
}

uint64_t AGCLLVMAirImageBlockGen3::getRTZModeFromImageBlockUser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(*(a1 + 472) + 4448));
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = SampleFunctionMap;
  while (1)
  {
    v9 = *(v7 + 24);
    if (v9 && *(v9 + 16) == 84)
    {
      v10 = *(v9 - 32);
      if (!v10 || *(v10 + 16) || *(v10 + 24) != *(v9 + 72))
      {
        v10 = 0;
      }

      llvm::Value::getName(v10);
      Key = llvm::StringMapImpl::FindKey();
      if (Key != -1 && Key != *(v8 + 2))
      {
        v12 = *(*v8 + 8 * Key);
        if (*(v12 + 8) == 8)
        {
          break;
        }
      }
    }

    v7 = *(v7 + 8);
    if (!v7)
    {
      return 0;
    }
  }

  DefaultRoundingMode = *(v12 + 32);
  *(a2 + 56) = *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF) + 32 * *(v12 + 38));
  if (!DefaultRoundingMode)
  {
    DefaultRoundingMode = AGCLLVMObject::getDefaultRoundingMode((*(a1 + 472) + *(**(a1 + 472) - 24)));
  }

  *(a2 + 64) = AGCLLVMTargetLowerer::getRTZMode(*(a1 + 464), DefaultRoundingMode);
  return 1;
}

uint64_t AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[36];
  if (v6 != 255)
  {
    return *(a3 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * v6);
  }

  v13 = a3 - 32 * (*(a3 + 20) & 0x7FFFFFF);
  v14 = *(v13 + 32 * a2[34]);
  v15 = (v14 + 24);
  if (*(v14 + 32) >= 0x41u)
  {
    v15 = *v15;
  }

  v16 = *v15;
  if (v16 == 2)
  {
    v22 = *(v13 + 32 * a2[35]);
    v23 = *(a1 + 192);
    v24 = llvm::ConstantInt::get();
    v29 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v24, v22, v28);
    v26 = *v22;
    v27[16] = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Shl, v26, v27);
  }

  if (v16 == 1)
  {
    v18 = *(v13 + 32 * a2[35]);
    v19 = *(a1 + 464);
    v33 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
    v35 = *(a1 + 104);
    v20 = (*(*v19 + 216))(v19, &v33, *(a3 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * a2[33]), a4, a5);
    if (v34)
    {
      llvm::MetadataTracking::untrack();
    }

    v21 = (*(**(a1 + 464) + 688))(*(a1 + 464));
    v30 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (a1 + 8));
    v32 = *(a1 + 104);
    v7 = AGCLLVMGen3TargetLowerer::buildExtractColorCoverageMask(v21, &v30, v20, v18);
    if (v31)
    {
      llvm::MetadataTracking::untrack();
    }

    return v7;
  }

  if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 192);

  return llvm::ConstantInt::get();
}

uint64_t AGCLLVMAirImageBlockGen3::getImageBlockOffsetAndFormatFromDrawBuffer(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a3 + 4 * a4);
  if ((v4 & 0x1F) != 0x17)
  {
    if ((v4 & 0x100) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 & 0x1F;
    }

    if (!v5)
    {
      return v5 != 0;
    }

    if ((~v4 & 0xFF000) != 0)
    {
      v8 = *(*(a1 + 464) + 964);
      v9 = *(a1 + 192);
      v10 = llvm::ConstantInt::get();
      v11 = 0;
      *a2 = v10;
      v12 = v4 >> 5;
      v13 = "i8";
      v14 = "8unorm";
      switch(v5)
      {
        case 1:
          v11 = "srgba8unorm";
          goto LABEL_21;
        case 2:
          v14 = "8snorm";
          goto LABEL_18;
        case 3:
          goto LABEL_18;
        case 4:
        case 5:
          goto LABEL_13;
        case 6:
          v14 = "16snorm";
          goto LABEL_18;
        case 7:
          v14 = "16unorm";
LABEL_18:
          memset(&v18, 0, sizeof(v18));
          std::string::append(&v18, off_277E20ED8[v12 - 1]);
          v11 = v14;
          goto LABEL_22;
        case 8:
        case 9:
          v13 = "i16";
          goto LABEL_13;
        case 10:
        case 11:
          v13 = "i32";
          goto LABEL_13;
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 22:
          v13 = "f16";
          goto LABEL_13;
        case 17:
          v13 = "f32";
LABEL_13:
          memset(&v18, 0, sizeof(v18));
          std::string::append(&v18, *(&off_277E20EF8 + (v12 - 1)));
          v11 = v13;
          goto LABEL_22;
        case 19:
          v11 = "rgb10a2";
          goto LABEL_21;
        case 20:
          v11 = "rgb9e5";
          goto LABEL_21;
        case 21:
          v11 = "rg11b10f";
          goto LABEL_21;
        default:
LABEL_21:
          memset(&v18, 0, sizeof(v18));
LABEL_22:
          std::string::append(&v18, v11);
          if (*(a2 + 55) < 0)
          {
            operator delete(*(a2 + 32));
          }

          *(a2 + 32) = v18;
          v15 = *(a1 + 192);
          *(a2 + 24) = llvm::ConstantInt::get();
          break;
      }

      return v5 != 0;
    }
  }

  v17 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMAirImageBlockGen3::unpackImageBlockData(v17);
}

llvm::Value *AGCLLVMAirImageBlockGen3::unpackImageBlockData(llvm::Value *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  AGCLLVMAirImageBlockGen3::extractConstantImageBlockData(v21, a1, a3);
  v8 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v8;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = v22;
  v9 = v24[0];
  *(a2 + 48) = v23;
  *(a2 + 56) = v9;
  *(a2 + 61) = *(v24 + 5);
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10)
  {
    std::string::operator=((a2 + 32), a4);
  }

  v11 = *(a1 + 26);
  LOWORD(v22) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a3, v11, v21);
  v13 = *(a1 + 41);
  v20[16] = 257;
  result = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, Cast, v13, v20);
  v15 = result;
  if (!*a2)
  {
    LOWORD(v22) = 257;
    v16 = *(a1 + 25);
    v17 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v15, v17, v21);
    *a2 = result;
  }

  if (!*(a2 + 16))
  {
    result = AGCLLVMBuilder::subrangeVector(a1, v15, 1u, 2, 1);
    *(a2 + 16) = result;
  }

  if (!*(a2 + 8))
  {
    LOWORD(v22) = 257;
    v18 = *(a1 + 25);
    v19 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v15, v19, v21);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t *AGCLLVMAirImageBlockGen3::buildEmulatedRTZConversion(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  Select = a3;
  v52[8] = *MEMORY[0x277D85DE8];
  v8 = *a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 16);
  }

  if (v8 != *(a1 + 168))
  {
    goto LABEL_65;
  }

  v9 = *(a4 + 64);
  if ((v9 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_65;
  }

  v47 = *a2;
  v48 = *(a2 + 2);
  if (v48)
  {
    llvm::MetadataTracking::track();
  }

  v49 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v47, a1 + 8);
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = v9 == 3;
  v11 = *(a1 + 464);
  v44 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (a1 + 8));
  v46 = *(a1 + 104);
  v12 = AGCLLVMTargetLowerer::buildRTZF16Value(v11, &v44, Select, v10);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (a4 + 32);
  v14 = *(a4 + 55);
  if (v14 < 0)
  {
    v14 = *(a4 + 40);
    if (!v14)
    {
LABEL_25:
      v19 = *(a1 + 56);
      if (*(v12 + 16) <= 0x1Bu)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12;
      }

      v40 = v20;
      v50 = v52;
      v51 = 0x800000000;
      v21 = *(a4 + 56);
      if (v21)
      {
        if (*(v21 + 16) >= 0x1Cu)
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, v21);
          v22 = v51;
          if (v51)
          {
            v23 = (v19 + 40);
            do
            {
              v24 = *(v50 + --v22);
              LODWORD(v51) = v22;
              v25 = *v23;
              if (*v23 != v23)
              {
                v26 = (v25 - 3);
                if (v25)
                {
                  v27 = v25 - 3;
                }

                else
                {
                  v27 = 0;
                }

                if (*(v27 + 16) - 29 <= 0xA)
                {
                  NumSuccessors = llvm::Instruction::getNumSuccessors((v25 - 3));
                  if (NumSuccessors)
                  {
                    v29 = NumSuccessors;
                    v30 = 0;
                    while (*(v24 + 40) != llvm::Instruction::getSuccessor(v26))
                    {
                      if (v29 == ++v30)
                      {
                        goto LABEL_54;
                      }
                    }

                    llvm::Instruction::moveAfter(v24, v40);
                    v31 = *(v24 + 20);
                    if ((v31 & 0x40000000) != 0)
                    {
                      v33 = *(v24 - 8);
                      v32 = v31 & 0x7FFFFFF;
                    }

                    else
                    {
                      v32 = v31 & 0x7FFFFFF;
                      v33 = (v24 - 32 * v32);
                    }

                    if (v32)
                    {
                      v34 = 32 * v32;
                      do
                      {
                        if (*v33)
                        {
                          v35 = *(*v33 + 16) >= 0x1Cu;
                        }

                        else
                        {
                          v35 = 0;
                        }

                        if (v35)
                        {
                          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v50, *v33);
                        }

                        v33 += 4;
                        v34 -= 32;
                      }

                      while (v34);
                    }
                  }
                }

LABEL_54:
                v22 = v51;
              }
            }

            while (v22);
          }
        }
      }

      v36 = *(a1 + 472);
      v41 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v42, (a1 + 8));
      v43 = *(a1 + 104);
      AGCLLVMUserObject::buildEmulatedIsF16Format(v36, &v41, *(a4 + 56));
      if (v42)
      {
        llvm::MetadataTracking::untrack();
      }

      Select = llvm::IRBuilderBase::CreateSelect();
      if (v50 != v52)
      {
        free(v50);
      }

      goto LABEL_65;
    }

    v13 = *v13;
  }

  else if (!*(a4 + 55))
  {
    goto LABEL_25;
  }

  if (v14 >= 3)
  {
    v15 = v13 + v14;
    v16 = v13;
    do
    {
      v17 = memchr(v16, 102, v14 - 2);
      if (!v17)
      {
        break;
      }

      if (*v17 == 12646 && v17[2] == 54)
      {
        if (v17 - v13 == -1)
        {
          v37 = Select;
        }

        else
        {
          v37 = v12;
        }

        if (v17 != v15)
        {
          Select = v37;
        }

        break;
      }

      v16 = v17 + 1;
      v14 = v15 - v16;
    }

    while (v15 - v16 >= 3);
  }

LABEL_65:
  v38 = *MEMORY[0x277D85DE8];
  return Select;
}

void AGCLLVMAirImageBlockGen3::extractConstantImageBlockData(AGCLLVMAirImageBlockGen3 *this, llvm::Value *a2, unsigned __int8 *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  memset(v90, 0, sizeof(v90));
  v88 = 0u;
  v89 = 0u;
  v91 = 0;
  v92 = 0;
  v6 = *(a2 + 232);
  if (v6)
  {
    v7 = *(a2 + 114);
    v8 = ((a3 >> 4) ^ (a3 >> 9)) & (v6 - 1);
    v9 = v7 + 112 * v8;
    v10 = *(v9 + 24);
    if (v10 == a3)
    {
LABEL_3:
      if (v9 != v7 + 112 * v6)
      {
        v11 = *(v9 + 56);
        *this = *(v9 + 40);
        *(this + 1) = v11;
        if (*(v9 + 95) < 0)
        {
          std::string::__init_copy_ctor_external((this + 32), *(v9 + 72), *(v9 + 80));
        }

        else
        {
          *(this + 2) = *(v9 + 72);
          *(this + 6) = *(v9 + 88);
        }

        *(this + 7) = *(v9 + 96);
        *(this + 61) = *(v9 + 101);
        goto LABEL_122;
      }
    }

    else
    {
      v12 = 1;
      while (v10 != -4096)
      {
        v13 = v8 + v12++;
        v8 = v13 & (v6 - 1);
        v9 = v7 + 112 * v8;
        v10 = *(v9 + 24);
        if (v10 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v73 = a2 + 912;
  v85 = *(a2 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (a2 + 8));
  v87 = *(a2 + 26);
  if (a3 && a3[16] >= 0x1Cu)
  {
    llvm::IRBuilderBase::SetInsertPoint((a2 + 8), a3);
  }

  v14 = 0;
  v15 = 0;
  v16 = a3;
  while (2)
  {
    v72 = v15;
    if (v14)
    {
LABEL_17:
      RTZModeFromImageBlockUser = 1;
      goto LABEL_19;
    }

    while (1)
    {
      RTZModeFromImageBlockUser = AGCLLVMAirImageBlockGen3::getRTZModeFromImageBlockUser(a2, &v88, v16);
LABEL_19:
      v18 = *(v16 + 16);
      if (v18 == 83 && v16 != 0)
      {
        imp = llvm::SmallPtrSetImplBase::find_imp(a2 + 122, v16);
        v46 = *(a2 + 123);
        v47 = 16;
        if (v46 == *(a2 + 122))
        {
          v47 = 20;
        }

        if (imp == (v46 + 8 * *(a2 + v47 + 976)))
        {
          llvm::SmallPtrSetImpl<void *>::insert(&v81, (a2 + 976), v16);
          *v83 = 0u;
          memset(v84, 0, 21);
          v81 = 0u;
          v82 = 0u;
          v49 = *(v16 + 5);
          v50 = v49 & 0x7FFFFFF;
          if ((v49 & 0x7FFFFFF) != 0)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            do
            {
              if ((v49 & 0x40000000) != 0)
              {
                v54 = *(v16 - 1);
              }

              else
              {
                v54 = &v16[-4 * v50];
              }

              if (v54[v51] != v16)
              {
                AGCLLVMAirImageBlockGen3::extractConstantImageBlockData(&v77, a2);
                if (v53)
                {
                  v81 = v77;
                  v82 = v78;
                  std::string::operator=(v83, &__p);
                  v84[1] = v80[0];
                  *(&v84[1] + 5) = *(v80 + 5);
                }

                else
                {
                  if (v77 != v81)
                  {
                    *&v81 = 0;
                  }

                  if (v78 != v82)
                  {
                    *&v82 = 0;
                  }

                  if (*(&v77 + 1) != *(&v81 + 1))
                  {
                    *(&v81 + 1) = 0;
                  }
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v53 = 0;
                v49 = *(v16 + 5);
              }

              ++v52;
              v50 = v49 & 0x7FFFFFF;
              v51 += 4;
            }

            while (v52 < v50);
          }

          llvm::SmallPtrSetImplBase::erase_imp(a2 + 122, v16);
          if (!v88)
          {
            v55 = v81;
            if (v81)
            {
              v56 = *(a2 + 24);
              v57 = llvm::ConstantInt::get();
              LOWORD(__p.__r_.__value_.__l.__data_) = 257;
              *&v88 = llvm::IRBuilderBase::CreateAdd((a2 + 8), v55, v57, &v77);
            }
          }

          if (!v89 && v82)
          {
            *&v89 = v82;
          }

          if (!*(&v88 + 1) && *(&v81 + 1))
          {
            *(&v88 + 1) = *(&v81 + 1);
          }

          if (SHIBYTE(v84[0]) < 0)
          {
            operator delete(v83[0]);
          }
        }

        else
        {
          v48 = 0uLL;
          v88 = 0u;
          v89 = 0u;
          if ((v90[23] & 0x80000000) != 0)
          {
            operator delete(*v90);
            v48 = 0uLL;
          }

          *&v90[29] = 0;
          *v90 = v48;
          *&v90[16] = v48;
        }

        goto LABEL_109;
      }

      if (v18 - 78 < 0xFFFFFFFE || v16 == 0)
      {
        break;
      }

LABEL_60:
      v24 = *(v16 + 5);
      if ((v24 & 0x40000000) != 0)
      {
        v42 = *(v16 - 1);
        goto LABEL_63;
      }

LABEL_61:
      v42 = &v16[-4 * (v24 & 0x7FFFFFF)];
LABEL_63:
      v16 = *v42;
      if (RTZModeFromImageBlockUser)
      {
        goto LABEL_17;
      }
    }

    if (v18 == 5 && v16 != 0)
    {
      if ((*(v16 + 9) & 0xFFFE) != 0x30)
      {
        goto LABEL_109;
      }

      v24 = *(v16 + 5);
      goto LABEL_61;
    }

    if (v18 == 62 && v16)
    {
      if (v16[9] != *(a2 + 23))
      {
        goto LABEL_109;
      }

      if ((*(v16 + 5) & 0x7FFFFFF) != 2)
      {
        goto LABEL_109;
      }

      v43 = *(v16 - 4);
      if (*(v43 + 16) != 16)
      {
        goto LABEL_109;
      }

      v44 = (v43 + 24);
      if (*(v43 + 32) >= 0x41u)
      {
        v44 = *v44;
      }

      v16 = *(v16 - 8);
      v15 = v72 + *v44;
      v14 = 1;
      continue;
    }

    break;
  }

  if (v18 == 90 && v16)
  {
    v22 = *(v16 + 5);
    if ((v22 & 0x40000000) != 0)
    {
      v23 = *(v16 - 1);
    }

    else
    {
      v23 = &v16[-4 * (v22 & 0x7FFFFFF)];
    }

    if (**v23 != *(a2 + 41))
    {
      goto LABEL_109;
    }

    v25 = v23[8];
    if (*(v25 + 16) != 16)
    {
      goto LABEL_109;
    }

    v26 = (v25 + 24);
    if (*(v25 + 32) >= 0x41u)
    {
      v26 = *v26;
    }

    v27 = v23[4];
    v28 = *v26;
    if ((*v26 - 1) < 2)
    {
      v31 = &v91 + v28;
      v32 = *(v31 - 1);
      if (!v32)
      {
        v32 = v27;
      }

      *(v31 - 1) = v32;
      if (!v89)
      {
        v33 = v91;
        if (v91)
        {
          v34 = v92;
          if (v92)
          {
            v35 = *(a2 + 30);
            v36 = llvm::UndefValue::get();
            LOWORD(v83[0]) = 257;
            v37 = *(a2 + 25);
            v38 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((a2 + 8), v36, v33, v38, &v81);
            LOWORD(__p.__r_.__value_.__l.__data_) = 257;
            v40 = *(a2 + 25);
            v41 = llvm::ConstantInt::get();
            *&v89 = llvm::IRBuilderBase::CreateInsertElement((a2 + 8), InsertElement, v34, v41, &v77);
          }
        }
      }
    }

    else if (v28 == 3)
    {
      if (!*(&v88 + 1))
      {
        *(&v88 + 1) = v27;
      }
    }

    else if (!v28 && !v88)
    {
      v29 = *(a2 + 24);
      v30 = llvm::ConstantInt::get();
      LOWORD(v83[0]) = 257;
      *&v88 = llvm::IRBuilderBase::CreateAdd((a2 + 8), v27, v30, &v81);
    }

    goto LABEL_60;
  }

  if (v18 <= 0x14)
  {
    if (v16)
    {
      if (*v16 == *(a2 + 41))
      {
        AggregateElement = llvm::Constant::getAggregateElement(v16);
        if (AggregateElement)
        {
          if (llvm::Constant::isZeroValue(AggregateElement))
          {
            if (!v88)
            {
              v66 = *(a2 + 24);
              *&v88 = llvm::ConstantInt::get();
            }

            v67 = v91;
            if (!v91)
            {
              v67 = llvm::Constant::getAggregateElement(v16);
              v91 = v67;
            }

            v68 = v92;
            if (!v92)
            {
              v68 = llvm::Constant::getAggregateElement(v16);
              v92 = v68;
              v67 = v91;
            }

            if (!v89 && v67 && v68)
            {
              v69 = *(a2 + 30);
              v70 = llvm::UndefValue::get();
              LOWORD(v83[0]) = 257;
              v71 = AGCLLVMBuilder::CreateInsertElement(a2, v70, v67, 0, &v81);
              LOWORD(__p.__r_.__value_.__l.__data_) = 257;
              *&v89 = AGCLLVMBuilder::CreateInsertElement(a2, v71, v68, 1u, &v77);
            }

            if (!*(&v88 + 1))
            {
              *(&v88 + 1) = llvm::Constant::getAggregateElement(v16);
            }
          }
        }
      }
    }
  }

LABEL_109:
  v74 = v85;
  v75 = v86;
  if (v86)
  {
    llvm::MetadataTracking::track();
  }

  v76 = v87;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v74, a2 + 8);
  if (v75)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::CallbackVH::CallbackVH(&v81, a3);
  *&v81 = &unk_2825A7200;
  v83[0] = v73;
  *&v77 = 0;
  v58 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*(a2 + 114), *(a2 + 232), *(&v82 + 1), &v77);
  v59 = v77;
  if ((v58 & 1) == 0)
  {
    v59 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v73, &v81, v77);
    llvm::ValueHandleBase::operator=((v59 + 8), &v81 + 1);
    *(v59 + 32) = v83[0];
    *(v59 + 40) = 0u;
    *(v59 + 56) = 0u;
    *(v59 + 72) = 0u;
    *(v59 + 88) = 0u;
    *(v59 + 101) = 0;
  }

  if (*(&v82 + 1) != -8192 && *(&v82 + 1) != -4096 && *(&v82 + 1))
  {
    llvm::ValueHandleBase::RemoveFromUseList((&v81 + 8));
  }

  v60 = v89;
  *(v59 + 40) = v88;
  *(v59 + 56) = v60;
  std::string::operator=((v59 + 72), v90);
  v61 = *&v90[16];
  *(v59 + 96) = *&v90[24];
  v62 = *&v90[29];
  *(v59 + 101) = *&v90[29];
  v63 = v89;
  *this = v88;
  *(this + 1) = v63;
  *(this + 2) = *v90;
  memset(v90, 0, 24);
  *(this + 61) = v62;
  *(this + 3) = v61;
  if (v86)
  {
    llvm::MetadataTracking::untrack();
    if ((v90[23] & 0x80000000) != 0)
    {
      operator delete(*v90);
    }
  }

LABEL_122:
  v64 = *MEMORY[0x277D85DE8];
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0 &&>>()
{
  v47 = *MEMORY[0x277D85DE8];
  *&v41[4] = 0uLL;
  v0 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.imageblock_data", 0x13uLL);
  *(v0 + 8) = 0x300000000;
  *(v0 + 16) = 2;
  *(v0 + 36) = *&v41[16];
  *(v0 + 20) = *v41;
  *(v0 + 40) = -4261347073;
  *&v41[12] = 0;
  *&v41[4] = 0;
  v1 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.implicit_imageblock_data", 0x1CuLL);
  *(v1 + 8) = 0x300000001;
  *(v1 + 16) = 2;
  *(v1 + 36) = *&v41[16];
  *(v1 + 20) = *v41;
  *(v1 + 40) = -4244504320;
  *&v41[12] = 0;
  *&v41[4] = 0;
  v2 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_width", 0x18uLL);
  *(v2 + 8) = 2;
  *(v2 + 16) = 2;
  *(v2 + 36) = *&v41[16];
  *(v2 + 20) = *v41;
  *(v2 + 40) = -1;
  *&v41[12] = 0;
  *&v41[4] = 0;
  v3 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_height", 0x19uLL);
  *(v3 + 8) = 0x100000002;
  *(v3 + 16) = 2;
  *(v3 + 36) = *&v41[16];
  *(v3 + 20) = *v41;
  *(v3 + 40) = -1;
  *&v41[12] = 0;
  *&v41[4] = 0;
  v4 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_samples", 0x1AuLL);
  *(v4 + 8) = 0x200000002;
  *(v4 + 16) = 2;
  *(v4 + 36) = *&v41[16];
  *(v4 + 20) = *v41;
  *(v4 + 40) = -1;
  *&v41[12] = 0;
  *&v41[4] = 0;
  v5 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_num_colors", 0x1DuLL);
  *(v5 + 8) = 0x300000005;
  *(v5 + 16) = 0;
  *(v5 + 36) = *&v41[16];
  *(v5 + 20) = *v41;
  *(v5 + 40) = -1;
  *&v41[12] = 0;
  *&v41[4] = 0;
  v6 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_color_coverage_mask", 0x1BuLL);
  *(v6 + 8) = 0x300000005;
  v7 = 1;
  *(v6 + 16) = 1;
  *(v6 + 36) = *&v41[16];
  *(v6 + 20) = *v41;
  *(v6 + 40) = -1;
  std::string::basic_string[abi:nn200100]<0>(v45, ".imageblock");
  std::string::basic_string[abi:nn200100]<0>(v46, ".implicit_imageblock");
  std::string::basic_string[abi:nn200100]<0>(v43, ".mask");
  std::string::basic_string[abi:nn200100]<0>(v44, &unk_20E75F419);
  v8 = 0;
  *v41 = v42;
  *&v41[8] = xmmword_20E70C500;
  v9 = "air.load";
  v10 = &AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0::operator() const(void)::op_types;
  do
  {
    v37 = v7;
    v11 = 0;
    v36 = v8;
    v12 = *(v10 + 2);
    v13 = ".i8";
    do
    {
      v38 = v11;
      v14 = v45;
      v15 = 1;
      do
      {
        v39 = v15;
        v40 = std::string::compare(v14, ".imageblock");
        if (v12 != 3 || v40)
        {
          v16 = v43;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = std::string::compare(v16, ".mask");
            v20 = v19;
            if (v12 != 3 || v19)
            {
              v21 = strlen(v9);
              *&v41[8] = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(v41, v9, &v9[v21]);
              size = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
              if (size >= 0)
              {
                v23 = v14;
              }

              else
              {
                v23 = v14->__r_.__value_.__r.__words[0];
              }

              if (size < 0)
              {
                size = v14->__r_.__value_.__l.__size_;
              }

              llvm::SmallVectorImpl<char>::append<char const*,void>(v41, v23, v23 + size);
              v24 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
              if (v24 >= 0)
              {
                v25 = v16;
              }

              else
              {
                v25 = v16->__r_.__value_.__r.__words[0];
              }

              if (v24 < 0)
              {
                v24 = v16->__r_.__value_.__l.__size_;
              }

              llvm::SmallVectorImpl<char>::append<char const*,void>(v41, v25, v25 + v24);
              v26 = strlen(v13);
              llvm::SmallVectorImpl<char>::append<char const*,void>(v41, v13, &v13[v26]);
              v27 = strlen(v13);
              if (v27)
              {
                v28 = v13 + 1;
              }

              else
              {
                v28 = v13;
              }

              if (v12 == 4)
              {
                v30 = 0xFF00FF03FFFF0201;
                if (v20)
                {
                  v30 = 0xFF00FFFF04030201;
                }

                if (v40)
                {
                  v29 = v30;
                }

                else
                {
                  v29 = 0x3000102FFFFFFFFLL;
                }
              }

              else if (v12 == 3)
              {
                v29 = -4244504320;
              }

              else
              {
                v29 = -1;
              }

              v31 = v27 - (v27 != 0);
              v32 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>(*v41, *&v41[8]);
              *(v32 + 8) = v12;
              *(v32 + 12) = 0x200000003;
              *(v32 + 24) = v28;
              *(v32 + 32) = v31;
              *(v32 + 40) = v29;
            }

            v17 = 0;
            v16 = v44;
          }

          while ((v18 & 1) != 0);
        }

        v15 = 0;
        v14 = v46;
      }

      while ((v39 & 1) != 0);
      v11 = v38 + 1;
      v13 = (&pixel_data_types)[2 * v38 + 2];
    }

    while (v38 != 14);
    v10 = &(&AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0::operator() const(void)::op_types)[2 * v37];
    v9 = *v10;
    v8 = 1;
    v7 = 2;
  }

  while ((v36 & 1) == 0);
  if (*v41 != v42)
  {
    free(*v41);
  }

  for (i = 0; i != -48; i -= 24)
  {
    if (v44[i + 23] < 0)
    {
      operator delete(v43[i / 0x18 + 1].__r_.__value_.__l.__data_);
    }
  }

  for (j = 0; j != -48; j -= 24)
  {
    if (v46[j + 23] < 0)
    {
      operator delete(v45[j / 0x18 + 1].__r_.__value_.__l.__data_);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27C8D8178) = qword_27C8D8178 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 49, 8);
  v9 = v8;
  v10 = v8 + 48;
  if (a2)
  {
    memcpy((v8 + 48), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0x300000006;
  *(v9 + 16) = 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = -1;
  *i = v9;
  ++dword_27C8D8174;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

uint64_t AGCLLVMAirImageBlockGen3::replaceBulkMemWrites(AGCLLVMAirImageBlockGen3 *this)
{
  v1 = *(this + 54);
  v2 = *(v1 + 32);
  v27 = v1 + 24;
  if (v2 != v1 + 24)
  {
    do
    {
      if (v2)
      {
        v4 = v2 - 56;
      }

      else
      {
        v4 = 0;
      }

      v28 = *(v2 + 8);
      v5 = *(v4 + 36);
      if ((v5 - 194) <= 5 && ((1 << (v5 + 62)) & 0x29) != 0)
      {
        if (*(v2 - 38))
        {
          llvm::Function::BuildLazyArguments((v2 - 56));
        }

        v7 = *(v2 + 32);
        v8 = *(*v7 + 8);
        if ((v8 & 0xFE) == 0x12)
        {
          v8 = *(**(*v7 + 16) + 8);
        }

        v9 = v7[5];
        if (*(v9 + 8) != 15)
        {
          v9 = 0;
        }

        if (v9)
        {
          v10 = *(v9 + 8);
          if ((v10 & 0xFE) == 0x12)
          {
            v10 = *(**(v9 + 16) + 8);
          }

          v11 = v10 >> 8;
        }

        else
        {
          v11 = 0;
        }

        v12 = v8 >> 8;
        if (v9)
        {
          v13 = v11 == 4;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        if (v12 == 4 || v14 != 0)
        {
          v16 = *(v2 - 48);
          if (v16)
          {
            v17 = *(v16 + 24);
            v18 = (v17 - 32 * (*(v17 + 5) & 0x7FFFFFF));
            v29 = *(v16 + 8);
            v30 = *v18;
            v19 = v18[4];
            v20 = v18[8];
            v21 = *(this + 22);
            llvm::ConstantInt::get();
            llvm::IRBuilderBase::SetInsertPoint((this + 8), v17);
            v23 = *(this + 7);
            v22 = *(this + 8);
            llvm::BasicBlock::splitBasicBlock();
            v24 = *(this + 57);
            v25 = *(v23 + 56);
            operator new();
          }
        }
      }

      v2 = v28;
    }

    while (v28 != v27);
  }

  return 1;
}

void AGCLLVMAirImageBlockGen3::AGCLLVMAirImageBlockGen3(AGCLLVMAirImageBlockGen3 *this, AGCLLVMUserObject *a2, llvm::LLVMContext **a3, AGCLLVMTargetLowerer *a4, const llvm::DataLayout *a5)
{
  v9 = (this + 492);
  AGCLLVMBuilder::AGCLLVMBuilder(this, *a3);
  v28 = a4;
  *(v10 + 464) = a4;
  *(v10 + 472) = a2;
  *(v9 + 28) = xmmword_20E70C6A0;
  *(v10 + 552) = 0x1000000000;
  *v10 = &unk_2825A7228;
  *(v10 + 488) = 0;
  *(v10 + 500) = 0;
  v11 = (v10 + 512);
  *(v10 + 512) = v10 + 536;
  v12 = (v10 + 544);
  *(v10 + 544) = v10 + 560;
  v13 = (v10 + 688);
  *(v10 + 688) = 0;
  *(v10 + 696) = 0u;
  *(v10 + 712) = v10 + 728;
  *(v10 + 720) = 0x800000000;
  *(v10 + 856) = 0;
  *(v10 + 864) = v10 + 880;
  *(v10 + 872) = 0x800000000;
  llvm::DataLayout::clear((v10 + 480));
  std::string::operator=(v13, (a5 + 208));
  *(this + 480) = *a5;
  *(this + 121) = *(a5 + 1);
  *(this + 244) = *(a5 + 4);
  *(this + 250) = *(a5 + 10);
  *v9 = *(a5 + 12);
  *(this + 63) = *(a5 + 3);
  v14 = (a5 + 32);
  if (v11 != (a5 + 32))
  {
    v15 = *(a5 + 5);
    v16 = *(v9 + 28);
    if (v16 >= v15)
    {
      if (v15)
      {
        memmove(*v11, *v14, *(a5 + 5));
      }
    }

    else
    {
      if (*(this + 66) < v15)
      {
        *(v9 + 28) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v16)
      {
        memmove(*v11, *v14, *(v9 + 28));
      }

      v17 = *(a5 + 5);
      if (v17 != v16)
      {
        memcpy(*v11 + v16, *v14 + v16, v17 - v16);
      }
    }

    *(v9 + 28) = v15;
  }

  v18 = (this + 712);
  v19 = (a5 + 64);
  if (v12 != (a5 + 64))
  {
    v20 = *(a5 + 18);
    v21 = *(this + 138);
    if (v21 >= v20)
    {
      if (v20)
      {
        memmove(*v12, *v19, 8 * v20 - 2);
      }
    }

    else
    {
      if (*(this + 139) < v20)
      {
        *(this + 138) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v21)
      {
        memmove(*v12, *v19, 8 * v21 - 2);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(a5 + 18) - v21;
      if (v22)
      {
        memcpy(*v12 + 8 * v21, *v19 + 8 * v21, 8 * v22);
      }
    }

    *(this + 138) = v20;
  }

  v23 = (a5 + 232);
  if (v18 != (a5 + 232))
  {
    v24 = *(a5 + 60);
    v25 = *(this + 180);
    if (v25 >= v24)
    {
      if (v24)
      {
        memmove(*v18, *v23, 16 * v24);
      }
    }

    else
    {
      if (*(this + 181) < v24)
      {
        *(this + 180) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v25)
      {
        memmove(*v18, *v23, 16 * v25);
      }

      else
      {
        v25 = 0;
      }

      v26 = *(a5 + 60) - v25;
      if (v26)
      {
        memcpy(*v18 + 16 * v25, *v23 + 16 * v25, 16 * v26);
      }
    }

    *(this + 180) = v24;
  }

  llvm::SmallVectorImpl<unsigned int>::operator=(this + 864, a5 + 384);
  *(this + 54) = a3;
  *(this + 26) = *(v28 + 26);
  *this = &unk_2825A71C8;
  *(this + 232) = 128;
  *(this + 114) = MEMORY[0x20F330650](14336, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(this + 912);
  *(this + 936) = 0;
  *(this + 960) = 0;
  *(this + 122) = this + 1008;
  *(this + 123) = this + 1008;
  *(this + 124) = 4;
  *(this + 250) = 0;
  *(this + 1040) = 0;
}

BOOL AGCLLVMDriverIntersectionShader::constructReply(AGCLLVMDriverIntersectionShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = this + *(*this - 24);
    v3[4358] = 1;
    v4 = *(v3 + 1082);
    v5 = *(v3 + 1080) - *(v3 + 1084);
    if (v3[4368] == 1)
    {
      v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 4, v6);
      if (v3[4368])
      {
        v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 6, v7);
      }
    }

    v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 8, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 536, 10, (**(this + 10) >> 10) & 7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 536, 12, **(this + 10) >> 13, 0);
    v9 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4288), v5 + v4);
    v10 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v12 = flatbuffers::FlatBufferBuilder::EndTable(v10, v11);
    v13 = this + *(*this - 24);
    v13[4358] = 1;
    v14 = *(v13 + 1082);
    v15 = *(v13 + 1080) - *(v13 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>((v13 + 4288), v9);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v13 + 4288), v12);
    v16 = *(*this - 24);
    v17 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v15 + v14);
    flatbuffers::FlatBufferBuilder::Finish((this + v16 + 4288), v17, v18);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 18, v4);
  }

  return result;
}

void AGCLLVMDriverIntersectionShader::getCompilationKeyDescription(AGCLLVMDriverIntersectionShader *this@<X0>, std::string *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(this + 10);
  std::string::basic_string[abi:nn200100]<0>(v24, "AGCDriverIntersectionState");
  std::string::basic_string[abi:nn200100]<0>(v22, "primitiveType");
  _agcFieldString<unsigned int>(&v26, v22, *v3 & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v20, "leafVariant");
  _agcFieldString<unsigned int>(&v27, v20, (*v3 >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v18, "payloadVariant");
  _agcFieldString<unsigned int>(&v28, v18, (*v3 >> 7) & 7);
  std::string::basic_string[abi:nn200100]<0>(v16, "threadsPerLeafPOT");
  _agcFieldString<unsigned int>(&v29, v16, (*v3 >> 10) & 7);
  std::string::basic_string[abi:nn200100]<0>(v14, "maxParallelLeavesPOT");
  _agcFieldString<unsigned int>(&v30, v14, *v3 >> 13);
  std::string::basic_string[abi:nn200100]<0>(v12, "disableTemporalSplits");
  _agcFieldString<unsigned int>(&v31, v12, HIWORD(*v3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v10, "disableRIARTU");
  _agcFieldString<unsigned int>(&v32, v10, (*v3 >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "disableRIARTT");
  _agcFieldString<unsigned int>(&v33, v8, (*v3 >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v34, __p, *v3 >> 20);
  _agcGroupWithHeader(a2, v24, &v26, 9);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v34.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v34.__r_.__value_.__l.__data_ + i * 8));
    }
  }

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

  v5 = *MEMORY[0x277D85DE8];
}

void AGCLLVMDriverIntersectionShader::wrapperName(AGCLLVMDriverIntersectionShader *this@<X0>, _BYTE *a2@<X8>)
{
  (*(**(this + *(*this - 24) + 2168) + 1352))(__p, *(this + *(*this - 24) + 2168), **(this + 10) & 0xF, (**(this + 10) >> 7) & 7, (**(this + 10) >> 4) & 7);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  std::string::basic_string[abi:nn200100]<0>(a2, v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

const char *AGCLLVMDriverIntersectionShader::dumpType(AGCLLVMDriverIntersectionShader *this)
{
  v2 = *(this + *(*this - 24) + 2168);
  v3 = (*(*v2 + 1424))(v2, **(this + 10) & 0xF, (**(this + 10) >> 4) & 7);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        return "cliqueS-general-(driver)";
      }

      return "intersection-(driver)";
    }

    v5 = *(this + 10);
    result = "cliqueS-timesplit-intersection-(driver)";
    if (v5)
    {
      if ((*(v5 + 2) & 1) == 0)
      {
        return "cliqueS-temporal-split-intersection-(driver)";
      }
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return "cliqueS-pop-intersection-(driver)";
      }

      return "intersection-(driver)";
    }

    return "cliqueS-push-intersection-(driver)";
  }

  return result;
}

void virtual thunk toAGCLLVMDriverIntersectionShader::~AGCLLVMDriverIntersectionShader(AGCLLVMDriverIntersectionShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));
}

void non-virtual thunk toAGCLLVMDriverIntersectionShader::~AGCLLVMDriverIntersectionShader(AGCLLVMDriverIntersectionShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 16));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 16));
}

void AGCLLVMDriverIntersectionShader::~AGCLLVMDriverIntersectionShader(AGCLLVMDriverIntersectionShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

BOOL AGCLLVMUserIntersectionShader::constructReply(AGCLLVMUserIntersectionShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = *this;
    v5 = this + *(*this - 24);
    v5[4358] = 1;
    v6 = *(v5 + 1082);
    v7 = *(v5 + 1080) - *(v5 + 1084);
    v8 = *(this + 575);
    v9 = *(this + 2308);
    v10 = *(this + 1148);
    v11 = (*(**(this + *(v4 - 24) + 2168) + 1344))();
    v13 = v12;
    if (*(this + 1137) >= 4u)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(this + 1137);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 536, 4, v11, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 536, 6, v13, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 536, 8, *(this + 576), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 536, 18, *(this + 1148));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 536, 10, (*(this + 1136) >> 10) & 7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 536, 12, *(this + 1136) >> 13, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v5 + 536, 14, *(this + 12), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v5 + 536, 20, *(this + 4617) & 1, 0);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v5 + 536, 22, v14);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
    v16 = this + *(*this - 24);
    v17 = *(v16 + 1080);
    v16[4358] = 1;
    v18 = *(v16 + 1082);
    v19 = v17 - *(v16 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v16 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>((v16 + 4288), v15);
    v20 = *(*this - 24);
    v21 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v19 + v18);
    flatbuffers::FlatBufferBuilder::Finish((this + v20 + 4288), v21, v22);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMUserIntersectionShader::getCompilationKeyDescription(AGCLLVMUserIntersectionShader *this@<X0>, std::string *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = this + 4544;
  std::string::basic_string[abi:nn200100]<0>(v25, "AGCUserIntersectionState");
  std::string::basic_string[abi:nn200100]<0>(v23, "leafVariant");
  _agcFieldString<unsigned int>(&v27, v23, *(this + 1136) & 7);
  std::string::basic_string[abi:nn200100]<0>(v21, "threadsPerLeafPOT");
  _agcFieldString<unsigned int>(&v28, v21, (*(this + 1136) >> 10) & 7);
  std::string::basic_string[abi:nn200100]<0>(v19, "maxParallelLeavesPOT");
  _agcFieldString<unsigned int>(&v29, v19, *(this + 1136) >> 13);
  std::string::basic_string[abi:nn200100]<0>(v17, "disableParallelLeafLoop");
  _agcFieldString<unsigned int>(&v30, v17, (*(this + 1136) >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v15, "disableTemporalSplits");
  _agcFieldString<unsigned int>(&v31, v15, (*(this + 1136) >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v13, "disableRIARTU");
  _agcFieldString<unsigned int>(&v32, v13, (*(this + 1136) >> 21) & 1);
  std::string::basic_string[abi:nn200100]<0>(v11, "disableRIARTT");
  _agcFieldString<unsigned int>(&v33, v11, (*(this + 1136) >> 22) & 1);
  std::string::basic_string[abi:nn200100]<0>(v9, "compileAsPic");
  _agcFieldString<unsigned int>(&v34, v9, (*(this + 1136) >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v35, __p, v4[3]);
  _agcGroupWithHeader(a2, v25, &v27, 9);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v35.__r_.__value_.__l.__data_ + i * 8));
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

  v6 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMUserIntersectionShader::~AGCLLVMUserIntersectionShader(AGCLLVMUserIntersectionShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserShader::~AGCLLVMUserShader(v1, off_2825A35B0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this + *(*this - 24)), off_2825A35B0);
  v2 = (v1 + 4624);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void non-virtual thunk toAGCLLVMUserIntersectionShader::~AGCLLVMUserIntersectionShader(AGCLLVMUserIntersectionShader *this)
{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A35B0);
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A35B0);

  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

uint64_t AGCLLVMUserIntersectionShader::replaceBuiltins(AGCLLVMUserIntersectionShader *this)
{
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    GlobalSCSLayoutGlobal = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
    v5 = (*(*this + 536))(this);
    v6 = *(this + 2308);
    v7 = (*(**(this + *(*this - 24) + 2168) + 1456))();
    (*(*v3 + 1448))(v3, this + 3984, 0, GlobalSCSLayoutGlobal, v5, v7);
  }

  return v2;
}

uint64_t AGCLLVMUserIntersectionShader::setupShaderOutputs(AGCLLVMUserIntersectionShader *this)
{
  v1 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t AGCLLVMUserIntersectionShader::setupShaderInputs(AGCLLVMUserIntersectionShader *this)
{
  v183 = *MEMORY[0x277D85DE8];
  v2 = *(*(this + *(*this - 24) + 2168) + 920);
  (*(*v2 + 896))(v2);
  AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
  v3 = this + *(*this - 24);
  v4 = *(v3 + 267);
  (*(**(v3 + 271) + 1360))(&v180);
  v5 = v181;
  *(this + 249) = v180;
  *(this + 250) = v5;
  *(this + 251) = v182;
  v6 = *(*(this + 21) + 80);
  v7 = v6 - 24;
  if (!v6)
  {
    v7 = 0;
  }

  v129 = v7;
  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = (v8 - 24);
  }

  else
  {
    v9 = 0;
  }

  AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v9, *(this + 5));
  v10 = *(this + 1137);
  if (v10 == 3)
  {
    v117 = this + *(*this - 24);
    v118 = *(v117 + 271);
    v171 = *(v117 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v172, (v117 + 1712));
    v173 = *(v117 + 452);
    v119 = *(this + 1136);
    v120 = *(this + 2308);
    v121 = (*(**(this + *(*this - 24) + 2168) + 1456))();
    v122 = (*(this + 2308) >> 5) & 1;
    v123 = *(this + 1136);
    v124 = (*(*this + 536))(this);
    (*(*v118 + 1208))(&v180, v118, &v171, this + 3984, v119 & 7, v121, v122, (v123 >> 10) & 7, v124, 0);
    v125 = v181;
    *(this + 4552) = v180;
    *(this + 4568) = v125;
    if (!v172)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v10 == 2)
  {
    v19 = this + *(*this - 24);
    v20 = *(v19 + 271);
    v174 = *(v19 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v175, (v19 + 1712));
    v176 = *(v19 + 452);
    v21 = *(this + 1136);
    v22 = *(this + 2308);
    v23 = (*(**(this + *(*this - 24) + 2168) + 1456))();
    v24 = (*(this + 2308) >> 5) & 1;
    v25 = *(this + 1136);
    v26 = (*(*this + 536))(this);
    (*(*v20 + 1200))(&v180, v20, &v174, this + 3984, v21 & 7, v23, v24, (v25 >> 10) & 7, v26, 0);
    v27 = v181;
    *(this + 4552) = v180;
    *(this + 4568) = v27;
    if (!v175)
    {
      goto LABEL_14;
    }

LABEL_13:
    llvm::MetadataTracking::untrack();
    goto LABEL_14;
  }

  if (v10 != 1)
  {
LABEL_14:
    v127 = 0;
    goto LABEL_15;
  }

  v11 = this + *(*this - 24);
  v12 = *(v11 + 271);
  v177 = *(v11 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v178, (v11 + 1712));
  v179 = *(v11 + 452);
  v13 = *(this + 1136);
  v14 = *(this + 2308);
  v15 = (*(**(this + *(*this - 24) + 2168) + 1456))();
  v16 = (*(this + 2308) >> 5) & 1;
  v17 = *(this + 1136);
  v126 = (*(*this + 536))(this);
  (*(*v12 + 1192))(&v180, v12, &v177, this + 3984, v13 & 7, v15, v16, (v17 >> 10) & 7, 0, v126);
  v18 = v181;
  *(this + 4552) = v180;
  *(this + 4568) = v18;
  if (v178)
  {
    llvm::MetadataTracking::untrack();
  }

  v127 = 1;
LABEL_15:
  v28 = *(this + *(*this - 24) + 2136);
  v29 = v28 + 24;
  v30 = this + 1712;
  v31 = *(v28 + 32);
  if (v31 != v28 + 24)
  {
    v128 = v28 + 24;
    do
    {
      if (v31)
      {
        v32 = (v31 - 56);
      }

      else
      {
        v32 = 0;
      }

      Name = llvm::Value::getName(v32);
      if (v34 >= 0xF && *Name == 0x612E74722E786761 && *(Name + 7) == 0x746E656D75677261)
      {
        v36 = this + *(*this - 24);
        v168 = *(v36 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v169, (v36 + 1712));
        v170 = *(v36 + 452);
        *&v180 = &v181;
        *(&v180 + 1) = 0x800000000;
        v37 = *(v32 + 1);
        if (v37)
        {
          do
          {
            v38 = *(v37 + 24);
            v39 = *&v38[-8 * (v38[5] & 0x7FFFFFF)];
            v40 = (v39 + 24);
            if (*(v39 + 32) >= 0x41u)
            {
              v40 = *v40;
            }

            v41 = *v40;
            llvm::IRBuilderBase::SetInsertPoint(&v30[*(*this - 24)], *(v37 + 24));
            v42 = this + *(*this - 24);
            v43 = *(v42 + 271);
            v165 = *(v42 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v166, (v42 + 1712));
            v167 = *(v42 + 452);
            v44 = (*(*v43 + 928))(v43, &v165, v41, this + 4552, *(this + 2308), *(this + 1148));
            if (v166)
            {
              llvm::MetadataTracking::untrack();
            }

            v45 = *v38;
            v46 = *(*v38 + 8);
            if (v46 == 15)
            {
              if (v45 != *v44)
              {
                v48 = *(*this - 24);
                v164 = 257;
                llvm::IRBuilderBase::CreatePointerCast(&v30[v48], v44, v45, v163);
              }
            }

            else if (v46 == 13 && v45 != *v44)
            {
              v47 = *(*this - 24);
              v164 = 257;
              llvm::IRBuilderBase::CreateZExtOrTrunc(&v30[v47], v44, v45, v163);
            }

            llvm::Value::replaceAllUsesWith();
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v180, v38);
            v37 = *(v37 + 8);
          }

          while (v37);
          if (DWORD2(v180))
          {
            v49 = v180;
            v50 = 8 * DWORD2(v180);
            do
            {
              v51 = *v49++;
              llvm::Instruction::eraseFromParent(v51);
              v50 -= 8;
            }

            while (v50);
          }
        }

        v52 = *(*this - 24);
        v160 = v168;
        v161 = v169;
        if (v169)
        {
          llvm::MetadataTracking::track();
        }

        v162 = v170;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v160, &v30[v52]);
        v29 = v128;
        if (v161)
        {
          llvm::MetadataTracking::untrack();
        }

        if (v180 != &v181)
        {
          free(v180);
        }

        if (v169)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v31 = *(v31 + 8);
    }

    while (v31 != v29);
  }

  v53 = *(this + 21);
  v54 = v129;
  if (*(v53 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v56 = *(this + 21);
    v55 = *(v53 + 88);
    if (*(v56 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v53 = v56;
  }

  else
  {
    v55 = *(v53 + 88);
  }

  for (i = *(v53 + 88) + 40 * *(v53 + 96); v55 != i; v55 += 40)
  {
    if (*(v55 + 8))
    {
      v58 = *(v54 + 40);
      v59 = v58 ? (v58 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v59, *(this + 5));
      v60 = *(v55 + 32);
      v61 = *(*(this + 10) + 8 * v60);
      if ((AGCLLVMUserShader::replaceInputArgument(this, v55, v60, v61) & 1) == 0 && isStringMDNode(*(v61 - 8 * *(v61 + 8) + 8), "air.payload"))
      {
        v62 = *v55;
        v63 = *(this + 571);
        v64 = *(v63 + 32);
        if (v64)
        {
          v65 = v64 == *(v63 + 40) + 40;
        }

        else
        {
          v65 = 1;
        }

        if (v65)
        {
          v66 = 0;
        }

        else
        {
          v66 = (v64 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(&v30[*(*this - 24)], v66);
        v67 = *(*this - 24);
        LOWORD(v182) = 257;
        v68 = v63;
        v54 = v129;
        llvm::IRBuilderBase::CreatePointerCast(&v30[v67], v68, v62, &v180);
        llvm::Value::replaceAllUsesWith();
        v163[0] = 0;
        LODWORD(v180) = 5;
        parseMDInt(0, v61, &v180, v163);
        *(this + 575) = v163[0];
        *(this + 576) = llvm::DataLayout::getABITypeAlignment((this + 224), v62);
        AGCLLVMUserObject::createSCSUserDataBoundGlobal(this);
      }
    }
  }

  AGCLLVMUserObject::createSCSDriverDataStartGlobal(this);
  v69 = *(this + *(*this - 24) + 2136);
  v70 = *(*(llvm::Module::getFunction() + 8) + 24);
  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v70);
  v71 = this + *(*this - 24);
  v72 = *(v71 + 271);
  v157 = *(v71 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v158, (v71 + 1712));
  v159 = *(v71 + 452);
  (*(*v72 + 1304))(v72, &v157, this + 4552);
  if (v158)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v70);
  v73 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v75 = *(*(Function + 8) + 24);
    v76 = *(v75 - 4 * (*(v75 + 5) & 0x7FFFFFF));
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v75);
    v77 = this + *(*this - 24);
    v78 = *(v77 + 271);
    v154 = *(v77 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v155, (v77 + 1712));
    v156 = *(v77 + 452);
    (*(*v78 + 1312))(v78, &v154, this + 4552, v76);
    if (v155)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v75);
  }

  v79 = *(this + *(*this - 24) + 2136);
  v80 = llvm::Module::getFunction();
  if (v80)
  {
    v81 = *(*(v80 + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v81);
    AGCLLVMUserIntersectionShader::unpackUserResult(&v180, this, *(v81 - 4 * (*(v81 + 5) & 0x7FFFFFF)));
    v82 = this + *(*this - 24);
    v83 = *(v82 + 271);
    v151 = *(v82 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v152, (v82 + 1712));
    v153 = *(v82 + 452);
    (*(*v83 + 1256))(v83, &v151, this + 4552, v180, *(&v180 + 1), v181, 0, (*(this + 1136) & 0xE000) == 0);
    if (v152)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v81);
    v84 = *(this + *(*this - 24) + 2136);
    v85 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v85);
    if (v127)
    {
      v86 = this + *(*this - 24);
      v87 = *(v86 + 271);
      v148 = *(v86 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v149, (v86 + 1712));
      v150 = *(v86 + 452);
      LODWORD(v86) = *(this + 1136);
      v88 = *(this + 2308);
      v89 = (*(**(this + *(*this - 24) + 2168) + 1456))();
      (*(*v87 + 1112))(v87, &v148, this + 3984, v86 & 7, v89, (*(this + 2308) >> 5) & 1);
      if (v149)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v90 = this + *(*this - 24);
    v91 = *(v90 + 271);
    v145 = *(v90 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v146, (v90 + 1712));
    v147 = *(v90 + 452);
    (*(*v91 + 1272))(v91, &v145);
    if (v146)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Instruction::eraseFromParent(v85);
    v92 = *(this + *(*this - 24) + 2136);
    v93 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v93);
    AGCLLVMUserIntersectionShader::unpackUserResult(&v180, this, *(v93 - 4 * (*(v93 + 5) & 0x7FFFFFF)));
    llvm::Value::replaceAllUsesWith();
  }

  else
  {
    v94 = *(this + *(*this - 24) + 2136);
    v95 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v95);
    v96 = this + *(*this - 24);
    v97 = *(v96 + 271);
    v142 = *(v96 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v143, (v96 + 1712));
    v144 = *(v96 + 452);
    (*(*v97 + 1296))(v97, &v142, this + 4552);
    if (v143)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v95);
    v98 = *(this + *(*this - 24) + 2136);
    v99 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v99);
    AGCLLVMUserIntersectionShader::unpackUserResult(&v180, this, *(v99 - 4 * (*(v99 + 5) & 0x7FFFFFF)));
    v100 = this + *(*this - 24);
    v101 = *(v100 + 271);
    v139 = *(v100 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v140, (v100 + 1712));
    v141 = *(v100 + 452);
    (*(*v101 + 1264))(v101, &v139, this + 4552, v180, *(&v180 + 1), v181);
    if (v140)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v99);
    v102 = *(this + *(*this - 24) + 2136);
    v103 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v103);
    v104 = *(v103 - 4 * (*(v103 + 5) & 0x7FFFFFF));
    v105 = this + *(*this - 24);
    v106 = *(v105 + 271);
    v136 = *(v105 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v137, (v105 + 1712));
    v138 = *(v105 + 452);
    (*(*v106 + 1280))(v106, &v136, this + 4552, v104);
    if (v137)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v103);
    v107 = *(this + *(*this - 24) + 2136);
    v93 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v93);
    v108 = *(v93 - 4 * (*(v93 + 5) & 0x7FFFFFF));
    if (v127)
    {
      v109 = this + *(*this - 24);
      v110 = *(v109 + 271);
      v133 = *(v109 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v134, (v109 + 1712));
      v135 = *(v109 + 452);
      LODWORD(v109) = *(this + 1136);
      v111 = *(this + 2308);
      v112 = (*(**(this + *(*this - 24) + 2168) + 1456))();
      (*(*v110 + 1112))(v110, &v133, this + 3984, v109 & 7, v112, (*(this + 2308) >> 5) & 1);
      if (v134)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v113 = this + *(*this - 24);
    v114 = *(v113 + 271);
    v130 = *(v113 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v131, (v113 + 1712));
    v132 = *(v113 + 452);
    (*(*v114 + 1288))(v114, &v130, this + 4552, v108);
    if (v131)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  llvm::Instruction::eraseFromParent(v93);
  v115 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMUserIntersectionShader::unpackUserResult(AGCLLVMUserIntersectionShader *this, llvm::Value *a2, uint64_t *a3)
{
  v6 = *(a2 + *(*a2 - 24) + 1880);
  v7 = llvm::ConstantInt::get();
  v8 = *(a2 + *(*a2 - 24) + 1880);
  v9 = llvm::ConstantInt::get();
  v10 = *(a2 + *(*a2 - 24) + 1872);
  result = llvm::ConstantFP::get();
  v12 = result;
  if (*(*a3 + 8) == 16)
  {
    v13 = *(*(a2 + 8) + 8);
    v22 = 0;
    if (v13)
    {
      v14 = 0;
      v15 = a2 + 1712;
      do
      {
        v16 = *(*(a2 + 8) - 8 * *(*(a2 + 8) + 8) + 8 * v14);
        if (isStringMDNode(*(v16 - 8 * *(v16 + 8)), "air.accept_intersection"))
        {
          v17 = *(*a2 - 24);
          v21 = 257;
          result = llvm::IRBuilderBase::CreateExtractValue(&v15[v17], a3, &v22, 1, v20);
          v9 = result;
        }

        else if (isStringMDNode(*(v16 - 8 * *(v16 + 8)), "air.continue_search"))
        {
          v18 = *(*a2 - 24);
          v21 = 257;
          result = llvm::IRBuilderBase::CreateExtractValue(&v15[v18], a3, &v22, 1, v20);
          v7 = result;
        }

        else
        {
          result = isStringMDNode(*(v16 - 8 * *(v16 + 8)), "air.distance");
          if (result)
          {
            v19 = *(*a2 - 24);
            v21 = 257;
            result = llvm::IRBuilderBase::CreateExtractValue(&v15[v19], a3, &v22, 1, v20);
            v12 = result;
          }
        }

        v14 = v22 + 1;
        v22 = v14;
      }

      while (v14 < v13);
    }

    a3 = v9;
  }

  *this = a3;
  *(this + 1) = v7;
  *(this + 2) = v12;
  return result;
}

void AGCLLVMUserIntersectionShader::addInitCompilePass(AGCLLVMUserIntersectionShader *this, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    if (AGCEnv::getValue("AGC_RT_FORCE_SIDE_EFFECTS", a2))
    {
      Value = AGCEnv::getValue("AGC_RT_FORCE_SIDE_EFFECTS", v3);
      if (Value)
      {
        if (*Value != 48)
        {
          atoi(Value);
        }
      }
    }
  }

  v5 = (*(this + 1136) >> 17) & 1;
  v6 = this + *(*this - 24);
  __src[0] = &AGCLLVMUserIntersectionShaderLoopShaderPass::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v6 + 1440), __src)[1])
  {
    operator new();
  }

  v7 = this + *(*this - 24);
  __src[0] = MEMORY[0x277D82038];
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v7 + 1440), __src)[1])
  {
    operator new();
  }

  v8 = this + *(*this - 24);
  __src[0] = MEMORY[0x277D820C8];
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v8 + 1440), __src)[1])
  {
    operator new();
  }

  v9 = this + *(*this - 24);
  __src[0] = MEMORY[0x277D821A0];
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v9 + 1440), __src)[1])
  {
    operator new();
  }

  v10 = this + *(*this - 24);
  operator new();
}

void std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *llvm::detail::PassModel<llvm::Function,llvm::SimplifyCFGPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x47)
  {
    v1 = v0;
  }

  else
  {
    v1 = 71;
  }

  v2 = &aStringrefLlvmG_67[v1];
  v3 = 71 - v1;
  if ((71 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 71 - v1;
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

char *llvm::PassInfoMixin<llvm::ADCEPass>::name()
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

  v2 = &aStringrefLlvmG_66[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::ADCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::ADCEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<llvm::DSEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x3F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 63;
  }

  v2 = &aStringrefLlvmG_65[v1];
  v3 = 63 - v1;
  if ((63 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 63 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::DSEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::DSEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<llvm::NewGVNPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x42)
  {
    v1 = v0;
  }

  else
  {
    v1 = 66;
  }

  v2 = &aStringrefLlvmG_64[v1];
  v3 = 66 - v1;
  if ((66 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 66 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::NewGVNPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::NewGVNPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Function,llvm::LoopUnrollPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x46)
  {
    v1 = v0;
  }

  else
  {
    v1 = 70;
  }

  v2 = &aStringrefLlvmG_63[v1];
  v3 = 70 - v1;
  if ((70 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 70 - v1;
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

char *llvm::PassInfoMixin<llvm::IndVarSimplifyPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4A)
  {
    v1 = v0;
  }

  else
  {
    v1 = 74;
  }

  v2 = &aStringrefLlvmG_62[v1];
  v3 = 74 - v1;
  if ((74 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 74 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Loop,llvm::IndVarSimplifyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::IndVarSimplifyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Function,llvm::FunctionToLoopPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::name()
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

  v2 = &aStringrefLlvmG_61[v1];
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

void llvm::detail::PassModel<llvm::Function,llvm::FunctionToLoopPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A62F0;
  v3 = (a1 + 16);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::detail::PassModel<llvm::Function,llvm::FunctionToLoopPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A62F0;
  v4 = (a1 + 16);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::LCSSAPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x41)
  {
    v1 = v0;
  }

  else
  {
    v1 = 65;
  }

  v2 = &aStringrefLlvmG_60[v1];
  v3 = 65 - v1;
  if ((65 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 65 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::LCSSAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::LCSSAPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<llvm::LoopSimplifyPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x48)
  {
    v1 = v0;
  }

  else
  {
    v1 = 72;
  }

  v2 = &aStringrefLlvmG_59[v1];
  v3 = 72 - v1;
  if ((72 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 72 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::LoopSimplifyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::LoopSimplifyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Loop,llvm::LICMPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &>::name()
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

  v2 = &aStringrefLlvmG_58[v1];
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

char *llvm::PassInfoMixin<AGCLLVMUserIntersectionShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x53)
  {
    v1 = v0;
  }

  else
  {
    v1 = 83;
  }

  v2 = &aStringrefLlvmG_57[v1];
  v3 = 83 - v1;
  if ((83 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 83 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,AGCLLVMUserIntersectionShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCLLVMUserIntersectionShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::detail::PassModel<llvm::Function,AGCLLVMUserIntersectionShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::run@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v11 = "air.intersection";
  v12 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v4, &v11);
  result = llvm::NamedMDNode::getOperand(NamedMetadata);
  v7 = *(result - 8 * *(result + 8));
  if (v7 && *v7 - 1 <= 1)
  {
    v8 = *(v7 + 16);
    if (v8 == a1 && *(v8 + 16) == 0)
    {
      llvm::AnalysisManager<llvm::Function>::getResultImpl();
    }
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 24) = 0u;
  *a2 = a2 + 32;
  *(a2 + 8) = a2 + 32;
  *(a2 + 16) = 2;
  *(a2 + 48) = a2 + 80;
  *(a2 + 56) = a2 + 80;
  *(a2 + 64) = 2;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::detail::PassModel<llvm::Module,llvm::ModuleToFunctionPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825B0098;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::UnifyFunctionExitNodesPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_55[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::UnifyFunctionExitNodesPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::UnifyFunctionExitNodesPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::name()
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

  v2 = &aStringrefLlvmG_54[v1];
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

uint64_t llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *this, uint64_t a3, uint64_t a4)
{
  v8 = *(this + 4);
  if ((*(this + 3) - v8) > 5)
  {
    *(v8 + 4) = 10339;
    *v8 = 1668507491;
    *(this + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(this, "cgscc(");
  }

  result = (*(**(a1 + 8) + 24))(*(a1 + 8), this, a3, a4);
  v10 = *(this + 4);
  if (*(this + 3) == v10)
  {

    return llvm::raw_ostream::write(this, ")");
  }

  else
  {
    *v10 = 41;
    ++*(this + 4);
  }

  return result;
}

void llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A6170;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A6170;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::PostOrderFunctionAttrsPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_53[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::LazyCallGraph::SCC,llvm::PostOrderFunctionAttrsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>,llvm::LazyCallGraph&,llvm::CGSCCUpdateResult &>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::PostOrderFunctionAttrsPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::AAManager,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x41)
  {
    v1 = v0;
  }

  else
  {
    v1 = 65;
  }

  v2 = &aStringrefLlvmG_52[v1];
  v3 = 65 - v1;
  if ((65 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 65 - v1;
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

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::AAManager,llvm::AAResults,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825A6108;
  MEMORY[0x20F331210](a1 + 1);

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::AnalysisResultModel<llvm::Function,llvm::AAManager,llvm::AAResults,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825A6108;
  MEMORY[0x20F331210](a1 + 1);
  return a1;
}

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::AAManager,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825A60D8;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::AnalysisPassModel<llvm::Function,llvm::AAManager,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825A60D8;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void llvm::AAResults::addAADependencyID(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (v4 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    a1[4] = v14;
    a1[5] = v5;
    a1[6] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 8;
  }

  a1[5] = v5;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::AAResults::Concept>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::AAResults::Model<llvm::BasicAAResult>::getModRefInfo(uint64_t a1)
{
  return MEMORY[0x2821F21D8](*(a1 + 8));
}

{
  return MEMORY[0x2821F21D0](*(a1 + 8));
}

uint64_t llvm::AAResults::Model<llvm::BasicAAResult>::getModRefBehavior(uint64_t a1)
{
  return MEMORY[0x2821F21F0](*(a1 + 8));
}

{
  return MEMORY[0x2821F21E8](*(a1 + 8));
}

void llvm::AAResults::Model<llvm::BasicAAResult>::~Model(llvm::AAResults::Concept *a1)
{
  llvm::AAResults::Concept::~Concept(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::AAResults::Model<llvm::ScopedNoAliasAAResult>::getModRefInfo(uint64_t a1)
{
  return MEMORY[0x2821F2EC8](*(a1 + 8));
}

{
  return MEMORY[0x2821F2EC0](*(a1 + 8));
}

uint64_t llvm::AAResults::Model<llvm::ScopedNoAliasAAResult>::getModRefBehavior()
{
  return 63;
}

{
  return 63;
}

void llvm::AAResults::Model<llvm::ScopedNoAliasAAResult>::~Model(llvm::AAResults::Concept *a1)
{
  llvm::AAResults::Concept::~Concept(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::AAResults::Model<llvm::TypeBasedAAResult>::getModRefInfo(uint64_t a1)
{
  return MEMORY[0x2821F2AD8](*(a1 + 8));
}

{
  return MEMORY[0x2821F2AD0](*(a1 + 8));
}

uint64_t llvm::AAResults::Model<llvm::TypeBasedAAResult>::getModRefBehavior(uint64_t a1)
{
  return MEMORY[0x2821F2AE8](*(a1 + 8));
}

{
  return MEMORY[0x2821F2AE0](*(a1 + 8));
}

void llvm::AAResults::Model<llvm::TypeBasedAAResult>::~Model(llvm::AAResults::Concept *a1)
{
  llvm::AAResults::Concept::~Concept(a1);

  JUMPOUT(0x20F331DC0);
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_51[v1];
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

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::run()
{
  v0 = *MEMORY[0x277D85DE8];
  llvm::DominatorTreeAnalysis::run();
  operator new();
}

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::DominatorTree,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(uint64_t a1)
{
  *a1 = &unk_2825A5F90;
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll((a1 + 32));
  llvm::deallocate_buffer(*(a1 + 32), (16 * *(a1 + 48)));
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::detail::AnalysisResultModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::DominatorTree,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(uint64_t a1)
{
  *a1 = &unk_2825A5F90;
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll((a1 + 32));
  llvm::deallocate_buffer(*(a1 + 32), (16 * *(a1 + 48)));
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::MemorySSAAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x49)
  {
    v1 = v0;
  }

  else
  {
    v1 = 73;
  }

  v2 = &aStringrefLlvmG_50[v1];
  v3 = 73 - v1;
  if ((73 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 73 - v1;
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

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::MemorySSAAnalysis,llvm::MemorySSAAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A5F38;
  a1[1] = 0;
  if (v2)
  {
    v3 = MEMORY[0x20F3312A0]();
    MEMORY[0x20F331DC0](v3, 0x10E0C4011B2A86ELL);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::AnalysisResultModel<llvm::Function,llvm::MemorySSAAnalysis,llvm::MemorySSAAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A5F38;
  a1[1] = 0;
  if (v2)
  {
    v3 = MEMORY[0x20F3312A0]();
    MEMORY[0x20F331DC0](v3, 0x10E0C4011B2A86ELL);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Function,AGCLLVMUserIntersectionShaderLoopShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_49[v1];
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

void llvm::detail::AnalysisPassModel<llvm::Function,AGCLLVMUserIntersectionShaderLoopShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::run(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  llvm::AnalysisManager<llvm::Function>::getResultImpl();
}

BOOL llvm::detail::AnalysisResultModel<llvm::Function,AGCLLVMUserIntersectionShaderLoopShaderPass,AGCLLVMUserIntersectionShaderLoopShaderPass::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,false>::invalidate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 48;
  imp = llvm::SmallPtrSetImplBase::find_imp((a3 + 48), &AGCLLVMUserIntersectionShaderLoopShaderPass::Key);
  v6 = *(a3 + 56);
  v7 = 16;
  if (v6 == *(a3 + 48))
  {
    v7 = 20;
  }

  if (imp != (v6 + 8 * *(v4 + v7)))
  {
    return 1;
  }

  v9 = llvm::SmallPtrSetImplBase::find_imp(a3, MEMORY[0x277D82070]);
  v10 = *(a3 + 8);
  v11 = 16;
  if (v10 == *a3)
  {
    v11 = 20;
  }

  if (v9 != (v10 + 8 * *(a3 + v11)))
  {
    return 0;
  }

  v12 = llvm::SmallPtrSetImplBase::find_imp(a3, &AGCLLVMUserIntersectionShaderLoopShaderPass::Key);
  v13 = *(a3 + 8);
  v14 = 16;
  if (v13 == *a3)
  {
    v14 = 20;
  }

  v15 = v12 == (v13 + 8 * *(a3 + v14));
  result = v15;
  if (v15)
  {
    v16 = llvm::SmallPtrSetImplBase::find_imp(a3, MEMORY[0x277D82070]);
    v17 = *(a3 + 8);
    v18 = 16;
    if (v17 == *a3)
    {
      v18 = 20;
    }

    if (v16 != (v17 + 8 * *(a3 + v18)))
    {
      return 0;
    }

    v19 = llvm::SmallPtrSetImplBase::find_imp(a3, off_277E1F908);
    v20 = *(a3 + 8);
    v21 = 16;
    if (v20 == *a3)
    {
      v21 = 20;
    }

    return v19 == (v20 + 8 * *(a3 + v21));
  }

  return result;
}

BOOL std::__hash_table<std::__hash_value_type<std::string,IntersectionShaderArgument>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,IntersectionShaderArgument>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,IntersectionShaderArgument>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,IntersectionShaderArgument>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,IntersectionShaderArgument> const&>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1);
  if (!*(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1))
    {
      v9 = v4 % *(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1);
    }
  }

  else
  {
    v9 = (*(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1) - 1) & v4;
  }

  v10 = *(_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1);
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t std::unordered_map<std::string,IntersectionShaderArgument>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

void AGCLLVMUserIntersectionShader::~AGCLLVMUserIntersectionShader(AGCLLVMUserIntersectionShader *this)
{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A35B0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A35B0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4624));
}

BOOL AGCLLVMUserIFBEmulationIntersectionShader::constructReply(llvm::Value **this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 3) + 2288), (*(this + *(*this - 3) + 1688))[19], (*(this + *(*this - 3) + 1688))[20]);
  if (v2)
  {
    v3 = *(*this - 3);
    Name = llvm::Value::getName(this[20]);
    v26 = 0;
    llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::try_emplace<llvm::MDNode *>((this + v3 + 5136), Name, v4, &v26);
    AGCLLVMObject::validateBackendReply((this + *(*this - 3)));
    LODWORD(v3) = AGCLLVMUserObject::constructFlatReply(this);
    v5 = *this;
    v6 = this + *(*this - 3);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    v9 = *(this + 2308);
    v10 = (*(**(this + *(v5 - 3) + 2168) + 1456))();
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v6 + 536, 4, v10);
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    v12 = this + *(*this - 3);
    v13 = *(v12 + 1080);
    v12[4358] = 1;
    v14 = *(v12 + 1082);
    v15 = v13 - *(v12 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v12 + 4288), v3);
    if (v11)
    {
      flatbuffers::FlatBufferBuilder::Align((v12 + 4288), 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 28, *(v12 + 1080) - *(v12 + 1084) + *(v12 + 1082) - v11 + 4);
    }

    v16 = *(*this - 3);
    v17 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v15 + v14);
    flatbuffers::FlatBufferBuilder::Finish((this + v16 + 4288), v17, v18);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 3)), (this + *(*this - 3) + 4288));
    v19 = *this;
    v20 = this + *(*this - 3);
    v20[4454] = 1;
    v21 = *(v19 - 3);
    v22 = flatbuffers::FlatBufferBuilder::EndTable((v20 + 4384), *(v20 + 2208) - *(v20 + 2216) + *(v20 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v21 + 4384), v22, v23);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 3)), (this + *(*this - 3) + 4384));
  }

  return v2;
}

uint64_t llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::try_emplace<llvm::MDNode *>(llvm::StringMapImpl *a1, const void *a2, size_t a3, void *a4)
{
  result = llvm::StringMapImpl::LookupBucketFor();
  v9 = *a1;
  v10 = *(*a1 + 8 * result);
  if (v10)
  {
    if (v10 != -8)
    {
      return result;
    }

    --*(a1 + 4);
  }

  v11 = result;
  v12 = MEMORY[0x20F330650](a3 + 17, 8);
  v13 = v12;
  v14 = v12 + 16;
  if (a3)
  {
    memcpy((v12 + 16), a2, a3);
  }

  *(v14 + a3) = 0;
  v13[1] = *a4;
  *(v9 + 8 * v11) = v13;
  *v13 = a3;
  ++*(a1 + 3);

  return llvm::StringMapImpl::RehashTable(a1);
}

void virtual thunk toAGCLLVMUserIFBEmulationIntersectionShader::~AGCLLVMUserIFBEmulationIntersectionShader(AGCLLVMUserIFBEmulationIntersectionShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserShader::~AGCLLVMUserShader(v1, off_2825A3AA8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this + *(*this - 24)), off_2825A3AA8);
  v2 = (v1 + 4624);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void non-virtual thunk toAGCLLVMUserIFBEmulationIntersectionShader::~AGCLLVMUserIFBEmulationIntersectionShader(AGCLLVMUserIFBEmulationIntersectionShader *this)
{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A3AA8);
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A3AA8);

  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

uint64_t AGCLLVMUserIFBEmulationIntersectionShader::setupShaderWrapper(AGCLLVMUserIFBEmulationIntersectionShader *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + 20);
    llvm::Value::setName();
    v4 = *(this + 20);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 20));
    }

    v5 = *(v4 + 88);
    v6 = *(*(this + 572) + 32);
    if (v6)
    {
      v7 = v6 == *(*(this + 572) + 40) + 40;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = (v6 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v8);
    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v5, *(this + 572), 0);
    v9 = **(this + *(*this - 24) + 2136);
    v10 = *(this + 20);
    llvm::ValueAsMetadata::get();
    v11 = **(this + *(*this - 24) + 2136);
    llvm::MDTuple::getImpl();
    v12 = **(this + *(*this - 24) + 2136);
    llvm::MDTuple::getImpl();
    llvm::MDTuple::getImpl();
    v13 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t AGCLLVMUserIFBEmulationIntersectionShader::wrapperFunctionType(AGCLLVMUserIFBEmulationIntersectionShader *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(this + *(*this - 24) + 1848);
  v4 = **(**(this + 572) + 16);
  result = llvm::FunctionType::get();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMUserIFBEmulationIntersectionShader::~AGCLLVMUserIFBEmulationIntersectionShader(AGCLLVMUserIFBEmulationIntersectionShader *this)
{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A3AA8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A3AA8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 4624));
}

uint64_t AGCLLVMDriverIFBEmulationShader::createDylibResource(void *a1, int a2)
{
  result = 0;
  if (a2 <= 6)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v18 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
          v5 = (*(*v18 + 856))(v18);
          v6 = (a1 + *(*a1 - 24));
          v19 = v6[236];
          v8 = llvm::PointerType::get();
          v9 = "agc.texture_heap_width";
          break;
        case 4:
          v26 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
          v5 = (*(*v26 + 808))(v26);
          v6 = (a1 + *(*a1 - 24));
          v27 = v6[236];
          v8 = llvm::PointerType::get();
          v9 = "agc.sampler_heap";
          break;
        case 5:
          v12 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
          v5 = (*(*v12 + 872))(v12);
          v6 = (a1 + *(*a1 - 24));
          v13 = v6[236];
          v8 = llvm::PointerType::get();
          v9 = "agc.per_encoder_table";
          break;
        default:
          return result;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        v22 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v22 + 792))(v22);
        v6 = (a1 + *(*a1 - 24));
        v23 = v6[236];
        v8 = llvm::PointerType::get();
        v9 = "agc.texture_heap_read";
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v4 + 800))(v4);
        v6 = (a1 + *(*a1 - 24));
        v7 = v6[236];
        v8 = llvm::PointerType::get();
        v9 = "agc.texture_heap_write";
      }
    }

    else
    {
      v14 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v5 = (*(*v14 + 848))(v14);
      v6 = (a1 + *(*a1 - 24));
      v15 = v6[236];
      v8 = llvm::PointerType::get();
      v9 = "agc.dylib_base";
    }

    goto LABEL_28;
  }

  if (a2 <= 10)
  {
    switch(a2)
    {
      case 7:
        v16 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v16 + 864))(v16);
        v6 = (a1 + *(*a1 - 24));
        v17 = v6[236];
        v8 = llvm::PointerType::get();
        v9 = "agc.vft_heap";
        break;
      case 8:
        v24 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v24 + 840))(v24);
        v6 = (a1 + *(*a1 - 24));
        v25 = v6[236];
        v8 = llvm::PointerType::get();
        v9 = "agc.bvh_heap";
        break;
      case 10:
        v10 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v10 + 952))(v10) & 0xFFFFF | 0x900000;
        v6 = (a1 + *(*a1 - 24));
        v11 = v6[236];
        v8 = llvm::PointerType::get();
        v9 = "agc.ift_heap";
        break;
      default:
        return result;
    }

    goto LABEL_28;
  }

  switch(a2)
  {
    case 11:
      v20 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v5 = (*(*v20 + 976))(v20) & 0xFFFFF | 0x900000;
      v6 = (a1 + *(*a1 - 24));
      v21 = v6[236];
      v8 = llvm::PointerType::get();
      v9 = "agc.ria.ray_data_user_bound";
LABEL_28:
      v30 = v9;
      v31 = 259;
      return AGCLLVMObject::createGlobalBufferBinding(v6, v8, &v30, v5, 0);
    case 13:
      v28 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v5 = (*(*v28 + 984))(v28) & 0xFFFFF | 0x900000;
      v6 = (a1 + *(*a1 - 24));
      v29 = v6[236];
      v8 = llvm::PointerType::get();
      v9 = "agc.ria.ray_data_driver_start";
      goto LABEL_28;
    case 12:
      return a1[12];
  }

  return result;
}

BOOL AGCLLVMDriverIFBEmulationShader::constructReply(AGCLLVMDriverIFBEmulationShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = this + *(*this - 24);
    v3[4358] = 1;
    v4 = *(v3 + 1080);
    v5 = *(v3 + 1084);
    v6 = *(v3 + 1082);
    if (v3[4368] == 1)
    {
      v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 4, v7);
      if (v3[4368])
      {
        v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 6, v8);
      }
    }

    v9 = v4 - v5;
    v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 8, v10);
    if (v3[4368] == 1)
    {
      v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 10, v11);
      if (v3[4368])
      {
        v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 536, 12, v12);
      }
    }

    v13 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4288), v9 + v6);
    v14 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v16 = flatbuffers::FlatBufferBuilder::EndTable(v14, v15);
    v17 = this + *(*this - 24);
    v17[4358] = 1;
    v18 = *(v17 + 1082);
    v19 = *(v17 + 1080) - *(v17 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>((v17 + 4288), v13);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v17 + 4288), v16);
    v20 = *(*this - 24);
    v21 = flatbuffers::FlatBufferBuilder::EndTable((v17 + 4288), v19 + v18);
    flatbuffers::FlatBufferBuilder::Finish((this + v20 + 4288), v21, v22);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMDriverIFBEmulationShader::getCompilationKeyDescription(AGCLLVMDriverIFBEmulationShader *this@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  std::string::basic_string[abi:nn200100]<0>(v10, "AGCDriverIFBEmulationShaderState");
  std::string::basic_string[abi:nn200100]<0>(v8, "leafVariant");
  _agcFieldString<unsigned int>(&v12, v8, *v3 & 7);
  std::string::basic_string[abi:nn200100]<0>(__p, "payloadVariant");
  _agcFieldString<unsigned int>(&v13, __p, *v3 >> 4);
  _agcGroupWithHeader(a2, v10, &v12, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v13.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v12 + i * 8 + 24));
    }
  }

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

  v5 = *MEMORY[0x277D85DE8];
}

void AGCLLVMDriverIFBEmulationShader::wrapperName(AGCLLVMDriverIFBEmulationShader *this@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v4, **(this + 9) & 7);
  v3 = std::string::insert(&v4, 0, "agc.ifb_emulation_wrapper.");
  *a2 = *v3;
  v3->__r_.__value_.__r.__words[0] = 0;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMDriverIFBEmulationShader::~AGCLLVMDriverIFBEmulationShader(AGCLLVMDriverIFBEmulationShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A3B38;
  v1[16] = &unk_2825A3CA0;
  v1[229] = &unk_2825A3DB0;
  v2 = v1[15];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 13));
  }

  v4 = v1[12];
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 10));
  }

  AGCLLVMObject::~AGCLLVMObject((v1 + 16));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A3B38;
  v1[16] = &unk_2825A3CA0;
  v1[229] = &unk_2825A3DB0;
  v2 = v1[15];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 13));
  }

  v4 = v1[12];
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 10));
  }

  AGCLLVMObject::~AGCLLVMObject((v1 + 16));
}

void AGCLLVMDriverIFBEmulationShader::~AGCLLVMDriverIFBEmulationShader(AGCLLVMDriverIFBEmulationShader *this)
{
  *this = &unk_2825A3B38;
  v2 = (this + 128);
  *(this + 16) = &unk_2825A3CA0;
  *(this + 229) = &unk_2825A3DB0;
  v3 = *(this + 15);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 104));
  }

  v5 = *(this + 12);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 80));
  }

  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A3B38;
  v2 = (this + 128);
  *(this + 16) = &unk_2825A3CA0;
  *(this + 229) = &unk_2825A3DB0;
  v3 = *(this + 15);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 104));
  }

  v5 = *(this + 12);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 80));
  }

  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t parseMDUint3(uint64_t a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 - 8 * *(a1 + 8) + 8 * *a3);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  v6 = *v4;
  if (v6 > 0x22 || ((0x7FFFFFFF0uLL >> v6) & 1) == 0)
  {
    return result;
  }

  if (*(v4 + 2) != 4)
  {
    return 0;
  }

  result = isStringMDNode(*(v4 - 4), a2);
  if (result)
  {
    v9 = 1;
    result = parseMDInt(0, v4, &v9, a4);
    if (result)
    {
      v10 = 2;
      result = parseMDInt(0, v4, &v10, a4 + 1);
      if (result)
      {
        v11 = 3;
        result = parseMDInt(0, v4, &v11, a4 + 2);
        if (result)
        {
          ++*a3;
          return 1;
        }
      }
    }
  }

  return result;
}

void *std::__split_buffer<llvm::MDNode const**>::emplace_back<llvm::MDNode const**&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

BOOL parseMDOpaqueTypes(uint64_t a1, _DWORD *a2, _DWORD *a3, BOOL *a4)
{
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.indirect_command_buffer") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.command_buffer") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.compute_pipeline_state") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.render_pipeline_state") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.visible_function_table") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.primitive_acceleration_structure") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.instance_acceleration_structure") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.intersection_function_table") || (result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.depth_stencil_state")))
  {
    *a4 = 0;
    *a3 = 1;
    v9 = *(a1 + 8);
    v18 = 2;
    if (v9 >= 3)
    {
      do
      {
        v10 = parseMDLocationIndex(a1, &v18, a2, a3);
        v11 = v18;
        v12 = v18;
        if ((v10 & 1) == 0)
        {
          v12 = ++v18;
          if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v11), "air.arg_type_name"))
          {
            v13 = v11 + 2;
            v18 = v13;
            String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v12));
            v16 = v15 >= 5 && *String == 1634890337 && *(String + 4) == 121;
            *a4 = v16;
            v12 = v13;
          }
        }
      }

      while (v12 < v9);
    }

    return 1;
  }

  return result;
}

uint64_t parseMDStructType(uint64_t a1)
{
  v84[1] = *MEMORY[0x277D85DE8];
  v81[1] = 0;
  v82[0] = v83;
  v82[1] = 0x500000000;
  v80 = v81;
  v81[0] = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_168;
  }

  v3 = 0;
  v74 = 1;
  do
  {
    v79 = 0;
    v78 = 0;
    if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v3), "air.struct_type_info"))
    {
      v4 = *(a1 - 8 * *(a1 + 8) + 8 * (v3 + 1));
      if (v4)
      {
        if (((*v4 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v4)) != 0)
        {
          v5 = *(a1 - 8 * *(a1 + 8) + 8 * (v3 + 1));
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v74 = v74 & (v5 != 0);
      v6 = parseMDStructType();
      v3 += 2;
    }

    else
    {
      v6 = 0;
    }

    LODWORD(v84[0]) = v3;
    v7 = parseMDInt(0, a1, v84, &v79 + 1);
    LODWORD(v84[0]) = v3 + 1;
    v8 = parseMDInt(0, a1, v84, &v79);
    LODWORD(v84[0]) = v3 + 2;
    v9 = parseMDInt(0, a1, v84, &v78);
    v10 = a1 - 8 * *(a1 + 8);
    v11 = *(v10 + 8 * (v3 + 3));
    if (v11)
    {
      if (*v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v10 + 8 * (v3 + 3));
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v74 & v7 & v8 & v9;
    if (!v12)
    {
      v13 = 0;
    }

    v14 = *(v10 + 8 * (v3 + 4));
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

    v3 += 5;
    if (!v15)
    {
      v13 = 0;
    }

    v74 = v13;
    String = llvm::MDString::getString(v12);
    v18 = v17;
    llvm::MDString::getString(v15);
    while (v3 < v2)
    {
      v19 = *(a1 - 8 * *(a1 + 8) + 8 * v3);
      if (!isStringMDNode(v19, "air.render_target") && !isStringMDNode(v19, "air.raster_order_group") && !isStringMDNode(v19, "air.imageblock_index"))
      {
        if (!isStringMDNode(v19, "air.indirect_argument"))
        {
          break;
        }

        v20 = *(a1 - 8 * *(a1 + 8) + 8 * (v3 + 1));
        if (v20)
        {
          v21 = *v20;
          if (v21 <= 0x22 && ((0x7FFFFFFF0uLL >> v21) & 1) != 0)
          {
            v22 = llvm::MDString::getString(*&v20[-8 * *(v20 + 2) + 8]);
            if (v23 > 25)
            {
              if (v23 <= 30)
              {
                if (v23 != 26)
                {
                  if (v23 != 27)
                  {
                    goto LABEL_142;
                  }

                  v32 = *(v22 + 19);
                  v34 = *v22 == 0x69646E692E726961 && *(v22 + 8) == 0x6D6F635F74636572 && *(v22 + 16) == 0x6675625F646E616DLL;
                  v35 = 0x7265666675625F64;
LABEL_120:
                  if (!v34 || v32 != v35)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_137;
                }

                if (*v22 != 0x706D6F632E726961 || *(v22 + 8) != 0x657069705F657475 || *(v22 + 16) != 0x6174735F656E696CLL || *(v22 + 24) != 25972)
                {
                  v24 = *(v22 + 24);
                  v26 = *v22 == 0x697369762E726961 && *(v22 + 8) == 0x636E75665F656C62 && *(v22 + 16) == 0x6261745F6E6F6974;
                  v27 = 25964;
LABEL_94:
                  if (!v26 || v24 != v27)
                  {
                    goto LABEL_142;
                  }
                }

LABEL_137:
                v77 = 0;
                v75 = 0;
                v50 = parseMDOpaqueTypes(v20, &v76, &v77, &v75);
                v51 = *(a1 + 16);
                v52 = (v51 & 0xFFFFFFFFFFFFFFF8);
                if ((v51 & 4) != 0)
                {
                  v52 = *v52;
                }

                v53 = llvm::PointerType::get(v52, 1);
                v54 = *v53;
                v84[0] = v53;
                v55 = llvm::StructType::get();
                v6 = v55;
                if (v75)
                {
                  v56 = llvm::ArrayType::get(v55, v77);
                  v57 = *v56;
                  v84[0] = v56;
                  v6 = llvm::StructType::get();
                }

                v74 &= v50;
                goto LABEL_142;
              }

              switch(v23)
              {
                case 31:
                  v32 = *(v22 + 23);
                  v34 = *v22 == 0x65746E692E726961 && *(v22 + 8) == 0x6E6F697463657372 && *(v22 + 16) == 0x6F6974636E75665FLL;
                  v35 = 0x656C6261745F6E6FLL;
                  goto LABEL_120;
                case 35:
                  v28 = "air.instance_acceleration_structure";
                  v29 = 35;
                  break;
                case 36:
                  v28 = "air.primitive_acceleration_structure";
                  v29 = 36;
                  break;
                default:
                  goto LABEL_142;
              }

              if (!memcmp(v22, v28, v29))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v23 <= 18)
              {
                if (v23 != 10)
                {
                  if (v23 != 18)
                  {
                    goto LABEL_142;
                  }

                  v30 = *v22 == 0x6D6D6F632E726961 && *(v22 + 8) == 0x666675625F646E61;
                  if (!v30 || *(v22 + 16) != 29285)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_137;
                }

                if (*v22 != 0x666675622E726961 || *(v22 + 8) != 29285)
                {
                  goto LABEL_142;
                }
              }

              else
              {
                if (v23 != 19)
                {
                  if (v23 != 23)
                  {
                    if (v23 != 25)
                    {
                      goto LABEL_142;
                    }

                    v24 = *(v22 + 24);
                    v25 = *v22 == 0x646E65722E726961 && *(v22 + 8) == 0x6C657069705F7265;
                    v26 = v25 && *(v22 + 16) == 0x746174735F656E69;
                    v27 = 101;
                    goto LABEL_94;
                  }

                  if (*v22 != 0x747065642E726961 || *(v22 + 8) != 0x69636E6574735F68 || *(v22 + 15) != 0x65746174735F6C69)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_137;
                }

                if (*v22 != 0x69646E692E726961 || *(v22 + 8) != 0x6675625F74636572 || *(v22 + 11) != 0x7265666675625F74)
                {
                  goto LABEL_142;
                }
              }

              v77 = 0;
              if (isStringMDNode(*&v20[-8 * *(v20 + 2) + 48], "air.address_space"))
              {
                LODWORD(v84[0]) = 7;
                parseMDInt(0, v20, v84, &v77);
              }

              v44 = *(a1 + 16);
              v45 = (v44 & 0xFFFFFFFFFFFFFFF8);
              if ((v44 & 4) != 0)
              {
                v45 = *v45;
              }

              v6 = llvm::PointerType::get(v45, v77);
            }
          }
        }
      }

LABEL_142:
      v3 += 2;
    }

    if (!v6)
    {
      v58 = *(a1 + 16);
      v59 = (v58 & 0xFFFFFFFFFFFFFFF8);
      if ((v58 & 4) != 0)
      {
        v59 = *v59;
      }

      v6 = parseTypeName(v59, String, v18);
    }

    if (v78)
    {
      v6 = llvm::ArrayType::get(v6, v78);
    }

    v60 = v81[0];
    v61 = HIDWORD(v79);
    if (!v81[0])
    {
LABEL_154:
      v63 = v79;
      v84[0] = &v79 + 4;
      goto LABEL_155;
    }

    while (2)
    {
      v62 = *(v60 + 8);
      if (HIDWORD(v79) < v62)
      {
LABEL_153:
        v60 = *v60;
        if (!v60)
        {
          goto LABEL_154;
        }

        continue;
      }

      break;
    }

    if (v62 < HIDWORD(v79))
    {
      ++v60;
      goto LABEL_153;
    }

    v84[0] = &v79 + 4;
    v65 = std::__tree<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v80, HIDWORD(v79));
    v63 = v79;
    if (*(v65 + 12) < v79)
    {
      v84[0] = &v79 + 4;
      v61 = HIDWORD(v79);
LABEL_155:
      v64 = std::__tree<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v80, v61);
      v64[5] = v6;
      *(v64 + 12) = v63;
    }
  }

  while (v3 < v2);
  v66 = v80;
  if (v80 != v81)
  {
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v66[5]);
      v67 = v66[1];
      if (v67)
      {
        do
        {
          v68 = v67;
          v67 = *v67;
        }

        while (v67);
      }

      else
      {
        do
        {
          v68 = v66[2];
          v25 = *v68 == v66;
          v66 = v68;
        }

        while (!v25);
      }

      v66 = v68;
    }

    while (v68 != v81);
  }

  if (v74)
  {
LABEL_168:
    v69 = *(a1 + 16);
    if ((v69 & 4) != 0)
    {
      v70 = *(v69 & 0xFFFFFFFFFFFFFFF8);
    }

    v71 = llvm::StructType::get();
  }

  else
  {
    v71 = 0;
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v81[0]);
  if (v82[0] != v83)
  {
    free(v82[0]);
  }

  v72 = *MEMORY[0x277D85DE8];
  return v71;
}

uint64_t parseTypeName(llvm::PointerType *a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    switch(a3)
    {
      case 6:
        if (*a2 == 1869116277 && *(a2 + 4) == 29810)
        {
          goto LABEL_49;
        }

LABEL_70:
        if (*a2 != 1953523044 || *(a2 + 4) != 104)
        {
          if (*a2 != 1634890337 || *(a2 + 4) != 15481)
          {
            return 0;
          }

          v20 = parseTypeName(a1, a2 + 6, a3 - 6);
          v21 = a3;
          do
          {
            v22 = v21;
            if (!v21)
            {
              break;
            }

            --v21;
          }

          while (*(a2 - 1 + v22) != 44);
          if (a3 < v22)
          {
            v22 = a3;
          }

          v33 = a2 + v22;
          v34 = a3 - v22;
          first_not_of = llvm::StringRef::find_first_not_of(&v33);
          if (first_not_of >= v34)
          {
            v24 = v34;
          }

          else
          {
            v24 = first_not_of;
          }

          if (v34 == v24)
          {
LABEL_113:
            v33 = 0;
            AsUnsignedInteger = llvm::getAsUnsignedInteger();
            v31 = v33;
            if (v33 >= 0x100000000)
            {
              v31 = 0;
            }

            if (AsUnsignedInteger)
            {
              v32 = 0;
            }

            else
            {
              v32 = v31;
            }

            return llvm::ArrayType::get(v20, v32);
          }

          v25 = MEMORY[0x277D85DE0];
          v26 = v34 - v24;
          v27 = (v33 + v24);
          while (1)
          {
            v28 = *v27;
            if ((v28 & 0x80000000) != 0)
            {
              break;
            }

            if ((*(v25 + 4 * v28 + 60) & 0x400) == 0)
            {
              v29 = *(v25 + 4 * v28 + 60) & 0x4000;
              goto LABEL_100;
            }

LABEL_101:
            ++v27;
            if (!--v26)
            {
              goto LABEL_113;
            }
          }

          v29 = __maskrune(v28, 0x4000uLL);
LABEL_100:
          if (!v29)
          {
            goto LABEL_113;
          }

          goto LABEL_101;
        }

LABEL_79:
        v19 = 1;
LABEL_107:

        return llvm::PointerType::get(a1, v19);
      case 7:
        if (*a2 == 1886216563 && *(a2 + 3) == 1919249520)
        {
          v19 = 2;
          goto LABEL_107;
        }

        goto LABEL_66;
      case 13:
        if (*a2 == 0x665F64656B636170 && *(a2 + 5) == 0x3374616F6C665F64)
        {
          FloatTy = llvm::Type::getFloatTy(a1, a2);

          return llvm::ArrayType::get(FloatTy, 3);
        }

        goto LABEL_66;
    }

LABEL_52:
    if (a3 < 7)
    {
      return 0;
    }

LABEL_66:
    if (*a2 == 1954047348 && *(a2 + 3) == 1701999988)
    {
      goto LABEL_79;
    }

    goto LABEL_70;
  }

  if (a3 == 3)
  {
    if (*a2 != 28265 || *(a2 + 2) != 116)
    {
      return 0;
    }

    goto LABEL_83;
  }

  if (a3 == 4)
  {
    if (*a2 == 1819242338)
    {

      return llvm::Type::getInt1Ty(a1, a2);
    }

    if (*a2 == 1918986339)
    {
LABEL_80:

      return llvm::Type::getInt8Ty(a1, a2);
    }

    if (*a2 != 1953393013)
    {
      if (*a2 == 1735290732)
      {
LABEL_110:

        return llvm::Type::getInt64Ty(a1, a2);
      }

      if (*a2 == 1718378856)
      {

        return llvm::Type::getHalfTy(a1, a2);
      }

      return 0;
    }

LABEL_83:

    return llvm::Type::getInt32Ty(a1, a2);
  }

  if (a3 != 5)
  {
    goto LABEL_52;
  }

  if (*a2 == 1634231157 && *(a2 + 4) == 114)
  {
    goto LABEL_80;
  }

  if (*a2 == 1919903859 && *(a2 + 4) == 116)
  {
LABEL_49:

    return llvm::Type::getInt16Ty(a1, a2);
  }

  if (*a2 == 1852796021 && *(a2 + 4) == 103)
  {
    goto LABEL_110;
  }

  if (*a2 != 1634692198 || *(a2 + 4) != 116)
  {
    if (*a2 != 1953523044 || *(a2 + 4) != 104)
    {
      return 0;
    }

    goto LABEL_79;
  }

  return llvm::Type::getFloatTy(a1, a2);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2)
{
  v4 = this + *(*this - 24);
  v5 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(this, a2, 0);
  v6 = llvm::ConstantInt::get();
  v24[0] = "quad_x";
  v25 = 259;
  LShr = llvm::IRBuilderBase::CreateLShr((v4 + 1712), v5, v6, v24);
  v8 = this + *(*this - 24);
  v9 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(this, a2, 1);
  v10 = llvm::ConstantInt::get();
  v24[0] = "quad_y";
  v25 = 259;
  v11 = llvm::IRBuilderBase::CreateLShr((v8 + 1712), v9, v10, v24);
  v12 = this + *(*this - 24);
  v13 = (*(*this + 480))(this, 0);
  v14 = AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), v13, a2);
  v15 = llvm::ConstantInt::get();
  v25 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v12 + 1712), v14, v15, v24);
  v17 = llvm::ConstantInt::get();
  v22[0] = "num_quads_x";
  v23 = 259;
  v18 = llvm::IRBuilderBase::CreateLShr((v12 + 1712), Add, v17, v22);
  v19 = this + *(*this - 24);
  v25 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v19 + 1712), v11, v18, v24);
  v23 = 257;
  return llvm::IRBuilderBase::CreateAdd((v19 + 1712), Mul, LShr, v22);
}

uint64_t AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3)
{
  if (a3 == 2)
  {

    return llvm::ConstantInt::get();
  }

  else
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
}

uint64_t AGCLLVMUserShader::buildTileThreadPositionInGrid(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3)
{
  if (a3 == 2)
  {

    return llvm::ConstantInt::get();
  }

  else
  {
    v6 = this + *(*this - 24);
    v7 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup(this, a2, a3);
    v8 = AGCLLVMUserShader::buildTileThreadgroupPositionInGrid(this, a2, a3);
    v14 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v6 + 1712), v7, v8, v13);
    v10 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(this, a2, a3);
    v12[16] = 257;
    return llvm::IRBuilderBase::CreateAdd((v6 + 1712), Mul, v10, v12);
  }
}

llvm::Value *AGCLLVMUserShader::buildTileThreadsPerThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2, int a3)
{
  switch(a3)
  {
    case 0:
      v7 = *(*this + 480);
      goto LABEL_7;
    case 1:
      v7 = *(*this + 480);
LABEL_7:
      v6 = v7();
      goto LABEL_8;
    case 2:
      v5 = *(this + *(*this - 24) + 1904);
      v6 = llvm::ConstantInt::get();
LABEL_8:
      v8 = v6;
      goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  v9 = (this + *(*this - 24) + 1704);

  return AGCLLVMBuilder::truncateToSmall(v9, v8, a2);
}

uint64_t AGCLLVMUserShader::buildTileThreadgroupPositionInGrid(AGCLLVMUserShader *this, llvm::Type *a2, int a3)
{
  if (a3 == 2)
  {

    return llvm::ConstantInt::get();
  }

  else
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
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 24);
  v11 = *(a4 + 47);
  v12 = *(a5 + 47);
  if (v12 >= 0)
  {
    v13 = *(a5 + 47);
  }

  else
  {
    v13 = *(a5 + 32);
  }

  if (v12 >= 0)
  {
    v14 = (a5 + 24);
  }

  else
  {
    v14 = *(a5 + 24);
  }

  if (v11 >= 0)
  {
    v15 = *(a4 + 47);
  }

  else
  {
    v15 = *(a4 + 32);
  }

  if (v11 >= 0)
  {
    v16 = (a4 + 24);
  }

  else
  {
    v16 = *(a4 + 24);
  }

  if (v15 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = memcmp(v14, v16, v17);
  v20 = v13 < v15;
  if (v18)
  {
    v20 = v18 < 0;
  }

  if (v20)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a4, a5);
    v21 = *(a3 + 24);
    v22 = *(a3 + 47);
    v23 = *(a4 + 47);
    if (v23 >= 0)
    {
      v24 = *(a4 + 47);
    }

    else
    {
      v24 = *(a4 + 32);
    }

    if (v23 >= 0)
    {
      v25 = (a4 + 24);
    }

    else
    {
      v25 = *(a4 + 24);
    }

    if (v22 >= 0)
    {
      v26 = *(a3 + 47);
    }

    else
    {
      v26 = *(a3 + 32);
    }

    if (v22 >= 0)
    {
      v27 = (a3 + 24);
    }

    else
    {
      v27 = *(a3 + 24);
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a3, a4);
      v31 = *(a2 + 24);
      v32 = *(a2 + 47);
      v33 = *(a3 + 47);
      if (v33 >= 0)
      {
        v34 = *(a3 + 47);
      }

      else
      {
        v34 = *(a3 + 32);
      }

      if (v33 >= 0)
      {
        v35 = (a3 + 24);
      }

      else
      {
        v35 = *(a3 + 24);
      }

      if (v32 >= 0)
      {
        v36 = *(a2 + 47);
      }

      else
      {
        v36 = *(a2 + 32);
      }

      if (v32 >= 0)
      {
        v37 = (a2 + 24);
      }

      else
      {
        v37 = *(a2 + 24);
      }

      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      v39 = memcmp(v35, v37, v38);
      v40 = v34 < v36;
      if (v39)
      {
        v40 = v39 < 0;
      }

      if (v40)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a2, a3);
        v41 = *(a1 + 47);
        v42 = *(a2 + 47);
        if (v42 >= 0)
        {
          v43 = *(a2 + 47);
        }

        else
        {
          v43 = *(a2 + 32);
        }

        if (v42 >= 0)
        {
          v44 = (a2 + 24);
        }

        else
        {
          v44 = *(a2 + 24);
        }

        if (v41 >= 0)
        {
          v45 = *(a1 + 47);
        }

        else
        {
          v45 = *(a1 + 32);
        }

        if (v41 >= 0)
        {
          v46 = (a1 + 24);
        }

        else
        {
          v46 = *(a1 + 24);
        }

        if (v45 >= v43)
        {
          v47 = v43;
        }

        else
        {
          v47 = v45;
        }

        v48 = memcmp(v44, v46, v47);
        v49 = v43 < v45;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (v49)
        {

          *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}