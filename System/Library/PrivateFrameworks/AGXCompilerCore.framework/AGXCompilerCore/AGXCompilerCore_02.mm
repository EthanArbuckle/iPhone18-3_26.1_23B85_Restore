uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (*result + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 8);
  return result;
}

void AGCLLVMGen3TargetLowerer::setupLIBRasterOrderGroupFromSpans(uint64_t a1, uint64_t a2, int a3)
{
  v29[16] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2576) & 1) == 0 && *(a2 + 8))
  {
    v28[0] = v29;
    v28[1] = 0x1000000000;
    v6 = *(a1 + 72);
    v7 = llvm::MDString::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v7);
    if (*(a2 + 8))
    {
      v8 = 0;
      v9 = 0;
      if ((a3 & 0xFFFFFFFE) == 6)
      {
        v10 = &AGCLLVMGen3TargetLowerer::overlapROGSchemePRIDS;
      }

      else
      {
        v10 = &AGCLLVMGen3TargetLowerer::PRIDS;
      }

      do
      {
        v11 = *(*a2 + v8);
        v12 = *(a1 + 200);
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        v13 = *(*a2 + v8 + 4);
        v14 = *(a1 + 200);
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        v15 = *(a1 + 72);
        llvm::MDString::get();
        if (a3 == 5)
        {
          v16 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS;
        }

        else
        {
          v16 = v10;
        }

        if (a3 == 4)
        {
          v16 = &AGCLLVMGen3TargetLowerer::statelessPRIDS;
        }

        v17 = v16[2 * *(*a2 + v8 + 8)];
        v18 = *(a1 + 200);
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        v19 = *(a1 + 72);
        llvm::MDString::get();
        if (a3 == 5)
        {
          v20 = &AGCLLVMGen3TargetLowerer::oneROGPerPRIDPRIDS;
        }

        else
        {
          v20 = v10;
        }

        if (a3 == 4)
        {
          v20 = &AGCLLVMGen3TargetLowerer::statelessPRIDS;
        }

        v21 = v20[2 * *(*a2 + v8 + 8) + 1];
        v22 = *(a1 + 200);
        llvm::ConstantInt::get();
        llvm::ValueAsMetadata::get();
        v23 = *(a1 + 72);
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, Impl);
        ++v9;
        v8 += 12;
      }

      while (v9 < *(a2 + 8));
    }

    v25 = *(a1 + 432);
    llvm::Module::getOrInsertNamedMetadata();
    v26 = *(a1 + 72);
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    if (v28[0] != v29)
    {
      free(v28[0]);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

char *llvm::PassInfoMixin<SimdMatrixPass>::name()
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

  v2 = &aStringrefLlvmG_78[v1];
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

void SimdMatrixPass::run()
{
  MEMORY[0x28223BE20]();
  v0 = *MEMORY[0x277D85DE8];
  llvm::AnalysisManager<llvm::Module>::getResultImpl();
}

uint64_t llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          if (*(v5 + 39) < 0)
          {
            operator delete(*(v5 + 2));
          }

          llvm::deallocate_buffer(v5, (v7 + 57));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

char *llvm::detail::PassModel<llvm::Module,llvm::ModuleToFunctionPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::name()
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

  v2 = &aStringrefLlvmG_56[v1];
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

char *llvm::PassInfoMixin<NumericPackUnpackPass>::name()
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

  v2 = &aStringrefLlvmG_79[v1];
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

uint64_t llvm::OuterAnalysisManagerProxy<llvm::AnalysisManager<llvm::Module>,llvm::Function>::Result::getCachedResult<AGCUserObjectWrapper,llvm::Module>(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>,std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>::find(v2, v3, &AGCUserObjectWrapper::Key, a2);
  if ((v2 + 24 * v3) == v4 || (v5 = *(v4[2] + 24)) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + 8;
    v11 = 0;
    v10 = 0u;
    v12[0] = 1;
    for (i = 2; i != 34; i += 4)
    {
      *&v12[i] = -4096;
    }

    if ((v12[0] & 1) == 0)
    {
      llvm::deallocate_buffer(v13, 0);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>,std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>,llvm::DenseMapInfo<std::pair<llvm::AnalysisKey *,llvm::Module *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::AnalysisKey *,llvm::Module *>,std::__list_iterator<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>,void *>>>::find(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return (a1 + 24 * a2);
  }

  v4 = ((a4 >> 4) ^ (a4 >> 9) | (((a3 >> 4) ^ (a3 >> 9)) << 32)) + ~(((a4 >> 4) ^ (a4 >> 9)) << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = a2 - 1;
  v8 = (a2 - 1) & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v9 = (a1 + 24 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (*v9 != a3 || v10 != a4)
  {
    v13 = 1;
    while (v11 != -4096 || v10 != -4096)
    {
      v14 = v8 + v13++;
      v8 = v14 & v7;
      v9 = (a1 + 24 * (v14 & v7));
      v11 = *v9;
      v10 = v9[1];
      if (*v9 == a3 && v10 == a4)
      {
        return v9;
      }
    }

    return (a1 + 24 * a2);
  }

  return v9;
}

uint64_t llvm::StringRef::compare(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (v6)
  {
    v7 = memcmp(a1, __s2, v6);
    if (v7)
    {
      return (v7 >> 31) | 1u;
    }
  }

  if (a4 > a2)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (a4 == a2)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t *_ZNSt3__16__treeINS_12__value_typeIN4llvm9StringRefEZN21NumericPackUnpackPass3runERNS2_8FunctionERNS2_15AnalysisManagerIS5_JEEEE17QuantizedTypeInfoEENS_19__map_value_compareIS3_SB_NS_4lessIS3_EELb1EEENS_9allocatorISB_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISN_EERKT_(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    v8 = *a3;
    do
    {
      while (1)
      {
        v9 = v4;
        if (llvm::StringRef::compare(v8, v7, v4[4], v4[5]) != -1)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      v10 = *(v9 + 2);
      if (llvm::StringRef::compare(v9[4], v9[5], v8, v7) != -1)
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

LABEL_10:
  *a2 = v9;
  return v5;
}

void *std::vector<unsigned int>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

char *llvm::PassInfoMixin<LoadStoreCacheControlPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4B)
  {
    v1 = v0;
  }

  else
  {
    v1 = 75;
  }

  v2 = &aStringrefLlvmG_80[v1];
  v3 = 75 - v1;
  if ((75 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 75 - v1;
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

void llvm::detail::PassModel<llvm::Function,LoadStoreCacheControlPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::run(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = v37;
  v36 = 0x400000000;
  v26 = a2 + 72;
  v2 = *(a2 + 80);
  if (v2 != a2 + 72)
  {
    do
    {
      v3 = v2 - 24;
      v27 = v2;
      if (!v2)
      {
        v3 = 0;
      }

      v4 = *(v3 + 48);
      for (i = v3 + 40; v4 != i; v4 = *(v4 + 8))
      {
        v5 = v4 - 24;
        if (!v4)
        {
          v5 = 0;
        }

        v6 = *(v5 + 16);
        if (v6 == 84)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        if (v4 && v6 == 84)
        {
          v8 = *(v5 - 32);
          if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v5 + 72))
          {
            v8 = 0;
          }

          for (j = 0; j != 6; ++j)
          {
            if (v8)
            {
              Name = llvm::Value::getName(v8);
              v12 = v11;
              v13 = strlen(off_277E221D0[j]);
              if (v12 >= v13 && (!v13 || !memcmp(Name, off_277E221D0[j], v13)))
              {
                v37[20] = llvm::Value::getName(v8);
                v37[21] = v14;
                llvm::StringRef::split();
                *&v39[8] = 0;
                *&v39[16] = 0;
                *&v38 = v7;
                if (v32 == 20)
                {
                  v17 = bswap64(*v31);
                  v18 = 0x7468726561646772;
                  if (v17 == 0x7468726561646772 && (v17 = bswap64(*(v31 + 8)), v18 = 0x6F75705F636F6865, v17 == 0x6F75705F636F6865) && (v17 = bswap32(*(v31 + 16)), v18 = 1919250036, v17 == 1919250036))
                  {
                    v19 = 0;
                  }

                  else if (v17 < v18)
                  {
                    v19 = -1;
                  }

                  else
                  {
                    v19 = 1;
                  }

                  if (v19)
                  {
                    v16 = 4;
                  }

                  else
                  {
                    v16 = 1;
                  }
                }

                else if (v32 == 15)
                {
                  if (*v31 == 0x635F656369766564 && *(v31 + 7) == 0x746E657265686F63)
                  {
                    v16 = 2;
                  }

                  else if (*v31 ^ 0x635F6D6574737973 | *(v31 + 7) ^ 0x746E657265686F63)
                  {
                    v16 = 4;
                  }

                  else
                  {
                    v16 = 3;
                  }
                }

                else
                {
                  v16 = 4;
                }

                HIDWORD(v38) = v16;
                v20 = v30 == 4 && *v29 == 1684107116;
                BYTE8(v38) = v20;
                v39[0] = llvm::StringRef::find() != -1;
                v21 = llvm::StringRef::find();
                v39[1] = v21 != -1;
                if ((v39[0] & 1) != 0 || v21 != -1)
                {
                  if (!v39[0] || v21 == -1)
                  {
                    v22 = &v34;
                  }

                  else
                  {
                    v22 = &v35;
                  }
                }

                else
                {
                  v22 = &v33;
                }

                *&v39[8] = *v22;
                if (v36 >= HIDWORD(v36))
                {
                  if (v35 <= &v38 && v35 + 40 * v36 > &v38)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v23 = v35 + 40 * v36;
                v24 = v38;
                v25 = *v39;
                *(v23 + 4) = *&v39[16];
                *v23 = v24;
                *(v23 + 1) = v25;
                LODWORD(v36) = v36 + 1;
              }
            }
          }
        }
      }

      v2 = *(v27 + 8);
    }

    while (v2 != v26);
  }

  llvm::AnalysisManager<llvm::Function>::getResultImpl();
}

char *llvm::PassInfoMixin<TranslatorLegacyPass>::name()
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

  v2 = &aStringrefLlvmG_82[v1];
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

uint64_t AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v48[3] = *MEMORY[0x277D85DE8];
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

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    v6 = "air.amplification_id";
    do
    {
      v7 = *(*(this + 10) + 8 * *(v3 + 32));
      if (*(v3 + 8))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        goto LABEL_43;
      }

      v9 = v6;
      v10 = *v3;
      v36 = llvm::UndefValue::get();
      v11 = *(*(this + 21) + 80);
      if (v11)
      {
        v12 = v11 - 24;
      }

      else
      {
        v12 = 0;
      }

      v13 = *this;
      v14 = *(v12 + 40);
      if (v14)
      {
        v15 = (v14 - 24);
      }

      else
      {
        v15 = 0;
      }

      AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v15, *(this + 5));
      v17 = *(v10 + 8);
      if (v17 == 16)
      {
        if (isStringMDNode(*(v7 - 8 * *(v7 + 8) + 8), "air.imageblock_data"))
        {
          if (*(this + 1136) <= 0)
          {
            *(this + 1136) = 1;
          }

          v46 = v48;
          v47 = 0x500000000;
          v18 = this + *(*this - 24);
          v33 = *(v18 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (v18 + 1712));
          v35 = *(v18 + 452);
          v19 = *(this + 21);
          v37[0] = &v38;
          v37[1] = 0x100000000;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v45 = 0;
          v44[0] = 0;
          v42 = 0;
          v43 = v19;
          llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>();
        }
      }

      else if (v17 == 15)
      {
        if ((v17 & 0xFE) == 0x12)
        {
          v17 = *(**(v10 + 16) + 8);
        }

        if ((v17 & 0xFFFFFF00) == 0x400 && *(**(v10 + 16) + 8) == 16)
        {
          llvm::Constant::getNullValue(v10, v16);
          llvm::Value::replaceAllUsesWith();
          goto LABEL_42;
        }
      }

      if (isStringMDNode(*(v7 - 8 * *(v7 + 8) + 8), v6))
      {
        AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(v37, this, v10, v6, 0x14uLL);
        v36 = AGCLLVMUserFragmentShader::replaceInterpolation(this, v37);
        llvm::Value::replaceAllUsesWith();
        llvm::ValueHandleBase::operator=((this + 7872), v36);
        *(this + 6460) = 1;
        if (v42 != v44)
        {
          free(v42);
        }

        goto LABEL_43;
      }

      if (isStringMDNode(*(v7 - 8 * *(v7 + 8) + 8), "air.amplification_count"))
      {
        AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(v37, this, v10, "air.amplification_count", 0x17uLL);
        v36 = AGCLLVMUserFragmentShader::replaceInterpolation(this, v37);
        llvm::Value::replaceAllUsesWith();
        *(this + 6461) = 1;
        if (v42 != v44)
        {
          free(v42);
        }
      }

      else
      {
        if (*(this + 7860) != 1 || !isStringMDNode(*(v7 - 8 * *(v7 + 8) + 8), "air.render_target_array_index"))
        {
          goto LABEL_43;
        }

        v20 = this + *(*this - 24);
        v21 = *(v20 + 271);
        if (v21[1861])
        {
          v22 = *v3;
          v32 = (*(*v21 + 688))(v21);
          v23 = this + *(*this - 24);
          *v37 = *(v23 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (v23 + 1712));
          LODWORD(v39) = *(v23 + 452);
          Cast = AGCLLVMGen3TargetLowerer::buildLayerId(v32, v37, v22);
          if (v38)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        else
        {
          v25 = *(v20 + 238);
          v26 = llvm::ConstantInt::get();
          v27 = *v3;
          LOWORD(v40) = 257;
          Cast = llvm::IRBuilderBase::CreateCast((v20 + 1712), 38, v26, v27, v37);
        }

        v36 = Cast;
        llvm::Value::replaceAllUsesWith();
        *(this + 6459) = 1;
      }

LABEL_42:
      v6 = v9;
LABEL_43:
      v3 += 40;
    }

    while (v3 != v5);
  }

  if (*(this + 1902))
  {
    v28 = 0;
    do
    {
      v29 = *(this + 9);
      llvm::MDNode::replaceOperandWith();
      ++v28;
    }

    while (*(this + 1902) > v28);
  }

  result = AGCLLVMUserFragmentShader::setupShaderInputs(this);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMBuilder::SetInsertPoint(uint64_t a1, llvm::Instruction *a2, uint64_t a3)
{
  if (a3)
  {
    llvm::DebugLoc::DebugLoc();
    llvm::TrackingMDRef::operator=(a2 + 6, &v6);
    if (v6)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
}

uint64_t AGCLLVMUserFragmentShader::setupShaderInputs(AGCLLVMUserFragmentShader *this)
{
  v358[3] = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  v3 = *(*(this + 21) + 80);
  v4 = v3 - 24;
  if (!v3)
  {
    v4 = 0;
  }

  v292 = v4;
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = (v5 - 24);
  }

  else
  {
    v6 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v6);
  if ((v2[2335] & 1) != 0 || (v2[1960] & 4) != 0)
  {
    v7 = AGCLLVMUserFragmentShader::setupInterpolation(this, 6, 0, 1);
    if (v2[2335] == 1)
    {
      v8 = this + *(*this - 24);
      v9 = *(v8 + 271);
      v330 = *(v8 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v331, (v8 + 1712));
      v332 = *(v8 + 452);
      v10 = (*(*v9 + 280))(v9, &v330, 1, 0, v7, 0, 0);
      llvm::ValueHandleBase::operator=((this + 6216), v10);
      if (v331)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((v2[1960] & 4) != 0)
    {
      v11 = this + *(*this - 24);
      v12 = *(v11 + 271);
      v327 = *(v11 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v328, (v11 + 1712));
      v329 = *(v11 + 452);
      v13 = (*(*v12 + 280))(v12, &v327, 1, *(this + 1610), v7, 0, 0);
      llvm::ValueHandleBase::operator=((this + 6240), v13);
      if (v328)
      {
        llvm::MetadataTracking::untrack();
      }

      if (*(this + 1610) == 1 && *(this + 1136) <= 1)
      {
        *(this + 1136) = 2;
      }
    }
  }

  if (v2[2335] == 1)
  {
    v14 = this + *(*this - 24);
    v15 = *(v14 + 271);
    if (*(v15 + 1688))
    {
      v16 = strlen(*(v15 + 1688));
    }

    v17 = *(v14 + 234);
    inserted = AGCLLVMBuilder::getOrInsertFunction<>((v14 + 1704));
    v19 = this + *(*this - 24);
    v20 = *(v19 + 271);
    if (*(v20 + 1696))
    {
      v21 = strlen(*(v20 + 1696));
    }

    v22 = *(v19 + 234);
    v23 = AGCLLVMBuilder::getOrInsertFunction<>((v19 + 1704));
    v24 = (this + *(*this - 24));
    v25 = v24[252];
    v26 = llvm::UndefValue::get();
    v27 = this + *(*this - 24);
    LOWORD(v314[0]) = 257;
    v28 = llvm::IRBuilderBase::CreateCall((v27 + 1712), *(inserted + 24), inserted, 0, 0, &v312);
    LOWORD(v344) = 257;
    v29 = v24[238];
    v30 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v24 + 214), v26, v28, v30, &v342);
    v32 = this + *(*this - 24);
    LOWORD(v314[0]) = 257;
    v33 = llvm::IRBuilderBase::CreateCall((v32 + 1712), *(v23 + 24), v23, 0, 0, &v312);
    v34 = (*(*this + 568))(this, v33);
    v35 = this + *(*this - 24);
    LOWORD(v314[0]) = 257;
    v36 = *(v35 + 238);
    v37 = llvm::ConstantInt::get();
    v38 = llvm::IRBuilderBase::CreateInsertElement((v35 + 1712), InsertElement, v34, v37, &v312);
    v39 = AGCLLVMUserFragmentShader::setupInterpolation(this, 0, 0, 1);
    v41 = v40;
    v342 = 4uLL;
    *&v343 = v39;
    if (v39 != -8192 && v39 != -4096 && v39)
    {
      llvm::ValueHandleBase::AddToUseList(&v342);
    }

    llvm::ValueHandleBase::ValueHandleBase(&v312, 2u, &v342);
    *(&v313 + 1) = v41;
    llvm::ValueHandleBase::operator=((this + 6264), &v312);
    v42 = v313;
    *(this + 786) = *(&v313 + 1);
    if (v42 != -8192 && v42 != -4096 && v42)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v312);
    }

    if (v343 != -8192 && v343 != -4096 && v343)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v342);
    }

    v43 = this + *(*this - 24);
    v44 = *(v43 + 271);
    v324 = *(v43 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v325, (v43 + 1712));
    v326 = *(v43 + 452);
    v45 = (*(*v44 + 280))(v44, &v324, 1, 0, *(this + 785), 0, 0);
    if (v325)
    {
      llvm::MetadataTracking::untrack();
    }

    v46 = this + *(*this - 24);
    v47 = *(this + 779);
    LOWORD(v314[0]) = 257;
    v48 = *(v46 + 238);
    v49 = llvm::ConstantInt::get();
    v50 = llvm::IRBuilderBase::CreateInsertElement((v46 + 1712), v38, v47, v49, &v312);
    v51 = this + *(*this - 24);
    LOWORD(v314[0]) = 257;
    v52 = *(v51 + 238);
    v53 = llvm::ConstantInt::get();
    v290 = llvm::IRBuilderBase::CreateInsertElement((v51 + 1712), v50, v45, v53, &v312);
  }

  else
  {
    v290 = 0;
  }

  if (v2[2336] == 1)
  {
    v54 = llvm::User::operator new(0x58);
    v55 = *this;
    v56 = this + *(*this - 24);
    v57 = *(v56 + 267);
    v58 = *(v56 + 238);
    *&v312 = "agc.front_direction";
    LOWORD(v314[0]) = 259;
    v278 = *(*(this + *(v55 - 24) + 2168) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v59 = this + *(*this - 24);
    v60 = *(v59 + 268);
    v61 = AGCLLVMBuilder::buildGlobalMetadata((v59 + 1704), v54);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, v61);
    v62 = this + *(*this - 24);
    v63 = *(v62 + 271);
    v321 = *(v62 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v322, (v62 + 1712));
    v323 = *(v62 + 452);
    v289 = (*(*v63 + 528))(v63, &v321, v54);
    if (v322)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v289 = 0;
  }

  v64 = *(this + *(*this - 24) + 2016);
  v65 = llvm::PointerType::get();
  if ((v2[2337] & 1) != 0 || v2[2338] == 1 && (*(*(this + 660) + 33) & 3) == 0)
  {
    v66 = AGCLLVMUserFragmentShader::setupInterpolation(this, 5, 0, 2);
    v67 = this + *(*this - 24);
    v68 = *(v67 + 271);
    v318 = *(v67 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v319, (v67 + 1712));
    v320 = *(v67 + 452);
    v69 = this + *(*this - 24);
    LOWORD(v314[0]) = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v69 + 1712), 49, v66, v65, &v312);
    v71 = (*(*v68 + 280))(v68, &v318, 2, 0, Cast, 0, 0);
    llvm::ValueHandleBase::operator=((this + 6296), v71);
    if (v319)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if (v2[2338] == 1 && (*(*(this + 660) + 33) & 3) != 0)
  {
    v72 = AGCLLVMUserFragmentShader::setupInterpolation(this, 5, 0, 2);
    v73 = this + *(*this - 24);
    v74 = *(v73 + 271);
    v315 = *(v73 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v316, (v73 + 1712));
    v317 = *(v73 + 452);
    v75 = this + *(*this - 24);
    LOWORD(v314[0]) = 257;
    v76 = llvm::IRBuilderBase::CreateCast((v75 + 1712), 49, v72, v65, &v312);
    v77 = (*(*v74 + 280))(v74, &v315, 2, 1, v76, 0, 0);
    llvm::ValueHandleBase::operator=((this + 6320), v77);
    if (v316)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(this + 1136) <= 1)
    {
      *(this + 1136) = 2;
    }
  }

  LODWORD(v355) = 0;
  v354 = 0u;
  *(&v355 + 1) = 0;
  v356 = 0u;
  v357[0] = v358;
  v357[1] = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(v357, 5uLL, -559038737);
  v349 = 0;
  v348 = 0u;
  v351 = 0u;
  v350 = 0;
  v352[0] = v353;
  v352[1] = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(v352, 5uLL, -559038737);
  v78 = (*(*this + 616))(this);
  v79 = *(*(this + 801) + 64);
  if ((~v79 & 0xF) != 0)
  {
    v82 = -1;
    v83 = 4;
    v81 = v292;
    while (v82 != 6)
    {
      v84 = v79 >> v83;
      ++v82;
      v83 += 4;
      if ((~v84 & 0xF) == 0)
      {
        if (v82 < 7)
        {
          v80 = 0;
          goto LABEL_61;
        }

        break;
      }
    }

    v80 = AGCLLVMUserFragmentShader::buildStaticLtpLibOffsetArrayPtr(this);
  }

  else
  {
    v80 = 0;
    v81 = v292;
  }

LABEL_61:
  memset(v314, 0, sizeof(v314));
  v312 = 0u;
  v313 = 0u;
  v288 = (this + 4536);
  AGCLLVMStatelessFragmentObject::buildDrawBufferState(&v312, this + 567, *(this + 660), v80);
  LOBYTE(v310[0]) = 0;
  v311 = 0;
  if (v78)
  {
    AGCLLVMUserFragmentShader::readAndWriteFramebufferFunctionPointers(v310, this);
    v311 = 1;
  }

  if ((*(this + *(*this - 24) + 2284) & 1) == 0)
  {
    goto LABEL_284;
  }

  v85 = *(this + 21);
  if (*(v85 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v87 = *(this + 21);
    v86 = *(v85 + 88);
    if (*(v87 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v85 = v87;
  }

  else
  {
    v86 = *(v85 + 88);
  }

  v88 = *(v85 + 88) + 40 * *(v85 + 96);
  v89 = this + 1704;
  v296 = this + 1712;
  v297 = this + 1704;
  if (v86 == v88)
  {
LABEL_262:
    v219 = *this;
    goto LABEL_263;
  }

  v90 = 0;
  v291 = this + 2168;
  v287 = this + 1896;
  v91 = v81;
  v298 = v88;
  do
  {
    if (!v86[1])
    {
      goto LABEL_259;
    }

    v92 = *(*(this + 10) + 8 * *(v86 + 8));
    v93 = *(v91 + 40);
    v94 = v93 ? (v93 - 24) : 0;
    AGCLLVMBuilder::SetInsertPoint(&v89[*(*this - 24)], v94, *(this + 5));
    if (AGCLLVMUserShader::replaceInputArgument(this, v86, *(v86 + 8), v92))
    {
      goto LABEL_259;
    }

    String = llvm::MDString::getString(*(v92 - 8 * *(v92 + 8) + 8));
    v97 = String;
    v98 = v96;
    if (v96 <= 16)
    {
      if (v96 <= 14)
      {
        if (v96 != 12)
        {
          if (v96 != 13)
          {
            goto LABEL_166;
          }

          v99 = *String == 0x706D61732E726961 && *(String + 5) == 0x64695F656C706D61;
          if (!v99)
          {
            goto LABEL_166;
          }

          v100 = v90;
          v101 = v91;
          v102 = this + *(*this - 24);
          v103 = *(v102 + 271);
          if (*(v103 + 1704))
          {
            v104 = strlen(*(v103 + 1704));
          }

          v198 = *(v102 + 238);
          v199 = AGCLLVMBuilder::getOrInsertFunction<>((v102 + 1704));
          v200 = *(*this - 24);
          LOWORD(v344) = 257;
          v201 = llvm::IRBuilderBase::CreateCall(&v296[v200], *(v199 + 24), v199, 0, 0, &v342);
          v202 = *v86;
          LOWORD(v339) = 257;
          v110 = llvm::IRBuilderBase::CreateCast(&v296[v200], 38, v201, v202, v337);
          v88 = v298;
          if (*(this + 1136) <= 1)
          {
            *(this + 1136) = 2;
          }

          v89 = this + 1704;
LABEL_241:
          v91 = v101;
          v90 = v100;
          goto LABEL_255;
        }

        if (*String != 0x69736F702E726961 || *(String + 8) != 1852795252)
        {
          goto LABEL_166;
        }

        if ((*(*v86 + 8) & 0xFE) == 0x12)
        {
          v119 = *(**(*v86 + 16) + 8);
        }

        else
        {
          v119 = *(*v86 + 8);
        }

        v88 = v298;
        v167 = *(*this - 24);
        v99 = v119 == 0;
        v168 = 2016;
        if (v99)
        {
          v168 = 2000;
        }

        v169 = *(this + v168 + v167);
        LOWORD(v344) = 257;
        v170 = &v296[v167];
        v171 = v290;
LABEL_210:
        FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v170, v171, v169, &v342);
LABEL_211:
        v110 = FPTrunc;
        goto LABEL_255;
      }

      if (v96 != 15)
      {
        if (*String == 0x6E6F72662E726961 && *(String + 8) == 0x676E696361665F74)
        {
          v112 = *(*this - 24);
          v113 = *v86;
          LOWORD(v344) = 257;
          v110 = llvm::IRBuilderBase::CreateCast(&v296[v112], 39, v289, v113, &v342);
LABEL_192:
          v88 = v298;
          goto LABEL_255;
        }

        goto LABEL_166;
      }

      if (*String == 0x6E696F702E726961 && *(String + 7) == 0x64726F6F635F746ELL)
      {
        if ((*(*v86 + 8) & 0xFE) == 0x12)
        {
          v140 = *(**(*v86 + 16) + 8);
        }

        else
        {
          v140 = *(*v86 + 8);
        }

        v88 = v298;
        v172 = *(*this - 24);
        v99 = v140 == 0;
        v173 = this + 1928;
        if (v99)
        {
          v173 = this + 1920;
        }

        v169 = *&v173[v172];
        v171 = *(this + 789);
        LOWORD(v344) = 257;
        v170 = &v296[v172];
        goto LABEL_210;
      }

LABEL_166:
      if (AGCLLVMUserFragmentShader::isSampleMaskVariant(String, v96))
      {
        v295 = v90;
        v143 = v91;
        v144 = this + *(*this - 24);
        v145 = *(v144 + 271);
        if (*(v145 + 1712))
        {
          v146 = strlen(*(v145 + 1712));
        }

        v150 = *(v144 + 238);
        v151 = AGCLLVMBuilder::getOrInsertFunction<>((v144 + 1704));
        v152 = *(*this - 24);
        LOWORD(v344) = 257;
        v153 = llvm::IRBuilderBase::CreateCall(&v296[v152], *(v151 + 24), v151, 0, 0, &v342);
        v154 = *v86;
        LOWORD(v339) = 257;
        v110 = llvm::IRBuilderBase::CreateCast(&v296[v152], 38, v153, v154, v337);
        if (AGCLLVMUserFragmentShader::getEffectiveFragmentRate(*(this + 1618), v97, v98))
        {
          v155 = ~(-1 << (1 << ((*(*(this + 660) + 32) >> 10) & 3)));
          v156 = this + *(*this - 24);
          v157 = *(v156 + 238);
          v158 = llvm::ConstantInt::get();
          LOWORD(v344) = 257;
          v110 = llvm::IRBuilderBase::CreateAnd((v156 + 1712), v110, v158, &v342);
        }

        v89 = this + 1704;
        v88 = v298;
        v91 = v143;
        v2[2334] = 1;
        v90 = v295;
        goto LABEL_255;
      }

      if (v98 == 21)
      {
        if (*v97 != 0x797261622E726961 || v97[1] != 0x5F636972746E6563 || *(v97 + 13) != 0x64726F6F635F6369)
        {
          goto LABEL_191;
        }

        v161 = *&v291[*(*this - 24)];
        v88 = v298;
        if ((*(*v161 + 824))(v161))
        {
          v162 = 1;
          v2[2367] = 1;
          (*(*this + 544))(&v342, this, *v86, v92);
          v163 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v342);
          if ((*(*v86 + 8) & 0xFE) == 0x12)
          {
            v162 = *(*v86 + 32);
          }

          v164 = this + *(*this - 24);
          v165 = *(v164 + 271);
          v301 = *(v164 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v302, (v164 + 1712));
          v303 = *(v164 + 452);
          v110 = (*(*v165 + 856))(v165, &v301, v163, v162);
          if (v302)
          {
            llvm::MetadataTracking::untrack();
          }

          v166 = v345[0];
          v91 = v292;
          v89 = this + 1704;
          if (v345[0] != v346)
          {
            goto LABEL_254;
          }

          goto LABEL_255;
        }

        v276 = (this + *(*this - 24));
        v277 = "barycentric_coords not supported for this device";
      }

      else
      {
        if (v98 != 16 || (*v97 == 0x6D6972702E726961 ? (v147 = v97[1] == 0x64695F6576697469) : (v147 = 0), !v147))
        {
LABEL_191:
          v110 = 0;
          goto LABEL_192;
        }

        v148 = *&v291[*(*this - 24)];
        if ((*(*v148 + 816))(v148))
        {
          v88 = v298;
          if (!v356)
          {
            (*(*this + 536))(&v342, this, *v86);
            v354 = v342;
            v355 = v343;
            v356 = v344;
            llvm::SmallVectorImpl<unsigned int>::operator=(v357, v345);
            if (v345[0] != v346)
            {
              free(v345[0]);
            }
          }

          FPTrunc = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v354);
          goto LABEL_211;
        }

        v276 = (this + *(*this - 24));
        v277 = "primitive_id not supported for this device";
      }

      std::string::append(v276 + 69, v277);
LABEL_283:
      v237 = 0;
      goto LABEL_275;
    }

    if (v96 > 23)
    {
      if (v96 == 24)
      {
        if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
        {
          v2[2362] = 1;
          (*(*this + 528))(&v342, this, *v86, "air.viewport_array_index", 24);
          v110 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v342);
          llvm::ValueHandleBase::operator=((this + 6344), v110);
          if (v345[0] != v346)
          {
            free(v345[0]);
          }

          goto LABEL_192;
        }

        goto LABEL_166;
      }

      if (v96 == 29)
      {
        v114 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
        v115 = v114 && *(String + 16) == 0x5F79617272615F74;
        if (v115 && *(String + 21) == 0x7865646E695F7961)
        {
          v100 = v90;
          v101 = v91;
          v2[2363] = 1;
          v117 = this + *(*this - 24);
          if (*(*(v117 + 271) + 1861))
          {
            (*(*this + 528))(&v342, this, *v86, "air.render_target_array_index", 29);
            v110 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v342);
            v88 = v298;
            if (v345[0] != v346)
            {
              free(v345[0]);
            }
          }

          else
          {
            v189 = *(v117 + 238);
            v190 = llvm::ConstantInt::get();
            v191 = *v86;
            LOWORD(v344) = 257;
            v110 = llvm::IRBuilderBase::CreateCast((v117 + 1712), 38, v190, v191, &v342);
            v88 = v298;
          }

          goto LABEL_241;
        }
      }

      goto LABEL_166;
    }

    if (v96 == 17)
    {
      if (*String != 0x646E65722E726961 || *(String + 8) != 0x65677261745F7265 || *(String + 16) != 116)
      {
        goto LABEL_166;
      }

      if (*(this + 1136) <= 0)
      {
        *(this + 1136) = 1;
      }

      v309 = 0;
      LODWORD(v342) = 2;
      if (!parseMDInt(0, v92, &v342, &v309))
      {
        goto LABEL_283;
      }

      v122 = v309;
      v123 = (*(*(this + 660) + 4 * v309) >> 21) & 0xF;
      v124 = *&v287[*(*this - 24)];
      v125 = llvm::ConstantInt::get();
      v126 = this + *(*this - 24);
      v127 = *(v126 + 271);
      v306 = *(v126 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v307, (v126 + 1712));
      v308 = *(v126 + 452);
      v128 = (*(*v127 + 208))(v127, &v306, v125);
      if (v307)
      {
        llvm::MetadataTracking::untrack();
      }

      *&v342 = "case3_stateless_color_coverage_mask";
      LOWORD(v344) = 259;
      llvm::Value::setName();
      v129 = this + *(*this - 24);
      v333 = *(v129 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v334, (v129 + 1712));
      v335 = *(v129 + 452);
      v130 = *this;
      v131 = this + *(*this - 24);
      if (v131[2284])
      {
        v132 = *(v131 + 570);
        if (v132 == 7 || v132 == 2)
        {
          *(this + 1512) |= 1 << v122;
          *(this + 1344) |= 1 << v122;
        }

        v294 = v128;
        if ((*(v130 + 608))(this, v122))
        {
          AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(v337, (*(this + 660) + 32), *(*(this + 660) + 4 * v122));
          v133 = *v86;
          if ((*(*v86 + 8) & 0xFE) != 0x12)
          {
            v133 = llvm::VectorType::get();
          }

          v134 = *(*(this + 660) + 32);
          RTZMode = AGCLLVMTargetLowerer::getRTZMode(*&v291[*(*this - 24)], *(*(this + 684) + 4 * v122));
          v135 = *this;
          v136 = this + *(*this - 24);
          v283 = *(v136 + 271);
          *v304 = *v337;
          v305 = v338;
          v281 = *(this + 32);
          v282 = *(this + 14);
          v137 = *(this + 660);
          if ((~*(v137 + 32) & 0x1FF000) != 0)
          {
            v203 = *(v136 + 237);
            v138 = llvm::ConstantInt::get();
            v137 = *(this + 660);
            v135 = *this;
          }

          else
          {
            v138 = 0;
          }

          if ((~*(v137 + 4 * v122) & 0xFF000) != 0)
          {
            v205 = this + 1896;
            v206 = *&v287[*(v135 - 24)];
            v204 = llvm::ConstantInt::get();
            v135 = *this;
          }

          else
          {
            v204 = 0;
            v205 = this + 1896;
          }

          v207 = *(*(this + 660) + 4 * v122);
          v208 = *&v205[*(v135 - 24)];
          v209 = llvm::ConstantInt::get();
          *(&v280 + 1) = v204;
          *&v280 = v138;
          AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(&v342, v283, 0, v304, 0, ((1 << v122) & v134) == 0, 0, 15, RTZMode, v133, 0, 0, 0, v282, v281, v280, v209, (*(*(this + 660) + 32) & 0x10000000) != 0, v122 | 0x100000000, 0, 1 << (BYTE1(*(*(this + 660) + 32)) & 3));
          v304[0] = 0;
          v285 = *(AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(v288, &v342, v304) + 24);
          *(this + 661) |= v304[0] << (4 * v122);
LABEL_248:
          v337[0] = &v338;
          v337[1] = 0x300000000;
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v337, v294);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v337, *&v314[3 * v122]);
          if ((*(*(this + 660) + 35) & 0x10) != 0)
          {
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v337, *(&v314[3 * v122] + 1));
          }

          v210 = *(this + 21);
          *&v342 = &v343;
          *(&v342 + 1) = 0x100000000;
          *(&v343 + 1) = 0;
          *&v344 = 0;
          DWORD2(v344) = 0;
          v347 = 0;
          v346[0] = 0;
          v345[0] = 0;
          v345[1] = v210;
          llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>();
        }

        if (v311)
        {
          v192 = v310[v122];
          AGCLLVMStatelessFragmentObject::buildReadFramebufferFunctionType(v288, *v86, 0, (*(*(this + 660) + 32) >> 28) & 1);
          v193 = v288 + *(*(this + 567) - 24);
          v194 = *(v193 + 239);
          LOWORD(v344) = 257;
          llvm::Type::isOpaquePointerTy(*v192);
          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v193 + 214, v194, v192, 0, &v342);
          v196 = *(*(this + 567) - 24);
          v197 = llvm::PointerType::get();
          LOWORD(v344) = 257;
          llvm::IRBuilderBase::CreateCast(this + v196 + 6248, 48, AlignedLoad, v197, &v342);
          goto LABEL_248;
        }
      }

LABEL_284:
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    if (v96 != 18)
    {
      goto LABEL_166;
    }

    v105 = *String == 0x676172662E726961 && *(String + 8) == 0x706E695F746E656DLL;
    if (!v105 || *(String + 16) != 29813)
    {
      goto LABEL_166;
    }

    v107 = v90;
    v108 = v91;
    v2[2332] = 1;
    (*(*this + 520))(&v342, this, *v86, v92);
    v109 = DWORD2(v342);
    if (DWORD2(v342) < 2)
    {
      if (!DWORD2(v342))
      {
        v110 = 0;
        v166 = v342;
        v88 = v298;
        goto LABEL_252;
      }

      v286 = v2;
      v110 = 0;
    }

    else
    {
      v286 = v2;
      v110 = llvm::UndefValue::get();
    }

    v174 = 0;
    v175 = 0;
    LODWORD(v90) = v107;
    do
    {
      v176 = *(v342 + v174);
      v177 = *(v342 + v174 + 16);
      v339 = *(v342 + v174 + 32);
      v338 = v177;
      *v337 = v176;
      v340[0] = v341;
      v340[1] = 0x500000000;
      if (*(v342 + v174 + 56))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(v340, v342 + v174 + 48);
      }

      v178 = v339 == 0;
      if (HIDWORD(v337[0]) || *(this + 785))
      {
        if (v339)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v180 = AGCLLVMUserFragmentShader::setupInterpolation(this, 0, 0, 1);
        v182 = v181;
        llvm::ValueHandleBase::operator=((this + 6264), v180);
        *(this + 786) = v182;
        if (v339)
        {
LABEL_220:
          v179 = AGCLLVMUserFragmentShader::replaceInterpolation(this, v337);
          goto LABEL_223;
        }
      }

      v179 = (*(*this + 576))(this, v337);
LABEL_223:
      v183 = v179;
      if (v109 < 2)
      {
        v110 = v179;
      }

      else
      {
        v184 = &v297[*(*this - 24)];
        v336 = 257;
        v185 = *(v184 + 25);
        v186 = llvm::ConstantInt::get();
        v110 = llvm::IRBuilderBase::CreateInsertElement((v184 + 8), v110, v183, v186, &v333);
      }

      if (v340[0] != v341)
      {
        free(v340[0]);
      }

      v90 = v90 | v178;
      ++v175;
      v174 += 88;
    }

    while (v109 != v175);
    v166 = v342;
    if (DWORD2(v342))
    {
      v107 = v90;
      v187 = (v342 + 88 * DWORD2(v342) - 40);
      v188 = -88 * DWORD2(v342);
      v2 = v286;
      v108 = v292;
      v88 = v298;
      do
      {
        if (v187 + 2 != *v187)
        {
          free(*v187);
        }

        v187 -= 11;
        v188 += 88;
      }

      while (v188);
      v166 = v342;
LABEL_252:
      v91 = v108;
      v90 = v107;
    }

    else
    {
      v2 = v286;
      v91 = v292;
      v88 = v298;
    }

    v89 = this + 1704;
    if (v166 != &v343)
    {
LABEL_254:
      free(v166);
    }

LABEL_255:
    if ((*(*v86 + 8) & 0xFE) == 0x12 && *(*v86 + 32) == 1)
    {
      v211 = &v297[*(*this - 24)];
      v212 = v90;
      v213 = v91;
      v214 = llvm::UndefValue::get();
      LOWORD(v344) = 257;
      v215 = *(v211 + 25);
      v216 = llvm::ConstantInt::get();
      v217 = (v211 + 8);
      v89 = this + 1704;
      v218 = v214;
      v91 = v213;
      v90 = v212;
      llvm::IRBuilderBase::CreateInsertElement(v217, v218, v110, v216, &v342);
    }

    llvm::Value::replaceAllUsesWith();
LABEL_259:
    v86 += 5;
  }

  while (v86 != v88);
  v219 = *this;
  if (v90)
  {
    (*(v219 + 584))(this);
    goto LABEL_262;
  }

LABEL_263:
  v220 = *(this + *(v219 - 24) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v222 = Function;
    v223 = (*(*(this + 660) + 32) >> 8) & 3;
    v224 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v225 = 1 << ((*(*(this + 660) + 32) >> 10) & 3);
    v226 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v227 = *(v222 + 8);
    while (v227)
    {
      v228 = *(v227 + 24);
      v227 = *(v227 + 8);
      v229 = llvm::CallBase::arg_end(v228);
      v230 = (v228 - 32 * (*(v228 + 5) & 0x7FFFFFF));
      if (((v229 - v230) & 0x1FFFFFFFE0) == 0x20)
      {
        v231 = *v230;
        v232 = (*v230 + 24);
        if (*(v231 + 32) >= 0x41u)
        {
          v232 = *v232;
        }

        *v232;
      }

      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v228);
    }
  }

  v233 = *(this + *(*this - 24) + 2136);
  v234 = llvm::Module::getFunction();
  if (v234)
  {
    v235 = v234;
    v236 = llvm::ArrayType::get(*(this + *(*this - 24) + 1872), (2 << (BYTE1(*(*(this + 660) + 32)) & 3)));
    v237 = 1;
    v238 = llvm::User::operator new(0x58);
    v239 = this + *(*this - 24);
    v240 = *(v239 + 267);
    *&v342 = "agc.sample_positions";
    LOWORD(v344) = 259;
    v279 = *(*(v239 + 271) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v241 = this + *(*this - 24);
    v242 = *(v241 + 268);
    v243 = AGCLLVMBuilder::buildGlobalMetadata((v241 + 1704), v238);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v242, v243);
    v244 = *(v235 + 8);
    if (v244)
    {
      v293 = v236;
      v245 = this + 1904;
      do
      {
        v300 = *(v244 + 8);
        v246 = *(v244 + 24);
        llvm::IRBuilderBase::SetInsertPoint(&v296[*(*this - 24)], v246);
        v247 = *(this + *(*this - 24) + 1928);
        v299 = llvm::UndefValue::get();
        v248 = this + *(*this - 24);
        v249 = *(v246 - 4 * (*(v246 + 5) & 0x7FFFFFF));
        v250 = *(v248 + 238);
        v251 = llvm::ConstantInt::get();
        LOWORD(v344) = 257;
        Mul = llvm::IRBuilderBase::CreateMul((v248 + 1712), v249, v251, &v342);
        v253 = *(*this - 24);
        v254 = this + v253;
        v255 = *&v245[v253];
        *&v333 = llvm::ConstantInt::get();
        *(&v333 + 1) = Mul;
        LOWORD(v344) = 257;
        llvm::Type::isOpaquePointerTy(*v238);
        GEP = llvm::IRBuilderBase::CreateGEP((v254 + 1712), v293, v238, &v333, 2, &v342);
        LOWORD(v339) = 257;
        Load = AGCLLVMBuilder::CreateLoad((v254 + 1704), GEP, v337);
        v258 = &v297[*(*this - 24)];
        LOWORD(v344) = 257;
        v259 = *(v258 + 25);
        v260 = llvm::ConstantInt::get();
        v261 = llvm::IRBuilderBase::CreateInsertElement((v258 + 8), v299, Load, v260, &v342);
        v262 = this + *(*this - 24);
        v263 = *(v262 + 238);
        v264 = llvm::ConstantInt::get();
        LOWORD(v344) = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v262 + 1712), Mul, v264, &v342);
        v266 = *(*this - 24);
        v267 = this + v266;
        v268 = *&v245[v266];
        *&v333 = llvm::ConstantInt::get();
        *(&v333 + 1) = Add;
        LOWORD(v344) = 257;
        llvm::Type::isOpaquePointerTy(*v238);
        v269 = llvm::IRBuilderBase::CreateGEP((v267 + 1712), v293, v238, &v333, 2, &v342);
        LOWORD(v339) = 257;
        v270 = AGCLLVMBuilder::CreateLoad((v267 + 1704), v269, v337);
        v271 = &v297[*(*this - 24)];
        LOWORD(v344) = 257;
        v272 = *(v271 + 25);
        v273 = llvm::ConstantInt::get();
        llvm::IRBuilderBase::CreateInsertElement((v271 + 8), v261, v270, v273, &v342);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v246);
        v244 = v300;
      }

      while (v300);
      goto LABEL_274;
    }
  }

  else
  {
LABEL_274:
    v237 = 1;
  }

LABEL_275:
  if (v352[0] != v353)
  {
    free(v352[0]);
  }

  if (v357[0] != v358)
  {
    free(v357[0]);
  }

  v274 = *MEMORY[0x277D85DE8];
  return v237;
}

uint64_t AGCLLVMUserFragmentShader::setupInterpolation(void *a1, int a2, int a3, llvm::Type *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + *(*a1 - 24) + 2016);
  v6 = off_277E20BF0[a2];
  if (a4 >= 2)
  {
    llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 2016), a4);
  }

  v7 = llvm::User::operator new(0x58);
  v8 = *(a1 + *(*a1 - 24) + 2136);
  *v6;
  llvm::GlobalVariable::GlobalVariable();
  *(v7 + 80) |= 1u;
  llvm::GlobalObject::setAlignment();
  llvm::ValueAsMetadata::get();
  v9 = *(a1 + *(*a1 - 24) + 1904);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v10 = *(a1 + *(*a1 - 24) + 1904);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v11 = *(a1 + *(*a1 - 24) + 1904);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v12 = a1[690];
  v13 = *(a1 + *(*a1 - 24) + 2160);
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildInterpolate(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, llvm::Value *a6, uint64_t a7)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(a1 + 168);
  v15 = a3 - 1;
  if (a3 != 1)
  {
    v16 = *(a1 + 168);
    llvm::FixedVectorType::get();
  }

  v17 = *(a1 + 312);
  v18 = llvm::PointerType::get();
  v38[0] = v39;
  v38[1] = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v38, v18);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v35, a5);
  if (a7)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v38, v18);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v35, a7);
    v19 = 2248;
  }

  else
  {
    v19 = 2152;
  }

  v20 = *(a1 + v19 + 32 * a4 + 8 * v15);
  if (a4 == 1)
  {
    if (!a6)
    {
      if (*(a1 + 1704))
      {
        v21 = strlen(*(a1 + 1704));
      }

      v22 = *(a1 + 200);
      inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
      v31 = 257;
      a6 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v30);
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v38, *(a1 + 192));
    v24 = AGCLLVMBuilder::truncateToSmall(a1, a6, *(a1 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v35, v24);
  }

  if (v20)
  {
    strlen(v20);
  }

  llvm::FunctionType::get();
  v25 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v31 = 257;
  v27 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v26 + 24), v26, v35, v36, v30);
  if ((a3 ^ v15) <= v15)
  {
    v27 = AGCLLVMBuilder::subrangeVector(a1, v27, 0, a3, 1);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<>(uint64_t a1)
{
  llvm::FunctionType::get();
  v2 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  return v3;
}

uint64_t AGCLLVMObject::GetStatelessPSOGlobal(AGCLLVMObject *this)
{
  result = *(this + 281);
  if (!result)
  {
    v3 = (*(**(*(this + 271) + 920) + 384))(*(*(this + 271) + 920), 1);
    v4 = *(this + 238);
    v5 = llvm::PointerType::get();
    v7[0] = "agc.stateless_pso_metadata";
    v7[2] = ".";
    v8 = 771;
    v9[0] = v7;
    v9[2] = v3;
    v10 = 2050;
    GlobalBufferBinding = AGCLLVMObject::createGlobalBufferBinding(this, v5, v9, v3, 0);
    llvm::ValueHandleBase::operator=((this + 2232), GlobalBufferBinding);
    return *(this + 281);
  }

  return result;
}

uint64_t AGCLLVMObject::createGlobalBufferBinding(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v7 = llvm::User::operator new(0x58);
  v8 = a1[267];
  v9 = llvm::GlobalVariable::GlobalVariable();
  *(v9 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  __src[0] = llvm::ValueAsMetadata::get();
  v10 = a1[238];
  llvm::ConstantInt::get();
  __src[1] = llvm::ValueAsMetadata::get();
  v11 = a1[238];
  llvm::ConstantInt::get();
  __src[2] = llvm::ValueAsMetadata::get();
  v20[0] = v21;
  v20[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v20, __src, v20);
  if (a5)
  {
    v12 = a1[238];
    llvm::ConstantInt::get();
    v13 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v20, v13);
  }

  v14 = a1[268];
  v15 = a1[270];
  Impl = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, Impl);
  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

void GenericVaryingAllocator::addVarying(uint64_t a1, unint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 689);
    v8 = *(a1 + 556);
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = v9 + (v6 >> 1 << 6);
      if (v7)
      {
        memset(&v56, 0, sizeof(v56));
        memset(&v55, 0, sizeof(v55));
      }

      else
      {
        if (*(v10 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v56, *(v10 + 24), *(v10 + 32));
        }

        else
        {
          v11 = *(v10 + 24);
          v56.__r_.__value_.__r.__words[2] = *(v10 + 40);
          *&v56.__r_.__value_.__l.__data_ = v11;
        }

        if (*(a2 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v55, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v55 = *(a2 + 24);
        }
      }

      v12 = *(v10 + 8);
      v13 = *(a2 + 8);
      v15 = v13 != 3 || v12 == 3;
      if (v8)
      {
        if (!v15)
        {
          goto LABEL_38;
        }

        if (v12 == 3 && v13 != 3)
        {
          goto LABEL_40;
        }

        v17 = *(v10 + 56);
        v18 = *(a2 + 56);
        if (v17 < v18)
        {
          goto LABEL_38;
        }

        if (v18 < v17)
        {
          goto LABEL_40;
        }

        if (v12 < v13)
        {
          goto LABEL_38;
        }

        if (v13 < v12)
        {
          goto LABEL_40;
        }

        v19 = *(v10 + 57);
        v20 = *(a2 + 57);
        if (v19 < v20)
        {
          goto LABEL_38;
        }

        if (v20 < v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_38;
        }

        if (v12 == 3 && v13 != 3)
        {
          goto LABEL_40;
        }

        v22 = *(v10 + 57);
        v23 = *(a2 + 57);
        if (v22 < v23)
        {
          goto LABEL_38;
        }

        if (v23 < v22)
        {
          goto LABEL_40;
        }

        v25 = *(v10 + 56);
        v26 = *(a2 + 56);
        if (v25 < v26)
        {
          goto LABEL_38;
        }

        if (v26 < v25)
        {
          goto LABEL_40;
        }

        if (v12 < v13)
        {
          goto LABEL_38;
        }

        if (v13 < v12)
        {
          goto LABEL_40;
        }
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v56;
      }

      else
      {
        v28 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v55.__r_.__value_.__l.__size_;
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v55;
      }

      else
      {
        v30 = v55.__r_.__value_.__r.__words[0];
      }

      v53 = v28;
      v54 = size;
      if (v29 >= size)
      {
        v31 = size;
      }

      else
      {
        v31 = v29;
      }

      __n = v31;
      v52 = v30;
      v32 = memcmp(v28, v30, v31);
      v33 = v54 < v29;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (!v33)
      {
        v34 = memcmp(v52, v53, __n);
        v35 = v29 < v54;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (!v35)
        {
          v24 = *(v10 + 16) < *(a2 + 16);
          goto LABEL_41;
        }

LABEL_40:
        v24 = 0;
        goto LABEL_41;
      }

LABEL_38:
      v24 = 1;
LABEL_41:
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v24)
      {
        v9 = v10 + 64;
      }

      if (!v6)
      {
        v4 = *(a1 + 24);
        v36 = *(a1 + 32);
        goto LABEL_79;
      }
    }
  }

  v36 = 0;
  v9 = *(a1 + 24);
LABEL_79:
  if (v4 + (v36 << 6) == v9)
  {
    llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(v5, a2);
  }

  else
  {
    v37 = v9 - v4;
    v38 = llvm::SmallVectorTemplateCommon<GenericVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<GenericVarying,false>>(v5, a2);
    v39 = *(a1 + 24);
    v40 = v39 + v37;
    v41 = v39 + (*(a1 + 32) << 6);
    *(v41 + 16) = *(v41 - 48);
    *v41 = *(v41 - 64);
    *(v41 + 24) = *(v41 - 40);
    *(v41 + 40) = *(v41 - 24);
    *(v41 - 40) = 0;
    *(v41 - 32) = 0;
    *(v41 - 24) = 0;
    *(v41 + 48) = *(v41 - 16);
    v42 = *(a1 + 24);
    v43 = *(a1 + 32);
    v44 = v42 + (v43 << 6) - 64;
    if (v44 != v40)
    {
      do
      {
        *v44 = *(v44 - 64);
        *(v44 + 16) = *(v44 - 48);
        if (*(v44 + 47) < 0)
        {
          operator delete(*(v44 + 24));
        }

        *(v44 + 24) = *(v44 - 40);
        *(v44 + 40) = *(v44 - 24);
        *(v44 - 17) = 0;
        *(v44 - 40) = 0;
        *(v44 + 48) = *(v44 - 16);
        v44 -= 64;
      }

      while (v44 != v40);
      LODWORD(v43) = *(a1 + 32);
      v42 = *(a1 + 24);
    }

    v45 = (v43 + 1);
    *(a1 + 32) = v45;
    v46 = v38 < v42 + (v45 << 6) && v38 >= v40;
    v47 = 64;
    if (!v46)
    {
      v47 = 0;
    }

    v48 = v38 + v47;
    v49 = *v48;
    *(v40 + 16) = *(v48 + 16);
    *v40 = v49;
    std::string::operator=((v40 + 24), (v48 + 24));
    *(v40 + 48) = *(v48 + 48);
  }

  v50 = *(a1 + 552);
  if (v50 <= *(a2 + 16))
  {
    v50 = *(a2 + 16);
  }

  *(a1 + 552) = v50;
  *(a1 + 692) += *a2;
}

void GenericVaryingAllocator::allocate(GenericVaryingAllocator *this, const AGCLLVMTargetLowerer *a2)
{
  v4 = (*(this + 138) + 7);
  v5 = *(this + 72);
  v6 = *(this + 71);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3);
  v8 = v4 - v7;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v11 = v6 + 40 * v4;
      while (v5 != v11)
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 40;
      }

      *(this + 72) = v11;
    }
  }

  else
  {
    v9 = *(this + 73);
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v5) >> 3) < v8)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v6) >> 3);
      if (2 * v10 > v4)
      {
        v4 = 2 * v10;
      }

      if (v10 >= 0x333333333333333)
      {
        v4 = 0x666666666666666;
      }

      if (v4 <= 0x666666666666666)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 40 * ((40 * v8 - 40) / 0x28) + 40;
    bzero(*(this + 72), v12);
    *(this + 72) = v5 + v12;
  }

  v13 = *(this + 8);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 1851);
    v17 = *(this + 3);
    v18 = (v17 + 64 * v13);
    v19 = 4;
    v20 = *(this + 71);
    do
    {
      data = v17->__r_.__value_.__l.__data_;
      v22 = LODWORD(v17->__r_.__value_.__r.__words[2]) + 6;
      LODWORD(v17[2].__r_.__value_.__l.__data_) = v19;
      v23 = v20 + 40 * v22;
      *(v23 + 12) = v17->__r_.__value_.__r.__words[1];
      std::string::operator=((v23 + 16), v17 + 1);
      v24 = v17[2].__r_.__value_.__s.__data_[8];
      v20 = *(this + 71);
      v25 = v20 + 40 * v22;
      *v25 = v24;
      *(v25 + 4) = v15 + 2 * (v14 + v16);
      *(v25 + 8) = 2 * (v14 + v16 + v15);
      v19 += data;
      v26 = LODWORD(v17->__r_.__value_.__r.__words[1]);
      v27 = 616;
      if (v17[2].__r_.__value_.__s.__data_[9])
      {
        v27 = 664;
      }

      v28 = 592;
      if (v17[2].__r_.__value_.__s.__data_[9])
      {
        v28 = 640;
      }

      v29 = v24 == 0;
      if (v24)
      {
        v30 = v27;
      }

      else
      {
        v30 = v28;
      }

      v31 = this + v30;
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = data;
      }

      v15 += v32;
      if (v29)
      {
        v33 = data;
      }

      else
      {
        v33 = 0;
      }

      v14 += v33;
      v34 = *&v31[4 * v26];
      HIDWORD(v17[2].__r_.__value_.__r.__words[0]) = v34;
      *&v31[4 * v26] = v34 + data;
      v17 = (v17 + 64);
    }

    while (v17 != v18);
  }
}

void GenericVaryingAllocator::serialize(GenericVaryingAllocator *this, flatbuffers::FlatBufferBuilder *a2)
{
  v2 = -858993459 * ((*(this + 72) - *(this + 71)) >> 3);
  if (v2)
  {
    v5 = 0;
    v6 = 40 * v2;
    do
    {
      v7 = *(this + 71) + v5;
      v10 = *(v7 + 16);
      v8 = v7 + 16;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      if (v11 >= 0)
      {
        v13 = *(v8 + 23);
      }

      else
      {
        v13 = *(v8 + 8);
      }

      String = flatbuffers::FlatBufferBuilder::CreateString(a2, v12, v13);
      *(a2 + 70) = 1;
      v15 = *(a2 + 10);
      v16 = *(a2 + 8) - *(a2 + 12);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a2, 4, *(*(this + 71) + v5), 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a2, 6, *(*(this + 71) + v5 + 4));
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a2, 8, *(*(this + 71) + v5 + 8));
      flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 10, *(*(this + 71) + v5 + 12));
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a2, 12, String);
      v17 = flatbuffers::FlatBufferBuilder::EndTable(a2, v16 + v15);
      v18 = v17;
      v20 = *(this + 1);
      v19 = *(this + 2);
      if (v20 >= v19)
      {
        v22 = *this;
        v23 = v20 - *this;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v26 = v19 - v22;
        if (v26 >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v27 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v27);
        }

        *(4 * v24) = v18;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v28 = *this;
        *this = 0;
        *(this + 1) = v21;
        *(this + 2) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = v17;
        v21 = (v20 + 1);
      }

      *(this + 1) = v21;
      v5 += 40;
    }

    while (v6 != v5);
  }
}

BOOL GenericVaryingAllocator::getVaryingSignature(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v19 = *(a1 + 32);
    std::__introsort<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,false>(*(a1 + 24), *(a1 + 24) + (v4 << 6), 126 - 2 * __clz(v4), 1);
    v21 = 0;
    v22 = xmmword_20E70C4D0;
    v23 = 0u;
    *v24 = 0u;
    v25 = 0;
    v26 = 1;
    v27 = 256;
    v28 = 0;
    v8 = *(a1 + 32);
    v20 = 0;
    if (v8)
    {
      v9 = *(a1 + 24);
      v12 = *(v9 + 24);
      v10 = v9 + 24;
      v11 = v12;
      v13 = *(v10 + 23);
      if (v13 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      if (v13 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = *(v10 + 8);
      }

      flatbuffers::FlatBufferBuilder::CreateString(&v20, v14, v15);
      operator new();
    }

    *a3 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(a2, *v24, (v23 - v24[0] + DWORD2(v23)));
    flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v20);
    v20 = 0;
    v21 = 0;
    v22 = xmmword_20E70C4D0;
    v23 = 0u;
    *v24 = 0u;
    v25 = 0;
    v26 = 1;
    v27 = 256;
    v28 = 0;
    if (*(a1 + 32))
    {
      v16 = *(*(a1 + 24) + 4);
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *a4 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(a2, 0, 0);
    flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v20);
    LODWORD(v4) = v19;
  }

  return v4 != 0;
}

void std::__introsort<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v334 = *MEMORY[0x277D85DE8];
LABEL_2:
  v303 = a2 - 128;
  v304 = (a2 - 64);
  v302 = a2 - 192;
  v308 = (a2 - 40);
  v310 = a2;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 6;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        goto LABEL_519;
      }

      if (v8 == 2)
      {
        v129 = *(v7 + 47);
        v132 = *(a2 - 40);
        v131 = a2 - 40;
        v130 = v132;
        v133 = *(v131 + 23);
        if (v133 >= 0)
        {
          v134 = *(v131 + 23);
        }

        else
        {
          v134 = *(v131 + 8);
        }

        if (v133 >= 0)
        {
          v135 = v131;
        }

        else
        {
          v135 = v130;
        }

        if (v129 >= 0)
        {
          v136 = *(v7 + 47);
        }

        else
        {
          v136 = *(v7 + 32);
        }

        if (v129 >= 0)
        {
          v137 = (v7 + 24);
        }

        else
        {
          v137 = *(v7 + 24);
        }

        if (v136 >= v134)
        {
          v138 = v134;
        }

        else
        {
          v138 = v136;
        }

        v139 = memcmp(v135, v137, v138);
        v140 = v134 < v136;
        if (v139)
        {
          v140 = v139 < 0;
        }

        if (v140)
        {
          v141 = *MEMORY[0x277D85DE8];

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v7, v304);
          return;
        }

LABEL_519:
        v301 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      v143 = *MEMORY[0x277D85DE8];

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v7, v7 + 64, v7 + 128, v304);
      return;
    }

    if (v8 == 5)
    {
      v128 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v7, v7 + 64, v7 + 128, v7 + 192, v304);
      return;
    }

LABEL_10:
    if (v8 <= 23)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v144 = v7 + 64;
          if (v7 + 64 != a2)
          {
            v145 = 0;
            v146 = v7;
            do
            {
              v147 = (v146 + 88);
              v148 = v144;
              v149 = *(v146 + 47);
              v150 = *(v146 + 111);
              if (v150 >= 0)
              {
                v151 = *(v146 + 111);
              }

              else
              {
                v151 = *(v146 + 96);
              }

              if (v150 >= 0)
              {
                v152 = (v146 + 88);
              }

              else
              {
                v152 = *(v146 + 88);
              }

              if (v149 >= 0)
              {
                v153 = *(v146 + 47);
              }

              else
              {
                v153 = *(v146 + 32);
              }

              if (v149 >= 0)
              {
                v154 = (v146 + 24);
              }

              else
              {
                v154 = *(v146 + 24);
              }

              if (v153 >= v151)
              {
                v155 = v151;
              }

              else
              {
                v155 = v153;
              }

              v156 = memcmp(v152, v154, v155);
              v157 = v151 < v153;
              if (v156)
              {
                v157 = v156 < 0;
              }

              if (v157)
              {
                v327 = *(v148 + 16);
                v320 = *v148;
                v332 = *(v146 + 104);
                v331 = *v147;
                *v147 = 0;
                *(v146 + 96) = 0;
                *(v146 + 104) = 0;
                v333 = *(v146 + 112);
                if (SHIBYTE(v332) >= 0)
                {
                  v158 = HIBYTE(v332);
                }

                else
                {
                  v158 = *(&v331 + 1);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v159 = &v331;
                }

                else
                {
                  v159 = v331;
                }

                v160 = v145;
                while (1)
                {
                  v161 = a1 + v160;
                  *(v161 + 64) = *(a1 + v160);
                  *(v161 + 80) = *(a1 + v160 + 16);
                  if (*(a1 + v160 + 111) < 0)
                  {
                    operator delete(*(v161 + 88));
                  }

                  *(v161 + 88) = *(v161 + 24);
                  *(v161 + 104) = *(v161 + 40);
                  *(v161 + 47) = 0;
                  *(v161 + 24) = 0;
                  *(v161 + 112) = *(v161 + 48);
                  if (!v160)
                  {
                    break;
                  }

                  v162 = a1 + v160;
                  v163 = *(a1 + v160 - 17);
                  if (v163 >= 0)
                  {
                    v164 = *(a1 + v160 - 17);
                  }

                  else
                  {
                    v164 = *(a1 + v160 - 32);
                  }

                  if (v163 >= 0)
                  {
                    v165 = (a1 + v160 - 40);
                  }

                  else
                  {
                    v165 = *(a1 + v160 - 40);
                  }

                  if (v164 >= v158)
                  {
                    v166 = v158;
                  }

                  else
                  {
                    v166 = v164;
                  }

                  v167 = memcmp(v159, v165, v166);
                  v168 = v158 < v164;
                  if (v167)
                  {
                    v168 = v167 < 0;
                  }

                  v160 -= 64;
                  if (!v168)
                  {
                    v169 = v162 + 24;
                    v170 = (v162 + 48);
                    v171 = a1 + v160 + 64;
                    goto LABEL_294;
                  }
                }

                v169 = a1 + 24;
                v170 = (a1 + 48);
                v171 = a1;
LABEL_294:
                *(v171 + 16) = v327;
                *v171 = v320;
                if (*(v171 + 47) < 0)
                {
                  operator delete(*v169);
                }

                v172 = v331;
                *(v169 + 16) = v332;
                *v169 = v172;
                *v170 = v333;
              }

              v144 = v148 + 64;
              v145 += 64;
              v146 = v148;
            }

            while (v148 + 64 != v310);
          }
        }
      }

      else if (v7 != a2)
      {
        v277 = v7 + 64;
        if (v7 + 64 != a2)
        {
          v278 = v7 - 40;
          do
          {
            v279 = (a1 + 88);
            v280 = v277;
            v281 = *(a1 + 47);
            v282 = *(a1 + 111);
            if (v282 >= 0)
            {
              v283 = *(a1 + 111);
            }

            else
            {
              v283 = *(a1 + 96);
            }

            if (v282 >= 0)
            {
              v284 = (a1 + 88);
            }

            else
            {
              v284 = *(a1 + 88);
            }

            if (v281 >= 0)
            {
              v285 = *(a1 + 47);
            }

            else
            {
              v285 = *(a1 + 32);
            }

            if (v281 >= 0)
            {
              v286 = (a1 + 24);
            }

            else
            {
              v286 = *(a1 + 24);
            }

            if (v285 >= v283)
            {
              v287 = v283;
            }

            else
            {
              v287 = v285;
            }

            v288 = memcmp(v284, v286, v287);
            v289 = v283 < v285;
            if (v288)
            {
              v289 = v288 < 0;
            }

            if (v289)
            {
              v330 = *(v280 + 16);
              v323 = *v280;
              v332 = *(a1 + 104);
              v331 = *v279;
              *v279 = 0;
              *(a1 + 96) = 0;
              *(a1 + 104) = 0;
              v333 = *(a1 + 112);
              if (SHIBYTE(v332) >= 0)
              {
                v290 = HIBYTE(v332);
              }

              else
              {
                v290 = *(&v331 + 1);
              }

              if (SHIBYTE(v332) >= 0)
              {
                v291 = &v331;
              }

              else
              {
                v291 = v331;
              }

              v292 = v278;
              do
              {
                v293 = v292;
                *(v292 + 13) = *(v292 + 5);
                *(v292 + 30) = *(v292 + 14);
                if (*(v292 + 151) < 0)
                {
                  operator delete(v292[16]);
                }

                *(v293 + 8) = *(v293 + 4);
                v293[18] = v293[10];
                *(v293 + 87) = 0;
                *(v293 + 64) = 0;
                *(v293 + 19) = *(v293 + 11);
                v294 = *(v293 + 23);
                if (v294 >= 0)
                {
                  v295 = *(v293 + 23);
                }

                else
                {
                  v295 = v293[1];
                }

                if (v294 >= 0)
                {
                  v296 = v293;
                }

                else
                {
                  v296 = *v293;
                }

                if (v295 >= v290)
                {
                  v297 = v290;
                }

                else
                {
                  v297 = v295;
                }

                v298 = memcmp(v291, v296, v297);
                v299 = v298 < 0;
                if (!v298)
                {
                  v299 = v290 < v295;
                }

                v292 = v293 - 8;
              }

              while (v299);
              *(v293 + 14) = v330;
              *(v293 + 5) = v323;
              if (*(v293 + 87) < 0)
              {
                operator delete(v293[8]);
              }

              v300 = v331;
              v293[10] = v332;
              *(v293 + 4) = v300;
              *(v293 + 11) = v333;
            }

            v277 = v280 + 64;
            v278 += 64;
            a1 = v280;
          }

          while (v280 + 64 != v310);
        }
      }

      goto LABEL_519;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v173 = v9 >> 1;
        v174 = v9 >> 1;
        do
        {
          v175 = v174;
          if (v173 >= v174)
          {
            v176 = (2 * v174) | 1;
            v177 = a1 + (v176 << 6);
            if (2 * v174 + 2 < v8)
            {
              v178 = *(v177 + 111);
              v179 = *(v177 + 47);
              if (v179 >= 0)
              {
                v180 = *(v177 + 47);
              }

              else
              {
                v180 = *(v177 + 32);
              }

              if (v179 >= 0)
              {
                v181 = (v177 + 24);
              }

              else
              {
                v181 = *(v177 + 24);
              }

              if (v178 >= 0)
              {
                v182 = *(v177 + 111);
              }

              else
              {
                v182 = *(v177 + 96);
              }

              if (v178 >= 0)
              {
                v183 = (v177 + 88);
              }

              else
              {
                v183 = *(v177 + 88);
              }

              if (v182 >= v180)
              {
                v184 = v180;
              }

              else
              {
                v184 = v182;
              }

              v185 = memcmp(v181, v183, v184);
              v186 = v180 < v182;
              if (v185)
              {
                v186 = v185 < 0;
              }

              v187 = !v186;
              v188 = 64;
              if (v187)
              {
                v188 = 0;
              }

              v177 += v188;
              if (!v187)
              {
                v176 = 2 * v175 + 2;
              }
            }

            v189 = a1 + (v175 << 6);
            v190 = (v189 + 24);
            v191 = *(v189 + 47);
            v192 = *(v177 + 47);
            if (v192 >= 0)
            {
              v193 = *(v177 + 47);
            }

            else
            {
              v193 = *(v177 + 32);
            }

            if (v192 >= 0)
            {
              v194 = (v177 + 24);
            }

            else
            {
              v194 = *(v177 + 24);
            }

            if (v191 >= 0)
            {
              v195 = *(v189 + 47);
            }

            else
            {
              v195 = *(v189 + 32);
            }

            if (v191 >= 0)
            {
              v196 = (v189 + 24);
            }

            else
            {
              v196 = *(v189 + 24);
            }

            if (v195 >= v193)
            {
              v197 = v193;
            }

            else
            {
              v197 = v195;
            }

            v198 = memcmp(v194, v196, v197);
            v199 = v193 < v195;
            if (v198)
            {
              v199 = v198 < 0;
            }

            if (!v199)
            {
              v328 = *(v189 + 16);
              v321 = *v189;
              v200 = *v190;
              v332 = *(v189 + 40);
              v331 = v200;
              *(v189 + 32) = 0;
              *(v189 + 40) = 0;
              *v190 = 0;
              v333 = *(v189 + 48);
              do
              {
                v201 = v177;
                v202 = *v177;
                *(v189 + 16) = *(v177 + 16);
                *v189 = v202;
                if (*(v189 + 47) < 0)
                {
                  operator delete(*(v189 + 24));
                }

                v203 = *(v177 + 24);
                *(v189 + 40) = *(v177 + 40);
                *(v189 + 24) = v203;
                *(v177 + 47) = 0;
                *(v177 + 24) = 0;
                *(v189 + 48) = *(v177 + 48);
                if (v173 < v176)
                {
                  break;
                }

                v204 = (2 * v176) | 1;
                v177 = a1 + (v204 << 6);
                v205 = 2 * v176 + 2;
                if (v205 < v8)
                {
                  v206 = *(v177 + 111);
                  v207 = *(v177 + 47);
                  if (v207 >= 0)
                  {
                    v208 = *(v177 + 47);
                  }

                  else
                  {
                    v208 = *(v177 + 32);
                  }

                  if (v207 >= 0)
                  {
                    v209 = (v177 + 24);
                  }

                  else
                  {
                    v209 = *(v177 + 24);
                  }

                  if (v206 >= 0)
                  {
                    v210 = *(v177 + 111);
                  }

                  else
                  {
                    v210 = *(v177 + 96);
                  }

                  if (v206 >= 0)
                  {
                    v211 = (v177 + 88);
                  }

                  else
                  {
                    v211 = *(v177 + 88);
                  }

                  if (v210 >= v208)
                  {
                    v212 = v208;
                  }

                  else
                  {
                    v212 = v210;
                  }

                  v213 = memcmp(v209, v211, v212);
                  v214 = v208 < v210;
                  if (v213)
                  {
                    v214 = v213 < 0;
                  }

                  v215 = !v214;
                  v216 = 64;
                  if (v215)
                  {
                    v216 = 0;
                  }

                  v177 += v216;
                  if (!v215)
                  {
                    v204 = v205;
                  }
                }

                v217 = *(v177 + 47);
                if (v217 >= 0)
                {
                  v218 = *(v177 + 47);
                }

                else
                {
                  v218 = *(v177 + 32);
                }

                if (v217 >= 0)
                {
                  v219 = (v177 + 24);
                }

                else
                {
                  v219 = *(v177 + 24);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v220 = HIBYTE(v332);
                }

                else
                {
                  v220 = *(&v331 + 1);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v221 = &v331;
                }

                else
                {
                  v221 = v331;
                }

                if (v220 >= v218)
                {
                  v222 = v218;
                }

                else
                {
                  v222 = v220;
                }

                v223 = memcmp(v219, v221, v222);
                v224 = v218 < v220;
                if (v223)
                {
                  v224 = v223 < 0;
                }

                v189 = v201;
                v176 = v204;
              }

              while (!v224);
              *(v201 + 16) = v328;
              *v201 = v321;
              if (*(v201 + 47) < 0)
              {
                operator delete(*(v201 + 24));
              }

              v225 = v331;
              *(v201 + 40) = v332;
              *(v201 + 24) = v225;
              *(v201 + 48) = v333;
            }
          }

          v174 = v175 - 1;
        }

        while (v175);
        v226 = v310;
        do
        {
          v227 = 0;
          v305 = v226;
          v316 = *(a1 + 16);
          v315 = *a1;
          v307 = *(a1 + 24);
          *v313 = *(a1 + 32);
          *&v313[7] = *(a1 + 39);
          v309 = *(a1 + 47);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 24) = 0;
          v228 = a1;
          v312 = *(a1 + 48);
          do
          {
            v229 = v228 + (v227 << 6);
            v230 = v229 + 64;
            v231 = (2 * v227) | 1;
            v227 = 2 * v227 + 2;
            if (v227 >= v8)
            {
              v227 = v231;
            }

            else
            {
              v234 = *(v229 + 88);
              v233 = v229 + 88;
              v232 = v234;
              v235 = *(v233 + 87);
              v236 = *(v233 + 23);
              if (v236 >= 0)
              {
                v237 = *(v233 + 23);
              }

              else
              {
                v237 = *(v233 + 8);
              }

              if (v236 >= 0)
              {
                v238 = v233;
              }

              else
              {
                v238 = v232;
              }

              if (v235 >= 0)
              {
                v239 = *(v233 + 87);
              }

              else
              {
                v239 = *(v233 + 72);
              }

              if (v235 >= 0)
              {
                v240 = (v233 + 64);
              }

              else
              {
                v240 = *(v233 + 64);
              }

              if (v239 >= v237)
              {
                v241 = v237;
              }

              else
              {
                v241 = v239;
              }

              v242 = memcmp(v238, v240, v241);
              v243 = v237 < v239;
              if (v242)
              {
                v243 = v242 < 0;
              }

              if (v243)
              {
                v230 = v233 + 40;
              }

              else
              {
                v227 = v231;
              }
            }

            v244 = *v230;
            *(v228 + 16) = *(v230 + 16);
            *v228 = v244;
            if (*(v228 + 47) < 0)
            {
              operator delete(*(v228 + 24));
            }

            v245 = *(v230 + 24);
            *(v228 + 40) = *(v230 + 40);
            *(v228 + 24) = v245;
            *(v230 + 47) = 0;
            *(v230 + 24) = 0;
            *(v228 + 48) = *(v230 + 48);
            v228 = v230;
          }

          while (v227 <= ((v8 - 2) >> 1));
          v246 = (v230 + 24);
          v247 = (v305 - 64);
          if (v230 == v305 - 64)
          {
            *(v230 + 16) = v316;
            *v230 = v315;
            if (*(v230 + 47) < 0)
            {
              operator delete(*v246);
            }

            *(v230 + 24) = v307;
            *(v230 + 32) = *v313;
            *(v230 + 39) = *&v313[7];
            *(v230 + 47) = v309;
            *(v230 + 48) = v312;
          }

          else
          {
            v248 = *v247;
            *(v230 + 16) = *(v305 - 48);
            *v230 = v248;
            if (*(v230 + 47) < 0)
            {
              operator delete(*v246);
            }

            v249 = *(v305 - 40);
            *(v230 + 40) = *(v305 - 24);
            *v246 = v249;
            *(v305 - 17) = 0;
            *(v305 - 40) = 0;
            *(v230 + 48) = *(v305 - 16);
            *(v305 - 48) = v316;
            *v247 = v315;
            if (*(v305 - 17) < 0)
            {
              operator delete(*(v305 - 40));
            }

            *(v305 - 40) = v307;
            *(v305 - 25) = *&v313[7];
            *(v305 - 32) = *v313;
            *(v305 - 17) = v309;
            *(v305 - 16) = v312;
            v250 = (v230 + 64 - a1) >> 6;
            v251 = v250 < 2;
            v252 = v250 - 2;
            if (!v251)
            {
              v253 = v252 >> 1;
              v254 = a1 + (v252 >> 1 << 6);
              v255 = *(v230 + 47);
              v256 = *(v254 + 47);
              if (v256 >= 0)
              {
                v257 = *(v254 + 47);
              }

              else
              {
                v257 = *(v254 + 32);
              }

              if (v256 >= 0)
              {
                v258 = (v254 + 24);
              }

              else
              {
                v258 = *(v254 + 24);
              }

              if (v255 >= 0)
              {
                v259 = *(v230 + 47);
              }

              else
              {
                v259 = *(v230 + 32);
              }

              if (v255 >= 0)
              {
                v260 = (v230 + 24);
              }

              else
              {
                v260 = *(v230 + 24);
              }

              if (v259 >= v257)
              {
                v261 = v257;
              }

              else
              {
                v261 = v259;
              }

              v262 = memcmp(v258, v260, v261);
              v263 = v257 < v259;
              if (v262)
              {
                v263 = v262 < 0;
              }

              if (v263)
              {
                v329 = *(v230 + 16);
                v322 = *v230;
                v264 = *(v230 + 40);
                v331 = *v246;
                v332 = v264;
                *(v230 + 32) = 0;
                *(v230 + 40) = 0;
                *v246 = 0;
                v333 = *(v230 + 48);
                if (SHIBYTE(v332) >= 0)
                {
                  v265 = HIBYTE(v332);
                }

                else
                {
                  v265 = *(&v331 + 1);
                }

                if (SHIBYTE(v332) >= 0)
                {
                  v266 = &v331;
                }

                else
                {
                  v266 = v331;
                }

                do
                {
                  v267 = v254;
                  v268 = *v254;
                  *(v230 + 16) = *(v254 + 16);
                  *v230 = v268;
                  if (*(v230 + 47) < 0)
                  {
                    operator delete(*(v230 + 24));
                  }

                  v269 = *(v254 + 24);
                  *(v230 + 40) = *(v254 + 40);
                  *(v230 + 24) = v269;
                  *(v254 + 47) = 0;
                  *(v254 + 24) = 0;
                  *(v230 + 48) = *(v254 + 48);
                  if (!v253)
                  {
                    break;
                  }

                  v253 = (v253 - 1) >> 1;
                  v254 = a1 + (v253 << 6);
                  v270 = *(v254 + 47);
                  if (v270 >= 0)
                  {
                    v271 = *(v254 + 47);
                  }

                  else
                  {
                    v271 = *(v254 + 32);
                  }

                  if (v270 >= 0)
                  {
                    v272 = (v254 + 24);
                  }

                  else
                  {
                    v272 = *(v254 + 24);
                  }

                  if (v265 >= v271)
                  {
                    v273 = v271;
                  }

                  else
                  {
                    v273 = v265;
                  }

                  v274 = memcmp(v272, v266, v273);
                  v275 = v271 < v265;
                  if (v274)
                  {
                    v275 = v274 < 0;
                  }

                  v230 = v267;
                }

                while (v275);
                *(v267 + 16) = v329;
                *v267 = v322;
                if (*(v267 + 47) < 0)
                {
                  operator delete(*(v267 + 24));
                }

                v276 = v331;
                *(v267 + 40) = v332;
                *(v267 + 24) = v276;
                *(v267 + 48) = v333;
              }
            }
          }

          v251 = v8-- <= 2;
          v226 = v305 - 64;
        }

        while (!v251);
      }

      goto LABEL_519;
    }

    v10 = v7 + (v8 >> 1 << 6);
    if (v8 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1 + (v8 >> 1 << 6), a1, v304);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + (v8 >> 1 << 6), v304);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1 + 64, v10 - 64, v303);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1 + 128, v10 + 64, v302);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v10 - 64, a1 + (v8 >> 1 << 6), v10 + 64);
      v324 = *(a1 + 16);
      v317 = *a1;
      *(&v311 + 7) = *(a1 + 39);
      v11 = *(a1 + 24);
      *&v311 = *(a1 + 32);
      v12 = *(a1 + 47);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v314 = *(a1 + 48);
      v13 = *v10;
      *(a1 + 16) = *(v10 + 16);
      *a1 = v13;
      v14 = *(v10 + 24);
      *(a1 + 40) = *(v10 + 40);
      *(a1 + 24) = v14;
      *(a1 + 48) = *(v10 + 48);
      *(v10 + 16) = v324;
      *v10 = v317;
      *(v10 + 24) = v11;
      *(v10 + 39) = *(&v311 + 7);
      *(v10 + 32) = v311;
      *(v10 + 47) = v12;
      *(v10 + 48) = v314;
    }

    --a3;
    if (a4)
    {
      goto LABEL_34;
    }

    v15 = *(a1 + 47);
    v16 = *(a1 - 17);
    if (v16 >= 0)
    {
      v17 = (a1 - 40);
    }

    else
    {
      v17 = *(a1 - 40);
    }

    v19 = (a1 + 24);
    v18 = *(a1 + 24);
    if (v16 >= 0)
    {
      v20 = *(a1 - 17);
    }

    else
    {
      v20 = *(a1 - 32);
    }

    if (v15 >= 0)
    {
      v21 = *(a1 + 47);
    }

    else
    {
      v21 = *(a1 + 32);
    }

    if (v15 >= 0)
    {
      v22 = (a1 + 24);
    }

    else
    {
      v22 = *(a1 + 24);
    }

    if (v21 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v17, v22, v23);
    v25 = v20 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
LABEL_34:
      v26 = 0;
      v325 = *(a1 + 16);
      v318 = *a1;
      v27 = *(a1 + 40);
      v331 = *(a1 + 24);
      v332 = v27;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v333 = *(a1 + 48);
      if (SHIBYTE(v332) >= 0)
      {
        v28 = HIBYTE(v332);
      }

      else
      {
        v28 = *(&v331 + 1);
      }

      if (SHIBYTE(v332) >= 0)
      {
        v29 = &v331;
      }

      else
      {
        v29 = v331;
      }

      do
      {
        v30 = *(a1 + v26 + 111);
        if (v30 >= 0)
        {
          v31 = *(a1 + v26 + 111);
        }

        else
        {
          v31 = *(a1 + v26 + 96);
        }

        if (v30 >= 0)
        {
          v32 = (a1 + v26 + 88);
        }

        else
        {
          v32 = *(a1 + v26 + 88);
        }

        if (v28 >= v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v28;
        }

        v34 = memcmp(v32, v29, v33);
        v35 = v31 < v28;
        if (v34)
        {
          v35 = v34 < 0;
        }

        v26 += 64;
      }

      while (v35);
      v36 = a1 + v26;
      v37 = a1 + v26 - 64;
      v38 = v308;
      if (v37 == a1)
      {
        v38 = v308;
        while (1)
        {
          v45 = (v38 + 5);
          if (v36 >= (v38 + 5))
          {
            break;
          }

          v46 = *(v38 + 23);
          if (v46 >= 0)
          {
            v47 = *(v38 + 23);
          }

          else
          {
            v47 = v38[1];
          }

          if (v46 >= 0)
          {
            v48 = v38;
          }

          else
          {
            v48 = *v38;
          }

          if (v28 >= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v28;
          }

          v50 = memcmp(v48, v29, v49);
          v51 = v47 < v28;
          if (v50)
          {
            v51 = v50 < 0;
          }

          v38 -= 8;
          if (v51)
          {
            goto LABEL_80;
          }
        }
      }

      else
      {
        do
        {
          v39 = *(v38 + 23);
          if (v39 >= 0)
          {
            v40 = *(v38 + 23);
          }

          else
          {
            v40 = v38[1];
          }

          if (v39 >= 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = *v38;
          }

          if (v28 >= v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = v28;
          }

          v43 = memcmp(v41, v29, v42);
          v44 = v40 < v28;
          if (v43)
          {
            v44 = v43 < 0;
          }

          v38 -= 8;
        }

        while (!v44);
LABEL_80:
        v45 = (v38 + 5);
      }

      v7 = v36;
      if (v36 < v45)
      {
        v52 = v45;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v7, v52);
          v53 = v7 + 88;
          do
          {
            v54 = v53;
            v55 = *(v53 + 23);
            if ((v55 & 0x80u) == 0)
            {
              v56 = v55;
            }

            else
            {
              v56 = v54[1];
            }

            if ((v55 & 0x80u) == 0)
            {
              v57 = v54;
            }

            else
            {
              v57 = *v54;
            }

            if (v28 >= v56)
            {
              v58 = v56;
            }

            else
            {
              v58 = v28;
            }

            v59 = memcmp(v57, v29, v58);
            v60 = v59 < 0;
            if (!v59)
            {
              v60 = v56 < v28;
            }

            v53 = (v54 + 8);
          }

          while (v60);
          v7 = (v54 - 3);
          v61 = v52 - 5;
          do
          {
            v62 = v61;
            v63 = *(v61 + 23);
            if ((v63 & 0x80u) == 0)
            {
              v64 = v63;
            }

            else
            {
              v64 = v62[1];
            }

            if ((v63 & 0x80u) == 0)
            {
              v65 = v62;
            }

            else
            {
              v65 = *v62;
            }

            if (v28 >= v64)
            {
              v66 = v64;
            }

            else
            {
              v66 = v28;
            }

            v67 = memcmp(v65, v29, v66);
            v68 = v67 < 0;
            if (!v67)
            {
              v68 = v64 < v28;
            }

            v61 = v62 - 8;
          }

          while (!v68);
          v52 = (v62 - 3);
        }

        while (v7 < (v62 - 3));
      }

      v69 = (v7 - 64);
      if (v7 - 64 != a1)
      {
        v70 = *v69;
        *(a1 + 16) = *(v7 - 48);
        *a1 = v70;
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v71 = *(v7 - 40);
        *(a1 + 40) = *(v7 - 24);
        *(a1 + 24) = v71;
        *(v7 - 17) = 0;
        *(v7 - 40) = 0;
        *(a1 + 48) = *(v7 - 16);
      }

      *(v7 - 48) = v325;
      *v69 = v318;
      v72 = (v7 - 40);
      if (*(v7 - 17) < 0)
      {
        operator delete(*v72);
      }

      v73 = v331;
      *(v7 - 24) = v332;
      *v72 = v73;
      *(v7 - 16) = v333;
      a2 = v310;
      if (v36 < v45)
      {
        goto LABEL_119;
      }

      v74 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *>(a1, v7 - 64);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *>(v7, v310))
      {
        a2 = v7 - 64;
        if (!v74)
        {
          goto LABEL_2;
        }

        goto LABEL_519;
      }

      if (!v74)
      {
LABEL_119:
        std::__introsort<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,false>(a1, v7 - 64, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v326 = *(a1 + 16);
      v319 = *a1;
      v75 = *(a1 + 40);
      v331 = *v19;
      v332 = v75;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *v19 = 0;
      v333 = *(a1 + 48);
      v76 = *(a2 - 17);
      if (SHIBYTE(v332) >= 0)
      {
        v77 = HIBYTE(v332);
      }

      else
      {
        v77 = *(&v331 + 1);
      }

      if (SHIBYTE(v332) >= 0)
      {
        v78 = &v331;
      }

      else
      {
        v78 = v331;
      }

      if (v76 >= 0)
      {
        v79 = *(a2 - 17);
      }

      else
      {
        v79 = *(a2 - 32);
      }

      if (v76 >= 0)
      {
        v80 = v308;
      }

      else
      {
        v80 = *(a2 - 40);
      }

      if (v79 >= v77)
      {
        v81 = v77;
      }

      else
      {
        v81 = v79;
      }

      v82 = memcmp(v78, v80, v81);
      v83 = v77 < v79;
      if (v82)
      {
        v83 = v82 < 0;
      }

      if (v83)
      {
        v84 = (a1 + 88);
        do
        {
          v85 = *(v84 + 23);
          if (v85 >= 0)
          {
            v86 = *(v84 + 23);
          }

          else
          {
            v86 = v84[1];
          }

          if (v85 >= 0)
          {
            v87 = v84;
          }

          else
          {
            v87 = *v84;
          }

          if (v86 >= v77)
          {
            v88 = v77;
          }

          else
          {
            v88 = v86;
          }

          v89 = memcmp(v78, v87, v88);
          v90 = v77 < v86;
          if (v89)
          {
            v90 = v89 < 0;
          }

          v84 += 8;
        }

        while (!v90);
        v7 = (v84 - 11);
      }

      else
      {
        v91 = a1 + 64;
        do
        {
          v7 = v91;
          if (v91 >= v310)
          {
            break;
          }

          v92 = *(v91 + 24);
          v93 = *(v7 + 47);
          if (v93 >= 0)
          {
            v94 = *(v7 + 47);
          }

          else
          {
            v94 = *(v7 + 32);
          }

          if (v93 >= 0)
          {
            v95 = (v7 + 24);
          }

          else
          {
            v95 = *(v7 + 24);
          }

          if (v94 >= v77)
          {
            v96 = v77;
          }

          else
          {
            v96 = v94;
          }

          v97 = memcmp(v78, v95, v96);
          v98 = v97 < 0;
          if (!v97)
          {
            v98 = v77 < v94;
          }

          v91 = v7 + 64;
        }

        while (!v98);
      }

      v99 = v310;
      if (v7 < v310)
      {
        v100 = v308;
        do
        {
          v101 = *(v100 + 23);
          if (v101 >= 0)
          {
            v102 = *(v100 + 23);
          }

          else
          {
            v102 = v100[1];
          }

          if (v101 >= 0)
          {
            v103 = v100;
          }

          else
          {
            v103 = *v100;
          }

          if (v102 >= v77)
          {
            v104 = v77;
          }

          else
          {
            v104 = v102;
          }

          v105 = memcmp(v78, v103, v104);
          v106 = v77 < v102;
          if (v105)
          {
            v106 = v105 < 0;
          }

          v100 -= 8;
        }

        while (v106);
        v99 = (v100 + 5);
      }

      while (v7 < v99)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v7, v99);
        v107 = v7 + 88;
        do
        {
          v108 = v107;
          v109 = *(v107 + 23);
          if ((v109 & 0x80u) == 0)
          {
            v110 = v109;
          }

          else
          {
            v110 = v108[1];
          }

          if ((v109 & 0x80u) == 0)
          {
            v111 = v108;
          }

          else
          {
            v111 = *v108;
          }

          if (v110 >= v77)
          {
            v112 = v77;
          }

          else
          {
            v112 = v110;
          }

          v113 = memcmp(v78, v111, v112);
          v114 = v113 < 0;
          if (!v113)
          {
            v114 = v77 < v110;
          }

          v107 = (v108 + 8);
        }

        while (!v114);
        v7 = (v108 - 3);
        v115 = v99 - 5;
        do
        {
          v116 = v115;
          v117 = *(v115 + 23);
          if ((v117 & 0x80u) == 0)
          {
            v118 = v117;
          }

          else
          {
            v118 = v116[1];
          }

          if ((v117 & 0x80u) == 0)
          {
            v119 = v116;
          }

          else
          {
            v119 = *v116;
          }

          if (v118 >= v77)
          {
            v120 = v77;
          }

          else
          {
            v120 = v118;
          }

          v121 = memcmp(v78, v119, v120);
          v122 = v121 < 0;
          if (!v121)
          {
            v122 = v77 < v118;
          }

          v115 = v116 - 8;
        }

        while (v122);
        v99 = (v116 - 3);
      }

      v123 = (v7 - 64);
      a2 = v310;
      if (v7 - 64 != a1)
      {
        v124 = *v123;
        *(a1 + 16) = *(v7 - 48);
        *a1 = v124;
        if (*(a1 + 47) < 0)
        {
          operator delete(*v19);
        }

        v125 = *(v7 - 40);
        *(a1 + 40) = *(v7 - 24);
        *v19 = v125;
        *(v7 - 17) = 0;
        *(v7 - 40) = 0;
        *(a1 + 48) = *(v7 - 16);
      }

      *(v7 - 48) = v326;
      *v123 = v319;
      v126 = (v7 - 40);
      if (*(v7 - 17) < 0)
      {
        operator delete(*v126);
      }

      a4 = 0;
      v127 = v331;
      *(v7 - 24) = v332;
      *v126 = v127;
      *(v7 - 16) = v333;
    }
  }

  v142 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v7, v7 + 64, v304);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, unint64_t a3)
{
  *(a1 + 70) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, a3, 1uLL);
  flatbuffers::vector_downward::push(a1, a2, a3);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3)
{
  *(this + 7) = *(this + 5);
  flatbuffers::FlatBufferBuilder::PreAlign(this, 4, *(this + 9));
  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  *(this + 71) = 1;
  return result;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v2 + 8));
    MEMORY[0x20F331DC0](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      v4 = *(this + 4);
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x20F331DA0](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t AGCLLVMUserFragmentShader::constructFlatReply(AGCLLVMUserFragmentShader *this, uint64_t a2)
{
  v4 = this + *(*this - 24);
  if (*(v4 + 314))
  {
    v5 = v4 + 2512;
    if (!*(v4 + 315))
    {
      v5 = v4 + 3072;
    }
  }

  else
  {
    v5 = v4 + 3072;
  }

  v7 = *v5;
  v6 = *(v5 + 1);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v7 + *v7);
  }

  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v30 = 0;
  v13 = (v12 - *v12);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = AGCLLVMObject::extractPhaseOffsets(v4, v15, &v30);
  v17 = AGCLLVMFragmentShader::constructFlatReply((this + 4536));
  v19 = v18;
  v20 = (this + *(*this - 24));
  v21 = v20[271];
  if (v20[319])
  {
    v22 = v20 + 319;
    v23 = v20[320];
    v24 = v20 + 389;
    if (v23)
    {
      v24 = v22;
    }
  }

  else
  {
    v24 = v20 + 389;
  }

  v26 = v24;
  v25 = *v24;
  if (v26[1])
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = (*(*v21 + 632))(v21, a2, (1 << (BYTE1(*(*(this + 660) + 32)) & 3)), *(this + 6430), *(this + 6463), v27);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17, 4, v28, 0);
  if (v16)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v17, 10, v30);
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(v17, 12, *(this + 6436));

  return flatbuffers::FlatBufferBuilder::EndTable(v17, v19);
}

char *AGCLLVMFragmentShader::constructFlatReply(AGCLLVMFragmentShader *this)
{
  v2 = *this;
  v3 = this + *(*this - 24);
  if (*(v3 + 314))
  {
    v4 = v3 + 2512;
    if (!*(v3 + 315))
    {
      v4 = v3 + 3072;
    }
  }

  else
  {
    v4 = v3 + 3072;
  }

  v6 = *v4;
  v5 = *(v4 + 1);
  if (v6)
  {
    v7 = v5 == 0;
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
    v8 = (v6 + *v6);
  }

  v9 = (v8 - *v8);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
  }

  else
  {
    v11 = 0;
  }

  v3[4358] = 1;
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 < 0x11)
  {
    v14 = 0;
  }

  else
  {
    if (v12[8])
    {
      v14 = *(v11 + v12[8]);
    }

    else
    {
      v14 = 0;
    }

    if (v13 >= 0x15)
    {
      v15 = v12[10];
      if (v15)
      {
        v16 = *(v11 + v15);
        goto LABEL_25;
      }
    }
  }

  v16 = 0;
LABEL_25:
  v17 = *(v3 + 540);
  v18 = *(v3 + 542);
  v19 = *(v3 + 541);
  v20 = *(this + *(v2 - 24) + 2168);
  v21 = (*(*v20 + 584))(v20, *(this + 93), v14, v16);
  if (((*(*this + 32))(this) & 1) == 0)
  {
    v21 &= *(this + 95);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 536, 8, v21, 0);
  v22 = (v11 - *v11);
  v23 = *v22;
  if (v23 < 0xF)
  {
    v24 = 0;
  }

  else
  {
    if (v22[7])
    {
      v24 = *(v11 + v22[7]);
    }

    else
    {
      v24 = 0;
    }

    if (v23 >= 0x13)
    {
      v25 = v22[9];
      if (v25)
      {
        v26 = *(v11 + v25);
        goto LABEL_36;
      }
    }
  }

  v26 = 0;
LABEL_36:
  v27 = *(this + *(*this - 24) + 2168);
  v28 = (*(*v27 + 584))(v27, *(this + 93), v24, v26);
  if (((*(*this + 32))(this) & 1) == 0)
  {
    v28 &= *(this + 94);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 536, 6, v28, 0);
  return v3 + 4288;
}

uint64_t AGCLLVMGen3TargetLowerer::convertRegisterMaskToMRTMask(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __src = a4;
  std::bitset<128ul>::operator<<=[abi:nn200100](&__src, 0x40uLL);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *&__src = __src | a3;
  do
  {
    if ((*(a2 + 32) >> v7))
    {
      v11 = *(a2 + v8);
      if ((v11 & 0x1F) != 0x17)
      {
        v12 = (v11 & 0x1F) - 2;
        if (v12 > 0x14)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v13 = qword_20E716068[v12];
          v14 = qword_20E716260[v12];
          v15 = qword_20E7161B8[v12] | qword_20E716110[v12];
          v16 = v14 | v13;
        }

        v17.i64[0] = v15;
        v17.i64[1] = v16;
        v31 = v17;
        v18 = (v11 >> 12);
        if ((~v11 & 0xFF000) == 0)
        {
          v18 = 0;
        }

        v19 = (*(a1 + 964) * v18);
        __dst = __src;
        std::bitset<128ul>::operator>>=[abi:nn200100](&__dst, v19);
        __dst = __dst;
        v20 = std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](&__dst);
        v21 = vbicq_s8(xmmword_20E70C6D0, vceqzq_s32(v31));
        v22 = vbicq_s8(xmmword_20E70C6D0, vceqzq_s32(vandq_s8(vdupq_n_s32(v20), v31)));
        *v21.i8 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        v23 = -1 << (v11 >> 5);
        v24 = 1 << ((v11 >> 5) - 1);
        v25 = (v22.i32[0] | v22.i32[1]) & ~v23;
        v26 = (v21.i32[0] | v21.i32[1]) & ~v23;
        if ((v25 & v24) != 0)
        {
          v27 = (-1 << (v11 >> 5)) & 0xF;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27 | v25;
        if ((v26 & v24) != 0)
        {
          v29 = (-1 << (v11 >> 5)) & 0xF;
        }

        else
        {
          v29 = 0;
        }

        v9 |= (v28 << v8);
        v10 |= (v29 | v26) << v8;
      }
    }

    v8 += 4;
    ++v7;
  }

  while (v8 != 32);
  return v9;
}

void *std::bitset<128ul>::operator<<=[abi:nn200100](void *__src, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = 128;
  }

  else
  {
    v4 = a2;
  }

  v5 = 128 - v4;
  v6 = (128 - v4) >> 6;
  if (((128 - v4) & 0x3F) != 0)
  {
    if (a2 > 0x7F)
    {
LABEL_20:
      v21 = __src;
      v22 = 0;
      std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<2ul,128ul>>(&v21, v4);
      return __src;
    }

    v7 = &__src[v6];
    v8 = v5 & 0xC0;
    v9 = __src + 1;
    v10 = (((0xFFFFFFFFFFFFFFFFLL >> -((0x80 - v4) & 0x3F)) & *v7) << (v4 + 0x80)) | __src[1] & ~(-1 << (v4 + 0x80));
    __src[1] = v10;
    v11 = 64 - ((v4 + 0x80) & 0x3F);
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -((v4 + 0x80) & 0x3F);
    if (a2 > 0x40)
    {
      v16 = v5 & 0xC0;
    }

    else
    {
      do
      {
        v14 = *--v7;
        v13 = v14;
        *v9 = v10 & ~v12 | (v14 >> v11);
        v15 = *--v9;
        v10 = v15 & v12 | (v13 << ((v4 + 0x80) & 0x3F));
        *v9 = v10;
        v16 = v8 - 64;
        v17 = v8 > 0x7F;
        v8 -= 64;
      }

      while (v17);
    }

    if (v16 >= 1)
    {
      v18 = *(v7 - 1) & (-1 << -v16);
      if (v16 >= ((v4 - 128) & 0x3F))
      {
        v19 = (v4 - 128) & 0x3F;
      }

      else
      {
        v19 = v16;
      }

      *v9 = *v9 & ~((-1 << (((v4 + 0x80) & 0x3F) - v19)) & v12) | (v18 >> v11);
      if (v16 - v19 >= 1)
      {
        *(v9 - 1) = *(v9 - 1) & ~(-1 << (v19 - v16)) | (v18 << (v16 + ((v19 - v16) & 0x3F)));
      }
    }
  }

  else if (a2 <= 0x40 && (v5 | 0x3F) >= 0x7F)
  {
    memmove(&__src[-v6 + 2], __src, 8 * v6);
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return __src;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<2ul,128ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

char *std::bitset<128ul>::operator>>=[abi:nn200100](char *__dst, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = 128;
  }

  else
  {
    v4 = a2;
  }

  v5 = (v4 >> 3) & 0x18;
  v6 = &__dst[v5];
  v7 = v4 & 0x3F;
  if ((v4 & 0x3F) != 0)
  {
    if (a2 > 0x7F)
    {
LABEL_30:
      v33 = &__dst[((128 - v4) >> 3) & 0x18];
      v34 = (128 - v4) & 0x3F;
      std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<2ul,128ul>>(&v33, v4);
      return __dst;
    }

    v8 = v4 & 0x3F;
    v9 = 128 - ((8 * v5) | v4 & 0x3F);
    v10 = (64 - v7);
    if (v9 >= v10)
    {
      v11 = (64 - v7);
    }

    else
    {
      v11 = 128 - ((8 * v5) | v4 & 0x3F);
    }

    v12 = v9 - v11;
    v13 = (0xFFFFFFFFFFFFFFFFLL >> (v10 - v11)) & (-1 << v8) & *v6;
    if (v11 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = v11;
    }

    *__dst = *__dst & ~(0xFFFFFFFFFFFFFFFFLL >> -v14) | (v13 >> v8);
    v15 = v14 >> 6;
    v16 = &__dst[8 * (v14 >> 6)];
    v17 = v11 - v14;
    if (v17 < 1)
    {
      LODWORD(v17) = v14 & 0x3F;
    }

    else
    {
      *v16 = (v13 >> (v14 + v8)) | *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17);
    }

    v18 = (64 - v17);
    v19 = -1 << v17;
    v20 = v17;
    if (v12 < 64)
    {
      v28 = v6 + 8;
    }

    else
    {
      v21 = *v16;
      v22 = 8 * v15;
      v23 = __dst;
      do
      {
        v24 = v12;
        v25 = &v23[v22];
        v26 = *&v23[v5 + 8];
        v27 = v21 & ~v19 | (v26 << v20);
        v21 = *&v23[v22 + 8] & v19 | (v26 >> v18);
        *v25 = v27;
        *(v25 + 1) = v21;
        v12 = v24 - 64;
        v23 += 8;
      }

      while (v24 > 0x7F);
      v28 = &v23[v5 + 8];
      v16 = &v23[8 * v15];
    }

    if (v12 >= 1)
    {
      v29 = *v28 & (0xFFFFFFFFFFFFFFFFLL >> -v12);
      if (v12 >= v18)
      {
        v30 = v18;
      }

      else
      {
        v30 = v12;
      }

      *v16 = *v16 & ~((0xFFFFFFFFFFFFFFFFLL >> (v18 - v30)) & v19) | (v29 << v20);
      v31 = v12 - v30;
      if (v31 >= 1)
      {
        *&v16[((v30 + v20) >> 3) & 0x1FFFFFFFFFFFFFF8] = *&v16[((v30 + v20) >> 3) & 0x1FFFFFFFFFFFFFF8] & ~(0xFFFFFFFFFFFFFFFFLL >> -v31) | (v29 >> v30);
      }
    }
  }

  else if (a2 <= 0x7F && v5 <= 8)
  {
    memmove(__dst, v6, 16 - v5);
  }

  if (a2)
  {
    goto LABEL_30;
  }

  return __dst;
}

uint64_t std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](void *a1)
{
  if (!a1[1])
  {
    return *a1;
  }

  v2 = std::__throw_overflow_error[abi:nn200100]();
  return AGCLLVMGen3TargetLowerer::getDisableTriangleMerging(v2, v3, v4, v5, v6, v7);
}

BOOL AGCLLVMGen3TargetLowerer::getDisableTriangleMerging(AGCLLVMGen3TargetLowerer *this, char a2, unsigned int a3, int a4, char a5, const unsigned __int8 *a6)
{
  if (a3 > 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  result = 1;
  if ((v6 & 1) == 0 && (a5 & 1) == 0)
  {
    result = 0;
    if (a3 >= 2)
    {
      if (a4)
      {
        v8 = &a6[*a6 - *&a6[*a6]];
        return *v8 >= 5u && *(v8 + 2) != 0;
      }
    }
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 8, v4);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 4, v4);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLFragmentInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 14, v4);
  }

  return result;
}

uint64_t AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>(AGCTargetPrinter **a1, _DWORD *a2)
{
  result = AGCLLVMObjectBase::dumpShaderToFile(a1);
  if (result)
  {
    if (a2[8] - a2[12] + a2[10])
    {
      flatbuffers::IDLOptions::IDLOptions(v4);
      flatbuffers::Parser::Parser(v5, v4);
    }
  }

  return result;
}

void std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::SmallVector<GenericVarying,8u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 64 * v3 - 40;
    v5 = -64 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 64;
      v5 += 64;
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

uint64_t AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>(AGCTargetPrinter **a1, _DWORD *a2)
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

uint64_t AGCLLVMObject::composeCompilerReply(uint64_t a1, void *a2, AGCTargetPrinter *a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x277D85DE8];
  *(a4 + 24) = *(a1 + 2216);
  v9 = *(a1 + 2192);
  v10 = *(a1 + 2200);
  *(a1 + 4550) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((a1 + 4480), v10 - v9, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((a1 + 4480), v10 - v9, 4uLL);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::PerformanceNumber>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::PerformanceNumber>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::PerformanceNumber>> const&)::t;
  }

  else
  {
    v12 = v9;
  }

  if (v10 != v9)
  {
    v13 = v11 >> 2;
    v14 = v12 - 4;
    do
    {
      v15 = v13 - 1;
      v16 = *&v14[4 * v13];
      flatbuffers::FlatBufferBuilder::Align((a1 + 4480), 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1 + 4480, *(a1 + 4512) - *(a1 + 4528) + *(a1 + 4520) - v16 + 4);
      v13 = v15;
    }

    while (v15);
  }

  *(a1 + 4550) = 0;
  v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1 + 4480, v11 >> 2);
  v60[0] = 0;
  if (*(a1 + 2312))
  {
    v18 = a1 + 2312;
    if (!*(a1 + 2320))
    {
      v18 = a1 + 2872;
    }
  }

  else
  {
    v18 = a1 + 2872;
  }

  v19 = (*(**(a1 + 2168) + 520))(*(a1 + 2168), *v18, *(v18 + 8), v60);
  *(a1 + 4550) = 1;
  v20 = *(a1 + 4520);
  v21 = *(a1 + 4512) - *(a1 + 4528);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 4, v19);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 6, v60[0]);
  v22 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 4480), v21 + v20);
  *(a1 + 4550) = 1;
  v23 = *(a1 + 4512);
  v24 = *(a1 + 4528);
  v25 = *(a1 + 4520);
  if (v17)
  {
    flatbuffers::FlatBufferBuilder::Align((a1 + 4480), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 8, *(a1 + 4512) - *(a1 + 4528) + *(a1 + 4520) - v17 + 4);
  }

  if (v22)
  {
    flatbuffers::FlatBufferBuilder::Align((a1 + 4480), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 6, *(a1 + 4512) - *(a1 + 4528) + *(a1 + 4520) - v22 + 4);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>((a1 + 4480), 4, *(a1 + 2184), 0);
  v26 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 4480), v23 - v24 + v25);
  flatbuffers::FlatBufferBuilder::Finish((a1 + 4480), v26, v27);
  v28 = *(a1 + 1688);
  v29 = v28 + 304;
  if (*(v28 + 327) < 0)
  {
    v29 = *(v28 + 304);
  }

  *(a1 + 3272) = v29;
  v30 = *(v28 + 327);
  v31 = *(v28 + 312);
  if ((v30 & 0x80u) == 0)
  {
    v31 = v30;
  }

  *(a1 + 3280) = v31;
  v32 = *(a1 + 4336);
  *(a1 + 3312) = v32;
  *(a1 + 3320) = (*(a1 + 4320) - v32 + *(a1 + 4328));
  v33 = *(a1 + 4432);
  v34 = (*(a1 + 4416) - v33 + *(a1 + 4424));
  *(a1 + 3360) = v34;
  if (v34)
  {
    *(a1 + 3352) = v33;
  }

  v35 = *(a1 + 4528);
  v36 = (*(a1 + 4512) - v35 + *(a1 + 4520));
  *(a1 + 3400) = v36;
  if (v36)
  {
    *(a1 + 3392) = v35;
  }

  v37 = 0;
  v38 = (*(a1 + 2296) + 7) & 0xFFFFFFF8;
  *v60 = &unk_2825AFEC8;
  v61 = v60;
  v39 = v38;
  do
  {
    v57 = *(a1 + v37 + 2712);
    if (v57)
    {
      std::function<void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(v61, a1 + v37 + 3272, &v57, v39);
      v39 += *(v57 + 40);
    }

    v37 += 40;
  }

  while (v37 != 160);
  std::__function::__value_func<void ()(_CompilerData const&,section_64 *&,unsigned int)>::~__value_func[abi:nn200100](v60);
  if (v39 == v38)
  {
    v40 = *(a1 + 2288);
    *a2 = v40;
    v41 = *(a1 + 2296);
  }

  else
  {
    v42 = *(a1 + 2304);
    v43 = *(v42 + 32) + v39 - v38;
    *(v42 + 32) = v43;
    *(v42 + 48) = v43;
    v41 = v39;
    v40 = malloc_type_calloc(1uLL, v39, 0x100004077774924uLL);
    memcpy(v40, *(a1 + 2288), *(a1 + 2296));
    v58[0] = &unk_2825AFF10;
    v58[1] = v40;
    v59 = v58;
    v44 = (a1 + 2712);
    v45 = 4;
    do
    {
      v57 = *v44;
      if (v57)
      {
        std::function<void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(v59, (v44 + 70), &v57, v39);
        v39 += *(v57 + 40);
      }

      v44 += 5;
      --v45;
    }

    while (v45);
    std::__function::__value_func<void ()(_CompilerData const&,section_64 *&,unsigned int)>::~__value_func[abi:nn200100](v58);
    *a2 = v40;
  }

  *a3 = v41;
  if (v40)
  {
    v46 = v41 == 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = !v46;
  if (!v46)
  {
    if (!AGCLLVMObjectBase::dumpShaderToFile(a1))
    {
      goto LABEL_54;
    }

    v41 = 0x27C8D7000;
    {
      goto LABEL_59;
    }

    while (1)
    {
      if (*(v41 + 2944) == 1)
      {
        Value = AGCEnv::getValue("AGC_DUMP_MACHO", v48);
        if (Value)
        {
          if (*Value != 48 && atoi(Value))
          {
            if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + 1696)))
            {
              v50 = *(a1 + 1696);
              v51 = (*(*a1 + 48))(a1);
              AGCTargetPrinter::printMessage(v50, "------ Start dump mach-O for %s shader %u ------\n", v51, *(a1 + 5088));
            }

            v41 = *(a1 + 1696);
            a2 = *a2;
            a3 = *a3;
            if (AGCTargetPrinter::isValidToPrintMessage(v41))
            {
              printHexDump(*v41, a2, a3, 0x20u, &unk_20E75F419, 0);
            }

            if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + 1696)))
            {
              a3 = *(a1 + 1696);
              v52 = (*(*a1 + 48))(a1);
              AGCTargetPrinter::printMessage(a3, "\n\n------ End dump mach-O for %s shader %u ------\n", v52, *(a1 + 5088));
            }
          }
        }
      }

LABEL_54:
      if (!*(a5 + 24))
      {
        break;
      }

      v53 = (*(*a1 + 32))(a1);
      v54 = *(a5 + 24);
      if (v54)
      {
        (*(*v54 + 48))(v54, v53);
        break;
      }

      std::__throw_bad_function_call[abi:nn200100]();
LABEL_59:
      {
        *(v41 + 2944) = os_variant_has_internal_diagnostics();
      }
    }
  }

  v55 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t std::__function::__value_func<void ()(_CompilerData const&,section_64 *&,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x20E525504);
  }

  return (*(*a1 + 48))(a1, a2, a3, &v5);
}

void std::__function::__func<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#1},std::allocator<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#1}>,void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v4 = *a3;
  *(v4 + 48) = *a4;
  *(v4 + 40) = (*(a2 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
}

uint64_t std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void virtual thunk toAGCLLVMAGPFragmentShaderGen6::~AGCLLVMAGPFragmentShaderGen6(AGCLLVMAGPFragmentShaderGen6 *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_282556258;
  v1[1008] = off_282556660;
  v1[1221] = &off_282556770;
  v1[567] = &off_282556528;
  v2 = v1[990];
  if (v2 != v1 + 992)
  {
    free(v2);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v1, off_282551C00);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1008));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_282556258;
  v1[1008] = off_282556660;
  v1[1221] = &off_282556770;
  v1[567] = &off_282556528;
  v2 = v1[990];
  if (v2 != v1 + 992)
  {
    free(v2);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v1, off_282551C00);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1008));
}

void AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[21];
  *(this + *(*this - 24) + 1704) = a2[22];
  *(this + 567) = a2[23];
  v5 = *(this + 989);
  if (v5 != -8192 && v5 != -4096 && v5)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 7896));
  }

  v6 = *(this + 986);
  if (v6 != -8192 && v6 != -4096 && v6)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 7872));
  }

  v7 = *(this + 981);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 7832));
  }

  v8 = *(this + 956);
  if (v8 != this + 7664)
  {
    free(v8);
  }

  v9 = *(this + 950);
  if (v9 != this + 7616)
  {
    free(v9);
  }

  v10 = *(this + 1898);
  v11 = *(this + 947);
  if (v10)
  {
    v12 = (v11 + 16);
    v13 = 40 * v10;
    do
    {
      if (*(v12 - 4) <= 0xFFFFFFFD)
      {
        v14 = *(v12 + 2);
        if (v14 != -8192 && v14 != -4096 && v14 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(v12);
        }
      }

      v12 = (v12 + 40);
      v13 -= 40;
    }

    while (v13);
    v11 = *(this + 947);
    v16 = 40 * *(this + 1898);
  }

  else
  {
    v16 = 0;
  }

  llvm::deallocate_buffer(v11, v16);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 945));
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 942));

  AGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(this, a2 + 1);
}

void AGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[17];
  *(this + *(*this - 24) + 1704) = a2[18];
  *(this + 567) = a2[19];
  v5 = this + 7512;
  v6 = -160;
  do
  {
    v7 = *(v5 - 2);
    if (v5 != v7)
    {
      free(v7);
    }

    v5 -= 32;
    v6 += 32;
  }

  while (v6);
  v8 = this + 7352;
  v9 = -160;
  do
  {
    v10 = *(v8 - 2);
    if (v8 != v10)
    {
      free(v10);
    }

    v8 -= 32;
    v9 += 32;
  }

  while (v9);
  v11 = (this + 7184);
  v12 = -120;
  do
  {
    v13 = *(v11 + 2);
    if (v13 != -8192 && v13 != -4096 && v13 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    v11 = (v11 - 24);
    v12 += 24;
  }

  while (v12);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 6512);
  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 6480);

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(this, a2 + 1);
}

void AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(AGCLLVMUserFragmentShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[13];
  *(this + *(*this - 24) + 1704) = a2[14];
  v5 = this + 4536;
  *(this + 567) = a2[15];
  v6 = *(this + 798);
  if (v6 != -8192 && v6 != -4096 && v6)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6368));
  }

  v7 = *(this + 795);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6344));
  }

  v8 = *(this + 792);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6320));
  }

  v9 = *(this + 789);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6296));
  }

  v10 = *(this + 785);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6264));
  }

  v11 = *(this + 782);
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6240));
  }

  v12 = *(this + 779);
  if (v12 != -8192 && v12 != -4096 && v12)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6216));
  }

  v13 = *(this + 776);
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6192));
  }

  v14 = *(this + 772);
  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6160));
  }

  v15 = *(this + 769);
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6136));
  }

  v16 = *(this + 766);
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6112));
  }

  v17 = *(this + 763);
  if (v17 != -8192 && v17 != -4096 && v17)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6088));
  }

  v18 = *(this + 760);
  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6064));
  }

  v19 = (this + 6024);
  v20 = -256;
  do
  {
    v21 = *(v19 + 2);
    if (v21 != -8192 && v21 != -4096 && v21 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }

    v19 = (v19 - 32);
    v20 += 32;
  }

  while (v20);
  v23 = (this + 5768);
  v24 = -256;
  do
  {
    v25 = *(v23 + 2);
    if (v25 != -8192 && v25 != -4096 && v25 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    v23 = (v23 - 32);
    v24 += 32;
  }

  while (v24);
  v27 = a2[7];
  *(this + 567) = v27;
  *&v5[*(v27 - 24)] = a2[11];
  *&v5[*(*(this + 567) - 24) + 1704] = a2[12];
  v28 = *(this + 684);
  if (v28 != this + 5488)
  {
    free(v28);
  }

  v29 = *(this + 674);
  if (v29 != this + 5408)
  {
    free(v29);
  }

  v30 = a2[8];
  *(this + 567) = v30;
  *&v5[*(v30 - 24)] = a2[9];
  *&v5[*(*(this + 567) - 24) + 1704] = a2[10];
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 570));

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 1);
}

void AGCLLVMUserShader::~AGCLLVMUserShader(AGCLLVMUserShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[4];
  *(this + *(*this - 24) + 1704) = a2[5];
  v5 = *(this + 565);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4504));
  }

  v7 = *(this + 562);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4480));
  }

  v8 = *(this + 559);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4456));
  }

  v9 = a2[1];
  *this = v9;
  *(this + *(v9 - 24)) = a2[2];
  *(this + *(*this - 24) + 1704) = a2[3];
  v10 = *(this + 124);
  if (v10)
  {
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v10 + 8));
    MEMORY[0x20F331DC0](v10, 0x1020C4062D53EE8);
  }

  v11 = (this + 4416);
  v12 = -96;
  do
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v11 -= 4;
    v12 += 32;
  }

  while (v12);
  v13 = *(this + 510);
  if (v13 != this + 4096)
  {
    free(v13);
  }

  v14 = *(this + 494);
  if (v14)
  {
    v15 = *(this + 495);
    v16 = *(this + 494);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 9);
        v15 -= 4;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *(this + 494);
    }

    *(this + 495) = v14;
    operator delete(v16);
  }

  llvm::deallocate_buffer(*(this + 479), (16 * *(this + 962)));
  v18 = *(this + 474);
  if (v18 != this + 3808)
  {
    free(v18);
  }

  if ((*(this + 3768) & 1) == 0)
  {
    llvm::deallocate_buffer(*(this + 472), (8 * *(this + 946)));
  }

  v19 = *(this + 469);
  if (v19 != -8192 && v19 != -4096 && v19)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 3736));
  }

  llvm::deallocate_buffer(*(this + 464), (16 * *(this + 932)));
  llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::destroy_range(*(this + 442), *(this + 442) + 40 * *(this + 886));
  v20 = *(this + 442);
  if (v20 != this + 3552)
  {
    free(v20);
  }

  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(this + 3464);
  v21 = *(this + 864);
  v22 = *(this + 430);
  if (v21)
  {
    v83 = 2;
    v84 = 0;
    v85 = -4096;
    v86 = 0;
    v81 = 0;
    v82 = &unk_2825A7350;
    v78 = 2;
    v79 = 0;
    v80 = -8192;
    v23 = (v22 + 24);
    v24 = 48 * v21;
    do
    {
      v25 = *v23;
      if (*v23 != -8192 && v25 != -4096 && v25 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v23 - 2));
      }

      v23 += 6;
      v24 -= 48;
    }

    while (v24);
    v22 = *(this + 430);
    v27 = 48 * *(this + 864);
  }

  else
  {
    v27 = 0;
  }

  llvm::deallocate_buffer(v22, v27);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 428));
  v28 = *(this + 423);
  v29 = *(this + 848);
  if (v29)
  {
    v30 = -8 * v29;
    v31 = &v28[8 * v29 - 8];
    do
    {
      v31 = std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>::~unique_ptr[abi:nn200100](v31) - 1;
      v30 += 8;
    }

    while (v30);
    v28 = *(this + 423);
  }

  if (v28 != this + 3400)
  {
    free(v28);
  }

  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 3344);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 3296);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 3248);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 3200);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 3152);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 3104);
  v32 = *(this + 383);
  if (v32 != this + 3080)
  {
    free(v32);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v34 = *(this + i + 3056);
    if (v34 != -8192 && v34 != -4096 && v34 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + i + 3040));
    }
  }

  v36 = *(this + 376);
  if (v36 != -8192 && v36 != -4096 && v36 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2992));
  }

  v38 = *(this + 373);
  if (v38 != -8192 && v38 != -4096 && v38)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2968));
  }

  v39 = *(this + 369);
  if (v39 != -8192 && v39 != -4096 && v39)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2936));
  }

  v40 = *(this + 366);
  if (v40 != -8192 && v40 != -4096 && v40)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2912));
  }

  v41 = *(this + 363);
  if (v41 != -8192 && v41 != -4096 && v41)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2888));
  }

  v42 = *(this + 360);
  if (v42 != -8192 && v42 != -4096 && v42)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2864));
  }

  v43 = *(this + 357);
  if (v43 != -8192 && v43 != -4096 && v43)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2840));
  }

  v44 = *(this + 354);
  if (v44 != -8192 && v44 != -4096 && v44)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2816));
  }

  v45 = *(this + 351);
  if (v45 != -8192 && v45 != -4096 && v45)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2792));
  }

  v46 = *(this + 348);
  if (v46 != -8192 && v46 != -4096 && v46)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2768));
  }

  v47 = *(this + 345);
  if (v47 != -8192 && v47 != -4096 && v47)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2744));
  }

  v48 = *(this + 341);
  if (v48 != -8192 && v48 != -4096 && v48)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2712));
  }

  v49 = *(this + 337);
  if (v49 != -8192 && v49 != -4096 && v49)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2680));
  }

  v50 = *(this + 333);
  if (v50 != -8192 && v50 != -4096 && v50)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2648));
  }

  v51 = *(this + 330);
  if (v51 != -8192 && v51 != -4096 && v51)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2624));
  }

  v52 = *(this + 327);
  if (v52 != -8192 && v52 != -4096 && v52)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2600));
  }

  v53 = *(this + 324);
  if (v53 != -8192 && v53 != -4096 && v53)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2576));
  }

  v54 = *(this + 321);
  if (v54 != -8192 && v54 != -4096 && v54)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2552));
  }

  v55 = *(this + 318);
  if (v55 != -8192 && v55 != -4096 && v55)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2528));
  }

  v56 = *(this + 315);
  if (v56 != -8192 && v56 != -4096 && v56)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2504));
  }

  v57 = *(this + 312);
  if (v57 != -8192 && v57 != -4096 && v57)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2480));
  }

  for (j = 0; j != -72; j -= 24)
  {
    v59 = *(this + j + 2472);
    if (v59 != -8192 && v59 != -4096 && v59 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + j + 2456));
    }
  }

  v61 = *(this + 300);
  *(this + 300) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  for (k = 0; k != -256; k -= 64)
  {
    v63 = *(this + k + 2344);
    if (v63 != -8192 && v63 != -4096 && v63 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + k + 2328));
    }
  }

  for (m = 0; m != -256; m -= 64)
  {
    v66 = *(this + m + 2088);
    if (v66 != -8192 && v66 != -4096 && v66 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + m + 2072));
    }
  }

  for (n = 0; n != -640; n -= 64)
  {
    v69 = *(this + n + 1832);
    if (v69 != -8192 && v69 != -4096 && v69 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + n + 1816));
    }
  }

  v71 = *(this + 144);
  if (v71 != *(this + 143))
  {
    free(v71);
  }

  v72 = *(this + 132);
  if (v72 != *(this + 131))
  {
    free(v72);
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 129));
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 126));
  v73 = *(this + 121);
  if (v73)
  {
    *(this + 122) = v73;
    operator delete(v73);
  }

  v74 = *(this + 118);
  if (v74)
  {
    *(this + 119) = v74;
    operator delete(v74);
  }

  v75 = *(this + 107);
  if (v75 != *(this + 106))
  {
    free(v75);
  }

  std::__tree<llvm::WeakVH>::destroy(*(this + 103));
  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(this + 776);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::destroyAll(this + 752);
  llvm::deallocate_buffer(*(this + 94), (48 * *(this + 192)));
  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(this + 712);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(this + 688);
  llvm::deallocate_buffer(*(this + 86), (48 * *(this + 176)));
  v76 = *(this + 82);
  if (v76 != this + 672)
  {
    free(v76);
  }

  MEMORY[0x20F32FD00](this + 224);
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v77 = *(this + 10);
  if (v77 != this + 96)
  {
    free(v77);
  }
}

uint64_t llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(result);
    result = llvm::deallocate_buffer(*v1, (16 * *(v1 + 16)));
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[5];
      if (v3 != -8192 && v3 != -4096 && v3 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v2 + 3));
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BBFA0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x20F331DC0);
}

void std::__tree<llvm::WeakVH>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<llvm::WeakVH>::destroy(*a1);
    std::__tree<llvm::WeakVH>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_2825A7378;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * v1;
    v3 = (*result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_2825BDF98;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * v1;
    v3 = (*result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

void AGCLLVMObject::~AGCLLVMObject(AGCLLVMObject *this)
{
  *this = &unk_2825AFD08;
  *(this + 213) = &unk_2825AFE18;
  v2 = *(this + 211);
  *(v2 + 160) = 0;
  if (*(v2 + 327) < 0)
  {
    **(v2 + 304) = 0;
    *(v2 + 312) = 0;
  }

  else
  {
    *(v2 + 304) = 0;
    *(v2 + 327) = 0;
  }

  MEMORY[0x20F331AA0](v2 + 8, &unk_20E75F419);
  v3 = *(this + 271);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  if (*(this + 267))
  {
    v4 = MEMORY[0x20F330EC0]();
    MEMORY[0x20F331DC0](v4, 0x10B2C407FF26C1CLL);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 5136);
  if (*(this + 5119) < 0)
  {
    operator delete(*(this + 637));
  }

  if (*(this + 5087) < 0)
  {
    operator delete(*(this + 633));
  }

  if (*(this + 5063) < 0)
  {
    operator delete(*(this + 630));
  }

  v5 = *(this + 612);
  if (v5 != this + 4912)
  {
    free(v5);
  }

  v6 = *(this + 594);
  if (v6 != this + 4768)
  {
    free(v6);
  }

  v7 = *(this + 584);
  if (v7 != this + 4688)
  {
    free(v7);
  }

  v8 = *(this + 574);
  if (v8 != this + 4608)
  {
    free(v8);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 4480));
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 4384));
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 4288));
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + 4248);
  v9 = *(this + 514);
  if (v9)
  {
    *(this + 515) = v9;
    operator delete(v9);
  }

  v10 = *(this + 507);
  if (v10)
  {
    do
    {
      v11 = *v10;
      if (*(v10 + 47) < 0)
      {
        operator delete(v10[3]);
      }

      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(this + 505);
  *(this + 505) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  for (i = 4000; i != 3440; i -= 40)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + i);
  }

  v14 = *(this + 284);
  if (v14 != -8192 && v14 != -4096 && v14 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2256));
  }

  v16 = *(this + 281);
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2232));
  }

  v17 = *(this + 274);
  if (v17)
  {
    *(this + 275) = v17;
    operator delete(v17);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 1840));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 1832));
  v18 = *(this + 214);
  if (v18 != this + 1728)
  {
    free(v18);
  }

  AGCLLVMObjectBase::~AGCLLVMObjectBase(this);
}

void AGCLLVMG16PB0TargetLowerer::~AGCLLVMG16PB0TargetLowerer(AGCLLVMG16PB0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          llvm::deallocate_buffer(v5, (*v5 + 33));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(AGCLLVMTargetLowerer *this)
{
  *this = &unk_2825B9C60;
  v2 = *(this + 116);
  *(this + 116) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 115);
  *(this + 115) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MEMORY[0x20F32FD00](this + 472);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 128));
  v4 = *(this + 1);
  if (v4 != this + 24)
  {
    free(v4);
  }
}

void AGCLLVMObjectBase::~AGCLLVMObjectBase(AGCLLVMObjectBase *this)
{
  *this = &unk_2825BDF20;
  if (*(this + 1679) < 0)
  {
    operator delete(*(this + 207));
  }

  llvm::deallocate_buffer(*(this + 204), (24 * *(this + 412)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>,llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>::destroyAll(this + 402);
  llvm::deallocate_buffer(*(this + 201), (32 * *(this + 406)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::destroyAll(this + 396);
  llvm::deallocate_buffer(*(this + 198), (16 * *(this + 400)));
  llvm::deallocate_buffer(*(this + 195), (24 * *(this + 394)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>,llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>::destroyAll(this + 384);
  llvm::deallocate_buffer(*(this + 192), (32 * *(this + 388)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>::destroyAll(this + 378);
  llvm::deallocate_buffer(*(this + 189), (16 * *(this + 382)));
  llvm::deallocate_buffer(*(this + 186), (24 * *(this + 376)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>,llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>::destroyAll(this + 366);
  llvm::deallocate_buffer(*(this + 183), (32 * *(this + 370)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::destroyAll(this + 360);
  llvm::deallocate_buffer(*(this + 180), (16 * *(this + 364)));
  llvm::deallocate_buffer(*(this + 177), (24 * *(this + 358)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>,llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>::destroyAll(this + 348);
  llvm::deallocate_buffer(*(this + 174), (32 * *(this + 352)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>::destroyAll(this + 342);
  llvm::deallocate_buffer(*(this + 171), (16 * *(this + 346)));
  llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(this + 1336);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1192);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1048);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 904);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 760);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 616);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 472);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 328);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 184);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 40);
  *(this + 1) = &unk_2825BDF78;
  v2 = (this + 16);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t AGCLLVMObject::finalizeDriverBindings(AGCLLVMObject *this, llvm::Function *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 80))(this);
  if (v4 <= 0x1B && ((1 << v4) & 0x80002C1) != 0)
  {
    v7 = (*(*this + 224))(this);
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_ENABLE_TG_BOUNDS_CHECKING", v6))
    {
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      v7 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_TG_BOUNDS_CHECKING", v8)) != 0 && *Value != 48 && atoi(Value) != 0;
    }

    v10 = *(*(this + 271) + 1886);
    if ((AGCLLVMObject::isBufferBoundsChecksEnabled(this) & 1) != 0 || (v7 & 1) != 0 || v10)
    {
      v11 = *(this + 267);
      llvm::Module::getOrInsertNamedMetadata();
      AGCLLVMObject::isBufferBoundsChecksEnabled(this);
      std::string::basic_string[abi:nn200100]<0>(&__p, "memorytocheck");
      v12 = *(this + 270);
      v66 = llvm::MDString::get();
      v13 = *(this + 238);
      llvm::ConstantInt::get();
      v67 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      if (v65 < 0)
      {
        operator delete(__p);
      }

      if ((*(*this + 200))(this) == 2 || (*(*this + 200))(this) == 1)
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, "hardware_support");
        v14 = *(this + 270);
        v66 = llvm::MDString::get();
        v15 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        if ((*(*this + 200))(this) == 2)
        {
          std::string::basic_string[abi:nn200100]<0>(&__p, "hardware_safety_check");
          v16 = *(this + 270);
          v66 = llvm::MDString::get();
          v17 = *(this + 238);
          goto LABEL_24;
        }
      }

      else if ((*(*this + 200))(this) == 3 || (*(*this + 200))(this) == 4)
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, "checkdmapromotable");
        v18 = *(this + 270);
        v66 = llvm::MDString::get();
        v19 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "disableindexopt");
        v20 = *(this + 270);
        v66 = llvm::MDString::get();
        v21 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "useaddsatindex");
        v22 = *(this + 270);
        v66 = llvm::MDString::get();
        v23 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "fullptrcheck");
        v24 = *(this + 270);
        v66 = llvm::MDString::get();
        v25 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "checkstores");
        v26 = *(this + 270);
        v66 = llvm::MDString::get();
        v27 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "checkatomics");
        v28 = *(this + 270);
        v66 = llvm::MDString::get();
        v29 = *(this + 238);
        llvm::ConstantInt::get();
        v67 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v65 < 0)
        {
          operator delete(__p);
        }

        if ((*(*this + 200))(this) == 3)
        {
          std::string::basic_string[abi:nn200100]<0>(&__p, "reporting");
          v30 = *(this + 270);
          v66 = llvm::MDString::get();
          v31 = *(this + 238);
LABEL_24:
          llvm::ConstantInt::get();
          v67 = llvm::ValueAsMetadata::get();
          llvm::MDTuple::getImpl();
          llvm::NamedMDNode::addOperand();
          if (v65 < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }

  v32 = *(this + 267);
  if ((*(a2 + 9) & 0x3FF0) == 0x6A0)
  {
    llvm::Module::getOrInsertNamedMetadata();
    __p = v64;
    v63 = 0x800000000;
    v33 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, v33);
    v34 = *(this + 574);
    v35 = *(this + 1150);
    v36 = v63;
    if (v35 + v63 > HIDWORD(v63))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v35)
    {
      v37 = __p + 8 * v63;
      v38 = 8 * v35;
      do
      {
        v39 = *v34++;
        *v37++ = v39;
        v38 -= 8;
      }

      while (v38);
    }

    LODWORD(v63) = v36 + v35;
    v40 = *(this + 270);
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    if (__p != v64)
    {
      free(__p);
    }
  }

  else
  {
    llvm::Module::getOrInsertNamedMetadata();
    v41 = *(this + 1150);
    if (v41)
    {
      v42 = *(this + 574);
      v43 = 8 * v41;
      do
      {
        v44 = *v42++;
        llvm::NamedMDNode::addOperand();
        v43 -= 8;
      }

      while (v43);
    }
  }

  if (*(this + 1226))
  {
    v45 = *(this + 267);
    llvm::Module::getOrInsertNamedMetadata();
    v46 = *(this + 1226);
    if (v46)
    {
      v47 = *(this + 612);
      v48 = 8 * v46;
      do
      {
        v49 = *v47++;
        llvm::NamedMDNode::addOperand();
        v48 -= 8;
      }

      while (v48);
    }
  }

  v50 = *(this + 267);
  llvm::Module::getOrInsertNamedMetadata();
  v51 = *(this + 1170);
  if (v51)
  {
    v52 = *(this + 584);
    v53 = 8 * v51;
    do
    {
      v54 = *v52++;
      llvm::NamedMDNode::addOperand();
      v53 -= 8;
    }

    while (v53);
  }

  v55 = *(this + 267);
  llvm::Module::getOrInsertNamedMetadata();
  v56 = *(this + 1190);
  if (v56)
  {
    v57 = *(this + 594);
    v58 = 8 * v56;
    do
    {
      v59 = *v57++;
      llvm::NamedMDNode::addOperand();
      v58 -= 8;
    }

    while (v58);
  }

  v60 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMObject::isBufferBoundsChecksEnabled(AGCLLVMObject *this)
{
  if ((*(*this + 200))(this) == 2)
  {
    return 1;
  }

  result = (*(*this + 200))(this);
  if (result != 1)
  {
    if ((*(*this + 200))(this) == 3)
    {
      return 1;
    }

    return (*(*this + 200))(this) == 4;
  }

  return result;
}

char *llvm::PassInfoMixin<OverrideFunctionsAndGlobalsLinkagePass>::name()
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

  v2 = &aStringrefLlvmG_84[v1];
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

char *llvm::PassInfoMixin<ReplaceAddressSpaceCastsAndChecksPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x57)
  {
    v1 = v0;
  }

  else
  {
    v1 = 87;
  }

  v2 = &aStringrefLlvmG_85[v1];
  v3 = 87 - v1;
  if ((87 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 87 - v1;
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

void llvm::detail::PassModel<llvm::Module,ReplaceAddressSpaceCastsAndChecksPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run(uint64_t a1, uint64_t a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = v21;
  v20[1] = 0x400000000;
  v2 = *(a2 + 32);
  for (i = a2 + 24; v2 != i; v2 = *(v18 + 8))
  {
    v3 = v2 - 56;
    v18 = v2;
    if (!v2)
    {
      v3 = 0;
    }

    v4 = *(v3 + 80);
    for (j = v3 + 72; v4 != j; v4 = *(v4 + 8))
    {
      v5 = v4 - 24;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = v5 + 40;
      for (k = *(v5 + 48); k != v6; k = *(k + 8))
      {
        v8 = k - 24;
        if (!k)
        {
          v8 = 0;
        }

        v9 = *(v8 + 16);
        if (v9 == 84)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        if (k && v9 == 84)
        {
          v11 = *(v8 - 32);
          if (!v11 || *(v11 + 16) || *(v11 + 24) != *(v8 + 72))
          {
            v11 = 0;
          }

          for (m = 0; m != 6; ++m)
          {
            if (v11)
            {
              Name = llvm::Value::getName(v11);
              v15 = v14;
              v16 = strlen(off_277E22488[m]);
              if (v15 >= v16 && (!v16 || !memcmp(Name, off_277E22488[m], v16)))
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v20, v10);
              }
            }
          }
        }
      }
    }
  }

  llvm::AnalysisManager<llvm::Module>::getResultImpl();
}

char *llvm::PassInfoMixin<ReplaceTextureStatePointerPass>::name()
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

  v2 = &aStringrefLlvmG_86[v1];
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

uint64_t AGCLLVMAGPFragmentShaderGen3::verifyLoweredIR(AGCLLVMAGPFragmentShaderGen3 *this)
{
  if (*(this + 7860) != 1)
  {
    return AGCLLVMUserObject::verifyLoweredIR(this);
  }

  memset(&v6, 0, sizeof(v6));
  if (*(this + 6432))
  {
    v2 = "[[front_facing]]";
  }

  else if (*(this + 6433))
  {
    v2 = "[[point_coord]]";
  }

  else if (*(this + 6435))
  {
    v2 = "[[depth]]";
  }

  else if (*(this + 6457))
  {
    v2 = "[[stencil]]";
  }

  else if (*(this + 6430) & 1) != 0 || (*(this + 6444))
  {
    v2 = "[[sample_mask]]";
  }

  else if (*(this + 6458))
  {
    v2 = "[[viewport_array_index]]";
  }

  else if (*(this + 6460))
  {
    v2 = "[[amplification_id]]";
  }

  else if (*(this + 6461))
  {
    v2 = "[[amplification_count]]";
  }

  else if (*(this + 6428))
  {
    v2 = "interpolation of attributes";
  }

  else if (*(this + 6445))
  {
    v2 = "discard_fragment()";
  }

  else
  {
    if (*(this + *(*this - 24) + 2224) != 1)
    {
      return AGCLLVMUserObject::verifyLoweredIR(this);
    }

    v2 = "threadgroup_barrier()";
  }

  MEMORY[0x20F331AA0](&v6, v2);
  if ((*(&v6.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v6.__r_.__value_.__l.__size_)
    {
      goto LABEL_17;
    }

    operator delete(v6.__r_.__value_.__l.__data_);
    return AGCLLVMUserObject::verifyLoweredIR(this);
  }

  if (!*(&v6.__r_.__value_.__s + 23))
  {
    return AGCLLVMUserObject::verifyLoweredIR(this);
  }

LABEL_17:
  std::string::append(&v6, " unsupported in fragment functions bound to tile pipelines");
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v6;
  }

  else
  {
    v3 = v6.__r_.__value_.__r.__words[0];
  }

  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v6.__r_.__value_.__l.__size_;
  }

  std::string::append((this + *(*this - 24) + 1656), v3, size);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AGCLLVMUserObject::verifyLoweredIR(AGCLLVMUserObject *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(this + *(*this - 24) + 2136);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 == v3 + 24)
  {
LABEL_28:
    v15 = *(this + *(v2 - 24) + 2136);
    v16 = *(v15 + 32);
    if (v16 != v15 + 24)
    {
      v17 = *(v15 + 32);
      do
      {
        if (v17 != v16)
        {
          if (v17)
          {
            v18 = v17 - 56;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == *(this + 20))
          {
            llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList();
          }
        }

        v17 = *(v17 + 8);
      }

      while (v17 != v15 + 24);
    }

    result = 1;
  }

  else
  {
    v6 = 0;
    v7 = this + 1656;
    do
    {
      while (1)
      {
        if (v5)
        {
          v8 = v5 - 56;
        }

        else
        {
          v8 = 0;
        }

        if (llvm::GlobalValue::isDeclaration(v8))
        {
          if (*(v8 + 8))
          {
            if ((*(v8 + 33) & 0x20) == 0)
            {
              __p[0] = llvm::Value::getName(v8);
              __p[1] = v9;
              if (llvm::StringRef::find() != -1 || (v29.__r_.__value_.__r.__words[0] = llvm::Value::getName(v8), v29.__r_.__value_.__l.__size_ = v10, llvm::StringRef::find() != -1))
              {
                {
                  AGCLLVMUserObject::verifyLoweredIR(void)::log = os_log_create("com.apple.agx", "AGC");
                }

                v19 = AGCLLVMUserObject::verifyLoweredIR(void)::log;
                if (os_log_type_enabled(AGCLLVMUserObject::verifyLoweredIR(void)::log, OS_LOG_TYPE_FAULT))
                {
                  v29.__r_.__value_.__r.__words[0] = llvm::Value::getName(v8);
                  v29.__r_.__value_.__l.__size_ = v27;
                  llvm::StringRef::str(__p, &v29);
                  v28 = v31 >= 0 ? __p : __p[0];
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v28;
                  _os_log_fault_impl(&dword_20E4E1000, v19, OS_LOG_TYPE_FAULT, "Encountered unlowered function call to %s", &buf, 0xCu);
                  if (SHIBYTE(v31) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                *&buf = llvm::Value::getName(v8);
                *(&buf + 1) = v20;
                llvm::StringRef::str(&v29, &buf);
                v21 = std::string::insert(&v29, 0, "Encountered unlowered function call to ");
                v22 = v21->__r_.__value_.__r.__words[2];
                *__p = *&v21->__r_.__value_.__l.__data_;
                v31 = v22;
                v21->__r_.__value_.__l.__size_ = 0;
                v21->__r_.__value_.__r.__words[2] = 0;
                v21->__r_.__value_.__r.__words[0] = 0;
                if (v31 >= 0)
                {
                  v23 = __p;
                }

                else
                {
                  v23 = __p[0];
                }

                if (v31 >= 0)
                {
                  v24 = HIBYTE(v31);
                }

                else
                {
                  v24 = __p[1];
                }

                std::string::append((this + *(*this - 24) + 1656), v23, v24);
                if (SHIBYTE(v31) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v29.__r_.__value_.__l.__data_);
                }

                goto LABEL_49;
              }
            }
          }
        }

        if (llvm::GlobalValue::isDeclaration(v8))
        {
          if (*(v8 + 8))
          {
            if ((*(v8 + 33) & 0x20) == 0)
            {
              Name = llvm::Value::getName(v8);
              if (v12 == 33 && !memcmp(Name, "agc.illegal_visible_function_call", 0x21uLL))
              {
                std::string::append(&v7[*(*this - 24)], "Error: Encountered unsupported visible function call\n");
                v6 = 1;
              }
            }
          }
        }

        if (!llvm::GlobalValue::isDeclaration(v8))
        {
          break;
        }

        if (!*(v8 + 8))
        {
          break;
        }

        if ((*(v8 + 33) & 0x20) != 0)
        {
          break;
        }

        v13 = llvm::Value::getName(v8);
        if (v14 != 36 || memcmp(v13, "agc.illegal_raytracing_function_call", 0x24uLL))
        {
          break;
        }

        std::string::append(&v7[*(*this - 24)], "Error: Encountered unsupported ray tracing function call\n");
        v5 = *(v5 + 8);
        v6 = 1;
        if (v5 == v4)
        {
          goto LABEL_49;
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if ((v6 & 1) == 0)
    {
      v2 = *this;
      goto LABEL_28;
    }

LABEL_49:
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::PassBuilder::~PassBuilder(llvm::PassBuilder *this)
{
  v2 = *(this + 238);
  v3 = *(this + 478);
  if (v3)
  {
    v4 = &v2[32 * v3 - 32];
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *(this + 238);
  }

  if (v2 != this + 1920)
  {
    free(v2);
  }

  v8 = *(this + 228);
  v9 = *(this + 458);
  if (v9)
  {
    v10 = &v8[32 * v9 - 32];
    v11 = -32 * v9;
    v12 = v10;
    do
    {
      v13 = *(v12 + 24);
      if (v12 == v13)
      {
        (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      v12 -= 32;
      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v8 = *(this + 228);
  }

  if (v8 != this + 1840)
  {
    free(v8);
  }

  v14 = *(this + 218);
  v15 = *(this + 438);
  if (v15)
  {
    v16 = &v14[32 * v15 - 32];
    v17 = -32 * v15;
    v18 = v16;
    do
    {
      v19 = *(v18 + 24);
      if (v18 == v19)
      {
        (*(*v19 + 32))(v19);
      }

      else if (v19)
      {
        (*(*v19 + 40))(v19);
      }

      v18 -= 32;
      v16 -= 32;
      v17 += 32;
    }

    while (v17);
    v14 = *(this + 218);
  }

  if (v14 != this + 1760)
  {
    free(v14);
  }

  v20 = *(this + 208);
  v21 = *(this + 418);
  if (v21)
  {
    v22 = &v20[32 * v21 - 32];
    v23 = -32 * v21;
    v24 = v22;
    do
    {
      v25 = *(v24 + 24);
      if (v24 == v25)
      {
        (*(*v25 + 32))(v25);
      }

      else if (v25)
      {
        (*(*v25 + 40))(v25);
      }

      v24 -= 32;
      v22 -= 32;
      v23 += 32;
    }

    while (v23);
    v20 = *(this + 208);
  }

  if (v20 != this + 1680)
  {
    free(v20);
  }

  v26 = *(this + 198);
  v27 = *(this + 398);
  if (v27)
  {
    v28 = &v26[32 * v27 - 32];
    v29 = -32 * v27;
    v30 = v28;
    do
    {
      v31 = *(v30 + 24);
      if (v30 == v31)
      {
        (*(*v31 + 32))(v31);
      }

      else if (v31)
      {
        (*(*v31 + 40))(v31);
      }

      v30 -= 32;
      v28 -= 32;
      v29 += 32;
    }

    while (v29);
    v26 = *(this + 198);
  }

  if (v26 != this + 1600)
  {
    free(v26);
  }

  v32 = *(this + 188);
  v33 = *(this + 378);
  if (v33)
  {
    v34 = &v32[32 * v33 - 32];
    v35 = -32 * v33;
    v36 = v34;
    do
    {
      v37 = *(v36 + 24);
      if (v36 == v37)
      {
        (*(*v37 + 32))(v37);
      }

      else if (v37)
      {
        (*(*v37 + 40))(v37);
      }

      v36 -= 32;
      v34 -= 32;
      v35 += 32;
    }

    while (v35);
    v32 = *(this + 188);
  }

  if (v32 != this + 1520)
  {
    free(v32);
  }

  v38 = *(this + 178);
  v39 = *(this + 358);
  if (v39)
  {
    v40 = &v38[32 * v39 - 32];
    v41 = -32 * v39;
    v42 = v40;
    do
    {
      v43 = *(v42 + 24);
      if (v42 == v43)
      {
        (*(*v43 + 32))(v43);
      }

      else if (v43)
      {
        (*(*v43 + 40))(v43);
      }

      v42 -= 32;
      v40 -= 32;
      v41 += 32;
    }

    while (v41);
    v38 = *(this + 178);
  }

  if (v38 != this + 1440)
  {
    free(v38);
  }

  v44 = *(this + 168);
  v45 = *(this + 338);
  if (v45)
  {
    v46 = &v44[32 * v45 - 32];
    v47 = -32 * v45;
    v48 = v46;
    do
    {
      v49 = *(v48 + 24);
      if (v48 == v49)
      {
        (*(*v49 + 32))(v49);
      }

      else if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v48 -= 32;
      v46 -= 32;
      v47 += 32;
    }

    while (v47);
    v44 = *(this + 168);
  }

  if (v44 != this + 1360)
  {
    free(v44);
  }

  _ZN4llvm11SmallVectorINSt3__18functionIFbNS_9StringRefERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS5_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEEELj2EED2Ev(this + 1264);
  _ZN4llvm11SmallVectorINSt3__18functionIFbNS_9StringRefERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS5_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEEELj2EED2Ev(this + 1184);
  v50 = *(this + 138);
  v51 = *(this + 278);
  if (v51)
  {
    v52 = &v50[32 * v51 - 32];
    v53 = -32 * v51;
    v54 = v52;
    do
    {
      v55 = *(v54 + 24);
      if (v54 == v55)
      {
        (*(*v55 + 32))(v55);
      }

      else if (v55)
      {
        (*(*v55 + 40))(v55);
      }

      v54 -= 32;
      v52 -= 32;
      v53 += 32;
    }

    while (v53);
    v50 = *(this + 138);
  }

  if (v50 != this + 1120)
  {
    free(v50);
  }

  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 1024);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 944);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 864);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 784);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 704);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 624);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 544);
  v56 = *(this + 58);
  v57 = *(this + 118);
  if (v57)
  {
    v58 = &v56[32 * v57 - 32];
    v59 = -32 * v57;
    v60 = v58;
    do
    {
      v61 = *(v60 + 24);
      if (v60 == v61)
      {
        (*(*v61 + 32))(v61);
      }

      else if (v61)
      {
        (*(*v61 + 40))(v61);
      }

      v60 -= 32;
      v58 -= 32;
      v59 += 32;
    }

    while (v59);
    v56 = *(this + 58);
  }

  if (v56 != this + 480)
  {
    free(v56);
  }

  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 384);
  llvm::SmallVector<std::function<void ()(llvm::PassManager<llvm::Loop,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &> &,llvm::OptimizationLevel)>,2u>::~SmallVector(this + 304);
  llvm::SmallVector<std::function<void ()(llvm::PassManager<llvm::Loop,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &> &,llvm::OptimizationLevel)>,2u>::~SmallVector(this + 224);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 144);
  if (*(this + 128) == 1)
  {
    v62 = *(this + 15);
    if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v62 + 8))(v62);
    }

    if (*(this + 103) < 0)
    {
      operator delete(*(this + 10));
    }

    if (*(this + 79) < 0)
    {
      operator delete(*(this + 7));
    }

    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    *(this + 128) = 0;
  }
}

uint64_t _ZN4llvm11SmallVectorINSt3__18functionIFbNS_9StringRefERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS5_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEEELj2EED2Ev(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
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

uint64_t _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
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

uint64_t _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
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

uint64_t llvm::SmallVector<std::function<void ()(llvm::PassManager<llvm::Loop,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &> &,llvm::OptimizationLevel)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
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

uint64_t AGCLLVMCtx::initializePlan(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v7 = result;
    v8 = *(result + 2020);
    llvm::AGX::AGXCompiler::createCompilePlan();
    v26 = 1;
    if (llvm::AGX::AGXCompilePlan::isValid(v27))
    {
      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      if (*(a2 + 16) == 1)
      {
        MEMORY[0x20F330BA0](a2);
        *(a2 + 16) = 0;
      }

      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      *(a2 + 16) = 1;
      MEMORY[0x20F330BA0](v18);
    }

    else
    {
      llvm::AGX::AGXCompiler::getLastDiagnostics(&v24, (v7 + 48));
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v18);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "Create Plan failed:\n", 20);
      v9 = v24;
      v10 = v25;
      while (v9 != v10)
      {
        v11 = *v9++;
        v12 = llvm::AGX::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
      }

      std::stringbuf::str();
      if ((v17 & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v14 = v17;
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(a5, v13, v14);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v18[0] = *MEMORY[0x277D82818];
      v15 = *(MEMORY[0x277D82818] + 72);
      *(v18 + *(v18[0] - 3)) = *(MEMORY[0x277D82818] + 64);
      v19 = v15;
      v20 = MEMORY[0x277D82878] + 16;
      if (v22 < 0)
      {
        operator delete(v21[7].__locale_);
      }

      v20 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v21);
      std::iostream::~basic_iostream();
      MEMORY[0x20F331D40](&v23);
      v18[0] = &v24;
      std::vector<std::unique_ptr<llvm::AGX::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](v18);
    }

    return MEMORY[0x20F330BA0](v27);
  }

  return result;
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>,llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

uint64_t llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 + 24);
      if (v6 >= 8)
      {
        if ((v6 & 4) != 0)
        {
          v7 = v4;
          if ((v6 & 2) == 0)
          {
            v7 = *v4;
          }

          (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
        }

        if ((v6 & 2) == 0)
        {
          v8 = *(v4 + 16);
          llvm::deallocate_buffer(*v4, *(v4 + 8));
        }
      }

      v4 -= 32;
      v5 += 32;
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

void std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

void llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>,llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>,llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::detail::PassModel<llvm::Module,ReplaceTensorIntrinsicsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A7740;
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 40));
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 16));

  JUMPOUT(0x20F331DC0);
}

void llvm::detail::PassModel<llvm::Module,llvm::ModuleToFunctionPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825B0098;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void MTLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>,llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::detail::AnalysisResultModel<llvm::Module,MetadataAnalysis,MetadataAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825A7598;
  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((a1 + 21));
  v2 = a1[11];
  if (v2 != a1 + 13)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3 != a1 + 3)
  {
    free(v3);
  }

  JUMPOUT(0x20F331DC0);
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          if (*(v5 + 31) < 0)
          {
            operator delete(*(v5 + 1));
          }

          llvm::deallocate_buffer(v5, (v7 + 33));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMUserObject::replaceBufferInputArgument(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v43 = 1;
  v44 = a3;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v8 = *(*a2 + 8);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  v37 = 0;
  parseMDBuffer(a4, v8 >> 8, &v44, &v43, &v42, &v41 + 1, &v39, &v37, &v40, &v41, &v38);
  v9 = v40;
  *(a1 + 3760) |= v40;
  if (a5 != -1)
  {
    v44 = a5;
  }

  if (v38 == 1)
  {
    v30 = v44;
    if ((llvm::Type::isOpaquePointerTy(*a2) & 1) == 0)
    {
      v31 = **(*a2 + 16);
    }

    for (i = *(a2 + 8); i; i = *(i + 8))
    {
      v33 = *(i + 24);
      v34 = *(v33 + 16);
      if (v34 <= 0x1B)
      {
        if (v34 == 5 && *(v33 + 18) == 34)
        {
LABEL_30:
          *(llvm::GEPOperator::getSourceElementType(v33) + 8);
          break;
        }
      }

      else if (v34 == 62)
      {
        goto LABEL_30;
      }
    }

    v35 = ((*(a1 + 3504) >> v30) & 1) == 0;
    operator new();
  }

  v10 = v44;
  (*(*a1 + 304))(a1, a2, v44, 0xFFFFFFFFLL);
  v11 = *(*(a1 + 168) + 80);
  if (v11)
  {
    v12 = v11 - 24;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 40);
  if (v13)
  {
    v14 = (v13 - 24);
  }

  else
  {
    v14 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), v14);
  if (v9)
  {
    v15 = v41;
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v16 = AGCLLVMUserObject::setupBufferArgumentData(a1, *a2, v10, 0xFFFFFFFF, v42, v37, v15);
  v18 = v17;
  llvm::Value::replaceAllUsesWith();
  result = llvm::Argument::hasAttribute();
  if (result)
  {
    v20 = *(a1 + *(*a1 - 24) + 2136);
    inserted = llvm::Module::getOrInsertNamedMetadata();
    if (!llvm::NamedMDNode::getNumOperands(inserted))
    {
      v22 = *(a1 + *(*a1 - 24) + 2160);
      v45 = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }

    v23 = *(a1 + *(*a1 - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    Operand = llvm::NamedMDNode::getOperand(inserted);
    v45 = llvm::ValueAsMetadata::get();
    v46 = Operand;
    v25 = *(a1 + *(*a1 - 24) + 2160);
    llvm::Value::getName(v18);
    v47 = llvm::MDString::get();
    v26 = *(a1 + *(*a1 - 24) + 2160);
    Impl = llvm::MDTuple::getImpl();
    llvm::MDNode::replaceOperandWith();
    result = llvm::NamedMDNode::addOperand();
    v28 = *(a1 + 4088);
    if (v28 >= *(a1 + 4092))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v29 = (*(a1 + 4080) + 16 * v28);
    *v29 = v16;
    v29[1] = Impl;
    ++*(a1 + 4088);
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL parseMDBuffer(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, char *a8, _BYTE *a9, int *a10, char *a11)
{
  v43 = a2;
  if (!isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.buffer") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.indirect_buffer") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.visible_function_table") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.primitive_acceleration_structure") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.instance_acceleration_structure") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.intersection_function_table"))
  {
    result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.tensor");
    if (!result)
    {
      return result;
    }
  }

  *a9 = 0;
  v18 = *(a1 + 8);
  LODWORD(v50) = 2;
  if (v18 >= 3)
  {
    do
    {
      if ((parseMDLocationIndex(a1, &v50, a3, a4) & 1) == 0 && (parseMDInt("air.buffer_size", a1, &v50, a5) & 1) == 0 && (parseMDInt("air.arg_type_size", a1, &v50, a6) & 1) == 0 && !parseMDType<llvm::MDNode>("air.struct_type_info", a1, &v50, a7) && (parseMDInt("air.address_space", a1, &v50, &v43) & 1) == 0)
      {
        if (parseMDInt("air.raster_order_group", a1, &v50, a10))
        {
          v19 = *a10;
          if (*a10 >= 7)
          {
            v19 = 7;
          }

          *a10 = v19;
          *a9 = 1;
        }

        else if (!parseMDAccess(a1, &v50, a8))
        {
          LODWORD(v50) = v50 + 1;
        }
      }
    }

    while (v50 < v18);
  }

  v20 = *a5;
  if (*a5)
  {
    if (v43 == 2 && v20 <= 0xFFFFFFFC)
    {
      v20 = (v20 + 3) & 0xFFFFFFFC;
    }

    *a5 = v20;
  }

  if (!*a7)
  {
    v36 = 0;
    goto LABEL_69;
  }

  v55 = *a7;
  v50 = v54;
  v51 = v54;
  v52 = 4;
  v53 = 0;
  v48 = 0u;
  v49 = 0u;
  *__p = 0u;
  std::deque<llvm::MDNode const*>::push_back(__p, &v55);
  v22 = *(&v49 + 1);
  if (!*(&v49 + 1))
  {
    v36 = 0;
    goto LABEL_60;
  }

  while (1)
  {
    v23 = __p[1];
    v24 = v49;
    v25 = *(*(__p[1] + ((v49 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v49 & 0x1FF));
    --v22;
    *&v49 = v49 + 1;
    *(&v49 + 1) = v22;
    if (v49 >= 0x400)
    {
      operator delete(*__p[1]);
      __p[1] = v23 + 8;
      *&v49 = v24 - 511;
    }

    llvm::SmallPtrSetImplBase::insert_imp(&v50, v25);
    if (v26)
    {
      v46 = 0;
      v27 = v25[2];
      if (v27)
      {
        break;
      }
    }

LABEL_55:
    if (!v22)
    {
      v36 = 0;
      goto LABEL_60;
    }
  }

  while (1)
  {
    v45 = 0;
    if (!parseMDType<llvm::MDNode>("air.struct_type_info", v25, &v46, &v45))
    {
      break;
    }

    std::deque<llvm::MDNode const*>::push_back(__p, &v45);
    v28 = v46;
LABEL_53:
    if (v28 >= v27)
    {
      v22 = *(&v49 + 1);
      goto LABEL_55;
    }
  }

  v29 = v46;
  if (!isStringMDNode(*&v25[2 * v46 + -2 * v25[2]], "air.indirect_argument"))
  {
    v28 = v29 + 1;
    goto LABEL_52;
  }

  v28 = v29 + 1;
  v56[0] = v29 + 1;
  if (parseMDInt(0, v25, v56, &v44))
  {
    goto LABEL_50;
  }

  v30 = *&v25[2 * v28 + -2 * v25[2]];
  if (!v30)
  {
    goto LABEL_52;
  }

  v31 = *v30;
  if (v31 > 0x22 || ((0x7FFFFFFF0uLL >> v31) & 1) == 0)
  {
    goto LABEL_52;
  }

  String = llvm::MDString::getString(*&v30[-8 * *(v30 + 2) + 8]);
  if (v33 == 21)
  {
    v34 = *String == 0x69646E692E726961 && String[1] == 0x6E6F635F74636572;
    if (v34 && *(String + 13) == 0x746E6174736E6F63)
    {
LABEL_50:
      v28 = v29 + 2;
LABEL_52:
      v46 = v28;
      goto LABEL_53;
    }
  }

  v36 = 1;
LABEL_60:
  v37 = __p[1];
  v38 = v48;
  v39 = v48 - __p[1];
  if (v48 - __p[1] >= 0x11)
  {
    do
    {
      v40 = *v37++;
      operator delete(v40);
      v39 -= 8;
    }

    while (v39 > 0x10);
  }

  while (v37 != v38)
  {
    v41 = *v37++;
    operator delete(v41);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v51 != v50)
  {
    free(v51);
  }

LABEL_69:
  *a11 = v36;
  return 1;
}

BOOL parseMDType<llvm::MDNode>(const char *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
  if (a1)
  {
    result = isStringMDNode(v7, a1);
    if (!result)
    {
      return result;
    }

    v10 = (*a3)++;
    v11 = *(a2 - 8 * *(a2 + 8) + 8 * (v10 + 1));
    if (v11)
    {
      if (((*v11 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v11)) == 0)
      {
        v11 = 0;
      }
    }

    *a4 = v11;
    *a3 = v10 + 2;
  }

  else
  {
    if (v7)
    {
      if (((*v7 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v7)) != 0)
      {
        v11 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
  }

  return v11 != 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t AGCLLVMAGPFragmentShader::agpParseStageIOMetadata(AGCLLVMUserShader *a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6, unsigned int *a7, _BYTE *a8)
{
  v14 = a1;
  AGCLLVMUserShader::getVaryingModeMap(a1);
  AGCLLVMUserShader::getInterpolationLocationMap(v15);
  result = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 16));
  *a3 = result;
  a3[1] = v17;
  *a6 = 0;
  *a7 = 10;
  *a8 = 0;
  v18 = *(a2 + 8);
  if (v18 < 4)
  {
    *a4 = 1;
    goto LABEL_51;
  }

  v43 = a6;
  v44 = a8;
  v46 = v14;
  v47 = a7;
  v45 = a3;
  v19 = 2;
  v20 = 3;
  v21 = 1;
  v22 = 1;
  do
  {
    String = llvm::MDString::getString(*(a2 - 8 * v18 + 8 * v20));
    v25 = v24;
    Key = llvm::StringMapImpl::FindKey();
    if (Key != -1 && Key != qword_28117E558)
    {
      result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, String, v25);
      v21 = 0;
      v30 = *(*result + 8);
LABEL_22:
      *a4 = v30;
      goto LABEL_23;
    }

    result = llvm::StringMapImpl::FindKey();
    if (result != -1 && result != dword_28117E538)
    {
      result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, String, v25);
      v22 = 0;
      *a5 = *(*result + 8);
      goto LABEL_23;
    }

    if (v25 > 16)
    {
      if (v25 == 26)
      {
        if (*String == 0x65746E692E726961 && String[1] == 0x6F6974616C6F7072 && String[2] == 0x6974636E75665F6ELL && *(String + 12) == 28271)
        {
          *v44 = 1;
        }
      }

      else if (v25 == 17)
      {
        v31 = *String == 0x5F6772612E726961 && String[1] == 0x6D616E5F65707974;
        if (v31 && *(String + 16) == 101)
        {
          v20 = v19 + 2;
          v33 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (v19 + 2)));
          result = AGCLLVMBuilder::getComponentType(v33, v34, v43);
          *v47 = result;
        }
      }
    }

    else if (v25 == 12)
    {
      if (!(*String ^ 0x5F6772612E726961 | *(String + 2) ^ 0x656D616ELL))
      {
        v20 = v19 + 2;
      }
    }

    else if (v25 == 16 && *String == 0x747265762E726961 && String[1] == 0x65756C61765F7865)
    {
      v21 = 0;
      v30 = 5;
      goto LABEL_22;
    }

LABEL_23:
    v19 = v20++;
    v18 = *(a2 + 8);
  }

  while (v20 < v18);
  v40 = *v47;
  if (v21)
  {
    *a4 = v40 > 1;
  }

  v14 = v46;
  if ((v22 & 1) == 0)
  {
    v39 = *a5 == 3;
    a3 = v45;
    goto LABEL_59;
  }

  a3 = v45;
  if (v40 >= 2)
  {
LABEL_51:
    v38 = 3;
    v39 = 1;
    goto LABEL_52;
  }

  v39 = 0;
  v38 = 0;
LABEL_52:
  *a5 = v38;
LABEL_59:
  if (*a4 == 1 && !v39)
  {
    *a5 = 3;
  }

  if (*(*(v14 + 801) + 69))
  {
    v41 = *a3;
    v42 = a3[1];
    result = llvm::StringMapImpl::FindKey();
    if (result != -1 && result != *(v14 + 1622) && (*(*(*(v14 + 810) + 8 * result) + 8) & 0xF) == 3)
    {
      *a4 = 3;
    }
  }

  return result;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 17, 8);
  v11 = v10;
  v12 = v10 + 16;
  if (a3)
  {
    memcpy((v10 + 16), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t AGCLLVMBuilder::getComponentType(char *a1, unint64_t a2, int *a3)
{
  AGCLLVMBuilder::getVariableTypeMap(a1);
  *a3 = 1;
  v6 = a1[1];
  if (v6 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
  {
    v7 = a1[a2 - 1];
    if ((v7 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x400) != 0)
    {
      if (a2 >= a2 - 1)
      {
        --a2;
      }

      *a3 = atoi(&a1[a2]);
    }
  }

  Key = llvm::StringMapImpl::FindKey();
  result = 10;
  if (Key != -1 && Key != dword_28117E4D0)
  {
    return *(*(AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map + 8 * Key) + 8);
  }

  return result;
}

void AGCLLVMBuilder::getVariableTypeMap(AGCLLVMBuilder *this)
{
  {
    AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map = 0;
    *&dword_28117E4D0 = 0;
    qword_28117E4D8 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<ComponentType,llvm::MallocAllocator>::~StringMap, &AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMBuilder::getVariableTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v3[0] = &v1;
    v3[1] = &AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map;
    v2 = v3;
    std::__call_once(&AGCLLVMBuilder::getVariableTypeMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMBuilder::getVariableTypeMap(void)::{lambda(llvm::StringMap<ComponentType,llvm::MallocAllocator> &)#1} &,llvm::StringMap<ComponentType,llvm::MallocAllocator> &>>);
  }
}

void AGCLLVMAGPFragmentShader::getFragmentVarying(uint64_t a1, void *a2, uint64_t a3, void *a4, size_t a5, int a6, int a7, llvm::Type *a8, int a9, char a10)
{
  v17 = *(a2 + 1630);
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1 || Key == *(a2 + 1622))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(*(a2[810] + 8 * Key) + 8) >> 31;
  }

  GenericVarying::GenericVarying(v33, a8, a9, a6, a7, v17, v19);
  if (a4)
  {
    std::string::basic_string[abi:nn200100](&__dst, a4, a5);
  }

  else
  {
    __dst = 0uLL;
    v32 = 0;
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  __p = __dst;
  v35 = v32;
  llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back((a2 + 814), v33);
  *(a1 + 48) = a1 + 64;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
  *a1 = a8;
  *(a1 + 4) = a6;
  *(a1 + 8) = a7;
  *(a1 + 12) = a9;
  *(a1 + 16) = v17;
  *(a1 + 24) = a3;
  if (a10)
  {
    v20 = a2 + 4 * a8;
    ++*(v20 + 1762);
    v21 = &a2[4 * a8];
    llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back((v21 + 901), v17);
    v22 = (v21 + 921);
    v23 = 1;
LABEL_16:
    llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(v22, v23);
    v24 = 0;
    v26 = *(v20 + 1767);
    *(v20 + 1767) = v26 + 1;
    *(*(a1 + 48) + 4 * a8) = v26;
    goto LABEL_17;
  }

  if (a6 == 5)
  {
    v20 = a2 + 4 * a8;
    ++*(v20 + 1762);
    v25 = &a2[4 * a8];
    llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back((v25 + 901), v17);
    v22 = (v25 + 921);
    v23 = 10;
    goto LABEL_16;
  }

  if (a6 == 3)
  {
    v24 = (*(*a2 + 680))(a2, v17, a8, a9 == 1);
LABEL_17:
    v27 = 32;
    goto LABEL_18;
  }

  v28 = AGCLLVMUserFragmentShader::setupInterpolation(a2, 1, v17, a8);
  v24 = v29;
  *(a1 + 32) = v28;
  v27 = 40;
LABEL_18:
  *(a1 + v27) = v24;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t GenericVarying::GenericVarying(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = a3 == 1;
  *(result + 57) = a7;
  *(result + 58) = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v7 = a3 == 1;
      if (a7)
      {
        v8 = 11;
        v9 = 15;
      }

      else
      {
        v8 = 2;
        v9 = 6;
      }
    }

    else
    {
      v7 = a3 == 1;
      if (!a7)
      {
        if (a3 == 1)
        {
          v8 = 5;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_29;
      }

      v8 = 10;
      v9 = 14;
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v7 = a3 == 1;
        if (a7)
        {
          v8 = 12;
          v9 = 16;
        }

        else
        {
          v8 = 3;
          v9 = 7;
        }

        break;
      case 3:
        if (a7)
        {
          v8 = 20;
        }

        else
        {
          v8 = 18;
        }

        if (a3 == 1)
        {
          ++v8;
        }

        goto LABEL_29;
      case 5:
        v7 = a3 == 1;
        if (a7)
        {
          v8 = 13;
          v9 = 17;
        }

        else
        {
          v8 = 4;
          v9 = 8;
        }

        break;
      default:
        return result;
    }
  }

  if (v7)
  {
    v8 = v9;
  }

LABEL_29:
  *(result + 60) = v8;
  return result;
}