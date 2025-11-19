flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 22, v4);
  }

  return result;
}

unsigned int *AGCLLVMUserMeshShaderAnalysis::compile(AGCLLVMUserMeshShaderAnalysis *this)
{
  v2 = *(this + 734);
  *&v43 = "air.mesh";
  WORD4(__p) = 259;
  result = llvm::Module::getNamedMetadata(v2, &v43);
  if (!result)
  {
    return result;
  }

  result = llvm::NamedMDNode::getOperand(result);
  if (!result)
  {
    return result;
  }

  v4 = *&result[-2 * result[2] + 4];
  v5 = *(v4 + 8);
  if (!v5)
  {
    return (*(*this + 160))(this);
  }

  v6 = 0;
  v7 = this + 4096;
  LOBYTE(v8) = 1;
  do
  {
    while (1)
    {
      while (1)
      {
        v9 = *(v4 - 8 * v5 + 8 * v6);
        if (!v9 || !isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8), "air.mesh"))
        {
          goto LABEL_67;
        }

        if (v8)
        {
          v10 = *(v9 - 8 * *(v9 + 8) + 16);
          if (v10)
          {
            v11 = *v10;
            if (v11 <= 0x22 && ((0x7FFFFFFF0uLL >> v11) & 1) != 0 && *(v10 + 2) == 6 && isStringMDNode(*(v10 - 6), "air.mesh_type_info"))
            {
              v12 = &v10[-8 * *(v10 + 2)];
              v13 = *(v12 + 1);
              if (v13)
              {
                v14 = *v13;
                if (v14 <= 0x22 && ((0x7FFFFFFF0uLL >> v14) & 1) != 0)
                {
                  v15 = *(v12 + 2);
                  if (v15)
                  {
                    v16 = *v15;
                    if (v16 <= 0x22 && ((0x7FFFFFFF0uLL >> v16) & 1) != 0)
                    {
                      LODWORD(v43) = 3;
                      if (parseMDInt(0, v10, &v43, this + 1471))
                      {
                        LODWORD(v43) = 4;
                        if (parseMDInt(0, v10, &v43, this + 1472))
                        {
                          if (parseMDPrimitiveType(v10, this + 1473))
                          {
                            break;
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

LABEL_54:
        LOBYTE(v8) = 0;
        result = 0;
        ++v6;
        v5 = *(v4 + 8);
        if (v6 >= v5)
        {
          return result;
        }
      }

      v17 = *(v13 + 2);
      v39 = v15;
      v40 = v7;
      if (v17)
      {
        v18 = 0;
        do
        {
          v19 = *&v13[8 * v18 + -8 * v17];
          if (!v19)
          {
            goto LABEL_54;
          }

          v20 = *v19;
          if (v20 > 0x22 || ((0x7FFFFFFF0uLL >> v20) & 1) == 0)
          {
            goto LABEL_54;
          }

          v41 = v18;
          if (v7[1785] == 1)
          {
            v21 = v19 + 8;
            v22 = 1;
            while (1)
            {
              v23 = *(v19 + 2);
              v24 = v22 >= v23;
              if (v22 >= v23)
              {
                break;
              }

              v25 = isStringMDNode(*&v21[-8 * v23], "air.shared");
              ++v22;
              v21 += 8;
              if (v25)
              {
                v24 = 0;
                break;
              }
            }

            v15 = v39;
            v7 = v40;
          }

          else
          {
            v24 = 0;
          }

          AGCLLVMUserMeshShaderAnalysis::addGenericVarying(this, v19, 0, v24);
          v18 = v41 + 1;
          v17 = *(v13 + 2);
        }

        while (v41 + 1 < v17);
      }

      v26 = *(v15 + 2);
      if (v26)
      {
        break;
      }

      ++v6;
      v5 = *(v4 + 8);
      LOBYTE(v8) = 1;
      if (v6 >= v5)
      {
        return (*(*this + 160))(this);
      }
    }

    v38 = 0;
    v37 = 0;
    v27 = 0;
    while (1)
    {
      v8 = *&v15[8 * v27 + -8 * v26];
      if (!v8)
      {
        break;
      }

      v28 = *v8;
      if (v28 > 0x22 || ((0x7FFFFFFF0uLL >> v28) & 1) == 0)
      {
        LOBYTE(v8) = 0;
        break;
      }

      v42 = v27;
      if (v7[1785] == 1)
      {
        v29 = v8 + 8;
        v30 = 1;
        while (1)
        {
          v31 = *(v8 + 8);
          v32 = v30 >= v31;
          if (v30 >= v31)
          {
            break;
          }

          v33 = isStringMDNode(*(v29 - 8 * v31), "air.shared");
          ++v30;
          v29 += 8;
          if (v33)
          {
            v32 = 0;
            break;
          }
        }

        v15 = v39;
        v7 = v40;
      }

      else
      {
        v32 = 0;
      }

      if (AGCLLVMUserMeshShaderAnalysis::addGenericVarying(this, v8, 1, v32))
      {
        v37 = 1;
      }

      else
      {
        v34 = isStringMDNode(*(v8 - 8 * *(v8 + 8)), "air.primitive_id");
        BYTE4(v38) |= v34;
        v35 = v38;
        if (v34)
        {
          v35 = v32;
        }

        LODWORD(v38) = v35;
      }

      v27 = v42 + 1;
      v26 = *(v15 + 2);
      if (v42 + 1 >= v26)
      {
        LOBYTE(v8) = 1;
        break;
      }
    }

    if ((v38 & 0x100000000) != 0 || (v7[1784] & 1) == 0 && ((v37 ^ 1) & 1) == 0)
    {
      v43 = xmmword_20E70C580;
      v44 = 0;
      __p = 0u;
      v46 = 0u;
      v47 = 0;
      v48 = v38 & 1;
      v49 = 0;
      if (v38)
      {
        v36 = 20;
      }

      else
      {
        v36 = 18;
      }

      v50 = v36;
      MEMORY[0x20F331AA0](&__p, "agc.per_prim.primitive_id");
      GenericVaryingAllocator::addVarying(this + 5168, &v43);
      if (SBYTE7(v46) < 0)
      {
        operator delete(__p);
      }
    }

LABEL_67:
    ++v6;
    v5 = *(v4 + 8);
  }

  while (v6 < v5);
  if (v8)
  {
    return (*(*this + 160))(this);
  }

  else
  {
    return 0;
  }
}

BOOL parseMDPrimitiveType(uint64_t a1, int *a2)
{
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 40), "air.line"))
  {
    v4 = 1;
  }

  else if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 40), "air.point"))
  {
    v4 = 0;
  }

  else
  {
    result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 40), "air.triangle");
    if (!result)
    {
      return result;
    }

    v4 = 2;
  }

  *a2 = v4;
  return 1;
}

uint64_t AGCLLVMUserMeshShaderAnalysis::addGenericVarying(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 - 8 * *(a2 + 8));
  if (a3)
  {
    v9 = "air.primitive_data";
  }

  else
  {
    v9 = "air.vertex_data";
  }

  if (isStringMDNode(v8, v9))
  {
    v32 = 0;
  }

  else
  {
    v10 = *(a2 - 8 * *(a2 + 8));
    if (a3)
    {
      v11 = "air.mesh_primitive_data";
    }

    else
    {
      v11 = "air.mesh_vertex_data";
    }

    v32 = 0;
    if (!isStringMDNode(v10, v11))
    {
      return 0;
    }
  }

  LODWORD(v21) = 1;
  result = parseMDInt(0, a2, &v21, &v32);
  if (result)
  {
    result = *(a2 - 8 * *(a2 + 8) + 16);
    if (result)
    {
      if (*result)
      {
        return 0;
      }

      if (a3)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }

      if (v32 < 0xFFFFFFFA)
      {
        v14 = ((a3 != 0) | (2 * v32)) + 6;
      }

      else
      {
        v14 = ~v32;
      }

      v21 = 1;
      v22 = v13;
      v23 = 0;
      v24 = v14;
      v27 = 0;
      v28 = 0;
      v29 = a4;
      v30 = 0;
      if (a4)
      {
        v15 = 10;
      }

      else
      {
        v15 = 1;
      }

      if (a4)
      {
        v16 = 20;
      }

      else
      {
        v16 = 18;
      }

      if (a3)
      {
        v15 = v16;
      }

      v31 = v15;
      String = llvm::MDString::getString(result);
      if (String)
      {
        std::string::basic_string[abi:nn200100](&v19, String, v18);
      }

      else
      {
        v19 = 0uLL;
        v20 = 0;
      }

      __p = v19;
      v26 = v20;
      GenericVaryingAllocator::addVarying(a1 + 5168, &v21);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      return 1;
    }
  }

  return result;
}

void AGCLLVMUserMeshShaderAnalysis::~AGCLLVMUserMeshShaderAnalysis(AGCLLVMUserMeshShaderAnalysis *this)
{
  *this = &unk_282558678;
  *(this + 213) = &unk_282558788;
  v3 = (this + 5736);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 5192);
  v2 = *(this + 646);
  if (v2)
  {
    *(this + 647) = v2;
    operator delete(v2);
  }

  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282558678;
  *(this + 213) = &unk_282558788;
  v3 = (this + 5736);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 5192);
  v2 = *(this + 646);
  if (v2)
  {
    *(this + 647) = v2;
    operator delete(v2);
  }

  AGCLLVMObject::~AGCLLVMObject(this);
}

uint64_t virtual thunk toAGCLLVMUserObjectShaderBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserObjectShaderBase *this)
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

uint64_t AGCLLVMUserMeshShader::constructReply(AGCLLVMUserMeshShader *this)
{
  v93 = *MEMORY[0x277D85DE8];
  if (AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v72 = AGCLLVMUserObject::constructFlatReply(this);
    v2 = this + *(*this - 24);
    v2[4358] = 1;
    v3 = *(v2 + 1082);
    v4 = *(v2 + 1080) - *(v2 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 4, *(this + 1152));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 6, *(this + 1153));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 8, *(this + 1154));
    v68 = flatbuffers::FlatBufferBuilder::EndTable((v2 + 4288), v4 + v3);
    v5 = *(this + 5472);
    v80 = 0;
    v81 = 0u;
    v82[0] = v83;
    v82[1] = 0x800000000;
    v83[64] = 0x1FFFFFFFFLL;
    v84 = v5;
    v91[7] = 0;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    memset(v91, 0, 26);
    v92 = 1;
    if (*(this + 1236))
    {
      v6 = *(this + 617);
      do
      {
        GenericVaryingAllocator::addVarying(&v80, v6);
        v6 += 64;
      }

      while (v6 < *(this + 617) + (*(this + 1236) << 6));
    }

    GenericVaryingAllocator::allocate(&v80, *(this + *(*this - 24) + 2168));
    GenericVaryingAllocator::serialize(&v80, (this + *(*this - 24) + 4288));
    if (v81 == v80)
    {
      v7 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
    }

    else
    {
      v7 = v80;
    }

    v69 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v7, (v81 - v80) >> 2);
    v8 = this + *(*this - 24);
    v8[4358] = 1;
    v9 = *(v8 + 1082);
    v10 = *(v8 + 1080) - *(v8 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 4, v88);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 6, SDWORD1(v88));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 8, SDWORD2(v88));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 16, SDWORD1(v89));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 10, SDWORD2(v86));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 12, SHIDWORD(v86));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 14, v87);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 18, SHIDWORD(v87));
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v10 + v9);
    v12 = this + *(*this - 24);
    v13 = *(v12 + 1080);
    v12[4358] = 1;
    v14 = *(v12 + 1082);
    v15 = v13 - *(v12 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 4, v91[0]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 6, v91[1]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 8, v91[2]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 16, v91[5]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 10, SDWORD2(v89));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 12, SHIDWORD(v89));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 14, v90);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 536, 18, SHIDWORD(v90));
    v16 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v15 + v14);
    v17 = this + *(*this - 24);
    v18 = *(v17 + 1080);
    v17[4358] = 1;
    LODWORD(v12) = *(v17 + 1082);
    v19 = v18 - *(v17 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 4, v68);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 6, *(this + 1204));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 8, *(this + 1205));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v17 + 536, 10, *(this + 4828));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 12, *(this + 1218));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 14, *(this + 1219));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 16, *(this + 1214) - *(this + 1220));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 18, *(this + 1216));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 60, *(this + 1220));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 20, *(this + 1215));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 22, *(this + 1217));
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 24, v11);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 26, v16);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 28, LOBYTE(v91[6]), 0);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 30, v69);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 32, *(this + 4841), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 34, *(this + 1209));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 36, *(this + 4845), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 38, *(this + 4843), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 40, *(this + 4847), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 42, *(this + 4832), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 44, *(this + 4842), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 46, *(this + 4849), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 48, *(this + 1146));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 50, *(this + 4600), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 52, *(this + 4848), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 536, 54, *(this + 1194));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 56, *(this + 12), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 536, 58, *(this + 4601), 0);
    LODWORD(v12) = flatbuffers::FlatBufferBuilder::EndTable((v17 + 4288), v19 + v12);
    v20 = this + *(*this - 24);
    v21 = *(v20 + 1080);
    v20[4358] = 1;
    v22 = *(v20 + 1082);
    v23 = v21 - *(v20 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v20 + 4288), v72);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>((v20 + 4288), v12);
    v24 = *(*this - 24);
    v25 = flatbuffers::FlatBufferBuilder::EndTable((v20 + 4288), v23 + v22);
    flatbuffers::FlatBufferBuilder::Finish((this + v24 + 4288), v25, v26);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v27 = *this;
    v28 = this + *(*this - 24);
    v28[4454] = 1;
    v29 = *(v27 - 24);
    v30 = flatbuffers::FlatBufferBuilder::EndTable((v28 + 4384), *(v28 + 2208) - *(v28 + 2216) + *(v28 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v29 + 4384), v30, v31);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    v32 = (this + *(*this - 24));
    v33 = v32[314];
    if (v33)
    {
      if (v32[315])
      {
        v34 = v32 + 314;
      }

      else
      {
        v34 = v32 + 384;
      }
    }

    else
    {
      v34 = v32 + 384;
    }

    v36 = (*v34 + **v34);
    v37 = (v36 + *(v36 - *v36 + 4));
    v38 = (v37 + *v37);
    if (v33)
    {
      if (v32[315])
      {
        v39 = (v32 + 314);
      }

      else
      {
        v39 = (v32 + 384);
      }
    }

    else
    {
      v39 = (v32 + 384);
    }

    v40 = 0;
    v41 = (v38 + *(v38 - *v38 + 8));
    if (*v39 && v39[1])
    {
      v40 = (*v39 + **v39);
    }

    v42 = (v40 - *v40);
    if (*v42 >= 5u && (v43 = v42[2]) != 0)
    {
      v44 = (v40 + v43 + *(v40 + v43));
    }

    else
    {
      v44 = 0;
    }

    v45 = (v44 - *v44);
    if (*v45 >= 0x3Du && (v46 = v45[30]) != 0)
    {
      v47 = *(v44 + v46);
    }

    else
    {
      v47 = 0;
    }

    v48 = *(v41 + *v41);
    v49 = *(this + 1204);
    v70 = *(this + 1223);
    v71 = *(this + 1221);
    v73 = *(this + 1222);
    v50 = *(this + 1205);
    v51 = *(this + 1224);
    v52 = *(this + 1194);
    v53 = *(this + 1225);
    v54 = *(v32[271] + 1004);
    if (v53 > v54)
    {
      std::to_string(&v75, v53);
      v55 = std::string::insert(&v75, 0, "Mesh unique scalar count of ");
      v56 = v55->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      v57 = std::string::append(&v76, " exceeds limit of ");
      v58 = v57->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v74, *(*(this + *(*this - 24) + 2168) + 1004));
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v74;
      }

      else
      {
        v59 = v74.__r_.__value_.__r.__words[0];
      }

      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v74.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v77, v59, size);
      v62 = v61->__r_.__value_.__r.__words[2];
      *__p = *&v61->__r_.__value_.__l.__data_;
      v79 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      if (v79 >= 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      if (v79 >= 0)
      {
        v64 = HIBYTE(v79);
      }

      else
      {
        v64 = __p[1];
      }

      std::string::append((this + *(*this - 24) + 1656), v63, v64);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }
    }

    if (v48 > 0x20)
    {
      v35 = 0;
    }

    else
    {
      v65 = validateUserMeshLocalMemoryUsage(v47, ((v49 + 3) & 0xFFFFFFFC) * v71 + v50 * v73 + (v70 * ((v49 + 3) & 0xFFFFFFFC) + v51 * v50) * v52, *(*(this + *(*this - 24) + 2168) + 996), *(*(this + *(*this - 24) + 2168) + 992), *(*(this + *(*this - 24) + 2168) + 1000), (this + *(*this - 24) + 1656));
      if (v53 <= v54)
      {
        v35 = v65;
      }

      else
      {
        v35 = 0;
      }
    }

    __p[0] = &v85;
    std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](__p);
    llvm::SmallVector<GenericVarying,8u>::~SmallVector(v82);
    if (v80)
    {
      *&v81 = v80;
      operator delete(v80);
    }
  }

  else
  {
    v35 = 0;
  }

  v66 = *MEMORY[0x277D85DE8];
  return v35;
}

void AGCLLVMUserMeshShader::getCompilationKeyDescription(AGCLLVMUserMeshShader *this@<X0>, std::string *a2@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(&v59, "AGCMeshContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v57, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v60);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v60.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v60.__r_.__value_.__r + *(v60.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v60.__r_.__value_.__r + *(v60.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v73, v57, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v60.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v60.__r_.__value_.__r.__words + *(v60.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v60.__r_.__value_.__r.__words[2] = v6;
  v61 = MEMORY[0x277D82878] + 16;
  if (v63 < 0)
  {
    operator delete(v62[7].__locale_);
  }

  v61 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v62);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v64);
  std::string::basic_string[abi:nn200100]<0>(v55, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v74, v55, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(v53, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v75, v53, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v51, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v76, v51, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v49, "maxVertexAmplificationCount");
  _agcFieldString<unsigned int>(&v77, v49, v3[2] & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v47, "manufactureUnlinkedVaryings");
  _agcFieldString<unsigned int>(&v78, v47, (*(v3 + 4) >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v45, "customBorderColor");
  _agcFieldString<unsigned int>(&v79, v45, (*(v3 + 4) >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(v43, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v80, v43, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v41, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v81, v41, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v39, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v82, v39, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v37, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v83, &v37, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v35, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v84, v35, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v33, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v85, v33, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v31, "enableStackShadow");
  _agcFieldString<unsigned int>(&v86, v31, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v29, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v87, v29, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v27, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v88, v27, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v25, "addDefaultPointSize");
  _agcFieldString<unsigned int>(&v89, v25, (*(v3 + 4) >> 6) & 1);
  std::string::basic_string[abi:nn200100]<0>(v23, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v90, v23, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "noObjectShader");
  _agcFieldString<unsigned int>(&v91, v21, (*(v3 + 4) >> 8) & 1);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v59;
  }

  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v71, 0);
  std::string::basic_string[abi:nn200100]<0>(v66, "{");
  _agcIndentedLine(&v68, v66, 0);
  if ((v70 & 0x80u) == 0)
  {
    v7 = &v68;
  }

  else
  {
    v7 = v68;
  }

  if ((v70 & 0x80u) == 0)
  {
    v8 = v70;
  }

  else
  {
    v8 = v69;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v70 < 0)
  {
    operator delete(v68);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 57; i += 3)
  {
    v12 = &v73 + i * 8;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[i + 2]) < 0)
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
      std::string::__init_copy_ctor_external(&v65, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v65 = __p;
    }

    _agcIndentedLine(&v68, &v65, 1);
    if ((v70 & 0x80u) == 0)
    {
      v14 = &v68;
    }

    else
    {
      v14 = v68;
    }

    if ((v70 & 0x80u) == 0)
    {
      v15 = v70;
    }

    else
    {
      v15 = v69;
    }

    std::string::append(&v60, v14, v15);
    if (v70 < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
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

  std::string::basic_string[abi:nn200100]<0>(&v68, "}");
  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v68, 0);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v60;
  }

  else
  {
    v16 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
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

  if (v70 < 0)
  {
    operator delete(v68);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v19 = 57;
  do
  {
    if (v73.__r_.__value_.__s.__data_[v19 * 8 - 1] < 0)
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
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37);
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

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMUserMeshShader::~AGCLLVMUserMeshShader(AGCLLVMUserMeshShader *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825587A8;
  *(v1 + 783) = &unk_282558B10;
  *(v1 + 996) = &unk_282558C20;
  v5 = (v1 + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v5);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector((v1 + 4936));
  v2 = *(v1 + 614);
  if (v2)
  {
    *(v1 + 615) = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v1 + 4784));
  v3 = *(v1 + 596);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, &off_28255D770);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6264));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825587A8;
  *(v1 + 783) = &unk_282558B10;
  *(v1 + 996) = &unk_282558C20;
  v5 = (v1 + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v5);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector((v1 + 4936));
  v2 = *(v1 + 614);
  if (v2)
  {
    *(v1 + 615) = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v1 + 4784));
  v3 = *(v1 + 596);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, &off_28255D770);

  AGCLLVMObject::~AGCLLVMObject((v1 + 6264));
}

void AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(AGCLLVMUserObjectShaderBase *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[7];
  *(this + *(*this - 24) + 1704) = a2[8];
  v5 = *(this + 591);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4712));
  }

  v7 = *(this + 588);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4688));
  }

  v8 = *(this + 583);
  if (v8)
  {
    do
    {
      v9 = *v8;
      AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v8 + 3));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(this + 581);
  *(this + 581) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 580);
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4624));
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 1);
}

void AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache(AGCLLVMUserObjectShaderBase::FunctionStateCache *this)
{
  v2 = *(this + 38);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 288));
  }

  v4 = *(this + 35);
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 264));
  }

  v6 = *(this + 32);
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 240));
  }

  v8 = *(this + 29);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 216));
  }

  v9 = *(this + 26);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 192));
  }

  v10 = *(this + 23);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 168));
  }

  v11 = *(this + 20);
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 144));
  }

  v12 = *(this + 17);
  if (v12 != -8192 && v12 != -4096 && v12)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 120));
  }

  v13 = *(this + 14);
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 96));
  }

  v14 = *(this + 11);
  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 72));
  }

  v15 = *(this + 8);
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 48));
  }

  v16 = *(this + 5);
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 24));
  }

  v17 = *(this + 2);
  if (v17 != -8192 && v17 != -4096)
  {
    if (v17)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }
  }
}

uint64_t AGCLLVMUserObjectShaderBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserObjectShaderBase *this)
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

llvm::Type **AGCLLVMUserMeshShader::buildNumGroups(AGCLLVMUserMeshShader *this, llvm::Type *a2)
{
  v4 = this + *(*this - 24);
  v5 = *(v4 + 271);
  v21 = *(v4 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v4 + 1712));
  v23 = *(v4 + 452);
  v6 = (*(*v5 + 344))(v5, &v21);
  v7 = *(this + *(*this - 24) + 1904);
  v8 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v4 + 214, v6, v8, v19);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = (this + *(*this - 24));
  v11 = v10[238];
  v12 = v10[237];
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v10 + 214), v11, PointerCast, v13, v19);
  v15 = this + *(*this - 24);
  v20 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v15 + 1704), GEP, v19);
  v17 = this + *(*this - 24);
  v20 = 257;
  return llvm::IRBuilderBase::CreateZExtOrTrunc((v17 + 1712), Load, a2, v19);
}

llvm::Value *llvm::IRBuilderBase::CreatePointerCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  PointerCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      PointerCast = llvm::CastInst::CreatePointerCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerCast, a4);
    }

    else
    {
      PointerCast = (*(*this[9] + 232))(this[9], a2, a3);
      if (PointerCast)
      {
        v7 = *(PointerCast + 16) >= 0x1Cu;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerCast, a4);
      }
    }
  }

  return PointerCast;
}

llvm::Type **llvm::IRBuilderBase::CreateZExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
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
    v10 = 39;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

uint64_t AGCLLVMUserMeshShader::buildGlobalSize(AGCLLVMUserMeshShader *this, llvm::Type *a2, int a3)
{
  v6 = (*(*this + 520))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v11 = 257;
  return llvm::IRBuilderBase::CreateMul((v8 + 1712), v6, v7, v10);
}

uint64_t AGCLLVMUserMeshShader::markInvariantOutputs(AGCLLVMUserMeshShader *this, const char *a2)
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
    *(this + 4744) = v5;
  }

  if (*(this + 4744) == 1 && *(this + 32) == 1)
  {
    v6 = *(this + *(*this - 24) + 2136);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v8 = *this;
      v9 = *(this + *(*this - 24) + 2136);
      __p = 0;
      v23 = 0;
      v26[0] = 0;
      v26[1] = 0;
      v24 = 0;
      v25 = v26;
      v26[2] = v9;
      v27 = 0;
      v10 = *(Function + 8);
      if (v10)
      {
        do
        {
          MarkInvariants::addSeed(&__p, *(*(v10 + 24) - 32 * (*(*(v10 + 24) + 20) & 0x7FFFFFF) + 32), 0);
          v10 = *(v10 + 8);
        }

        while (v10);
        v8 = *this;
      }

      if ((MarkInvariants::markInvariant(&__p, (this + *(v8 - 24) + 1704)) & 1) == 0)
      {
        v12 = *(this + *(*this - 24) + 2136);
        v13 = v12 + 24;
        for (i = *(v12 + 32); i != v13; i = *(i + 8))
        {
          v15 = i - 56;
          if (!i)
          {
            v15 = 0;
          }

          v16 = v15 + 72;
          v17 = *(v15 + 80);
          if (v17 == v15 + 72)
          {
            v19 = 0;
          }

          else
          {
            do
            {
              v18 = v17 - 24;
              if (!v17)
              {
                v18 = 0;
              }

              v19 = *(v18 + 48);
              if (v19 != v18 + 40)
              {
                break;
              }

              v17 = *(v17 + 8);
            }

            while (v17 != v16);
          }

          while (v17 != v16)
          {
            if (v19)
            {
              v20 = (v19 - 24);
            }

            else
            {
              v20 = 0;
            }

            if (llvm::FPMathOperator::classof(v20))
            {
              llvm::Instruction::setFast(v20);
            }

            v19 = *(v19 + 8);
            v21 = v17 - 24;
            if (!v17)
            {
              v21 = 0;
            }

            while (v19 == v21 + 40)
            {
              v17 = *(v17 + 8);
              if (v17 == v16)
              {
                break;
              }

              v21 = v17 - 24;
              if (!v17)
              {
                v21 = 0;
              }

              v19 = *(v21 + 48);
            }
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v26[0]);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserMeshShader::replaceBuiltins(AGCLLVMUserMeshShader *this)
{
  v152 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObjectShaderBase::replaceBuiltins(this);
  if (result)
  {
    v3 = *(this + *(*this - 24) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v144, *v3);
    v85 = this;
    v151 = this;
    v144 = &unk_2825599A0;
    v150 = v3;
    {
      std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserMeshShader::replaceBuiltins(void)::workitem_functions, "air.set_position_mesh");
      dword_27C8D8A10 = 0;
      dword_27C8D8A18 = 1;
      qword_27C8D8A20 = AGCLLVMUserMeshShader::buildSetPosition;
      unk_27C8D8A28 = 0;
      dword_27C8D8A30 = 7;
      word_27C8D8A34 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8A38, "air.set_point_size_mesh");
      dword_27C8D8A50 = 0;
      dword_27C8D8A58 = 1;
      qword_27C8D8A60 = AGCLLVMUserMeshShader::buildSetPointSize;
      unk_27C8D8A68 = 0;
      dword_27C8D8A70 = 7;
      word_27C8D8A74 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8A78, "air.set_clip_distance_mesh");
      dword_27C8D8A90 = 0;
      dword_27C8D8A98 = 1;
      qword_27C8D8AA0 = AGCLLVMUserMeshShader::buildSetClipDistance;
      unk_27C8D8AA8 = 0;
      dword_27C8D8AB0 = 9;
      word_27C8D8AB4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8AB8, "air.set_render_target_array_index_mesh");
      dword_27C8D8AD0 = 1;
      dword_27C8D8AD8 = 1;
      qword_27C8D8AE0 = AGCLLVMUserMeshShader::buildSetLayerId;
      unk_27C8D8AE8 = 0;
      dword_27C8D8AF0 = 7;
      word_27C8D8AF4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8AF8, "air.set_viewport_array_index_mesh");
      dword_27C8D8B10 = 1;
      dword_27C8D8B18 = 1;
      qword_27C8D8B20 = AGCLLVMUserMeshShader::buildSetViewportId;
      unk_27C8D8B28 = 0;
      dword_27C8D8B30 = 7;
      word_27C8D8B34 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8B38, "air.set_primitive_id_mesh");
      dword_27C8D8B50 = 0;
      dword_27C8D8B58 = 1;
      qword_27C8D8B60 = AGCLLVMUserMeshShader::buildSetPrimitiveId;
      unk_27C8D8B68 = 0;
      dword_27C8D8B70 = 7;
      word_27C8D8B74 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8B78, "air.set_primitive_culled_mesh");
      dword_27C8D8B90 = 0;
      dword_27C8D8B98 = 1;
      qword_27C8D8BA0 = AGCLLVMUserMeshShader::buildSetPrimitiveCulled;
      unk_27C8D8BA8 = 0;
      dword_27C8D8BB0 = 7;
      word_27C8D8BB4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8BB8, "air.set_index_mesh");
      dword_27C8D8BD0 = 0;
      dword_27C8D8BD8 = 1;
      qword_27C8D8BE0 = AGCLLVMUserMeshShader::buildSetIndex;
      unk_27C8D8BE8 = 0;
      dword_27C8D8BF0 = 7;
      word_27C8D8BF4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8BF8, "air.set_indices_mesh.v2i8");
      dword_27C8D8C10 = 0;
      dword_27C8D8C18 = 1;
      qword_27C8D8C20 = AGCLLVMUserMeshShader::buildSetIndices;
      qword_27C8D8C28 = 0;
      dword_27C8D8C30 = 7;
      word_27C8D8C34 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8C38, "air.set_indices_mesh.v4i8");
      dword_27C8D8C50 = 0;
      dword_27C8D8C58 = 1;
      qword_27C8D8C60 = AGCLLVMUserMeshShader::buildSetIndices;
      qword_27C8D8C68 = 0;
      dword_27C8D8C70 = 7;
      word_27C8D8C74 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8C78, "air.set_vertex_data_mesh");
      dword_27C8D8C90 = 2;
      dword_27C8D8C98 = 1;
      qword_27C8D8CA0 = AGCLLVMUserMeshShader::buildSetVertexData;
      qword_27C8D8CA8 = 0;
      dword_27C8D8CB0 = 9;
      word_27C8D8CB4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8CB8, "air.set_primitive_data_mesh");
      dword_27C8D8CD0 = 2;
      dword_27C8D8CD8 = 1;
      qword_27C8D8CE0 = AGCLLVMUserMeshShader::buildSetPrimitiveData;
      qword_27C8D8CE8 = 0;
      dword_27C8D8CF0 = 9;
      word_27C8D8CF4 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8CF8, "air.set_primitive_count_mesh");
      dword_27C8D8D10 = 0;
      dword_27C8D8D18 = 1;
      qword_27C8D8D20 = AGCLLVMUserMeshShader::buildSetPrimitiveCount;
      qword_27C8D8D28 = 0;
      dword_27C8D8D30 = 5;
      word_27C8D8D34 = 0;
      std::string::basic_string[abi:nn200100]<0>(byte_27C8D8D38, "air.object_threadgroup_position_in_grid");
      dword_27C8D8D50 = 0;
      dword_27C8D8D58 = 1;
      qword_27C8D8D60 = AGCLLVMUserMeshShader::buildOSTGGridPosition;
      qword_27C8D8D68 = 0;
      dword_27C8D8D70 = 1;
      word_27C8D8D74 = 0;
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_20E4E1000);
    }

    v86 = 0;
    while (1)
    {
      std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
      v141 = &v143;
      v142 = 0x100000000;
      llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&v141, &__p, &v136);
      if ((v135[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, ".i8");
      std::string::basic_string[abi:nn200100]<0>(&v136, ".i16");
      std::string::basic_string[abi:nn200100]<0>(v137, ".i32");
      v139[0] = &v140;
      v139[1] = 0x300000000;
      llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(v139, &__p, v138);
      for (i = 0; i != -72; i -= 24)
      {
        if (v137[i + 23] < 0)
        {
          operator delete(*&v137[i]);
        }
      }

      std::string::basic_string[abi:nn200100]<0>(v110, ".i1");
      std::string::basic_string[abi:nn200100]<0>(&v110[3], ".i8");
      std::string::basic_string[abi:nn200100]<0>(v112, ".i16");
      std::string::basic_string[abi:nn200100]<0>(v113, ".i32");
      std::string::basic_string[abi:nn200100]<0>(v114, ".f16");
      std::string::basic_string[abi:nn200100]<0>(v115, ".f32");
      std::string::basic_string[abi:nn200100]<0>(v116, ".v2i1");
      std::string::basic_string[abi:nn200100]<0>(v117, ".v2i8");
      std::string::basic_string[abi:nn200100]<0>(v118, ".v2i16");
      std::string::basic_string[abi:nn200100]<0>(v119, ".v2i32");
      std::string::basic_string[abi:nn200100]<0>(v120, ".v2f16");
      std::string::basic_string[abi:nn200100]<0>(v121, ".v2f32");
      std::string::basic_string[abi:nn200100]<0>(v122, ".v3i1");
      std::string::basic_string[abi:nn200100]<0>(v123, ".v3i8");
      std::string::basic_string[abi:nn200100]<0>(v124, ".v3i16");
      std::string::basic_string[abi:nn200100]<0>(v125, ".v3i32");
      std::string::basic_string[abi:nn200100]<0>(v126, ".v3f16");
      std::string::basic_string[abi:nn200100]<0>(v127, ".v3f32");
      std::string::basic_string[abi:nn200100]<0>(v128, ".v4i1");
      std::string::basic_string[abi:nn200100]<0>(v129, ".v4i8");
      std::string::basic_string[abi:nn200100]<0>(v130, ".v4i16");
      std::string::basic_string[abi:nn200100]<0>(v131, ".v4i32");
      std::string::basic_string[abi:nn200100]<0>(v132, ".v4f16");
      std::string::basic_string[abi:nn200100]<0>(v133, ".v4f32");
      *&__p = v135;
      *(&__p + 1) = 0x1800000000;
      llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&__p, v110, &__p);
      v5 = 72;
      do
      {
        if (SHIBYTE(v110[v5 - 1]) < 0)
        {
          operator delete(*(&v107 + v5 * 8 + 8));
        }

        v5 -= 3;
      }

      while (v5 * 8);
      v95 = &AGCLLVMUserMeshShader::replaceBuiltins(void)::workitem_functions + 64 * v86;
      v6 = *(v95 + 6);
      if (v6 == 1)
      {
        p_p = v139;
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_19;
        }

        p_p = &__p;
      }

      llvm::SmallVectorImpl<std::string>::operator=(&v141, p_p);
LABEL_19:
      if (v142)
      {
        v8 = v141;
        v89 = &v141[3 * v142];
        while (1)
        {
          std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v96, v95, v8);
          Function = llvm::Module::getFunction();
          if (Function)
          {
            break;
          }

LABEL_139:
          if (v97 < 0)
          {
            operator delete(v96);
          }

          v8 += 3;
          if (v8 == v89)
          {
            goto LABEL_142;
          }
        }

        v10 = Function;
        v11 = *(v95 + 14);
        v90 = Function;
        if (v11 == 12)
        {
          for (j = *(Function + 8); j; v146 = 0uLL)
          {
            v15 = *(j + 24);
            j = *(j + 8);
            llvm::IRBuilderBase::SetInsertPoint(v145, v15);
            v16 = v151 + *(*v151 - 24);
            v107 = v146;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v108, v145);
            v109 = v147;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v107, (v16 + 1712));
            if (v108)
            {
              llvm::MetadataTracking::untrack();
            }

            v17 = *(v95 + 5);
            v18 = *(v95 + 6);
            v19 = (v151 + (v18 >> 1));
            if (v18)
            {
              v17 = *(*v19 + v17);
            }

            v17(v19, v15);
          }

          goto LABEL_138;
        }

        if (v11 == 11)
        {
          v12 = *(v95 + 5);
          if (v12)
          {
            v13 = strlen(*(v95 + 5));
            v110[0] = &v110[3];
            *&v110[1] = xmmword_20E70C500;
            llvm::SmallVectorImpl<char>::append<char const*,void>(v110, v12, &v12[v13]);
          }

          else
          {
            v110[2] = 64;
            v110[0] = &v110[3];
            v110[1] = 0;
          }

          llvm::SmallVectorImpl<char>::append<char const*,void>(v110, ".", "");
          if (v110[2] < v110[1])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v83 = *(v10 + 24);
          llvm::Module::getOrInsertFunction();
          llvm::Value::replaceAllUsesWith();
          if (v110[0] != &v110[3])
          {
            free(v110[0]);
          }

          goto LABEL_138;
        }

        v20 = **(*(Function + 24) + 16);
        v21 = ((*(v20 + 8) & 0xFE) == 18) & v95[61];
        v88 = v8;
        if (v21 == 1)
        {
          v22 = *(v20 + 32);
        }

        else
        {
          v22 = 1;
        }

        v93 = v22;
        v87 = v147;
        v23 = *(Function + 8);
        if (!v23)
        {
LABEL_132:
          v147 = v87;
          v8 = v88;
LABEL_138:
          llvm::Function::eraseFromParent(v90);
          goto LABEL_139;
        }

        v91 = **(*(Function + 24) + 16);
        while (2)
        {
          v24 = *(v23 + 24);
          v92 = *(v23 + 8);
          v25 = *(v95 + 8);
          if (v25 == 1)
          {
            v26 = 0;
LABEL_42:
            v147 = v26;
          }

          else if (v25 == 2)
          {
            v26 = 121;
            goto LABEL_42;
          }

          llvm::IRBuilderBase::SetInsertPoint(v145, v24);
          v27 = llvm::UndefValue::get();
          if (!v93)
          {
LABEL_129:
            if (*v24 != v148)
            {
              llvm::Value::replaceAllUsesWith();
            }

            llvm::Instruction::eraseFromParent(v24);
            v23 = v92;
            if (!v92)
            {
              goto LABEL_132;
            }

            continue;
          }

          break;
        }

        v28 = 0;
        while (2)
        {
          v94 = v27;
          v112[0] = 0;
          v111 = 0u;
          memset(v110, 0, sizeof(v110));
          v29 = llvm::CallBase::arg_end(v24) - v24 + 32 * (*(v24 + 5) & 0x7FFFFFF);
          if ((v29 & 0x1FFFFFFFE0) != 0)
          {
            v30 = (v29 >> 5);
            v31 = v110;
            v32 = v24;
            do
            {
              v33 = (v32 - 32 * (*(v24 + 5) & 0x7FFFFFF));
              v34 = *v33;
              *v31 = *v33;
              if (v21 && (*(*v34 + 8) & 0xFE) == 0x12)
              {
                v106 = 257;
                v35 = llvm::ConstantInt::get();
                *v31 = llvm::IRBuilderBase::CreateExtractElement(v145, v34, v35, &PrimitiveSizeInBits);
              }

              ++v31;
              v32 = (v32 + 32);
              --v30;
            }

            while (v30);
          }

          if (v95[60])
          {
            v36 = *v110[0];
            if ((*(*v110[0] + 8) & 0xFE) == 0x12)
            {
              v36 = **(v36 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v36);
            v105 = v37;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v38 = 0;
            }

            else
            {
              v39 = v149;
              if ((*(*v110[0] + 8) & 0xFE) == 0x12)
              {
                v40 = *(*v110[0] + 32);
                v39 = llvm::FixedVectorType::get();
              }

              if ((v29 & 0x1FFFFFFFE0) != 0)
              {
                v41 = (v29 >> 5);
                v42 = v110;
                do
                {
                  v43 = *v42;
                  v106 = 257;
                  *v42++ = llvm::IRBuilderBase::CreateFPExt(v145, v43, v39, &PrimitiveSizeInBits);
                  --v41;
                }

                while (v41);
              }

              v38 = 1;
            }
          }

          else
          {
            v38 = 0;
          }

          if (llvm::FPMathOperator::classof(v24))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v24);
          }

          else
          {
            FastMathFlags = 0;
          }

          v45 = v151 + *(*v151 - 24);
          v101 = v146;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v102, v145);
          v103 = v147;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v101, (v45 + 1712));
          if (v102)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v47 = *(v95 + 14);
          if (v47 <= 5)
          {
            if (v47 > 2)
            {
              if (v47 != 3)
              {
                if (v47 == 4)
                {
                  v76 = (v110[0] + 24);
                  if (*(v110[0] + 8) >= 0x41u)
                  {
                    v76 = *v76;
                  }

                  v51 = *v76;
                  v48 = *(v95 + 5);
                  v77 = *(v95 + 6);
                  v50 = *v24;
                  v52 = (v151 + (v77 >> 1));
                  if (v77)
                  {
                    v48 = *(*v52 + v48);
                  }
                }

                else
                {
                  v48 = *(v95 + 5);
                  v49 = *(v95 + 6);
                  v50 = v110[0];
                  v51 = v110[1];
                  v52 = (v151 + (v49 >> 1));
                  if (v49)
                  {
                    v48 = *(*v52 + v48);
                  }
                }

                v72 = v48(v52, v50, v51);
                goto LABEL_118;
              }

              v57 = *(v95 + 5);
              v71 = *(v95 + 6);
              v59 = v110[0];
              v60 = (v151 + (v71 >> 1));
              if (v71)
              {
LABEL_92:
                v57 = *(*v60 + v57);
              }

LABEL_93:
              v72 = v57(v60, v59);
              goto LABEL_118;
            }

            if (v47 == 1)
            {
              v67 = *(v95 + 5);
              v68 = *(v95 + 6);
              v69 = (v151 + (v68 >> 1));
              if (v68)
              {
                v67 = *(*v69 + v67);
              }

              v72 = v67(v69);
LABEL_118:
              FPTrunc = v72;
            }

            else if (v47 == 2)
            {
              v57 = *(v95 + 5);
              v58 = *(v95 + 6);
              v59 = *v24;
              v60 = (v151 + (v58 >> 1));
              if (v58)
              {
                goto LABEL_92;
              }

              goto LABEL_93;
            }

LABEL_119:
            v80 = v151 + *(*v151 - 24);
            v98 = *(v80 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (v80 + 1712));
            v100 = *(v80 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v98, v145);
            if (v99)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v38)
            {
              v81 = *v24;
              if (v21 && (*(v81 + 2) & 0xFE) == 0x12)
              {
                v81 = **(v81 + 2);
              }

              v106 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v145, FPTrunc, v81, &PrimitiveSizeInBits);
            }

            if (v21)
            {
              v106 = 257;
              v82 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v145, v94, FPTrunc, v82, &PrimitiveSizeInBits);
            }

            ++v28;
            v27 = FPTrunc;
            if (v28 == v93)
            {
              goto LABEL_129;
            }

            continue;
          }

          break;
        }

        if (v47 <= 7)
        {
          if (v47 == 6)
          {
            v61 = *(v95 + 5);
            v70 = *(v95 + 6);
            v63 = v110[0];
            v64 = v110[1];
            v66 = (v151 + (v70 >> 1));
            if (v70)
            {
              v61 = *(*v66 + v61);
            }

            v65 = FastMathFlags;
          }

          else
          {
            v61 = *(v95 + 5);
            v62 = *(v95 + 6);
            v63 = v110[0];
            v64 = v110[1];
            v65 = v110[2];
            v66 = (v151 + (v62 >> 1));
            if (v62)
            {
              v72 = (*(*v66 + v61))(v66, v110[0], v110[1], v110[2]);
              goto LABEL_118;
            }
          }
        }

        else
        {
          if (v47 == 8)
          {
            v53 = *(v95 + 5);
            v73 = *(v95 + 6);
            v55 = v110[0];
            v74 = v110[1];
            v75 = v110[2];
            v56 = (v151 + (v73 >> 1));
            if (v73)
            {
              v53 = *(*v56 + v53);
            }

            v79 = FastMathFlags;
            goto LABEL_113;
          }

          if (v47 != 9)
          {
            if (v47 != 10)
            {
              goto LABEL_119;
            }

            v53 = *(v95 + 5);
            v54 = *(v95 + 6);
            v55 = *v24;
            v56 = (v151 + (v54 >> 1));
            if (v54)
            {
              v53 = *(*v56 + v53);
            }

            v74 = v110;
            v75 = &unk_20E75F419;
            v79 = 0;
LABEL_113:
            v72 = v53(v56, v55, v74, v75, v79);
            goto LABEL_118;
          }

          v61 = *(v95 + 5);
          v78 = *(v95 + 6);
          v66 = (v151 + (v78 >> 1));
          if (v78)
          {
            v61 = *(*v66 + v61);
          }

          v63 = v110;
          v64 = &unk_20E75F419;
          v65 = 0;
        }

        v72 = v61(v66, v63, v64, v65);
        goto LABEL_118;
      }

LABEL_142:
      llvm::SmallVector<std::string,1u>::~SmallVector(&__p);
      llvm::SmallVector<std::string,1u>::~SmallVector(v139);
      llvm::SmallVector<std::string,1u>::~SmallVector(&v141);
      if (++v86 == 14)
      {
        AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(v85, 7, 3);
      }
    }
  }

  v84 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  v5 = *(a1 + 8);
  if (v4 + v5 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::string,false>::grow();
  }

  std::uninitialized_copy[abi:nn200100]<std::string const*,std::string*>(a2, a3, (*a1 + 24 * v5));
  *(a1 + 8) += v4;
}

uint64_t llvm::SmallVectorImpl<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 24 * v4;
        do
        {
          std::string::operator=(v11++, v10++);
          v12 -= 24;
        }

        while (v12);
        v13 = *a1;
        LODWORD(v5) = *(a1 + 8);
      }

      else
      {
        v13 = *a1;
        v11 = *a1;
      }

      p_data = &v13[v5].__r_.__value_.__l.__data_;
      while (p_data != v11)
      {
        v19 = *(p_data - 1);
        p_data -= 3;
        if (v19 < 0)
        {
          operator delete(*p_data);
        }
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        if (v5)
        {
          v6 = *a1 + 24 * v5 - 1;
          v7 = -24 * v5;
          v8 = v6;
          do
          {
            v9 = *v8;
            v8 -= 24;
            if (v9 < 0)
            {
              operator delete(*(v6 - 23));
            }

            v6 = v8;
            v7 += 24;
          }

          while (v7);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<std::string,false>::grow();
      }

      if (v5)
      {
        v14 = *a2;
        v15 = *a1;
        v16 = 24 * v5;
        do
        {
          std::string::operator=(v15++, v14++);
          v16 -= 24;
        }

        while (v16);
      }

      else
      {
        v5 = 0;
      }

      std::uninitialized_copy[abi:nn200100]<std::string const*,std::string*>((*a2 + 24 * v5), (*a2 + 24 * *(a2 + 8)), (*a1 + 24 * v5));
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVector<std::string,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 1;
    v5 = -24 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 24;
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

void std::uninitialized_copy[abi:nn200100]<std::string const*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }
}

uint64_t AGCLLVMUserMeshShader::buildOSTGGridPosition(AGCLLVMUserMeshShader *this)
{
  v2 = this + *(*this - 24);
  v3 = *(v2 + 236);
  v4 = *(v2 + 271);
  v19 = *(v2 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (v2 + 1712));
  v21 = *(v2 + 452);
  v5 = (*(*v4 + 344))(v4, &v19);
  v6 = *(this + 1151);
  v7 = *(this + *(*this - 24) + 1904);
  v8 = llvm::ConstantInt::get();
  v18 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v2 + 1712), v3, v5, v8, v17);
  v10 = *(this + *(*this - 24) + 1992);
  v11 = llvm::PointerType::get();
  v16[16] = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v2 + 214, GEP, v11, v16);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = this + *(*this - 24);
  v14 = *(v13 + 249);
  v18 = 257;
  llvm::Type::isOpaquePointerTy(*PointerCast);
  return llvm::IRBuilderBase::CreateAlignedLoad(v13 + 214, v14, PointerCast, 0, v17);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveCount(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 237);
  v12 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 1712), 38, a3, v6, v11);
  PrimCountPointer = AGCLLVMUserMeshShader::getPrimCountPointer(this, a2);
  llvm::IRBuilderBase::CreateAlignedStore(v5 + 214, Cast, PrimCountPointer, 0);
  v9 = *(this + *(*this - 24) + 1848);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::getPrimCountPointer(AGCLLVMUserMeshShader *this, llvm::Type **a2)
{
  v3 = (this + *(*this - 24));
  v4 = *(this + 568);
  v13 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v3 + 214, a2, v4, v12);
  v6 = (this + *(*this - 24));
  v7 = v6[237];
  v8 = *(this + 1226);
  v9 = v6[238];
  v10 = llvm::ConstantInt::get();
  v13 = 257;
  return llvm::IRBuilderBase::CreateGEP((v6 + 214), v7, PointerCast, v10, v12);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveData(int8x8_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = (v3 + 24);
  if (*(v3 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  v6 = *v5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1);

  return AGCLLVMUserMeshShader::buildSetVaryingData(a1, v4, 1u, v6, v7, v8, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShader::buildSetVaryingData(uint64_t a1, llvm::Type **a2, unsigned int a3, unsigned int a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7)
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = ((a3 != 0) | (2 * a4)) + 6;
  if (a4 >= 0xFFFFFFFA)
  {
    v8 = ~a4;
  }

  v9 = *(a1 + 4944);
  if (v9)
  {
    v13 = *(a1 + 4936);
    v14 = v9 << 6;
    while (*(v13 + 16) != v8)
    {
      v13 += 64;
      v14 -= 64;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    *v67 = 0u;
    v68 = 0u;
    v18 = AGCLLVMBuilder::unboxVector((a1 + *(*a1 - 24) + 1704), a6, v67);
    v19 = v18;
    v20 = *v67[0];
    v21 = (a1 + *(*a1 - 24));
    if (*v67[0] == v21[235] || v20 == v21[236] || v20 == v21[237])
    {
      v22 = v21[238];
      if (v18)
      {
        v23 = v18;
        v24 = v67;
        do
        {
          v25 = a1 + *(*a1 - 24);
          v26 = *v24;
          v27 = *(v25 + 1904);
          v66 = 257;
          *v24++ = llvm::IRBuilderBase::CreateCast(v25 + 1712, 39, v26, v27, v65);
          --v23;
        }

        while (v23);
      }

      v20 = v22;
    }

    v59 = v20;
    BasePointer = AGCLLVMUserMeshShader::getBasePointer(a1, a2, a3, *(v13 + 60), v20, a7);
    if (a3 == 1)
    {
      v29 = a1 + *(*a1 - 24);
      v30 = *(a1 + 4860);
      v31 = *(v29 + 1904);
      v32 = llvm::ConstantInt::get();
      v33 = a1 + *(*a1 - 24);
      VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(a1);
      v35 = *(a1 + 4868);
      v36 = *(a1 + *(*a1 - 24) + 1904);
      v37 = llvm::ConstantInt::get();
      v66 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v33 + 1712), VertexAmpCount, v37, v65);
      v64 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v29 + 1712), v32, Mul, v63);
      v40 = a1 + *(*a1 - 24);
      v66 = 257;
      a5 = llvm::IRBuilderBase::CreateMul((v40 + 1712), a5, Add, v65);
    }

    else
    {
      v41 = *(a1 + 4824);
    }

    v42 = v59;
    if (v19)
    {
      for (i = 0; i != v19; llvm::IRBuilderBase::CreateAlignedStore((a1 + 1712 + *(*a1 - 24)), v67[i++], GEP, 0))
      {
        v44 = i + *(v13 + 52);
        v45 = a1 + *(*a1 - 24);
        v46 = *(v45 + 1904);
        if (*(v13 + 56) == 1)
        {
          v47 = llvm::ConstantInt::get();
          v66 = 257;
          v48 = llvm::IRBuilderBase::CreateMul((v45 + 1712), a5, v47, v65);
          v49 = *(a1 + 1904 + *(*a1 - 24));
          v50 = llvm::ConstantInt::get();
          v64 = 257;
          v51 = v48;
          v42 = v59;
          v52 = llvm::IRBuilderBase::CreateAdd((v45 + 1712), v51, v50, v63);
          v62 = 257;
          v53 = (v45 + 1712);
          v54 = &v61;
        }

        else
        {
          v55 = llvm::ConstantInt::get();
          v66 = 257;
          v52 = llvm::IRBuilderBase::CreateAdd((v45 + 1712), a5, v55, v65);
          v64 = 257;
          v53 = (v45 + 1712);
          v54 = v63;
        }

        GEP = llvm::IRBuilderBase::CreateGEP(v53, v42, BasePointer, v52, v54);
      }
    }

    v57 = *(a1 + *(*a1 - 24) + 1848);
    result = llvm::UndefValue::get();
    v58 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_7:
    v15 = *(a1 + *(*a1 - 24) + 1848);
    v16 = *MEMORY[0x277D85DE8];

    return llvm::UndefValue::get();
  }

  return result;
}

llvm::Value *AGCLLVMUserMeshShader::getBasePointer(void *a1, llvm::Type **a2, unsigned int a3, unsigned int a4, uint64_t a5, llvm::Value *a6)
{
  v11 = *(a1 + *(*a1 - 24) + 1888);
  v12 = llvm::PointerType::get();
  v13 = llvm::PointerType::get();
  v14 = a1 + *(*a1 - 24);
  if (a3)
  {
    v15 = *(v14 + 271);
    v33 = *(v14 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (v14 + 1712));
    v35 = *(v14 + 452);
    PointerCast = (*(*v15 + 352))(v15, &v33);
    if (v34)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v37 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, a2, v12, v36);
  }

  v17 = &a1[3 * a4 + 705];
  v18 = *v17;
  if ((*(v17 + 12) & 1) == 0)
  {
    v19 = *(a1 + *(*a1 - 24) + 1904);
    a6 = llvm::ConstantInt::get();
  }

  v20 = *(a1 + a3 + 1216);
  v21 = *(a1 + *(*a1 - 24) + 1904);
  v22 = llvm::ConstantInt::get();
  v23 = a1 + *(*a1 - 24);
  v37 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v23 + 1712), a6, v22, v36);
  v32 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v23 + 1712), v18, Mul, v31);
  v26 = a1 + *(*a1 - 24);
  v27 = *(v26 + 236);
  v37 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v26 + 1712), v27, PointerCast, Add, v36);
  v29 = (a1 + *(*a1 - 24));
  v37 = 257;
  return llvm::IRBuilderBase::CreatePointerCast(v29 + 214, GEP, v13, v36);
}

uint64_t AGCLLVMUserMeshShader::buildSetVertexData(int8x8_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = (v3 + 24);
  if (*(v3 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  v6 = *v5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1);

  return AGCLLVMUserMeshShader::buildSetVaryingData(a1, v4, 0, v6, v7, v8, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShader::buildSetIndices(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3, llvm::Type **a4)
{
  v8 = *a4;
  v9 = llvm::PointerType::get();
  v10 = (this + *(*this - 24));
  v22 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v10 + 214, a2, v9, v21);
  v12 = this + *(*this - 24);
  v13 = *(v8 + 8);
  v14 = *(v12 + 238);
  v15 = llvm::ConstantInt::get();
  v22 = 257;
  UDiv = llvm::IRBuilderBase::CreateUDiv((v12 + 1712), a3, v15, v21);
  v17 = this + *(*this - 24);
  v22 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v17 + 1712), v8, PointerCast, UDiv, v21);
  llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), a4, GEP, 0);
  v19 = *(this + *(*this - 24) + 1848);
  return llvm::UndefValue::get();
}

uint64_t llvm::IRBuilderBase::CreateUDiv(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 104))(*(this + 9));
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

uint64_t AGCLLVMUserMeshShader::buildSetIndex(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = (this + *(*this - 24));
  v8 = *(this + 567);
  v16 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v7 + 214, a2, v8, v15);
  v10 = this + *(*this - 24);
  v11 = *(v10 + 236);
  v16 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v10 + 1712), v11, PointerCast, a3, v15);
  llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), a4, GEP, 0);
  v13 = *(this + *(*this - 24) + 1848);
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveCulled(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(this, a2, 0x17u, 0, a3, *(&this[238] + *(*this - 24)));
  v7 = this + *(*this - 24);
  v8 = *(v7 + 236);
  v25 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 39, a4, v8, v24);
  v10 = this + *(*this - 24);
  v25 = 257;
  v11 = *Cast;
  v12 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((v10 + 1712), Cast, v12, v24);
  v14 = this + *(*this - 24);
  v15 = *(v14 + 236);
  v16 = this[567];
  v25 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, BuiltinPointer, v16, v24);
  v18 = *(&this[238] + *(*this - 24));
  v19 = llvm::ConstantInt::get();
  v23[16] = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v14 + 1712), v15, PointerCast, v19, v23);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), Shl, GEP, 0);
  v21 = *(&this[231] + *(*this - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::getBuiltinPointer(int8x8_t *a1, llvm::Type **a2, unsigned int a3, uint64_t a4, llvm::Value *a5, llvm::Type *a6)
{
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1);
  BasePointer = AGCLLVMUserMeshShader::getBasePointer(a1, a2, 0, a3, a6, VertexAmpId);
  v13 = a1 + *(*a1 - 24);
  v14 = a1[603].u32[0];
  v15 = *(v13 + 238);
  v16 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), a5, v16, v20);
  v18 = a1 + *(*a1 - 24);
  v21 = 257;
  return llvm::IRBuilderBase::CreateGEP((v18 + 1712), a6, BasePointer, Add, v20);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimitiveId(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  if (this[606].i8[4] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    AGCLLVMUserMeshShader::buildSetVaryingData(this, a2, 1u, 0xFFFFFFFF, a3, a4, VertexAmpId);
  }

  v9 = *(&this[231] + *(*this - 24));

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetViewportId(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = this + 512;
  v9 = this + *(*this - 24);
  v10 = *(v9 + 238);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 39, a4, v10, v22);
  if (v8[65].i8[5] == 1)
  {
    v12 = this + *(*this - 24);
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    VpLayerIdOffsetPointer = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, a2, VertexAmpId);
    v23 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v12 + 1704), VpLayerIdOffsetPointer, v22);
    v16 = this + *(*this - 24);
    v17 = *(v16 + 238);
    v23 = 257;
    v18 = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, Load, v17, v22);
    v21[16] = 257;
    Cast = llvm::IRBuilderBase::CreateAdd((v16 + 1712), Cast, v18, v21);
  }

  if (v8[93].i8[6] == 1)
  {
    v19 = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    AGCLLVMUserMeshShader::buildSetVaryingData(this, a2, 1u, 0xFFFFFFFD, a3, Cast, v19);
  }

  return AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)1>(this, a2, a3, Cast);
}

uint64_t AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(AGCLLVMUserMeshShader *this, llvm::Type **a2, llvm::Value *a3)
{
  v5 = (this + *(*this - 24));
  v6 = *(this + 568);
  v21 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v5 + 214, a2, v6, v20);
  v8 = this + *(*this - 24);
  v9 = *(v8 + 238);
  v10 = llvm::ConstantInt::get();
  v21 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v8 + 1712), a3, v10, v20);
  v12 = *(this + 1408);
  v13 = *(this + *(*this - 24) + 1904);
  v14 = llvm::ConstantInt::get();
  v19[16] = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), Mul, v14, v19);
  v16 = this + *(*this - 24);
  v17 = *(v16 + 237);
  v21 = 257;
  return llvm::IRBuilderBase::CreateGEP((v16 + 1712), v17, PointerCast, Add, v20);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)1>(int8x8_t *a1, llvm::Type **a2, llvm::Value *a3, llvm::CmpInst **a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(a1, a2, 0x17u, 0, a3, *(&a1[238] + *(*a1 - 24)));
  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 238);
  v9 = llvm::ConstantInt::get();
  v27 = 257;
  llvm::IRBuilderBase::CreateICmp(v7 + 214, 37, a4, v9, v26);
  v10 = *(&a1[238] + *(*a1 - 24));
  llvm::ConstantInt::get();
  v25 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v12 = a1 + *(*a1 - 24);
  v13 = *(v12 + 236);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v12 + 1712), 38, Select, v13, v26);
  v15 = a1 + *(*a1 - 24);
  v16 = *(v15 + 236);
  v17 = a1[567];
  v27 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, BuiltinPointer, v17, v26);
  v19 = *(&a1[238] + *(*a1 - 24));
  v20 = llvm::ConstantInt::get();
  v25 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v15 + 1712), v16, PointerCast, v20, &v24);
  llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), Cast, GEP, 0);
  v22 = *(&a1[231] + *(*a1 - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetLayerId(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = this + 512;
  v9 = this + *(*this - 24);
  v10 = *(v9 + 238);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 39, a4, v10, v22);
  if (v8[65].i8[5] == 1)
  {
    v12 = this + *(*this - 24);
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    VpLayerIdOffsetPointer = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, a2, VertexAmpId);
    v23 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v12 + 1704), VpLayerIdOffsetPointer, v22);
    v16 = this + *(*this - 24);
    v17 = *(v16 + 238);
    v23 = 257;
    v18 = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, Load, v17, v22);
    v21[16] = 257;
    Cast = llvm::IRBuilderBase::CreateAdd((v16 + 1712), Cast, v18, v21);
  }

  if (v8[93].i8[4] == 1)
  {
    v19 = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    AGCLLVMUserMeshShader::buildSetVaryingData(this, a2, 1u, 0xFFFFFFFC, a3, Cast, v19);
  }

  return AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)0>(this, a2, a3, Cast);
}

uint64_t AGCLLVMUserMeshShader::buildSetPrimAttr<(AGCLLVMUserMeshShader::PrimAttrType)0>(int8x8_t *a1, llvm::Type **a2, llvm::Value *a3, llvm::CmpInst **a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(a1, a2, 0x17u, 0, a3, *(&a1[238] + *(*a1 - 24)));
  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 238);
  v9 = llvm::ConstantInt::get();
  v21 = 257;
  llvm::IRBuilderBase::CreateICmp(v7 + 214, 37, a4, v9, v20);
  v10 = *(&a1[238] + *(*a1 - 24));
  llvm::ConstantInt::get();
  Select = llvm::IRBuilderBase::CreateSelect();
  v12 = a1 + *(*a1 - 24);
  v13 = *(v12 + 237);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v12 + 1712), 38, Select, v13, v20);
  v15 = (a1 + *(*a1 - 24));
  v16 = a1[568];
  v21 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, BuiltinPointer, v16, v20);
  llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), Cast, PointerCast, 0);
  v18 = *(&a1[231] + *(*a1 - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetClipDistance(int8x8_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = *(a2 + 24);
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(a1, v4, 0x19u, *v6, *(a2 + 16), *(&a1[234] + *(*a1 - 24)));
  llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), v7, BuiltinPointer, 0);
  v9 = *(&a1[231] + *(*a1 - 24));

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetPointSize(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Type **a4)
{
  BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(this, a2, 0x16u, 0, a3, *(&this[234] + *(*this - 24)));
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, BuiltinPointer, 0);
  v7 = *(&this[231] + *(*this - 24));

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::buildSetPosition(int8x8_t *this, llvm::Type **a2, llvm::Value *a3, llvm::Value *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v7 = AGCLLVMBuilder::unboxVector((&this[213] + *(*this - 24)), a4, v14);
  if (v7)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      BuiltinPointer = AGCLLVMUserMeshShader::getBuiltinPointer(this, a2, 0, v8, a3, *(&this[234] + *(*this - 24)));
      llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), *(v14 + v8++), BuiltinPointer, 0);
    }

    while (v9 != v8);
  }

  v11 = *(&this[231] + *(*this - 24));
  v12 = *MEMORY[0x277D85DE8];

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShader::setupShaderInputs(AGCLLVMUserMeshShader *this)
{
  v309 = *MEMORY[0x277D85DE8];
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

  v266 = v4;
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(v2);
    v6 = *(this + 21);
    v7 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
    v5 = v7;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v269 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v5 == v269)
  {
LABEL_333:
    AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
    result = 1;
    goto LABEL_335;
  }

  v8 = v5;
  v268 = this + 1704;
  v276 = this + 5528;
  v273 = this + 5504;
  v274 = this + 1696;
  v275 = this + 5576;
  v272 = this + 5552;
  v265 = (this + 4872);
  v262 = this + 1656;
  v277 = this + 1904;
  v263 = this + 2168;
  v264 = this + 1712;
  v260 = this + 1896;
  v261 = (this + 5532);
  do
  {
    v9 = *(*(this + 10) + 8 * *(v8 + 8));
    if (v8[1])
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 1;
      goto LABEL_325;
    }

    v12 = *(v266 + 40);
    if (v12)
    {
      v13 = (v12 - 24);
    }

    else
    {
      v13 = 0;
    }

    AGCLLVMBuilder::SetInsertPoint(&v268[*(*this - 24)], v13, *(this + 5));
    v14 = isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8), "air.mesh");
    v15 = v9 - 8 * *(v9 + 8);
    if (!v14)
    {
      v38 = isStringMDNode(*(v15 + 8), "air.amplification_id");
      v11 = 1;
      if (v38)
      {
        v39 = *(*this - 24);
        VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
        AGCLLVMBuilder::truncateToSmall(&v268[v39], VertexAmpId, *v8);
        llvm::Value::replaceAllUsesWith();
        v11 = 1;
        *(this + 4781) = 1;
      }

      goto LABEL_325;
    }

    v267 = v8;
    v16 = *(v15 + 16);
    if (!v16)
    {
LABEL_66:
      v17 = 0;
LABEL_67:
      v35 = 0;
      *(this + 1206) = (*(this + 1204) + 3) & 0xFFFFFFFC;
      v22 = v17;
      goto LABEL_68;
    }

    v17 = 0;
    v18 = *v16;
    if (v18 > 0x22 || ((0x7FFFFFFF0uLL >> v18) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (*(v16 + 2) != 6)
    {
      goto LABEL_66;
    }

    if (!isStringMDNode(*(v16 - 6), "air.mesh_type_info"))
    {
      goto LABEL_66;
    }

    v19 = &v16[-8 * *(v16 + 2)];
    v20 = *(v19 + 1);
    if (!v20)
    {
      goto LABEL_66;
    }

    v17 = 0;
    v21 = *v20;
    if (v21 > 0x22 || ((0x7FFFFFFF0uLL >> v21) & 1) == 0)
    {
      goto LABEL_67;
    }

    v22 = *(v19 + 2);
    if (!v22)
    {
      goto LABEL_66;
    }

    v17 = 0;
    v23 = *v22;
    if (v23 > 0x22 || ((0x7FFFFFFF0uLL >> v23) & 1) == 0)
    {
      goto LABEL_67;
    }

    LODWORD(v288[0]) = 3;
    if (!parseMDInt(0, v16, v288, this + 1204) || (LODWORD(v288[0]) = 4, (parseMDInt(0, v16, v288, this + 1205) & 1) == 0))
    {
      v17 = v22;
      goto LABEL_67;
    }

    v24 = parseMDPrimitiveType(v16, this + 1207);
    *(this + 1206) = (*(this + 1204) + 3) & 0xFFFFFFFC;
    if (v24)
    {
      v25 = *(v20 + 2);
      if (!v25)
      {
        v35 = 1;
        goto LABEL_68;
      }

      v26 = 0;
      while (1)
      {
        v27 = *&v20[8 * v26 + -8 * v25];
        if (!v27)
        {
          break;
        }

        v28 = *v27;
        if (v28 > 0x22 || ((0x7FFFFFFF0uLL >> v28) & 1) == 0)
        {
          break;
        }

        v29 = v27 + 8;
        if (*(this + 4621) == 1)
        {
          v270 = v26;
          v30 = v27 + 8;
          v31 = 1;
          while (1)
          {
            v32 = *v29;
            v33 = v31 >= v32;
            if (v31 >= v32)
            {
              break;
            }

            v34 = isStringMDNode(*&v30[-8 * v32], "air.shared");
            ++v31;
            v30 += 8;
            if (v34)
            {
              v33 = 0;
              break;
            }
          }

          v26 = v270;
        }

        else
        {
          v33 = 0;
        }

        AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v27, 0, this + 4884, this + 4892, this + 1225);
        if ((AGCLLVMUserMeshShader::addGenericVarying(this, v27, 0, v33) & 1) == 0)
        {
          if (isStringMDNode(*&v27[-8 * *(v27 + 2)], "air.position"))
          {
            *(this + 4832) = v33;
            v36 = *v29;
            if (v36 >= 2)
            {
              v37 = 1;
              while (!isStringMDNode(*&v27[8 * v37 + -8 * v36], "air.invariant"))
              {
                ++v37;
                v36 = *v29;
                if (v37 >= v36)
                {
                  goto LABEL_48;
                }
              }

              *(this + 4744) = 1;
            }
          }

          else if (isStringMDNode(*&v27[-8 * *(v27 + 2)], "air.point_size"))
          {
            *(this + 4841) = 1;
            *(this + 4842) = v33;
          }

          else
          {
            if (!isStringMDNode(*&v27[-8 * *(v27 + 2)], "air.clip_distance"))
            {
              v35 = 0;
              goto LABEL_68;
            }

            *(this + 1209) = 1;
            *(this + 4840) = v33;
            LODWORD(v288[0]) = 1;
            if (*v29 >= 2u)
            {
              do
              {
                if (parseMDInt("air.clip_distance_array_size", v27, v288, this + 1209))
                {
                  break;
                }

                ++LODWORD(v288[0]);
              }

              while (LODWORD(v288[0]) < *v29);
            }
          }
        }

LABEL_48:
        ++v26;
        v25 = *(v20 + 2);
        v35 = 1;
        if (v26 >= v25)
        {
          goto LABEL_68;
        }
      }
    }

    v35 = 0;
LABEL_68:
    if (*(this + 4832))
    {
      v41 = 1;
    }

    else
    {
      v41 = *(this + 4840);
    }

    v42 = v41 & 1;
    *(this + 4840) = v42;
    *(this + 4832) = v42;
    if (v35)
    {
      v43 = *(v22 + 2);
      if (v43)
      {
        for (i = 0; i < v43; ++i)
        {
          v45 = *&v22[8 * i + -8 * v43];
          if (!v45)
          {
            goto LABEL_96;
          }

          v46 = 0;
          v47 = *v45;
          if (v47 > 0x22 || ((0x7FFFFFFF0uLL >> v47) & 1) == 0)
          {
            goto LABEL_98;
          }

          if (*(this + 4621) == 1)
          {
            v48 = v45 + 8;
            v49 = 1;
            while (1)
            {
              v50 = *(v45 + 2);
              v51 = v49 >= v50;
              if (v49 >= v50)
              {
                break;
              }

              v52 = isStringMDNode(*&v48[-8 * v50], "air.shared");
              ++v49;
              v48 += 8;
              if (v52)
              {
                v51 = 0;
                break;
              }
            }
          }

          else
          {
            v51 = 0;
          }

          AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v45, 1u, this + 4884, this + 4892, this + 1225);
          if ((AGCLLVMUserMeshShader::addGenericVarying(this, v45, 1, v51) & 1) == 0)
          {
            if (isStringMDNode(*&v45[-8 * *(v45 + 2)], "air.render_target_array_index"))
            {
              *(this + 4843) = 1;
LABEL_91:
              *(this + 4849) |= v51;
              goto LABEL_92;
            }

            if (isStringMDNode(*&v45[-8 * *(v45 + 2)], "air.viewport_array_index"))
            {
              *(this + 4845) = 1;
              goto LABEL_91;
            }

            if (isStringMDNode(*&v45[-8 * *(v45 + 2)], "air.primitive_culled"))
            {
              *(this + 4847) = 1;
              goto LABEL_91;
            }

            if (!isStringMDNode(*&v45[-8 * *(v45 + 2)], "air.primitive_id"))
            {
              goto LABEL_96;
            }

            *(this + 4853) = 1;
            *(this + 4854) = v51;
          }

LABEL_92:
          v43 = *(v22 + 2);
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_96:
      v46 = 0;
    }

LABEL_98:
    v53 = *(this + 4621);
    v271 = v46;
    if (v53)
    {
      if ((*(this + 4843) & 1) == 0)
      {
        *(this + 4850) = 1;
      }

      if ((*(this + 4845) & 1) == 0)
      {
        *(this + 4851) = 1;
      }

      v54 = 1;
      *(this + 4849) = 1;
      *(this + 4845) = 1;
      *(this + 4843) = 1;
    }

    else
    {
      v54 = *(this + 4849);
    }

    v55 = 0;
    v291 = *(this + 4854);
    v288[0] = "agc.per_prim.primitive_address";
    v288[1] = 0xFFFFFFFE00000000;
    v289 = 0;
    v290[0] = this + 4855;
    v290[1] = "agc.per_prim.primitive_id";
    v290[2] = 0xFFFFFFFF00000001;
    v292 = this + 4852;
    v293 = "air.render_target_array_index";
    v294 = 0xFFFFFFFC00000001;
    v295 = v54;
    v296 = this + 4844;
    v297 = "air.viewport_array_index";
    v298 = 0xFFFFFFFD00000001;
    v299 = v54;
    v300 = this + 4846;
    v301 = "air.amplification_id";
    v302 = 0xFFFFFFFB00000000;
    v303 = v53;
    v304 = this + 4782;
    v305 = "air.amplification_count";
    v306 = 0xFFFFFFFA00000001;
    v307 = 0;
    v308 = this + 4780;
    do
    {
      v56 = v288[v55];
      v57 = v288[v55 + 1];
      v58 = HIDWORD(v288[v55 + 1]);
      v59 = LOBYTE(v288[v55 + 2]);
      if (v56)
      {
        v60 = strlen(v288[v55]);
      }

      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == *(this + 1198))
      {
        v62 = 0;
      }

      else
      {
        v63 = *(*(this + 598) + 8 * Key);
        v64 = *(v63 + 2);
        llvm::StringMapImpl::RemoveKey();
        llvm::deallocate_buffer(v63, (*v63 + 17));
        if (v58 >= 0xFFFFFFFA)
        {
          v65 = ~v58;
        }

        else
        {
          v65 = ((v57 != 0) | (2 * v58)) + 6;
        }

        GenericVarying::GenericVarying(__dst, HIBYTE(v64) & 0x7F, BYTE2(v64), v64 & 0xF, BYTE1(v64), v65, v59);
        MEMORY[0x20F331AA0](&__p[8], v56);
        GenericVaryingAllocator::addVarying(this + 4912, __dst);
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        v62 = 1;
      }

      *v290[v55] = v62;
      v55 += 4;
    }

    while (v55 != 24);
    if (*(this + 4843))
    {
      v66 = 1;
      v67 = this + 5640;
    }

    else
    {
      v67 = this + 5640;
      if (*(this + 4845))
      {
        v66 = 1;
      }

      else
      {
        v66 = *(this + 4847);
      }
    }

    *(this + 4848) = v66 & 1;
    if (*(this + 4783) == 1)
    {
      v68 = *(this + 617);
      v69 = *(this + 1236);
      if (v69 >= 2)
      {
        v70 = v69 << 6;
        v71 = v68 + 64;
        v72 = v70 - 64;
        do
        {
          if (*(v68 + 16) < *(v71 + 16))
          {
            v68 = v71;
          }

          v71 += 64;
          v72 -= 64;
        }

        while (v72);
      }

      v73 = *(this + 1198);
      if (v73)
      {
          ;
        }
      }

      else
      {
        j = *(this + 598);
      }

      v76 = *(this + 598) + 8 * v73;
      if (j != v76)
      {
        v77 = *(v68 + 16);
        v78 = *j;
        while (1)
        {
          v79 = *(v78 + 8);
          v80 = v79 & 0xF;
          LODWORD(__dst[0]) = HIBYTE(v79) & 0x7F;
          HIDWORD(__dst[0]) = BYTE2(v79);
          ++v77;
          LODWORD(__dst[1]) = v80;
          HIDWORD(__dst[1]) = BYTE1(v79);
          *__p = v77;
          memset(&__p[8], 0, 32);
          __p[40] = BYTE2(v79) == 1;
          *&__p[41] = 0;
          if (LODWORD(__dst[1]) <= 1)
          {
            break;
          }

          switch(v80)
          {
            case 2:
              v82 = BYTE2(v79) == 1;
              v81 = 3;
              v83 = 7;
              goto LABEL_150;
            case 3:
              if (BYTE2(v79) == 1)
              {
                v81 = 19;
              }

              else
              {
                v81 = 18;
              }

              goto LABEL_159;
            case 5:
              if (BYTE2(v79) == 1)
              {
                v81 = 8;
              }

              else
              {
                v81 = 4;
              }

LABEL_159:
              *&__p[44] = v81;
              break;
          }

          MEMORY[0x20F331AA0](&__p[8], v78 + 16);
          GenericVaryingAllocator::addVarying(this + 4912, __dst);
          if ((__p[31] & 0x80000000) != 0)
          {
            operator delete(*&__p[8]);
          }

          do
          {
            v84 = j[1];
            ++j;
            v78 = v84;
            if (v84)
            {
              v85 = v78 == -8;
            }

            else
            {
              v85 = 1;
            }
          }

          while (v85);
          if (j == v76)
          {
            goto LABEL_167;
          }
        }

        if ((v79 & 0xF) == 0)
        {
          if (BYTE2(v79) == 1)
          {
            v81 = 5;
          }

          else
          {
            v81 = 1;
          }

          goto LABEL_159;
        }

        v82 = BYTE2(v79) == 1;
        v81 = 2;
        v83 = 6;
LABEL_150:
        if (v82)
        {
          v81 = v83;
        }

        goto LABEL_159;
      }

LABEL_167:
      llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 1196);
    }

    if (*(this + 1199))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*&v274[*(*this - 24)]))
      {
        AGCTargetPrinter::printMessage(*&v274[*(*this - 24)], "Following fragment input(s) mismatching mesh shader output type(s) or not written by mesh shader: ");
      }

      v86 = *(this + 1198);
      if (v86)
      {
          ;
        }
      }

      else
      {
        k = *(this + 598);
      }

      v89 = *(this + 598) + 8 * v86;
      while (k != v89)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*&v274[*(*this - 24)]))
        {
          v90 = *&v274[*(*this - 24)];
          std::string::basic_string[abi:nn200100](__dst, (*k + 16), **k);
          v91 = __dst;
          if (__p[7] < 0)
          {
            v91 = __dst[0];
          }

          AGCTargetPrinter::printMessage(v90, "\t%s", v91);
          if ((__p[7] & 0x80000000) != 0)
          {
            operator delete(__dst[0]);
          }
        }

        do
        {
          v93 = *(k + 8);
          k += 8;
          v92 = v93;
          if (v93)
          {
            v94 = v92 == -8;
          }

          else
          {
            v94 = 1;
          }
        }

        while (v94);
      }

      v95 = *(this + 1198);
      v96 = *(this + 598);
      if (v95)
      {
        while (!*v96 || *v96 == -8)
        {
          v96 += 8;
        }
      }

      v98 = *(this + 598) + 8 * v95;
      if (v96 != v98)
      {
        v99 = &unk_20E75F419;
        do
        {
          std::string::append(&v262[*(*this - 24)], v99);
          std::string::basic_string[abi:nn200100](v281, (*v96 + 16), **v96);
          attribute_name(__dst, v281);
          if (__p[7] >= 0)
          {
            v100 = __dst;
          }

          else
          {
            v100 = __dst[0];
          }

          if (__p[7] >= 0)
          {
            v101 = __p[7];
          }

          else
          {
            v101 = __dst[1];
          }

          std::string::append(&v262[*(*this - 24)], v100, v101);
          if ((__p[7] & 0x80000000) != 0)
          {
            operator delete(__dst[0]);
          }

          if (SBYTE3(v282) < 0)
          {
            operator delete(*v281);
          }

          do
          {
            v103 = *(v96 + 8);
            v96 += 8;
            v102 = v103;
            if (v103)
            {
              v104 = v102 == -8;
            }

            else
            {
              v104 = 1;
            }
          }

          while (v104);
          v99 = ",";
        }

        while (v96 != v98);
      }

      v271 = 0;
    }

    GenericVaryingAllocator::allocate((this + 4912), *&v263[*(*this - 24)]);
    if (v271)
    {
      v105 = v67;
      bzero(v67, 0x270uLL);
      v283 = 0;
      v282 = 0u;
      *&v281[4] = 0u;
      v106 = *(this + 1205);
      *v281 = 4 * v106;
      *&v281[4] = *(this + 2424);
      v107 = *(this + 1206);
      *&v281[8] = 23;
      *&v281[12] = 16 * v107;
      v281[16] = 1;
      v281[17] = *(this + 4832);
      DWORD1(v282) = 4 * v107;
      BYTE8(v282) = *(this + 4841);
      BYTE9(v282) = v281[17];
      v108 = *(this + 1209);
      HIDWORD(v282) = 22;
      v283 = (4 * v107 * v108);
      HIDWORD(v283) = v108 != 0;
      BYTE5(v283) = *(this + 4840);
      v284 = 25;
      v109 = *(this + 1207);
      if (v109 == 1)
      {
        v110 = 2;
      }

      else
      {
        v110 = 1;
      }

      if (v109 == 2)
      {
        v111 = 3;
      }

      else
      {
        v111 = v110;
      }

      v112 = (v111 * v106 + 15) & 0xFFFFFFF0;
      *(this + 1226) = v112;
      *(this + 1220) = v112;
      v113 = v112 + 16;
      if (*(this + 4621) == 1)
      {
        *(this + 1408) = v113;
        v113 += (4 * *(this + 1194) + 15) & 0xFFFFFFF0;
      }

      for (m = 0; m != 48; m += 12)
      {
        if ((v281[m + 5] & 1) == 0 && v281[m + 4] == 1)
        {
          v115 = *&v281[m];
          v116 = *&v281[m + 8];
          if (v116 != 26)
          {
            v117 = *&v277[*(*this - 24)];
            v118 = llvm::ConstantInt::get();
            v119 = &v105[24 * v116];
            *v119 = v118;
            v119[12] = 0;
          }

          v113 += (v115 + 15) & 0xFFFFFFF0;
        }
      }

      v120 = &dword_20E70CBD4;
      v121 = 128;
      do
      {
        v122 = *(this + 1206);
        v123 = *(v120 - 1);
        v124 = &v276[4 * v123];
        if ((*(this + 5472) & *(v120 - 2)) == 1)
        {
          v125 = (*v124 + 1) >> 1;
        }

        else
        {
          v126 = &v273[4 * v123];
          if (*(v120 - 8))
          {
            v127 = v124;
          }

          else
          {
            v127 = v126;
          }

          v125 = *v127;
        }

        v128 = *v120;
        if (*v120 != 26)
        {
          v129 = *&v277[*(*this - 24)];
          v130 = llvm::ConstantInt::get();
          v131 = &v105[24 * v128];
          *v131 = v130;
          v131[12] = 0;
        }

        v113 += (4 * v122 * v125 + 15) & 0xFFFFFFF0;
        v120 += 4;
        v121 -= 16;
      }

      while (v121);
      v132 = 0;
      *(this + 1214) = v113;
      do
      {
        if (v281[v121 + 5] && v281[v121 + 4] == 1)
        {
          v133 = *&v281[v121];
          v134 = *&v281[v121 + 8];
          if (v134 != 26)
          {
            v135 = (*(this + 1214) + v132);
            v136 = *&v277[*(*this - 24)];
            v137 = llvm::ConstantInt::get();
            v138 = &v105[24 * v134];
            *v138 = v137;
            v138[12] = 1;
          }

          v132 += (v133 + 15) & 0xFFFFFFF0;
        }

        v121 += 12;
      }

      while (v121 != 48);
      v139 = &byte_20E70CBCC;
      v140 = 128;
      do
      {
        v141 = *(this + 1206);
        v142 = *(v139 + 1);
        v143 = &v275[4 * v142];
        if ((*(this + 5472) & *v139) == 1)
        {
          v144 = (*v143 + 1) >> 1;
        }

        else
        {
          v145 = &v272[4 * v142];
          if (*v139)
          {
            v146 = v143;
          }

          else
          {
            v146 = v145;
          }

          v144 = *v146;
        }

        v147 = *(v139 + 3);
        if (v147 != 26)
        {
          v148 = (*(this + 1214) + v132);
          v149 = *&v277[*(*this - 24)];
          v150 = llvm::ConstantInt::get();
          v151 = &v105[24 * v147];
          *v151 = v150;
          v151[12] = 1;
        }

        v132 += (4 * v141 * v144 + 15) & 0xFFFFFFF0;
        v139 += 16;
        v140 -= 16;
      }

      while (v140);
      v152 = 0;
      *(this + 1216) = v132;
      v153 = &dword_20E70CCFC;
      v154 = 32;
      do
      {
        v155 = *(v153 - 1);
        v156 = &v276[4 * v155];
        if ((*(this + 5472) & *(v153 - 2)) == 1)
        {
          v157 = (*v156 + 1) >> 1;
        }

        else
        {
          v158 = &v273[4 * v155];
          if (*(v153 - 8))
          {
            v159 = v156;
          }

          else
          {
            v159 = v158;
          }

          v157 = *v159;
        }

        v160 = *v153;
        if (*v153 != 26)
        {
          v161 = *&v277[*(*this - 24)];
          v162 = llvm::ConstantInt::get();
          v163 = &v105[24 * v160];
          *v163 = v162;
          v163[12] = 0;
        }

        v152 += 4 * v157;
        v153 += 4;
        v154 -= 16;
      }

      while (v154);
      v164 = 0;
      *(this + 1215) = v152;
      v165 = &byte_20E70CCF4;
      v166 = 32;
      do
      {
        v167 = *(v165 + 1);
        v168 = &v275[4 * v167];
        if ((*(this + 5472) & *v165) == 1)
        {
          v169 = (*v168 + 1) >> 1;
        }

        else
        {
          v170 = &v272[4 * v167];
          if (*v165)
          {
            v171 = v168;
          }

          else
          {
            v171 = v170;
          }

          v169 = *v171;
        }

        v172 = *(v165 + 3);
        if (v172 != 26)
        {
          v173 = (*(this + 1215) + v164);
          v174 = *&v277[*(*this - 24)];
          v175 = llvm::ConstantInt::get();
          v176 = &v105[24 * v172];
          *v176 = v175;
          v176[12] = 1;
        }

        v164 += 4 * v169;
        v165 += 16;
        v166 -= 16;
      }

      while (v166);
      *(this + 1217) = v164;
      *(this + 1414) = 4;
      v177 = *(this + 5472);
      *(this + 1420) = *(this + 1376);
      *(this + 1426) = *(this + 1377);
      *(this + 1432) = *(this + 1378);
      *(this + 1438) = *(this + 1381);
      *(this + 1522) = *(this + 1379);
      v178 = *(this + 1382);
      if (v177 == 1)
      {
        v178 = (v178 + 1) >> 1;
        v179 = vshr_n_u32(vadd_s32(*v261, 0x100000001), 1uLL);
        v180 = (*(this + 1387) + 1) >> 1;
      }

      else
      {
        v179 = *v261;
        v180 = *(this + 1387);
      }

      *(this + 1444) = v178;
      *(this + 1450) = v179.i32[0];
      *(this + 1456) = v179.i32[1];
      *(this + 1462) = v180;
      *(this + 1528) = *(this + 1385);
      *(this + 1474) = *(this + 1388);
      *(this + 1480) = *(this + 1389);
      *(this + 1486) = *(this + 1390);
      *(this + 1492) = *(this + 1393);
      *(this + 1534) = *(this + 1391);
      v181 = *(this + 1394);
      if (v177)
      {
        v181 = (v181 + 1) >> 1;
        v182 = (*(this + 1395) + 1) >> 1;
        v183 = (*(this + 1396) + 1) >> 1;
        v184 = (*(this + 1399) + 1) >> 1;
        v185 = (*(this + 1397) + 1) >> 1;
      }

      else
      {
        v182 = *(this + 1395);
        v183 = *(this + 1396);
        v184 = *(this + 1399);
        v185 = *(this + 1397);
      }

      *__dst = xmmword_20E70CC4C;
      *__p = unk_20E70CC5C;
      *&__p[16] = xmmword_20E70CC6C;
      *(this + 1498) = v181;
      *(this + 1504) = v182;
      *(this + 1510) = v183;
      *(this + 1516) = v184;
      *(this + 1540) = v185;
      *(this + 1546) = *(this + 4841);
      *(this + 1552) = *(this + 4848);
      *(this + 1558) = 0;
      *(this + 1564) = *(this + 1209);
      *&__p[32] = unk_20E70CC7C;
      v287 = 0x1900000016;
      std::vector<UVSWriteType>::vector[abi:nn200100](&v278, __dst, 0x12uLL);
      *(this + 1412) = 0;
      v186 = v278;
      v187 = v279;
      if (v278 != v279)
      {
        v188 = 0;
        v189 = v278;
        do
        {
          v190 = &v105[24 * v188];
          v191 = *(v190 + 4);
          if (v191 && v190[12] == 1)
          {
            v192 = v191 << 16;
          }

          else
          {
            v192 = *(v190 + 4);
          }

          v193 = *v189++;
          v188 = v193;
          *&v105[24 * v193 + 8] = (*(v190 + 4) + v192) | ((*(v190 + 5) + HIWORD(v192)) << 16);
        }

        while (v189 != v187);
      }

      if (v186)
      {
        v279 = v186;
        operator delete(v186);
      }
    }

    v194 = 0;
    v195 = -6;
    v196 = (this + 5528);
    do
    {
      if ((v195 + 6) <= 5 && ((1 << (v195 + 6)) & 0x27) != 0)
      {
        v197 = *(v196 - 6) + v194;
        v198 = v197 + *v196;
        v194 = v197 + ((*v196 + 1) >> 1);
        if (*(this + 5472) != 1)
        {
          v194 = v198;
        }
      }

      ++v196;
      v199 = __CFADD__(v195++, 1);
    }

    while (!v199);
    v200 = 0;
    *v265 = v194;
    v201 = -6;
    v202 = (this + 5576);
    do
    {
      if ((v201 + 6) <= 5 && ((1 << (v201 + 6)) & 0x27) != 0)
      {
        v203 = *(v202 - 6) + v200;
        v204 = v203 + *v202;
        v200 = v203 + ((*v202 + 1) >> 1);
        if (*(this + 5472) != 1)
        {
          v200 = v204;
        }
      }

      ++v202;
      v199 = __CFADD__(v201++, 1);
    }

    while (!v199);
    *(this + 1219) = v200;
    v265[*(this + 4832)] += 4;
    v265[*(this + 4842)] += *(this + 4841);
    v265[*(this + 4840)] += *(this + 1209);
    v11 = v271;
    if (v271)
    {
      v205 = *(*&v263[*(*this - 24)] + 920);
      v206 = (*(*v205 + 424))(v205);
      v207 = AGCLLVMUserObject::setupBufferArgumentData(this, *(this + 569), v206, 0xFFFFFFFF, 0, 0, 0xFFFFFFFFLL);
      llvm::ValueHandleBase::operator=((this + 4752), v208);
      v209 = *(*this - 24);
      v210 = *v267;
      *&__p[16] = 257;
      PointerCast = llvm::IRBuilderBase::CreatePointerCast(&v264[v209], v207, v210, __dst);
      llvm::Value::replaceAllUsesWith();
      v11 = v271;
    }

    else
    {
      PointerCast = 0;
    }

    if (*(this + 4621) == 1 && *(this + 596))
    {
      v212 = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
      *(this + 4781) = 1;
      v213 = *(*this - 24);
      v214 = *(this + 702);
      *&__p[16] = 257;
      Load = AGCLLVMBuilder::CreateLoad(&v268[v213], v214, __dst);
      v216 = *(*this - 24);
      v217 = *(this + 703);
      *&__p[16] = 257;
      GEP = llvm::IRBuilderBase::CreateGEP(&v264[v216], v217, Load, v212, __dst);
      v219 = *(*this - 24);
      v220 = *(this + 703);
      *&__p[16] = 257;
      llvm::Type::isOpaquePointerTy(*GEP);
      AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v264[v219], v220, GEP, 0, __dst);
      __dst[0] = __p;
      __dst[1] = 0x800000000;
      AGCLLVMBuilder::unboxStruct(&v268[*(*this - 24)], AlignedLoad, __dst);
      v223 = *__dst[0];
      v222 = *(__dst[0] + 1);
      v224 = this + *(*this - 24);
      v225 = *(this + 596);
      WORD6(v282) = 257;
      v226 = AGCLLVMBuilder::CreateLoad((v224 + 1704), v225, v281);
      v227 = *(this + 569);
      v280 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v224 + 1712), 48, v226, v227, &v278);
      VpLayerIdOffsetPointer = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, Cast, v212);
      v230 = AGCLLVMUserMeshShader::getVpLayerIdOffsetPointer(this, Cast, v212);
      if ((*(this + 4851) & 1) == 0)
      {
        v231 = this + *(*this - 24);
        v232 = *(v231 + 237);
        WORD6(v282) = 257;
        v233 = llvm::IRBuilderBase::CreateCast((v231 + 1712), 38, v223, v232, v281);
        llvm::IRBuilderBase::CreateAlignedStore(v231 + 214, v233, VpLayerIdOffsetPointer, 0);
      }

      if ((*(this + 4850) & 1) == 0)
      {
        v234 = this + *(*this - 24);
        v235 = *(v234 + 237);
        WORD6(v282) = 257;
        v236 = llvm::IRBuilderBase::CreateCast((v234 + 1712), 38, v222, v235, v281);
        llvm::IRBuilderBase::CreateAlignedStore(v234 + 214, v236, v230, 0);
      }

      if ((*(this + 4851) & 1) != 0 || *(this + 4850) == 1)
      {
        v237 = *(*this - 24);
        v238 = *(this + 569);
        WORD6(v282) = 257;
        llvm::IRBuilderBase::CreatePointerCast(&v264[v237], PointerCast, v238, v281);
        v239 = (this + *(*this - 24));
        v240 = AGCLLVMUserObjectShaderBase::buildLocalSize(this, v239[237], 0);
        v241 = AGCLLVMUserObjectShaderBase::buildLocalSize(this, *&v260[*(*this - 24)], 1);
        WORD6(v282) = 257;
        Mul = llvm::IRBuilderBase::CreateMul((v239 + 214), v240, v241, v281);
        v243 = AGCLLVMUserObjectShaderBase::buildLocalSize(this, *&v260[*(*this - 24)], 2);
        v280 = 257;
        v244 = llvm::IRBuilderBase::CreateMul((v239 + 214), Mul, v243, &v278);
        v245 = this + *(*this - 24);
        v246 = *(v245 + 237);
        v247 = (*(this + 1205) - 1);
        v248 = llvm::ConstantInt::get();
        WORD6(v282) = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v245 + 1712), v248, v244, v281);
        v250 = *(*this - 24);
        WORD6(v282) = 257;
        UDiv = llvm::IRBuilderBase::CreateUDiv(&v264[v250], Add, v244, v281);
        v252 = AGCLLVMUserObjectShaderBase::buildLocalLinearID(this, *&v260[*(*this - 24)]);
        v253 = *(*this - 24);
        WORD6(v282) = 257;
        llvm::IRBuilderBase::CreateMul(&v264[v253], v252, UDiv, v281);
        v254 = this + *(*this - 24);
        v255 = *(v254 + 220);
        v256 = *(v254 + 222);
        *v281 = "implicit_vp_layer_init_body_start";
        WORD6(v282) = 259;
        v257 = *(v255 + 56);
        operator new();
      }

      if (__dst[0] != __p)
      {
        free(__dst[0]);
      }

      v11 = v271;
    }

    v8 = v267;
LABEL_325:
    if (!v11)
    {
      break;
    }

    v8 += 5;
  }

  while (v8 != v269);
  if (v11)
  {
    goto LABEL_333;
  }

  result = 0;
LABEL_335:
  v259 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserMeshShader::addGenericVarying(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 - 8 * *(a2 + 8));
  if (a3)
  {
    v9 = "air.primitive_data";
  }

  else
  {
    v9 = "air.vertex_data";
  }

  if (isStringMDNode(v8, v9))
  {
    v28 = 0;
  }

  else
  {
    v10 = *(a2 - 8 * *(a2 + 8));
    if (a3)
    {
      v11 = "air.mesh_primitive_data";
    }

    else
    {
      v11 = "air.mesh_vertex_data";
    }

    v28 = 0;
    if (!isStringMDNode(v10, v11))
    {
      return 0;
    }
  }

  v25[0] = 1;
  if (!parseMDInt(0, a2, v25, &v28))
  {
    return 0;
  }

  v12 = *(a2 - 8 * *(a2 + 8) + 16);
  if (!v12 || *v12)
  {
    return 0;
  }

  llvm::MDString::getString(v12);
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1 || Key == *(a1 + 4792))
  {
    return 1;
  }

  v16 = *(*(a1 + 4784) + 8 * Key);
  v17 = *(v16 + 2);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v16, (*v16 + 17));
  v18 = v17 & 0xF;
  v13 = !a3 && v18 != 3 || a3 == 1 && v18 == 3;
  if (v28 < 0xFFFFFFFA)
  {
    v20 = ((a3 != 0) | (2 * v28)) + 6;
  }

  else
  {
    v20 = ~v28;
  }

  GenericVarying::GenericVarying(v25, HIBYTE(v17) & 0x7F, BYTE2(v17), v18, BYTE1(v17), v20, a4);
  String = llvm::MDString::getString(v12);
  if (String)
  {
    std::string::basic_string[abi:nn200100](&v23, String, v22);
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  __p = v23;
  v27 = v24;
  GenericVaryingAllocator::addVarying(a1 + 4912, v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  return v13;
}

unsigned int *llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(unsigned int *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *v1;
        result = *(*v1 + v3);
        if (result != -8 && result != 0)
        {
          result = llvm::deallocate_buffer(result, (*result + 17));
        }

        *(v5 + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    v1[3] = 0;
    v1[4] = 0;
  }

  return result;
}

void attribute_name(std::string *a1, std::string *this)
{
  __idx = 0;
  v4 = std::string::find(this, "generated(", 0, 0xAuLL);
  if (v4 == -1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;

      std::string::__init_copy_ctor_external(a1, v6, size);
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *&this->__r_.__value_.__l.__data_;
      a1->__r_.__value_.__r.__words[2] = this->__r_.__value_.__r.__words[2];
    }
  }

  else
  {
    std::string::basic_string(&__str, this, v4 + 10, 0xFFFFFFFFFFFFFFFFLL, &v10);
    v5 = std::stoi(&__str, &__idx, 10);
    std::string::basic_string(a1, &__str, __idx, v5, &v10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

unsigned int *llvm::IRBuilderBase::CreatePHI(llvm::IRBuilderBase *this, llvm::Type *a2, int a3, const llvm::Twine *a4)
{
  v7 = llvm::User::operator new(0x40);
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  v8 = v7[15];
  llvm::User::allocHungoffUses(v7);
  if (llvm::FPMathOperator::classof(v7))
  {
    v9 = *(this + 24);
    llvm::IRBuilderBase::setFPAttrs(this, v7);
  }

  (*(**(this + 10) + 16))(*(this + 10), v7, a4, *(this + 6), *(this + 7));
  v10 = *(this + 2);
  if (v10)
  {
    v11 = *this;
    v12 = &v11[2 * v10];
    do
    {
      v13 = *v11;
      v14 = v11[1];
      llvm::Instruction::setMetadata();
      v11 += 2;
    }

    while (v11 != v12);
  }

  return v7;
}

_DWORD *llvm::PHINode::addIncoming(_DWORD *this, llvm::Value *a2, llvm::BasicBlock *a3)
{
  v5 = this;
  v6 = this[5];
  if ((v6 & 0x7FFFFFF) == this[15])
  {
    this = llvm::PHINode::growOperands(this);
    v6 = v5[5];
  }

  v7 = (v6 + 1) & 0x7FFFFFF;
  v5[5] = v6 & 0xF8000000 | (v6 + 1) & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v5 - 1);
  }

  else
  {
    v8 = &v5[-8 * v7];
  }

  v9 = &v8[8 * (v7 - 1)];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 2;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }

  v14 = v5[5];
  v15 = v14 & 0x7FFFFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v16 = *(v5 - 1);
  }

  else
  {
    v16 = &v5[-8 * v15];
  }

  *&v16[8 * v5[15] + 2 * (v15 - 1)] = a3;
  return this;
}

uint64_t llvm::IRBuilderBase::CreateCondBr(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FCA0](v8, a3, a4, a2, 0);
  v11 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, v10);
}

void *std::vector<UVSWriteType>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void AGCLLVMUserMeshShader::addWrapperPostfix(AGCLLVMUserMeshShader *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 1896);
  v8[0] = llvm::ConstantInt::get();
  v3 = *(this + *(*this - 24) + 1896);
  v8[1] = llvm::ConstantInt::get();
  AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v8, 2);
  v4 = this + *(*this - 24);
  v5 = *(v4 + 220);
  v6 = *(v4 + 222);
  v8[0] = "exit";
  v9 = 259;
  v7 = *(v5 + 56);
  operator new();
}

uint64_t llvm::IRBuilderBase::CreateNot(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    Not = (*(**(this + 9) + 208))(*(this + 9), a2);
    if (Not)
    {
      v6 = *(Not + 16) >= 0x1Cu;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
    }
  }

  else
  {
    Not = llvm::BinaryOperator::CreateNot();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
  }

  return Not;
}

void AGCLLVMUserMeshShader::buildWriteVaryings(uint64_t a1, llvm::Type **a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 4864);
  v9 = *(a1 + *(*a1 - 24) + 1896);
  llvm::ConstantInt::get();
  v10 = a1 + *(*a1 - 24);
  if (a5)
  {
    VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(a1);
    v12 = *(a1 + *(*a1 - 24) + 1896);
    v21 = 257;
    llvm::IRBuilderBase::CreateCast(v10 + 1712, 38, VertexAmpCount, v12, v20);
  }

  else
  {
    v13 = *(v10 + 1896);
    llvm::ConstantInt::get();
  }

  v14 = *(*a1 - 24);
  v15 = *(a1 + 4536);
  v21 = 257;
  llvm::IRBuilderBase::CreatePointerCast((a1 + 1712 + v14), a2, v15, v20);
  v16 = a1 + *(*a1 - 24);
  v17 = *(v16 + 1760);
  v18 = *(v16 + 1776);
  v20[0] = "loop";
  v21 = 259;
  v19 = *(v17 + 56);
  operator new();
}

void AGCLLVMUserMeshShader::addInitCompilePass(AGCLLVMUserMeshShader *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShader>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileUserMeshShaderPass>::name()
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

  v2 = &aStringrefLlvmG_8[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserMeshShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserMeshShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGMeshShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_7[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGMeshShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGMeshShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_6[v1];
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

void AGCLLVMUserMeshShader::~AGCLLVMUserMeshShader(AGCLLVMUserMeshShader *this)
{
  *this = &unk_2825587A8;
  v2 = (this + 6264);
  *(this + 783) = &unk_282558B10;
  *(this + 996) = &unk_282558C20;
  v5 = (this + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v5);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4936);
  v3 = *(this + 614);
  if (v3)
  {
    *(this + 615) = v3;
    operator delete(v3);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 4784);
  v4 = *(this + 596);
  if (v4 != -8192 && v4 != -4096 && v4)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D770);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825587A8;
  v2 = (this + 6264);
  *(this + 783) = &unk_282558B10;
  *(this + 996) = &unk_282558C20;
  v5 = (this + 5480);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v5);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4936);
  v3 = *(this + 614);
  if (v3)
  {
    *(this + 615) = v3;
    operator delete(v3);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 4784);
  v4 = *(this + 596);
  if (v4 != -8192 && v4 != -4096 && v4)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D770);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMUserMeshShaderSW::constructReply(AGCLLVMUserMeshShaderSW *this)
{
  v134 = *MEMORY[0x277D85DE8];
  if (AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v113 = AGCLLVMUserObject::constructFlatReply(this);
    v2 = this + *(*this - 24);
    v2[4358] = 1;
    v3 = *(v2 + 1082);
    v4 = *(v2 + 1080) - *(v2 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 4, *(this + 1152));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 6, *(this + 1153));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 536, 8, *(this + 1154));
    v5 = flatbuffers::FlatBufferBuilder::EndTable((v2 + 4288), v4 + v3);
    v6 = *(this + 5480);
    v121 = 0;
    v122 = 0u;
    v123[0] = v124;
    v123[1] = 0x800000000;
    v124[64] = 0x1FFFFFFFFLL;
    v125 = v6;
    v132[7] = 0;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    memset(v132, 0, 26);
    v133 = 1;
    if (*(this + 1238))
    {
      v7 = *(this + 618);
      do
      {
        GenericVaryingAllocator::addVarying(&v121, v7);
        v7 += 64;
      }

      while (v7 < *(this + 618) + (*(this + 1238) << 6));
    }

    GenericVaryingAllocator::allocate(&v121, *(this + *(*this - 24) + 2168));
    GenericVaryingAllocator::serialize(&v121, (this + *(*this - 24) + 4288));
    if (v122 == v121)
    {
      v8 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
    }

    else
    {
      v8 = v121;
    }

    v108 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v8, (v122 - v121) >> 2);
    v9 = this + *(*this - 24);
    v9[4358] = 1;
    v10 = *(v9 + 1082);
    v11 = *(v9 + 1080) - *(v9 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 536, 4, v129);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 536, 6, SDWORD1(v129));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 536, 8, SDWORD2(v129));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 536, 10, SDWORD2(v127));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 536, 12, SHIDWORD(v127));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 536, 14, v128);
    v12 = flatbuffers::FlatBufferBuilder::EndTable((v9 + 4288), v11 + v10);
    v13 = this + *(*this - 24);
    v14 = *(v13 + 1080);
    v13[4358] = 1;
    v15 = *(v13 + 1082);
    v16 = v14 - *(v13 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 536, 4, v132[0]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 536, 6, v132[1]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 536, 8, v132[2]);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 536, 10, SDWORD2(v130));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 536, 12, SHIDWORD(v130));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v13 + 536, 14, v131);
    v17 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v16 + v15);
    v18 = this + *(*this - 24);
    v19 = *(v18 + 1080);
    v18[4358] = 1;
    v20 = *(v18 + 1082);
    v21 = v19 - *(v18 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 4, v5);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 6, *(this + 1206));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 8, *(this + 1207));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v18 + 536, 10, *(this + 4840));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 12, *(this + 1217));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 14, *(this + 1219));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 16, *(this + 1217));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 18, *(this + 1219));
    if (v18[4368] == 1)
    {
      v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v18 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v18 + 536, 60, v22);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 20, *(this + 1218));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 22, *(this + 1220));
    v110 = v12;
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 24, v12);
    v109 = v17;
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 26, v17);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 28, LOBYTE(v132[6]), 0);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v18 + 4288), 30, v108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 32, *(this + 4853), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 34, *(this + 1212));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 36, *(this + 4857), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 38, *(this + 4855), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 40, *(this + 4859), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 42, *(this + 4845), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 44, *(this + 4854), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 46, *(this + 4861), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 48, *(this + 1146));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 50, *(this + 4600), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 52, *(this + 4860), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v18 + 536, 54, *(this + 1194));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 56, *(this + 12), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v18 + 536, 58, *(this + 4601), 0);
    v107 = flatbuffers::FlatBufferBuilder::EndTable((v18 + 4288), v21 + v20);
    v23 = this + *(*this - 24);
    v24 = *(*(v23 + 271) + 960);
    v23[4358] = 1;
    v25 = *(v23 + 1080);
    v26 = *(v23 + 1084);
    v27 = *(v23 + 1082);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 536, 12, v24);
    if (v23[4368] == 1)
    {
      v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 14, v28);
    }

    v29 = v25 - v26;
    v30 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 10, v30);
    if (v23[4368] == 1)
    {
      v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 8, v31);
      if (v23[4368])
      {
        v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 6, v32);
      }
    }

    v106 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4288), v29 + v27);
    v33 = this + *(*this - 24);
    v33[4358] = 1;
    v34 = flatbuffers::FlatBufferBuilder::EndTable((v33 + 4288), *(v33 + 2160) - *(v33 + 2168) + *(v33 + 2164));
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v34, v35);
    v36 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>> const&)::t, 0);
    v37 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t, 0);
    v38 = this + *(*this - 24);
    v39 = *(v38 + 1080);
    v38[4358] = 1;
    v40 = *(v38 + 1082);
    v41 = v39 - *(v38 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v38 + 4288), v36);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v38 + 4288), v37);
    v42 = flatbuffers::FlatBufferBuilder::EndTable((v38 + 4288), v41 + v40);
    v43 = this + *(*this - 24);
    v44 = *(v43 + 1080);
    v43[4358] = 1;
    v45 = *(v43 + 1082);
    v46 = v44 - *(v43 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v43 + 4288), v42);
    v47 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v43 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v43 + 536, 6, v47);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v43 + 536, 8, *(this + 4853), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v43 + 536, 10, *(this + 1221));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v43 + 536, 12, *(this + 1222));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v43 + 536, 14, *(this + 1212));
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v43 + 4288), 16, v110);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v43 + 4288), 18, v109);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v43 + 536, 20, LOBYTE(v132[6]), 0);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v43 + 4288), 22, v108);
    if (v43[4368] == 1)
    {
      v48 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v43 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v43 + 536, 26, v48);
    }

    v111 = flatbuffers::FlatBufferBuilder::EndTable((v43 + 4288), v46 + v45);
    v49 = this + *(*this - 24);
    v50 = *(this + 4857);
    v51 = *(this + 4855);
    v52 = *(this + 4845);
    v53 = *(this + 4854);
    v54 = *(this + 4861);
    v49[4454] = 1;
    v55 = *(v49 + 1106);
    v56 = *(v49 + 1104) - *(v49 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 548, 14, v54, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 548, 12, v54, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 548, 10, v53, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 548, 8, v52, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 548, 6, v51, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v49 + 548, 4, v50, 0);
    v57 = flatbuffers::FlatBufferBuilder::EndTable((v49 + 4384), v56 + v55);
    v58 = this + *(*this - 24);
    v58[4358] = 1;
    v59 = *(v58 + 1082);
    LODWORD(v49) = *(v58 + 1080) - *(v58 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v58 + 4288), v113);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>((v58 + 4288), v107);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v58 + 4288), v106);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v58 + 4288), v111);
    v60 = *(*this - 24);
    v61 = flatbuffers::FlatBufferBuilder::EndTable((v58 + 4288), v49 + v59);
    flatbuffers::FlatBufferBuilder::Finish((this + v60 + 4288), v61, v62);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v63 = this + *(*this - 24);
    v63[4454] = 1;
    v64 = *(v63 + 1106);
    v65 = *(v63 + 1104) - *(v63 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v63 + 4384), v57);
    v66 = *(*this - 24);
    v67 = flatbuffers::FlatBufferBuilder::EndTable((v63 + 4384), v65 + v64);
    flatbuffers::FlatBufferBuilder::Finish((this + v66 + 4384), v67, v68);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    v69 = (this + *(*this - 24));
    v70 = v69[314];
    if (v70)
    {
      if (v69[315])
      {
        v71 = v69 + 314;
      }

      else
      {
        v71 = v69 + 384;
      }
    }

    else
    {
      v71 = v69 + 384;
    }

    v73 = (*v71 + **v71);
    v74 = (v73 + *(v73 - *v73 + 4));
    v75 = (v74 + *v74);
    if (v70)
    {
      if (v69[315])
      {
        v76 = (v69 + 314);
      }

      else
      {
        v76 = (v69 + 384);
      }
    }

    else
    {
      v76 = (v69 + 384);
    }

    v77 = 0;
    v78 = (v75 + *(v75 - *v75 + 8));
    if (*v76 && v76[1])
    {
      v77 = (*v76 + **v76);
    }

    v79 = (v77 - *v77);
    if (*v79 >= 5u && (v80 = v79[2]) != 0)
    {
      v81 = (v77 + v80 + *(v77 + v80));
    }

    else
    {
      v81 = 0;
    }

    v82 = (v81 - *v81);
    if (*v82 >= 0x3Du && (v83 = v82[30]) != 0)
    {
      v84 = *(v81 + v83);
    }

    else
    {
      v84 = 0;
    }

    v85 = *(v78 + *v78);
    v86 = *(this + 1206);
    v112 = *(this + 1223);
    v87 = *(this + 1225);
    v114 = *(this + 1224);
    v88 = *(this + 1207);
    v89 = *(this + 1226);
    v90 = *(this + 1194);
    v91 = *(this + 1227);
    v92 = *(v69[271] + 1004);
    if (v91 > v92)
    {
      std::to_string(&v116, v91);
      v93 = std::string::insert(&v116, 0, "Mesh unique scalar count of ");
      v94 = v93->__r_.__value_.__r.__words[2];
      *&v117.__r_.__value_.__l.__data_ = *&v93->__r_.__value_.__l.__data_;
      v117.__r_.__value_.__r.__words[2] = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      v95 = std::string::append(&v117, " exceeds limit of ");
      v96 = v95->__r_.__value_.__r.__words[2];
      *&v118.__r_.__value_.__l.__data_ = *&v95->__r_.__value_.__l.__data_;
      v118.__r_.__value_.__r.__words[2] = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v115, *(*(this + *(*this - 24) + 2168) + 1004));
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v115;
      }

      else
      {
        v97 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v115.__r_.__value_.__l.__size_;
      }

      v99 = std::string::append(&v118, v97, size);
      v100 = v99->__r_.__value_.__r.__words[2];
      *__p = *&v99->__r_.__value_.__l.__data_;
      v120 = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      if (v120 >= 0)
      {
        v101 = __p;
      }

      else
      {
        v101 = __p[0];
      }

      if (v120 >= 0)
      {
        v102 = HIBYTE(v120);
      }

      else
      {
        v102 = __p[1];
      }

      std::string::append((this + *(*this - 24) + 1656), v101, v102);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v117.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }
    }

    if (v85 > 0x20)
    {
      v72 = 0;
    }

    else
    {
      v103 = validateUserMeshLocalMemoryUsage(v84, ((v86 + 3) & 0xFFFFFFFC) * v112 + v88 * v114 + (v87 * ((v86 + 3) & 0xFFFFFFFC) + v89 * v88) * v90, *(*(this + *(*this - 24) + 2168) + 996), *(*(this + *(*this - 24) + 2168) + 992), *(*(this + *(*this - 24) + 2168) + 1000), (this + *(*this - 24) + 1656));
      if (v91 <= v92)
      {
        v72 = v103;
      }

      else
      {
        v72 = 0;
      }
    }

    __p[0] = &v126;
    std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](__p);
    llvm::SmallVector<GenericVarying,8u>::~SmallVector(v123);
    if (v121)
    {
      *&v122 = v121;
      operator delete(v121);
    }
  }

  else
  {
    v72 = 0;
  }

  v104 = *MEMORY[0x277D85DE8];
  return v72;
}

void AGCLLVMUserMeshShaderSW::getCompilationKeyDescription(AGCLLVMUserMeshShaderSW *this@<X0>, std::string *a2@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(&v59, "AGCMeshContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v57, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v60);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v60.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v60.__r_.__value_.__r + *(v60.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v60.__r_.__value_.__r + *(v60.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v73, v57, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v60.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v60.__r_.__value_.__r.__words + *(v60.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v60.__r_.__value_.__r.__words[2] = v6;
  v61 = MEMORY[0x277D82878] + 16;
  if (v63 < 0)
  {
    operator delete(v62[7].__locale_);
  }

  v61 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v62);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v64);
  std::string::basic_string[abi:nn200100]<0>(v55, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v74, v55, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(v53, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v75, v53, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v51, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v76, v51, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v49, "maxVertexAmplificationCount");
  _agcFieldString<unsigned int>(&v77, v49, v3[2] & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v47, "manufactureUnlinkedVaryings");
  _agcFieldString<unsigned int>(&v78, v47, (*(v3 + 4) >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v45, "customBorderColor");
  _agcFieldString<unsigned int>(&v79, v45, (*(v3 + 4) >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(v43, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v80, v43, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v41, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v81, v41, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v39, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v82, v39, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v37, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v83, &v37, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v35, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v84, v35, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v33, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v85, v33, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v31, "enableStackShadow");
  _agcFieldString<unsigned int>(&v86, v31, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v29, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v87, v29, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v27, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v88, v27, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v25, "addDefaultPointSize");
  _agcFieldString<unsigned int>(&v89, v25, (*(v3 + 4) >> 6) & 1);
  std::string::basic_string[abi:nn200100]<0>(v23, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v90, v23, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "noObjectShader");
  _agcFieldString<unsigned int>(&v91, v21, (*(v3 + 4) >> 8) & 1);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v59;
  }

  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v71, 0);
  std::string::basic_string[abi:nn200100]<0>(v66, "{");
  _agcIndentedLine(&v68, v66, 0);
  if ((v70 & 0x80u) == 0)
  {
    v7 = &v68;
  }

  else
  {
    v7 = v68;
  }

  if ((v70 & 0x80u) == 0)
  {
    v8 = v70;
  }

  else
  {
    v8 = v69;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v70 < 0)
  {
    operator delete(v68);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 57; i += 3)
  {
    v12 = &v73 + i * 8;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[i + 2]) < 0)
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
      std::string::__init_copy_ctor_external(&v65, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v65 = __p;
    }

    _agcIndentedLine(&v68, &v65, 1);
    if ((v70 & 0x80u) == 0)
    {
      v14 = &v68;
    }

    else
    {
      v14 = v68;
    }

    if ((v70 & 0x80u) == 0)
    {
      v15 = v70;
    }

    else
    {
      v15 = v69;
    }

    std::string::append(&v60, v14, v15);
    if (v70 < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
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

  std::string::basic_string[abi:nn200100]<0>(&v68, "}");
  _agcIndentedLine(&__p.__r_.__value_.__l.__data_, &v68, 0);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v60;
  }

  else
  {
    v16 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
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

  if (v70 < 0)
  {
    operator delete(v68);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v19 = 57;
  do
  {
    if (v73.__r_.__value_.__s.__data_[v19 * 8 - 1] < 0)
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
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37);
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

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(AGCLLVMUserMeshShaderSW *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(v1);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6912));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW((this + *(*this - 24)));
  v2 = (v1 + 6912);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(AGCLLVMUserMeshShaderSW *this)
{
  *this = &unk_2825599C0;
  *(this + 864) = &unk_282559D28;
  *(this + 1077) = &unk_282559E38;
  v2 = *(this + 863);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6888));
  }

  v6 = (this + 5488);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v6);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4944);
  v4 = *(this + 615);
  if (v4)
  {
    *(this + 616) = v4;
    operator delete(v4);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 4792);
  v5 = *(this + 596);
  if (v5 != -8192 && v5 != -4096 && v5)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4752));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, off_282559E48);
}

{
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6912));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserMeshShaderSW::~AGCLLVMUserMeshShaderSW(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 6912));
}

void AGCLLVMUserMeshShaderSW::replacePayloadBufferAccesses(AGCLLVMUserMeshShaderSW *this, llvm::PointerType ***a2)
{
  v4 = this + *(*this - 24);
  v5 = *(v4 + 238);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v4 + 1704));
  v7 = this + *(*this - 24);
  v10 = 257;
  v8 = llvm::IRBuilderBase::CreateCall((v7 + 1712), *(inserted + 24), inserted, 0, 0, v9);
  AGCLLVMUserObjectShaderBase::replaceEmulatedPayloadBufferAccesses(this, a2, v8);
}

uint64_t AGCLLVMUserMeshShaderSW::buildNumGroups(AGCLLVMUserMeshShaderSW *this, llvm::Type *a2, int a3)
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

uint64_t AGCLLVMUserMeshShaderSW::buildGlobalSize(llvm::Type ***this, llvm::Type *a2)
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

void AGCLLVMUserMeshShaderSW::addGenerateAuxiliaryShadersPass(AGCLLVMUserMeshShaderSW *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = this + *(*this - 24);
  *&v7 = &AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShaderSW>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v7)[1])
  {
    operator new();
  }

  v3 = *(*this - 24);
  v4 = &v6;
  v5 = 0x800000000;
  operator new();
}

char *llvm::PassInfoMixin<MeshShaderSWAuxiliaryShadersPass>::name()
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

  v2 = &aStringrefLlvmG_12[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,MeshShaderSWAuxiliaryShadersPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<MeshShaderSWAuxiliaryShadersPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void llvm::detail::PassModel<llvm::Module,MeshShaderSWAuxiliaryShadersPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  *a1 = &unk_28255AC30;
  v2 = a1[3];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::PassModel<llvm::Module,MeshShaderSWAuxiliaryShadersPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  *a1 = &unk_28255AC30;
  v2 = a1[3];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShaderSW>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_9[v1];
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

uint64_t AGCLLVMUserMeshShaderSW::markInvariantOutputs(AGCLLVMUserMeshShaderSW *this, const char *a2)
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
    *(this + 4744) = v5;
  }

  if (*(this + 4744) == 1 && *(this + 32) == 1)
  {
    v6 = *(this + *(*this - 24) + 2136);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v8 = *this;
      v9 = *(this + *(*this - 24) + 2136);
      __p = 0;
      v23 = 0;
      v26[0] = 0;
      v26[1] = 0;
      v24 = 0;
      v25 = v26;
      v26[2] = v9;
      v27 = 0;
      v10 = *(Function + 8);
      if (v10)
      {
        do
        {
          MarkInvariants::addSeed(&__p, *(*(v10 + 24) - 32 * (*(*(v10 + 24) + 20) & 0x7FFFFFF) + 32), 0);
          v10 = *(v10 + 8);
        }

        while (v10);
        v8 = *this;
      }

      if ((MarkInvariants::markInvariant(&__p, (this + *(v8 - 24) + 1704)) & 1) == 0)
      {
        v12 = *(this + *(*this - 24) + 2136);
        v13 = v12 + 24;
        for (i = *(v12 + 32); i != v13; i = *(i + 8))
        {
          v15 = i - 56;
          if (!i)
          {
            v15 = 0;
          }

          v16 = v15 + 72;
          v17 = *(v15 + 80);
          if (v17 == v15 + 72)
          {
            v19 = 0;
          }

          else
          {
            do
            {
              v18 = v17 - 24;
              if (!v17)
              {
                v18 = 0;
              }

              v19 = *(v18 + 48);
              if (v19 != v18 + 40)
              {
                break;
              }

              v17 = *(v17 + 8);
            }

            while (v17 != v16);
          }

          while (v17 != v16)
          {
            if (v19)
            {
              v20 = (v19 - 24);
            }

            else
            {
              v20 = 0;
            }

            if (llvm::FPMathOperator::classof(v20))
            {
              llvm::Instruction::setFast(v20);
            }

            v19 = *(v19 + 8);
            v21 = v17 - 24;
            if (!v17)
            {
              v21 = 0;
            }

            while (v19 == v21 + 40)
            {
              v17 = *(v17 + 8);
              if (v17 == v16)
              {
                break;
              }

              v21 = v17 - 24;
              if (!v17)
              {
                v21 = 0;
              }

              v19 = *(v21 + 48);
            }
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v26[0]);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

void AGCLLVMUserMeshShaderSW::replacePreRuntimeLinkBuiltins(AGCLLVMUserMeshShaderSW *this)
{
  v152 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v144, *v2);
  v85 = this;
  v151 = this;
  v144 = &unk_28255AC18;
  v150 = v2;
  {
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserMeshShaderSW::replacePreRuntimeLinkBuiltins(void)::workitem_functions, "air.set_position_mesh");
    dword_27C8D8D98 = 0;
    byte_27C8D8D9C = 0;
    dword_27C8D8DA0 = 1;
    qword_27C8D8DA8 = AGCLLVMUserMeshShaderSW::buildSetPosition;
    unk_27C8D8DB0 = 0;
    dword_27C8D8DB8 = 7;
    word_27C8D8DBC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8DC0, "air.set_point_size_mesh");
    dword_27C8D8DD8 = 0;
    byte_27C8D8DDC = 0;
    dword_27C8D8DE0 = 1;
    qword_27C8D8DE8 = AGCLLVMUserMeshShaderSW::buildSetPointSize;
    unk_27C8D8DF0 = 0;
    dword_27C8D8DF8 = 7;
    word_27C8D8DFC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8E00, "air.set_clip_distance_mesh");
    dword_27C8D8E18 = 0;
    byte_27C8D8E1C = 0;
    dword_27C8D8E20 = 1;
    qword_27C8D8E28 = AGCLLVMUserMeshShaderSW::buildSetClipDistance;
    unk_27C8D8E30 = 0;
    dword_27C8D8E38 = 9;
    word_27C8D8E3C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8E40, "air.set_render_target_array_index_mesh");
    dword_27C8D8E58 = 1;
    byte_27C8D8E5C = 0;
    dword_27C8D8E60 = 1;
    qword_27C8D8E68 = AGCLLVMUserMeshShaderSW::buildSetLayerId;
    unk_27C8D8E70 = 0;
    dword_27C8D8E78 = 7;
    word_27C8D8E7C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8E80, "air.set_viewport_array_index_mesh");
    dword_27C8D8E98 = 1;
    byte_27C8D8E9C = 0;
    dword_27C8D8EA0 = 1;
    qword_27C8D8EA8 = AGCLLVMUserMeshShaderSW::buildSetViewportId;
    unk_27C8D8EB0 = 0;
    dword_27C8D8EB8 = 7;
    word_27C8D8EBC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8EC0, "air.set_primitive_id_mesh");
    dword_27C8D8ED8 = 0;
    byte_27C8D8EDC = 0;
    dword_27C8D8EE0 = 1;
    qword_27C8D8EE8 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveId;
    unk_27C8D8EF0 = 0;
    dword_27C8D8EF8 = 7;
    word_27C8D8EFC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8F00, "air.set_primitive_culled_mesh");
    dword_27C8D8F18 = 0;
    byte_27C8D8F1C = 0;
    dword_27C8D8F20 = 1;
    qword_27C8D8F28 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveCulled;
    unk_27C8D8F30 = 0;
    dword_27C8D8F38 = 7;
    word_27C8D8F3C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8F40, "air.set_index_mesh");
    dword_27C8D8F58 = 0;
    byte_27C8D8F5C = 0;
    dword_27C8D8F60 = 1;
    qword_27C8D8F68 = AGCLLVMUserMeshShaderSW::buildSetIndex;
    unk_27C8D8F70 = 0;
    dword_27C8D8F78 = 7;
    word_27C8D8F7C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8F80, "air.set_indices_mesh.v2i8");
    dword_27C8D8F98 = 0;
    byte_27C8D8F9C = 0;
    dword_27C8D8FA0 = 1;
    qword_27C8D8FA8 = AGCLLVMUserMeshShaderSW::buildSetIndices;
    qword_27C8D8FB0 = 0;
    dword_27C8D8FB8 = 7;
    word_27C8D8FBC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D8FC0, "air.set_indices_mesh.v4i8");
    dword_27C8D8FD8 = 0;
    byte_27C8D8FDC = 0;
    dword_27C8D8FE0 = 1;
    qword_27C8D8FE8 = AGCLLVMUserMeshShaderSW::buildSetIndices;
    qword_27C8D8FF0 = 0;
    dword_27C8D8FF8 = 7;
    word_27C8D8FFC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9000, "air.set_vertex_data_mesh");
    dword_27C8D9018 = 2;
    byte_27C8D901C = 0;
    dword_27C8D9020 = 1;
    qword_27C8D9028 = AGCLLVMUserMeshShaderSW::buildSetVertexData;
    qword_27C8D9030 = 0;
    dword_27C8D9038 = 9;
    word_27C8D903C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9040, "air.set_primitive_data_mesh");
    dword_27C8D9058 = 2;
    byte_27C8D905C = 0;
    dword_27C8D9060 = 1;
    qword_27C8D9068 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveData;
    qword_27C8D9070 = 0;
    dword_27C8D9078 = 9;
    word_27C8D907C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9080, "air.set_primitive_count_mesh");
    dword_27C8D9098 = 0;
    byte_27C8D909C = 0;
    dword_27C8D90A0 = 1;
    qword_27C8D90A8 = AGCLLVMUserMeshShaderSW::buildSetPrimitiveCount;
    qword_27C8D90B0 = 0;
    dword_27C8D90B8 = 5;
    word_27C8D90BC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D90C0, "agc.gpe.get_payload_id");
    dword_27C8D90D8 = 0;
    byte_27C8D90DC = 0;
    dword_27C8D90E0 = 1;
    qword_27C8D90E8 = AGCLLVMUserMeshShaderSW::getGlobalLinearGroupID;
    qword_27C8D90F0 = 0;
    dword_27C8D90F8 = 1;
    word_27C8D90FC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9100, "air.object_threadgroup_position_in_grid");
    dword_27C8D9118 = 0;
    byte_27C8D911C = 0;
    dword_27C8D9120 = 1;
    qword_27C8D9128 = AGCLLVMUserMeshShaderSW::buildOSTGGridPosition;
    qword_27C8D9130 = 0;
    dword_27C8D9138 = 1;
    word_27C8D913C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9140, "air.get_global_size");
    dword_27C8D9158 = 1;
    byte_27C8D915C = 1;
    dword_27C8D9160 = 1;
    qword_27C8D9168 = AGCLLVMUserMeshShaderSW::buildGlobalSizeUbergrid;
    qword_27C8D9170 = 0;
    dword_27C8D9178 = 4;
    word_27C8D917C = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9180, "air.get_global_id");
    dword_27C8D9198 = 1;
    byte_27C8D919C = 1;
    dword_27C8D91A0 = 1;
    qword_27C8D91A8 = AGCLLVMUserMeshShaderSW::buildGlobalIDUbergrid;
    qword_27C8D91B0 = 0;
    dword_27C8D91B8 = 4;
    word_27C8D91BC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D91C0, "air.get_num_groups");
    dword_27C8D91D8 = 1;
    byte_27C8D91DC = 1;
    dword_27C8D91E0 = 1;
    qword_27C8D91E8 = AGCLLVMUserMeshShaderSW::buildNumGroupsUbergrid;
    qword_27C8D91F0 = 0;
    dword_27C8D91F8 = 4;
    word_27C8D91FC = 0;
    std::string::basic_string[abi:nn200100]<0>(byte_27C8D9200, "air.get_group_id");
    dword_27C8D9218 = 1;
    byte_27C8D921C = 1;
    dword_27C8D9220 = 1;
    qword_27C8D9228 = AGCLLVMUserMeshShaderSW::buildGroupIDSW;
    qword_27C8D9230 = 0;
    dword_27C8D9238 = 4;
    word_27C8D923C = 0;
    __cxa_atexit(__cxx_global_array_dtor_491, 0, &dword_20E4E1000);
  }

  v3 = 0;
  while (1)
  {
    v95 = &AGCLLVMUserMeshShaderSW::replacePreRuntimeLinkBuiltins(void)::workitem_functions + 64 * v3;
    if (v95[28] == 1 && (*(*(v85 + 592) + 17) & 1) != 0)
    {
      goto LABEL_145;
    }

    v86 = v3;
    std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
    v141 = &v143;
    v142 = 0x100000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&v141, &__p, &v136);
    if ((v135[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, ".i8");
    std::string::basic_string[abi:nn200100]<0>(&v136, ".i16");
    std::string::basic_string[abi:nn200100]<0>(v137, ".i32");
    v139[0] = &v140;
    v139[1] = 0x300000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(v139, &__p, v138);
    for (i = 0; i != -72; i -= 24)
    {
      if (v137[i + 23] < 0)
      {
        operator delete(*&v137[i]);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v110, ".i1");
    std::string::basic_string[abi:nn200100]<0>(&v110[3], ".i8");
    std::string::basic_string[abi:nn200100]<0>(v112, ".i16");
    std::string::basic_string[abi:nn200100]<0>(v113, ".i32");
    std::string::basic_string[abi:nn200100]<0>(v114, ".f16");
    std::string::basic_string[abi:nn200100]<0>(v115, ".f32");
    std::string::basic_string[abi:nn200100]<0>(v116, ".v2i1");
    std::string::basic_string[abi:nn200100]<0>(v117, ".v2i8");
    std::string::basic_string[abi:nn200100]<0>(v118, ".v2i16");
    std::string::basic_string[abi:nn200100]<0>(v119, ".v2i32");
    std::string::basic_string[abi:nn200100]<0>(v120, ".v2f16");
    std::string::basic_string[abi:nn200100]<0>(v121, ".v2f32");
    std::string::basic_string[abi:nn200100]<0>(v122, ".v3i1");
    std::string::basic_string[abi:nn200100]<0>(v123, ".v3i8");
    std::string::basic_string[abi:nn200100]<0>(v124, ".v3i16");
    std::string::basic_string[abi:nn200100]<0>(v125, ".v3i32");
    std::string::basic_string[abi:nn200100]<0>(v126, ".v3f16");
    std::string::basic_string[abi:nn200100]<0>(v127, ".v3f32");
    std::string::basic_string[abi:nn200100]<0>(v128, ".v4i1");
    std::string::basic_string[abi:nn200100]<0>(v129, ".v4i8");
    std::string::basic_string[abi:nn200100]<0>(v130, ".v4i16");
    std::string::basic_string[abi:nn200100]<0>(v131, ".v4i32");
    std::string::basic_string[abi:nn200100]<0>(v132, ".v4f16");
    std::string::basic_string[abi:nn200100]<0>(v133, ".v4f32");
    *&__p = v135;
    *(&__p + 1) = 0x1800000000;
    llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(&__p, v110, &__p);
    v5 = 72;
    do
    {
      if (SHIBYTE(v110[v5 - 1]) < 0)
      {
        operator delete(*(&v107 + v5 * 8 + 8));
      }

      v5 -= 3;
    }

    while (v5 * 8);
    v6 = *(v95 + 6);
    if (v6 == 1)
    {
      break;
    }

    if (v6 == 2)
    {
      p_p = &__p;
LABEL_19:
      llvm::SmallVectorImpl<std::string>::operator=(&v141, p_p);
    }

    if (v142)
    {
      v8 = v141;
      v88 = &v141[3 * v142];
      while (1)
      {
        std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v96, v95, v8);
        Function = llvm::Module::getFunction();
        if (Function)
        {
          break;
        }

LABEL_141:
        if (v97 < 0)
        {
          operator delete(v96);
        }

        v8 += 3;
        if (v8 == v88)
        {
          goto LABEL_144;
        }
      }

      v10 = *(v95 + 14);
      v89 = v8;
      v90 = Function;
      if (v10 == 12)
      {
        for (j = *(Function + 8); j; v146 = 0uLL)
        {
          v14 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v145, v14);
          v15 = v151 + *(*v151 - 24);
          v107 = v146;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v108, v145);
          v109 = v147;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v107, (v15 + 1712));
          if (v108)
          {
            llvm::MetadataTracking::untrack();
          }

          v16 = *(v95 + 5);
          v17 = *(v95 + 6);
          v18 = (v151 + (v17 >> 1));
          if (v17)
          {
            v16 = *(*v18 + v16);
          }

          v16(v18, v14);
        }

        goto LABEL_140;
      }

      if (v10 == 11)
      {
        v11 = *(v95 + 5);
        if (v11)
        {
          v12 = strlen(*(v95 + 5));
          v110[0] = &v110[3];
          *&v110[1] = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v110, v11, &v11[v12]);
        }

        else
        {
          v110[2] = 64;
          v110[0] = &v110[3];
          v110[1] = 0;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v110, ".", "");
        if (v110[2] < v110[1])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v82 = *(v90 + 3);
        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (v110[0] != &v110[3])
        {
          free(v110[0]);
        }

        goto LABEL_140;
      }

      v19 = **(*(Function + 24) + 16);
      v20 = ((*(v19 + 8) & 0xFE) == 18) & v95[61];
      if (v20 == 1)
      {
        v21 = *(v19 + 32);
      }

      else
      {
        v21 = 1;
      }

      v93 = v21;
      v87 = v147;
      v22 = *(Function + 8);
      if (!v22)
      {
LABEL_134:
        v147 = v87;
LABEL_140:
        llvm::Function::eraseFromParent(v90);
        v8 = v89;
        goto LABEL_141;
      }

      v91 = **(*(Function + 24) + 16);
      while (2)
      {
        v23 = *(v22 + 24);
        v92 = *(v22 + 8);
        v24 = *(v95 + 8);
        if (v24 == 1)
        {
          v25 = 0;
LABEL_43:
          v147 = v25;
        }

        else if (v24 == 2)
        {
          v25 = 121;
          goto LABEL_43;
        }

        llvm::IRBuilderBase::SetInsertPoint(v145, v23);
        v26 = llvm::UndefValue::get();
        if (!v93)
        {
LABEL_131:
          if (*v23 != v148)
          {
            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v23);
          v22 = v92;
          if (!v92)
          {
            goto LABEL_134;
          }

          continue;
        }

        break;
      }

      v27 = 0;
      while (2)
      {
        v94 = v26;
        v112[0] = 0;
        v111 = 0u;
        memset(v110, 0, sizeof(v110));
        v28 = llvm::CallBase::arg_end(v23) - v23 + 32 * (*(v23 + 5) & 0x7FFFFFF);
        if ((v28 & 0x1FFFFFFFE0) != 0)
        {
          v29 = (v28 >> 5);
          v30 = v110;
          v31 = v23;
          do
          {
            v32 = (v31 - 32 * (*(v23 + 5) & 0x7FFFFFF));
            v33 = *v32;
            *v30 = *v32;
            if (v20 && (*(*v33 + 8) & 0xFE) == 0x12)
            {
              v106 = 257;
              v34 = llvm::ConstantInt::get();
              *v30 = llvm::IRBuilderBase::CreateExtractElement(v145, v33, v34, &PrimitiveSizeInBits);
            }

            ++v30;
            v31 = (v31 + 32);
            --v29;
          }

          while (v29);
        }

        if (v95[60])
        {
          v35 = *v110[0];
          if ((*(*v110[0] + 8) & 0xFE) == 0x12)
          {
            v35 = **(v35 + 2);
          }

          PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v35);
          v105 = v36;
          if (llvm::TypeSize::operator unsigned long long() == 32)
          {
            v37 = 0;
          }

          else
          {
            v38 = v149;
            if ((*(*v110[0] + 8) & 0xFE) == 0x12)
            {
              v39 = *(*v110[0] + 32);
              v38 = llvm::FixedVectorType::get();
            }

            if ((v28 & 0x1FFFFFFFE0) != 0)
            {
              v40 = (v28 >> 5);
              v41 = v110;
              do
              {
                v42 = *v41;
                v106 = 257;
                *v41++ = llvm::IRBuilderBase::CreateFPExt(v145, v42, v38, &PrimitiveSizeInBits);
                --v40;
              }

              while (v40);
            }

            v37 = 1;
          }
        }

        else
        {
          v37 = 0;
        }

        if (llvm::FPMathOperator::classof(v23))
        {
          FastMathFlags = llvm::Instruction::getFastMathFlags(v23);
        }

        else
        {
          FastMathFlags = 0;
        }

        v44 = v151 + *(*v151 - 24);
        v101 = v146;
        llvm::IRBuilderBase::getCurrentDebugLocation(&v102, v145);
        v103 = v147;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v101, (v44 + 1712));
        if (v102)
        {
          llvm::MetadataTracking::untrack();
        }

        FPTrunc = 0;
        v46 = *(v95 + 14);
        if (v46 <= 5)
        {
          if (v46 > 2)
          {
            if (v46 != 3)
            {
              if (v46 == 4)
              {
                v75 = (v110[0] + 24);
                if (*(v110[0] + 8) >= 0x41u)
                {
                  v75 = *v75;
                }

                v50 = *v75;
                v47 = *(v95 + 5);
                v76 = *(v95 + 6);
                v49 = *v23;
                v51 = (v151 + (v76 >> 1));
                if (v76)
                {
                  v47 = *(*v51 + v47);
                }
              }

              else
              {
                v47 = *(v95 + 5);
                v48 = *(v95 + 6);
                v49 = v110[0];
                v50 = v110[1];
                v51 = (v151 + (v48 >> 1));
                if (v48)
                {
                  v47 = *(*v51 + v47);
                }
              }

              v71 = v47(v51, v49, v50);
              goto LABEL_119;
            }

            v56 = *(v95 + 5);
            v70 = *(v95 + 6);
            v58 = v110[0];
            v59 = (v151 + (v70 >> 1));
            if (v70)
            {
LABEL_93:
              v56 = *(*v59 + v56);
            }

LABEL_94:
            v71 = v56(v59, v58);
            goto LABEL_119;
          }

          if (v46 == 1)
          {
            v66 = *(v95 + 5);
            v67 = *(v95 + 6);
            v68 = (v151 + (v67 >> 1));
            if (v67)
            {
              v66 = *(*v68 + v66);
            }

            v71 = v66(v68);
LABEL_119:
            FPTrunc = v71;
          }

          else if (v46 == 2)
          {
            v56 = *(v95 + 5);
            v57 = *(v95 + 6);
            v58 = *v23;
            v59 = (v151 + (v57 >> 1));
            if (v57)
            {
              goto LABEL_93;
            }

            goto LABEL_94;
          }

LABEL_120:
          v79 = v151 + *(*v151 - 24);
          v98 = *(v79 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (v79 + 1712));
          v100 = *(v79 + 452);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v98, v145);
          if (v99)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v37)
          {
            v80 = *v23;
            if (v20 && (*(v80 + 2) & 0xFE) == 0x12)
            {
              v80 = **(v80 + 2);
            }

            v106 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v145, FPTrunc, v80, &PrimitiveSizeInBits);
            if (!v20)
            {
LABEL_130:
              ++v27;
              v26 = FPTrunc;
              if (v27 == v93)
              {
                goto LABEL_131;
              }

              continue;
            }
          }

          else if (!v20)
          {
            goto LABEL_130;
          }

          v106 = 257;
          v81 = llvm::ConstantInt::get();
          FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v145, v94, FPTrunc, v81, &PrimitiveSizeInBits);
          goto LABEL_130;
        }

        break;
      }

      if (v46 <= 7)
      {
        if (v46 == 6)
        {
          v60 = *(v95 + 5);
          v69 = *(v95 + 6);
          v62 = v110[0];
          v63 = v110[1];
          v65 = (v151 + (v69 >> 1));
          if (v69)
          {
            v60 = *(*v65 + v60);
          }

          v64 = FastMathFlags;
        }

        else
        {
          v60 = *(v95 + 5);
          v61 = *(v95 + 6);
          v62 = v110[0];
          v63 = v110[1];
          v64 = v110[2];
          v65 = (v151 + (v61 >> 1));
          if (v61)
          {
            v71 = (*(*v65 + v60))(v65, v110[0], v110[1], v110[2]);
            goto LABEL_119;
          }
        }
      }

      else
      {
        if (v46 == 8)
        {
          v52 = *(v95 + 5);
          v72 = *(v95 + 6);
          v54 = v110[0];
          v73 = v110[1];
          v74 = v110[2];
          v55 = (v151 + (v72 >> 1));
          if (v72)
          {
            v52 = *(*v55 + v52);
          }

          v78 = FastMathFlags;
          goto LABEL_114;
        }

        if (v46 != 9)
        {
          if (v46 != 10)
          {
            goto LABEL_120;
          }

          v52 = *(v95 + 5);
          v53 = *(v95 + 6);
          v54 = *v23;
          v55 = (v151 + (v53 >> 1));
          if (v53)
          {
            v52 = *(*v55 + v52);
          }

          v73 = v110;
          v74 = &unk_20E75F419;
          v78 = 0;
LABEL_114:
          v71 = v52(v55, v54, v73, v74, v78);
          goto LABEL_119;
        }

        v60 = *(v95 + 5);
        v77 = *(v95 + 6);
        v65 = (v151 + (v77 >> 1));
        if (v77)
        {
          v60 = *(*v65 + v60);
        }

        v62 = v110;
        v63 = &unk_20E75F419;
        v64 = 0;
      }

      v71 = v60(v65, v62, v63, v64);
      goto LABEL_119;
    }

LABEL_144:
    llvm::SmallVector<std::string,1u>::~SmallVector(&__p);
    llvm::SmallVector<std::string,1u>::~SmallVector(v139);
    llvm::SmallVector<std::string,1u>::~SmallVector(&v141);
    v3 = v86;
LABEL_145:
    if (++v3 == 19)
    {
      v83 = v85;
      v84 = *(v85 + 596);
      if (v84)
      {
        AGCLLVMUserObjectShaderBase::mutateValueAddressSpace(v85, v84);
        v83 = v85;
      }

      AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(v83, 7, 1);
    }
  }

  p_p = v139;
  goto LABEL_19;
}

uint64_t AGCLLVMUserMeshShaderSW::buildGroupIDSW(int8x8_t *this, llvm::Type *a2, int a3)
{
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v6 = this + *(*this - 24);
  v9 = a3 + 1;
  v8[16] = 257;
  return llvm::IRBuilderBase::CreateExtractValue((v6 + 1712), GridProperties, &v9, 1, v8);
}

uint64_t AGCLLVMUserMeshShaderSW::getGridProperties(int8x8_t *this)
{
  v76[0] = *MEMORY[0x277D85DE8];
  EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(this);
  v3 = EmulationStateCacheForCurrentFunction[35];
  if (!v3)
  {
    v4 = EmulationStateCacheForCurrentFunction;
    v5 = this + *(*this - 24);
    v56 = *(v5 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (v5 + 1712));
    v58 = *(v5 + 452);
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
    v11 = *(&this[270] + *(*this - 24));
    if (!llvm::StructType::getTypeByName())
    {
      v62 = *(&this[238] + *(*this - 24));
      v63 = v62;
      v64[0] = v62;
      v64[1] = v62;
      v65 = v62;
      v66 = v62;
      v67 = v62;
      v68 = v62;
      v69 = v62;
      llvm::StructType::create();
    }

    v12 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 0);
    v13 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 1);
    v14 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 2);
    v59 = v61;
    v60 = 0x600000000;
    v15 = (this + *(*this - 24));
    if (*(*&this[592] + 17))
    {
      __src = v15[238];
      v71 = __src;
      v72 = __src;
      v73 = __src;
      v74 = __src;
      v75 = __src;
      v62 = v64;
      v63 = 0x600000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v62, &__src, v76);
      llvm::FunctionType::get();
      v42 = v15[267];
      llvm::Module::getOrInsertFunction();
      v25 = v43;
      if (v62 != v64)
      {
        free(v62);
      }

      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v12);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v13);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v14);
      v44 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v44);
      v45 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 1);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v45);
      v14 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 2);
    }

    else
    {
      v51 = v13;
      v52 = v12;
      v16 = v15[239];
      v17 = llvm::PointerType::get();
      v18 = *(&this[238] + *(*this - 24));
      v19 = llvm::PointerType::get();
      v20 = *(&this[238] + *(*this - 24));
      v21 = llvm::PointerType::get();
      v22 = *(&this[238] + *(*this - 24));
      __src = v17;
      v71 = v19;
      v72 = v21;
      v73 = v22;
      v74 = v22;
      v75 = v22;
      v62 = v64;
      v63 = 0x600000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v62, &__src, v76);
      llvm::FunctionType::get();
      v23 = v15[267];
      llvm::Module::getOrInsertFunction();
      v25 = v24;
      if (v62 != v64)
      {
        free(v62);
      }

      EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 1, 1);
      v27 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 0, 1);
      llvm::IRBuilderBase::SetInsertPoint(&this[214] + *(*this - 24), *(v27 + 40), *(v27 + 32));
      v28 = this + *(*this - 24);
      v29 = this[588];
      LOWORD(v65) = 257;
      Load = AGCLLVMBuilder::CreateLoad((v28 + 1704), v29, &v62);
      v31 = *(&this[239] + *(*this - 24));
      v32 = llvm::PointerType::get();
      LOWORD(v74) = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v28 + 1712), 49, Load, v32, &__src);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, Cast);
      v34 = this + *(*this - 24);
      v35 = *(v34 + 238);
      v36 = llvm::PointerType::get();
      LOWORD(v65) = 257;
      v37 = llvm::IRBuilderBase::CreateCast((v34 + 1712), 49, EmulationStateBuffer, v36, &v62);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v37);
      v38 = this + *(*this - 24);
      v39 = *(v38 + 238);
      v40 = llvm::PointerType::get();
      LOWORD(v65) = 257;
      v41 = llvm::IRBuilderBase::CreateCast((v38 + 1712), 49, v27, v40, &v62);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v41);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v52);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v51);
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v14);
    v46 = this + *(*this - 24);
    v62 = "agc.gpe.grid_properties";
    LOWORD(v65) = 259;
    v47 = llvm::IRBuilderBase::CreateCall((v46 + 1712), *(v25 + 24), v25, v59, v60, &v62);
    llvm::ValueHandleBase::operator=((v4 + 33), v47);
    v48 = this + *(*this - 24);
    v53 = v56;
    v54 = v57;
    if (v57)
    {
      llvm::MetadataTracking::track();
    }

    v55 = v58;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v53, (v48 + 1712));
    if (v54)
    {
      llvm::MetadataTracking::untrack();
    }

    v3 = v4[35];
    if (v59 != v61)
    {
      free(v59);
    }

    if (v57)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return v3;
}

void *AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(int8x8_t *this)
{
  v2 = *(*(&this[220] + *(*this - 24)) + 56);
  v3 = this + 581;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(v2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = this[582];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*v3 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v28[0] = 4;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = 4;
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = 4;
    v28[7] = 0;
    v28[8] = 0;
    v28[9] = 4;
    v28[10] = 0;
    v28[11] = 0;
    v28[12] = 4;
    v28[13] = 0;
    v28[14] = 0;
    v28[15] = 4;
    v28[16] = 0;
    v28[17] = 0;
    v28[18] = 4;
    v28[19] = 0;
    v28[20] = 0;
    v28[21] = 4;
    v28[22] = 0;
    v28[23] = 0;
    v28[24] = 4;
    v28[25] = 0;
    v28[26] = 0;
    v28[27] = 4;
    v28[28] = 0;
    v28[29] = 0;
    v28[30] = 4;
    v28[31] = 0;
    v28[32] = 0;
    v28[33] = 4;
    v28[34] = 0;
    v28[35] = 0;
    v28[37] = 0;
    v28[38] = 0;
    v28[36] = 4;
    v29 = v2;
    AGCLLVMUserObjectShaderBase::FunctionStateCache::FunctionStateCache(&v30, v28);
    v13 = 0x9DDFEA08EB382D69 * ((8 * (v29 & 0x1FFFFFFF) + 8) ^ HIDWORD(v29));
    v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v29) ^ (v13 >> 47) ^ v13);
    v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
    v16 = this[582];
    if (!*&v16)
    {
      goto LABEL_34;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = v15 & (*&v16 - 1);
    }

    v19 = *(*v3 + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_34:
      operator new();
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == v15)
      {
        if (v20[2] == v29)
        {
          AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache(&v30);
          AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache(v28);
          v7 = this[582];
          goto LABEL_35;
        }
      }

      else
      {
        if (v17.u32[0] > 1uLL)
        {
          if (v21 >= *&v16)
          {
            v21 %= *&v16;
          }
        }

        else
        {
          v21 &= *&v16 - 1;
        }

        if (v21 != v18)
        {
          goto LABEL_34;
        }
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_34;
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

LABEL_35:
  if (!*&v7)
  {
    goto LABEL_52;
  }

  v22 = vcnt_s8(v7);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v6;
    if (v6 >= *&v7)
    {
      v23 = v6 % *&v7;
    }
  }

  else
  {
    v23 = v6 & (*&v7 - 1);
  }

  v24 = *(*v3 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_52:
    operator new();
  }

  while (2)
  {
    v26 = v25[1];
    if (v26 != v6)
    {
      if (v22.u32[0] > 1uLL)
      {
        if (v26 >= *&v7)
        {
          v26 %= *&v7;
        }
      }

      else
      {
        v26 &= *&v7 - 1;
      }

      if (v26 != v23)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (v25[2] != v2)
    {
LABEL_51:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_52;
      }

      continue;
    }

    return v25 + 3;
  }
}

uint64_t AGCLLVMUserObjectShaderBase::FunctionStateCache::FunctionStateCache(uint64_t a1, void *a2)
{
  v4 = llvm::ValueHandleBase::ValueHandleBase(a1, 2u, a2);
  llvm::ValueHandleBase::ValueHandleBase((v4 + 24), 2u, a2 + 3);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 48), 2u, a2 + 6);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 72), 2u, a2 + 9);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 96), 2u, a2 + 12);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 120), 2u, a2 + 15);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 144), 2u, a2 + 18);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 168), 2u, a2 + 21);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 192), 2u, a2 + 24);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 216), 2u, a2 + 27);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 240), 2u, a2 + 30);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 264), 2u, a2 + 33);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 288), 2u, a2 + 36);
  return a1;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Function *,AGCLLVMUserObjectShaderBase::FunctionStateCache>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Function *,AGCLLVMUserObjectShaderBase::FunctionStateCache>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t AGCLLVMUserMeshShaderSW::buildNumGroupsUbergrid(int8x8_t *this, llvm::Type *a2, int a3)
{
  v4 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v8 = a3 + 6;
  v7[16] = 257;
  return llvm::IRBuilderBase::CreateExtractValue((v4 + 1712), GridProperties, &v8, 1, v7);
}

uint64_t AGCLLVMUserMeshShaderSW::buildGlobalIDUbergrid(int8x8_t *this, llvm::Type *a2, uint64_t a3)
{
  v6 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v14[0] = a3 + 1;
  v17 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v6 + 1712), GridProperties, v14, 1, v16);
  v9 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v10 = AGCLLVMUserObjectShaderBase::buildLocalID(this, a2, a3);
  v11 = this + *(*this - 24);
  v17 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v11 + 1712), Value, v9, v16);
  v15 = 257;
  return llvm::IRBuilderBase::CreateAdd((v11 + 1712), Mul, v10, v14);
}

uint64_t AGCLLVMUserMeshShaderSW::buildGlobalSizeUbergrid(AGCLLVMUserMeshShaderSW *this, llvm::Type *a2, int a3)
{
  v5 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v6 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v14 = a3 + 6;
  v13 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v6 + 1712), GridProperties, &v14, 1, v12);
  v11 = 257;
  return llvm::IRBuilderBase::CreateMul((v6 + 1712), Value, v5, v10);
}

llvm::Value *AGCLLVMUserMeshShaderSW::buildOSTGGridPosition(int8x8_t *this)
{
  if (*(*&this[592] + 17))
  {
    v21 = this + *(*this - 24);
    v22 = *(v21 + 238);
    v23 = llvm::ConstantInt::get();

    return AGCLLVMBuilder::splat((v21 + 1704), 3, v23);
  }

  else
  {
    EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 2, 0);
    v4 = v3;
    v5 = this + *(*this - 24);
    v6 = this[574].u32[0];
    v7 = *(v5 + 238);
    v8 = llvm::ConstantInt::get();
    v9 = this + *(*this - 24);
    GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
    v29 = 5;
    v28 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v9 + 1712), GridProperties, &v29, 1, v27);
    v26 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v8, Value, v25);
    v24[16] = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v5 + 1712), v4, EmulationStateBuffer, Mul, v24);
    v14 = this + *(*this - 24);
    v15 = *(v14 + 249);
    v16 = llvm::PointerType::get();
    v28 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, GEP, v16, v27);
    v18 = this + *(*this - 24);
    v19 = *(v18 + 249);
    v28 = 257;
    llvm::Type::isOpaquePointerTy(*PointerCast);
    return llvm::IRBuilderBase::CreateAlignedLoad(v18 + 214, v19, PointerCast, 0, v27);
  }
}

uint64_t AGCLLVMUserMeshShaderSW::getGlobalLinearGroupID(int8x8_t *this)
{
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v3 = this + *(*this - 24);
  v6 = 5;
  v5[16] = 257;
  return llvm::IRBuilderBase::CreateExtractValue((v3 + 1712), GridProperties, &v6, 1, v5);
}

llvm::Value *AGCLLVMUserMeshShaderSW::buildSetPrimitiveCount(int8x8_t *this, llvm::Value *a2, llvm::Value *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  LODWORD(__src[0]) = 0;
  v48 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v5 + 1712), GridProperties, __src, 1, v46);
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 4, 0);
  v10 = v9;
  v42[0] = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 3, 0);
  v42[1] = Value;
  v11 = this + *(*this - 24);
  v12 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 5, 0);
  v13 = *(&this[252] + *(*this - 24));
  v14 = llvm::PointerType::get();
  v48 = 257;
  v42[2] = llvm::IRBuilderBase::CreateCast((v11 + 1712), 49, v12, v14, v46);
  v15 = this + *(*this - 24);
  v16 = this[604].u32[1];
  v17 = *(v15 + 238);
  v18 = llvm::ConstantInt::get();
  LOWORD(v44) = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v15 + 1712), Value, v18, __src);
  v41 = 257;
  v42[3] = llvm::IRBuilderBase::CreateGEP((v15 + 1712), v10, EmulationStateBuffer, Mul, v40);
  v42[4] = a3;
  this[605].i32[0];
  v20 = *(&this[236] + *(*this - 24));
  v42[5] = llvm::ConstantInt::get();
  LODWORD(Value) = this[597].u8[7];
  v21 = (this + *(*this - 24));
  v22 = v21[231];
  v23 = v21[238];
  v24 = llvm::PointerType::get();
  v25 = this + *(*this - 24);
  v26 = *(v25 + 238);
  v27 = *(v25 + 252);
  v28 = llvm::PointerType::get();
  v29 = *(&this[236] + *(*this - 24));
  v30 = llvm::PointerType::get();
  v31 = this + *(*this - 24);
  v32 = *(v31 + 238);
  v33 = *(v31 + 236);
  __src[0] = v24;
  __src[1] = v26;
  __src[2] = v28;
  __src[3] = v30;
  v44 = v32;
  v45 = v33;
  v46[0] = v47;
  v46[1] = 0x600000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v46, __src, v46);
  llvm::FunctionType::get();
  v34 = v21[267];
  llvm::Module::getOrInsertFunction();
  v36 = v35;
  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  v37 = this + *(*this - 24);
  v48 = 257;
  result = llvm::IRBuilderBase::CreateCall((v37 + 1712), *(v36 + 24), v36, v42, 6, v46);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPrimitiveData(int8x8_t *a1, void *a2)
{
  v3 = a2[1];
  v4 = (v3 + 24);
  if (*(v3 + 32) >= 0x41u)
  {
    v4 = *v4;
  }

  v5 = *v4;
  v6 = a2[2];
  v7 = a2[3];
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1);

  return AGCLLVMUserMeshShaderSW::buildSetVaryingData(a1, 1, v5, v6, v7, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetVaryingData(int8x8_t *a1, int a2, unsigned int a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = ((a2 != 0) | (2 * a3)) + 7;
  if (a3 >= 0xFFFFFFF9)
  {
    v7 = ~a3;
  }

  v8 = a1[619].u32[0];
  if (v8)
  {
    v11 = a1[618];
    v12 = v8 << 6;
    while (*(*&v11 + 16) != v7)
    {
      *&v11 += 64;
      v12 -= 64;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    *v68 = 0u;
    v69 = 0u;
    v16 = AGCLLVMBuilder::unboxVector((&a1[213] + *(*a1 - 24)), a5, v68);
    v17 = v16;
    v18 = *v68[0];
    v19 = *a1;
    v20 = (a1 + *(*a1 - 24));
    if (*v68[0] == *&v20[235] || v18 == *&v20[236] || v18 == *&v20[237])
    {
      v60 = v20[238];
      if (v16)
      {
        v21 = v16;
        v22 = v68;
        do
        {
          v23 = a1 + *(*a1 - 24);
          v24 = *v22;
          v25 = *(v23 + 238);
          v67 = 257;
          *v22++ = llvm::IRBuilderBase::CreateCast((v23 + 1712), 39, v24, v25, v66);
          --v21;
        }

        while (v21);
        v19 = *a1;
      }
    }

    else
    {
      v60 = *v68[0];
    }

    v26 = a1 + *(*&v19 - 24);
    GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(a1);
    v64[0] = 0;
    v67 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v26 + 1712), GridProperties, v64, 1, v66);
    BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(a1, Value, a2, *(*&v11 + 60), v60, a6);
    if (a2 == 1)
    {
      v30 = a1 + *(*a1 - 24);
      v31 = a1[609].u32[0];
      v32 = *(v30 + 238);
      v33 = llvm::ConstantInt::get();
      v34 = a1 + *(*a1 - 24);
      VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(a1);
      v36 = a1[610].u32[0];
      v37 = *(&a1[238] + *(*a1 - 24));
      v38 = llvm::ConstantInt::get();
      v67 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v34 + 1712), VertexAmpCount, v38, v66);
      v65 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v30 + 1712), v33, Mul, v64);
      v41 = a1 + *(*a1 - 24);
      v67 = 257;
      a4 = llvm::IRBuilderBase::CreateMul((v41 + 1712), a4, Add, v66);
    }

    else
    {
      v42 = a1[603].i32[0];
    }

    v43 = v60;
    if (v17)
    {
      for (i = 0; i != v17; llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), v68[i++], GEP, 0))
      {
        v45 = i + *(*&v11 + 52);
        v46 = a1 + *(*a1 - 24);
        v47 = *(v46 + 238);
        if (*(*&v11 + 56) == 1)
        {
          v48 = llvm::ConstantInt::get();
          v67 = 257;
          v49 = llvm::IRBuilderBase::CreateMul((v46 + 1712), a4, v48, v66);
          v50 = *(&a1[238] + *(*a1 - 24));
          v51 = llvm::ConstantInt::get();
          v65 = 257;
          v52 = v49;
          v43 = v60;
          v53 = llvm::IRBuilderBase::CreateAdd((v46 + 1712), v52, v51, v64);
          v63 = 257;
          v54 = (v46 + 1712);
          v55 = &v62;
        }

        else
        {
          v56 = llvm::ConstantInt::get();
          v67 = 257;
          v53 = llvm::IRBuilderBase::CreateAdd((v46 + 1712), a4, v56, v66);
          v65 = 257;
          v54 = (v46 + 1712);
          v55 = v64;
        }

        GEP = llvm::IRBuilderBase::CreateGEP(v54, v43, BasePointer, v53, v55);
      }
    }

    v58 = *(&a1[231] + *(*a1 - 24));
    result = llvm::UndefValue::get();
    v59 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_7:
    v13 = *(&a1[231] + *(*a1 - 24));
    v14 = *MEMORY[0x277D85DE8];

    return llvm::UndefValue::get();
  }

  return result;
}

llvm::Value *AGCLLVMUserMeshShaderSW::getBasePointer(int8x8_t *a1, llvm::Value *a2, int a3, unsigned int a4, uint64_t a5, llvm::Value *a6)
{
  v11 = *(&a1[236] + *(*a1 - 24));
  v12 = llvm::PointerType::get();
  v13 = llvm::PointerType::get();
  v14 = (a1 + *(*a1 - 24));
  if (a3)
  {
    EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(a1, 6, 0);
    v39 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, EmulationStateBuffer, v12, v38);
    v17 = ((a1[609].i32[0] + a1[597].i32[0] * a1[610].i32[0]) * a1[603].i32[1]);
  }

  else
  {
    v18 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(a1, 5, 0);
    v41 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, v18, v12, v40);
    v19 = (a1[608].i32[1] + a1[597].i32[0] * a1[609].i32[1]);
  }

  v20 = a1 + *(*a1 - 24);
  v21 = *(v20 + 238);
  v22 = llvm::ConstantInt::get();
  v41 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v20 + 1712), a2, v22, v40);
  v39 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v20 + 1712), v11, PointerCast, Mul, v38);
  v25 = &a1[6 * a4 + 705];
  v26 = *v25;
  if ((*(v25 + 12) & 1) == 0)
  {
    v27 = *(&a1[238] + *(*a1 - 24));
    a6 = llvm::ConstantInt::get();
  }

  v28 = a1[609].u32[a3 + 1];
  v29 = *(&a1[238] + *(*a1 - 24));
  v30 = llvm::ConstantInt::get();
  v31 = a1 + *(*a1 - 24);
  v41 = 257;
  v32 = llvm::IRBuilderBase::CreateMul((v31 + 1712), a6, v30, v40);
  v39 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v31 + 1712), v26, v32, v38);
  v34 = a1 + *(*a1 - 24);
  v41 = 257;
  v35 = llvm::IRBuilderBase::CreateGEP((v34 + 1712), v11, GEP, Add, v40);
  v36 = (a1 + *(*a1 - 24));
  v41 = 257;
  return llvm::IRBuilderBase::CreatePointerCast(v36 + 214, v35, v13, v40);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetVertexData(int8x8_t *a1, void *a2)
{
  v3 = a2[1];
  v4 = (v3 + 24);
  if (*(v3 + 32) >= 0x41u)
  {
    v4 = *v4;
  }

  v5 = *v4;
  v6 = a2[2];
  v7 = a2[3];
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1);

  return AGCLLVMUserMeshShaderSW::buildSetVaryingData(a1, 0, v5, v6, v7, VertexAmpId);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetIndices(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = *a4;
  v8 = llvm::PointerType::get();
  v9 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v33[0] = 0;
  v36 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v9 + 1712), GridProperties, v33, 1, v35);
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 4, 0);
  v14 = v13;
  v15 = this + *(*this - 24);
  v16 = this[604].u32[1];
  v17 = *(v15 + 238);
  v18 = llvm::ConstantInt::get();
  v36 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v15 + 1712), Value, v18, v35);
  v34 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v15 + 1712), v14, EmulationStateBuffer, Mul, v33);
  v32 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, GEP, v8, v31);
  v22 = this + *(*this - 24);
  v23 = *(v7 + 8);
  v24 = *(v22 + 238);
  v25 = llvm::ConstantInt::get();
  v36 = 257;
  UDiv = llvm::IRBuilderBase::CreateUDiv((v22 + 1712), a3, v25, v35);
  v27 = this + *(*this - 24);
  v36 = 257;
  v28 = llvm::IRBuilderBase::CreateGEP((v27 + 1712), v7, PointerCast, UDiv, v35);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, v28, 0);
  v29 = *(&this[231] + *(*this - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetIndex(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v23[0] = 0;
  v26 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, v23, 1, v25);
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 4, 0);
  v12 = v11;
  v13 = this + *(*this - 24);
  v14 = this[604].u32[1];
  v15 = *(v13 + 238);
  v16 = llvm::ConstantInt::get();
  v26 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v13 + 1712), Value, v16, v25);
  v24 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), a3, Mul, v23);
  v22 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v12, EmulationStateBuffer, Add, v21);
  return llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, GEP, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPrimitiveCulled(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v27[0] = 0;
  v30 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, v27, 1, v29);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(this, Value, 0x17u, 0, a3, *(&this[238] + *(*this - 24)));
  v11 = this + *(*this - 24);
  v12 = *(v11 + 236);
  v30 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 39, a4, v12, v29);
  v14 = this + *(*this - 24);
  v30 = 257;
  v15 = *Cast;
  v16 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((v14 + 1712), Cast, v16, v29);
  v18 = this + *(*this - 24);
  v19 = *(v18 + 236);
  v20 = llvm::PointerType::get();
  v30 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v18 + 214, BuiltinPointer, v20, v29);
  v22 = *(&this[238] + *(*this - 24));
  v23 = llvm::ConstantInt::get();
  v28 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v18 + 1712), v19, PointerCast, v23, v27);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), Shl, GEP, 0);
  v25 = *(&this[231] + *(*this - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::getBuiltinPointer(int8x8_t *a1, llvm::Value *a2, unsigned int a3, uint64_t a4, llvm::Value *a5, llvm::Type *a6)
{
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(a1);
  BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(a1, a2, 0, a3, a6, VertexAmpId);
  v13 = a1 + *(*a1 - 24);
  v14 = a1[604].u32[0];
  v15 = *(v13 + 238);
  v16 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), a5, v16, v20);
  v18 = a1 + *(*a1 - 24);
  v21 = 257;
  return llvm::IRBuilderBase::CreateGEP((v18 + 1712), a6, BasePointer, Add, v20);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPrimitiveId(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (this[608].i8[0] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    AGCLLVMUserMeshShaderSW::buildSetVaryingData(this, 1, 0xFFFFFFFF, a3, a4, VertexAmpId);
  }

  v8 = *(&this[231] + *(*this - 24));

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetViewportId(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  v8 = *(v7 + 238);
  v35 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 39, a4, v8, v34);
  if (this[607].i8[2] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    AGCLLVMUserMeshShaderSW::buildSetVaryingData(this, 1, 0xFFFFFFFC, a3, Cast, VertexAmpId);
  }

  v11 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v32[0] = 0;
  v35 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v11 + 1712), GridProperties, v32, 1, v34);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(this, Value, 0x17u, 0, a3, *(&this[238] + *(*this - 24)));
  v15 = this + *(*this - 24);
  v16 = *(v15 + 238);
  v17 = llvm::ConstantInt::get();
  v35 = 257;
  llvm::IRBuilderBase::CreateICmp(v15 + 214, 37, Cast, v17, v34);
  v18 = *(&this[238] + *(*this - 24));
  llvm::ConstantInt::get();
  v33 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v20 = this + *(*this - 24);
  v21 = *(v20 + 236);
  v35 = 257;
  v22 = llvm::IRBuilderBase::CreateCast((v20 + 1712), 38, Select, v21, v34);
  v23 = this + *(*this - 24);
  v24 = *(v23 + 236);
  v25 = llvm::PointerType::get();
  v35 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v23 + 214, BuiltinPointer, v25, v34);
  v27 = *(&this[238] + *(*this - 24));
  v28 = llvm::ConstantInt::get();
  v33 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v23 + 1712), v24, PointerCast, v28, v32);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), v22, GEP, 0);
  v30 = *(&this[231] + *(*this - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetLayerId(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  v8 = *(v7 + 238);
  v32 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 39, a4, v8, v31);
  if (this[607].i8[0] == 1)
  {
    VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
    AGCLLVMUserMeshShaderSW::buildSetVaryingData(this, 1, 0xFFFFFFFB, a3, Cast, VertexAmpId);
  }

  v11 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v29[0] = 0;
  v32 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v11 + 1712), GridProperties, v29, 1, v31);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(this, Value, 0x17u, 0, a3, *(&this[238] + *(*this - 24)));
  v15 = this + *(*this - 24);
  v16 = *(v15 + 238);
  v17 = llvm::ConstantInt::get();
  v32 = 257;
  llvm::IRBuilderBase::CreateICmp(v15 + 214, 37, Cast, v17, v31);
  v18 = *(&this[238] + *(*this - 24));
  llvm::ConstantInt::get();
  v30 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v20 = this + *(*this - 24);
  v21 = *(v20 + 237);
  v32 = 257;
  v22 = llvm::IRBuilderBase::CreateCast((v20 + 1712), 38, Select, v21, v31);
  v23 = this + *(*this - 24);
  v24 = *(v23 + 237);
  v25 = llvm::PointerType::get();
  v32 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v23 + 214, BuiltinPointer, v25, v31);
  llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), v22, PointerCast, 0);
  v27 = *(&this[231] + *(*this - 24));
  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetClipDistance(int8x8_t *a1, void *a2)
{
  v3 = a2[1];
  v4 = (v3 + 24);
  if (*(v3 + 32) >= 0x41u)
  {
    v4 = *v4;
  }

  v5 = *v4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a1 + *(*a1 - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(a1);
  v14 = 0;
  v13[16] = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v8 + 1712), GridProperties, &v14, 1, v13);
  BuiltinPointer = AGCLLVMUserMeshShaderSW::getBuiltinPointer(a1, Value, 0x19u, v5, v6, *(&a1[234] + *(*a1 - 24)));
  return llvm::IRBuilderBase::CreateAlignedStore((&a1[214] + *(*a1 - 24)), v7, BuiltinPointer, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPointSize(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v19 = 0;
  v18 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, &v19, 1, v17);
  v10 = this + *(*this - 24);
  v11 = *a4;
  v12 = *(v10 + 234);
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
  BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(this, Value, 0, 0x16u, v12, VertexAmpId);
  v18 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v10 + 1712), v11, BasePointer, a3, v17);
  return llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, GEP, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::buildSetPosition(int8x8_t *this, llvm::Value *a2, llvm::Value *a3, llvm::Type **a4)
{
  v7 = this + *(*this - 24);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  v19 = 0;
  v18 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, &v19, 1, v17);
  v10 = this + *(*this - 24);
  v11 = *a4;
  v12 = *(v10 + 252);
  VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
  BasePointer = AGCLLVMUserMeshShaderSW::getBasePointer(this, Value, 0, 0, v12, VertexAmpId);
  v18 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v10 + 1712), v11, BasePointer, a3, v17);
  return llvm::IRBuilderBase::CreateAlignedStore((&this[214] + *(*this - 24)), a4, GEP, 0);
}

uint64_t AGCLLVMUserMeshShaderSW::setupShaderInputs(AGCLLVMUserMeshShaderSW *this)
{
  v276 = *MEMORY[0x277D85DE8];
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

  v227 = v4;
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(v2);
    v6 = *(this + 21);
    v7 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
    v5 = v7;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v230 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v5 == v230)
  {
LABEL_359:
    AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
    result = 1;
    goto LABEL_361;
  }

  v228 = this + 1704;
  v8 = this + 5640;
  v238 = this + 5536;
  v235 = this + 5512;
  v236 = this + 1696;
  v237 = this + 5584;
  v233 = this + 1656;
  v234 = this + 5560;
  v226 = (this + 4884);
  v239 = this + 1904;
  v225 = (this + 5540);
  do
  {
    v9 = *(*(this + 10) + 8 * *(v5 + 8));
    if (v5[1])
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 1;
      goto LABEL_354;
    }

    v12 = *(v227 + 40);
    if (v12)
    {
      v13 = (v12 - 24);
    }

    else
    {
      v13 = 0;
    }

    AGCLLVMBuilder::SetInsertPoint(&v228[*(*this - 24)], v13, *(this + 5));
    v14 = isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8), "air.mesh");
    v15 = v9 - 8 * *(v9 + 8);
    if (!v14)
    {
      v25 = isStringMDNode(*(v15 + 8), "air.amplification_id");
      v11 = 1;
      if (v25)
      {
        v26 = *(*this - 24);
        VertexAmpId = AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
        AGCLLVMBuilder::truncateToSmall(&v228[v26], VertexAmpId, *v5);
        llvm::Value::replaceAllUsesWith();
        v11 = 1;
        *(this + 4781) = 1;
      }

      goto LABEL_354;
    }

    v229 = v5;
    v16 = *(v15 + 16);
    if (!v16)
    {
LABEL_37:
      v18 = 0;
      v20 = 0;
      v17 = 0;
      goto LABEL_43;
    }

    v17 = 0;
    v18 = 0;
    v19 = *v16;
    if (v19 > 0x22)
    {
LABEL_38:
      v20 = 0;
      goto LABEL_43;
    }

    v20 = 0;
    if (((0x7FFFFFFF0uLL >> v19) & 1) == 0)
    {
      goto LABEL_43;
    }

    if (*(v16 + 2) != 6)
    {
      goto LABEL_37;
    }

    v17 = isStringMDNode(*(v16 - 6), "air.mesh_type_info");
    if (v17)
    {
      v21 = &v16[-8 * *(v16 + 2)];
      v22 = *(v21 + 1);
      if (!v22)
      {
        goto LABEL_37;
      }

      v17 = 0;
      v18 = 0;
      v23 = *v22;
      if (v23 > 0x22)
      {
        goto LABEL_38;
      }

      v20 = 0;
      if ((0x7FFFFFFF0uLL >> v23))
      {
        v18 = *(v21 + 2);
        if (v18)
        {
          v17 = 0;
          v24 = *v18;
          if (v24 <= 0x22 && ((0x7FFFFFFF0uLL >> v24) & 1) != 0)
          {
            LODWORD(v246[0]) = 3;
            v17 = parseMDInt(0, v16, v246, this + 1206);
            if (v17)
            {
              LODWORD(v246[0]) = 4;
              v17 = parseMDInt(0, v16, v246, this + 1207);
              if (v17)
              {
                v17 = parseMDPrimitiveType(v16, this + 1210);
              }
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v20 = v22;
      }
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

LABEL_43:
    *(this + 1208) = (*(this + 1206) + 3) & 0xFFFFFFFC;
    v28 = *(this + 1210);
    if (v28 == 1)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    if (v28 == 2)
    {
      v30 = 3;
    }

    else
    {
      v30 = v29;
    }

    *(this + 1209) = (v30 * *(this + 1207) + 3) & 0xFFFFFFFC;
    if (v17)
    {
      v31 = *(v20 + 2);
      if (!v31)
      {
LABEL_80:
        v34 = 1;
        goto LABEL_81;
      }

      v32 = 0;
      v231 = v20;
      while (1)
      {
        v33 = *&v20[8 * v32 + -8 * v31];
        if (!v33)
        {
          break;
        }

        v34 = 0;
        v35 = *v33;
        if (v35 > 0x22 || ((0x7FFFFFFF0uLL >> v35) & 1) == 0)
        {
          goto LABEL_81;
        }

        v36 = v33 + 8;
        if (*(this + 4621) == 1)
        {
          v37 = v8;
          v38 = v18;
          v39 = v33 + 8;
          v40 = 1;
          while (1)
          {
            v41 = *v36;
            v42 = v40 >= v41;
            if (v40 >= v41)
            {
              break;
            }

            v43 = isStringMDNode(*&v39[-8 * v41], "air.shared");
            ++v40;
            v39 += 8;
            if (v43)
            {
              v42 = 0;
              break;
            }
          }

          v18 = v38;
          v8 = v37;
          v20 = v231;
        }

        else
        {
          v42 = 0;
        }

        AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v33, 0, this + 4892, this + 4900, this + 1227);
        if ((AGCLLVMUserMeshShaderSW::addGenericVarying(this, v33, 0, v42) & 1) == 0)
        {
          if (isStringMDNode(*&v33[-8 * *(v33 + 2)], "air.position"))
          {
            *(this + 4844) = 1;
            *(this + 4845) = v42;
            v44 = *v36;
            if (v44 >= 2)
            {
              v45 = 1;
              while (!isStringMDNode(*&v33[8 * v45 + -8 * v44], "air.invariant"))
              {
                ++v45;
                v44 = *v36;
                if (v45 >= v44)
                {
                  goto LABEL_63;
                }
              }

              *(this + 4744) = 1;
            }
          }

          else if (isStringMDNode(*&v33[-8 * *(v33 + 2)], "air.point_size"))
          {
            *(this + 4853) = 1;
            *(this + 4854) = v42;
          }

          else
          {
            if (!isStringMDNode(*&v33[-8 * *(v33 + 2)], "air.clip_distance"))
            {
              v34 = 0;
              goto LABEL_81;
            }

            *(this + 1212) = 1;
            *(this + 4852) = v42;
            LODWORD(v246[0]) = 1;
            if (*v36 >= 2u)
            {
              do
              {
                if (parseMDInt("air.clip_distance_array_size", v33, v246, this + 1212))
                {
                  break;
                }

                ++LODWORD(v246[0]);
              }

              while (LODWORD(v246[0]) < *v36);
            }
          }
        }

LABEL_63:
        ++v32;
        v31 = *(v20 + 2);
        if (v32 >= v31)
        {
          goto LABEL_80;
        }
      }
    }

    v34 = 0;
LABEL_81:
    if (*(this + 4845))
    {
      v46 = 1;
    }

    else
    {
      v46 = *(this + 4852);
    }

    v47 = v46 & 1;
    *(this + 4852) = v47;
    *(this + 4845) = v47;
    if (v34)
    {
      v48 = *(v18 + 2);
      if (v48)
      {
        for (i = 0; i < v48; ++i)
        {
          v50 = *&v18[8 * i + -8 * v48];
          if (!v50)
          {
            goto LABEL_109;
          }

          v51 = 0;
          v52 = *v50;
          if (v52 > 0x22 || ((0x7FFFFFFF0uLL >> v52) & 1) == 0)
          {
            goto LABEL_111;
          }

          if (*(this + 4621) == 1)
          {
            v53 = v50 + 8;
            v54 = 1;
            while (1)
            {
              v55 = *(v50 + 2);
              v56 = v54 >= v55;
              if (v54 >= v55)
              {
                break;
              }

              v57 = isStringMDNode(*&v53[-8 * v55], "air.shared");
              ++v54;
              v53 += 8;
              if (v57)
              {
                v56 = 0;
                break;
              }
            }
          }

          else
          {
            v56 = 0;
          }

          AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(v50, 1u, this + 4892, this + 4900, this + 1227);
          if ((AGCLLVMUserMeshShaderSW::addGenericVarying(this, v50, 1, v56) & 1) == 0)
          {
            if (isStringMDNode(*&v50[-8 * *(v50 + 2)], "air.render_target_array_index"))
            {
              *(this + 4855) = 1;
LABEL_104:
              *(this + 4861) |= v56;
              goto LABEL_105;
            }

            if (isStringMDNode(*&v50[-8 * *(v50 + 2)], "air.viewport_array_index"))
            {
              *(this + 4857) = 1;
              goto LABEL_104;
            }

            if (isStringMDNode(*&v50[-8 * *(v50 + 2)], "air.primitive_culled"))
            {
              *(this + 4859) = 1;
              goto LABEL_104;
            }

            if (!isStringMDNode(*&v50[-8 * *(v50 + 2)], "air.primitive_id"))
            {
              goto LABEL_109;
            }

            *(this + 4865) = 1;
            *(this + 4866) = v56;
          }

LABEL_105:
          v48 = *(v18 + 2);
        }
      }

      v51 = 1;
    }

    else
    {
LABEL_109:
      v51 = 0;
    }

LABEL_111:
    v58 = *(this + 4621);
    v232 = v51;
    if (v58)
    {
      if ((*(this + 4855) & 1) == 0)
      {
        *(this + 4862) = 1;
      }

      if ((*(this + 4857) & 1) == 0)
      {
        *(this + 4863) = 1;
      }

      v59 = 1;
      *(this + 4861) = 1;
      *(this + 4857) = 1;
      *(this + 4855) = 1;
    }

    else
    {
      v59 = *(this + 4861);
    }

    v60 = 0;
    v253 = *(this + 4866);
    v246[0] = "agc.per_prim.primitive_address";
    v246[1] = 0xFFFFFFFE00000000;
    v247 = 0;
    v248[0] = this + 4867;
    v248[1] = "agc.per_prim.primitive_address_2";
    v248[2] = 0xFFFFFFFD00000000;
    v249 = 0;
    v250 = this + 4867;
    v251 = "agc.per_prim.primitive_id";
    v252 = 0xFFFFFFFF00000001;
    v254 = this + 4864;
    v255 = "air.render_target_array_index";
    v256 = 0xFFFFFFFB00000001;
    v257 = v59;
    v258 = this + 4856;
    v259 = "air.viewport_array_index";
    v260 = 0xFFFFFFFC00000001;
    v261 = v59;
    v262 = this + 4858;
    v263 = "air.amplification_id";
    v264 = 0xFFFFFFFA00000000;
    v265 = v58;
    v266 = this + 4782;
    v267 = "air.amplification_count";
    v268 = 0xFFFFFFF900000001;
    v269 = 0;
    v270 = this + 4780;
    do
    {
      v61 = v246[v60];
      v62 = v246[v60 + 1];
      v63 = HIDWORD(v246[v60 + 1]);
      v64 = LOBYTE(v246[v60 + 2]);
      if (v61)
      {
        v65 = strlen(v246[v60]);
      }

      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == *(this + 1200))
      {
        v67 = 0;
      }

      else
      {
        v68 = *(*(this + 599) + 8 * Key);
        v69 = *(v68 + 2);
        llvm::StringMapImpl::RemoveKey();
        llvm::deallocate_buffer(v68, (*v68 + 17));
        if (v63 >= 0xFFFFFFF9)
        {
          v70 = ~v63;
        }

        else
        {
          v70 = ((v62 != 0) | (2 * v63)) + 7;
        }

        GenericVarying::GenericVarying(&__dst, HIBYTE(v69) & 0x7F, BYTE2(v69), v69 & 0xF, BYTE1(v69), v70, v64);
        MEMORY[0x20F331AA0](&v272[8], v61);
        GenericVaryingAllocator::addVarying(this + 4920, &__dst);
        if ((v272[31] & 0x80000000) != 0)
        {
          operator delete(*&v272[8]);
        }

        v67 = 1;
      }

      *v248[v60] = v67;
      v60 += 4;
    }

    while (v60 != 28);
    if (*(this + 4855))
    {
      v71 = 1;
    }

    else if (*(this + 4857))
    {
      v71 = 1;
    }

    else
    {
      v71 = *(this + 4859);
    }

    v72 = v71 & 1;
    *(this + 4860) = v72;
    *(this + 4783) = v72;
    if (*(this + 4784) == 1)
    {
      v73 = *(this + 618);
      v74 = *(this + 1238);
      if (v74 >= 2)
      {
        v75 = v74 << 6;
        v76 = v73 + 64;
        v77 = v75 - 64;
        do
        {
          if (*(v73 + 16) < *(v76 + 16))
          {
            v73 = v76;
          }

          v76 += 64;
          v77 -= 64;
        }

        while (v77);
      }

      v78 = *(this + 1200);
      if (v78)
      {
          ;
        }
      }

      else
      {
        j = *(this + 599);
      }

      v81 = *(this + 599) + 8 * v78;
      if (j != v81)
      {
        v82 = *(v73 + 16);
        v83 = *j;
        while (1)
        {
          v84 = *(v83 + 8);
          v85 = v84 & 0xF;
          LODWORD(__dst) = HIBYTE(v84) & 0x7F;
          DWORD1(__dst) = BYTE2(v84);
          ++v82;
          DWORD2(__dst) = v85;
          HIDWORD(__dst) = BYTE1(v84);
          *v272 = v82;
          memset(&v272[8], 0, 32);
          v273 = BYTE2(v84) == 1;
          v274 = 0;
          if (DWORD2(__dst) <= 1)
          {
            break;
          }

          switch(v85)
          {
            case 2:
              v87 = BYTE2(v84) == 1;
              v86 = 3;
              v88 = 7;
              goto LABEL_163;
            case 3:
              if (BYTE2(v84) == 1)
              {
                v86 = 19;
              }

              else
              {
                v86 = 18;
              }

              goto LABEL_172;
            case 5:
              if (BYTE2(v84) == 1)
              {
                v86 = 8;
              }

              else
              {
                v86 = 4;
              }

LABEL_172:
              v275 = v86;
              break;
          }

          MEMORY[0x20F331AA0](&v272[8], v83 + 16);
          GenericVaryingAllocator::addVarying(this + 4920, &__dst);
          if ((v272[31] & 0x80000000) != 0)
          {
            operator delete(*&v272[8]);
          }

          do
          {
            v89 = j[1];
            ++j;
            v83 = v89;
            if (v89)
            {
              v90 = v83 == -8;
            }

            else
            {
              v90 = 1;
            }
          }

          while (v90);
          if (j == v81)
          {
            goto LABEL_180;
          }
        }

        if ((v84 & 0xF) == 0)
        {
          if (BYTE2(v84) == 1)
          {
            v86 = 5;
          }

          else
          {
            v86 = 1;
          }

          goto LABEL_172;
        }

        v87 = BYTE2(v84) == 1;
        v86 = 2;
        v88 = 6;
LABEL_163:
        if (v87)
        {
          v86 = v88;
        }

        goto LABEL_172;
      }

LABEL_180:
      llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 1198);
    }

    if (*(this + 1201))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*&v236[*(*this - 24)]))
      {
        AGCTargetPrinter::printMessage(*&v236[*(*this - 24)], "Following fragment input(s) mismatching mesh shader output type(s) or not written by mesh shader: ");
      }

      v91 = *(this + 1200);
      if (v91)
      {
          ;
        }
      }

      else
      {
        k = *(this + 599);
      }

      v94 = *(this + 599) + 8 * v91;
      while (k != v94)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*&v236[*(*this - 24)]))
        {
          v95 = *&v236[*(*this - 24)];
          std::string::basic_string[abi:nn200100](&__dst, (*k + 16), **k);
          p_dst = &__dst;
          if (v272[7] < 0)
          {
            p_dst = __dst;
          }

          AGCTargetPrinter::printMessage(v95, "\t%s", p_dst);
          if ((v272[7] & 0x80000000) != 0)
          {
            operator delete(__dst);
          }
        }

        do
        {
          v98 = *(k + 8);
          k += 8;
          v97 = v98;
          if (v98)
          {
            v99 = v97 == -8;
          }

          else
          {
            v99 = 1;
          }
        }

        while (v99);
      }

      v100 = *(this + 1200);
      if (v100)
      {
          ;
        }
      }

      else
      {
        m = *(this + 599);
      }

      v103 = *(this + 599) + 8 * v100;
      if (m != v103)
      {
        v104 = &unk_20E75F419;
        do
        {
          std::string::append(&v233[*(*this - 24)], v104);
          std::string::basic_string[abi:nn200100](__p, (*m + 16), **m);
          attribute_name(&__dst, __p);
          if (v272[7] >= 0)
          {
            v105 = &__dst;
          }

          else
          {
            v105 = __dst;
          }

          if (v272[7] >= 0)
          {
            v106 = v272[7];
          }

          else
          {
            v106 = *(&__dst + 1);
          }

          std::string::append(&v233[*(*this - 24)], v105, v106);
          if ((v272[7] & 0x80000000) != 0)
          {
            operator delete(__dst);
          }

          if (SBYTE3(v243) < 0)
          {
            operator delete(*__p);
          }

          do
          {
            v108 = *(m + 8);
            m += 8;
            v107 = v108;
            if (v108)
            {
              v109 = v107 == -8;
            }

            else
            {
              v109 = 1;
            }
          }

          while (v109);
          v104 = ",";
        }

        while (m != v103);
      }

      v232 = 0;
    }

    GenericVaryingAllocator::allocate((this + 4920), *(this + *(*this - 24) + 2168));
    if (v232)
    {
      bzero(v8, 0x4E0uLL);
      v244 = 0;
      v243 = 0u;
      *&__p[4] = 0u;
      v110 = *(this + 1207);
      *__p = 4 * v110;
      *&__p[4] = *(this + 2430);
      v111 = *(this + 1208);
      *&__p[8] = 23;
      *&__p[12] = 16 * v111;
      __p[16] = 1;
      __p[17] = *(this + 4845);
      DWORD1(v243) = 4 * v111;
      BYTE8(v243) = *(this + 4853);
      BYTE9(v243) = __p[17];
      v112 = *(this + 1212);
      HIDWORD(v243) = 22;
      v244 = (4 * v111 * v112);
      HIDWORD(v244) = v112 != 0;
      BYTE5(v244) = *(this + 4852);
      v245 = 25;
      if (*(this + 4621) == 1)
      {
        AGCLLVMUserObjectShaderBase::getVertexAmpId(this);
        v110 = *(this + 1207);
        v113 = *(this + 4621);
      }

      else
      {
        v113 = 0;
      }

      v114 = *(this + 1210);
      if (v114 == 1)
      {
        v115 = 2;
      }

      else
      {
        v115 = 1;
      }

      if (v114 == 2)
      {
        v116 = 3;
      }

      else
      {
        v116 = v115;
      }

      v117 = (v116 * v110 + 15) & 0xFFFFFFF0;
      *(this + 1228) = v117;
      v118 = v117 + 16;
      if (v113)
      {
        *(this + 1408) = v118;
        v118 += (4 * *(this + 1194) + 15) & 0xFFFFFFF0;
      }

      for (n = 0; n != 48; n += 12)
      {
        if ((__p[n + 5] & 1) == 0 && __p[n + 4] == 1)
        {
          v120 = *&__p[n];
          v121 = *&__p[n + 8];
          if (v121 != 26)
          {
            v122 = *&v239[*(*this - 24)];
            v123 = llvm::ConstantInt::get();
            v124 = &v8[48 * v121];
            *v124 = v123;
            v124[12] = 0;
          }

          v118 += (v120 + 15) & 0xFFFFFFF0;
        }
      }

      v125 = &dword_20E70CC9C;
      v126 = 96;
      do
      {
        v127 = *(this + 1208);
        v128 = *(v125 - 1);
        v129 = &v238[4 * v128];
        if ((*(this + 5480) & *(v125 - 2)) == 1)
        {
          v130 = (*v129 + 1) >> 1;
        }

        else
        {
          v131 = &v235[4 * v128];
          if (*(v125 - 8))
          {
            v132 = v129;
          }

          else
          {
            v132 = v131;
          }

          v130 = *v132;
        }

        v133 = *v125;
        if (*v125 != 26)
        {
          v134 = *&v239[*(*this - 24)];
          v135 = llvm::ConstantInt::get();
          v136 = &v8[48 * v133];
          *v136 = v135;
          v136[12] = 0;
        }

        v118 += (4 * v127 * v130 + 15) & 0xFFFFFFF0;
        v125 += 4;
        v126 -= 16;
      }

      while (v126);
      v137 = 0;
      *(this + 1217) = v118;
      do
      {
        if (__p[v126 + 5] && __p[v126 + 4] == 1)
        {
          v138 = *&__p[v126];
          v139 = *&__p[v126 + 8];
          if (v139 != 26)
          {
            v140 = (*(this + 1217) + v137);
            v141 = *&v239[*(*this - 24)];
            v142 = llvm::ConstantInt::get();
            v143 = &v8[48 * v139];
            *v143 = v142;
            v143[12] = 1;
          }

          v137 += (v138 + 15) & 0xFFFFFFF0;
        }

        v126 += 12;
      }

      while (v126 != 48);
      v144 = &byte_20E70CC94;
      v145 = 96;
      do
      {
        v146 = *(this + 1208);
        v147 = *(v144 + 1);
        v148 = &v237[4 * v147];
        if ((*(this + 5480) & *v144) == 1)
        {
          v149 = (*v148 + 1) >> 1;
        }

        else
        {
          v150 = &v234[4 * v147];
          if (*v144)
          {
            v151 = v148;
          }

          else
          {
            v151 = v150;
          }

          v149 = *v151;
        }

        v152 = *(v144 + 3);
        if (v152 != 26)
        {
          v153 = (*(this + 1217) + v137);
          v154 = *&v239[*(*this - 24)];
          v155 = llvm::ConstantInt::get();
          v156 = &v8[48 * v152];
          *v156 = v155;
          v156[12] = 1;
        }

        v137 += (4 * v146 * v149 + 15) & 0xFFFFFFF0;
        v144 += 16;
        v145 -= 16;
      }

      while (v145);
      v157 = 0;
      *(this + 1219) = v137;
      v158 = &dword_20E70CCFC;
      v159 = 32;
      do
      {
        v160 = *(v158 - 1);
        v161 = &v238[4 * v160];
        if ((*(this + 5480) & *(v158 - 2)) == 1)
        {
          v162 = (*v161 + 1) >> 1;
        }

        else
        {
          v163 = &v235[4 * v160];
          if (*(v158 - 8))
          {
            v164 = v161;
          }

          else
          {
            v164 = v163;
          }

          v162 = *v164;
        }

        v165 = *v158;
        if (*v158 != 26)
        {
          v166 = *&v239[*(*this - 24)];
          v167 = llvm::ConstantInt::get();
          v168 = &v8[48 * v165];
          *v168 = v167;
          v168[12] = 0;
        }

        v157 += 4 * v162;
        v158 += 4;
        v159 -= 16;
      }

      while (v159);
      v169 = 0;
      *(this + 1218) = v157;
      v170 = &byte_20E70CCF4;
      v171 = 32;
      do
      {
        v172 = *(v170 + 1);
        v173 = &v237[4 * v172];
        if ((*(this + 5480) & *v170) == 1)
        {
          v174 = (*v173 + 1) >> 1;
        }

        else
        {
          v175 = &v234[4 * v172];
          if (*v170)
          {
            v176 = v173;
          }

          else
          {
            v176 = v175;
          }

          v174 = *v176;
        }

        v177 = *(v170 + 3);
        if (v177 != 26)
        {
          v178 = (*(this + 1218) + v169);
          v179 = *&v239[*(*this - 24)];
          v180 = llvm::ConstantInt::get();
          v181 = &v8[48 * v177];
          *v181 = v180;
          v181[12] = 1;
        }

        v169 += 4 * v174;
        v170 += 16;
        v171 -= 16;
      }

      while (v171);
      *(this + 1220) = v169;
      *(this + 1414) = 4;
      v182 = *(this + 5480);
      *(this + 1426) = *(this + 1378);
      *(this + 1438) = *(this + 1379);
      *(this + 1450) = *(this + 1380);
      *(this + 1630) = *(this + 1381);
      v183 = *(this + 1384);
      if (v182 == 1)
      {
        v183 = (v183 + 1) >> 1;
        v184 = vshr_n_u32(vadd_s32(*v225, 0x100000001), 1uLL);
      }

      else
      {
        v184 = *v225;
      }

      *(this + 1474) = v183;
      *(this + 1498) = v184.i32[1];
      *(this + 1486) = v184.i32[0];
      *(this + 1642) = *(this + 1387);
      *(this + 1534) = *(this + 1390);
      *(this + 1546) = *(this + 1391);
      *(this + 1558) = *(this + 1392);
      *(this + 1654) = *(this + 1393);
      v185 = *(this + 1396);
      if (v182)
      {
        v185 = (v185 + 1) >> 1;
        v186 = (*(this + 1397) + 1) >> 1;
        v187 = vshr_n_u32(vadd_s32(*(this + 5592), 0x100000001), 1uLL);
      }

      else
      {
        v186 = *(this + 1397);
        v187 = *(this + 5592);
      }

      *(this + 1582) = v185;
      *(this + 1594) = v186;
      *(this + 1606) = v187.i32[0];
      *(this + 1666) = v187.i32[1];
      *(this + 1678) = *(this + 4853);
      *(this + 1690) = *(this + 4860);
      *(this + 1702) = 0;
      *(this + 1714) = *(this + 1212);
      __dst = xmmword_20E70CD14;
      *v272 = unk_20E70CD24;
      *&v272[16] = xmmword_20E70CD34;
      *&v272[32] = 0x1900000016;
      std::vector<UVSWriteType>::vector[abi:nn200100](&v240, &__dst, 0xEuLL);
      *(this + 1412) = 0;
      v188 = v240;
      v189 = v241;
      if (v240 != v241)
      {
        v190 = 0;
        v191 = v240;
        do
        {
          v192 = &v8[48 * v190];
          v193 = *(v192 + 4);
          if (v193 && v192[12] == 1)
          {
            v194 = v193 << 16;
          }

          else
          {
            v194 = *(v192 + 4);
          }

          v195 = *v191++;
          v190 = v195;
          *&v8[48 * v195 + 8] = (*(v192 + 4) + v194) | ((*(v192 + 5) + HIWORD(v194)) << 16);
        }

        while (v191 != v189);
      }

      if (v188)
      {
        v241 = v188;
        operator delete(v188);
      }
    }

    v196 = 0;
    v197 = -6;
    v198 = (this + 5536);
    do
    {
      if ((v197 + 6) <= 5 && ((1 << (v197 + 6)) & 0x27) != 0)
      {
        v199 = *(v198 - 6) + v196;
        v200 = v199 + *v198;
        v196 = v199 + ((*v198 + 1) >> 1);
        if (*(this + 5480) != 1)
        {
          v196 = v200;
        }
      }

      ++v198;
      v201 = __CFADD__(v197++, 1);
    }

    while (!v201);
    v202 = 0;
    *v226 = v196;
    v203 = -6;
    v204 = (this + 5584);
    do
    {
      if ((v203 + 6) <= 5 && ((1 << (v203 + 6)) & 0x27) != 0)
      {
        v205 = *(v204 - 6) + v202;
        v206 = v205 + *v204;
        v202 = v205 + ((*v204 + 1) >> 1);
        if (*(this + 5480) != 1)
        {
          v202 = v206;
        }
      }

      ++v204;
      v201 = __CFADD__(v203++, 1);
    }

    while (!v201);
    *(this + 1222) = v202;
    v226[*(this + 4845)] += 4;
    v226[*(this + 4854)] += *(this + 4853);
    v226[*(this + 4852)] += *(this + 1212);
    if (*(this + 4857))
    {
      v207 = 1;
    }

    else
    {
      v207 = *(this + 4855);
    }

    v226[*(this + 4861)] += v207;
    v11 = v232;
    if (v232)
    {
      v208 = this + *(*this - 24);
      v209 = *(v208 + 239);
      Cast = llvm::ConstantInt::get();
      v211 = *v229;
      *&v272[16] = 257;
      v212 = *Cast;
      if (*Cast != v211)
      {
        v213 = *(v212 + 8);
        v214 = v213;
        if ((*(v212 + 8) & 0xFE) == 0x12)
        {
          v214 = *(**(v212 + 16) + 8);
        }

        if (v214 == 15 && ((*(v211 + 8) & 0xFE) != 0x12 ? (v215 = *(v211 + 8)) : (v215 = *(**(v211 + 16) + 8)), v215 == 13))
        {
          v216 = (v208 + 1712);
          v217 = 47;
        }

        else
        {
          if ((*(v212 + 8) & 0xFE) == 0x12)
          {
            v213 = *(**(v212 + 16) + 8);
          }

          if (v213 == 13 && ((*(v211 + 8) & 0xFE) != 0x12 ? (v218 = *(v211 + 8)) : (v218 = *(**(v211 + 16) + 8)), v218 == 15))
          {
            v216 = (v208 + 1712);
            v217 = 48;
          }

          else
          {
            v216 = (v208 + 1712);
            v217 = 49;
          }
        }

        Cast = llvm::IRBuilderBase::CreateCast(v216, v217, Cast, v211, &__dst);
      }

      llvm::Value::replaceAllUsesWith();
      llvm::ValueHandleBase::operator=((this + 4752), Cast);
      v11 = v232;
    }

    if (*(this + 4621) == 1)
    {
      v219 = *(this + *(*this - 24) + 2136);
      llvm::Module::getOrInsertNamedMetadata();
      v220 = *(this + *(*this - 24) + 1776);
      v221 = llvm::MDString::get();
      v222 = *(this + *(*this - 24) + 2160);
      *&__dst = v221;
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      v11 = v232;
    }

    v5 = v229;
LABEL_354:
    if (!v11)
    {
      break;
    }

    v5 += 5;
  }

  while (v5 != v230);
  if (v11)
  {
    goto LABEL_359;
  }

  result = 0;
LABEL_361:
  v224 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserMeshShaderSW::addGenericVarying(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 - 8 * *(a2 + 8));
  if (a3)
  {
    v9 = "air.primitive_data";
  }

  else
  {
    v9 = "air.vertex_data";
  }

  if (isStringMDNode(v8, v9))
  {
    v30 = 0;
  }

  else
  {
    v10 = *(a2 - 8 * *(a2 + 8));
    if (a3)
    {
      v11 = "air.mesh_primitive_data";
    }

    else
    {
      v11 = "air.mesh_vertex_data";
    }

    v30 = 0;
    if (!isStringMDNode(v10, v11))
    {
      return 0;
    }
  }

  v27[0] = 1;
  if (!parseMDInt(0, a2, v27, &v30))
  {
    return 0;
  }

  v12 = *(a2 - 8 * *(a2 + 8) + 16);
  if (!v12 || *v12)
  {
    return 0;
  }

  llvm::MDString::getString(v12);
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1 || Key == *(a1 + 4800))
  {
    return 1;
  }

  v16 = *(*(a1 + 4792) + 8 * Key);
  v17 = *(v16 + 2);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v16, (*v16 + 17));
  v18 = v17 & 0xF;
  v13 = !a3 && v18 != 3 || a3 == 1 && v18 == 3;
  if (a3)
  {
    v20 = 8;
  }

  else
  {
    v20 = 7;
  }

  v21 = v20 + 2 * v30;
  if (v30 > 0xFFFFFFF8)
  {
    v22 = ~v30;
  }

  else
  {
    v22 = v21;
  }

  GenericVarying::GenericVarying(v27, HIBYTE(v17) & 0x7F, BYTE2(v17), v18, BYTE1(v17), v22, a4);
  String = llvm::MDString::getString(v12);
  if (String)
  {
    std::string::basic_string[abi:nn200100](&v25, String, v24);
  }

  else
  {
    v25 = 0uLL;
    v26 = 0;
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  __p = v25;
  v29 = v26;
  GenericVaryingAllocator::addVarying(a1 + 4920, v27);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  return v13;
}

uint64_t AGCLLVMUserMeshShaderSW::wrapperPrefixData(AGCLLVMUserMeshShaderSW *this)
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

uint64_t AGCLLVMUserMeshShaderSW::addWrapperPrefix(int8x8_t *this)
{
  v19[2] = *MEMORY[0x277D85DE8];
  AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 1, 1);
  GridProperties = AGCLLVMUserMeshShaderSW::getGridProperties(this);
  if ((*(*&this[592] + 17) & 1) == 0)
  {
    v3 = this + *(*this - 24);
    v4 = *(v3 + 220);
    v5 = *(v3 + 222);
    v17[0] = "bounds_check_failed";
    v18 = 259;
    v6 = *(v4 + 56);
    operator new();
  }

  v7 = this + *(*this - 24);
  LODWORD(v19[0]) = 0;
  v18 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((v7 + 1712), GridProperties, v19, 1, v17);
  v19[0] = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 3, 0);
  v19[1] = Value;
  v9 = this + *(*this - 24);
  v10 = *(v9 + 231);
  v11 = *(v9 + 238);
  v12 = llvm::PointerType::get();
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v9 + 1704), "air.gpe.emit_nop_token", 22, v10, v12, *(&this[238] + *(*this - 24)));
  v14 = this + *(*this - 24);
  v18 = 257;
  llvm::IRBuilderBase::CreateCall((v14 + 1712), *(v13 + 24), v13, v19, 2, v17);
  AGCLLVMTargetBuilder::CreateBarrier((&this[213] + *(*this - 24)));
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

void AGCLLVMUserMeshShaderSW::addInitCompilePass(AGCLLVMUserMeshShaderSW *this)
{
  v2 = this + *(*this - 24);
  v4 = &AGCUserObjectTemplateWrapper<AGCLLVMUserMeshShaderSW>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v2 + 1584), &v4)[1])
  {
    operator new();
  }

  v3 = this + *(*this - 24);
  operator new();
}

char *llvm::PassInfoMixin<InitCompileUserMeshShaderSWPass>::name()
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

  v2 = &aStringrefLlvmG_11[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserMeshShaderSWPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserMeshShaderSWPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGMeshSWShaderPass>::name()
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

  v2 = &aStringrefLlvmG_10[v1];
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