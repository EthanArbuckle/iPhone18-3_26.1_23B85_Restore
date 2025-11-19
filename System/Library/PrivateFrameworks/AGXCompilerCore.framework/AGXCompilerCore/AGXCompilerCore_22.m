uint64_t std::__function::__func<AGCModule<AGX::BVHBuilderProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::BVHBuilderProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEA08;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)24,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::BVHBuilderProgramKey::serialize(AGX::BVHBuilderProgramKey *this, std::vector<unsigned int>::pointer *a2, unint64_t *a3)
{
  v5 = (this + 16);
  *(this + 3) = *(this + 2);
  v9 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v9);
  v6 = v5->__end_ - v5->__begin_;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 2);
  v7 = (v5->__begin_ + v6);
  *v7 = ((LODWORD(v5->__end_) - v5->__begin_) >> 2 << 8) | 0x55;
  v7[1] = v5[1].__begin_;
  v10 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v10);
  begin = v5->__begin_;
  *a2 = v5->__begin_;
  *a3 = v5->__end_ - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::EndOfTileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::EndOfTileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE9C0;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)19,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

BOOL AGX::EndOfTileProgramKey::isPrecompiledToPipelineCache(AGX::EndOfTileProgramKey *this)
{
  v8 = 19;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = &unk_2825BF7B0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  if (AGX::EndOfTileProgramKey::operator==(this, &v7))
  {
    return 1;
  }

  v3 = 0;
  for (i = 40; i != 108; i += 4)
  {
    v3 |= *(this + i) != 0;
  }

  LOBYTE(v5) = 0;
  for (j = 40; j != 108; j += 4)
  {
    v5 = v5 & 1 | ((*(this + j) & 0x2000000) != 0);
  }

  v18 = 19;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v17 = &unk_2825BF7B0;
  v26 = 0;
  *(v27 + 6) = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v27[0] = 0x200000000000000;
  LODWORD(v22) = v3 & 1 | (v5 << 25);
  return AGX::EndOfTileProgramKey::operator==(&v17, this);
}

BOOL AGX::EndOfTileProgramKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 40; i != 108; i += 4)
  {
    v2 |= (*(a2 + i) ^ *(a1 + i));
  }

  return (*(a2 + 112) ^ *(a1 + 112) | (*(a2 + 120) ^ *(a1 + 120)) | (*(a2 + 122) ^ *(a1 + 122)) | (*(a2 + 124) ^ *(a1 + 124)) | v2) == 0;
}

void AGX::EndOfTileProgramKey::serialize(AGX::EndOfTileProgramKey *this, const void **a2, unint64_t *a3)
{
  v5 = this + 16;
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v12);
  v6 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 22);
  v7 = *v5 + v6;
  *v7 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x45;
  *(v7 + 4) = *(v5 + 24);
  v8 = *(v5 + 40);
  v9 = *(v5 + 56);
  v10 = *(v5 + 72);
  *(v7 + 68) = *(v5 + 88);
  *(v7 + 52) = v10;
  *(v7 + 36) = v9;
  *(v7 + 20) = v8;
  v13 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v13);
  v11 = *v5;
  *a2 = *v5;
  *a3 = *(v5 + 1) - v11;
}

uint64_t std::__function::__func<AGCModule<AGX::BackgroundObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::BackgroundObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE978;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)13,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t AGX::BackgroundObjectProgramKey::isPrecompiledToPipelineCache(AGX::BackgroundObjectProgramKey *this)
{
  v1 = *(this + 18);
  v2 = 1;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  WORD6(v14) = 256;
  v3 = v1 & 0x10000000 | (((3 - __clz(1 << ((v1 >> 10) & 3) << 24)) & 3) << 10) | 0x400000;
  LODWORD(v14) = v3;
  for (i = 40; i != 72; i += 4)
  {
    v2 &= *&v11[i] == *(this + i);
  }

  v5 = *(this + 10);
  if (v3 != v1 || *(&v14 + 1) != v5)
  {
    v2 = 0;
  }

  if (v2)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  LOBYTE(v8) = 1;
  for (j = 40; j != 72; j += 4)
  {
    v8 = v8 & (*(this + j) == *&v11[j]);
  }

  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 == 0;
  }

  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void AGX::BackgroundObjectProgramKey::serialize(AGX::BackgroundObjectProgramKey *this, const void **a2, unint64_t *a3)
{
  v5 = this + 16;
  *(this + 3) = *(this + 2);
  v13 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v13);
  v6 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 4);
  v7 = *v5 + v6;
  *v7 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x44;
  *(v7 + 4) = *(v5 + 8);
  v8 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v8 >> 2) + 12);
  v9 = *v5 + v8;
  *v9 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x42;
  v10 = *(v5 + 24);
  v11 = *(v5 + 40);
  *(v9 + 36) = *(v5 + 7);
  *(v9 + 20) = v11;
  *(v9 + 4) = v10;
  v14 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v14);
  v12 = *v5;
  *a2 = *v5;
  *a3 = *(v5 + 1) - v12;
}

uint64_t AIRNTEmitPipelineImageInternal(int a1, unsigned __int8 *a2, const char *a3, AGCTarget *this, Air::FunctionScript *a5, void *a6, void *a7, void **a8, void *a9, char *a10)
{
  v14 = this;
  v175 = *MEMORY[0x277D85DE8];
  v17 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (!v17)
  {
    std::to_string(&v125, v14);
    v29 = std::string::insert(&v125, 0, "Unknown AGC target for CPU subtype: ");
    v31 = v29->__r_.__value_.__r.__words[2];
    v144 = *&v29->__r_.__value_.__l.__data_;
    v145 = v31;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = SHIBYTE(v145);
    v33 = v144;
    if (v145 >= 0)
    {
      v34 = &v144;
    }

    else
    {
      v34 = v144;
    }

    AGCError::logError(a10, v34, v30);
    if (v32 < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    goto LABEL_23;
  }

  v18 = v17;
  v85 = a6;
  TargetContext = AGCNativeTranslator::getTargetContext(v17);
  v21 = *AGCNativeTranslator::getTargetContext(v18);
  if (!v21)
  {
    v35 = "AGX key factory does not exist for target architecture.";
    v36 = a10;
LABEL_22:
    AGCError::logError(v36, v35, v20);
LABEL_23:
    v37 = 0;
    goto LABEL_125;
  }

  v22 = (a5 - *a5);
  v23 = *v22;
  if (v23 >= 9 && v22[4])
  {
    if (v23 >= 0xB && *(a5 + v22[4]) == 1)
    {
      v25 = v22[5];
      if (v22[5])
      {
        if (a2[232])
        {
          v26 = TargetContext;
          v27 = a5 + v25;
          v28 = *(a5 + v25);
          if (a2[199] < 0)
          {
            std::string::__init_copy_ctor_external(&v141, *(a2 + 22), *(a2 + 23));
          }

          else
          {
            v141 = *(a2 + 176);
          }

          if (a2[223] < 0)
          {
            std::string::__init_copy_ctor_external(&v142, *(a2 + 25), *(a2 + 26));
          }

          else
          {
            v142 = *(a2 + 200);
          }

          v143 = a2[224];
          v140 = 0;
          v138 = 0;
          v139 = 0;
          v137 = 0;
          v135 = 0;
          v136 = 0;
          (*(*v21 + 16))(&v125, v21, &v27[v28], &v141, 0, &v138, &v135, 0);
          if (v135)
          {
            v136 = v135;
            operator delete(v135);
          }

          if (v138)
          {
            v139 = v138;
            operator delete(v138);
          }

          if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v142.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          v72 = v128 & 0xFFFFF1FFF27FFFFFLL | (a2[9] << 23) | (a2[10] << 24) | (a2[11] << 27);
          v73 = a2[3];
          v74 = a2[4];
          v75 = a2[5];
          HIDWORD(v127) = HIDWORD(v127) & 0x8BFFFEF4 | (*a2 << 26) | (a2[1] << 8) | (a2[2] << 28) | (a2[6] << 29) | (a2[8] << 30) | a2[16] | (2 * a2[17]) | (8 * a2[18]);
          v128 = v72 | (v73 << 41) | (v74 << 42) | (v75 << 43) | (a2[19] << 26);
          v76 = *a3;
          *a3 = 0;
          *&v144 = &unk_2825BE340;
          AGX::Impl::VertexProgramKey::VertexProgramKey((&v144 + 8), &v125);
          MEMORY[0x20F32FFB0](&v163);
          v164 = v76;
          v165 = 0;
          v166 = 0;
          *&v144 = &unk_2825BE310;
          v37 = AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(&v144, *(v26 + 8), v85, a7, a10, a8, a9);
          v77 = v164;
          *&v144 = &unk_2825BE340;
          v164 = 0;
          if (v77)
          {
            (*(*v77 + 8))(v77);
          }

          llvm::LLVMContext::~LLVMContext(&v163);
          AGX::Impl::VertexProgramKey::~VertexProgramKey(&v144 + 1);
          AGX::Impl::VertexProgramKey::~VertexProgramKey(&v125.__r_.__value_.__l.__data_);
          goto LABEL_125;
        }

        goto LABEL_148;
      }
    }

    if (v22[4])
    {
      if (v23 >= 0xB && *(a5 + v22[4]) == 2)
      {
        v39 = v22[5];
        if (v22[5])
        {
          if (a2[168])
          {
            v40 = a5 + v39;
            v41 = *(a5 + v39);
            v42 = a2[96];
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            __p = 0;
            v120 = 0;
            (*(*v21 + 40))(&v125, v21, &v40[v41], v42, 0, &v122, &__p, *(a2 + 38), *(a2 + 39), *(a2 + 40));
            if (__p)
            {
              v120 = __p;
              operator delete(__p);
            }

            if (v122)
            {
              v123 = v122;
              operator delete(v122);
            }

            v43 = TargetContext;
            v44 = HIDWORD(v132) & 0xFFFFC777 | (8 * a2[12]) | (a2[3] << 11) | (a2[4] << 12) | (a2[5] << 13) | (a2[19] << 7);
            HIDWORD(v131) = HIDWORD(v131) & 0x8BFFFEF4 | (*a2 << 26) | (a2[1] << 8) | (a2[2] << 28) | (a2[6] << 29) | (a2[8] << 30) | a2[16] | (2 * a2[17]) | (8 * a2[18]);
            HIDWORD(v132) = v44;
            if (a2[96] == 1)
            {
              if (a2[127] < 0)
              {
                std::string::__init_copy_ctor_external(&v117, *(a2 + 13), *(a2 + 14));
              }

              else
              {
                v117 = *(a2 + 104);
              }

              if (a2[151] < 0)
              {
                std::string::__init_copy_ctor_external(&v118, *(a2 + 16), *(a2 + 17));
              }

              else
              {
                v118 = *(a2 + 128);
              }

              AGX::Impl::FragmentProgramKey::setVertexVaryings(&v125, &v117);
              if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v118.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v117.__r_.__value_.__l.__data_);
              }
            }

            v79 = *a3;
            *a3 = 0;
            *&v144 = &unk_2825BE428;
            AGX::Impl::FragmentProgramKey::FragmentProgramKey((&v144 + 8), &v125);
            MEMORY[0x20F32FFB0](&v167);
            v168 = v79;
            v169 = 0;
            v170 = 0;
            *&v144 = &unk_2825BE3F8;
            v171 = 0u;
            v172 = 0u;
            v173 = 0u;
            v174 = 0;
            v37 = AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(&v144, *(v43 + 8), v85, a7, a10, a8, a9);
            *&v144 = &unk_2825BE3F8;
            if (SHIBYTE(v173) < 0)
            {
              operator delete(*(&v172 + 1));
            }

            if (SBYTE7(v172) < 0)
            {
              operator delete(v171);
            }

            v80 = v168;
            *&v144 = &unk_2825BE428;
            v168 = 0;
            if (v80)
            {
              (*(*v80 + 8))(v80);
            }

            llvm::LLVMContext::~LLVMContext(&v167);
            AGX::Impl::FragmentProgramKey::~FragmentProgramKey((&v144 + 8));
            AGX::Impl::FragmentProgramKey::~FragmentProgramKey(&v125);
            goto LABEL_125;
          }

LABEL_148:
          std::__throw_bad_optional_access[abi:nn200100]();
          goto LABEL_149;
        }
      }

      if (v22[4])
      {
        if (v23 >= 0xB && *(a5 + v22[4]) == 3)
        {
          v45 = v22[5];
          if (v22[5])
          {
            v46 = a5 + v45;
            v47 = *(a5 + v45);
            v115 = 0;
            v116 = 0;
            v113 = 0;
            v114 = 0;
            v111 = 0;
            v112 = 0;
            (*(*v21 + 48))(&v125, v21, &v46[v47], 0, &v114, &v111);
            if (v111)
            {
              v112 = v111;
              operator delete(v111);
            }

            v84 = TargetContext;
            if (v114)
            {
              v115 = v114;
              operator delete(v114);
            }

            v48 = v128 & 0xFFFFC63B | (4 * a2[13]) | (a2[14] << 6) | (a2[15] << 7) | (a2[3] << 11) | (a2[4] << 12) | (a2[5] << 13) | (a2[19] << 8);
            HIDWORD(v127) = HIDWORD(v127) & 0x8BFFFEF4 | (*a2 << 26) | (a2[1] << 8) | (a2[2] << 28) | (a2[6] << 29) | (a2[8] << 30) | a2[16] | (2 * a2[17]) | (8 * a2[18]);
            LODWORD(v128) = v48;
            v49 = *a3;
            *a3 = 0;
            *&v144 = &unk_2825BE4A0;
            *(&v144 + 1) = &unk_2825BE4D0;
            LODWORD(v145) = v125.__r_.__value_.__r.__words[1];
            v148 = 0;
            v146 = 0;
            v147 = 0;
            v50 = v126 - v125.__r_.__value_.__r.__words[2];
            if (v126 != v125.__r_.__value_.__r.__words[2])
            {
              if (!((v50 >> 2) >> 62))
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v50 >> 2);
              }

LABEL_149:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v149 = v127;
            *(&v144 + 1) = &unk_2825BF9D8;
            v150 = v128;
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v151, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              v151 = __s;
            }

            v152 = v130;
            v155 = 0;
            v153 = 0;
            __dst = 0;
            if (v132 != v131)
            {
              std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v153, (v132 - v131) >> 5);
            }

            v157 = 0;
            v156 = 0;
            v158 = 0;
            if (v134 != v133)
            {
              std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v156, (v134 - v133) >> 5);
            }

            MEMORY[0x20F32FFB0](&v159);
            v160 = v49;
            v161 = 0;
            v162 = 0;
            *&v144 = &unk_2825BE470;
            v37 = AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(&v144, *(v84 + 8), v85, a7, a10, a8, a9);
            v83 = v160;
            *&v144 = &unk_2825BE4A0;
            v160 = 0;
            if (v83)
            {
              (*(*v83 + 8))(v83);
            }

            llvm::LLVMContext::~LLVMContext(&v159);
            *(&v144 + 1) = &unk_2825BF9D8;
            if (v156)
            {
              v157 = v156;
              operator delete(v156);
            }

            if (v153)
            {
              __dst = v153;
              operator delete(v153);
            }

            if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v151.__r_.__value_.__l.__data_);
            }

            *(&v144 + 1) = &unk_2825BE4D0;
            if (v146)
            {
              v147 = v146;
              operator delete(v146);
            }

            v125.__r_.__value_.__r.__words[0] = &unk_2825BF9D8;
            if (v133)
            {
              v134 = v133;
              operator delete(v133);
            }

            if (v131)
            {
              v132 = v131;
              operator delete(v131);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            v67 = &unk_2825BE4D0;
            goto LABEL_85;
          }
        }

        if (v22[4])
        {
          if (v23 >= 0xB && *(a5 + v22[4]) == 4)
          {
            v51 = v22[5];
            if (v51)
            {
              v52 = *(a5 + v51);
              v109 = 0;
              v110 = 0;
              v107 = 0;
              v108 = 0;
              v105 = 0;
              v106 = 0;
              (*(*v21 + 56))(&v125, v21, a5 + v51 + v52, &v108, &v105);
              if (v105)
              {
                v106 = v105;
                operator delete(v105);
              }

              if (v108)
              {
                v109 = v108;
                operator delete(v108);
              }

              AGX::DeviceOptions::modifyContextState<_AGCFragmentContextStateAGP>(a2, &v127);
              AGX::CompileOptions::modifyContextState<_AGCFragmentContextStateAGP>(a2 + 16, &v127);
              v53 = *a3;
              *a3 = 0;
              v104 = v53;
              AGCTileFunction::AGCTileFunction(&v144, &v104, &v125);
              if (v104)
              {
                (*(*v104 + 8))(v104);
              }

              v37 = AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(&v144, *(TargetContext + 8), v85, a7, a10, a8, a9);
              AGCTileFunction::~AGCTileFunction(&v144);
              AGX::Impl::TileProgramKey::~TileProgramKey(&v125);
              goto LABEL_125;
            }
          }
        }
      }
    }
  }

  v54 = TargetContext;
  v55 = Air::FunctionScript::function_as_mesh(a5);
  if (!v55)
  {
    v60 = Air::FunctionScript::function_as_object(a5);
    if (v60)
    {
      if ((a2[242] & 1) == 0)
      {
        goto LABEL_148;
      }

      v61 = a2[240];
      v62 = a2[241];
      v94 = 0;
      v95 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0;
      (*(*v21 + 24))(&v125, v21, v60, v61, v62, 0, &v93, &v90);
      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      AGX::DeviceOptions::modifyContextState<_AGCObjectContextStateAGP>(a2, &v127);
      HIDWORD(v127) = HIDWORD(v127) & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
      v63 = *a3;
      *a3 = 0;
      v89 = v63;
      AGCObjectFunction::AGCObjectFunction(&v144, &v89, &v125);
      if (v89)
      {
        (*(*v89 + 8))(v89);
      }

      v37 = AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(&v144, *(TargetContext + 8), v85, a7, a10, a8, a9);
      AGCObjectFunction::~AGCObjectFunction(&v144);
      AGX::Impl::ObjectProgramKey::~ObjectProgramKey(&v125);
      goto LABEL_125;
    }

    v64 = Air::FunctionScript::function_as_visible(a5);
    if (v64)
    {
      (*(*v21 + 64))(&v125, v21, v64);
      AGX::Impl::DynamicLibraryKey::setDeviceOptions(&v125, a2);
      LODWORD(v127) = v127 & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
      v65 = *a3;
      *a3 = 0;
      v88 = v65;
      AGCDylib::AGCDylib(&v144, &v88, &v125);
      v66 = v88;
      if (v88)
      {
LABEL_83:
        (*(*v66 + 8))(v66);
      }

LABEL_84:
      v37 = AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(&v144, *(v54 + 8), v85, a7, a10);
      AGCDylib::~AGCDylib(&v144);
      v67 = &unk_2825BE090;
LABEL_85:
      v125.__r_.__value_.__r.__words[0] = v67;
      if (v125.__r_.__value_.__r.__words[2])
      {
        v126 = v125.__r_.__value_.__r.__words[2];
        operator delete(v125.__r_.__value_.__r.__words[2]);
      }

      goto LABEL_125;
    }

    v68 = Air::FunctionScript::function_as_intersection(a5);
    if (v68)
    {
      v69 = v68;
      v70 = AGCTarget::Get(v18);
      if (!((*v70)[3])(v70))
      {
        (*(*v21 + 88))(&v125, v21, v69);
        LODWORD(v127) = v127 & 0xFF9BFFC7 | (a2[3] << 18) | (a2[4] << 21) | (a2[5] << 22) | (8 * a2[16]) | (16 * a2[17]) | (32 * a2[18]);
        v78 = *a3;
        *a3 = 0;
        v86 = v78;
        AGCIntersectionFunction::AGCIntersectionFunction(&v144, &v86, &v125);
        if (v86)
        {
          (*(*v86 + 8))(v86);
        }

        v37 = AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(&v144, *(v54 + 8), v85, a7, a10);
        AGCIntersectionFunction::~AGCIntersectionFunction(&v144);
        AGX::Impl::UserIntersectionProgramKey::~UserIntersectionProgramKey(&v125);
        goto LABEL_125;
      }

      (*(*v21 + 72))(&v125, v21, v69);
      AGX::Impl::DynamicLibraryKey::setDeviceOptions(&v125, a2);
      LODWORD(v127) = v127 & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
      v71 = *a3;
      *a3 = 0;
      v87 = v71;
      AGCDylib::AGCDylib(&v144, &v87, &v125);
      v66 = v87;
      if (v87)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v35 = "Unsupported function script.";
    v36 = a10;
    goto LABEL_22;
  }

  if ((a2[88] & 1) == 0)
  {
    goto LABEL_148;
  }

  v56 = v55;
  AGX::FragmentProgramVaryings::FragmentProgramVaryings(&v103, a2 + 2);
  v57 = a2[24];
  v58 = a2[25];
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  (*(*v21 + 32))(&v125, v21, v56, &v103, v57, v58, 0, &v100, &v97, 0);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&v103.__r_.__value_.__l.__data_);
  AGX::DeviceOptions::modifyContextState<_AGCMeshContextStateAGP>(a2, &v127);
  HIDWORD(v127) = HIDWORD(v127) & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
  v59 = *a3;
  *a3 = 0;
  v96 = v59;
  AGCMeshFunction::AGCMeshFunction(&v144, &v96, &v125);
  if (v96)
  {
    (*(*v96 + 8))(v96);
  }

  v37 = AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(&v144, *(v54 + 8), v85, a7, a10, a8, a9);
  AGCMeshFunction::~AGCMeshFunction(&v144);
  AGX::Impl::MeshProgramKey::~MeshProgramKey(&v125.__r_.__value_.__l.__data_);
LABEL_125:
  v81 = *MEMORY[0x277D85DE8];
  return v37;
}

AGX::Impl::VertexProgramKey *AGX::Impl::VertexProgramKey::VertexProgramKey(AGX::Impl::VertexProgramKey *this, const AGX::Impl::VertexProgramKey *a2)
{
  *this = &unk_2825BE3B8;
  *(this + 2) = *(a2 + 2);
  std::vector<unsigned int>::vector[abi:nn200100](this + 2, a2 + 2);
  *this = &unk_2825BE370;
  v4 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v4;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v5 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v5;
  }

  *(this + 22) = *(a2 + 22);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 12, a2 + 12);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 15, a2 + 15);
  *this = &unk_2825BF870;
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v6 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v6;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v7 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v7;
  }

  *(this + 192) = *(a2 + 192);
  return this;
}

uint64_t AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v87 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
LABEL_57:
    v49 = 0;
    goto LABEL_87;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 216);
  v71 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v82);
    if (BYTE8(v82))
    {
      v20 = v82;
      *&v82 = 0;
      v79 = v20;
      llvm::toString(v84, &v79);
      v21 = std::string::insert(v84, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }

      if (v79)
      {
        (*(*v79 + 8))(v79);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v82;
      v85 = 260;
      *v84 = v82 + 216;
      MEMORY[0x20F330F20](&c, v84);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v84, &c), pluginSupportsOSVersion(*v84)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v84, &c);
        v28 = 1;
      }

      else
      {
        v69 = v15;
        v70 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v84[23];
        v36 = *v84;
        if (v84[23] >= 0)
        {
          v37 = v84;
        }

        else
        {
          v37 = *v84;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v70;
        v15 = v69;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v82))
    {
      v38 = v82;
      *&v82 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v71)(v71, v18, v71 + 208, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v68 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v77, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v71 + 256) == 1)
    {
      v45 = *(v71 + 240);
      v82 = *(v71 + 224);
      v83 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v80);
      v64 = *(v71 + 216);
      if (v64)
      {
        (*(*v64 + 32))(v64, &v80);
      }

      memset(v84, 0, sizeof(v84));
      CC_SHA256_Init(&c);
      (**(v71 + 8))(v71 + 8, &c);
      CC_SHA256_Final(v84, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v80);
      v65 = *(v71 + 256);
      v66 = *&c.hash[2];
      *(v71 + 224) = *c.count;
      *(v71 + 240) = v66;
      if ((v65 & 1) == 0)
      {
        *(v71 + 256) = 1;
      }

      v67 = *(v71 + 240);
      v82 = *(v71 + 224);
      v83 = v67;
      llvm::SHA256::~SHA256(&v80);
    }

    *c.count = v82;
    *&c.hash[2] = v83;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v84, 0, v77, __p, &c);
    v47 = *v84;
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v80 = 0;
    v81[0] = &unk_2825BEA50;
    v81[1] = v71;
    v81[3] = v81;
    *&v82 = 0;
    v49 = (*(*v41 + 24))(v41, &v82, &v80, &c, v81);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v81);
    if (v15)
    {
      v72 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v72;
    }

    if (v49)
    {
      *a3 = v82;
      *v68 = v80;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v84, "Error occurred composing compiler reply.");
      if ((v84[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v73, *v84, *&v84[8]);
      }

      else
      {
        v73 = *v84;
      }

      v56 = &v73;
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v73.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v58 = v84[23];
      v59 = *v84;
      if (v84[23] >= 0)
      {
        v60 = v84;
      }

      else
      {
        v60 = *v84;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v74 = *(v41 + 1656);
    }

    v53 = &v74;
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v74.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

void AGX::Impl::VertexProgramKey::~VertexProgramKey(void **this)
{
  *this = &unk_2825BF870;
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  *this = &unk_2825BE370;
  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_2825BE3B8;
  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

__n128 AGX::Impl::FragmentProgramKey::setVertexVaryings(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v4 = *a2;
  *(a1 + 168) = *(a2 + 2);
  *(a1 + 152) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  result = *(a2 + 24);
  *(a1 + 192) = *(a2 + 5);
  *(a1 + 176) = result;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
LABEL_57:
    v48 = 0;
    goto LABEL_87;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 296);
  v71 = v15;
  if (v19)
  {
    (*(*v19 + 24))(&v81);
    if (BYTE8(v81))
    {
      v20 = v81;
      *&v81 = 0;
      v78 = v20;
      llvm::toString(v83, &v78);
      v21 = std::string::insert(v83, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v83[23] & 0x80000000) != 0)
      {
        operator delete(*v83);
      }

      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v81;
      v84 = 260;
      *v83 = v81 + 216;
      MEMORY[0x20F330F20](&c, v83);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v83, &c), pluginSupportsOSVersion(*v83)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v83, &c);
        AGX::Impl::FragmentProgramKey::legalizeStateForTargetOS((a1 + 8), v83);
        v28 = 1;
      }

      else
      {
        v69 = v16;
        v70 = v8;
        v31 = a3;
        v32 = a4;
        std::operator+<char>();
        v34 = v83[23];
        v35 = *v83;
        if (v83[23] >= 0)
        {
          v36 = v83;
        }

        else
        {
          v36 = *v83;
        }

        AGCError::logError(a5, v36, v33);
        if (v34 < 0)
        {
          operator delete(v35);
        }

        v28 = 0;
        a4 = v32;
        a3 = v31;
        v8 = v70;
        v16 = v69;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v81))
    {
      v37 = v81;
      *&v81 = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
  }

  v38 = (**a1)(a1, v18, a1 + 288, v27);
  if (!v38)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v40 = v38;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v68 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v39)) != 0 && *Value != 48 && (v42 = atoi(Value), v42))
  {
    AGCPrinterFactory::Get(v42);
    v43 = (*(*v40 + 48))(v40);
    std::string::basic_string[abi:nn200100]<0>(v76, v43);
    (*(*v40 + 40))(__p, v40);
    if (*(a1 + 336) == 1)
    {
      v44 = *(a1 + 320);
      v81 = *(a1 + 304);
      v82 = v44;
    }

    else
    {
      llvm::SHA256::SHA256(&v79);
      v64 = *(a1 + 296);
      if (v64)
      {
        (*(*v64 + 32))(v64, &v79);
      }

      memset(v83, 0, sizeof(v83));
      CC_SHA256_Init(&c);
      (**(a1 + 8))(a1 + 8, &c);
      CC_SHA256_Final(v83, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v79);
      v65 = *(a1 + 336);
      v66 = *&c.hash[2];
      *(a1 + 304) = *c.count;
      *(a1 + 320) = v66;
      if ((v65 & 1) == 0)
      {
        *(a1 + 336) = 1;
      }

      v67 = *(a1 + 320);
      v81 = *(a1 + 304);
      v82 = v67;
      llvm::SHA256::~SHA256(&v79);
    }

    *c.count = v81;
    *&c.hash[2] = v82;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v83, 0, v76, __p, &c);
    v47 = *v83;
    if (v75 < 0)
    {
      operator delete(__p[0]);
    }

    v45 = v16;
    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v46 = v47;
  }

  else
  {
    v45 = v16;
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v40 + 64))(v40, v47);
  if ((*(*v40 + 16))(v40))
  {
    memset(&c, 0, 32);
    v79 = 0;
    v80[0] = &unk_2825BE8A0;
    v80[1] = a1;
    v80[3] = v80;
    *&v81 = 0;
    v48 = (*(*v40 + 24))(v40, &v81, &v79, &c, v80);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v80);
    if (v71)
    {
      v49 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v45;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v49;
    }

    if (v48)
    {
      *a3 = v81;
      *v68 = v79;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v83, "Error occurred composing compiler reply.");
      if ((v83[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v83, *&v83[8]);
      }

      else
      {
        v72 = *v83;
      }

      v56 = &v72;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v72.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v40 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v58 = v83[23];
      v59 = *v83;
      if (v83[23] >= 0)
      {
        v60 = v83;
      }

      else
      {
        v60 = *v83;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v40 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, *(v40 + 1656), *(v40 + 1664));
    }

    else
    {
      v73 = *(v40 + 1656);
    }

    v53 = &v73;
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v73.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v40 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (*(v40 + 1679) >= 0)
    {
      v55 = (v40 + 1656);
    }

    else
    {
      v55 = *(v40 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v48 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v40 + 8))(v40);
LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
  return v48;
}

void AGX::Impl::FragmentProgramKey::~FragmentProgramKey(AGX::Impl::FragmentProgramKey *this)
{
  *this = &unk_2825BF948;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  *this = &unk_2825BFA50;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v87 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
LABEL_57:
    v49 = 0;
    goto LABEL_87;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 160);
  v71 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v82);
    if (BYTE8(v82))
    {
      v20 = v82;
      *&v82 = 0;
      v79 = v20;
      llvm::toString(v84, &v79);
      v21 = std::string::insert(v84, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }

      if (v79)
      {
        (*(*v79 + 8))(v79);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v82;
      v85 = 260;
      *v84 = v82 + 216;
      MEMORY[0x20F330F20](&c, v84);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v84, &c), pluginSupportsOSVersion(*v84)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v84, &c);
        v28 = 1;
      }

      else
      {
        v69 = v15;
        v70 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v84[23];
        v36 = *v84;
        if (v84[23] >= 0)
        {
          v37 = v84;
        }

        else
        {
          v37 = *v84;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v70;
        v15 = v69;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v82))
    {
      v38 = v82;
      *&v82 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v71)(v71, v18, v71 + 152, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v68 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v77, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v71 + 200) == 1)
    {
      v45 = *(v71 + 184);
      v82 = *(v71 + 168);
      v83 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v80);
      v64 = *(v71 + 160);
      if (v64)
      {
        (*(*v64 + 32))(v64, &v80);
      }

      memset(v84, 0, sizeof(v84));
      CC_SHA256_Init(&c);
      (**(v71 + 8))(v71 + 8, &c);
      CC_SHA256_Final(v84, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v80);
      v65 = *(v71 + 200);
      v66 = *&c.hash[2];
      *(v71 + 168) = *c.count;
      *(v71 + 184) = v66;
      if ((v65 & 1) == 0)
      {
        *(v71 + 200) = 1;
      }

      v67 = *(v71 + 184);
      v82 = *(v71 + 168);
      v83 = v67;
      llvm::SHA256::~SHA256(&v80);
    }

    *c.count = v82;
    *&c.hash[2] = v83;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v84, 0, v77, __p, &c);
    v47 = *v84;
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v80 = 0;
    v81[0] = &unk_2825BEA98;
    v81[1] = v71;
    v81[3] = v81;
    *&v82 = 0;
    v49 = (*(*v41 + 24))(v41, &v82, &v80, &c, v81);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v81);
    if (v15)
    {
      v72 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v72;
    }

    if (v49)
    {
      *a3 = v82;
      *v68 = v80;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v84, "Error occurred composing compiler reply.");
      if ((v84[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v73, *v84, *&v84[8]);
      }

      else
      {
        v73 = *v84;
      }

      v56 = &v73;
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v73.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v58 = v84[23];
      v59 = *v84;
      if (v84[23] >= 0)
      {
        v60 = v84;
      }

      else
      {
        v60 = *v84;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v74 = *(v41 + 1656);
    }

    v53 = &v74;
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v74.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

_BYTE *AGX::DeviceOptions::modifyContextState<_AGCFragmentContextStateAGP>(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 60) & 0xFBFFFFFF | ((*result & 1) << 26);
  *(a2 + 60) = v2;
  v3 = v2 & 0xFFFFFEFF | ((result[1] & 1) << 8);
  *(a2 + 60) = v3;
  v4 = v3 & 0xEFFFFFFF | ((result[2] & 1) << 28);
  *(a2 + 60) = v4;
  v5 = v4 & 0xDFFFFFFF | ((result[6] & 1) << 29);
  *(a2 + 60) = v5;
  *(a2 + 60) = v5 & 0xBFFFFFFF | ((result[8] & 1) << 30);
  v6 = *(a2 + 68) & 0xFFFFFFF7 | (8 * (result[12] & 1));
  *(a2 + 68) = v6;
  v7 = v6 & 0xFFFFF7FF | ((result[3] & 1) << 11);
  *(a2 + 68) = v7;
  v8 = v7 & 0xFFFFEFFF | ((result[4] & 1) << 12);
  *(a2 + 68) = v8;
  *(a2 + 68) = v8 & 0xFFFFDFFF | ((result[5] & 1) << 13);
  return result;
}

unsigned __int8 *AGX::CompileOptions::modifyContextState<_AGCFragmentContextStateAGP>(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 60) & 0xFFFFFFFE | *result;
  *(a2 + 60) = v2;
  v3 = v2 & 0xFFFFFFFD | (2 * (result[1] & 1));
  *(a2 + 60) = v3;
  *(a2 + 60) = v3 & 0xFFFFFFF7 | (8 * (result[2] & 1));
  *(a2 + 68) = *(a2 + 68) & 0xFFFFFF7F | ((result[3] & 1) << 7);
  return result;
}

uint64_t AGCTileFunction::AGCTileFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE540;
  *(a1 + 8) = &unk_2825BE570;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BF998;
  v6 = *(a3 + 40);
  v7 = *(a3 + 56);
  v8 = *(a3 + 88);
  *(a1 + 80) = *(a3 + 72);
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = *(a3 + 104);
  v10 = *(a3 + 120);
  v11 = *(a3 + 136);
  *(a1 + 160) = *(a3 + 152);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 168), (a3 + 160));
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 192), (a3 + 184));
  MEMORY[0x20F32FFB0](a1 + 216);
  *(a1 + 224) = v5;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *a1 = &unk_2825BE510;
  AGCTileFunction::init(a1);
  return a1;
}

uint64_t AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v87 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
LABEL_57:
    v49 = 0;
    goto LABEL_87;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 224);
  v71 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v82);
    if (BYTE8(v82))
    {
      v20 = v82;
      *&v82 = 0;
      v79 = v20;
      llvm::toString(v84, &v79);
      v21 = std::string::insert(v84, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }

      if (v79)
      {
        (*(*v79 + 8))(v79);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v82;
      v85 = 260;
      *v84 = v82 + 216;
      MEMORY[0x20F330F20](&c, v84);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v84, &c), pluginSupportsOSVersion(*v84)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v84, &c);
        v28 = 1;
      }

      else
      {
        v69 = v15;
        v70 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v84[23];
        v36 = *v84;
        if (v84[23] >= 0)
        {
          v37 = v84;
        }

        else
        {
          v37 = *v84;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v70;
        v15 = v69;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v82))
    {
      v38 = v82;
      *&v82 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v71)(v71, v18, v71 + 216, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v68 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v77, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v71 + 264) == 1)
    {
      v45 = *(v71 + 248);
      v82 = *(v71 + 232);
      v83 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v80);
      v64 = *(v71 + 224);
      if (v64)
      {
        (*(*v64 + 32))(v64, &v80);
      }

      memset(v84, 0, sizeof(v84));
      CC_SHA256_Init(&c);
      (**(v71 + 8))(v71 + 8, &c);
      CC_SHA256_Final(v84, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v80);
      v65 = *(v71 + 264);
      v66 = *&c.hash[2];
      *(v71 + 232) = *c.count;
      *(v71 + 248) = v66;
      if ((v65 & 1) == 0)
      {
        *(v71 + 264) = 1;
      }

      v67 = *(v71 + 248);
      v82 = *(v71 + 232);
      v83 = v67;
      llvm::SHA256::~SHA256(&v80);
    }

    *c.count = v82;
    *&c.hash[2] = v83;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v84, 0, v77, __p, &c);
    v47 = *v84;
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v80 = 0;
    v81[0] = &unk_2825BEAE0;
    v81[1] = v71;
    v81[3] = v81;
    *&v82 = 0;
    v49 = (*(*v41 + 24))(v41, &v82, &v80, &c, v81);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v81);
    if (v15)
    {
      v72 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v72;
    }

    if (v49)
    {
      *a3 = v82;
      *v68 = v80;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v84, "Error occurred composing compiler reply.");
      if ((v84[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v73, *v84, *&v84[8]);
      }

      else
      {
        v73 = *v84;
      }

      v56 = &v73;
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v73.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v58 = v84[23];
      v59 = *v84;
      if (v84[23] >= 0)
      {
        v60 = v84;
      }

      else
      {
        v60 = *v84;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v74 = *(v41 + 1656);
    }

    v53 = &v74;
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v74.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

void AGCTileFunction::~AGCTileFunction(AGCTileFunction *this)
{
  *this = &unk_2825BE540;
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 216));
  *(this + 1) = &unk_2825BF998;
  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  *(this + 1) = &unk_2825BE570;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void AGX::Impl::TileProgramKey::~TileProgramKey(AGX::Impl::TileProgramKey *this)
{
  *this = &unk_2825BF998;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  *this = &unk_2825BE570;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t Air::FunctionScript::function_as_mesh(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 8) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

std::string *AGX::FragmentProgramVaryings::FragmentProgramVaryings(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  return this;
}

void AGX::FragmentProgramVaryings::~FragmentProgramVaryings(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

_BYTE *AGX::DeviceOptions::modifyContextState<_AGCMeshContextStateAGP>(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 12) & 0xFBFFFFFF | ((*result & 1) << 26);
  *(a2 + 12) = v3;
  v4 = v3 & 0xFFFFFEFF | ((result[1] & 1) << 8);
  *(a2 + 12) = v4;
  v5 = v4 & 0xEFFFFFFF | ((result[2] & 1) << 28);
  *(a2 + 12) = v5;
  v6 = v5 & 0xDFFFFFFF | ((result[6] & 1) << 29);
  *(a2 + 12) = v6;
  *(a2 + 12) = v6 & 0xBFFFFFFF | ((result[8] & 1) << 30);
  v7 = v2 & 0xFFFFFDFF | ((result[3] & 1) << 9);
  *(a2 + 16) = v7;
  v8 = v7 & 0xFFFFFBFF | ((result[4] & 1) << 10);
  *(a2 + 16) = v8;
  *(a2 + 16) = v8 & 0xFFFFF7FF | ((result[5] & 1) << 11);
  return result;
}

uint64_t AGCMeshFunction::AGCMeshFunction(uint64_t a1, uint64_t *a2, AGX::Impl::MeshProgramKey *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE5E0;
  AGX::Impl::MeshProgramKey::MeshProgramKey((a1 + 8), a3);
  MEMORY[0x20F32FFB0](a1 + 216);
  *(a1 + 224) = v4;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *a1 = &unk_2825BE5B0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  return a1;
}

uint64_t AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v87 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
LABEL_57:
    v49 = 0;
    goto LABEL_87;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 224);
  v71 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v82);
    if (BYTE8(v82))
    {
      v20 = v82;
      *&v82 = 0;
      v79 = v20;
      llvm::toString(v84, &v79);
      v21 = std::string::insert(v84, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }

      if (v79)
      {
        (*(*v79 + 8))(v79);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v82;
      v85 = 260;
      *v84 = v82 + 216;
      MEMORY[0x20F330F20](&c, v84);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v84, &c), pluginSupportsOSVersion(*v84)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v84, &c);
        v28 = 1;
      }

      else
      {
        v69 = v15;
        v70 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v84[23];
        v36 = *v84;
        if (v84[23] >= 0)
        {
          v37 = v84;
        }

        else
        {
          v37 = *v84;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v70;
        v15 = v69;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v82))
    {
      v38 = v82;
      *&v82 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v71)(v71, v18, v71 + 216, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v68 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v77, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v71 + 264) == 1)
    {
      v45 = *(v71 + 248);
      v82 = *(v71 + 232);
      v83 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v80);
      v64 = *(v71 + 224);
      if (v64)
      {
        (*(*v64 + 32))(v64, &v80);
      }

      memset(v84, 0, sizeof(v84));
      CC_SHA256_Init(&c);
      (**(v71 + 8))(v71 + 8, &c);
      CC_SHA256_Final(v84, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v80);
      v65 = *(v71 + 264);
      v66 = *&c.hash[2];
      *(v71 + 232) = *c.count;
      *(v71 + 248) = v66;
      if ((v65 & 1) == 0)
      {
        *(v71 + 264) = 1;
      }

      v67 = *(v71 + 248);
      v82 = *(v71 + 232);
      v83 = v67;
      llvm::SHA256::~SHA256(&v80);
    }

    *c.count = v82;
    *&c.hash[2] = v83;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v84, 0, v77, __p, &c);
    v47 = *v84;
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v80 = 0;
    v81[0] = &unk_2825BE698;
    v81[1] = v71;
    v81[3] = v81;
    *&v82 = 0;
    v49 = (*(*v41 + 24))(v41, &v82, &v80, &c, v81);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v81);
    if (v15)
    {
      v72 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v72;
    }

    if (v49)
    {
      *a3 = v82;
      *v68 = v80;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v84, "Error occurred composing compiler reply.");
      if ((v84[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v73, *v84, *&v84[8]);
      }

      else
      {
        v73 = *v84;
      }

      v56 = &v73;
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v73.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v58 = v84[23];
      v59 = *v84;
      if (v84[23] >= 0)
      {
        v60 = v84;
      }

      else
      {
        v60 = *v84;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v74 = *(v41 + 1656);
    }

    v53 = &v74;
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v74.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

void AGCMeshFunction::~AGCMeshFunction(void **this)
{
  *this = &unk_2825BE5B0;
  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  *this = &unk_2825BE5E0;
  v2 = this[28];
  this[28] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 27));
  AGX::Impl::MeshProgramKey::~MeshProgramKey(this + 1);
}

void AGX::Impl::MeshProgramKey::~MeshProgramKey(void **this)
{
  *this = &unk_2825BF8B8;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  *this = &unk_2825BE610;
  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }

  v3 = this[13];
  if (v3)
  {
    this[14] = v3;
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_2825BE658;
  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

uint64_t Air::FunctionScript::function_as_object(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 7) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

_BYTE *AGX::DeviceOptions::modifyContextState<_AGCObjectContextStateAGP>(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 12) & 0xFBFFFFFF | ((*result & 1) << 26);
  *(a2 + 12) = v3;
  v4 = v3 & 0xFFFFFEFF | ((result[1] & 1) << 8);
  *(a2 + 12) = v4;
  v5 = v4 & 0xEFFFFFFF | ((result[2] & 1) << 28);
  *(a2 + 12) = v5;
  v6 = v5 & 0xDFFFFFFF | ((result[6] & 1) << 29);
  *(a2 + 12) = v6;
  *(a2 + 12) = v6 & 0xBFFFFFFF | ((result[8] & 1) << 30);
  v7 = v2 & 0xFFFFFF7F | ((result[3] & 1) << 7);
  *(a2 + 16) = v7;
  v8 = v7 & 0xFFFFFEFF | ((result[4] & 1) << 8);
  *(a2 + 16) = v8;
  *(a2 + 16) = v8 & 0xFFFFFDFF | ((result[5] & 1) << 9);
  return result;
}

uint64_t AGCObjectFunction::AGCObjectFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE710;
  *(a1 + 8) = &unk_2825BE788;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BE740;
  v6 = *(a3 + 56);
  *(a1 + 48) = *(a3 + 40);
  *(a1 + 64) = v6;
  if (*(a3 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 72), *(a3 + 80));
  }

  else
  {
    v7 = *(a3 + 72);
    *(a1 + 96) = *(a3 + 88);
    *(a1 + 80) = v7;
  }

  *(a1 + 104) = *(a3 + 96);
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 112), (a3 + 104));
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 136), (a3 + 128));
  *(a1 + 8) = &unk_2825BF900;
  MEMORY[0x20F32FFB0](a1 + 160);
  *(a1 + 168) = v5;
  *(a1 + 176) = 0;
  *(a1 + 208) = 0;
  *a1 = &unk_2825BE6E0;
  return a1;
}

uint64_t AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v87 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
LABEL_57:
    v49 = 0;
    goto LABEL_87;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 168);
  v71 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v82);
    if (BYTE8(v82))
    {
      v20 = v82;
      *&v82 = 0;
      v79 = v20;
      llvm::toString(v84, &v79);
      v21 = std::string::insert(v84, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }

      if (v79)
      {
        (*(*v79 + 8))(v79);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v82;
      v85 = 260;
      *v84 = v82 + 216;
      MEMORY[0x20F330F20](&c, v84);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v84, &c), pluginSupportsOSVersion(*v84)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v84, &c);
        v28 = 1;
      }

      else
      {
        v69 = v15;
        v70 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v84[23];
        v36 = *v84;
        if (v84[23] >= 0)
        {
          v37 = v84;
        }

        else
        {
          v37 = *v84;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v70;
        v15 = v69;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v82))
    {
      v38 = v82;
      *&v82 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v71)(v71, v18, v71 + 160, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v68 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v77, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v71 + 208) == 1)
    {
      v45 = *(v71 + 192);
      v82 = *(v71 + 176);
      v83 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v80);
      v64 = *(v71 + 168);
      if (v64)
      {
        (*(*v64 + 32))(v64, &v80);
      }

      memset(v84, 0, sizeof(v84));
      CC_SHA256_Init(&c);
      (**(v71 + 8))(v71 + 8, &c);
      CC_SHA256_Final(v84, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v80);
      v65 = *(v71 + 208);
      v66 = *&c.hash[2];
      *(v71 + 176) = *c.count;
      *(v71 + 192) = v66;
      if ((v65 & 1) == 0)
      {
        *(v71 + 208) = 1;
      }

      v67 = *(v71 + 192);
      v82 = *(v71 + 176);
      v83 = v67;
      llvm::SHA256::~SHA256(&v80);
    }

    *c.count = v82;
    *&c.hash[2] = v83;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v84, 0, v77, __p, &c);
    v47 = *v84;
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v80 = 0;
    v81[0] = &unk_2825BE7C8;
    v81[1] = v71;
    v81[3] = v81;
    *&v82 = 0;
    v49 = (*(*v41 + 24))(v41, &v82, &v80, &c, v81);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v81);
    if (v15)
    {
      v72 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v72;
    }

    if (v49)
    {
      *a3 = v82;
      *v68 = v80;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v84, "Error occurred composing compiler reply.");
      if ((v84[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v73, *v84, *&v84[8]);
      }

      else
      {
        v73 = *v84;
      }

      v56 = &v73;
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v73.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v58 = v84[23];
      v59 = *v84;
      if (v84[23] >= 0)
      {
        v60 = v84;
      }

      else
      {
        v60 = *v84;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v74 = *(v41 + 1656);
    }

    v53 = &v74;
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v74.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

void AGCObjectFunction::~AGCObjectFunction(AGCObjectFunction *this)
{
  *this = &unk_2825BE710;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 160));
  *(this + 1) = &unk_2825BE740;
  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  *(this + 1) = &unk_2825BE788;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void AGX::Impl::ObjectProgramKey::~ObjectProgramKey(AGX::Impl::ObjectProgramKey *this)
{
  *this = &unk_2825BE740;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_2825BE788;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t AGX::Impl::DynamicLibraryKey::setDeviceOptions(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 44);
  v3 = *(result + 40) & 0xFBFFFFFF | ((*a2 & 1) << 26);
  *(result + 40) = v3;
  v4 = v3 & 0xFFFFFEFF | ((a2[1] & 1) << 8);
  *(result + 40) = v4;
  v5 = v4 & 0xEFFFFFFF | ((a2[2] & 1) << 28);
  *(result + 40) = v5;
  v6 = v5 & 0xDFFFFFFF | ((a2[6] & 1) << 29);
  *(result + 40) = v6;
  *(result + 40) = v6 & 0xBFFFFFFF | ((a2[8] & 1) << 30);
  v7 = v2 & 0xFFFFFFFD | (2 * (a2[4] & 1));
  *(result + 44) = v7;
  *(result + 44) = v7 & 0xFFFFFFFB | (4 * (a2[5] & 1));
  return result;
}

uint64_t AGCDylib::AGCDylib(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE060;
  *(a1 + 8) = &unk_2825BE090;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BF6F0;
  *(a1 + 48) = *(a3 + 40);
  MEMORY[0x20F32FFB0](a1 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *a1 = &unk_2825BE030;
  return a1;
}

void AGCDylib::~AGCDylib(AGCDylib *this)
{
  *this = &unk_2825BE060;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 56));
  *(this + 1) = &unk_2825BE090;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

uint64_t AGCIntersectionFunction::AGCIntersectionFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE100;
  *(a1 + 8) = &unk_2825BE130;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BF730;
  *(a1 + 48) = *(a3 + 40);
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 56), (a3 + 48));
  MEMORY[0x20F32FFB0](a1 + 80);
  *(a1 + 88) = v5;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *a1 = &unk_2825BE0D0;
  return a1;
}

void AGCIntersectionFunction::~AGCIntersectionFunction(AGCIntersectionFunction *this)
{
  *this = &unk_2825BE100;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 80));
  *(this + 1) = &unk_2825BF730;
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_2825BE130;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void AGX::Impl::UserIntersectionProgramKey::~UserIntersectionProgramKey(AGX::Impl::UserIntersectionProgramKey *this)
{
  *this = &unk_2825BF730;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_2825BE130;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::serialize(uint64_t a1, std::vector<unsigned int>::pointer *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v11 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v11);
  v7 = *(a1 + 24) - v6->__begin_;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 10);
  v8 = v6->__begin_ + v7;
  *v8 = ((*(a1 + 24) - v6->__begin_) >> 2 << 8) | 0x3D;
  v9 = *(a1 + 40);
  *(v8 + 20) = *(a1 + 56);
  *(v8 + 4) = v9;
  (*(*a1 + 48))(a1);
  v12 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v12);
  begin = v6->__begin_;
  *a2 = v6->__begin_;
  *a3 = *(a1 + 24) - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE7C8;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::serialize(uint64_t a1, std::vector<unsigned int>::pointer *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v11 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v11);
  v7 = *(a1 + 24) - v6->__begin_;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 10);
  v8 = v6->__begin_ + v7;
  *v8 = ((*(a1 + 24) - v6->__begin_) >> 2 << 8) | 0x3E;
  v9 = *(a1 + 40);
  *(v8 + 20) = *(a1 + 56);
  *(v8 + 4) = v9;
  (*(*a1 + 48))(a1);
  v12 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v12);
  begin = v6->__begin_;
  *a2 = v6->__begin_;
  *a3 = *(a1 + 24) - begin;
}

std::string *AGCMeshFunction::cacheMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a2 + 72), (a1 + 272));
  result = std::string::operator=((a2 + 96), (a1 + 296));
  *(a2 + 120) = *(a1 + 320);
  return result;
}

std::string *AGCMeshFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 272), (a2 + 72));
  result = std::string::operator=((a1 + 296), (a2 + 96));
  *(a1 + 320) = *(a2 + 120);
  return result;
}

void AGCMeshFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  v44[2] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 64) & 0x80) == 0)
  {
    goto LABEL_33;
  }

  v4 = 0;
  v44[0] = 0;
  *(v44 + 7) = 0;
  v43[0] = 0;
  *(v43 + 7) = 0;
  if (*(a2 + 464))
  {
    v5 = *(a2 + 472) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = 464;
  if (v5)
  {
    v6 = 1024;
  }

  v7 = a2 + 1024;
  if (!v5)
  {
    v7 = a2 + 464;
  }

  v8 = *(a2 + v6);
  if (v8)
  {
    v9 = *(v7 + 8) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v4 = (v8 + *v8);
  }

  v10 = (v4 - *v4);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = (v4 + v11 + *(v4 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 - *v12);
  v14 = *v13;
  if (v14 < 0xB)
  {
    goto LABEL_25;
  }

  if (v13[5])
  {
    v15 = (v12 + v13[5] + *(v12 + v13[5]));
  }

  else
  {
    v15 = 0;
  }

  if (v14 < 0xD || (v16 = v13[6]) == 0)
  {
    v17 = 0;
    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_27:
    std::string::basic_string[abi:nn200100](&v40, v15 + 1, *v15);
    v19 = v42;
    v18 = v40;
    v44[0] = *v41;
    *(v44 + 7) = *&v41[7];
    std::string::basic_string[abi:nn200100](&v40, v17 + 1, *v17);
    v21 = v42;
    v20 = v40;
    v43[0] = *v41;
    *(v43 + 7) = *&v41[7];
    goto LABEL_28;
  }

  v17 = (v12 + v16 + *(v12 + v16));
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_25:
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_28:
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v22 = v44[0];
  *(a1 + 272) = v18;
  *(a1 + 280) = v22;
  *(a1 + 287) = *(v44 + 7);
  *(a1 + 295) = v19;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v23 = v43[0];
  *(a1 + 296) = v20;
  *(a1 + 304) = v23;
  *(a1 + 311) = *(v43 + 7);
  *(a1 + 319) = v21;
LABEL_33:
  v24 = a2 + 1024;
  if (*(a2 + 464))
  {
    v25 = *(a2 + 472) == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = 464;
  if (v25)
  {
    v26 = 1024;
  }

  else
  {
    v24 = a2 + 464;
  }

  v27 = *(a2 + v26);
  v28 = *(v24 + 8);
  if (v27)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = (v27 + *v27);
  }

  v31 = (v30 - *v30);
  if (*v31 >= 0x17u && (v32 = v31[11]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  v34 = (v33 - *v33);
  v35 = *v34;
  if (v35 <= 0x32)
  {
    v38 = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    v36 = v34[25];
    if (v34[25])
    {
      LOBYTE(v36) = *(v33 + v36) != 0;
    }

    *(a1 + 320) = v36;
    v38 = v35 >= 0x3B && (v37 = v34[29]) != 0 && *(v33 + v37) != 0;
  }

  *(a1 + 321) = v38;
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t AGCMeshFunction::createLLVMObject(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if ((*(a1 + 64) & 0x80) != 0)
  {
    return (*(*v3 + 128))();
  }

  if (*(a1 + 183) < 0)
  {
    if (*(a1 + 168))
    {
      v5 = *(a1 + 160);
    }
  }

  else
  {
    *(a1 + 183);
  }

  if (*(a1 + 207) < 0)
  {
    if (*(a1 + 192))
    {
      v6 = *(a1 + 184);
    }
  }

  else
  {
    *(a1 + 207);
  }

  return (*(*v3 + 120))();
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE698;
  a2[1] = v2;
  return result;
}

AGX::Impl::MeshProgramKey *AGX::Impl::MeshProgramKey::MeshProgramKey(AGX::Impl::MeshProgramKey *this, const AGX::Impl::MeshProgramKey *a2)
{
  *this = &unk_2825BE658;
  *(this + 2) = *(a2 + 2);
  std::vector<unsigned int>::vector[abi:nn200100](this + 2, a2 + 2);
  *this = &unk_2825BE610;
  v4 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v4;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v5 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v5;
  }

  *(this + 24) = *(a2 + 24);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 13, a2 + 13);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 16, a2 + 16);
  *this = &unk_2825BF8B8;
  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v6 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v6;
  }

  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v7 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v7;
  }

  *(this + 200) = *(a2 + 200);
  return this;
}

void ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEAE0;
  a2[1] = v2;
  return result;
}

llvm::Module *AGCTileFunction::init(AGCTileFunction *this)
{
  v8 = *MEMORY[0x277D85DE8];
  result = (*(**(this + 28) + 16))(&v6);
  if ((v7 & 1) == 0)
  {
    v4 = "air.kernel";
    v5 = 259;
    result = llvm::Module::getNamedMetadata(v6, &v4);
    if (result)
    {
      *(this + 38) = *(this + 38) & 0xFFFFFCFF | (((3 - __clz(1 << ((*(this + 38) >> 10) & 3) << 24)) & 3) << 8);
    }
  }

  if (v7)
  {
    result = v6;
    v6 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCTileFunction::createLLVMObject(AGCTileFunction *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3, llvm::Module *a4)
{
  v11 = &unk_2825BE458;
  v12 = this + 48;
  v13 = this + 48;
  v14 = 0;
  v9 = "air.kernel";
  v10 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a4, &v9);
  v6 = *(a2 + 4);
  v7 = *v6;
  if (NamedMetadata)
  {
    return (*(v7 + 56))();
  }

  else
  {
    return (*(v7 + 64))(v6);
  }
}

void ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEA98;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

std::string *AGCFragmentFunction::cacheMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a2 + 16), (a1 + 344));
  result = std::string::operator=((a2 + 40), (a1 + 368));
  *(a2 + 64) = *(a1 + 392);
  return result;
}

std::string *AGCFragmentFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 344), (a2 + 16));
  result = std::string::operator=((a1 + 368), (a2 + 40));
  *(a1 + 392) = *(a2 + 64);
  return result;
}

void AGCFragmentFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = 0;
  *(v32 + 7) = 0;
  v31[0] = 0;
  *(v31 + 7) = 0;
  if (*(a2 + 464))
  {
    v4 = *(a2 + 472) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = 464;
  if (v4)
  {
    v5 = 1024;
  }

  v6 = a2 + 1024;
  if (!v4)
  {
    v6 = a2 + 464;
  }

  v7 = *(a2 + v5);
  if (v7)
  {
    v8 = *(v6 + 8) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v3 = (v7 + *v7);
  }

  v9 = (v3 - *v3);
  if (*v9 >= 0xFu && (v10 = v9[7]) != 0)
  {
    v11 = (v3 + v10 + *(v3 + v10));
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 < 5)
  {
    goto LABEL_24;
  }

  if (v12[2])
  {
    v14 = (v11 + v12[2] + *(v11 + v12[2]));
  }

  else
  {
    v14 = 0;
  }

  if (v13 >= 7 && (v15 = v12[3]) != 0)
  {
    v16 = (v11 + v15 + *(v11 + v15));
    if (!v14)
    {
LABEL_24:
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_25:
      v21 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  std::string::basic_string[abi:nn200100](&v28, v14 + 1, *v14);
  v17 = v30;
  v20 = v28;
  v32[0] = *v29;
  *(v32 + 7) = *&v29[7];
  std::string::basic_string[abi:nn200100](&v28, v16 + 1, *v16);
  v19 = v30;
  v25 = *v11;
  v18 = v28;
  v31[0] = *v29;
  *(v31 + 7) = *&v29[7];
  v26 = (v11 - v25);
  if (*v26 < 0x17u)
  {
    goto LABEL_25;
  }

  v27 = v26[11];
  if (!v27)
  {
    goto LABEL_25;
  }

  v21 = *(v11 + v27) != 0;
LABEL_26:
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  v22 = v32[0];
  *(a1 + 344) = v20;
  *(a1 + 352) = v22;
  *(a1 + 359) = *(v32 + 7);
  *(a1 + 367) = v17;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v23 = v31[0];
  *(a1 + 368) = v18;
  *(a1 + 376) = v23;
  *(a1 + 383) = *(v31 + 7);
  *(a1 + 391) = v19;
  *(a1 + 392) = v21;
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t AGCFragmentFunction::createLLVMObject(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 183) < 0)
  {
    if (*(a1 + 168))
    {
      v2 = *(a1 + 160);
    }
  }

  else
  {
    *(a1 + 183);
  }

  if (*(a1 + 207) < 0)
  {
    if (*(a1 + 192))
    {
      v3 = *(a1 + 184);
    }
  }

  else
  {
    *(a1 + 207);
  }

  return (*(**(a2 + 32) + 64))(*(a2 + 32));
}

uint64_t AGX::Impl::FragmentProgramKey::legalizeStateForTargetOS(AGX::Impl::FragmentProgramKey *this, const AGCTargetOS *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 0x1000A0011000E00) != 0 && (*a2 & v2) < (v2 & 0x1000A0011000E00))
  {
    v3 = (this + 112);
    for (i = 8; i; --i)
    {
      v5 = *v3;
      v6 = *v3 & 0x1F;
      if (v6 == 22)
      {
        v9[0] = 15;
        v9[1] = v5 >> 5;
        v10 = BYTE1(v5) & 1;
        v11 = 0;
        v12 = 0;
        v13 = (v5 >> 9) & 7;
        v14 = (v5 & 0x2000000) != 0;
        v15 = 0;
        v16 = 0;
        v17 = 1;
        AGCDrawBuffer::setTextureFormat(v3, v9);
      }

      else if (v6 == 23)
      {
        v7 = std::__throw_bad_optional_access[abi:nn200100]();
        return std::__function::__func<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::operator()(v7);
      }

      ++v3;
    }
  }

  return 1;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE8A0;
  a2[1] = v2;
  return result;
}

unsigned int *AGCDrawBuffer::setTextureFormat(unsigned int *result, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    v2 = *result & 0xFFFFFFE0 | *a2 & 0x1F;
    *result = v2;
    v3 = v2 & 0xFFFFFF1F | (32 * (*(a2 + 4) & 7));
    *result = v3;
    v4 = v3 & 0xFFFFFEFF | ((*(a2 + 8) & 1) << 8);
    *result = v4;
    v5 = v4 & 0xFFFFF1FF | ((*(a2 + 12) & 7) << 9);
    *result = v5;
    v6 = v5 & 0xFDFFFFFF | ((*(a2 + 16) & 1) << 25);
  }

  else
  {
    v6 = *result & 0xFDFFF000 | 0x17;
  }

  *result = v6;
  return result;
}

AGX::Impl::FragmentProgramKey *AGX::Impl::FragmentProgramKey::FragmentProgramKey(AGX::Impl::FragmentProgramKey *this, const AGX::Impl::FragmentProgramKey *a2)
{
  *this = &unk_2825BFA50;
  *(this + 2) = *(a2 + 2);
  std::vector<unsigned int>::vector[abi:nn200100](this + 2, a2 + 2);
  *this = &unk_2825BF948;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 56) = v5;
  *(this + 40) = v4;
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v8;
  *(this + 104) = v7;
  *(this + 88) = v6;
  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v9 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v9;
  }

  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v10 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v10;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v11 = *(a2 + 200);
    *(this + 27) = *(a2 + 27);
    *(this + 200) = v11;
  }

  *(this + 224) = *(a2 + 224);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 29, a2 + 29);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 32, a2 + 32);
  return this;
}

void ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::serialize(uint64_t a1, std::vector<unsigned int>::pointer *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v11 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v11);
  v7 = *(a1 + 24) - v6->__begin_;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 8);
  v8 = v6->__begin_ + v7;
  *v8 = ((*(a1 + 24) - v6->__begin_) >> 2 << 8) | 0x3C;
  v9 = *(a1 + 40);
  *(v8 + 20) = *(a1 + 56);
  *(v8 + 4) = v9;
  (*(*a1 + 48))(a1);
  v12 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v12);
  begin = v6->__begin_;
  *a2 = v6->__begin_;
  *a3 = *(a1 + 24) - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEA50;
  a2[1] = v2;
  return result;
}

void *AGCVertexFunction::createLLVMObject(AGCVertexFunction *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3, llvm::Module *a4)
{
  if (*(this + 175) < 0)
  {
    if (*(this + 20))
    {
      v5 = *(this + 19);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (*(this + 175))
  {
    v5 = this + 152;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 199) < 0)
  {
    if (*(this + 23))
    {
      v6 = *(this + 22);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (*(this + 199))
  {
    v6 = this + 176;
  }

  else
  {
    v6 = 0;
  }

  return AGCLLVMAGPVertexShader::createAGPVertexShaderObject(a2, a4, this + 48, v5, v6);
}

uint64_t AIRNTEmitPipelineImages(int a1, uint64_t *a2, const char *a3, int a4, int a5, AGCTarget *this, Air::PipelineScript *a7, int a8, __int128 a9, char *a10)
{
  v11 = this;
  v119[24] = *MEMORY[0x277D85DE8];
  v14 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (!v14)
  {
    std::to_string(&v90, v11);
    v28 = std::string::insert(&v90, 0, "Unknown AGC target for CPU subtype: ");
    v30 = v28->__r_.__value_.__r.__words[2];
    v106 = *&v28->__r_.__value_.__l.__data_;
    v107 = v30;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v31 = SHIBYTE(v107);
    v32 = v106;
    if (SHIBYTE(v107) >= 0)
    {
      v33 = &v106;
    }

    else
    {
      v33 = v106;
    }

    AGCError::logError(a10, v33, v29);
    if (v31 < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    goto LABEL_46;
  }

  v15 = v14;
  TargetContext = AGCNativeTranslator::getTargetContext(v14);
  v18 = *AGCNativeTranslator::getTargetContext(v15);
  if (!v18)
  {
    v34 = "AGX key factory does not exist for target architecture.";
LABEL_45:
    AGCError::logError(a10, v34, v17);
LABEL_46:
    v48 = 0;
    goto LABEL_49;
  }

  v19 = (a7 - *a7);
  v20 = *v19;
  if (v20 < 9 || !v19[4])
  {
LABEL_41:
    v45 = Air::PipelineScript::pipeline_as_mesh_render(a7);
    if (v45)
    {
      *&v106 = TargetContext;
      *(&v106 + 1) = a7;
      v107 = v45;
      v108 = a2;
      v109 = a3;
      v110 = a10;
      v111 = a9;
      *&v112[16] = 0u;
      *v113 = 0u;
      *__dst = 0u;
      *v115 = 0u;
      memset(v116, 0, 42);
      *v112 = *TargetContext;
      v46 = (v45 - *v45);
      v47 = *v46 < 5u || v46[2] == 0;
      v112[8] = v47;
      v48 = AGCMeshPipeline::compile(&v106);
      AGCMeshPipeline::~AGCMeshPipeline(&v106);
      goto LABEL_49;
    }

    v34 = "Unsupported pipeline script.";
    goto LABEL_45;
  }

  v21 = v20 >= 0xB && *(a7 + v19[4]) == 1;
  if (!v21 || !v19[5])
  {
    if (v19[4])
    {
      v35 = v20 >= 0xB && *(a7 + v19[4]) == 2;
      if (v35 && v19[5])
      {
        v36 = (a7 + v19[5] + *(a7 + v19[5]));
        v37 = (v36 - *v36);
        if (*v37 >= 7u && (v38 = v37[3]) != 0)
        {
          v39 = v36 + v38 + *(v36 + v38);
        }

        else
        {
          v39 = 0;
        }

        v72 = 0;
        v73 = 0;
        v74 = 0;
        v70 = 0;
        v71 = 0;
        __p = 0;
        (*(*v18 + 48))(&v90, v18, v39, 0, &v72, &__p);
        if (__p)
        {
          v70 = __p;
          operator delete(__p);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        v51 = *a2;
        v59 = *a2;
        v61 = *a3;
        *&v106 = &unk_2825BE4A0;
        *(&v106 + 1) = &unk_2825BE4D0;
        LODWORD(v107) = v90.__r_.__value_.__r.__words[1];
        v110 = 0;
        v108 = 0;
        v109 = 0;
        v52 = v91 - v90.__r_.__value_.__r.__words[2];
        if (v91 == v90.__r_.__value_.__r.__words[2])
        {
          *(&v106 + 1) = &unk_2825BF9D8;
          v111 = v92;
          *v112 = *v93;
          if ((v93[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v112[8], *&v93[8], *&v93[16]);
          }

          else
          {
            *&v112[8] = *&v93[8];
            *&v112[24] = *&v93[24];
          }

          LOBYTE(v113[0]) = v94;
          __dst[1] = 0;
          v113[1] = 0;
          __dst[0] = 0;
          if (v95 != *(&v94 + 1))
          {
            std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v113[1], (v95 - *(&v94 + 1)) >> 5);
          }

          v115[1] = 0;
          v115[0] = 0;
          *v116 = 0;
          if (*(&v96 + 1) != v96)
          {
            std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v115, (*(&v96 + 1) - v96) >> 5);
          }

          MEMORY[0x20F32FFB0](&v116[8]);
          operator new();
        }

        if (!((v52 >> 2) >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v52 >> 2);
        }

        goto LABEL_110;
      }

      if (v19[4])
      {
        if (v20 >= 0xB && *(a7 + v19[4]) == 3)
        {
          v40 = v19[5];
          if (v40)
          {
            v41 = (a7 + v40 + *(a7 + v40));
            v42 = (v41 - *v41);
            if (*v42 >= 7u && (v43 = v42[3]) != 0)
            {
              v44 = v41 + v43 + *(v41 + v43);
            }

            else
            {
              v44 = 0;
            }

            v66 = 0;
            v67 = 0;
            v68 = 0;
            v64 = 0;
            v65 = 0;
            v63 = 0;
            (*(*v18 + 56))(&v90, v18, v44, &v66, &v63);
            if (v63)
            {
              v64 = v63;
              operator delete(v63);
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }

            v55 = *a2;
            v60 = *a2;
            v62 = *a3;
            *&v106 = &unk_2825BE540;
            *(&v106 + 1) = &unk_2825BE570;
            LODWORD(v107) = v90.__r_.__value_.__r.__words[1];
            v110 = 0;
            v108 = 0;
            v109 = 0;
            v56 = v91 - v90.__r_.__value_.__r.__words[2];
            if (v91 == v90.__r_.__value_.__r.__words[2])
            {
              *(&v106 + 1) = &unk_2825BF998;
              *__dst = v95;
              *v115 = v96;
              *v116 = v97;
              v111 = v92;
              *v112 = *v93;
              *&v112[16] = *&v93[16];
              *v113 = v94;
              *&v116[16] = v98;
              memset(&v116[24], 0, 24);
              if (v100 != v99)
              {
                std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v116[24], (v100 - v99) >> 5);
              }

              v117[1] = 0;
              v117[0] = 0;
              v118 = 0;
              if (v102 != v101)
              {
                std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v117, (v102 - v101) >> 5);
              }

              MEMORY[0x20F32FFB0](v119);
              operator new();
            }

            if (!((v56 >> 2) >> 62))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v56 >> 2);
            }

LABEL_110:
            std::string::__throw_length_error[abi:nn200100]();
          }
        }
      }
    }

    goto LABEL_41;
  }

  v22 = (a7 + v19[5] + *(a7 + v19[5]));
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  v103 = 0u;
  v23 = *v22;
  v24 = -v23;
  v25 = v22 - v23;
  v26 = *(v22 - v23);
  if (v26 >= 7)
  {
    if (*(v25 + 3))
    {
      if (v26 >= 0xB && *(v25 + 5))
      {
        v27 = v22 + *(v25 + 5) + *(v22 + *(v25 + 5));
      }

      else
      {
        v27 = 0;
      }

      v87 = 0;
      v88 = 0;
      v89 = 0;
      v85 = 0;
      v86 = 0;
      v84 = 0;
      (*(*v18 + 40))(&v90, v18, v27, 0, 0, &v87, &v84, 0, 0, 0);
      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      AGCModule<AGX::Impl::FragmentProgramKey>::AGCModule(&v106, a2[1], *(a3 + 1), &v90);
    }

    goto LABEL_67;
  }

  if (v26 >= 5)
  {
LABEL_67:
    v53 = v22 + v24;
    if (*(v53 + 2))
    {
      if (v26 >= 9 && *(v53 + 4))
      {
        v54 = v22 + *(v53 + 4) + *(v22 + *(v53 + 4));
      }

      else
      {
        v54 = 0;
      }

      if (SHIBYTE(v104[0]) < 0)
      {
        std::string::__init_copy_ctor_external(&v81, v103, *(&v103 + 1));
      }

      else
      {
        *&v81.__r_.__value_.__l.__data_ = v103;
        v81.__r_.__value_.__r.__words[2] = v104[0];
      }

      if (SHIBYTE(v104[3]) < 0)
      {
        std::string::__init_copy_ctor_external(&v82, v104[1], v104[2]);
      }

      else
      {
        v82 = *&v104[1];
      }

      v83 = v105;
      v79 = 0;
      v80 = 0;
      v77 = 0;
      v78 = 0;
      v75 = 0;
      v76 = 0;
      (*(*v18 + 16))(&v90, v18, v54, &v81, 0, &v78, &v75, 0);
      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      v57 = *a2;
      v58 = *a3;
      *&v106 = &unk_2825BE340;
      AGX::Impl::VertexProgramKey::VertexProgramKey((&v106 + 8), &v90);
      MEMORY[0x20F32FFB0](&v118);
      operator new();
    }
  }

  v48 = 1;
  if (SHIBYTE(v104[3]) < 0)
  {
    operator delete(v104[1]);
  }

  if (SHIBYTE(v104[0]) < 0)
  {
    operator delete(v103);
  }

LABEL_49:
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

void AGCModule<AGX::Impl::FragmentProgramKey>::AGCModule(void *a1, int a2, int a3, AGX::Impl::FragmentProgramKey *a4)
{
  *a1 = &unk_2825BE428;
  AGX::Impl::FragmentProgramKey::FragmentProgramKey((a1 + 1), a4);
  MEMORY[0x20F32FFB0](a1 + 36);
  operator new();
}

uint64_t Air::PipelineScript::pipeline_as_mesh_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 4) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCMeshPipeline::compile(AGCMeshPipeline *this)
{
  v43[7] = *MEMORY[0x277D85DE8];
  v2 = (*(this + 2) - **(this + 2));
  if (*v2 >= 5u && v2[2])
  {
    v3 = **(this + 3);
    v4 = **(this + 4);
    AGCMeshPipeline::compileMeshStage(this);
    v5 = *(this + 8);
    v6 = *(this + 2);
    v7 = (v6 - *v6);
    if (*v7 >= 0xBu)
    {
      v8 = v7[5];
      if (v8)
      {
        v9 = v6 + v8 + *(v6 + v8);
      }
    }

    v13 = *(this + 184);
    v14 = *(this + 185);
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    v29 = 0;
    (*(*v5 + 24))(&v16);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    v31 = &unk_2825BE710;
    v32 = &unk_2825BE788;
    LODWORD(v33) = v17;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v15 = v19 - v18;
    if (v19 != v18)
    {
      if (!((v15 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15 >> 2);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v32 = &unk_2825BE740;
    v37 = v20;
    v38 = v21;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v22;
    }

    v40 = v23;
    memset(v41, 0, sizeof(v41));
    if (v25 != v24)
    {
      std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v41, (v25 - v24) >> 5);
    }

    memset(v42, 0, sizeof(v42));
    if (v27 != v26)
    {
      std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v42, (v27 - v26) >> 5);
    }

    v32 = &unk_2825BF900;
    MEMORY[0x20F32FFB0](v43);
    operator new();
  }

  v10 = *(this + 6);
  if (v10 && *(this + 7))
  {
    *v10 = 0;
    **(this + 7) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return AGCMeshPipeline::compileMeshStage(this);
}

void AGCMeshPipeline::~AGCMeshPipeline(void **this)
{
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }
}

uint64_t AGCMeshPipeline::compileMeshStage(AGCMeshPipeline *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  v2 = (v1 - *v1);
  v3 = *v2;
  if (v3 >= 7 && v2[3])
  {
    v5 = *(this + 3);
    v6 = *(this + 4);
    v7 = *(v5 + 8);
    v8 = *(v6 + 8);
    if (v3 >= 9 && v2[4])
    {
      v9 = *(this + 8);
      if (v3 >= 0xD)
      {
        v10 = v2[6];
        if (v10)
        {
          v11 = v1 + v10 + *(v1 + v10);
        }
      }

      v13 = *(v5 + 16);
      v14 = *(v6 + 16);
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v15 = *(this + 72);
      v29 = 0;
      v30 = 0;
      v27 = 0;
      v28 = 0;
      __p = 0;
      v26 = 0;
      (*(*v9 + 32))(v24);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(*(&v32 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      AGCModule<AGX::Impl::MeshProgramKey>::AGCModule(&v35, *(*(this + 3) + 8), *(*(this + 4) + 8), v24);
    }

    v12 = *(this + 6);
    if (v12 && *(this + 7))
    {
      *(v12 + 16) = 0;
      *(*(this + 7) + 16) = 0;
    }

    v16 = *(this + 2);
    v17 = (v16 - *v16);
    if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
    {
      v19 = v16 + v18 + *(v16 + v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(this + 8);
    if (*(this + 151) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *(this + 16), *(this + 17));
    }

    else
    {
      v35 = *(this + 128);
    }

    if (*(this + 175) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *(this + 19), *(this + 20));
    }

    else
    {
      v36 = *(this + 152);
    }

    v37 = *(this + 176);
    v21 = *(this + 72);
    *&v32 = 0;
    v30 = 0;
    v31 = 0uLL;
    v28 = 0;
    v29 = 0;
    (*(*v20 + 32))(v24, v20, v19, &v35, 0, v21, 0, &v31, &v28, 0);
    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v31)
    {
      *(&v31 + 1) = v31;
      operator delete(v31);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    AGCModule<AGX::Impl::MeshProgramKey>::AGCModule(&v35, v7, v8, v24);
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

void AGCModule<AGX::Impl::MeshProgramKey>::AGCModule(void *a1, int a2, int a3, AGX::Impl::MeshProgramKey *a4)
{
  *a1 = &unk_2825BE5E0;
  AGX::Impl::MeshProgramKey::MeshProgramKey((a1 + 1), a4);
  MEMORY[0x20F32FFB0](a1 + 27);
  operator new();
}

void *AIRNTGetLegalizationPasses(int a1, unsigned int a2, AGCTarget *this, void *a4, void *a5)
{
  v7 = AGCTarget::CPUSubtypeToTargetArch(this, a2, this);
  v11 = 0;
  v8 = AGCTarget::Get(v7);
  result = ((*v8)[2])(&v10);
  *a4 = v10;
  *a5 = v11;
  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:nn200100](std::regex_traits<char> *a1, const char *a2)
{
  v3 = std::regex_traits<char>::regex_traits(a1);
  v3[2].__ct_ = 0;
  *&v3[1].__col_ = 0u;
  *&v3[1].__loc_.__locale_ = 0u;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

uint64_t std::regex_match[abi:nn200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(const char *a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  v138 = 0uLL;
  v139 = 0;
  v140 = 0uLL;
  matched = 0;
  v142 = 0;
  v143 = 0;
  memset(&v136, 0, sizeof(v136));
  v8 = (*(a4 + 28) + 1);
  v137.first = a2;
  v137.second = a2;
  v137.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&v136, v8, &v137);
  v138.i64[0] = a1;
  v138.i64[1] = a1;
  v139 = 0;
  v140 = v137.std::pair<const char *, const char *>;
  matched = v137.matched;
  v143 = a1;
  v142 = 1;
  v133 = a1;
  if ((*(a4 + 24) & 0x1F0) == 0)
  {
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a4, a1, a2, &v136, 4160, 1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_162;
  }

  v134 = a2 - a1;
  if (!*(a4 + 28))
  {
    v145 = 0u;
    v146 = 0u;
    *v144 = 0u;
    v44 = *(a4 + 40);
    if (!v44)
    {
      goto LABEL_148;
    }

    *v147 = 0;
    memset(&v147[8], 0, 32);
    v148 = 0uLL;
    memset(v149, 0, 37);
    std::deque<std::__state<char>>::push_back(v144, v147);
    if (v149[0])
    {
      operator delete(v149[0]);
    }

    if (*&v147[32])
    {
      operator delete(*&v147[32]);
    }

    v45 = v144[1];
    v46 = v146.i64[1] + v146.i64[0] - 1;
    v47 = v46 / 0x2A;
    v48 = *(v144[1] + v46 / 0x2A);
    v49 = 3 * (v46 % 0x2A);
    v50 = v48 + 32 * v49;
    *v50 = 0;
    *(v50 + 8) = a1;
    *(v45[v47] + 32 * v49 + 16) = a1;
    *(v45[v47] + 32 * v49 + 24) = a2;
    std::vector<std::pair<unsigned long,char const*>>::resize((v45[v47] + 32 * v49 + 56), *(a4 + 32));
    __pa = 0;
    v51 = 0;
    v52 = 0;
    v53 = v146.i64[1];
    v54 = v144[1];
    v55 = v146.i64[1] + v146.i64[0] - 1;
    v56 = v55 / 0x2A;
    v57 = 0xC30C30C30C30C30DLL;
    v58 = 3 * (v55 % 0x2A);
    *(*(v144[1] + v56) + 32 * v58 + 80) = v44;
    v59 = v54[v56] + 32 * v58;
    *(v59 + 88) = 4160;
    *(v59 + 92) = 1;
    while (1)
    {
      if ((++v51 & 0xFFF) == 0 && (v51 >> 12) >= v134)
      {
LABEL_202:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_203:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        goto LABEL_204;
      }

      v61 = v53 + v146.i64[0] - 1;
      v62 = (((v61 >> 1) * v57) >> 64) >> 4;
      v63 = *(v144[1] + v62) - 4032 * v62 + 96 * v61;
      v65 = (v63 + 80);
      v64 = *(v63 + 80);
      if (v64)
      {
        (*(*v64 + 16))(v64, v63);
      }

      v66 = *v63;
      if (*v63 <= -995)
      {
        switch(v66)
        {
          case -1000:
            if (*(v63 + 16) != a2)
            {
              goto LABEL_139;
            }

            if (v52 <= &a2[-*(v63 + 8)])
            {
              v71 = &a2[-*(v63 + 8)];
            }

            else
            {
              v71 = v52;
            }

            if (__pa)
            {
              v52 = v71;
            }

            else
            {
              v52 = &a2[-*(v63 + 8)];
            }

            if (v52 == v134)
            {
              v72 = v144[1];
              v73 = v145;
              if (v145 == v144[1])
              {
                v73 = v144[1];
              }

              else
              {
                v74 = (((v146.i64[0] >> 1) * v57) >> 64) >> 4;
                v75 = v144[1] + 8 * v74;
                v76 = (*v75 - 4032 * v74 + 96 * v146.i64[0]);
                v77 = v57;
                v78 = ((((v146.i64[1] + v146.i64[0]) >> 1) * v57) >> 64) >> 4;
                v79 = *(v144[1] + v78) - 4032 * v78 + 96 * (v146.i64[1] + v146.i64[0]);
                if (v76 != v79)
                {
                  do
                  {
                    std::allocator<std::__state<char>>::destroy[abi:nn200100](v76);
                    v76 += 12;
                    if ((v76 - *v75) == 4032)
                    {
                      v80 = v75[1];
                      ++v75;
                      v76 = v80;
                    }
                  }

                  while (v76 != v79);
                  v72 = v144[1];
                  v73 = v145;
                }

                v57 = v77;
              }

              v146.i64[1] = 0;
              v84 = (v73 - v72) >> 3;
              if (v84 >= 3)
              {
                do
                {
                  operator delete(*v72);
                  v72 = (v144[1] + 8);
                  v144[1] = v72;
                  v84 = (v145 - v72) >> 3;
                }

                while (v84 > 2);
              }

              if (v84 == 1)
              {
                v85 = 21;
LABEL_130:
                v146.i64[0] = v85;
              }

              else if (v84 == 2)
              {
                v85 = 42;
                goto LABEL_130;
              }

              __pa = 1;
              v52 = v134;
              break;
            }

            std::deque<std::__state<char>>::pop_back(v144);
            __pa = 1;
            break;
          case -999:
            break;
          case -995:
            v67 = v146.i64[0];
            v68 = v144[1];
            v69 = v145;
            if (!v146.i64[0])
            {
              v70 = 42 * ((v145 - v144[1]) >> 3) - 1;
              if (v145 == v144[1])
              {
                v70 = 0;
              }

              if ((v70 - v146.i64[1]) < 0x2A)
              {
                if (v145 - v144[1] < *(&v145 + 1) - v144[0])
                {
                  if (v144[1] != v144[0])
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*(&v145 + 1) == v144[0])
                {
                  v83 = 1;
                }

                else
                {
                  v83 = (*(&v145 + 1) - v144[0]) >> 2;
                }

                *&v147[32] = v144;
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v83);
              }

              v146.i64[0] = 42;
              *v147 = *(v145 - 8);
              *&v145 = v145 - 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v144, v147);
              v67 = v146.i64[0];
              v68 = v144[1];
              v69 = v145;
            }

            v86 = (((v67 >> 1) * v57) >> 64) >> 4;
            v87 = &v68[8 * v86];
            v88 = *v87 - 4032 * v86 + 96 * v67;
            if (v69 == v68)
            {
              v89 = 0;
            }

            else
            {
              v89 = v88;
            }

            if (v89 == *v87)
            {
              v89 = *(v87 - 1) + 4032;
            }

            v90 = *(v63 + 16);
            *(v89 - 96) = *v63;
            *(v89 - 80) = v90;
            *(v89 - 56) = 0;
            *(v89 - 48) = 0;
            *(v89 - 64) = 0;
            *(v89 - 64) = *(v63 + 32);
            *(v89 - 48) = *(v63 + 48);
            *(v63 + 32) = 0;
            *(v63 + 40) = 0;
            *(v63 + 48) = 0;
            *(v89 - 40) = 0;
            *(v89 - 32) = 0;
            *(v89 - 24) = 0;
            *(v89 - 40) = *(v63 + 56);
            *(v89 - 24) = *(v63 + 72);
            *(v63 + 56) = 0;
            *(v63 + 64) = 0;
            *(v63 + 72) = 0;
            v91 = *v65;
            *(v89 - 11) = *(v63 + 85);
            *(v89 - 16) = v91;
            v146 = vaddq_s64(v146, xmmword_20E70CA70);
            goto LABEL_139;
          default:
            goto LABEL_203;
        }
      }

      else
      {
        if (v66 > -993)
        {
          if (v66 == -992)
          {
            v81 = *(v63 + 16);
            *v147 = *v63;
            *&v147[16] = v81;
            std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v147[32], (v63 + 32));
            std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](v149, (v63 + 56));
            v82 = *v65;
            *(&v149[3] + 5) = *(v63 + 85);
            v149[3] = v82;
            (*(**(v63 + 80) + 24))(*(v63 + 80), 1, v63);
            (*(*v149[3] + 24))(v149[3], 0, v147);
            std::deque<std::__state<char>>::push_back(v144, v147);
            if (v149[0])
            {
              v149[1] = v149[0];
              operator delete(v149[0]);
            }

            if (*&v147[32])
            {
              *&v148 = *&v147[32];
              operator delete(*&v147[32]);
            }
          }

          else if (v66 != -991)
          {
            goto LABEL_203;
          }

          goto LABEL_140;
        }

        if (v66 != -994)
        {
          if (v66 != -993)
          {
            goto LABEL_203;
          }

LABEL_139:
          std::deque<std::__state<char>>::pop_back(v144);
        }
      }

LABEL_140:
      v53 = v146.i64[1];
      if (!v146.i64[1])
      {
        if (__pa)
        {
          begin = v136.__begin_;
          v136.__begin_->first = v133;
          begin->second = &v133[v52];
          LOBYTE(v44) = 1;
          begin->matched = 1;
        }

        else
        {
          LOBYTE(v44) = 0;
        }

LABEL_148:
        v98 = v144[1];
        v99 = v145;
        v146.i64[1] = 0;
        v100 = (v145 - v144[1]) >> 3;
        if (v100 >= 3)
        {
          do
          {
            operator delete(*v98);
            v99 = v145;
            v98 = (v144[1] + 8);
            v144[1] = v98;
            v100 = (v145 - v98) >> 3;
          }

          while (v100 > 2);
        }

        if (v100 == 1)
        {
          v101 = 21;
LABEL_154:
          v146.i64[0] = v101;
        }

        else if (v100 == 2)
        {
          v101 = 42;
          goto LABEL_154;
        }

        if (v98 != v99)
        {
          do
          {
            v102 = *v98++;
            operator delete(v102);
          }

          while (v98 != v99);
          if (v145 != v144[1])
          {
            *&v145 = v145 + ((v144[1] - v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        if (v144[0])
        {
          operator delete(v144[0]);
        }

        if (v44)
        {
          goto LABEL_162;
        }

LABEL_146:
        v93 = a2;
        v94 = 0;
        v95 = v136.__begin_;
        v96 = v138.i64[0];
        v136.__end_ = v136.__begin_;
        end = v136.__begin_;
        goto LABEL_168;
      }
    }
  }

  v144[0] = 0;
  v144[1] = 0;
  *&v145 = 0;
  v9 = *(a4 + 40);
  if (!v9)
  {
    *v147 = v144;
    std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v147);
    goto LABEL_146;
  }

  __x.first = a2;
  __x.second = a2;
  __x.matched = 0;
  *v147 = 0;
  memset(&v147[8], 0, 32);
  v148 = 0u;
  memset(v149, 0, 37);
  std::vector<std::__state<char>>::push_back[abi:nn200100](v144, v147);
  if (v149[0])
  {
    operator delete(v149[0]);
  }

  if (*&v147[32])
  {
    operator delete(*&v147[32]);
  }

  v10 = v144[1];
  *(v144[1] - 24) = 0;
  *(v10 - 11) = a1;
  *(v10 - 10) = a1;
  *(v10 - 9) = a2;
  std::vector<std::sub_match<char const*>>::resize((v10 - 8), *(a4 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v144[1] - 40), *(a4 + 32));
  v11 = 0;
  __p = 0;
  v12 = 0;
  v132 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v144[1];
  *(v144[1] - 2) = v9;
  *(v15 - 2) = 4160;
  *(v15 - 4) = 1;
  do
  {
    v16 = (++v13 & 0xFFF) != 0 || (v13 >> 12) < v134;
    if (!v16)
    {
      goto LABEL_202;
    }

    v17 = *(v15 - 2);
    v18 = v15 - 24;
    if (v17)
    {
      (*(*v17 + 16))(v17, v15 - 24);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      switch(v19)
      {
        case -993:
          goto LABEL_26;
        case -992:
          v23 = *(v15 - 5);
          *v147 = *v18;
          *&v147[16] = v23;
          std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v147[32], v15 - 8);
          std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](v149, v15 - 5);
          v24 = *(v15 - 2);
          *(&v149[3] + 5) = *(v15 - 11);
          v149[3] = v24;
          (*(**(v15 - 2) + 24))(*(v15 - 2), 1, v15 - 24);
          (*(*v149[3] + 24))(v149[3], 0, v147);
          std::vector<std::__state<char>>::push_back[abi:nn200100](v144, v147);
          if (v149[0])
          {
            v149[1] = v149[0];
            operator delete(v149[0]);
          }

          if (*&v147[32])
          {
            *&v148 = *&v147[32];
            operator delete(*&v147[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_203;
      }
    }

    else
    {
      if ((v19 + 995) < 2)
      {
        goto LABEL_55;
      }

      if (v19 != -1000)
      {
        goto LABEL_203;
      }

      if (*(v15 - 10) != a2)
      {
LABEL_26:
        v22 = v144[1] - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v144[1] - 12);
        v144[1] = v22;
        goto LABEL_55;
      }

      v20 = &a2[-*(v15 - 11)];
      if ((v132 & (v14 >= v20)) != 0)
      {
        v20 = v14;
        v21 = __p;
      }

      else
      {
        v26 = *(v15 - 8);
        v25 = *(v15 - 7);
        if (v25 != v26)
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3);
          if (v27 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(v27);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v26 == v25)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          do
          {
            *v11 = *v26;
            *(v11 + 16) = *(v26 + 16);
            v26 += 24;
            v11 += 24;
          }

          while (v26 != v25);
        }

        v29 = *(v15 - 5);
        v28 = *(v15 - 4);
        v30 = v28 - v29;
        v21 = __p;
        if (-__p < (v28 - v29))
        {
          if (!((v30 >> 4) >> 60))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(v30 >> 4);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        if (&v12[-__p] >= v30)
        {
          v12 = __p;
          while (v29 != v28)
          {
            *v12 = *v29;
            *(v12 + 1) = *(v29 + 1);
            v29 += 16;
            v12 += 16;
          }
        }

        else
        {
          v31 = &v12[v29 - __p];
          if (v12 != __p)
          {
            v32 = __p;
            do
            {
              *v32 = *v29;
              v32[1] = *(v29 + 1);
              v29 += 16;
              v32 += 2;
            }

            while (v29 != v31);
          }

          while (v31 != v28)
          {
            v33 = *v31;
            v31 += 16;
            *v12 = v33;
            v12 += 16;
          }
        }
      }

      v34 = v144[1];
      __p = v21;
      if (v20 == v134)
      {
        v35 = v144[0];
        while (v34 != v35)
        {
          v34 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:nn200100](v34);
        }

        v144[1] = v35;
        v132 = 1;
        v14 = v134;
      }

      else
      {
        v36 = v144[1] - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v144[1] - 12);
        v144[1] = v36;
        v132 = 1;
        v14 = v20;
      }
    }

LABEL_55:
    v15 = v144[1];
  }

  while (v144[0] != v144[1]);
  if (v132)
  {
    v38 = v136.__begin_;
    v136.__begin_->first = v133;
    v38->second = &v133[v14];
    v38->matched = 1;
    if (v11)
    {
      v39 = 16;
      v40 = 1;
      do
      {
        v41 = &v38[v40];
        v41->std::pair<const char *, const char *> = *(v39 - 16);
        v42 = *v39;
        v39 += 24;
        v41->matched = v42;
        v16 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3) > v40++;
      }

      while (v16);
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  *v147 = v144;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v147);
  if (!v43)
  {
    goto LABEL_146;
  }

LABEL_162:
  v93 = a2;
  v95 = v136.__begin_;
  end = v136.__end_;
  if (v136.__end_ == v136.__begin_)
  {
    v103 = &v137;
  }

  else
  {
    v103 = v136.__begin_;
  }

  first = v103->first;
  v138.i64[1] = first;
  p_second = &v136.__begin_->second;
  if (v136.__end_ == v136.__begin_)
  {
    p_second = &v137.second;
  }

  v96 = v138.i64[0];
  v139 = v138.i64[0] != first;
  v140.i64[0] = *p_second;
  matched = v140.i64[0] != v140.i64[1];
  v94 = 1;
LABEL_168:
  v106 = 0xAAAAAAAAAAAAAAABLL * ((end - v95) >> 3);
  v108 = *a3;
  v107 = a3[1];
  v109 = v107 - *a3;
  v110 = 0xAAAAAAAAAAAAAAABLL * (v109 >> 3);
  v111 = v106 - v110;
  v135 = v94;
  if (v106 <= v110)
  {
    v114 = a3[1];
    if (v106 < v110)
    {
      v114 = v108 + end - v95;
      goto LABEL_182;
    }
  }

  else
  {
    v112 = a3[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v112 - v107) >> 3) < v111)
    {
      if (v106 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v112 - v108) >> 3) > v106)
        {
          v106 = 0x5555555555555556 * ((v112 - v108) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v112 - v108) >> 3) >= 0x555555555555555)
        {
          v113 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v113 = v106;
        }

        if (v113 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_204:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v114 = v107 + 24 * v111;
    v115 = 8 * ((end - v95) >> 3) - 8 * (v109 >> 3);
    do
    {
      *v107 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = 0;
      v107 += 24;
      v115 -= 24;
    }

    while (v115);
LABEL_182:
    a3[1] = v114;
  }

  v116 = *a3;
  v117 = &v133[-v96];
  if (v114 == *a3)
  {
    v120 = v136.__begin_;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v120 = v136.__begin_;
    v121 = 0xAAAAAAAAAAAAAAABLL * ((v136.__end_ - v136.__begin_) >> 3);
    do
    {
      v122 = &v120[v118];
      if (v121 <= v119)
      {
        v123 = &v137;
      }

      else
      {
        v123 = &v120[v118];
      }

      *(v116 + v118 * 24) = &v123->first[v117];
      v124 = &v122->second;
      if (v121 <= v119)
      {
        v124 = &v137.second;
      }

      *(*a3 + v118 * 24 + 8) = &(*v124)[v117];
      p_matched = &v122->matched;
      if (v121 <= v119)
      {
        p_matched = &v137.matched;
      }

      v126 = *p_matched;
      v116 = *a3;
      *(*a3 + v118 * 24 + 16) = v126;
      ++v119;
      ++v118;
    }

    while (v119 < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - v116) >> 3));
  }

  a3[3] = v93;
  a3[4] = v93;
  *(a3 + 40) = 0;
  v127 = vdupq_n_s64(v117);
  v128 = vaddq_s64(v127, v138);
  *(a3 + 3) = v128;
  *(a3 + 64) = v139;
  *(a3 + 9) = vaddq_s64(v127, v140);
  *(a3 + 88) = matched;
  a3[13] = v128.i64[0];
  *(a3 + 96) = v142;
  if (v120)
  {
    operator delete(v120);
  }

  if (!v135)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  a3[1] = *a3;
  return result;
}

uint64_t _ZNSt3__13mapIN4llvm9StringRefEZN21NumericPackUnpackPass3runERNS1_8FunctionERNS1_15AnalysisManagerIS4_JEEEE17QuantizedTypeInfoNS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S9_EEEEEixERSE_(uint64_t a1, __int128 *a2)
{
  v2 = *_ZNSt3__16__treeINS_12__value_typeIN4llvm9StringRefEZN21NumericPackUnpackPass3runERNS2_8FunctionERNS2_15AnalysisManagerIS5_JEEEE17QuantizedTypeInfoEENS_19__map_value_compareIS3_SB_NS_4lessIS3_EELb1EEENS_9allocatorISB_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISN_EERKT_(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 48;
}

uint64_t *std::__tree<std::__value_type<unsigned int,char const*>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,char const*>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,char const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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

uint64_t *std::__tree<std::__value_type<unsigned int,llvm::Type *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::Type *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::Type *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= __n)
    {
      v8 = __n;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](this, v9);
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.first = a3;
    __x.second = a3;
    __x.matched = 0;
    *v33 = 0;
    memset(&v33[8], 0, 32);
    v34 = 0u;
    *__p = 0u;
    memset(v36, 0, 21);
    std::vector<std::__state<char>>::push_back[abi:nn200100](&v38, v33);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*&v33[32])
    {
      operator delete(*&v33[32]);
    }

    v13 = v39;
    *(v39 - 96) = 0;
    *(v13 - 88) = a2;
    *(v13 - 80) = a2;
    *(v13 - 72) = a3;
    std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
    std::vector<std::pair<unsigned long,char const*>>::resize((v13 - 40), *(a1 + 32));
    *(v13 - 16) = v6;
    *(v13 - 8) = a5;
    v14 = 1;
    *(v13 - 4) = a6;
    do
    {
      if ((v14 & 0xFFF) == 0 && (v14 >> 12) >= a3 - a2)
      {
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_35:
        v31 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::vector<std::__state<char>>::push_back[abi:nn200100](v31, v32);
        return;
      }

      v15 = *(v13 - 16);
      v16 = (v13 - 96);
      if (v15)
      {
        (*(*v15 + 16))(v15, v13 - 96);
      }

      v17 = *v16;
      if (*v16 > -994)
      {
        switch(v17)
        {
          case -993:
            goto LABEL_23;
          case -992:
            v20 = *(v13 - 80);
            *v33 = *v16;
            *&v33[16] = v20;
            std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v33[32], (v13 - 64));
            std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](__p, (v13 - 40));
            v21 = *(v13 - 16);
            *(&v36[1] + 5) = *(v13 - 11);
            v36[1] = v21;
            (*(**(v13 - 16) + 24))(*(v13 - 16), 1, v13 - 96);
            (*(*v36[1] + 24))(v36[1], 0, v33);
            std::vector<std::__state<char>>::push_back[abi:nn200100](&v38, v33);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*&v33[32])
            {
              *&v34 = *&v33[32];
              operator delete(*&v33[32]);
            }

            break;
          case -991:
            break;
          default:
            goto LABEL_35;
        }
      }

      else if ((v17 + 995) >= 2)
      {
        if (v17 != -1000)
        {
          goto LABEL_35;
        }

        v18 = *(v13 - 80);
        if (((a5 & 0x20) == 0 || v18 != a2) && ((a5 & 0x1000) == 0 || v18 == a3))
        {
          v22 = *a4;
          *v22 = a2;
          *(v22 + 8) = v18;
          *(v22 + 16) = 1;
          v23 = *(v13 - 64);
          v24 = *(v13 - 56) - v23;
          if (v24)
          {
            v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
            v26 = (v23 + 16);
            v27 = 1;
            do
            {
              v28 = v22 + 24 * v27;
              *v28 = *(v26 - 1);
              v29 = *v26;
              v26 += 24;
              *(v28 + 16) = v29;
            }

            while (v25 > v27++);
          }

          break;
        }

LABEL_23:
        v19 = v39 - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100]((v39 - 96));
        v39 = v19;
      }

      v13 = v39;
      ++v14;
    }

    while (v38 != v39);
  }

  *v33 = &v38;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v33);
}

void std::vector<std::__state<char>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v7 = 96 * v8 + 96;
    v16 = *a1;
    v17 = a1[1];
    v18 = 96 * v8 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::allocator<std::__state<char>>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void *std::vector<std::sub_match<char const*>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void *std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x2A)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v19 = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v13);
    }

    *(a1 + 32) = v9 - 42;
    *&v18 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v18);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v10 / 0x2A)] - 4032 * (v10 / 0x2A) + 96 * v10;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = 0;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  result = *(a2 + 56);
  *(v14 + 56) = result;
  *(v14 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = *(a2 + 80);
  *(v14 + 85) = *(a2 + 85);
  *(v14 + 80) = v17;
  ++*(a1 + 40);
  return result;
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:nn200100]((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v11);
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

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x20F331D00]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
    v7 = v9;
  }

  while (v9 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (v7->__r_.__value_.__s.__data_[0] != 124)
      {
        break;
      }

      v10 = a1->__end_;
      v11 = (&v7->__r_.__value_.__l.__data_ + 1);
      v7 = (v7 + 1);
      do
      {
        v12 = v7;
        std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
        v7 = v13;
      }

      while (v13 != v12);
      if (v12 == v11)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
    }

    while (v12 != a3);
  }

  return v7;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, std::string *a2, std::string *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (a2->__r_.__value_.__s.__data_[0] == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    v3 = (v3 + 1);
  }

  if (v3 != a3)
  {
    do
    {
      v6 = v3;
      v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
      v3 = v7;
    }

    while (v7 != v6);
    if (v6 != a3 && (&v7->__r_.__value_.__l.__data_ + 1) == a3 && v7->__r_.__value_.__s.__data_[0] == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      v3 = (v3 + 1);
    }
  }

  if (v3 == a3)
  {
    return v3;
  }

  v9 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(v9);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  end = a1->__end_;
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    v11 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(v11, v12, v13);
  }

  else
  {
    v8 = v7;
    while (v8 != a3 && v8->__r_.__value_.__s.__data_[0] == 124)
    {
      v9 = a1->__end_;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (&v8->__r_.__value_.__l.__data_ + 1), a3);
      if (v10 == (&v8->__r_.__value_.__l.__data_ + 1))
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }
  }
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2825BEEC0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x20F331DC0);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x20F331DC0);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(uint64_t a1, std::string *a2, std::string *a3)
{
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    v8 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(v8, v9, v10);
  }

  else
  {
    do
    {
      v7 = v6;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
    }

    while (v6 != v7);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::string *a2, std::string *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
    goto LABEL_26;
  }

  v8 = a2->__r_.__value_.__s.__data_[0];
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
      v11 = (&a2->__r_.__value_.__l.__data_ + 1);
      goto LABEL_38;
    }
  }

  else
  {
LABEL_13:
    if ((v8 - 123) >= 2)
    {
      v15 = a2->__r_.__value_.__s.__data_[0];
      goto LABEL_15;
    }
  }

LABEL_4:
  v10 = &a2->__r_.__value_.__s.__data_[1];
  v11 = a2;
  if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
  {
LABEL_22:
    v12 = v11->__r_.__value_.__s.__data_[0];
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

  v12 = a2->__r_.__value_.__s.__data_[0];
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if (((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x5800000080004F1) == 0) && (v13 - 123) >= 3)
  {
    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v10, a3, 0);
    }

    else
    {
      v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v14);
      v17 = 2;
      if (!v16)
      {
        v17 = 0;
      }

      v11 = (a2 + v17);
    }

    if (v11 != a2)
    {
LABEL_26:
      if (v11 == a2 && v11 != a3)
      {
        v18 = v11->__r_.__value_.__s.__data_[0];
        switch(v18)
        {
          case '$':
            std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
            break;
          case '(':
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v19 = *(a1 + 28);
            ++*(a1 + 36);
            v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1);
            if (v20 == a3 || (v11 = v20, v20->__r_.__value_.__s.__data_[0] != 41))
            {
              v22 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
              std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(v22);
              return;
            }

            std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v19);
            --*(a1 + 36);
            break;
          case '^':
            std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
            break;
          default:
            goto LABEL_37;
        }

        v11 = (v11 + 1);
      }

LABEL_37:
      if (v11 == a2)
      {
        return;
      }

      goto LABEL_38;
    }

    goto LABEL_22;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
  v11 = &a2->__r_.__value_.__s.__data_[2];
LABEL_38:
  v21 = (*(a1 + 28) + 1);

  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v21);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 == a3)
      {
LABEL_57:
        v29 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, v30, v31, v32, v33, v34, v35);
        return;
      }

      v17 = *v16;
      if (v17 == 44)
      {
        v26 = v16 + 1;
        if (v16 + 1 != a3)
        {
          if (*v26 == 125)
          {
            v27 = v16 + 2;
            if (!v11 && v27 != a3 && *v27 == 63)
            {
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              goto LABEL_26;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
LABEL_36:
            v19 = -1;
            goto LABEL_45;
          }

          v36 = -1;
          v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v36);
          if (v28 == v26 || v28 == a3 || *v28 != 125)
          {
            goto LABEL_57;
          }

          v19 = v36;
          v14 = __max;
          if (v36 >= __max)
          {
            v25 = 1;
            if (!v11 && v28 + 1 != a3)
            {
              v25 = v28[1] != 63;
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v24 = __s;
            goto LABEL_46;
          }
        }
      }

      else if (v17 == 125)
      {
        v18 = v16 + 1;
        if (!v11 && v18 != a3 && *v18 == 63)
        {
          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
          v19 = __max;
LABEL_33:
          v24 = __s;
          v25 = 0;
LABEL_46:
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v19, v24, a5, a6, v25);
          return;
        }

        v14 = __max;
        a5 = v7;
        a6 = v6;
        a1 = v10;
        v19 = __max;
LABEL_45:
        v24 = __s;
        v25 = 1;
        goto LABEL_46;
      }
    }

    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_57;
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            v6 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
            return std::__repeat_one_loop<char>::__exec(v6, v7);
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:nn200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:nn200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:nn200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, std::string *a2, std::string *a3)
{
  if (a2 != a3 && a2->__r_.__value_.__s.__data_[0] == 91)
  {
    if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
    {
      goto LABEL_243;
    }

    v5 = a2->__r_.__value_.__s.__data_[1] == 94 ? &a2->__r_.__value_.__s.__data_[2] : (&a2->__r_.__value_.__l.__data_ + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2->__r_.__value_.__s.__data_[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_243;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && v5->__r_.__value_.__s.__data_[0] == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](started, 93);
      v5 = (v5 + 1);
    }

    if (v5 != a3)
    {
      v8 = (v7 + 136);
      v83 = &a3[-1].__r_.__value_.__s.__data_[20];
      while (1)
      {
        v9 = v5;
        if (v5 == a3)
        {
          goto LABEL_15;
        }

        v10 = v5->__r_.__value_.__s.__data_[0];
        v9 = v5;
        if (v10 == 93)
        {
          goto LABEL_15;
        }

        memset(&v87, 0, sizeof(v87));
        if ((&v5->__r_.__value_.__l.__data_ + 1) != a3 && v10 == 91)
        {
          v13 = v5->__r_.__value_.__s.__data_[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, &v5->__r_.__value_.__s.__data_[2], a3, &v87);
              v11 = (*(a1 + 24) & 0x1F0);
              size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
              if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v87.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                goto LABEL_66;
              }

              goto LABEL_31;
            case ':':
              if (a3 - &v5->__r_.__value_.__s.__data_[2] < 2)
              {
                goto LABEL_243;
              }

              v20 = v83 - v5;
              v15 = &v5->__r_.__value_.__s.__data_[2];
              for (i = &v5->__r_.__value_.__s.__data_[2]; ; v15 = i)
              {
                v22 = i->__r_.__value_.__s.__data_[0];
                i = (i + 1);
                if (v22 == 58 && i->__r_.__value_.__s.__data_[0] == 93)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_243;
                }

                --v20;
              }

              if (v15 == a3)
              {
                goto LABEL_243;
              }

              v26 = *(a1 + 24);
              std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, &v5->__r_.__value_.__s.__data_[2], v15, v15 - &v5->__r_.__value_.__s.__data_[2]);
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v26 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                goto LABEL_245;
              }

              v31 = 0;
              *(v7 + 160) |= classname;
              goto LABEL_143;
            case '=':
              if (a3 - &v5->__r_.__value_.__s.__data_[2] < 2)
              {
                goto LABEL_243;
              }

              v14 = v83 - v5;
              v15 = &v5->__r_.__value_.__s.__data_[2];
              for (j = &v5->__r_.__value_.__s.__data_[2]; ; v15 = j)
              {
                v17 = j->__r_.__value_.__s.__data_[0];
                j = (j + 1);
                if (v17 == 61 && j->__r_.__value_.__s.__data_[0] == 93)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_243;
                }

                --v14;
              }

              if (v15 == a3)
              {
                goto LABEL_243;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__p, a1, &v5->__r_.__value_.__s.__data_[2], v15);
              v24 = SHIBYTE(v91);
              if ((SHIBYTE(v91) & 0x8000000000000000) != 0)
              {
                v24 = __p[1];
                if (!__p[1])
                {
                  goto LABEL_244;
                }

                v25 = __p[0];
              }

              else
              {
                if (!HIBYTE(v91))
                {
                  goto LABEL_244;
                }

                v25 = __p;
              }

              std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v25, v25 + v24, v24);
              (*(**(a1 + 16) + 32))(__s);
              v38 = HIBYTE(v89);
              if (v89 < 0)
              {
                v38 = __s[1];
              }

              if (v38 != 1)
              {
                if (v38 == 12)
                {
                  v39 = __s;
                  if (v89 < 0)
                  {
                    v39 = __s[0];
                  }

                  *(v39 + 11) = *(v39 + 3);
                }

                else if (SHIBYTE(v89) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v89) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              v40 = HIBYTE(v89);
              if (v89 < 0)
              {
                v40 = __s[1];
              }

              if (v40)
              {
                v42 = *(v7 + 144);
                v41 = *(v7 + 152);
                if (v42 >= v41)
                {
                  v46 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v8) >> 3);
                  v47 = v46 + 1;
                  if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_247;
                  }

                  v48 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v8) >> 3);
                  if (2 * v48 > v47)
                  {
                    v47 = 2 * v48;
                  }

                  if (v48 >= 0x555555555555555)
                  {
                    v49 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v49 = v47;
                  }

                  __dst.__end_cap_.__value_ = (v7 + 136);
                  if (v49)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v49);
                  }

                  v52 = (24 * v46);
                  if (v89 < 0)
                  {
                    std::string::__init_copy_ctor_external(v52, __s[0], __s[1]);
                  }

                  else
                  {
                    v53 = *__s;
                    v52->__r_.__value_.__r.__words[2] = v89;
                    *&v52->__r_.__value_.__l.__data_ = v53;
                  }

                  v51 = v52 + 1;
                  v54 = *(v7 + 136);
                  v55 = *(v7 + 144) - v54;
                  v56 = v52 - v55;
                  memcpy(v52 - v55, v54, v55);
                  v57 = *(v7 + 136);
                  *(v7 + 136) = v56;
                  *(v7 + 144) = v52 + 1;
                  v58 = *(v7 + 152);
                  *(v7 + 152) = 0;
                  __dst.__end_ = v57;
                  __dst.__end_cap_.__value_ = v58;
                  __dst.__first_ = v57;
                  __dst.__begin_ = v57;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v89) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v43 = *__s;
                    *(v42 + 16) = v89;
                    *v42 = v43;
                  }

                  v51 = (v42 + 24);
                }

                *(v7 + 144) = v51;
              }

              else
              {
                v44 = HIBYTE(v91);
                if (SHIBYTE(v91) < 0)
                {
                  v44 = __p[1];
                }

                if (v44 == 2)
                {
                  v50 = __p;
                  if (SHIBYTE(v91) < 0)
                  {
                    v50 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, *v50, *(v50 + 1));
                }

                else
                {
                  if (v44 != 1)
                  {
                    goto LABEL_244;
                  }

                  v45 = __p;
                  if (SHIBYTE(v91) < 0)
                  {
                    v45 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, *v45);
                }
              }

              if (SHIBYTE(v89) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v91) < 0)
              {
                operator delete(__p[0]);
              }

              v31 = 0;
LABEL_143:
              v11 = &v15->__r_.__value_.__s.__data_[2];
              v35 = v5;
              goto LABEL_144;
          }
        }

        v11 = (*(a1 + 24) & 0x1F0);
        v9 = v5;
LABEL_31:
        if ((v11 | 0x40) != 0x40)
        {
          LOBYTE(v18) = v9->__r_.__value_.__s.__data_[0];
LABEL_36:
          std::string::operator=(&v87, v18);
          v9 = (v9 + 1);
          goto LABEL_66;
        }

        v18 = v9->__r_.__value_.__s.__data_[0];
        if (v18 != 92)
        {
          goto LABEL_36;
        }

        if (v11)
        {
          v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, &v9->__r_.__value_.__s.__data_[1], a3, &v87);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, &v9->__r_.__value_.__s.__data_[1], a3, &v87, v7);
        }

        v9 = v19;
LABEL_66:
        if (v9 == a3 || (v32 = v9->__r_.__value_.__s.__data_[0], v32 == 93) || (v34 = &v9->__r_.__value_.__s.__data_[1], (&v9->__r_.__value_.__l.__data_ + 1) == a3) || v32 != 45 || *v34 == 93)
        {
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!v87.__r_.__value_.__l.__size_)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
              goto LABEL_15;
            }

            if (v87.__r_.__value_.__l.__size_ != 1)
            {
              v33 = v87.__r_.__value_.__r.__words[0];
              goto LABEL_85;
            }

            v33 = v87.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&v87.__r_.__value_.__s + 23))
            {
              goto LABEL_15;
            }

            v33 = &v87;
            if (HIBYTE(v87.__r_.__value_.__r.__words[2]) != 1)
            {
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, v33->__r_.__value_.__s.__data_[0], v33->__r_.__value_.__s.__data_[1]);
              goto LABEL_86;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, v33->__r_.__value_.__s.__data_[0]);
LABEL_86:
          v31 = 1;
          v35 = v9;
          goto LABEL_144;
        }

        memset(&v86, 0, sizeof(v86));
        v35 = &v9->__r_.__value_.__s.__data_[2];
        if (&v9->__r_.__value_.__s.__data_[2] != a3 && *v34 == 91 && v35->__r_.__value_.__s.__data_[0] == 46)
        {
          v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, &v9->__r_.__value_.__s.__data_[3], a3, &v86);
          goto LABEL_151;
        }

        if ((v11 | 0x40) != 0x40)
        {
          LOBYTE(v34) = *v34;
LABEL_103:
          std::string::operator=(&v86, v34);
          goto LABEL_151;
        }

        LODWORD(v34) = *v34;
        if (v34 != 92)
        {
          goto LABEL_103;
        }

        v36 = &v9->__r_.__value_.__s.__data_[2];
        if (v11)
        {
          v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v36, a3, &v86);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v36, a3, &v86, v7);
        }

        v35 = v37;
LABEL_151:
        v85 = v87;
        v84 = v86;
        memset(&v86, 0, sizeof(v86));
        memset(&v87, 0, sizeof(v87));
        v11 = &v85;
        if (*(v7 + 170) != 1)
        {
          v63 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v63 = v85.__r_.__value_.__l.__size_;
          }

          if (v63 != 1)
          {
            goto LABEL_246;
          }

          v64 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v64 = v84.__r_.__value_.__l.__size_;
          }

          if (v64 != 1)
          {
            goto LABEL_246;
          }

          if (*(v7 + 169) == 1)
          {
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = &v85;
            }

            else
            {
              v65 = v85.__r_.__value_.__r.__words[0];
            }

            v66 = (*(**(v7 + 24) + 40))(*(v7 + 24), v65->__r_.__value_.__s.__data_[0]);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v67 = &v85;
            }

            else
            {
              v67 = v85.__r_.__value_.__r.__words[0];
            }

            v67->__r_.__value_.__s.__data_[0] = v66;
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &v84;
            }

            else
            {
              v68 = v84.__r_.__value_.__r.__words[0];
            }

            v69 = (*(**(v7 + 24) + 40))(*(v7 + 24), v68->__r_.__value_.__s.__data_[0]);
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v70 = &v84;
            }

            else
            {
              v70 = v84.__r_.__value_.__r.__words[0];
            }

            v70->__r_.__value_.__s.__data_[0] = v69;
          }

          *&__dst.__first_ = *&v85.__r_.__value_.__l.__data_;
          __dst.__end_ = v85.__r_.__value_.__r.__words[2];
          memset(&v85, 0, sizeof(v85));
          __dst.__end_cap_ = *&v84.__r_.__value_.__l.__data_;
          v93 = v84.__r_.__value_.__r.__words[2];
          memset(&v84, 0, sizeof(v84));
          std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((v7 + 88), &__dst);
          if (SHIBYTE(v93) < 0)
          {
            operator delete(__dst.__end_cap_.__value_);
          }

          if ((SHIBYTE(__dst.__end_) & 0x80000000) == 0)
          {
            goto LABEL_228;
          }

          v71 = __dst.__first_;
          goto LABEL_227;
        }

        if (*(v7 + 169) == 1)
        {
          for (k = 0; ; ++k)
          {
            if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              if (k >= v85.__r_.__value_.__l.__size_)
              {
LABEL_193:
                for (m = 0; ; ++m)
                {
                  if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    if (m >= v84.__r_.__value_.__l.__size_)
                    {
                      goto LABEL_209;
                    }

                    v74 = v84.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    if (m >= SHIBYTE(v84.__r_.__value_.__r.__words[2]))
                    {
                      goto LABEL_209;
                    }

                    v74 = &v84;
                  }

                  v75 = (*(**(v7 + 24) + 40))(*(v7 + 24), v74->__r_.__value_.__s.__data_[m]);
                  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v76 = &v84;
                  }

                  else
                  {
                    v76 = v84.__r_.__value_.__r.__words[0];
                  }

                  v76->__r_.__value_.__s.__data_[m] = v75;
                }
              }

              v60 = v85.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (k >= SHIBYTE(v85.__r_.__value_.__r.__words[2]))
              {
                goto LABEL_193;
              }

              v60 = &v85;
            }

            v61 = (*(**(v7 + 24) + 40))(*(v7 + 24), v60->__r_.__value_.__s.__data_[k]);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = &v85;
            }

            else
            {
              v62 = v85.__r_.__value_.__r.__words[0];
            }

            v62->__r_.__value_.__s.__data_[k] = v61;
          }
        }

        v72 = 0;
        if ((*(&v85.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_190;
        }

        while (v72 < HIBYTE(v85.__r_.__value_.__r.__words[2]))
        {
          while (1)
          {
            ++v72;
            if ((*(&v85.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              break;
            }

LABEL_190:
            if (v72 >= v85.__r_.__value_.__l.__size_)
            {
              goto LABEL_203;
            }
          }
        }

LABEL_203:
        v77 = 0;
        if ((*(&v84.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_204:
          if (v77 >= HIBYTE(v84.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_209;
          }

          goto LABEL_207;
        }

        while (v77 < v84.__r_.__value_.__l.__size_)
        {
LABEL_207:
          ++v77;
          if ((*(&v84.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_204;
          }
        }

LABEL_209:
        v78 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v85;
        }

        else
        {
          v79 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v78 = v85.__r_.__value_.__l.__size_;
        }

        std::regex_traits<char>::transform<char *>(__p, v7 + 16, v79, v79 + v78);
        v80 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = &v84;
        }

        else
        {
          v81 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v80 = v84.__r_.__value_.__l.__size_;
        }

        std::regex_traits<char>::transform<char *>(__s, v7 + 16, v81, v81 + v80);
        *&__dst.__first_ = *__p;
        __dst.__end_ = v91;
        __p[1] = 0;
        v91 = 0;
        __dst.__end_cap_ = *__s;
        v93 = v89;
        __s[0] = 0;
        __s[1] = 0;
        v89 = 0;
        __p[0] = 0;
        std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((v7 + 88), &__dst);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(__dst.__end_cap_.__value_);
        }

        if (SHIBYTE(__dst.__end_) < 0)
        {
          operator delete(__dst.__first_);
        }

        if (SHIBYTE(v89) < 0)
        {
          operator delete(__s[0]);
        }

        if ((SHIBYTE(v91) & 0x80000000) == 0)
        {
          goto LABEL_228;
        }

        v71 = __p[0];
LABEL_227:
        operator delete(v71);
LABEL_228:
        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        v31 = 1;
LABEL_144:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
          v9 = v35;
          if ((v31 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v9 = v35;
          if (!v31)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        v11 = v9;
LABEL_16:
        v12 = v11 == v5;
        v5 = v11;
        if (v12)
        {
          goto LABEL_236;
        }
      }
    }

    v11 = v5;
LABEL_236:
    if (v11 == a3)
    {
      goto LABEL_243;
    }

    if (v11->__r_.__value_.__s.__data_[0] == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, 45);
      v11 = (v11 + 1);
    }

    if (v11 == a3 || v11->__r_.__value_.__s.__data_[0] != 93)
    {
LABEL_243:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_244:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_245:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_246:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_247:
      std::string::__throw_length_error[abi:nn200100]();
    }

    return (&v11->__r_.__value_.__l.__data_ + 1);
  }

  return a2;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:nn200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:nn200100](a1 + 40, &v7);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  }

  else
  {
    std::regex_traits<char>::__lookup_collatename<char const*>(&v16, a1, __src, v6);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v16;
    v9 = v17;
    *(a4 + 16) = v17;
    v10 = HIBYTE(v9);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (v10 - 1 < 2)
    {
      return v6 + 2;
    }
  }

  v12 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(v12, v13, v14, v15);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    v13 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(v13, v14, v15, v16);
    return;
  }

  v6 = *a2;
  if (v6 <= 0x61)
  {
    if (*a2 > 0x52u)
    {
      if (v6 == 83)
      {
        v7 = *(a5 + 164) | 0x4000;
        goto LABEL_22;
      }

      if (v6 == 87)
      {
        *(a5 + 164) |= 0x500u;
        v19 = 95;
        if (*(a5 + 169) == 1)
        {
          v18 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
          v9 = a5 + 64;
          v10 = &v18;
        }

        else
        {
          if (*(a5 + 170) != 1)
          {
            std::vector<char>::push_back[abi:nn200100](a5 + 64, &v19);
            return;
          }

          v17 = 95;
          v9 = a5 + 64;
          v10 = &v17;
        }

        std::vector<char>::push_back[abi:nn200100](v9, v10);
        return;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_22:
        *(a5 + 164) = v7;
        return;
      }

      goto LABEL_25;
    }

    v11 = this;
    v12 = 0;
LABEL_20:
    std::string::operator=(v11, v12);
    return;
  }

  if (*a2 > 0x72u)
  {
    if (v6 == 115)
    {
      v8 = *(a5 + 160) | 0x4000;
      goto LABEL_24;
    }

    if (v6 == 119)
    {
      *(a5 + 160) |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](a5, 95);
      return;
    }
  }

  else
  {
    if (v6 == 98)
    {
      v11 = this;
      v12 = 8;
      goto LABEL_20;
    }

    if (v6 == 100)
    {
      v8 = *(a5 + 160) | 0x400;
LABEL_24:
      *(a5 + 160) = v8;
      return;
    }
  }

LABEL_25:

  std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_51;
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (this)
        {
          v6 = this;
          v5 = 12;
          goto LABEL_31;
        }

        v5 = 12;
        goto LABEL_47;
      }

      if (v5 == 110)
      {
        if (this)
        {
          v6 = this;
          v5 = 10;
          goto LABEL_31;
        }

        v5 = 10;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (this)
          {
            v6 = this;
            v5 = 13;
            goto LABEL_31;
          }

          v5 = 13;
          goto LABEL_47;
        case 't':
          if (this)
          {
            v6 = this;
            v5 = 9;
            goto LABEL_31;
          }

          v5 = 9;
          goto LABEL_47;
        case 'v':
          if (this)
          {
            v6 = this;
            v5 = 11;
            goto LABEL_31;
          }

          v5 = 11;
LABEL_47:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
          return a2 + 1;
      }
    }

    goto LABEL_32;
  }

  if (v5 > 0x5Bu)
  {
    if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

LABEL_17:
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 == 34 || v5 == 47)
  {
    goto LABEL_17;
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) == 0x30)
  {
    v7 = v5 - 48;
    v8 = a2 + 1;
    if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
    {
      v7 = *v8 + 8 * v7 - 48;
      v8 = a2 + 2;
      if (a2 + 2 != a3)
      {
        v9 = *v8 + 8 * v7 - 48;
        if ((*v8 & 0xF8) == 0x30)
        {
          v8 = a2 + 3;
          v7 = v9;
        }
      }
    }

    if (this)
    {
      std::string::operator=(this, v7);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
    }

    return v8;
  }

LABEL_51:
  v11 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v11);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:nn200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED10;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED10;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BECE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BECE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this)
{
  v4 = a2;
  if (a2 != a3)
  {
    v5 = *a2;
    if (*a2 <= 0x71u)
    {
      if (*a2 <= 0x65u)
      {
        if (v5 != 48)
        {
          if (v5 != 99)
          {
            if (v5 == 95)
            {
              goto LABEL_67;
            }

            goto LABEL_60;
          }

          if (a2 + 1 == a3)
          {
            goto LABEL_67;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_67;
          }

          v7 = v6 & 0x1F;
          if (this)
          {
LABEL_14:
            std::string::operator=(this, v7);
            return;
          }

LABEL_51:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return;
        }

        if (this)
        {
          v8 = this;
          v9 = 0;
          goto LABEL_64;
        }

        v9 = 0;
        goto LABEL_65;
      }

      if (v5 == 102)
      {
        if (this)
        {
          v8 = this;
          v9 = 12;
          goto LABEL_64;
        }

        v9 = 12;
        goto LABEL_65;
      }

      if (v5 == 110)
      {
        if (!this)
        {
          v9 = 10;
          goto LABEL_65;
        }

        v8 = this;
        v9 = 10;
        goto LABEL_64;
      }
    }

    else
    {
      if (*a2 > 0x74u)
      {
        if (v5 == 117)
        {
          if (a2 + 1 == a3)
          {
            goto LABEL_67;
          }

          v10 = a2[1];
          if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
          {
            goto LABEL_67;
          }

          v4 = a2 + 2;
          if (a2 + 2 == a3)
          {
            goto LABEL_67;
          }

          v11 = *v4;
          if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
          {
            goto LABEL_67;
          }

          goto LABEL_37;
        }

        if (v5 != 118)
        {
          if (v5 != 120)
          {
            goto LABEL_60;
          }

LABEL_37:
          if (v4 + 1 == a3)
          {
            goto LABEL_67;
          }

          v12 = v4[1];
          v13 = -48;
          if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
          {
            v12 |= 0x20u;
            if ((v12 - 97) >= 6u)
            {
              goto LABEL_67;
            }

            v13 = -87;
          }

          if (v4 + 2 == a3)
          {
            goto LABEL_67;
          }

          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
          {
            v14 |= 0x20u;
            if ((v14 - 97) >= 6u)
            {
              goto LABEL_67;
            }

            v15 = -87;
          }

          v7 = v15 + v14 + 16 * (v13 + v12);
          if (this)
          {
            goto LABEL_14;
          }

          goto LABEL_51;
        }

        if (this)
        {
          v8 = this;
          v9 = 11;
          goto LABEL_64;
        }

        v9 = 11;
LABEL_65:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v9);
        return;
      }

      if (v5 == 114)
      {
        if (!this)
        {
          v9 = 13;
          goto LABEL_65;
        }

        v8 = this;
        v9 = 13;
LABEL_64:
        std::string::operator=(v8, v9);
        return;
      }

      if (v5 == 116)
      {
        if (!this)
        {
          v9 = 9;
          goto LABEL_65;
        }

        v8 = this;
        v9 = 9;
        goto LABEL_64;
      }
    }

LABEL_60:
    if ((v5 & 0x80) != 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
      v9 = *a2;
      if (this)
      {
        v8 = this;
        goto LABEL_64;
      }

      goto LABEL_65;
    }

LABEL_67:
    v16 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::vector<char>::push_back[abi:nn200100](v16, v17);
  }
}