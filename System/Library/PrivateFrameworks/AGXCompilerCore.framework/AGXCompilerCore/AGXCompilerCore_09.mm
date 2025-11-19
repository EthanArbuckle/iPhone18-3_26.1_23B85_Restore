llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGMeshSWShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGMeshSWShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t AGCLLVMUserObjectShaderBase::getTempRegistersLimit(AGCLLVMUserObjectShaderBase *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  v6 = *(this + 1146);
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

BOOL AGCLLVMUserObjectShader::constructReply(AGCLLVMUserObjectShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = this + *(*this - 24);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 4, *(this + 1152));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 6, *(this + 1153));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 8, *(this + 1154));
    LODWORD(v4) = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    v7 = this + *(*this - 24);
    v8 = *(v7 + 1080);
    v7[4358] = 1;
    v9 = *(v7 + 1082);
    v10 = v8 - *(v7 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 4, *(this + 1192));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 6, *(this + 1193));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 8, *(this + 1194));
    LODWORD(v7) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v10 + v9);
    v11 = this + *(*this - 24);
    v12 = *(v11 + 1080);
    v11[4358] = 1;
    v13 = *(v11 + 1082);
    v14 = v12 - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 4, v4);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 6, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 536, 8, *(this + 1148));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 536, 10, *(this + 1149));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 536, 12, *(this + 1146));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v11 + 536, 14, *(this + 12), 0);
    LODWORD(v4) = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v14 + v13);
    v15 = this + *(*this - 24);
    v16 = *(v15 + 1080);
    v15[4358] = 1;
    v17 = *(v15 + 1082);
    LODWORD(v11) = v16 - *(v15 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v15 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>((v15 + 4288), v4);
    v18 = *(*this - 24);
    v19 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v11 + v17);
    flatbuffers::FlatBufferBuilder::Finish((this + v18 + 4288), v19, v20);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v21 = *this;
    v22 = this + *(*this - 24);
    v22[4454] = 1;
    v23 = *(v21 - 24);
    v24 = flatbuffers::FlatBufferBuilder::EndTable((v22 + 4384), *(v22 + 2208) - *(v22 + 2216) + *(v22 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v23 + 4384), v24, v25);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));

    return AGCLLVMUserObjectShaderBase::validateReply(this);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 20, v4);
  }

  return result;
}

BOOL AGCLLVMUserObjectShaderBase::validateReply(AGCLLVMUserObjectShaderBase *this)
{
  v2 = (this + *(*this - 24));
  v3 = v2[104].__r_.__value_.__r.__words[2];
  if (v3)
  {
    if (v2[105].__r_.__value_.__r.__words[0])
    {
      v4 = &v2[104].__r_.__value_.__r.__words[2];
    }

    else
    {
      v4 = &v2[128];
    }
  }

  else
  {
    v4 = &v2[128];
  }

  v5 = (v4->__words[0] + *v4->__words[0]);
  v6 = (v5 + *(v5 - *v5 + 4));
  v7 = (v6 + *v6 + *(v6 + *v6 - *(v6 + *v6) + 8));
  if (v3)
  {
    if (v2[105].__r_.__value_.__r.__words[0])
    {
      v8 = (v2 + 2512);
    }

    else
    {
      v8 = v2 + 128;
    }
  }

  else
  {
    v8 = v2 + 128;
  }

  v10 = v8->__r_.__value_.__r.__words[0];
  size = v8->__r_.__value_.__l.__size_;
  if (v10)
  {
    v11 = size == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v10 + *v10);
  }

  v13 = (v12 - *v12);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v7 + *v7);
  v17 = (v15 - *v15);
  if (*v17 >= 0x3Du && (v18 = v17[30]) != 0)
  {
    v19 = *(v15 + v18);
  }

  else
  {
    v19 = 0;
  }

  if (v16 <= 0x20)
  {
    result = validateUserLocalMemoryUsage(v19, *(v2[90].__r_.__value_.__l.__size_ + 952), v2 + 69);
    if (!result)
    {
      return result;
    }

    v21 = *(this + 1147);
    v22 = (this + *(*this - 24));
    v23 = *(v22[90].__r_.__value_.__l.__size_ + 988);
    if (v21 <= v23)
    {
      return 1;
    }

    std::to_string(&v39, v21);
    v24 = std::string::insert(&v39, 0, "Object shader payload size (");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v40, ") ");
    v27 = v26->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = *&v26->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v41, "exceeds the maximum payload size allowed (");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v23);
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
      v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = __p.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v42, p_p, v31);
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v43, ")");
    v35 = v34->__r_.__value_.__r.__words[2];
    v44 = *&v34->__r_.__value_.__l.__data_;
    v45 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (v45 >= 0)
    {
      v36 = &v44;
    }

    else
    {
      v36 = v44;
    }

    if (v45 >= 0)
    {
      v37 = HIBYTE(v45);
    }

    else
    {
      v37 = *(&v44 + 1);
    }

    std::string::append(v22 + 69, v36, v37);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void AGCLLVMUserObjectShader::getCompilationKeyDescription(AGCLLVMUserObjectShader *this@<X0>, std::string *a2@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(v39, "AGCObjectContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v37, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v43);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "0x", 2);
  *(&v44 + *(v44 - 24) + 8) = *(&v44 + *(v44 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v49, v37, __p);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  v43[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v43 + *(v43[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v44 = v6;
  v45 = MEMORY[0x277D82878] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v46);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](v48);
  std::string::basic_string[abi:nn200100]<0>(v43, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v50, v43, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(__p, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v51, __p, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v35, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v52, v35, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v33, "customBorderColor");
  _agcFieldString<unsigned int>(&v53, v33, v3[2] & 1);
  std::string::basic_string[abi:nn200100]<0>(v31, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v54, v31, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v29, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v55, v29, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v27, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v56, v27, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v25, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v57, v25, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v23, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v58, v23, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v59, v21, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v19, "enableStackShadow");
  _agcFieldString<unsigned int>(&v60, v19, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v17, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v61, v17, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v15, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v62, v15, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v13, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v63, v13, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v11, "meshNeedsTGCounts");
  _agcFieldString<unsigned int>(&v64, v11, (*(v3 + 4) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v9, "meshNeedsOSGridPosition");
  _agcFieldString<unsigned int>(&v65, v9, (*(v3 + 4) >> 2) & 1);
  _agcGroupWithHeader(a2, v39, &v49, 17);
  v7 = 408;
  do
  {
    if (v49.__r_.__value_.__s.__data_[v7 - 1] < 0)
    {
      operator delete(*&v48[v7 + 128]);
    }

    v7 -= 24;
  }

  while (v7);
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

  if (v30 < 0)
  {
    operator delete(v29[0]);
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

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMUserObjectShader::~AGCLLVMUserObjectShader(AGCLLVMUserObjectShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255AC78;
  v1[598] = &unk_28255AFE0;
  v1[811] = &unk_28255B0F0;
  v2 = v1[595];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 593));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, &off_28255D7D0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 598));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255AC78;
  v1[598] = &unk_28255AFE0;
  v1[811] = &unk_28255B0F0;
  v2 = v1[595];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 593));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, &off_28255D7D0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 598));
}

uint64_t AGCLLVMUserObjectShaderBase::replacePayloadBufferAccesses(AGCLLVMUserObjectShaderBase *this, llvm::Type **a2)
{
  v4 = this + 4096;
  v5 = this + *(*this - 24);
  v6 = *(v5 + 271);
  v21 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v5 + 1712));
  v23 = *(v5 + 452);
  GEP = (*(*v6 + 344))(v6, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v4[504] == 1)
  {
    v8 = (this + *(*this - 24));
    v9 = v8[236];
    v10 = v8[237];
    v11 = llvm::ConstantInt::get();
    v20 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v8 + 214), v9, GEP, v11, v19);
  }

  if (v4[505] == 1)
  {
    v12 = (this + *(*this - 24));
    v13 = v12[236];
    v14 = v12[237];
    v15 = llvm::ConstantInt::get();
    v20 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v12 + 214), v13, GEP, v15, v19);
  }

  v16 = (this + *(*this - 24));
  v17 = *a2;
  v20 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v16 + 214, GEP, v17, v19);
  llvm::Value::replaceAllUsesWith();
  return 1;
}

uint64_t AGCLLVMUserObjectShaderBase::replaceBuiltins(AGCLLVMUserObjectShaderBase *this)
{
  v27[42] = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v23, *v3);
    v27[41] = this;
    v23 = &unk_28255C358;
    v27[37] = v3;
    {
      std::string::basic_string[abi:nn200100]<0>(AGCLLVMUserObjectShaderBase::replaceBuiltins(void)::workitem_functions, "air.get_global_size");
      dword_27C8D9268 = 1;
      qword_27C8D9270 = AGCLLVMUserObjectShaderBase::buildGlobalSize;
      unk_27C8D9278 = 0;
      dword_27C8D9280 = 4;
      word_27C8D9284 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9286[2], "air.get_global_id");
      dword_27C8D92A0 = 1;
      qword_27C8D92A8 = AGCLLVMUserObjectShaderBase::buildGlobalID;
      unk_27C8D92B0 = 0;
      dword_27C8D92B8 = 4;
      word_27C8D92BC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D92C0, "air.get_local_size");
      dword_27C8D92D8 = 1;
      qword_27C8D92E0 = AGCLLVMUserObjectShaderBase::buildLocalSize;
      unk_27C8D92E8 = 0;
      dword_27C8D92F0 = 4;
      word_27C8D92F4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D92F8, "air.get_local_id");
      dword_27C8D9310 = 1;
      qword_27C8D9318 = AGCLLVMUserObjectShaderBase::buildLocalID;
      unk_27C8D9320 = 0;
      dword_27C8D9328 = 4;
      word_27C8D932C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9330, "air.get_local_linear_id");
      dword_27C8D9348 = 1;
      qword_27C8D9350 = AGCLLVMUserObjectShaderBase::buildLocalLinearID;
      unk_27C8D9358 = 0;
      dword_27C8D9360 = 2;
      word_27C8D9364 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9366[2], "air.get_num_groups");
      dword_27C8D9380 = 1;
      qword_27C8D9388 = AGCLLVMUserObjectShaderBase::buildNumGroups;
      unk_27C8D9390 = 0;
      dword_27C8D9398 = 4;
      word_27C8D939C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D93A0, "air.get_group_id");
      dword_27C8D93B8 = 1;
      qword_27C8D93C0 = AGCLLVMUserObjectShaderBase::buildGroupID;
      unk_27C8D93C8 = 0;
      dword_27C8D93D0 = 4;
      word_27C8D93D4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D93D8, "air.get_dispatch_local_size");
      dword_27C8D93F0 = 1;
      qword_27C8D93F8 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize;
      unk_27C8D9400 = 0;
      dword_27C8D9408 = 4;
      word_27C8D940C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9410, "air.get_quadgroups_per_threadgroup");
      dword_27C8D9428 = 1;
      qword_27C8D9430 = AGCLLVMUserObjectShaderBase::buildQuadgroupsPerThreadgroup;
      unk_27C8D9438 = 0;
      dword_27C8D9440 = 2;
      word_27C8D9444 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9446[2], "air.get_simdgroups_per_threadgroup");
      dword_27C8D9460 = 1;
      qword_27C8D9468 = AGCLLVMUserObjectShaderBase::buildSimdgroupsPerThreadgroup;
      qword_27C8D9470 = 0;
      dword_27C8D9478 = 2;
      word_27C8D947C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9480, "air.get_dispatch_quadgroups_per_threadgroup");
      dword_27C8D9498 = 1;
      qword_27C8D94A0 = AGCLLVMUserObjectShaderBase::buildDispatchQuadgroupsPerThreadgroup;
      qword_27C8D94A8 = 0;
      dword_27C8D94B0 = 2;
      word_27C8D94B4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D94B8, "air.get_dispatch_simdgroups_per_threadgroup");
      dword_27C8D94D0 = 1;
      qword_27C8D94D8 = AGCLLVMUserObjectShaderBase::buildDispatchSimdgroupsPerThreadgroup;
      qword_27C8D94E0 = 0;
      dword_27C8D94E8 = 2;
      word_27C8D94EC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D94F0, "air.get_quad_group");
      dword_27C8D9508 = 1;
      qword_27C8D9510 = AGCLLVMUserObjectShaderBase::buildQuadGroup;
      qword_27C8D9518 = 0;
      dword_27C8D9520 = 2;
      word_27C8D9524 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9526[2], "air.get_thread_index_in_simdgroup");
      dword_27C8D9540 = 1;
      qword_27C8D9548 = AGCLLVMUserObjectShaderBase::buildThreadIndexInSimdGroup;
      qword_27C8D9550 = 0;
      dword_27C8D9558 = 2;
      word_27C8D955C = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9560, "air.get_simdgroup_index_in_threadgroup");
      dword_27C8D9578 = 1;
      qword_27C8D9580 = AGCLLVMUserObjectShaderBase::buildSimdGroupIndexInThreadgroup;
      qword_27C8D9588 = 0;
      dword_27C8D9590 = 2;
      word_27C8D9594 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9598, "air.get_dispatch_threads_per_threadgroup");
      dword_27C8D95B0 = 1;
      qword_27C8D95B8 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize;
      qword_27C8D95C0 = 0;
      dword_27C8D95C8 = 4;
      word_27C8D95CC = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D95D0, "air.get_quadgroup_index_in_threadgroup");
      dword_27C8D95E8 = 1;
      qword_27C8D95F0 = AGCLLVMUserObjectShaderBase::buildQuadGroup;
      qword_27C8D95F8 = 0;
      dword_27C8D9600 = 2;
      word_27C8D9604 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D9608, "air.get_thread_index_in_quadgroup");
      dword_27C8D9620 = 1;
      qword_27C8D9628 = AGCLLVMUserObjectShaderBase::buildQuadElement;
      qword_27C8D9630 = 0;
      dword_27C8D9638 = 2;
      word_27C8D963C = 0;
      __cxa_atexit(__cxx_global_array_dtor_586, 0, &dword_20E4E1000);
    }

    v4 = 18;
    v5 = &dword_27C8D9268;
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

      strcpy(p_p + v6, ".i32");
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
        v10 = SHIBYTE(v20);
      }

      else
      {
        v10 = v19;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(&v23, v9, v10, v5);
      if (SHIBYTE(v20) < 0)
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

      strcpy(v12 + v11, ".i16");
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
        v15 = SHIBYTE(v20);
      }

      else
      {
        v15 = v19;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(&v23, v14, v15, v5);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }

      v5 += 14;
      --v4;
    }

    while (v4);
    LODWORD(__p) = 1;
    v19 = AGCLLVMUserObjectShaderBase::getEmulationPayloadBuffer;
    v20 = 0;
    v21 = 1;
    v22 = 0;
    AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(&v23, "agc.gpe.get_payload_buffer", 26, &__p);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v27);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v26);
    if (v24 != &v25)
    {
      free(v24);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderBase>::doReplacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        v14 = *(a1 + 464) + *(**(a1 + 464) - 24);
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

          v45 = *(a1 + 464) + *(**(a1 + 464) - 24);
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
          v81 = *(a1 + 464) + *(**(a1 + 464) - 24);
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

uint64_t AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(int8x8_t *a1, int a2, char a3)
{
  v185 = *MEMORY[0x277D85DE8];
  v6 = *(&a1[239] + *(*a1 - 24));
  v7 = llvm::PointerType::get();
  v8 = llvm::PointerType::get();
  if (!*&a1[588])
  {
    v9 = *a1;
    v10 = a1 + *(*a1 - 24);
    v11 = *(v10 + 270);
    v178 = *(v10 + 238);
    v179 = *(&a1[238] + *(*&v9 - 24));
    v180 = *(&a1[238] + *(*&v9 - 24));
    v181 = *(&a1[238] + *(*&v9 - 24));
    v182 = *(&a1[238] + *(*&v9 - 24));
    v183 = *(&a1[238] + *(*&v9 - 24));
    v184 = *(&a1[238] + *(*&v9 - 24));
    llvm::StructType::create();
    v12 = llvm::User::operator new(0x58);
    v13 = *(&a1[267] + *(*a1 - 24));
    llvm::PointerType::get();
    v178 = "agc.mesh_state_buffer";
    LOWORD(v182) = 259;
    v159 = *(*(&a1[271] + *(*a1 - 24)) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    *(v12 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v14 = a1 + *(*a1 - 24);
    v15 = *(v14 + 268);
    v16 = AGCLLVMBuilder::buildGlobalMetadata((v14 + 1704), v12);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v15, v16);
    llvm::ValueHandleBase::operator=(&a1[586], v12);
  }

  if (!*&a1[591])
  {
    v17 = llvm::User::operator new(0x58);
    v18 = a1 + *(*a1 - 24);
    v19 = *(v18 + 267);
    v20 = *(v18 + 239);
    llvm::PointerType::get();
    llvm::PointerType::get();
    v178 = "agc.gpe_mailbox_state_base";
    LOWORD(v182) = 259;
    v160 = *(*(&a1[271] + *(*a1 - 24)) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    *(v17 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v21 = a1 + *(*a1 - 24);
    v22 = *(v21 + 268);
    v23 = AGCLLVMBuilder::buildGlobalMetadata((v21 + 1704), v17);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, v23);
    llvm::ValueHandleBase::operator=(&a1[589], v17);
  }

  v24 = a1 + *(*a1 - 24);
  v25 = *(v24 + 239);
  __src = llvm::PointerType::get();
  v178 = &v180;
  v179 = 0x100000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v178, &__src, v176);
  llvm::FunctionType::get();
  v26 = *(v24 + 267);
  llvm::Module::getOrInsertFunction();
  v28 = v27;
  if (v178 != &v180)
  {
    free(v178);
  }

  EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(a1);
  v30 = *(&a1[270] + *(*a1 - 24));
  TypeByName = llvm::StructType::getTypeByName();
  v32 = a1 + *(*a1 - 24);
  v168 = *(v32 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v169, (v32 + 1712));
  v170 = *(v32 + 452);
  if ((a3 & 1) == 0)
  {
    v33 = a1 + *(*a1 - 24);
    v34 = *(*(*(v33 + 220) + 56) + 80);
    if (v34)
    {
      v35 = (v34 - 24);
    }

    else
    {
      v35 = 0;
    }

    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v35);
    if (FirstInsertionPt)
    {
      v37 = (FirstInsertionPt - 24);
    }

    else
    {
      v37 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((v33 + 1712), v37);
  }

  if (!EmulationStateCacheForCurrentFunction[11])
  {
    v38 = a1 + *(*a1 - 24);
    v39 = a1[588];
    LOWORD(v182) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v38 + 1704), v39, &v178);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 9), Load);
  }

  if (!EmulationStateCacheForCurrentFunction[5])
  {
    llvm::IRBuilderBase::SetInsertPoint(&a1[214] + *(*a1 - 24), *(EmulationStateCacheForCurrentFunction[11] + 40), *(EmulationStateCacheForCurrentFunction[11] + 32));
    v171[0] = 0;
    v41 = (a1 + *(*a1 - 24));
    v42 = a1[591];
    LOWORD(v182) = 257;
    llvm::Type::isOpaquePointerTy(*v42);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v41 + 214, v8, v42, 0, &v178);
    v44 = *(&a1[238] + *(*a1 - 24));
    v45 = llvm::ConstantInt::get();
    v177 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v41 + 214), v7, AlignedLoad, v45, &__src);
    v167 = 257;
    llvm::Type::isOpaquePointerTy(*GEP);
    v171[0] = llvm::IRBuilderBase::CreateAlignedLoad(v41 + 214, v7, GEP, 0, v166);
    v47 = a1 + *(*a1 - 24);
    LOWORD(v182) = 257;
    v48 = llvm::IRBuilderBase::CreateCall((v47 + 1712), *(v28 + 24), v28, v171, 1, &v178);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 3), v48);
  }

  if (!EmulationStateCacheForCurrentFunction[8])
  {
    llvm::IRBuilderBase::SetInsertPoint(&a1[214] + *(*a1 - 24), *(EmulationStateCacheForCurrentFunction[11] + 40), *(EmulationStateCacheForCurrentFunction[11] + 32));
    v171[0] = 0;
    v49 = (a1 + *(*a1 - 24));
    v50 = a1[591];
    LOWORD(v182) = 257;
    llvm::Type::isOpaquePointerTy(*v50);
    v51 = llvm::IRBuilderBase::CreateAlignedLoad(v49 + 214, v8, v50, 0, &v178);
    v52 = *(&a1[238] + *(*a1 - 24));
    v53 = llvm::ConstantInt::get();
    v177 = 257;
    v54 = llvm::IRBuilderBase::CreateGEP((v49 + 214), v7, v51, v53, &__src);
    v167 = 257;
    llvm::Type::isOpaquePointerTy(*v54);
    v171[0] = llvm::IRBuilderBase::CreateAlignedLoad(v49 + 214, v7, v54, 0, v166);
    v55 = a1 + *(*a1 - 24);
    LOWORD(v182) = 257;
    v56 = llvm::IRBuilderBase::CreateCall((v55 + 1712), *(v28 + 24), v28, v171, 1, &v178);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 6), v56);
  }

  v57 = a1 + *(*a1 - 24);
  if (a2 <= 2)
  {
    if (!a2)
    {
      llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[5] + 40), *(EmulationStateCacheForCurrentFunction[5] + 32));
      if (!EmulationStateCacheForCurrentFunction[14])
      {
        v101 = a1 + *(*a1 - 24);
        v102 = EmulationStateCacheForCurrentFunction[5];
        v103 = *(v101 + 238);
        v104 = EmulationStateCacheForCurrentFunction[11];
        v173 = llvm::ConstantInt::get();
        v105 = *(&a1[238] + *(*a1 - 24));
        v174 = llvm::ConstantInt::get();
        LOWORD(v182) = 257;
        llvm::Type::isOpaquePointerTy(*v104);
        v106 = llvm::IRBuilderBase::CreateGEP((v101 + 1712), TypeByName, v104, &v173, 2, &v178);
        v177 = 257;
        llvm::Type::isOpaquePointerTy(*v106);
        v107 = llvm::IRBuilderBase::CreateAlignedLoad(v101 + 214, v103, v106, 0, &__src);
        v108 = *(&a1[239] + *(*a1 - 24));
        v167 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v101 + 1712), 39, v107, v108, v166);
        v172 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v101 + 1712), v102, Cast, v171);
        v111 = *(&a1[238] + *(*a1 - 24));
        v112 = llvm::PointerType::get();
        v164[0] = "agc.gpe.object_metadata";
        v165 = 259;
        v113 = llvm::IRBuilderBase::CreateCast((v101 + 1712), 48, Add, v112, v164);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 12), v113);
      }

      v71 = a1 + *(*a1 - 24);
      v72 = EmulationStateCacheForCurrentFunction + 12;
      goto LABEL_39;
    }

    if (a2 == 1)
    {
      llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
      if (!EmulationStateCacheForCurrentFunction[17])
      {
        v73 = a1 + *(*a1 - 24);
        v74 = EmulationStateCacheForCurrentFunction[8];
        v75 = *(v73 + 238);
        v76 = EmulationStateCacheForCurrentFunction[11];
        v173 = llvm::ConstantInt::get();
        v77 = *(&a1[238] + *(*a1 - 24));
        v174 = llvm::ConstantInt::get();
        LOWORD(v182) = 257;
        llvm::Type::isOpaquePointerTy(*v76);
        v78 = llvm::IRBuilderBase::CreateGEP((v73 + 1712), TypeByName, v76, &v173, 2, &v178);
        v177 = 257;
        llvm::Type::isOpaquePointerTy(*v78);
        v79 = llvm::IRBuilderBase::CreateAlignedLoad(v73 + 214, v75, v78, 0, &__src);
        v80 = *(&a1[239] + *(*a1 - 24));
        v167 = 257;
        v81 = llvm::IRBuilderBase::CreateCast((v73 + 1712), 39, v79, v80, v166);
        v172 = 257;
        v82 = llvm::IRBuilderBase::CreateAdd((v73 + 1712), v74, v81, v171);
        v83 = *(&a1[238] + *(*a1 - 24));
        v84 = llvm::PointerType::get();
        v164[0] = "agc.gpe.mesh_metadata";
        v165 = 259;
        v85 = llvm::IRBuilderBase::CreateCast((v73 + 1712), 48, v82, v84, v164);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 15), v85);
      }

      v71 = a1 + *(*a1 - 24);
      v72 = EmulationStateCacheForCurrentFunction + 15;
      goto LABEL_39;
    }

    llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[5] + 40), *(EmulationStateCacheForCurrentFunction[5] + 32));
    if (!EmulationStateCacheForCurrentFunction[20])
    {
      v116 = a1 + *(*a1 - 24);
      v117 = EmulationStateCacheForCurrentFunction[5];
      v118 = *(v116 + 238);
      v119 = EmulationStateCacheForCurrentFunction[11];
      v173 = llvm::ConstantInt::get();
      v120 = *(&a1[238] + *(*a1 - 24));
      v174 = llvm::ConstantInt::get();
      LOWORD(v182) = 257;
      llvm::Type::isOpaquePointerTy(*v119);
      v121 = llvm::IRBuilderBase::CreateGEP((v116 + 1712), TypeByName, v119, &v173, 2, &v178);
      v177 = 257;
      llvm::Type::isOpaquePointerTy(*v121);
      v122 = llvm::IRBuilderBase::CreateAlignedLoad(v116 + 214, v118, v121, 0, &__src);
      v123 = *(&a1[239] + *(*a1 - 24));
      v167 = 257;
      v124 = llvm::IRBuilderBase::CreateCast((v116 + 1712), 39, v122, v123, v166);
      v172 = 257;
      v125 = llvm::IRBuilderBase::CreateAdd((v116 + 1712), v117, v124, v171);
      v126 = *(&a1[236] + *(*a1 - 24));
      v127 = llvm::PointerType::get();
      v164[0] = "agc.gpe.payload_buffer";
      v165 = 259;
      v128 = llvm::IRBuilderBase::CreateCast((v116 + 1712), 48, v125, v127, v164);
      llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 18), v128);
    }

    v99 = a1 + *(*a1 - 24);
    v100 = EmulationStateCacheForCurrentFunction + 18;
LABEL_49:
    v114 = llvm::ValueHandleBase::ValueHandleBase(&v178, 2u, v100);
    v115 = *(v99 + 236);
    goto LABEL_50;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
      if (!EmulationStateCacheForCurrentFunction[29])
      {
        v86 = a1 + *(*a1 - 24);
        v87 = EmulationStateCacheForCurrentFunction[8];
        v88 = *(v86 + 238);
        v89 = EmulationStateCacheForCurrentFunction[11];
        v173 = llvm::ConstantInt::get();
        v90 = *(&a1[238] + *(*a1 - 24));
        v174 = llvm::ConstantInt::get();
        LOWORD(v182) = 257;
        llvm::Type::isOpaquePointerTy(*v89);
        v91 = llvm::IRBuilderBase::CreateGEP((v86 + 1712), TypeByName, v89, &v173, 2, &v178);
        v177 = 257;
        llvm::Type::isOpaquePointerTy(*v91);
        v92 = llvm::IRBuilderBase::CreateAlignedLoad(v86 + 214, v88, v91, 0, &__src);
        v93 = *(&a1[239] + *(*a1 - 24));
        v167 = 257;
        v94 = llvm::IRBuilderBase::CreateCast((v86 + 1712), 39, v92, v93, v166);
        v172 = 257;
        v95 = llvm::IRBuilderBase::CreateAdd((v86 + 1712), v87, v94, v171);
        v96 = *(&a1[236] + *(*a1 - 24));
        v97 = llvm::PointerType::get();
        v164[0] = "agc.gpe.vertex_buffer";
        v165 = 259;
        v98 = llvm::IRBuilderBase::CreateCast((v86 + 1712), 48, v95, v97, v164);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 27), v98);
      }

      v99 = a1 + *(*a1 - 24);
      v100 = EmulationStateCacheForCurrentFunction + 27;
    }

    else
    {
      llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
      if (!EmulationStateCacheForCurrentFunction[32])
      {
        v142 = a1 + *(*a1 - 24);
        v143 = EmulationStateCacheForCurrentFunction[8];
        v144 = *(v142 + 238);
        v145 = EmulationStateCacheForCurrentFunction[11];
        v173 = llvm::ConstantInt::get();
        v146 = *(&a1[238] + *(*a1 - 24));
        v174 = llvm::ConstantInt::get();
        LOWORD(v182) = 257;
        llvm::Type::isOpaquePointerTy(*v145);
        v147 = llvm::IRBuilderBase::CreateGEP((v142 + 1712), TypeByName, v145, &v173, 2, &v178);
        v177 = 257;
        llvm::Type::isOpaquePointerTy(*v147);
        v148 = llvm::IRBuilderBase::CreateAlignedLoad(v142 + 214, v144, v147, 0, &__src);
        v149 = *(&a1[239] + *(*a1 - 24));
        v167 = 257;
        v150 = llvm::IRBuilderBase::CreateCast((v142 + 1712), 39, v148, v149, v166);
        v172 = 257;
        v151 = llvm::IRBuilderBase::CreateAdd((v142 + 1712), v143, v150, v171);
        v152 = *(&a1[236] + *(*a1 - 24));
        v153 = llvm::PointerType::get();
        v164[0] = "agc.gpe.primitive_buffer";
        v165 = 259;
        v154 = llvm::IRBuilderBase::CreateCast((v142 + 1712), 48, v151, v153, v164);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 30), v154);
      }

      v99 = a1 + *(*a1 - 24);
      v100 = EmulationStateCacheForCurrentFunction + 30;
    }

    goto LABEL_49;
  }

  if (a2 != 3)
  {
    llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
    if (!EmulationStateCacheForCurrentFunction[26])
    {
      v129 = a1 + *(*a1 - 24);
      v130 = EmulationStateCacheForCurrentFunction[8];
      v131 = *(v129 + 238);
      v132 = EmulationStateCacheForCurrentFunction[11];
      v173 = llvm::ConstantInt::get();
      v133 = *(&a1[238] + *(*a1 - 24));
      v174 = llvm::ConstantInt::get();
      LOWORD(v182) = 257;
      llvm::Type::isOpaquePointerTy(*v132);
      v134 = llvm::IRBuilderBase::CreateGEP((v129 + 1712), TypeByName, v132, &v173, 2, &v178);
      v177 = 257;
      llvm::Type::isOpaquePointerTy(*v134);
      v135 = llvm::IRBuilderBase::CreateAlignedLoad(v129 + 214, v131, v134, 0, &__src);
      v136 = *(&a1[239] + *(*a1 - 24));
      v167 = 257;
      v137 = llvm::IRBuilderBase::CreateCast((v129 + 1712), 39, v135, v136, v166);
      v172 = 257;
      v138 = llvm::IRBuilderBase::CreateAdd((v129 + 1712), v130, v137, v171);
      v139 = *(&a1[236] + *(*a1 - 24));
      v140 = llvm::PointerType::get();
      v164[0] = "agc.gpe.index_buffer";
      v165 = 259;
      v141 = llvm::IRBuilderBase::CreateCast((v129 + 1712), 48, v138, v140, v164);
      llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 24), v141);
    }

    v99 = a1 + *(*a1 - 24);
    v100 = EmulationStateCacheForCurrentFunction + 24;
    goto LABEL_49;
  }

  llvm::IRBuilderBase::SetInsertPoint((v57 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
  if (!EmulationStateCacheForCurrentFunction[23])
  {
    v58 = a1 + *(*a1 - 24);
    v59 = EmulationStateCacheForCurrentFunction[8];
    v60 = *(v58 + 238);
    v61 = EmulationStateCacheForCurrentFunction[11];
    v173 = llvm::ConstantInt::get();
    v62 = *(&a1[238] + *(*a1 - 24));
    v174 = llvm::ConstantInt::get();
    LOWORD(v182) = 257;
    llvm::Type::isOpaquePointerTy(*v61);
    v63 = llvm::IRBuilderBase::CreateGEP((v58 + 1712), TypeByName, v61, &v173, 2, &v178);
    v177 = 257;
    llvm::Type::isOpaquePointerTy(*v63);
    v64 = llvm::IRBuilderBase::CreateAlignedLoad(v58 + 214, v60, v63, 0, &__src);
    v65 = *(&a1[239] + *(*a1 - 24));
    v167 = 257;
    v66 = llvm::IRBuilderBase::CreateCast((v58 + 1712), 39, v64, v65, v166);
    v172 = 257;
    v67 = llvm::IRBuilderBase::CreateAdd((v58 + 1712), v59, v66, v171);
    v68 = *(&a1[238] + *(*a1 - 24));
    v69 = llvm::PointerType::get();
    v164[0] = "agc.gpe.vdm_stream";
    v165 = 259;
    v70 = llvm::IRBuilderBase::CreateCast((v58 + 1712), 48, v67, v69, v164);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 21), v70);
  }

  v71 = a1 + *(*a1 - 24);
  v72 = EmulationStateCacheForCurrentFunction + 21;
LABEL_39:
  v114 = llvm::ValueHandleBase::ValueHandleBase(&v178, 2u, v72);
  v115 = *(v71 + 238);
LABEL_50:
  v181 = v115;
  v155 = v180;
  if (v180 != -8192 && v180 != -4096 && v180)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v114);
  }

  v156 = a1 + *(*a1 - 24);
  v161 = v168;
  v162 = v169;
  if (v169)
  {
    llvm::MetadataTracking::track();
  }

  v163 = v170;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v161, (v156 + 1712));
  if (v162)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v169)
  {
    llvm::MetadataTracking::untrack();
  }

  v157 = *MEMORY[0x277D85DE8];
  return v155;
}

uint64_t AGCLLVMUserObjectShaderBase::buildQuadElement(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserObjectShaderBase::buildSimdGroupIndexInThreadgroup(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserObjectShaderBase::buildThreadIndexInSimdGroup(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserObjectShaderBase::buildQuadGroup(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserObjectShaderBase::buildGroupsPerThreadgroup<5u>(AGCLLVMUserObjectShaderBase *a1, llvm::Type *a2, int a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 0);
    v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 0);
    v12 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 2);
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

uint64_t AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, int a3)
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

uint64_t AGCLLVMUserObjectShaderBase::buildLocalSize(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, int a3)
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

uint64_t AGCLLVMUserObjectShaderBase::buildGroupsPerThreadgroup<2u>(AGCLLVMUserObjectShaderBase *a1, llvm::Type *a2, int a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 0);
    v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 0);
    v12 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 2);
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

uint64_t AGCLLVMUserObjectShaderBase::buildGroupID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, int a3)
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

uint64_t AGCLLVMUserObjectShaderBase::buildLocalLinearID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserObjectShaderBase::buildLocalID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMUserObjectShaderBase::buildGlobalID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, int a3)
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

uint64_t AGCLLVMUserObjectShaderBase::setupShaderOutputs(AGCLLVMUserObjectShaderBase *this)
{
  v1 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t AGCLLVMUserObjectShaderBase::setupShaderInputs(AGCLLVMUserObjectShaderBase *this)
{
  v36[3] = *MEMORY[0x277D85DE8];
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

  v7 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v5 == v7)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0;
    v8 = this + 1704;
    do
    {
      if (*(v5 + 8))
      {
        v9 = *(v4 + 40);
        v10 = v9 ? (v9 - 24) : 0;
        AGCLLVMBuilder::SetInsertPoint(&v8[*(*this - 24)], v10, *(this + 5));
        v11 = *(v5 + 32);
        v12 = *(*(this + 10) + 8 * v11);
        if ((AGCLLVMUserShader::replaceInputArgument(this, v5, v11, v12) & 1) == 0)
        {
          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.payload"))
          {
            v34[0] = 2;
            if (*(v12 + 8) >= 3u)
            {
              do
              {
                if (*(this + 1148) || !parseMDInt("air.arg_type_size", v12, v34, this + 1148))
                {
                  v14 = parseMDInt("air.arg_type_align_size", v12, v34, this + 1149);
                  v13 = v34[0];
                  if ((v14 & 1) == 0)
                  {
                    v13 = ++v34[0];
                  }
                }

                else
                {
                  v13 = v34[0];
                }
              }

              while (v13 < *(v12 + 8));
            }

            v33 = v5;
          }

          else if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_count"))
          {
            v15 = *(*this - 24);
            VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(this);
            AGCLLVMBuilder::truncateToSmall(&v8[v15], VertexAmpCount, *v5);
            llvm::Value::replaceAllUsesWith();
            *(this + 4620) = 1;
          }
        }
      }

      v5 += 40;
    }

    while (v5 != v7);
  }

  v17 = *(this + 1148);
  *(this + 1147) = v17;
  if (*(this + 4600))
  {
    v17 += 16;
    *(this + 1148) = v17;
    v18 = *(this + 1149);
    if (v18 <= 4)
    {
      v18 = 4;
    }

    *(this + 1149) = v18;
    *(this + 1151) = 16;
  }

  if (*(this + 4601) == 1)
  {
    *(this + 1148) = v17 + 16;
    v19 = *(this + 1149);
    if (v19 <= 4)
    {
      v19 = 4;
    }

    *(this + 1149) = v19;
  }

  if (v33)
  {
    (*(*this + 528))(this);
  }

  if ((*(*this + 504))(this) && *(this + 1148))
  {
    v20 = *(v4 + 48);
    if (v20)
    {
      v21 = (v20 - 24);
    }

    else
    {
      v21 = 0;
    }

    AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v21, *(this + 5));
    v22 = (this + *(*this - 24));
    v23 = v22[271];
    v24 = *(v23 + 1056);
    if (v24)
    {
      v25 = strlen(*(v23 + 1056));
    }

    else
    {
      v25 = 0;
    }

    v26 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>((v22 + 213), v24, v25, v22[231], v22[237], v22[237], v22[237]);
    v27 = *(this + *(*this - 24) + 1896);
    v36[0] = llvm::ConstantInt::get();
    v28 = *(this + *(*this - 24) + 1896);
    v36[1] = llvm::ConstantInt::get();
    v29 = *(this + *(*this - 24) + 1896);
    v36[2] = llvm::ConstantInt::get();
    v30 = this + *(*this - 24);
    v35 = 257;
    llvm::IRBuilderBase::CreateCall((v30 + 1712), *(v26 + 24), v26, v36, 3, v34);
  }

  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMUserObjectShaderBase::getVertexAmpCount(AGCLLVMUserObjectShaderBase *this)
{
  if (*(this + 4621) == 1)
  {
    if (!*(this + 580))
    {
      v4 = llvm::User::operator new(0x58);
      v5 = (this + *(*this - 24));
      v6 = v5[267];
      v7 = v5[238];
      v15 = "agc.driver_constants.amp_count";
      v16 = 259;
      v14 = *(v5[271] + 972) | 0x100000000;
      v8 = llvm::GlobalVariable::GlobalVariable();
      *(v8 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v9 = this + *(*this - 24);
      v10 = *(v9 + 268);
      v11 = AGCLLVMBuilder::buildGlobalMetadata((v9 + 1704), v4);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
      llvm::ValueHandleBase::operator=((this + 4624), v4);
    }

    v12 = this + *(*this - 24);
    v13 = *(this + 580);
    v16 = 257;
    return AGCLLVMBuilder::CreateLoad((v12 + 1704), v13, &v15);
  }

  else
  {
    v2 = *(this + *(*this - 24) + 1904);

    return llvm::ConstantInt::get();
  }
}

void AGCLLVMUserObjectShaderBase::addInitCompilePass(AGCLLVMUserObjectShaderBase *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderBase>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileUserObjectShaderBasePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x55)
  {
    v1 = v0;
  }

  else
  {
    v1 = 85;
  }

  v2 = &aStringrefLlvmG_14[v1];
  v3 = 85 - v1;
  if ((85 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 85 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserObjectShaderBasePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserObjectShaderBasePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderBase>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_13[v1];
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

uint64_t AGCLLVMUserObjectShader::buildNumGroups(AGCLLVMUserObjectShader *this, llvm::Type *a2, int a3)
{
  v6 = (*(*this + 512))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v16 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v15);
  v10 = llvm::ConstantInt::get();
  v14[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v10, v14);
  v12 = this + *(*this - 24);
  v16 = 257;
  return llvm::IRBuilderBase::CreateUDiv((v12 + 1712), Sub, v7, v15);
}

uint64_t AGCLLVMUserObjectShader::replaceBuiltins(AGCLLVMUserObjectShader *this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObjectShaderBase::replaceBuiltins(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v25, *v3);
    v31 = this;
    v25 = &unk_28255C528;
    v30[37] = v3;
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v5 = Function;
      v18 = v28;
      v6 = *(Function + 8);
      if (v6)
      {
        v7 = **(*(Function + 24) + 16);
        do
        {
          v8 = *(v6 + 24);
          v6 = *(v6 + 8);
          v28 = 0;
          llvm::IRBuilderBase::SetInsertPoint(v26, v8);
          llvm::UndefValue::get();
          v33 = 0;
          memset(v32, 0, sizeof(v32));
          v9 = llvm::CallBase::arg_end(v8) - v8 + 32 * (*(v8 + 5) & 0x7FFFFFF);
          if ((v9 & 0x1FFFFFFFE0) != 0)
          {
            v10 = (v9 >> 5);
            v11 = (v8 - 32 * (*(v8 + 5) & 0x7FFFFFF));
            v12 = v32;
            do
            {
              v13 = *v11;
              v11 += 4;
              *v12++ = v13;
              --v10;
            }

            while (v10);
          }

          if (llvm::FPMathOperator::classof(v8))
          {
            llvm::Instruction::getFastMathFlags(v8);
          }

          v14 = v31 + *(*v31 - 24);
          v22 = v27[2];
          llvm::IRBuilderBase::getCurrentDebugLocation(&v23, v26);
          v24 = v28;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v22, (v14 + 1712));
          if (v23)
          {
            llvm::MetadataTracking::untrack();
          }

          AGCLLVMUserObjectShader::buildSetMeshGridProperties(v31, *&v32[0], *(&v32[0] + 1));
          v15 = v31 + *(*v31 - 24);
          v19 = *(v15 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (v15 + 1712));
          v21 = *(v15 + 452);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v19, v26);
          if (v20)
          {
            llvm::MetadataTracking::untrack();
          }

          if (*v8 != v30[1])
          {
            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v8);
        }

        while (v6);
      }

      v28 = v18;
      llvm::Function::eraseFromParent(v5);
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v30);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v29);
    if (v26[0] != v27)
    {
      free(v26[0]);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t AGCLLVMUserObjectShader::buildSetMeshGridProperties(AGCLLVMUserObjectShader *this, llvm::Type **a2, llvm::Value *a3)
{
  v5 = this + 4096;
  v6 = (this + *(*this - 24));
  v7 = *(this + 572);
  v50 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v6 + 214, a2, v7, v49);
  v9 = AGCLLVMBuilder::extendVector((this + *(*this - 24) + 1704), a3, 4);
  v10 = this + *(*this - 24);
  v11 = *(v10 + 271);
  v46 = *(v10 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v10 + 1712));
  v48 = *(v10 + 452);
  (*(*v11 + 320))(v11, &v46, PointerCast, v9);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v5[504] == 1)
  {
    v12 = this + *(*this - 24);
    v13 = *(v12 + 271);
    v43 = *(v12 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v12 + 1712));
    v45 = *(v12 + 452);
    v14 = (*(*v13 + 344))(v13, &v43);
    v15 = *(this + *(*this - 24) + 2040);
    v16 = llvm::PointerType::get();
    v50 = 257;
    v17 = llvm::IRBuilderBase::CreatePointerCast(v12 + 214, v14, v16, v49);
    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v9, v17, 0);
  }

  if (v5[505] == 1)
  {
    v18 = this + *(*this - 24);
    v19 = *(v18 + 236);
    v20 = *(v18 + 271);
    v40 = *(v18 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (v18 + 1712));
    v42 = *(v18 + 452);
    v21 = (*(*v20 + 344))(v20, &v40);
    v22 = *(this + 1151);
    v23 = *(this + *(*this - 24) + 1904);
    v24 = llvm::ConstantInt::get();
    v50 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v18 + 1712), v19, v21, v24, v49);
    v26 = *(this + *(*this - 24) + 1904);
    v27 = llvm::PointerType::get();
    v39 = 257;
    v28 = llvm::IRBuilderBase::CreatePointerCast(v18 + 214, GEP, v27, v38);
    if (v41)
    {
      llvm::MetadataTracking::untrack();
    }

    for (i = 0; i != 3; ++i)
    {
      v30 = this + *(*this - 24);
      v31 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(v30 + 238), i);
      v32 = this + *(*this - 24);
      v33 = *(v32 + 238);
      v34 = llvm::ConstantInt::get();
      v50 = 257;
      v35 = llvm::IRBuilderBase::CreateGEP((v32 + 1712), v33, v28, v34, v49);
      llvm::IRBuilderBase::CreateAlignedStore(v30 + 214, v31, v35, 0);
    }
  }

  v36 = *(this + *(*this - 24) + 1848);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserObjectShader::setupShaderInputs(llvm::Function **this)
{
  AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
  v2 = this[21];
  if (*(v2 + 9))
  {
    llvm::Function::BuildLazyArguments(this[21]);
    v4 = this[21];
    v3 = *(v2 + 11);
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(this[21]);
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 11);
  }

  for (i = *(v2 + 11) + 40 * *(v2 + 12); v3 != i; v3 += 40)
  {
    v6 = *(this[10] + *(v3 + 32));
    if (v6 && isStringMDNode(*(v6 - 8 * *(v6 + 8) + 8), "air.mesh_grid_properties"))
    {
      ChildcountGlobal = AGCLLVMUserObjectShader::getOrCreateChildcountGlobal(this);
      v8 = *(*this - 3);
      v9 = *v3;
      v12 = 257;
      llvm::IRBuilderBase::CreatePointerCast((this + v8 + 1712), ChildcountGlobal, v9, v11);
      llvm::Value::replaceAllUsesWith();
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObjectShader::getOrCreateChildcountGlobal(AGCLLVMUserObjectShader *this)
{
  result = *(this + 595);
  if (!result)
  {
    v3 = *(this + *(*this - 24) + 2040);
    v4 = llvm::User::operator new(0x58);
    v5 = *(this + *(*this - 24) + 2136);
    llvm::Constant::getNullValue(v3, v6);
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    llvm::ValueHandleBase::operator=((this + 4744), v4);
    return *(this + 595);
  }

  return result;
}

void AGCLLVMUserObjectShader::addWrapperPostfix(AGCLLVMUserObjectShader *this)
{
  v21 = *MEMORY[0x277D85DE8];
  AGCLLVMUserObjectShader::getOrCreateChildcountGlobal(this);
  v2 = *(this + *(*this - 24) + 1896);
  v19[0] = llvm::ConstantInt::get();
  v3 = *(this + *(*this - 24) + 1896);
  v19[1] = llvm::ConstantInt::get();
  AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v19, 2);
  v4 = this + *(*this - 24);
  v5 = *(v4 + 271);
  v16 = *(v4 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (v4 + 1712));
  v18 = *(v4 + 452);
  (*(*v5 + 336))(v5, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(this + *(*this - 24) + 1848);
  v7 = llvm::FunctionType::get();
  v19[0] = "agc.object.write_childcount";
  v20 = 259;
  v8 = *(this + *(*this - 24) + 2136);
  v9 = llvm::User::operator new(0x78);
  MEMORY[0x20F331170](v9, v7, 7, 0xFFFFFFFFLL, v19, v8);
  llvm::Function::addFnAttr();
  v10 = this + *(*this - 24);
  v20 = 257;
  llvm::IRBuilderBase::CreateCall((v10 + 1712), *(v9 + 24), v9, 0, 0, v19);
  v11 = this + *(*this - 24);
  v13 = *(v11 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (v11 + 1712));
  v15 = *(v11 + 452);
  v12 = *(this + *(*this - 24) + 1776);
  v19[0] = "entry";
  v20 = 259;
  operator new();
}

void AGCLLVMUserObjectShader::addInitCompilePass(AGCLLVMUserObjectShader *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShader>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGObjectShaderPass>::name()
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

  v2 = &aStringrefLlvmG_16[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGObjectShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGObjectShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x67)
  {
    v1 = v0;
  }

  else
  {
    v1 = 103;
  }

  v2 = &aStringrefLlvmG_15[v1];
  v3 = 103 - v1;
  if ((103 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 103 - v1;
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

void AGCLLVMUserObjectShader::~AGCLLVMUserObjectShader(AGCLLVMUserObjectShader *this)
{
  *this = &unk_28255AC78;
  v2 = (this + 4784);
  *(this + 598) = &unk_28255AFE0;
  *(this + 811) = &unk_28255B0F0;
  v3 = *(this + 595);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4744));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D7D0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28255AC78;
  v2 = (this + 4784);
  *(this + 598) = &unk_28255AFE0;
  *(this + 811) = &unk_28255B0F0;
  v3 = *(this + 595);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4744));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D7D0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMPassThroughObjectShader::constructReply(AGCLLVMPassThroughObjectShader *this)
{
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v2 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
  v4 = flatbuffers::FlatBufferBuilder::EndTable(v2, v3);
  v5 = this + *(*this - 24);
  v5[4358] = 1;
  v6 = *(v5 + 1082);
  v7 = *(v5 + 1080) - *(v5 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 536, 4, *(this + 25));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 536, 6, *(this + 26));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 536, 8, *(this + 27));
  LODWORD(v5) = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
  v8 = this + *(*this - 24);
  v9 = *(v8 + 1080);
  v8[4358] = 1;
  v10 = *(v8 + 1082);
  v11 = v9 - *(v8 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 4, *(this + 18));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 6, *(this + 19));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 8, *(this + 20));
  LODWORD(v8) = flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v11 + v10);
  v12 = this + *(*this - 24);
  v13 = *(v12 + 1080);
  v12[4358] = 1;
  v14 = *(v12 + 1082);
  v15 = v13 - *(v12 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v12 + 4288), 4, v5);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v12 + 4288), 6, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 8, *(this + 22));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 10, *(this + 23));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 12, *(this + 21));
  LODWORD(v5) = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v15 + v14);
  v16 = this + *(*this - 24);
  v17 = *(v16 + 1080);
  v16[4358] = 1;
  v18 = *(v16 + 1082);
  LODWORD(v12) = v17 - *(v16 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v16 + 4288), v4);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>((v16 + 4288), v5);
  v19 = *(*this - 24);
  v20 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v12 + v18);
  flatbuffers::FlatBufferBuilder::Finish((this + v19 + 4288), v20, v21);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  v22 = *this;
  v23 = this + *(*this - 24);
  v23[4454] = 1;
  v24 = *(v22 - 24);
  v25 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4384), *(v23 + 2208) - *(v23 + 2216) + *(v23 + 2212));
  flatbuffers::FlatBufferBuilder::Finish((this + v24 + 4384), v25, v26);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  v27 = (this + *(*this - 24));
  v28 = v27[104].__r_.__value_.__r.__words[2];
  if (v28)
  {
    v29 = v27[105].__r_.__value_.__r.__words[0] ? &v27[104].__r_.__value_.__r.__words[2] : &v27[128];
  }

  else
  {
    v29 = &v27[128];
  }

  v30 = (v29->__words[0] + *v29->__words[0]);
  v31 = (v30 + *(v30 - *v30 + 4));
  v32 = (v31 + *v31 + *(v31 + *v31 - *(v31 + *v31) + 8));
  if (v28)
  {
    v33 = v27 + 128;
    if (v27[105].__r_.__value_.__r.__words[0])
    {
      v33 = (v27 + 2512);
    }
  }

  else
  {
    v33 = v27 + 128;
  }

  v34 = 0;
  if (v33->__r_.__value_.__r.__words[0] && v33->__r_.__value_.__l.__size_)
  {
    v34 = (v33->__r_.__value_.__r.__words[0] + *v33->__r_.__value_.__l.__data_);
  }

  v35 = (v34 - *v34);
  if (*v35 >= 5u && (v36 = v35[2]) != 0)
  {
    v37 = (v34 + v36 + *(v34 + v36));
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v32 + *v32);
  v39 = (v37 - *v37);
  if (*v39 >= 0x3Du && (v40 = v39[30]) != 0)
  {
    v41 = *(v37 + v40);
  }

  else
  {
    v41 = 0;
  }

  if (v38 > 0x20)
  {
    return 0;
  }

  v42 = *(v27[90].__r_.__value_.__l.__size_ + 952);

  return validateUserLocalMemoryUsage(v41, v42, v27 + 69);
}

_BYTE *virtual thunk toAGCLLVMDriverShader::debugName@<X0>(AGCLLVMDriverShader *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = this + *(*this - 160) + *(*(this + *(*this - 160)) - 24);
  v4 = (*(*v3 + 48))(v3);

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

void AGCLLVMPassThroughObjectShader::getCompilationKeyDescription(AGCLLVMPassThroughObjectShader *this@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v7, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(__p, "mesh_needs_tgs");
  std::to_string(&v9, *(this + 96));
  _agcFieldString<std::string>(&v10, __p, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  _agcGroupWithHeader(a2, v7, &v10, 1);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMPassThroughObjectShader::~AGCLLVMPassThroughObjectShader(AGCLLVMPassThroughObjectShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 112));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 112));
}

void AGCLLVMPassThroughObjectShader::~AGCLLVMPassThroughObjectShader(AGCLLVMPassThroughObjectShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 112));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 112));
}

_BYTE *AGCLLVMDriverShader::debugName@<X0>(AGCLLVMDriverShader *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*(this + *(*this - 24)) + 48))(this + *(*this - 24));

  return std::string::basic_string[abi:nn200100]<0>(a2, v3);
}

void AGCLLVMUserObjectShaderBase::AGCLLVMUserObjectShaderBase(AGCLLVMUserObjectShaderBase *this, AGCLLVMCtx *a2, llvm::Module *a3, char *a4)
{
  v6 = AGCLLVMUserShader::AGCLLVMUserShader(this, a2 + 1, a3, a4, &default_cs, 0, 0);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 24)) = *(a2 + 7);
  *(this + *(*this - 24) + 1704) = *(a2 + 8);
  v8 = *(this + *(*this - 24) + 1888);
  *(this + 567) = llvm::PointerType::get();
  v9 = *(this + *(*this - 24) + 1896);
  *(this + 568) = llvm::PointerType::get();
  v10 = *(this + *(*this - 24) + 1904);
  *(this + 569) = llvm::PointerType::get();
  v11 = *(this + *(*this - 24) + 2024);
  *(this + 570) = llvm::PointerType::get();
  v12 = *(this + *(*this - 24) + 1944);
  *(this + 571) = llvm::PointerType::get();
  v13 = *(this + *(*this - 24) + 2040);
  *(this + 572) = llvm::PointerType::get();
  *(this + 4584) = xmmword_20E70C590;
  *(this + 4604) = 0u;
  *(this + 2300) = 0;
  *(this + 2310) = 0;
  *(this + 578) = 4;
  *(this + 4632) = 0u;
  *(this + 4648) = 0u;
  *(this + 4664) = 0u;
  *(this + 1170) = 1065353216;
  *(this + 586) = 4;
  *(this + 4696) = 0u;
  *(this + 589) = 4;
  *(this + 295) = 0u;
  Operand = llvm::NamedMDNode::getOperand(*(this + 7));
  v20 = 3;
  if (*(Operand + 8) >= 4u)
  {
    v15 = Operand;
    do
    {
      v16 = parseMDUint3(v15, "air.work_group_size", &v20, this + 1152);
      v17 = v20;
      if ((v16 & 1) == 0)
      {
        v18 = *(v15 - 8 * *(v15 + 8) + 8 * v20);
        v19 = *v18;
        if (v19 <= 0x22 && ((0x7FFFFFFF0uLL >> v19) & 1) != 0 && (v22 = 0, *(v18 + 2)))
        {
          while (1)
          {
            v21 = 0;
            if (parseMDInt("air.max_work_group_size", v18, &v22, &v21))
            {
              break;
            }

            if (++v22 >= *(v18 + 2))
            {
              goto LABEL_9;
            }
          }

          v20 = ++v17;
          *(this + 1146) = v21;
        }

        else
        {
LABEL_9:
          v20 = ++v17;
        }
      }
    }

    while (v17 < *(v15 + 8));
  }
}

uint64_t AGCLLVMUserObjectShaderBase::getVertexAmpId(int8x8_t *this)
{
  if (this[577].i8[5] == 1)
  {
    EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(this);
    result = *(EmulationStateCacheForCurrentFunction + 2);
    if (!result)
    {
      v4 = this + *(*this - 24);
      v24 = *(v4 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (v4 + 1712));
      v26 = *(v4 + 452);
      v5 = this + *(*this - 24);
      v6 = *(*(*(v5 + 220) + 56) + 80);
      if (v6)
      {
        v7 = (v6 - 24);
      }

      else
      {
        v7 = 0;
      }

      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v7);
      llvm::IRBuilderBase::SetInsertPoint((v5 + 1712), v7, FirstInsertionPt);
      VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(this);
      v9 = this + *(*this - 24);
      v10 = *(v9 + 271);
      v11 = *(v10 + 1600);
      if (v11)
      {
        v12 = strlen(*(v10 + 1600));
      }

      else
      {
        v12 = 0;
      }

      v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v9 + 1704), v11, v12, *(v9 + 238), *(v9 + 238));
      v15 = this + *(*this - 24);
      v22 = 257;
      v16 = llvm::IRBuilderBase::CreateCall((v15 + 1712), *(v14 + 24), v14, &VertexAmpCount, 1, v21);
      llvm::ValueHandleBase::operator=(EmulationStateCacheForCurrentFunction, v16);
      v17 = this + *(*this - 24);
      v18 = v24;
      v19 = v25;
      if (v25)
      {
        llvm::MetadataTracking::track();
      }

      v20 = v26;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v18, (v17 + 1712));
      if (v19)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v25)
      {
        llvm::MetadataTracking::untrack();
      }

      return *(EmulationStateCacheForCurrentFunction + 2);
    }
  }

  else
  {
    v13 = *(&this[238] + *(*this - 24));

    return llvm::ConstantInt::get();
  }

  return result;
}

void AGCLLVMUserObjectShaderBase::mutateValueAddressSpace(AGCLLVMUserObjectShaderBase *this, llvm::Value *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  if (*(*a2 + 8) != 15)
  {
    v2 = 0;
  }

  v16 = *(v2 + 8);
  v20 = v24;
  v21 = v24;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 16;
  v23 = 0;
  if (v3)
  {
    do
    {
      v19 = v3[3];
      std::vector<llvm::User *>::push_back[abi:nn200100](&v25, &v19);
      v3 = v3[1];
    }

    while (v3);
    v3 = v25;
    v4 = v26;
    while (v3 != v4)
    {
      v6 = *--v4;
      v5 = v6;
      v26 = v4;
      if (v6)
      {
        imp = llvm::SmallPtrSetImplBase::find_imp(&v20, v5);
        if (v21 == v20)
        {
          v8 = (&v22 + 4);
        }

        else
        {
          v8 = &v22;
        }

        v9 = &v21[*v8];
        if (v9 != imp)
        {
          while (*imp >= 0xFFFFFFFFFFFFFFFELL)
          {
            if (++imp == v9)
            {
              imp = v9;
              break;
            }
          }
        }

        if (v21 == v20)
        {
          v10 = (&v22 + 4);
        }

        else
        {
          v10 = &v22;
        }

        if (&v21[*v10] == imp)
        {
          llvm::SmallPtrSetImplBase::insert_imp(&v20, v5);
          if (llvm::MemCpyInst::classof(v5))
          {
            llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v5);
            v18 = *(*this - 24);
            v11 = *(v5 - 32 * (*(v5 + 20) & 0x7FFFFFF));
            llvm::AttributeList::getParamAlignment((v5 + 64));
            v12 = *(v5 - 32 * (*(v5 + 20) & 0x7FFFFFF) + 32);
            llvm::AttributeList::getParamAlignment((v5 + 64));
            v13 = *(v5 - 32 * (*(v5 + 20) & 0x7FFFFFF) + 64);
            llvm::IRBuilderBase::CreateMemTransferInst();
            llvm::Instruction::eraseFromParent(v5);
          }

          else if (*(*v5 + 8) == 15 && (*(*v5 + 8) ^ v16) <= 0xFF)
          {
            *v5 = llvm::PointerType::getWithSamePointeeType(*v5, 1);
            v14 = *(v5 + 8);
            if (v14)
            {
              do
              {
                v19 = *(v14 + 24);
                std::vector<llvm::User *>::push_back[abi:nn200100](&v25, &v19);
                v14 = *(v14 + 8);
              }

              while (v14);
              v3 = v25;
              v4 = v26;
            }
          }
        }
      }
    }
  }

  *a2 = llvm::PointerType::getWithSamePointeeType(*a2, 1);
  if (v21 != v20)
  {
    free(v21);
  }

  if (v3)
  {
    v26 = v3;
    operator delete(v3);
  }
}

void std::vector<llvm::User *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

BOOL llvm::MemCpyInst::classof(uint64_t a1)
{
  if (*(a1 + 16) != 84)
  {
    return 0;
  }

  v1 = *(a1 - 32);
  if (!v1 || *(v1 + 16) || *(v1 + 24) != *(a1 + 72) || (*(v1 + 33) & 0x20) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 36);
  return v3 == 194 || v3 == 196;
}

uint64_t llvm::PointerType::getWithSamePointeeType(llvm::PointerType **this, llvm::PointerType *a2)
{
  if (!this[3])
  {
    return llvm::PointerType::get(*this, a2);
  }

  v2 = this[3];
  return llvm::PointerType::get();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(AGCLLVMUserObjectShaderBase *this, int a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  v8 = 0;
  *v3 = 0u;
  *__p = 0u;
  v5 = 1065353216;
  operator new();
}

uint64_t std::__function::__value_func<llvm::Type * ()(llvm::Type *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<llvm::Type * ()(llvm::Type *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(v3);
}

uint64_t std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::~StringMap(v3);
}

uint64_t llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          llvm::deallocate_buffer(v5, (*v5 + 9));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3>,llvm::Type * ()(llvm::Type *)>::operator()(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(v2 + 8);
  switch(v3)
  {
    case 14:
      v7 = a1[3];
      v9 = v2;
      v5 = *(v7 + 24);
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_12:
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3>,llvm::Type * ()(llvm::Type *)>::destroy_deallocate(v8);
      return;
    case 16:
      v6 = *(a1[2] + 24);

      std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(v6, v2);
      break;
    case 15:
      v4 = a1[1];
      v9 = v2;
      v5 = *(v4 + 24);
      if (v5)
      {
LABEL_5:
        (*(*v5 + 48))(v5, &v9);
        return;
      }

      goto LABEL_12;
  }
}

__n128 std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3>,llvm::Type * ()(llvm::Type *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28255C448;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2>,llvm::PointerType * ()(llvm::PointerType *)>::operator()(uint64_t a1, llvm::Type **a2)
{
  v3 = *a2;
  v4 = *(*a2 + 2);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(v3 + 2) + 8);
  }

  v5 = v4 >> 8;
  if (llvm::Type::isOpaquePointerTy(*a2))
  {
    if (v5 == **(a1 + 8))
    {
      v6 = **(a1 + 16);

      return llvm::PointerType::getWithSamePointeeType(v3, v6);
    }

    return v3;
  }

  v8 = std::function<llvm::Type * ()(llvm::Type *)>::operator()(*(*(a1 + 24) + 24), **(v3 + 2));
  if (v5 == **(a1 + 8))
  {
    v9 = **(a1 + 16);
  }

  else if (!v8)
  {
    return 0;
  }

  return llvm::PointerType::get();
}

__n128 std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2>,llvm::PointerType * ()(llvm::PointerType *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28255C400;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1>,llvm::FunctionType * ()(llvm::FunctionType *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v16[0] = v17;
  v16[1] = 0x800000000;
  v4 = *(v3 + 16);
  v5 = *v4;
  v6 = *(v3 + 12);
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = v4 + 1;
    v9 = 8 * v6 - 8;
    do
    {
      v10 = std::function<llvm::Type * ()(llvm::Type *)>::operator()(*(*(a1 + 8) + 24), *v8);
      if (v10)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, v10);
        v7 = 1;
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, *v8);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  v11 = std::function<llvm::Type * ()(llvm::Type *)>::operator()(*(*(a1 + 8) + 24), v5);
  if (v11 || (v7 & 1) != 0)
  {
    v13 = *(v3 + 8);
    v12 = llvm::FunctionType::get();
  }

  else
  {
    v12 = 0;
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1>,llvm::FunctionType * ()(llvm::FunctionType *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28255C3B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0>,llvm::StructType * ()(llvm::StructType *)>::operator()(uint64_t a1, unint64_t *a2)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v33 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  v6 = v5[1];
  if (v6)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v6);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      if (v9 >= *&v6)
      {
        v11 = v9 % *&v6;
      }
    }

    else
    {
      v11 = v9 & (*&v6 - 1);
    }

    v12 = *(*v5 + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == v3)
          {
            v34[0] = &v33;
            v26 = std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v5, v3)[3];
            goto LABEL_46;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v6)
            {
              v14 %= *&v6;
            }
          }

          else
          {
            v14 &= *&v6 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  if ((*(v3 + 9) & 1) == 0)
  {
    v34[0] = &v33;
    v26 = 0;
    std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v5, v3)[3] = 0;
    goto LABEL_46;
  }

  v34[0] = v35;
  v34[1] = 0x800000000;
  v15 = *(v3 + 12);
  if (!v15)
  {
LABEL_38:
    __p[0] = &v33;
    v26 = 0;
    std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v5, v3)[3] = 0;
    goto LABEL_44;
  }

  v16 = 0;
  v17 = *(v3 + 16);
  v18 = &v17[v15];
  do
  {
    while (1)
    {
      v19 = *v17;
      v20 = *(*v17 + 2);
      if (v20 == 16)
      {
        break;
      }

      if (v20 != 15)
      {
        goto LABEL_31;
      }

      if ((v20 & 0xFE) == 0x12)
      {
        v20 = *(*v19[2] + 8);
      }

      if (**(a1 + 16) != v20 >> 8)
      {
        goto LABEL_31;
      }

      v21 = llvm::PointerType::getWithSamePointeeType(*v17, **(a1 + 24));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v34, v21);
      ++v17;
      v16 = 1;
      if (v17 == v18)
      {
        goto LABEL_33;
      }
    }

    v19 = std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(*(*(a1 + 32) + 24), v19);
    v22 = v19 != 0;
    if (!v19)
    {
      v19 = *v17;
    }

    v16 |= v22;
LABEL_31:
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v34, v19);
    ++v17;
  }

  while (v17 != v18);
  if ((v16 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v3 = v33;
    goto LABEL_38;
  }

LABEL_33:
  if ((*(v33 + 9) & 4) != 0 || !*(v33 + 3))
  {
    v25 = *(v4 + *(*v4 - 24) + 1776);
    v26 = llvm::StructType::get();
  }

  else
  {
    Name = llvm::StructType::getName(v33);
    if (Name)
    {
      std::string::basic_string[abi:nn200100](__p, Name, v24);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v32 = 0;
    }

    llvm::StructType::setName();
    v27 = *(v4 + *(*v4 - 24) + 1776);
    v26 = llvm::StructType::create();
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v28 = *(a1 + 8);
  __p[0] = &v33;
  std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v28, v33)[3] = v26;
LABEL_44:
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

LABEL_46:
  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

void *std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0>,llvm::StructType * ()(llvm::StructType *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28255C370;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void AGCLLVMUserObjectShaderBase::replaceEmulatedPayloadBufferAccesses(AGCLLVMUserObjectShaderBase *this, llvm::PointerType ***a2, llvm::Value *a3)
{
  v6 = this + *(*this - 24);
  v7 = *(v6 + 236);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v6 + 1704));
  v9 = this + *(*this - 24);
  v10 = *(v9 + 236);
  v29 = 257;
  v11 = llvm::IRBuilderBase::CreateCall((v9 + 1712), *(inserted + 24), inserted, 0, 0, v28);
  v12 = this + *(*this - 24);
  v13 = *(this + 1148);
  v14 = *(v12 + 238);
  v15 = llvm::ConstantInt::get();
  v27 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v12 + 1712), v15, a3, v26);
  v25 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v9 + 1712), v10, v11, Mul, v24);
  if (*(this + 4601) == 1)
  {
    v18 = (this + *(*this - 24));
    v19 = v18[236];
    v20 = v18[238];
    v21 = llvm::ConstantInt::get();
    v29 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v18 + 214), v19, GEP, v21, v28);
  }

  v22 = (this + *(*this - 24));
  v23 = llvm::PointerType::getWithSamePointeeType(*a2, 1);
  v29 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v22 + 214, GEP, v23, v28);
  AGCLLVMUserObjectShaderBase::mutateValueAddressSpace(this, a2);
  llvm::Value::replaceAllUsesWith();
  AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(this, 6, 1);
}

uint64_t AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v18 = 0;
  v7 = *(result + 8);
  if (!v7)
  {
    v15 = 0;
LABEL_19:
    a3 = a4;
    goto LABEL_20;
  }

  v9 = result;
  v17 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 10;
  do
  {
    result = isStringMDNode(*(v9 - 8 * v7 + 8 * v11), "air.shared");
    if (result)
    {
      v10 = 1;
    }

    else if (isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8 * v11), "air.arg_type_name"))
    {
      String = llvm::MDString::getString(*(v9 - 8 * *(v9 + 8) + 8 * ++v11));
      result = AGCLLVMBuilder::getComponentType(String, v14, &v18);
      v12 = result;
    }

    else
    {
      result = isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8 * v11), "air.primitive_culled");
      if (result)
      {
        return result;
      }
    }

    ++v11;
    v7 = *(v9 + 8);
  }

  while (v11 < v7);
  if (v12 <= 9)
  {
    if (((1 << v12) & 0x89) != 0)
    {
      v7 = v18;
      v15 = 4 * v18;
      goto LABEL_18;
    }

    if (((1 << v12) & 0x112) != 0)
    {
      v7 = v18;
      v15 = 2 * v18;
      goto LABEL_18;
    }

    if (((1 << v12) & 0x224) != 0)
    {
      v15 = v18;
      v7 = v18;
      goto LABEL_18;
    }
  }

  v15 = 0;
  v7 = v18;
LABEL_18:
  a4 = v17;
  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v16 = (*(a3 + 4 * a2) + v15);
  *(a3 + 4 * a2) = v16 + v15 + ~((v16 - 1) % v15);
  *a5 += v7;
  return result;
}

BOOL AGCLLVMUserObjectShaderSW::constructReply(AGCLLVMUserObjectShaderSW *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = this + *(*this - 24);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 4, *(this + 1152));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 6, *(this + 1153));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 536, 8, *(this + 1154));
    LODWORD(v4) = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    v7 = this + *(*this - 24);
    v8 = *(v7 + 1080);
    v7[4358] = 1;
    v9 = *(v7 + 1082);
    v10 = v8 - *(v7 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 4, *(this + 1270));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 6, *(this + 1270));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 536, 8, *(this + 1270));
    LODWORD(v7) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v10 + v9);
    v11 = this + *(*this - 24);
    v12 = *(v11 + 1080);
    v11[4358] = 1;
    v13 = *(v11 + 1082);
    v14 = v12 - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 4, v4);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 6, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 536, 8, *(this + 1148));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 536, 10, *(this + 1149));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 536, 12, *(this + 1146));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v11 + 536, 14, *(this + 12), 0);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v14 + v13);
    v16 = this + *(*this - 24);
    v17 = *(*(v16 + 271) + 960);
    v16[4358] = 1;
    v18 = *(v16 + 1080);
    v19 = *(v16 + 1084);
    v20 = *(v16 + 1082);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v16 + 536, 12, v17);
    if (v16[4368] == 1)
    {
      v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 14, v21);
    }

    v22 = v18 - v19;
    v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 10, v23);
    if (v16[4368] == 1)
    {
      v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 8, v24);
      if (v16[4368])
      {
        v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 6, v25);
      }
    }

    v26 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v22 + v20);
    v27 = this + *(*this - 24);
    v27[4358] = 1;
    v28 = flatbuffers::FlatBufferBuilder::EndTable((v27 + 4288), *(v27 + 2160) - *(v27 + 2168) + *(v27 + 1082));
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v28, v29);
    v30 = this + *(*this - 24);
    v30[4454] = 1;
    v31 = *(v30 + 1106);
    v32 = *(v30 + 1104) - *(v30 + 1108);
    if (v30[4464] == 1)
    {
      v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v30 + 4384), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v30 + 548, 4, v33);
      if (v30[4464])
      {
        v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v30 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v30 + 548, 6, v34);
      }
    }

    v35 = flatbuffers::FlatBufferBuilder::EndTable((v30 + 4384), v32 + v31);
    v36 = this + *(*this - 24);
    v36[4358] = 1;
    v37 = *(v36 + 1082);
    v38 = *(v36 + 1080) - *(v36 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v36 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>((v36 + 4288), v15);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v36 + 4288), v26);
    v39 = *(*this - 24);
    v40 = flatbuffers::FlatBufferBuilder::EndTable((v36 + 4288), v38 + v37);
    flatbuffers::FlatBufferBuilder::Finish((this + v39 + 4288), v40, v41);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v42 = this + *(*this - 24);
    v42[4454] = 1;
    v43 = *(v42 + 1106);
    v44 = *(v42 + 1104) - *(v42 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v42 + 4384), v35);
    v45 = *(*this - 24);
    v46 = flatbuffers::FlatBufferBuilder::EndTable((v42 + 4384), v44 + v43);
    flatbuffers::FlatBufferBuilder::Finish((this + v45 + 4384), v46, v47);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));

    return AGCLLVMUserObjectShaderBase::validateReply(this);
  }

  return result;
}

void AGCLLVMUserObjectShaderSW::getCompilationKeyDescription(AGCLLVMUserObjectShaderSW *this@<X0>, std::string *a2@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(&v55, "AGCObjectContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v53, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v56);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v56.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v56.__r_.__value_.__r + *(v56.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v56.__r_.__value_.__r + *(v56.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v69, v53, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v56.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v56.__r_.__value_.__r.__words + *(v56.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v56.__r_.__value_.__r.__words[2] = v6;
  v57 = MEMORY[0x277D82878] + 16;
  if (v59 < 0)
  {
    operator delete(v58[7].__locale_);
  }

  v57 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v58);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v60);
  std::string::basic_string[abi:nn200100]<0>(v51, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v70, v51, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(v49, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v71, v49, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v47, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v72, v47, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v45, "customBorderColor");
  _agcFieldString<unsigned int>(&v73, v45, v3[2] & 1);
  std::string::basic_string[abi:nn200100]<0>(v43, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v74, v43, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v41, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v75, v41, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v39, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v76, v39, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v37, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v77, v37, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v35, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v78, v35, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v33, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v79, &v33, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v31, "enableStackShadow");
  _agcFieldString<unsigned int>(&v80, v31, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v29, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v81, v29, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v27, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v82, v27, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v25, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v83, v25, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v23, "meshNeedsTGCounts");
  _agcFieldString<unsigned int>(&v84, v23, (*(v3 + 4) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "meshNeedsOSGridPosition");
  _agcFieldString<unsigned int>(&v85, v21, (*(v3 + 4) >> 2) & 1);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v55;
  }

  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v67, 0);
  std::string::basic_string[abi:nn200100]<0>(v62, "{");
  _agcIndentedLine(&v64, v62, 0);
  if ((v66 & 0x80u) == 0)
  {
    v7 = &v64;
  }

  else
  {
    v7 = v64;
  }

  if ((v66 & 0x80u) == 0)
  {
    v8 = v66;
  }

  else
  {
    v8 = v65;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v66 < 0)
  {
    operator delete(v64);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 51; i += 3)
  {
    v12 = &v69 + i * 8;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[i + 2]) < 0)
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
      std::string::__init_copy_ctor_external(&v61, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v61 = __p;
    }

    _agcIndentedLine(&v64, &v61, 1);
    if ((v66 & 0x80u) == 0)
    {
      v14 = &v64;
    }

    else
    {
      v14 = v64;
    }

    if ((v66 & 0x80u) == 0)
    {
      v15 = v66;
    }

    else
    {
      v15 = v65;
    }

    std::string::append(&v56, v14, v15);
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
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

  std::string::basic_string[abi:nn200100]<0>(&v64, "}");
  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v64, 0);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v56;
  }

  else
  {
    v16 = v56.__r_.__value_.__r.__words[0];
  }

  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v56.__r_.__value_.__l.__size_;
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

  if (v66 < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v19 = 51;
  do
  {
    if (v69.__r_.__value_.__s.__data_[v19 * 8 - 1] < 0)
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
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33);
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

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMUserObjectShaderSW::~AGCLLVMUserObjectShaderSW(AGCLLVMUserObjectShaderSW *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255C548;
  v1[637] = &unk_28255C8B0;
  v1[850] = &unk_28255C9C0;
  v2 = v1[634];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 632));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v1 + 593));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, off_28255C9D0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 637));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255C548;
  v1[637] = &unk_28255C8B0;
  v1[850] = &unk_28255C9C0;
  v2 = v1[634];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 632));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v1 + 593));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, off_28255C9D0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 637));
}

void AGCLLVMUserObjectShaderSW::replacePayloadBufferAccesses(AGCLLVMUserObjectShaderSW *this, llvm::PointerType ***a2)
{
  v4 = this + *(*this - 24);
  v5 = *(v4 + 238);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v4 + 1704));
  v7 = this + *(*this - 24);
  v10 = 257;
  v8 = llvm::IRBuilderBase::CreateCall((v7 + 1712), *(inserted + 24), inserted, 0, 0, v9);
  AGCLLVMUserObjectShaderBase::replaceEmulatedPayloadBufferAccesses(this, a2, v8);
}

uint64_t AGCLLVMUserObjectShaderSW::buildNumGroups(AGCLLVMUserObjectShaderSW *this, llvm::Type *a2, int a3)
{
  v6 = (*(*this + 512))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v16 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v15);
  v10 = llvm::ConstantInt::get();
  v14[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v10, v14);
  v12 = this + *(*this - 24);
  v16 = 257;
  return llvm::IRBuilderBase::CreateUDiv((v12 + 1712), Sub, v7, v15);
}

uint64_t AGCLLVMUserObjectShaderSW::buildGlobalSize(llvm::Type ***this, llvm::Type *a2)
{
  if (!this[562])
  {
    v4 = *(*(*this - 3) + this + 1904);
    v5 = llvm::PointerType::get();
    v6 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 464))();
    v38[0] = "agc.indirect_wg_size_buffer_pointer.";
    v39 = v6;
    v40 = 2051;
    v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 464))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v5, v38, v7, 12, 5, 0);
    llvm::ValueHandleBase::operator=((this + 560), GlobalBufferBinding);
  }

  v9 = *(*this - 3) + this;
  v10 = this[562];
  v40 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), v10, v38);
  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v40 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v38);
  v16 = *(*this - 3) + this;
  v40 = 257;
  v17 = AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v38);
  v37 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 38, v17, a2, v36);
  if (!this[565])
  {
    v19 = *(*(*this - 3) + this + 1904);
    v20 = llvm::PointerType::get();
    v21 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v38[0] = "agc.indirect_wg_count_buffer_pointer.";
    v39 = v21;
    v40 = 2051;
    v22 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v23 = AGCLLVMUserObject::createGlobalBufferBinding(this, v20, v38, v22, 12, 5, 0);
    llvm::ValueHandleBase::operator=((this + 563), v23);
  }

  v24 = *(*this - 3) + this;
  v25 = this[565];
  v40 = 257;
  v26 = AGCLLVMBuilder::CreateLoad((v24 + 1704), v25, v38);
  v27 = *(*this - 3) + this;
  v28 = *(v27 + 238);
  v29 = llvm::ConstantInt::get();
  v40 = 257;
  v30 = llvm::IRBuilderBase::CreateGEP((v27 + 1712), v28, v26, v29, v38);
  v31 = *(*this - 3) + this;
  v40 = 257;
  v32 = AGCLLVMBuilder::CreateLoad((v31 + 1704), v30, v38);
  v37 = 257;
  v33 = llvm::IRBuilderBase::CreateCast((v31 + 1712), 38, v32, a2, v36);
  v34 = *(*this - 3) + this;
  v40 = 257;
  return llvm::IRBuilderBase::CreateMul((v34 + 1712), Cast, v33, v38);
}

uint64_t AGCLLVMUserObjectShaderSW::replacePreRuntimeLinkBuiltins(AGCLLVMUserObjectShaderSW *this)
{
  v14[42] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v10, *v2);
  v14[41] = this;
  v10 = &unk_28255D760;
  v14[37] = v2;
  v5 = 1;
  v6 = AGCLLVMUserObjectShaderSW::buildSetMeshGridProperties;
  v7 = 0;
  v8 = 5;
  v9 = 0;
  AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderSW>::doReplacement(&v10, "air.set_threadgroups_per_grid_mesh_properties", 45, &v5);
  v5 = 1;
  v6 = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID;
  v7 = 0;
  v8 = 1;
  v9 = 0;
  AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderSW>::doReplacement(&v10, "agc.gpe.get_payload_id", 22, &v5);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v14);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v13);
  if (v11 != &v12)
  {
    free(v11);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderSW>::doReplacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        v14 = *(a1 + 464) + *(**(a1 + 464) - 24);
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

          v45 = *(a1 + 464) + *(**(a1 + 464) - 24);
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
          v81 = *(a1 + 464) + *(**(a1 + 464) - 24);
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

uint64_t AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(int8x8_t *this)
{
  EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(this);
  v3 = EmulationStateCacheForCurrentFunction[38];
  if (!v3)
  {
    v4 = EmulationStateCacheForCurrentFunction;
    v5 = this + *(*this - 24);
    v34 = *(v5 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (v5 + 1712));
    v36 = *(v5 + 452);
    v6 = this + *(*this - 24);
    v7 = *(*(*(v6 + 220) + 56) + 80);
    if (v7)
    {
      v8 = (v7 - 24);
    }

    else
    {
      v8 = 0;
    }

    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
    if (FirstInsertionPt)
    {
      v10 = (FirstInsertionPt - 24);
    }

    else
    {
      v10 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((v6 + 1712), v10);
    v11 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 0);
    v12 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 1);
    v13 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 0);
    v14 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 1);
    v15 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 2);
    v16 = this + *(*this - 24);
    v33 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v16 + 1712), v15, v12, v32);
    v31 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v16 + 1712), Mul, v14, v30);
    v29 = 257;
    v19 = llvm::IRBuilderBase::CreateMul((v16 + 1712), Add, v11, v28);
    v27 = 257;
    v20 = llvm::IRBuilderBase::CreateAdd((v16 + 1712), v19, v13, v26);
    llvm::ValueHandleBase::operator=((v4 + 36), v20);
    v21 = this + *(*this - 24);
    v23 = v34;
    v24 = v35;
    if (v35)
    {
      llvm::MetadataTracking::track();
    }

    v25 = v36;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v23, (v21 + 1712));
    if (v24)
    {
      llvm::MetadataTracking::untrack();
    }

    v3 = v4[38];
    if (v35)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v3;
}

uint64_t AGCLLVMUserObjectShaderSW::buildSetMeshGridProperties(int8x8_t *this, llvm::Value *a2, llvm::Value *a3)
{
  if (this[575].i8[1])
  {
    EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 2, 0);
    v7 = v6;
    v8 = this + *(*this - 24);
    v9 = this[574].u32[0];
    v10 = *(v8 + 238);
    v11 = llvm::ConstantInt::get();
    LinearThreadgroupID = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(this);
    v75 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v8 + 1712), v11, LinearThreadgroupID, v74);
    v73 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v8 + 1712), v7, EmulationStateBuffer, Mul, v72);
    v15 = this + *(*this - 24);
    v16 = *(v15 + 238);
    v17 = llvm::PointerType::get();
    v75 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, GEP, v17, v74);
    for (i = 0; i != 3; ++i)
    {
      v20 = this + *(*this - 24);
      v21 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(v20 + 238), i);
      v22 = this + *(*this - 24);
      v23 = *(v22 + 238);
      v24 = llvm::ConstantInt::get();
      v75 = 257;
      v25 = llvm::IRBuilderBase::CreateGEP((v22 + 1712), v23, PointerCast, v24, v74);
      llvm::IRBuilderBase::CreateAlignedStore(v20 + 214, v21, v25, 0);
    }
  }

  v26 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 0, 0);
  v28 = v27;
  v29 = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(this);
  v30 = this + *(*this - 24);
  v75 = 257;
  v31 = *(v30 + 238);
  v32 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v30 + 1712), a3, v32, v74);
  v73 = 257;
  v34 = *Element;
  v35 = llvm::ConstantInt::get();
  v36 = llvm::IRBuilderBase::CreateAnd((v30 + 1712), Element, v35, v72);
  v37 = this + *(*this - 24);
  v75 = 257;
  v38 = *(v37 + 238);
  v39 = llvm::ConstantInt::get();
  v40 = llvm::IRBuilderBase::CreateExtractElement((v37 + 1712), a3, v39, v74);
  v73 = 257;
  v41 = *v40;
  v42 = llvm::ConstantInt::get();
  v43 = llvm::IRBuilderBase::CreateAnd((v37 + 1712), v40, v42, v72);
  v44 = *(&this[238] + *(*this - 24));
  v45 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((v37 + 1712), v43, v45, v70);
  v47 = this + *(*this - 24);
  v75 = 257;
  v48 = *(v47 + 238);
  v49 = llvm::ConstantInt::get();
  v50 = llvm::IRBuilderBase::CreateExtractElement((v47 + 1712), a3, v49, v74);
  v51 = *(&this[238] + *(*this - 24));
  v52 = llvm::ConstantInt::get();
  v53 = AGCLLVMBuilder::buildICmpSel(v47 + 213, v50, v52, 34);
  v54 = *(&this[238] + *(*this - 24));
  v55 = llvm::ConstantInt::get();
  v73 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v47 + 1712), v53, v55, v72);
  v71 = 257;
  v57 = *Sub;
  v58 = llvm::ConstantInt::get();
  v59 = llvm::IRBuilderBase::CreateAnd((v47 + 1712), Sub, v58, v70);
  v60 = this + *(*this - 24);
  v61 = *(v60 + 238);
  v62 = llvm::ConstantInt::get();
  v75 = 257;
  v63 = llvm::IRBuilderBase::CreateShl((v60 + 1712), v59, v62, v74);
  v64 = (this + *(*this - 24));
  v75 = 257;
  v65 = llvm::IRBuilderBase::CreateOr((v64 + 214), v36, Shl, v74);
  v73 = 257;
  v66 = llvm::IRBuilderBase::CreateOr((v64 + 214), v65, v63, v72);
  v67 = this + *(*this - 24);
  v71 = 257;
  v68 = llvm::IRBuilderBase::CreateGEP((v67 + 1712), v28, v26, v29, v70);
  return llvm::IRBuilderBase::CreateAlignedStore(v64 + 214, v66, v68, 0);
}

uint64_t AGCLLVMUserObjectShaderSW::setupShaderInputs(llvm::Function **this)
{
  AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
  v2 = this[21];
  if (*(v2 + 9))
  {
    llvm::Function::BuildLazyArguments(this[21]);
    v4 = this[21];
    v3 = *(v2 + 11);
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(this[21]);
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 11);
  }

  v5 = *(v2 + 11) + 40 * *(v2 + 12);
  if (v3 != v5)
  {
    v6 = (this + 214);
    v7 = (this + 255);
    v8 = 0x72705F646972675FLL;
    v9 = 0x736569747265706FLL;
    do
    {
      v10 = *(this[10] + *(v3 + 32));
      if (v10)
      {
        v11 = *(v10 - 8 * *(v10 + 8) + 8);
        if (!*v11)
        {
          String = llvm::MDString::getString(v11);
          if (v13 == 24)
          {
            v14 = *String == 0x6873656D2E726961 && String[1] == v8;
            if (v14 && String[2] == v9)
            {
              v16 = this[634];
              if (!v16)
              {
                v27 = v6;
                v17 = *&v7[*(*this - 3)];
                v29 = "agc.ms_childcount";
                v30 = 259;
                v28 = v7;
                v18 = llvm::User::operator new(0x58);
                v19 = v9;
                v20 = v8;
                v21 = *(this + *(*this - 3) + 2136);
                llvm::Constant::getNullValue(v17, v22);
                v8 = v20;
                v9 = v19;
                v6 = v27;
                llvm::GlobalVariable::GlobalVariable();
                llvm::GlobalObject::setSection();
                v23 = v18;
                v7 = v28;
                llvm::ValueHandleBase::operator=((this + 632), v23);
                v16 = this[634];
              }

              v24 = *(*this - 3);
              v25 = *v3;
              v30 = 257;
              llvm::IRBuilderBase::CreatePointerCast(&v6[v24], v16, v25, &v29);
              llvm::Value::replaceAllUsesWith();
            }
          }
        }
      }

      v3 += 40;
    }

    while (v3 != v5);
  }

  return 1;
}

uint64_t AGCLLVMUserObjectShaderSW::wrapperPrefixData(AGCLLVMUserObjectShaderSW *this)
{
  v1 = this + *(*this - 24);
  v2 = *(*(*(v1 + 271) + 912) + 60);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 236);
  v4 = llvm::ConstantInt::get();

  return MEMORY[0x2821F23D8](v2, v4);
}

uint64_t AGCLLVMUserObjectShaderSW::addWrapperPrefix(int8x8_t *this)
{
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 0, 1);
  v4 = v3;
  LinearThreadgroupID = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(this);
  v6 = this + *(*this - 24);
  v7 = *(v6 + 238);
  v8 = llvm::ConstantInt::get();
  v9 = this + *(*this - 24);
  v13 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v9 + 1712), v4, EmulationStateBuffer, LinearThreadgroupID, v12);
  llvm::IRBuilderBase::CreateAlignedStore(v6 + 214, v8, GEP, 0);
  AGCLLVMTargetBuilder::CreateBarrier((&this[213] + *(*this - 24)));
  return 1;
}

void AGCLLVMUserObjectShaderSW::addInitCompilePass(AGCLLVMUserObjectShaderSW *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderSW>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGObjectSWShaderPass>::name()
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

  v2 = &aStringrefLlvmG_18[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGObjectSWShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGObjectSWShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderSW>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_17[v1];
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

void AGCLLVMUserObjectShaderSW::~AGCLLVMUserObjectShaderSW(AGCLLVMUserObjectShaderSW *this)
{
  *this = &unk_28255C548;
  v2 = (this + 5096);
  *(this + 637) = &unk_28255C8B0;
  *(this + 850) = &unk_28255C9C0;
  v3 = *(this + 634);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 5056));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((this + 4744));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, off_28255C9D0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28255C548;
  v2 = (this + 5096);
  *(this + 637) = &unk_28255C8B0;
  *(this + 850) = &unk_28255C9C0;
  v3 = *(this + 634);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 5056));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((this + 4744));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, off_28255C9D0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLPostTessellationInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 16, v4);
  }

  return result;
}

uint64_t AGCLLVMBuilder::CreateLoad(unsigned int **this, llvm::Type *a2, llvm::Type **a3, const char *a4)
{
  llvm::Type::isOpaquePointerTy(*a3);
  v8 = 1;
  v12 = 1;
  if (*a4)
  {
    v10 = a4;
    v8 = 3;
  }

  v11 = v8;
  return llvm::IRBuilderBase::CreateAlignedLoad(this + 1, a2, a3, 0, &v10);
}

uint64_t llvm::IRBuilderBase::CreateXor(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = llvm::IRBuilderBase::foldConstant(this, 30, a2, a3, a4);
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x20F331D00](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

BOOL AGCLLVMAGPVertexShaderAnalysis::constructReply(AGCLLVMAGPVertexShaderAnalysis *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    GenericVaryingAllocator::serialize((this + 4536), (this + *(*this - 24) + 4288));
    v16 = 0;
    VaryingSignature = GenericVaryingAllocator::getVaryingSignature(this + 4536, (this + *(*this - 24) + 4288), &v16 + 1, &v16);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    if (VaryingSignature)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v6 + 4288), 10, HIDWORD(v16));
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v6 + 4288), 12, v16);
    }

    v9 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    v10 = this + *(*this - 24);
    v10[4358] = 1;
    v11 = *(v10 + 1082);
    v12 = *(v10 + 1080) - *(v10 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v10 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v10 + 4288), v4);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((v10 + 4288), v9);
    v13 = *(*this - 24);
    v14 = flatbuffers::FlatBufferBuilder::EndTable((v10 + 4288), v12 + v11);
    flatbuffers::FlatBufferBuilder::Finish((this + v13 + 4288), v14, v15);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));

    return AGCLLVMAGPVertexShader::validateReply(this);
  }

  return result;
}

void AGCLLVMAGPVertexShader::getCompilationKeyDescription(AGCLLVMAGPVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  std::string::basic_string[abi:nn200100]<0>(v43, "AGCVertexContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v41, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v47);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v48, "0x", 2);
  *(&v48 + *(v48 - 24) + 8) = *(&v48 + *(v48 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v53, v41, __p);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v47[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v47 + *(v47[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v48 = v6;
  v49 = MEMORY[0x277D82878] + 16;
  if (v51 < 0)
  {
    operator delete(v50[7].__locale_);
  }

  v49 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v50);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](v52);
  std::string::basic_string[abi:nn200100]<0>(v47, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v54, v47, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v55, __p, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v39, "partition_mode");
  _agcFieldString<char const*>(&v56, v39, _agcTessellationPartitionModeStrings[(v3[2] >> 8) & 3]);
  std::string::basic_string[abi:nn200100]<0>(v37, "step_function");
  _agcFieldString<char const*>(&v57, v37, _agcTessellationStepFunctionStrings[(v3[2] >> 10) & 3]);
  std::string::basic_string[abi:nn200100]<0>(v35, "vertex_amplification_mode");
  _agcFieldString<char const*>(&v58, v35, _AGCVertexAmplificationModeStrings[(v3[2] >> 12) & 3]);
  std::string::basic_string[abi:nn200100]<0>(v33, "manufactureUnlinkedVaryings");
  _agcFieldString<unsigned long long>(&v59, v33, (v3[2] >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v31, "customBorderColor");
  _agcFieldString<unsigned long long>(&v60, v31, (v3[2] >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(v29, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v61, v29, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v27, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v62, v27, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v25, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v63, v25, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v23, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v64, v23, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v65, v21, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v19, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v66, v19, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v17, "enableStackShadow");
  _agcFieldString<unsigned int>(&v67, v17, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v15, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v68, v15, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v13, "flatVaryingAnalysis");
  _agcFieldString<unsigned long long>(&v69, v13, (v3[2] >> 21) & 1);
  std::string::basic_string[abi:nn200100]<0>(v11, "positionInvariance");
  _agcFieldString<unsigned long long>(&v70, v11, (v3[2] >> 23) & 1);
  std::string::basic_string[abi:nn200100]<0>(v9, "enableFMAFold");
  _agcFieldString<unsigned long long>(&v71, v9, (v3[2] >> 24) & 1);
  _agcGroupWithHeader(a2, v43, &v53, 19);
  v7 = 456;
  do
  {
    if (v53.__r_.__value_.__s.__data_[v7 - 1] < 0)
    {
      operator delete(*&v52[v7 + 128]);
    }

    v7 -= 24;
  }

  while (v7);
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

  if (v30 < 0)
  {
    operator delete(v29[0]);
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

  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void _agcFieldString<unsigned long long>(std::string *a1, const void **a2, unint64_t __val)
{
  std::to_string(&v5, __val);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMAGPVertexShaderAnalysis::~AGCLLVMAGPVertexShaderAnalysis(AGCLLVMAGPVertexShaderAnalysis *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_282563288;
  v1[1303] = off_282563608;
  v1[1516] = &off_282563718;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_28255DCF0);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1303));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_282563288;
  v1[1303] = off_282563608;
  v1[1516] = &off_282563718;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_28255DCF0);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1303));
}

llvm::Value *AGCLLVMAGPVertexShader::getPointSize(AGCLLVMAGPVertexShader *this, llvm::Value *a2)
{
  if (!a2)
  {
    if (*(this + 9826) == 1)
    {
      v2 = *(this + *(*this - 24) + 1872);
      return llvm::ConstantFP::get();
    }

    return 0;
  }

  return a2;
}

uint64_t AGCLLVMAGPVertexShader::setupClipDistanceOutput(void *a1, llvm::Value *a2, uint64_t a3, llvm::Value **a4, _DWORD *a5)
{
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
    v26 = 0;
    v24[0] = 1;
    parseMDInt(0, a3, v24, &v26);
    v16 = *(v9 + 32);
    if (v16)
    {
      v17 = 0;
      v18 = 4 * v26;
      do
      {
        v19 = a1 + *(*a1 - 24) + 1704;
        v25 = 257;
        v20 = *(v19 + 200);
        v21 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((v19 + 8), a2, v21, v24);
        *a5 |= 1 << (v18 + v17);
        a4[(v18 + v17++)] = Element;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v11 = (a1 + *(*a1 - 24));
    if (v9 == v11[78].__r_.__value_.__r.__words[0])
    {
      *a5 |= 1u;
      *a4 = a2;
    }

    else
    {
      v12 = *(v9 + 32);
      if (v12 >= 9)
      {
        std::string::append(v11 + 69, "Number of clip planes used exceeds supported maximum");
        return 0;
      }

      *a5 |= ~(-1 << v12);
      v26 = 0;
      if (v12)
      {
        do
        {
          v13 = *(*a1 - 24);
          v25 = 257;
          Value = llvm::IRBuilderBase::CreateExtractValue(a1 + v13 + 1712, a2, &v26, 1, v24);
          v15 = v26;
          a4[v26] = Value;
          v26 = v15 + 1;
        }

        while (v15 + 1 < v12);
      }
    }
  }

  return 1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x66)
  {
    v1 = v0;
  }

  else
  {
    v1 = 102;
  }

  v2 = &aStringrefLlvmG_19[v1];
  v3 = 102 - v1;
  if ((102 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 102 - v1;
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

uint64_t AGCLLVMUserVertexShader::getGenericVaryingInfo()
{
  return 0;
}

{
  return 0;
}

BOOL AGCLLVMAGPVertexShaderAnalysis::setupShaderOutputs(AGCLLVMAGPVertexShaderAnalysis *this)
{
  v57[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  v3 = *(*(llvm::Module::getFunction() + 8) + 24);
  v4 = llvm::CallBase::arg_end(v3);
  v5 = (v3 - 32 * (*(v3 + 5) & 0x7FFFFFF));
  if (((v4 - v5) & 0x1FFFFFFFE0) != 0)
  {
    v6 = *v5;
    v7 = **v5;
    if (*(v7 + 8) == 16)
    {
      v8 = *(v7 + 12);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v9 = v8;
  v56[0] = v57;
  v56[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(v56, v8, 0);
  if (v8)
  {
    if (*(v7 + 8) == 16)
    {
      AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, v6, v56);
    }

    else
    {
      *v56[0] = v6;
    }
  }

  if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
  {
    v10 = *(this + *(*this - 24) + 1696);
    v11 = (*(*this + 488))(this);
    AGCTargetPrinter::printMessage(v10, "------ Start flat varying analysis for %s shader %u  ------", v11, *(this + *(*this - 24) + 5088));
  }

  if (v8)
  {
    v12 = 0;
    v46 = this + 1696;
    v47 = this + 1704;
    v45 = v7;
    do
    {
      v13 = *(*(this + 8) - 8 * *(*(this + 8) + 8) + 8 * v12);
      String = llvm::MDString::getString(*(v13 - 8 * *(v13 + 8)));
      if (v15 == 17)
      {
        v16 = *String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865;
        if (v16 && *(String + 16) == 116)
        {
          v18 = *(v56[0] + v12);
          v19 = *(*(v7 + 16) + 8 * v12);
          if ((*(v19 + 2) & 0xFE) == 0x12)
          {
            *v50 = 0u;
            *__p = 0u;
            v20 = AGCLLVMBuilder::unboxVector(&v47[*(*this - 24)], v18, v50);
            if (v20)
            {
              v22 = 0;
              v23 = 0;
              v24 = v20;
              do
              {
                isVertexOutputUniform = AGCLLVMAGPVertexShaderAnalysis::isVertexOutputUniform(v50[v22], v21);
                v26 = 1 << v22;
                if (!isVertexOutputUniform)
                {
                  LOBYTE(v26) = 0;
                }

                v23 |= v26;
                ++v22;
              }

              while (v24 != v22);
            }

            else
            {
              v23 = 0;
            }

            v7 = v45;
          }

          else
          {
            v23 = AGCLLVMAGPVertexShaderAnalysis::isVertexOutputUniform(*(v56[0] + v12), v18);
          }

          if (v23)
          {
            v27 = llvm::MDString::getString(*(v13 - 8 * *(v13 + 8) + 8));
            v29 = v28;
            ComponentType = AGCLLVMBuilder::getComponentType(&v47[*(*this - 24)], v19, v50);
            if ((*(v19 + 2) & 0xFE) == 0x12)
            {
              v31 = *(v19 + 8);
            }

            else
            {
              v31 = 1;
            }

            v32 = *(this + 2457) + 1;
            *(this + 2457) = v32;
            v50[0] = __PAIR64__(ComponentType, v31);
            v50[1] = 0;
            *__p = v32;
            *&__p[8] = 0u;
            v52 = 0u;
            v53 = ComponentType == 1;
            v54 = 0;
            if (ComponentType == 1)
            {
              v33 = 5;
            }

            else
            {
              v33 = 1;
            }

            v55 = v33;
            if (v27)
            {
              std::string::basic_string[abi:nn200100](__dst, v27, v29);
              if (SBYTE7(v52) < 0)
              {
                operator delete(*&__p[8]);
              }
            }

            else
            {
              __dst[0] = 0;
              __dst[1] = 0;
              v49 = 0;
            }

            *&__p[8] = *__dst;
            *&v52 = v49;
            HIBYTE(v54) = v23;
            if (AGCTargetPrinter::isValidToPrintMessage(*&v46[*(*this - 24)]))
            {
              v34 = *&v46[*(*this - 24)];
              if (v27)
              {
                std::string::basic_string[abi:nn200100](__dst, v27, v29);
                v35 = __dst;
                if (v49 < 0)
                {
                  v35 = __dst[0];
                }
              }

              else
              {
                __dst[0] = 0;
                __dst[1] = 0;
                v35 = __dst;
                v49 = 0;
              }

              v36 = "x";
              v37 = &unk_20E75F419;
              if ((v23 & 1) == 0)
              {
                v36 = &unk_20E75F419;
              }

              v38 = "y";
              if ((v23 & 2) == 0)
              {
                v38 = &unk_20E75F419;
              }

              v39 = "z";
              if ((v23 & 4) == 0)
              {
                v39 = &unk_20E75F419;
              }

              if ((v23 & 8) != 0)
              {
                v37 = "w";
              }

              AGCTargetPrinter::printMessage(v34, "Promoted varying: {semantic: %s, flat_components: %s%s%s%s}", v35, v36, v38, v39, v37);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst[0]);
              }
            }

            GenericVaryingAllocator::addVarying(this + 4536, v50);
            if (SBYTE7(v52) < 0)
            {
              operator delete(*&__p[8]);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v9);
  }

  if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
  {
    v40 = *(this + *(*this - 24) + 1696);
    v41 = (*(*this + 488))(this);
    AGCTargetPrinter::printMessage(v40, "------ End flat varying analysis for %s shader %u  ------\n", v41, *(this + *(*this - 24) + 5088));
  }

  v42 = AGCLLVMAGPVertexShader::setupShaderOutputs(this);
  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

uint64_t AGCLLVMAGPVertexShaderAnalysis::isVertexOutputUniform(AGCLLVMAGPVertexShaderAnalysis *this, llvm::Value *a2)
{
  v90[20] = *MEMORY[0x277D85DE8];
  __src = this;
  v86 = 0xFFFFFFFFLL;
  v82 = this;
  v88 = v90;
  v89 = 0xA00000000;
  llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::append<std::tuple<llvm::Value *,int> const*,void>(&v88, &__src, &v87);
  __src = 0;
  v86 = 0;
  v87 = 0;
  v2 = &v82;
LABEL_2:
  *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, v2) + 8) = 255;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
              if (!v89)
              {
                v10 = 1;
                goto LABEL_168;
              }

              v3 = v88 + 16 * v89;
              v5 = *(v3 - 2);
              v4 = *(v3 - 1);
              LODWORD(v89) = v89 - 1;
              v6 = *(v5 + 16);
              if (v5)
              {
                v7 = v6 >= 0x15;
              }

              else
              {
                v7 = 1;
              }
            }

            while (!v7);
            if (v5)
            {
              v8 = v6 >= 0x1C;
            }

            else
            {
              v8 = 0;
            }

            if (!v8)
            {
              goto LABEL_167;
            }

            v9 = v6 - 59 > 0xFFFFFFED || v6 - 83 > 0xFFFFFFFD;
            if (!v9 && v6 != 62 && v6 != 85)
            {
              break;
            }

            v16 = *(v5 + 20);
            v17 = v16 & 0x7FFFFFF;
            if ((v16 & 0x7FFFFFF) != 0)
            {
              v18 = 0;
              v19 = 0;
              do
              {
                if ((v16 & 0x40000000) != 0)
                {
                  v20 = *(v5 - 8);
                }

                else
                {
                  v20 = v5 - 32 * v17;
                }

                v21 = *(v20 + v18);
                if (v21)
                {
                  v22 = v21[16] == 22;
                }

                else
                {
                  v22 = 0;
                }

                if (!v22)
                {
                  if ((*(*v21 + 8) & 0xFE) == 0x12)
                  {
                    v23 = v4;
                  }

                  else
                  {
                    v23 = -1;
                  }

                  v83 = *(v20 + v18);
                  v84 = 0;
                  if (v23 == -1)
                  {
                    v24 = 255;
                  }

                  else
                  {
                    v24 = 1 << v23;
                  }

                  v25 = __src;
                  v26 = v87;
                  v27 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v21, &v84);
                  v28 = v84;
                  if (v27)
                  {
                    v29 = v84 == (v25 + 16 * v26);
                  }

                  else
                  {
                    v29 = 1;
                  }

                  if (v29)
                  {
                    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v21, v23);
                    *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v83) + 8) = v24;
                  }

                  else if ((v24 & ~v84[2]) != 0)
                  {
                    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v21, v23);
                    v28[2] |= v24;
                  }

                  v16 = *(v5 + 20);
                }

                ++v19;
                v17 = v16 & 0x7FFFFFF;
                v18 += 32;
              }

              while (v19 < v17);
            }
          }

          if (v6 == 83)
          {
            goto LABEL_167;
          }

          if (v6 - 79 < 0xFFFFFFF3)
          {
            break;
          }

          v14 = *(v5 - 32);
          if ((*(*v14 + 8) & 0xFE) == 0x12)
          {
            if (v4 == -1)
            {
              goto LABEL_89;
            }

            if ((*(*v5 + 8) & 0xFE) == 0x12 && *(*v14 + 32) == *(*v5 + 32))
            {
              v83 = *(v5 - 32);
              v15 = 1 << v4;
              goto LABEL_90;
            }
          }

          else if (v4 == -1)
          {
LABEL_89:
            v83 = *(v5 - 32);
            v15 = 255;
            goto LABEL_90;
          }

          v83 = *(v5 - 32);
          v84 = 0;
          v39 = __src;
          v40 = v87;
          v41 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v14, &v84);
          v42 = v84;
          if (v41)
          {
            v43 = v84 == (v39 + 16 * v40);
          }

          else
          {
            v43 = 1;
          }

          if (v43)
          {
            v79 = v14;
LABEL_163:
            llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v79, 0xFFFFFFFF);
            v2 = &v83;
            goto LABEL_2;
          }

          if (*(v84 + 8) != 0xFF)
          {
            v44 = v14;
            goto LABEL_88;
          }
        }

        v10 = 0;
        if (*(v5 + 16) <= 0x59u)
        {
          break;
        }

        if (v6 == 90)
        {
          v53 = *(v5 - 32);
          if (*(v53 + 16) != 16)
          {
            v53 = 0;
          }

          if (v4 == -1 || v53 == 0)
          {
            v55 = *(v5 - 64);
            v83 = v55;
            v84 = 0;
            v56 = __src;
            v57 = v87;
            v58 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v55, &v84);
            v59 = v84;
            if (v58)
            {
              v60 = v84 == (v56 + 16 * v57);
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v55, 0xFFFFFFFF);
              *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v83) + 8) = 255;
            }

            else if (*(v84 + 8) != 0xFF)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v55, 0xFFFFFFFF);
              v59[2] |= 0xFFu;
            }

LABEL_146:
            v14 = *(v5 - 96);
LABEL_147:
            v83 = v14;
            v84 = 0;
            if (v4 == -1)
            {
              v15 = 255;
            }

            else
            {
              v15 = 1 << v4;
            }

            v76 = __src;
            v77 = v87;
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v14, &v84))
            {
              v36 = v84;
              if (v84 != (v76 + 16 * v77))
              {
                goto LABEL_152;
              }
            }

LABEL_95:
            v49 = v14;
            v50 = v4;
            goto LABEL_96;
          }

          if (*(v53 + 32) >= 0x41u)
          {
            v64 = **(v53 + 24);
          }

          else
          {
            v64 = *(v53 + 24);
          }

          if (v64 != v4)
          {
            goto LABEL_146;
          }

          v71 = *(v5 - 64);
          v83 = v71;
          v84 = 0;
          v72 = __src;
          v73 = v87;
          v74 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v71, &v84);
          v42 = v84;
          if (v74)
          {
            v75 = v84 == (v72 + 16 * v73);
          }

          else
          {
            v75 = 1;
          }

          if (v75)
          {
            v79 = v71;
            goto LABEL_163;
          }

          if (*(v84 + 8) != 0xFF)
          {
            v44 = v71;
            goto LABEL_88;
          }
        }

        else
        {
          if (v6 != 91)
          {
            goto LABEL_168;
          }

          if (v4 == -1)
          {
            v65 = *(v5 - 64);
            v83 = v65;
            v84 = 0;
            v66 = __src;
            v67 = v87;
            v68 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v65, &v84);
            v69 = v84;
            if (v68)
            {
              v70 = v84 == (v66 + 16 * v67);
            }

            else
            {
              v70 = 1;
            }

            if (v70)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v65, 0xFFFFFFFF);
              *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v83) + 8) = 255;
              v66 = __src;
              v67 = v87;
            }

            else if (*(v84 + 8) != 0xFF)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v65, 0xFFFFFFFF);
              v69[2] |= 0xFFu;
            }

            v78 = *(v5 - 32);
            v83 = v78;
            v84 = 0;
            if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(v66, v67, v78, &v84) || (v42 = v84, v84 == (v66 + 16 * v67)))
            {
              v79 = v78;
              goto LABEL_163;
            }

            if (*(v84 + 8) != 0xFF)
            {
              v44 = v78;
LABEL_88:
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v44, 0xFFFFFFFF);
              v42[2] |= 0xFFu;
            }
          }

          else
          {
            v30 = *(*(v5 + 64) + 4 * v4);
            if (v30 != -1)
            {
              v31 = *(v5 - 64);
              v32 = *(*v31 + 32);
              v7 = v30 >= v32;
              v33 = v30 - v32;
              if (v7)
              {
                v31 = *(v5 - 32);
                v30 = v33;
              }

              v83 = v31;
              v84 = 0;
              if (v30 == -1)
              {
                v15 = 255;
              }

              else
              {
                v15 = 1 << v30;
              }

              v34 = __src;
              v35 = v87;
              if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v31, &v84) || (v36 = v84, v84 == (v34 + 16 * v35)))
              {
                v49 = v31;
                v50 = v30;
LABEL_96:
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v49, v50);
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v83) + 8) = v15;
              }

              else if ((v15 & ~v84[2]) != 0)
              {
                v37 = v31;
                v38 = v30;
                goto LABEL_154;
              }
            }
          }
        }
      }

      if (v6 == 60)
      {
        break;
      }

      if (v6 != 89)
      {
        goto LABEL_168;
      }

      v11 = *(v5 - 32);
      if (v11)
      {
        v12 = *(v11 + 16) == 16;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v13 = (v11 + 24);
        if (*(v11 + 32) >= 0x41u)
        {
          v13 = *v13;
        }

        LODWORD(v4) = *v13;
      }

      v14 = *(v5 - 64);
      v83 = v14;
      if (v4 == -1)
      {
        v15 = 255;
      }

      else
      {
        v15 = 1 << v4;
      }

LABEL_90:
      v84 = 0;
      v45 = __src;
      v46 = v87;
      v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v87, v14, &v84);
      v36 = v84;
      if (v47)
      {
        v48 = v84 == (v45 + 16 * v46);
      }

      else
      {
        v48 = 1;
      }

      if (v48)
      {
        goto LABEL_95;
      }

LABEL_152:
      if ((v15 & ~v36[2]) != 0)
      {
        v37 = v14;
        v38 = v4;
LABEL_154:
        llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v88, v37, v38);
        v36[2] |= v15;
      }
    }

    v14 = *(v5 - 32);
    if (!v14 || *(v14 + 16) != 3)
    {
      break;
    }

    if ((*(v14 + 34) & 0x40) != 0)
    {
      SectionImpl = llvm::GlobalObject::getSectionImpl(*(v5 - 32));
      if (v62 == 15)
      {
        v63 = *SectionImpl == 0x625F726566667562 && *(SectionImpl + 7) == 0x73676E69646E6962;
        if (v63 && *(*v14 + 8) == 16399 && *(*(v14 + 24) + 8) == 527)
        {
          continue;
        }
      }
    }

    goto LABEL_167;
  }

  v52 = *(*v14 + 8);
  if ((v52 & 0xFE) == 0x12)
  {
    v52 = *(**(*v14 + 16) + 8);
  }

  if ((v52 & 0xFFFFFF00) == 0x200)
  {
    goto LABEL_147;
  }

LABEL_167:
  v10 = 0;
LABEL_168:
  llvm::deallocate_buffer(__src, (16 * v87));
  if (v88 != v90)
  {
    free(v88);
  }

  v80 = *MEMORY[0x277D85DE8];
  return v10;
}

unsigned int *llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::append<std::tuple<llvm::Value *,int> const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 4) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 16 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 4);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  *(result + 8) = 0;
  return result;
}

uint64_t llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    return llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(result, a2, a3);
  }

  v4 = *result + 16 * v3;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(result + 8) = v3 + 1;
  return result;
}

uint64_t llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x20F330650](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    v18 = (16 * v3);
    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          *(v22 + 2) = *(v20 + 2);
          ++*(a1 + 8);
        }

        v20 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }

    return llvm::deallocate_buffer(v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
      v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
      v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
      v28 = vdupq_n_s64(v26);
      v29 = (result + 16);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_20E70C4F0)));
        if (v30.i8[0])
        {
          *(v29 - 2) = -4096;
        }

        if (v30.i8[4])
        {
          *v29 = -4096;
        }

        v24 += 2;
        v29 += 4;
      }

      while (v27 != v24);
    }
  }

  return result;
}

void AGCLLVMAGPVertexShaderAnalysis::addInitCompilePass(AGCLLVMAGPVertexShaderAnalysis *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderAnalysis>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderAnalysisPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x58)
  {
    v1 = v0;
  }

  else
  {
    v1 = 88;
  }

  v2 = &aStringrefLlvmG_22[v1];
  v3 = 88 - v1;
  if ((88 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 88 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderAnalysisPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderAnalysisPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderAnalysis>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_21[v1];
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

void AGCLLVMAGPVertexShaderAnalysis::~AGCLLVMAGPVertexShaderAnalysis(AGCLLVMAGPVertexShaderAnalysis *this)
{
  *this = off_282563288;
  v2 = (this + 10424);
  *(this + 1303) = off_282563608;
  *(this + 1516) = &off_282563718;
  v3 = *(this + 1295);
  if (v3 != this + 10376)
  {
    free(v3);
  }

  v4 = *(this + 1229);
  if (v4 != this + 9848)
  {
    free(v4);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255DCF0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282563288;
  v2 = (this + 10424);
  *(this + 1303) = off_282563608;
  *(this + 1516) = &off_282563718;
  v3 = *(this + 1295);
  if (v3 != this + 10376)
  {
    free(v3);
  }

  v4 = *(this + 1229);
  if (v4 != this + 9848)
  {
    free(v4);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255DCF0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMAGPVertexShaderRegular::~AGCLLVMAGPVertexShaderRegular(AGCLLVMAGPVertexShaderRegular *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_2825643F0;
  v1[1307] = off_282564770;
  v1[1520] = &off_282564880;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_28255E220);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_2825643F0;
  v1[1307] = off_282564770;
  v1[1520] = &off_282564880;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_28255E220);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));
}

uint64_t llvm::Type::isSized(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x11)
  {
    goto LABEL_6;
  }

  v2 = 1;
  if (((1 << v1) & 0xAC7F) != 0)
  {
    return v2;
  }

  if (((1 << v1) & 0x30000) == 0)
  {
LABEL_6:
    if ((v1 & 0xFE) != 0x12 && v1 != 21)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F5238]();
}

BOOL AGCLLVMAGPVertexShaderRegular::canDMAPromote(uint64_t *a1, uint64_t a2, const char *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v171 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  if (v7)
  {
    if (!*(v7 + 8))
    {
      v8 = *(v7 + 24);
      if (*(v8 + 16) == 77)
      {
        a2 = v8;
      }
    }
  }

  v127 = a1 + 214;
  v132 = a1 + 212;
  v9 = 1;
  while (1)
  {
    v10 = *(a2 + 8);
    result = v10 == 0;
    if (!v10)
    {
      goto LABEL_294;
    }

    v12 = *(v10 + 24);
    if (!v12 || *(v12 + 16) != 62)
    {
      break;
    }

    v13 = *(v12 - 32 * (*(v12 + 20) & 0x7FFFFFF) + 32);
    v129 = v10;
    if (v13 && *(v13 + 16) == 67)
    {
      v13 = *(v13 - 32);
    }

    v134 = 1;
    v133 = 0;
    v14 = AGCLLVMAGPVertexShaderRegular::extractDivisor(v13, &v134, &v133);
    v15 = 0;
    if (v14)
    {
      if (*(v14 + 16) == 84)
      {
        v15 = *(v14 - 32);
        if (!v15 || *(v15 + 16) || *(v15 + 24) != *(v14 + 72))
        {
          v15 = 0;
        }
      }
    }

    v16 = a1[1303];
    if (v15 == v16)
    {
      v17 = 1305;
    }

    else
    {
      v17 = 1306;
    }

    v18 = v133;
    v19 = v133 != 0;
    if (!v15 || (v20 = a1[v17], v15 != v16) && v15 != a1[1304])
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s : GEP not indexed with instance_id/vertex_id");
      }

      goto LABEL_293;
    }

    if (v133 && v133 != v20)
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s: GEP indexed with index type not matching base type");
      }

      goto LABEL_293;
    }

    if (v9)
    {
      v21 = v15 == v16;
      if (v15 == v16)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      *a4 = v22;
      *(a5 + 24) = v134;
      *(a5 + 28) = v19;
      if (v21 && v18)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
        {
          AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s: GEP indexed with vertex_id and divisor with bias");
        }

        goto LABEL_293;
      }

      goto LABEL_41;
    }

    if (*a4 == 2)
    {
      v16 = a1[1304];
    }

    else if (*a4 != 1)
    {
      goto LABEL_39;
    }

    if (v15 != v16)
    {
      goto LABEL_285;
    }

LABEL_39:
    if (v134 != *(a5 + 24) || *(a5 + 28) != v19)
    {
LABEL_285:
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s : GEP indexed inconsistently");
      }

      goto LABEL_293;
    }

LABEL_41:
    v143 = 0;
    v144 = v12;
    __p = 0;
    v142 = 0;
    v167 = 128;
    v166[0] = MEMORY[0x20F330650](0x4000, 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(v166);
    LOBYTE(v168) = 0;
    v170 = 0;
    v160 = &v162;
    v161 = 0x800000000;
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 0;
    llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v160, (v12 - 32 * (*(v12 + 20) & 0x7FFFFFF) + 64), v12);
    v23 = v161;
    v24 = 1;
    if (v161)
    {
      v25 = v160;
      do
      {
        v26 = *v25++;
        v24 &= *(v26 + 16) == 16;
        --v23;
      }

      while (v23);
    }

    LOBYTE(v165) = v24;
    v27 = llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](v166, v12);
    v28 = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v27, &v160);
    *(v28 + 80) = v165;
    std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&__p, &v144);
LABEL_45:
    if (__p == v142)
    {
      v110 = 1;
    }

    else
    {
      v29 = (v142 - 1);
      v30 = *(v142 - 1);
      v154 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v166, v167, v30, &v154))
      {
        v32 = v154;
      }

      else
      {
        v32 = (*v166 + (v167 << 7));
      }

      v154 = &v156;
      v155 = 0x800000000;
      if (v32[12])
      {
        llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v154, (v32 + 10));
        v33 = v155 == 0;
      }

      else
      {
        v33 = 1;
      }

      v159 = *(v32 + 15);
      v142 = v29;
      if (v30 == v12 && v33 || ((SourceElementType = llvm::GEPOperator::getSourceElementType(v30), v35 = *(v30 + 20), v36 = v35 & 0x7FFFFFF, (v35 & 0x40000000) != 0) ? (v37 = *(v30 - 8)) : (v37 = v30 - 32 * v36), v38 = (v37 + 32), v39 = SourceElementType | 4, v40 = (v37 + 32 * v36), (v37 + 32) == v40))
      {
        LODWORD(v131) = 0;
      }

      else
      {
        do
        {
          v41 = v39;
          TypeAtIndex = v39 & 0xFFFFFFFFFFFFFFF8;
          if ((v39 & 4) == 0 || !TypeAtIndex)
          {
            v43 = *v38;
            TypeAtIndex = llvm::StructType::getTypeAtIndex();
          }

          v44 = *(TypeAtIndex + 8);
          if (TypeAtIndex && v44 == 17 || TypeAtIndex && (v44 & 0xFE) == 0x12)
          {
            v39 = *(TypeAtIndex + 24) | 4;
          }

          else if (v44 == 16)
          {
            v39 = TypeAtIndex & 0xFFFFFFFFFFFFFFFBLL;
          }

          else
          {
            v39 = 0;
          }

          v38 += 4;
        }

        while (v38 != v40);
        v131 = (v41 >> 2) & 1;
      }

      v125 = v30;
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_73:
            v30 = *(v30 + 8);
            if (!v30)
            {
              TypeAllocSize = 0;
              if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v166, v167, v125, &TypeAllocSize))
              {
                v109 = TypeAllocSize;
              }

              else
              {
                v109 = (*v166 + (v167 << 7));
              }

              if ((*v166 + (v167 << 7)) != v109)
              {
                llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(v166, v109);
              }

              if (v154 != &v156)
              {
                free(v154);
              }

              goto LABEL_45;
            }

            v45 = *(*(v30 + 24) + 16) <= 0x1Bu ? 0 : *(v30 + 24);
            v46 = *(v45 + 16);
            if (v46 != 60 || v45 == 0)
            {
              break;
            }

            AGCLLVMAGPVertexShaderRegular::LoadMap::addEntry(a6, v45, &v154);
          }

          v48 = v46 == 62 ? v45 : 0;
          v140 = v48;
          if (!v48)
          {
            break;
          }

          v49 = (v48 - 4 * (*(v48 + 5) & 0x7FFFFFF))[4];
          if (v49)
          {
            v50 = v49[16] > 0x14u;
          }

          else
          {
            v50 = 1;
          }

          if (v50 || !llvm::Constant::isNullValue(v49))
          {
            if (!v131)
            {
              goto LABEL_227;
            }

            Add = *(v154 + v155 - 1);
            v56 = (v48 - 4 * (*(v48 + 5) & 0x7FFFFFF))[4];
            if (v56 != llvm::Constant::getNullValue(*v56, v31))
            {
              if (Add == llvm::Constant::getNullValue(*Add, v57))
              {
                Add = v56;
              }

              else
              {
                if (*v56 != *Add)
                {
                  goto LABEL_227;
                }

                llvm::IRBuilderBase::SetInsertPoint((v127 + *(*a1 - 24)), v48);
                v58 = *(*a1 - 24);
                Name = llvm::Value::getName(v48);
                LOWORD(v148) = 773;
                TypeAllocSize = Name;
                v146 = v60;
                v147[0] = ".sum";
                Add = llvm::IRBuilderBase::CreateAdd((v127 + v58), v56, Add, &TypeAllocSize);
              }
            }

            TypeAllocSize = v147;
            v146 = 0x800000000;
            if (v155)
            {
              llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v154);
              v103 = v146 - 1;
            }

            else
            {
              v103 = -1;
            }

            v153 = v159;
            LODWORD(v146) = v103;
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&TypeAllocSize, Add);
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&TypeAllocSize, v48 - 32 * (*(v48 + 5) & 0x7FFFFFF) + 64, v48);
            v104 = v146;
            if (!v146)
            {
              goto LABEL_205;
            }

            v52 = 1;
            v105 = TypeAllocSize;
            do
            {
              v106 = *v105++;
              v52 &= *(v106 + 16) == 16;
              --v104;
            }

            while (v104);
          }

          else
          {
            TypeAllocSize = v147;
            v146 = 0x800000000;
            if (v155)
            {
              llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v154);
            }

            v153 = v159;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&TypeAllocSize, v48 - 32 * (*(v48 + 5) & 0x7FFFFFF) + 64, v48);
            if (v159 != 1)
            {
              v52 = 0;
              goto LABEL_207;
            }

            v51 = v146;
            if (!v146)
            {
LABEL_205:
              v52 = 1;
              goto LABEL_207;
            }

            v52 = 1;
            v53 = TypeAllocSize;
            do
            {
              v54 = *v53++;
              v52 &= *(v54 + 16) == 16;
              --v51;
            }

            while (v51);
          }

LABEL_207:
          LOBYTE(v153) = v52;
          v107 = llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](v166, v140);
          v108 = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v107, &TypeAllocSize);
          *(v108 + 80) = v153;
          std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&__p, &v140);
          if (TypeAllocSize != v147)
          {
            free(TypeAllocSize);
          }
        }

        if (v46 != 77 || v45 == 0)
        {
          break;
        }

        if (*(*v45 + 8) != 15)
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
          {
            AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "Cannot DMA promote %s : pointer bitcast to non-pointer type");
          }

          goto LABEL_227;
        }

        v62 = *(v45 + 8);
        if (v62)
        {
          v63 = **(**(v45 - 32) + 16);
          v64 = **(*v45 + 16);
          while (1)
          {
            v65 = *(v62 + 24);
            v66 = v65[16];
            if (v65 && v66 == 60)
            {
              if ((*(v63 + 8) & 0xFE) != 0x12)
              {
                goto LABEL_150;
              }

              v67 = *v65;
              if ((*(*v65 + 8) & 0xFE) != 0x12)
              {
                goto LABEL_150;
              }

              if (**(v63 + 16) != **(v67 + 16))
              {
                goto LABEL_150;
              }

              v68 = *(v67 + 32);
              v69 = *(v63 + 32);
              if (v68 <= v69)
              {
                goto LABEL_150;
              }

              v70 = *(v62 + 24);
              while (1)
              {
                v70 = *(v70 + 8);
                if (!v70)
                {
                  v84 = 1;
                  if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                  {
                    AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : truncated extend bitcast pattern");
                  }

                  goto LABEL_186;
                }

                v71 = *(v70 + 24);
                v72 = *(v71 + 16);
                if (v71)
                {
                  if (v72 == 91)
                  {
                    break;
                  }
                }

                v76 = 0;
                if (!v71)
                {
                  goto LABEL_144;
                }

                v80 = v68;
                if (v72 != 89)
                {
                  goto LABEL_148;
                }

                v81 = *(v71 - 32);
                if (v81)
                {
                  v82 = *(v81 + 16) == 16;
                }

                else
                {
                  v82 = 0;
                }

                if (!v82)
                {
                  v76 = 0;
LABEL_144:
                  v80 = v68;
                  goto LABEL_148;
                }

                v83 = (v81 + 24);
                if (*(v81 + 32) >= 0x41u)
                {
                  v83 = *v83;
                }

                v76 = *v83;
                v80 = v76 + 1;
LABEL_148:
                if (v76 >= v80 || v80 > v69)
                {
                  goto LABEL_150;
                }
              }

              v73 = *(*v71 + 32);
              if (v73)
              {
                v74 = 0;
                v75 = *(v71 + 64);
                v76 = -1;
                while (1)
                {
                  v78 = *v75++;
                  v77 = v78;
                  if ((v78 & 0x80000000) == 0 && v77 < v68 && *(v71 - 64) == v65)
                  {
                    goto LABEL_131;
                  }

                  v79 = v77 < v68 || v77 >= 2 * v68;
                  if (!v79 && *(v71 - 32) == v65)
                  {
                    break;
                  }

LABEL_135:
                  if (!--v73)
                  {
                    v80 = v74 + 1;
                    goto LABEL_148;
                  }
                }

                v77 = (v77 - v68);
LABEL_131:
                if (v76 >= v77)
                {
                  v76 = v77;
                }

                if (v74 <= v77)
                {
                  v74 = v77;
                }

                goto LABEL_135;
              }

LABEL_150:
              if (v159 == 1 && isReinterpretedArray(v64, v63, (a1 + 28), v131))
              {
                v84 = 2;
                if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : reinterpreted array bitcast pattern");
                }
              }

              else
              {
                TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v64);
                LODWORD(v146) = v96;
                v97 = llvm::TypeSize::operator unsigned long long();
                v135 = llvm::DataLayout::getTypeAllocSize((a1 + 28), v63);
                LODWORD(v136) = v98;
                v99 = llvm::TypeSize::operator unsigned long long();
                isValidToPrintMessage = AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24)));
                if (v97 > v99)
                {
                  if (isValidToPrintMessage)
                  {
                    AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : unrecognized GEP bitcast pattern: ", a3);
                  }

                  v135 = 0;
                  v136 = 0;
                  v137 = 0;
                  LODWORD(v146) = 0;
                  v149 = 0;
                  v150 = 0;
                  v151 = 1;
                  v147[1] = 0;
                  v148 = 0;
                  v147[0] = 0;
                  TypeAllocSize = (MEMORY[0x277D821F8] + 16);
                  v152 = &v135;
                  llvm::raw_ostream::SetUnbuffered(&TypeAllocSize);
                  llvm::Value::print(v45, &TypeAllocSize);
                  if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                  {
                    v119 = *a1;
                    v120 = v152;
                    if (*(v152 + 23) < 0)
                    {
                      v120 = *v152;
                    }

                    AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "bitcast: %s", v120);
                  }

                  if (SHIBYTE(v137) < 0)
                  {
                    *v135 = 0;
                    v136 = 0;
                  }

                  else
                  {
                    LOBYTE(v135) = 0;
                    HIBYTE(v137) = 0;
                  }

                  llvm::Value::print(v65, &TypeAllocSize);
                  if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                  {
                    v121 = *a1;
                    v122 = v152;
                    if (*(v152 + 23) < 0)
                    {
                      v122 = *v152;
                    }

                    AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "load:    %s", v122);
                  }

                  llvm::raw_ostream::~raw_ostream(&TypeAllocSize);
                  if (SHIBYTE(v137) < 0)
                  {
                    operator delete(v135);
                  }

                  goto LABEL_227;
                }

                v84 = 3;
                if (isValidToPrintMessage)
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : truncate to smaller sized type pattern");
                }
              }

LABEL_186:
              if (HIDWORD(v159))
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : can't combine bitcast types");
                }

                goto LABEL_227;
              }

              TypeAllocSize = v147;
              v146 = 0x800000000;
              if (v155)
              {
                llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v154);
              }

              v153 = __PAIR64__(v84, v159);
              AGCLLVMAGPVertexShaderRegular::LoadMap::addEntry(a6, v65, &TypeAllocSize);
            }

            else
            {
              if (v66 != 62)
              {
                v65 = 0;
              }

              v139 = v65;
              if (!v65)
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "Cannot DMA promote %s : unknown GEP bitcast use");
                }

                goto LABEL_227;
              }

              if (HIDWORD(v159))
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : GEP-of-bitcast can't combine bitcast types");
                }

                goto LABEL_227;
              }

              if (v159 != 1 || !isReinterpretedArray(v64, v63, (a1 + 28), v131) || *(v64 + 8) != 16)
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "Cannot DMA promote %s : unknown GEP-of-bitcast use");
                }

                goto LABEL_227;
              }

              if ((*(v65 + 5) & 0x7FFFFFF) != 4)
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "Cannot DMA promote %s : GEP-of-bitcast needs to index to a scalar");
                }

                goto LABEL_227;
              }

              if (*(*(v65 - 12) + 16) >= 0x15u)
              {
                v85 = 0;
              }

              else
              {
                v85 = *(v65 - 12);
              }

              if (*(*(v65 - 8) + 16) >= 0x15u)
              {
                v86 = 0;
              }

              else
              {
                v86 = *(v65 - 8);
              }

              if (v85)
              {
                v87 = v86 == 0;
              }

              else
              {
                v87 = 1;
              }

              if (v87)
              {
                goto LABEL_227;
              }

              if (!llvm::Constant::isNullValue(v85))
              {
                goto LABEL_227;
              }

              if (!llvm::Constant::isNullValue(v86))
              {
                goto LABEL_227;
              }

              v88 = *(v154 + v155 - 1);
              v89 = *&v65[-32 * (*(v65 + 5) & 0x7FFFFFF) + 96];
              if (*v89 != *v88)
              {
                goto LABEL_227;
              }

              if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
              {
                AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "DMA promotion %s : reinterpreted array bitcast pattern (through struct-array GEP)", a3);
              }

              TypeAllocSize = v147;
              v146 = 0x800000000;
              if (v155)
              {
                llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v154);
              }

              v153 = v159;
              v90 = *(*a1 - 24);
              v138 = 257;
              v91 = llvm::IRBuilderBase::CreateAdd((v127 + v90), v88, v89, &v135);
              v92 = v146;
              *(TypeAllocSize + v146 - 1) = v91;
              v93 = 1;
              if (v92)
              {
                v94 = TypeAllocSize;
                do
                {
                  v95 = *v94++;
                  v93 &= *(v95 + 16) == 16;
                  --v92;
                }

                while (v92);
              }

              LOBYTE(v153) = v93;
              HIDWORD(v153) = 2;
              v101 = llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](v166, v65);
              v102 = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v101, &TypeAllocSize);
              *(v102 + 80) = v153;
              std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&__p, &v139);
            }

            if (TypeAllocSize != v147)
            {
              free(TypeAllocSize);
            }

            v62 = *(v62 + 8);
            if (!v62)
            {
              goto LABEL_73;
            }
          }
        }
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(v132 + *(*a1 - 24))))
      {
        AGCTargetPrinter::printMessage(*(v132 + *(*a1 - 24)), "Cannot DMA promote %s : GEP not used in a load");
      }

LABEL_227:
      if (v154 != &v156)
      {
        free(v154);
      }

      v110 = 0;
    }

    if (v160 != &v162)
    {
      free(v160);
    }

    if (v170 == 1)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v168);
      llvm::deallocate_buffer(v168, (16 * v169));
      v170 = 0;
    }

    v111 = v166[0];
    if (v167)
    {
      v161 = 2;
      v162 = 0;
      v163 = -4096;
      v164 = 0;
      v160 = &unk_28257BDC8;
      v155 = 2;
      v156 = 0;
      v157 = -8192;
      v158 = 0;
      v154 = &unk_28257BDC8;
      v112 = *v166 + 56;
      v113 = v167 << 7;
      do
      {
        v114 = *(v112 - 32);
        if (v114 != v163 && v114 != v157)
        {
          v116 = *(v112 - 16);
          if (v112 != v116)
          {
            free(v116);
            v114 = *(v112 - 32);
          }
        }

        if (v114 != -8192 && v114 != -4096 && v114 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v112 - 48));
        }

        v112 += 128;
        v113 -= 128;
      }

      while (v113);
      if (v157 != -8192 && v157 != -4096 && v157)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v155);
      }

      if (v163 != -8192 && v163 != -4096 && v163)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v161);
      }

      v111 = v166[0];
      v118 = (v167 << 7);
    }

    else
    {
      v118 = 0;
    }

    llvm::deallocate_buffer(v111, v118);
    if (__p)
    {
      operator delete(__p);
    }

    v9 = 0;
    result = 0;
    a2 = v129;
    if ((v110 & 1) == 0)
    {
      goto LABEL_294;
    }
  }

  result = AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696));
  if (result)
  {
    AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s : found a non-GEP use");
LABEL_293:
    result = 0;
  }

LABEL_294:
  v123 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAGPVertexShaderRegular::coerceStridedAccess(AGCLLVMAGPVertexShaderRegular *this, llvm::Value *a2, const char *a3, llvm::Type **a4)
{
  v94[7] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 1);
  if (!v8)
  {
    v42 = 0;
    v91 = &v93;
    v92 = 0x800000000;
    goto LABEL_86;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  while (1)
  {
    result = 0;
    v13 = *(v8 + 24);
    if (!v13 || *(v13 + 16) != 62)
    {
      goto LABEL_137;
    }

    v14 = *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF) + 32);
    if (v14)
    {
      if (*(v14 + 16) == 67)
      {
        v14 = *(v14 - 32);
        if (!v14)
        {
          goto LABEL_136;
        }
      }
    }

    v15 = *(v14 + 16);
    if (v15 <= 0x1B)
    {
      if (v15 == 5)
      {
        v17 = *(v14 + 18);
        if (v17 == 13)
        {
          goto LABEL_13;
        }

        LODWORD(v16) = 0;
      }

      else
      {
        LODWORD(v16) = 0;
LABEL_34:
        if (v15 != 5)
        {
          goto LABEL_136;
        }

        v17 = *(v14 + 18);
      }

      if (v17 == 17)
      {
        goto LABEL_41;
      }

      if (v17 != 25)
      {
        goto LABEL_136;
      }

      goto LABEL_39;
    }

    if (v15 != 41)
    {
      LODWORD(v16) = 0;
      goto LABEL_31;
    }

LABEL_13:
    v18 = *(v14 + 20);
    if ((v18 & 0x40000000) != 0)
    {
      v19 = *(v14 - 8);
    }

    else
    {
      v19 = v14 - 32 * (v18 & 0x7FFFFFF);
    }

    v20 = *(v19 + 32);
    if (v20)
    {
      v21 = *(v20 + 16) == 16;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_136;
    }

    v22 = *(v20 + 32);
    if (v22 > 0x40)
    {
      v16 = **(v20 + 24);
      if (v16 < 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v16 = *(v20 + 24);
      if (v16 << -v22 < 0)
      {
        goto LABEL_136;
      }
    }

    v23 = (v18 & 0x40000000) != 0 ? *(v14 - 8) : (v14 - 32 * (v18 & 0x7FFFFFF));
    v14 = *v23;
    if (!v14)
    {
      goto LABEL_136;
    }

    v15 = *(v14 + 16);
    if (v15 <= 0x1B)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v15 != 53)
    {
      if (v15 != 45)
      {
        goto LABEL_136;
      }

LABEL_41:
      v26 = *(v14 + 20);
      if ((v26 & 0x40000000) != 0)
      {
        v27 = *(v14 - 8);
      }

      else
      {
        v27 = (v14 - 32 * (v26 & 0x7FFFFFF));
      }

      v28 = v27[4];
      if (v28)
      {
        v29 = *(v28 + 16) == 16;
      }

      else
      {
        v29 = 0;
      }

      if (!v29)
      {
        goto LABEL_136;
      }

      v30 = (v28 + 24);
      if (*(v28 + 32) >= 0x41u)
      {
        v30 = *v30;
      }

      v31 = *v30;
      if (v16 >= *v30)
      {
        goto LABEL_136;
      }

      goto LABEL_68;
    }

LABEL_39:
    v24 = *(v14 + 20);
    if ((v24 & 0x40000000) != 0)
    {
      v25 = *(v14 - 8);
    }

    else
    {
      v25 = v14 - 32 * (v24 & 0x7FFFFFF);
    }

    v32 = *(v25 + 32);
    if (v32)
    {
      v33 = *(v32 + 16) == 16;
    }

    else
    {
      v33 = 0;
    }

    if (!v33)
    {
      goto LABEL_136;
    }

    v34 = (v32 + 24);
    v35 = *(v32 + 32);
    v36 = v34;
    if (v35 >= 0x41)
    {
      v36 = *v34;
    }

    if (*v36 > 0x1FuLL)
    {
      goto LABEL_136;
    }

    if ((v24 & 0x40000000) != 0)
    {
      v27 = *(v14 - 8);
    }

    else
    {
      v27 = (v14 - 32 * (v24 & 0x7FFFFFF));
    }

    if (v35 >= 0x41)
    {
      v34 = *v34;
    }

    v31 = 1 << *v34;
    if (v31 <= v16)
    {
      goto LABEL_136;
    }

LABEL_68:
    v37 = *v27;
    if (v11)
    {
      v38 = AGCLLVMAGPVertexShaderRegular::extractDivisor(*v27, &TypeAllocSize, &v91);
      if (!v38 || *(v38 + 16) != 84 || (v39 = *(v38 - 32)) == 0 || *(v39 + 16) || *(v39 + 24) != *(v38 + 72) || v39 != *(this + 1303) && v39 != *(this + 1304))
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
        {
          AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Will not coerce strided access %s : GEP not indexed with instance_id/vertex_id");
        }

LABEL_136:
        result = 0;
        goto LABEL_137;
      }

      v9 = v37;
      v10 = v31;
      goto LABEL_82;
    }

    if (v10 != v31 || v9 != v37)
    {
      break;
    }

LABEL_82:
    v11 = 0;
    v8 = *(v8 + 8);
    if (!v8)
    {
      v41 = **(*a2 + 16);
      v42 = v10;
      v91 = &v93;
      v92 = 0x800000000;
      if (v10 >= 9)
      {
        LODWORD(v92) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v72 = (v10 + 1) & 0x1E;
      v73 = vdupq_n_s64(v10 - 1);
      v74 = v94;
      v75 = 3;
      do
      {
        v76 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(vdupq_n_s64(v75 - 3), xmmword_20E70C4F0)));
        if (v76.i8[0])
        {
          *(v74 - 1) = 0;
        }

        if (v76.i8[4])
        {
          *v74 = 0;
        }

        v75 += 2;
        v74 += 2;
        v72 -= 2;
      }

      while (v72);
      LODWORD(v92) = v10;
      if (v10)
      {
          ;
        }
      }

LABEL_86:
      v43 = *(this + *(*this - 24) + 2160);
      v44 = *a3;
      if (*a3)
      {
        v79[2] = a3;
        v45 = 3;
        v46 = 2;
      }

      else
      {
        v45 = 1;
        v46 = 3;
      }

      v79[0] = "agc.struct.coerced_arg";
      v80 = 3;
      v81 = v45;
      v21 = v44 == 0;
      v47 = v79;
      if (v21)
      {
        v47 = "agc.struct.coerced_arg";
      }

      v82[0] = v47;
      v82[2] = "x";
      v83 = v46;
      v84 = 3;
      TypeAllocSize = v82;
      v87 = v42;
      v88 = 2050;
      v48 = __p;
      llvm::Twine::str(__p, &TypeAllocSize);
      if ((v90 & 0x80000000) == 0 || (v48 = __p[0]) != 0)
      {
        strlen(v48);
      }

      v49 = llvm::StructType::create();
      *a4 = v49;
      if (v90 < 0)
      {
        operator delete(__p[0]);
        v49 = *a4;
      }

      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v49);
      v86 = v50;
      v51 = llvm::TypeSize::operator unsigned long long();
      v78 = (v51 & 3) == 0;
      if ((v51 & 3) != 0)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
        {
          AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Will not coerce pointer %s : type size %u not a multiple of 4", a3, v51);
        }

LABEL_131:
        if (v91 != &v93)
        {
          free(v91);
        }

        result = v78;
        goto LABEL_137;
      }

      v52 = *a4;
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v53 = *(**(*a2 + 16) + 8);
      }

      v54 = llvm::PointerType::get();
      v55 = this + 1712;
      v56 = *(*(this + 21) + 80);
      if (v56)
      {
        v57 = v56 - 24;
      }

      else
      {
        v57 = 0;
      }

      v58 = *(v57 + 40);
      if (v58)
      {
        v59 = (v58 - 24);
      }

      else
      {
        v59 = 0;
      }

      llvm::IRBuilderBase::SetInsertPoint(&v55[*(*this - 24)], v59);
      v60 = *(*this - 24);
      v88 = 257;
      llvm::IRBuilderBase::CreateCast(&v55[v60], 49, a2, v54, &TypeAllocSize);
      v61 = *(a2 + 1);
      if (!v61)
      {
        goto LABEL_131;
      }

      while (1)
      {
        v62 = *(v61 + 24);
        v61 = *(v61 + 8);
        if (v62)
        {
          if (*(v62 + 16) == 62)
          {
            break;
          }
        }

        if (!v61)
        {
          goto LABEL_131;
        }
      }

      v63 = *(v62 - 32 * (*(v62 + 20) & 0x7FFFFFF) + 32);
      v64 = *(v63 + 16);
      if (v63 && v64 == 67)
      {
        v63 = *(v63 - 32);
        if (!v63)
        {
          goto LABEL_129;
        }

        v64 = *(v63 + 16);
      }

      if (v64 <= 0x1B)
      {
        if (v64 != 5 || *(v63 + 18) != 13)
        {
          goto LABEL_129;
        }
      }

      else if (v64 != 41)
      {
        goto LABEL_129;
      }

      v65 = *(v63 + 20);
      if ((v65 & 0x40000000) != 0)
      {
        v66 = *(v63 - 8);
      }

      else
      {
        v66 = v63 - 32 * (v65 & 0x7FFFFFF);
      }

      v67 = *(v66 + 32);
      if (*(v67 + 16) == 16)
      {
        v68 = v67;
      }

      else
      {
        v68 = 0;
      }

      v69 = (v68 + 24);
      if (*(v68 + 32) >= 0x41u)
      {
        v69 = *v69;
      }

      v70 = *v69;
LABEL_129:
      operator new();
    }
  }

  result = AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696));
  if (result)
  {
    AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Will not coerce strided access %s : GEP indexed inconsistently");
    goto LABEL_136;
  }

LABEL_137:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAGPVertexShaderRegular::analyzeLoads(uint64_t a1, llvm::Type *a2, uint64_t *a3)
{
  llvm::DataLayout::getTypeSizeInBits((a1 + 224), a2);
  v6 = llvm::TypeSize::operator unsigned long long();
  v7 = v6;
  if ((*(a2 + 2) & 0xFE) != 0x10)
  {
    return 0;
  }

  if (!*(a3 + 2))
  {
    return -1;
  }

  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = v8 << 7;
    for (i = *a3; (*(i + 24) | 0x1000) == 0xFFFFFFFFFFFFF000; i += 128)
    {
      v9 -= 128;
      if (!v9)
      {
        return -1;
      }
    }
  }

  else
  {
    i = *a3;
  }

  v12 = *a3 + (v8 << 7);
  if (v12 == i)
  {
    return -1;
  }

  v13 = 0;
  v11 = -1;
  v28 = v6;
  do
  {
    v14 = *(i + 24);
    if (*(i + 48))
    {
      v15 = **(i + 40);
      if (v15 && *(v15 + 16) == 16)
      {
        v27 = *(i + 24);
        v17 = 0;
        v19 = 1;
        v20 = a2;
        while (1)
        {
          v21 = (v15 + 24);
          if (*(v15 + 32) >= 0x41u)
          {
            v21 = *v21;
          }

          v22 = *v21;
          v23 = *(v20 + 8);
          if (v20 && v23 == 16)
          {
            if (*(v20 + 3) <= v22)
            {
              return 0;
            }

            v24 = *(llvm::DataLayout::getStructLayout() + 8 * v22 + 16);
            v20 = *(*(v20 + 2) + 8 * v22);
            if (!v20)
            {
              return 0;
            }
          }

          else
          {
            if (!v20)
            {
              return 0;
            }

            if (v23 != 17)
            {
              return 0;
            }

            if (*(v20 + 4) <= v22)
            {
              return 0;
            }

            v20 = *(v20 + 3);
            llvm::DataLayout::getTypeAllocSize((a1 + 224), v20);
            v24 = llvm::TypeSize::operator unsigned long long() * v22;
            if (!v20)
            {
              return 0;
            }
          }

          v17 += v24;
          llvm::DataLayout::getTypeSizeInBits((a1 + 224), v20);
          v25 = llvm::TypeSize::operator unsigned long long();
          if (v19 < *(i + 48))
          {
            v15 = *(*(i + 40) + 8 * v19);
            if (v15)
            {
              ++v19;
              if (*(v15 + 16) == 16)
              {
                continue;
              }
            }
          }

          v18 = v25 + v17;
          v14 = v27;
          v7 = v28;
          goto LABEL_18;
        }
      }
    }

    v17 = 0;
    v18 = v7;
LABEL_18:
    if (*(i + 124) && *(i + 120) == 1)
    {
      v29 = (llvm::DataLayout::getTypeSizeInBits((a1 + 224), *v14) + 7) >> 3;
      v18 = llvm::TypeSize::operator unsigned long long() + v17;
    }

    if (v17 < v11)
    {
      v11 = v17;
    }

    if (v13 <= v18)
    {
      v13 = v18;
    }

    do
    {
      i += 128;
    }

    while (i != v12 && (*(i + 24) | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (i != v12);
  return v11;
}

uint64_t llvm::Twine::concat(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 32);
  if (!*(a2 + 32) || (v4 = *(a3 + 32), !*(a3 + 32)))
  {
    *(result + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a3 + 1);
    *result = *a3;
    *(result + 16) = v5;
    v6 = a3[4];
LABEL_8:
    *(result + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 1);
    *result = *a2;
    *(result + 16) = v7;
    v6 = a2[4];
    goto LABEL_8;
  }

  v8 = *(a2 + 33);
  if (v8 == 1)
  {
    v9 = a2;
    a2 = *a2;
    v8 = v9[1];
  }

  else
  {
    LOBYTE(v3) = 2;
  }

  v10 = a3[1];
  if (*(a3 + 33) == 1)
  {
    v11 = *a3;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a3;
  }

  *result = a2;
  *(result + 8) = v8;
  *(result + 16) = v11;
  *(result + 24) = v10;
  *(result + 32) = v3;
  *(result + 33) = v4;
  return result;
}

uint64_t *AGCLLVMAGPVertexShaderRegular::materializeVertexAttribute(void *a1, llvm::Type *a2, int a3, void *a4, uint64_t a5)
{
  v8 = *(a2 + 2);
  if ((v8 & 0xFE) == 0x10)
  {
    if (a3)
    {
      v9 = v8 & 0x11;
      if (v9 == 17)
      {
        result = AGCLLVMAGPVertexShaderRegular::materializeArrayFromVI(a1, a2, 0, a4);
        if (result)
        {
          return result;
        }
      }

      else if (v9 == 16)
      {
        result = AGCLLVMAGPVertexShaderRegular::materializeStructFromVI(a1, a2, 0, a4, a5);
        if (result)
        {
          return result;
        }
      }
    }

    TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), a2);
    v32 = v11;
    v12 = llvm::TypeSize::operator unsigned long long();
    v13 = llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 1904), (v12 >> 2));
    InsertValue = llvm::UndefValue::get();
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits((a1 + 28), a2) + 7) >> 3;
    v32 = v15 == 1;
    v16 = llvm::TypeSize::operator unsigned long long();
    v34 = 0;
    if (v16 >= 4)
    {
      v17 = 0;
      v18 = v16 >> 2;
      do
      {
        v19 = a1 + *(*a1 - 24);
        v20 = *(*a4 + 8 * v17);
        v21 = *(v19 + 238);
        v33 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v19 + 1712), 49, v20, v21, &TypeAllocSize);
        v23 = *(*a1 - 24);
        v33 = 257;
        InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + v23 + 1712, InsertValue, Cast, &v34, 1, &TypeAllocSize);
        v17 = v34 + 1;
        v34 = v17;
      }

      while (v17 < v18);
    }

    v24 = (a1 + *(*a1 - 24));
    v33 = 257;
    Alloca = llvm::IRBuilderBase::CreateAlloca(v24 + 214, v13, 0, &TypeAllocSize);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), InsertValue, Alloca, 0);
    v26 = (a1 + *(*a1 - 24));
    if ((*(*Alloca + 2) & 0xFE) == 0x12)
    {
      v27 = *(**(*Alloca + 2) + 8);
    }

    v28 = llvm::PointerType::get();
    v33 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v26 + 214, Alloca, v28, &TypeAllocSize);
    v30 = (a1 + *(*a1 - 24));
    v33 = 257;
    llvm::Type::isOpaquePointerTy(*PointerCast);
    return llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, a2, PointerCast, 0, &TypeAllocSize);
  }

  else
  {

    return AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(a1, a2, 0, a4);
  }
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2 && (v8 = *a2, v9 = 4 * a4 - 4, (*(llvm::ExtractValueInst::getIndexedType() + 8) & 0xFE) == 0x12))
  {
    v10 = a1 + *(*a1 - 24);
    v19 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v10 + 1712), a2, a3, v9 >> 2, v18);
    v12 = a1 + *(*a1 - 24);
    v13 = *(v9 + a3);
    v19 = 257;
    v14 = *(v12 + 238);
    v15 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v12 + 1712), Value, v15, v18);
  }

  else
  {
    v17 = a1 + *(*a1 - 24);
    v19 = 257;
    return llvm::IRBuilderBase::CreateExtractValue((v17 + 1712), a2, a3, a4, v18);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Value *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v29 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v29);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v29;
  }

  else
  {
    v7 = v6;
  }

  v8 = v14;
  if ((*v14 + (v14[2].u32[0] << 7)) != v7)
  {
    v25 = v27;
    v26 = 0x800000000;
    if (v7[12])
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v25, (v7 + 10));
      v8 = v14;
    }

    v28 = *(v7 + 15);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(v8, v7);
    v9 = v14;
    v20 = a2;
    v21 = v23;
    v22 = 0x800000000;
    if (v26)
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v21, &v25);
      a2 = v20;
    }

    v24 = v28;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_28257BDA0;
    v18 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v30, (LODWORD(v16[0]) >> 1) & 3, v16);
    v29 = &unk_28257BDA0;
    v32 = v18;
    v33 = v35;
    v34 = 0x800000000;
    if (v22)
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v33, &v21);
    }

    v36 = v24;
    v19 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v9, *(v9 + 16), v31, &v19) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(v9, &v29, v19);
      llvm::ValueHandleBase::operator=((v10 + 1), v30);
      v10[4] = v32;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v34)
      {
        llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v10 + 5), &v33);
      }

      v10[15] = v36;
    }

    if (v33 != v35)
    {
      free(v33);
    }

    if (v31 != -8192 && v31 != -4096 && v31)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v30);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v16);
    }

    if (v21 != v23)
    {
      free(v21);
    }

    if (v25 != v27)
    {
      free(v25);
    }
  }

  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 7);
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
        v5 = a1 + (v4 << 7);
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

llvm::CallbackVH *llvm::CallbackVH::CallbackVH(llvm::CallbackVH *this, llvm::Value *a2)
{
  *(this + 1) = 2;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(v3 + 2) = a2;
  if (a2 != -8192 && a2 != -4096 && a2)
  {
    llvm::ValueHandleBase::AddToUseList(v3);
  }

  *this = MEMORY[0x277D821C0] + 16;
  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x20F330650](v8 << 7, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_28257BDA0;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v26);
          v14 = v26;
          llvm::ValueHandleBase::operator=((v26 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 8);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
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

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(uint64_t result)
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
    v3 = (*result + (v1 << 7));
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_28257BDA0;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = v4 + 128;
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_28257BDA0;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

uint64_t *AGCLLVMAGPVertexShaderRegular::materializeStructFromVI(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  InsertValue = llvm::UndefValue::get();
  StructLayout = llvm::DataLayout::getStructLayout();
  v41 = 0;
  if (*(a2 + 12))
  {
    v13 = 0;
    v14 = StructLayout + 16;
    while (1)
    {
      v15 = *(*(a2 + 16) + 8 * v13);
      v16 = *(v14 + 8 * v13);
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v15);
      LODWORD(v38) = v17;
      v18 = llvm::TypeSize::operator unsigned long long() & 3;
      if ((v16 & 3) != 0 || v18 != 0)
      {
        return 0;
      }

      v20 = a3 + (v16 >> 2);
      v21 = *(v15 + 2);
      if ((v21 & 0xFE) == 0x10)
      {
        v22 = v21 & 0x11;
        if (v22 == 16)
        {
          v40 = 257;
          v23 = AGCLLVMAGPVertexShaderRegular::materializeStructFromVI(a1, v15, v20, a4, &TypeAllocSize);
        }

        else
        {
          if (v22 != 17)
          {
            return 0;
          }

          v23 = AGCLLVMAGPVertexShaderRegular::materializeArrayFromVI(a1, v15, v20, a4);
        }
      }

      else
      {
        v23 = AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(a1, v15, v20, a4);
      }

      if (!v23)
      {
        return 0;
      }

      v24 = *(*a1 - 24);
      v25 = *(a5 + 32);
      if (v25 == 1)
      {
        break;
      }

      if (*(a5 + 32))
      {
        v30 = *a5;
        v31 = *(a5 + 8);
        v26 = 2;
        if (*(a5 + 33) != 1)
        {
          LOBYTE(v25) = 2;
          v30 = a5;
        }

        v33 = v30;
        v34 = v31;
        v35 = ".elem";
        LOBYTE(v36) = v25;
        HIBYTE(v36) = 3;
        v28 = v5 & 0xFFFFFFFF00000000;
        v5 = v5 & 0xFFFFFFFF00000000 | v41;
        v29 = &v33;
        goto LABEL_22;
      }

      v26 = 0;
      v36 = 256;
      v27 = 1;
LABEL_23:
      LOBYTE(v40) = v26;
      HIBYTE(v40) = v27;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + v24 + 1712, InsertValue, v23, &v41, 1, &TypeAllocSize);
      v13 = v41 + 1;
      v41 = v13;
      if (v13 >= *(a2 + 12))
      {
        return InsertValue;
      }
    }

    v33 = ".elem";
    v36 = 259;
    v5 = v5 & 0xFFFFFFFF00000000 | v41;
    v26 = 3;
    v28 = v34;
    v29 = ".elem";
LABEL_22:
    TypeAllocSize = v29;
    v38 = v28;
    v27 = 8;
    v39 = v5;
    goto LABEL_23;
  }

  return InsertValue;
}

uint64_t *AGCLLVMAGPVertexShaderRegular::materializeArrayFromVI(void *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(a2 + 24);
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v8);
  v18 = v9;
  v10 = llvm::TypeSize::operator unsigned long long();
  if ((*(v8 + 2) & 0xFE) == 0x10 || (v10 & 3) != 0)
  {
    return 0;
  }

  InsertValue = llvm::UndefValue::get();
  v20 = 0;
  if (*(a2 + 32))
  {
    v13 = v10 >> 2;
    do
    {
      v14 = AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(a1, v8, a3, a4);
      v15 = *(*a1 - 24);
      v19 = 257;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + v15 + 1712, InsertValue, v14, &v20, 1, &TypeAllocSize);
      a3 += v13;
      ++v20;
    }

    while (*(a2 + 32) > v20);
  }

  return InsertValue;
}

llvm::Value *AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(void *a1, llvm::Type *this, unsigned int a3, void *a4)
{
  if ((*(this + 2) & 0xFE) != 0x12)
  {
    v22 = a1 + *(*a1 - 24);
    v23 = *(*a4 + 8 * a3);
    v40 = 257;
    return llvm::IRBuilderBase::CreateCast((v22 + 1712), 49, v23, this, v39);
  }

  v8 = **(this + 2);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(this);
  v10 = *(this + 8);
  if (ScalarSizeInBits == 8)
  {
    v35 = llvm::FixedVectorType::get();
    v36 = a1 + *(*a1 - 24);
    v37 = *(*a4 + 8 * a3);
    v40 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v36 + 1712), 49, v37, v35, v39);
    if (v10 == 4)
    {
      return Cast;
    }

    v32 = (a1 + *(*a1 - 24) + 1704);
    v33 = Cast;
    v34 = v10;
    return AGCLLVMBuilder::subrangeVector(v32, v33, 0, v34, 1);
  }

  if (ScalarSizeInBits == 16)
  {
    v26 = llvm::FixedVectorType::get();
    v27 = a1 + *(*a1 - 24);
    v28 = *(*a4 + 8 * a3);
    v40 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v27 + 1712), 49, v28, v26, v39);
    if ((v10 - 3) > 1)
    {
      return Cast;
    }

    v29 = a1 + *(*a1 - 24);
    v30 = *(*a4 + 8 * (a3 + 1));
    v40 = 257;
    v31 = llvm::IRBuilderBase::CreateCast((v29 + 1712), 49, v30, v26, v39);
    Cast = AGCLLVMBuilder::concatenateVectors((a1 + *(*a1 - 24) + 1704), Cast, v31);
    if (v10 != 3)
    {
      return Cast;
    }

    v32 = (a1 + *(*a1 - 24) + 1704);
    v33 = Cast;
    v34 = 3;
    return AGCLLVMBuilder::subrangeVector(v32, v33, 0, v34, 1);
  }

  if (ScalarSizeInBits != 32)
  {
    return 0;
  }

  Cast = llvm::UndefValue::get();
  if (v10)
  {
    v38 = a4;
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = *(*a1 - 24);
      v15 = *(*v38 + 8 * (v13 + v12));
      v40 = 257;
      v16 = llvm::IRBuilderBase::CreateCast(a1 + v14 + 1712, 49, v15, v8, v39);
      v17 = v10;
      v18 = a1 + *(*a1 - 24) + 1704;
      v40 = 257;
      v19 = *(v18 + 200);
      v20 = llvm::ConstantInt::get();
      v21 = (v18 + 8);
      v10 = v17;
      Cast = llvm::IRBuilderBase::CreateInsertElement(v21, Cast, v16, v20, v39);
      ++v12;
    }

    while (v17 != v12);
  }

  return Cast;
}

llvm::GetElementPtrInst *llvm::IRBuilderBase::CreateInBoundsGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 1);
  if (!v12)
  {
    v12 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
  }

  return v12;
}

uint64_t AGCLLVMAGPVertexShaderRegular::extractDivisor(uint64_t result, int *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3 <= 0x1B)
  {
    if (v3 != 5 || *(result + 18) != 13)
    {
      return result;
    }
  }

  else if (v3 != 41)
  {
    v4 = *(result + 20);
    v5 = 0;
    if ((v4 & 0x40000000) != 0)
    {
      v6 = *(result - 8);
    }

    else
    {
      v6 = (result - 32 * (v4 & 0x7FFFFFF));
    }

    v9 = result;
LABEL_20:
    v13 = *v6;
    v14 = *(v9 + 16);
    if (v14 == 54)
    {
      v17 = *(v9 + 20);
      if ((v17 & 0x40000000) != 0)
      {
        v18 = *(v9 - 8);
      }

      else
      {
        v18 = v9 - 32 * (v17 & 0x7FFFFFF);
      }

      v25 = *(v18 + 32);
      if (v25)
      {
        v26 = *(v25 + 16) == 16;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        if (*(v25 + 32) > 0x40u)
        {
          v27 = **(v25 + 24);
          if (v27 > 0x1F)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v25 + 24);
          if (v27 >= 0x20)
          {
            return result;
          }
        }

        v24 = 1 << v27;
LABEL_75:
        *a2 = v24;
        *a3 = v5;
        return v13;
      }
    }

    else if (v14 == 47)
    {
      v15 = *(v9 + 20);
      v16 = (v15 & 0x40000000) != 0 ? *(v9 - 8) : v9 - 32 * (v15 & 0x7FFFFFF);
      v22 = *(v16 + 32);
      if (v22)
      {
        if (*(v22 + 16) == 16)
        {
          v23 = (v22 + 24);
          if (*(v22 + 32) >= 0x41u)
          {
            v23 = *v23;
          }

          v24 = *v23;
          goto LABEL_75;
        }
      }
    }

    return result;
  }

  v7 = *(result + 20);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(result - 8);
  }

  else
  {
    v8 = (result - 32 * (v7 & 0x7FFFFFF));
  }

  v9 = *v8;
  if (v9)
  {
    v10 = *(v9 + 16) >= 0x1Cu;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v9 + 20);
    if ((v11 & 0x7FFFFFF) != 0)
    {
      v12 = (v11 & 0x40000000) != 0 ? *(v9 - 8) : (v9 - 32 * (v11 & 0x7FFFFFF));
      v19 = *v12;
      v20 = *(v19 + 16);
      if (v20 <= 0x1B)
      {
        if (v20 != 5 || *(v19 + 18) != 15)
        {
          return result;
        }
      }

      else if (v20 != 43)
      {
        return result;
      }

      v21 = (v7 & 0x40000000) != 0 ? *(result - 8) : result - 32 * (v7 & 0x7FFFFFF);
      v28 = *(v21 + 32);
      v29 = *(v28 + 16) == 84 ? v28 : 0;
      v30 = *(v19 + 20);
      v31 = (v30 & 0x40000000) != 0 ? *(v19 - 8) : v19 - 32 * (v30 & 0x7FFFFFF);
      v32 = *(v31 + 32);
      v33 = *(v32 + 16) == 84 ? v32 : 0;
      if (v29 && v33)
      {
        v5 = *(v29 - 32);
        if (!v5 || *(v5 + 16) || (v34 = *(v29 + 72), v35 = *(v29 - 32), *(v5 + 24) != v34))
        {
          v35 = 0;
        }

        v36 = *(v33 - 32);
        if (!v36 || *(v36 + 16) || *(v36 + 24) != *(v33 + 72))
        {
          v36 = 0;
        }

        if (v35 == v36 && (*(v5 + 20) & 0x7FFFFFF) == 0)
        {
          if ((v30 & 0x40000000) != 0)
          {
            v6 = *(v19 - 8);
          }

          else
          {
            v6 = (v19 - 32 * (v30 & 0x7FFFFFF));
          }

          goto LABEL_20;
        }
      }
    }
  }

  return result;
}