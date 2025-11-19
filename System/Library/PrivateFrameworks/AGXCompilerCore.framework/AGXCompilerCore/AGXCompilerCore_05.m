uint64_t AGCLLVMUserObject::Sampler::getAllocationInfo(uint64_t this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 24);
    if (v5)
    {
      v6 = *(v3 + 16);
      v7 = &v6[4 * v5];
      v8 = (a3 & 0xFFFFF) - *(v3 + 236);
      do
      {
        v9 = v6[2];
        v10 = v8 / v9;
        v8 %= v9;
        v4 += *(*v6 + 28) * v10;
        v6 += 4;
      }

      while (v6 != v7);
    }

    a3 = a3 & 0xFFF00000 | v4 & 0xFFFFF;
  }

  *(this + 8) = *(a2 + 16);
  *this = a3;
  *(this + 16) = *(a2 + 24);
  return this;
}

void AGCLLVMUserObject::getTextureFenceFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set = 0;
    *&dword_28117E5B8 = 0;
    qword_28117E5C0 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getGetNullTextureFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getGetNullTextureFunctionSet(void)::get_null_texture_function_set = 0;
    *&dword_28117E578 = 0;
    qword_28117E580 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getGetNullTextureFunctionSet(void)::get_null_texture_function_set, &dword_20E4E1000);
  }
}

BOOL std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v16, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = (v3 - 4 * (*(v3 + 5) & 0x7FFFFFF))[8];
    v14 = (v13 + 24);
    if (*(v13 + 32) >= 0x41u)
    {
      v14 = *v14;
    }

    std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(*(*(a1 + 16) + 24), v3, *(v8 + 36) - *(v8 + 28) + *v14);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

uint64_t llvm::GlobalDCEPass::GlobalDCEPass(uint64_t a1, uint64_t a2)
{
  result = llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 304) = 0;
  *(result + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(result + 296) = *(a2 + 296);
  *(a2 + 296) = 0;
  v4 = *(result + 300);
  *(result + 300) = *(a2 + 300);
  *(a2 + 300) = v4;
  v5 = *(result + 304);
  *(result + 304) = *(a2 + 304);
  *(a2 + 304) = v5;
  v6 = *(a2 + 312);
  v7 = *(a2 + 320);
  *(a2 + 312) = 0;
  *(result + 312) = v6;
  *(result + 320) = v7;
  *(a2 + 320) = 0;
  v9 = *(a2 + 328);
  v8 = *(a2 + 336);
  *(result + 328) = v9;
  *(result + 336) = v8;
  *(result + 344) = *(a2 + 344);
  if (v8)
  {
    v10 = *(v9 + 8);
    v11 = *(result + 320);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
    }

    *(v6 + 8 * v10) = result + 328;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
  }

  v12 = *(a2 + 352);
  v13 = *(a2 + 360);
  *(a2 + 352) = 0;
  *(result + 352) = v12;
  *(result + 360) = v13;
  *(a2 + 360) = 0;
  v15 = *(a2 + 368);
  v14 = *(a2 + 376);
  *(result + 368) = v15;
  *(result + 376) = v14;
  *(result + 384) = *(a2 + 384);
  if (v14)
  {
    v16 = *(v15 + 8);
    v17 = *(result + 360);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v12 + 8 * v16) = result + 368;
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  *(result + 392) = 0;
  *(result + 400) = 0;
  *(result + 408) = 0;
  *(result + 392) = *(a2 + 392);
  *(a2 + 392) = 0;
  *(result + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  v18 = *(result + 404);
  *(result + 404) = *(a2 + 404);
  *(a2 + 404) = v18;
  v19 = *(result + 408);
  *(result + 408) = *(a2 + 408);
  *(a2 + 408) = v19;
  *(result + 416) = 0;
  *(result + 424) = 0;
  *(result + 432) = 0;
  *(result + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(result + 424) = *(a2 + 424);
  *(a2 + 424) = 0;
  v20 = *(result + 428);
  *(result + 428) = *(a2 + 428);
  *(a2 + 428) = v20;
  v21 = *(result + 432);
  *(result + 432) = *(a2 + 432);
  *(a2 + 432) = v21;
  return result;
}

__n128 std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7D20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void llvm::GlobalDCEPass::~GlobalDCEPass(llvm::GlobalDCEPass *this)
{
  v2 = *(this + 108);
  v3 = *(this + 52);
  if (v2)
  {
    v4 = (v3 + 16);
    v5 = 104 * v2;
    do
    {
      if ((*(v4 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000 && *v4 != *(v4 - 1))
      {
        free(*v4);
      }

      v4 += 13;
      v5 -= 104;
    }

    while (v5);
    v3 = *(this + 52);
    v6 = 104 * *(this + 108);
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
  v7 = *(this + 102);
  v8 = *(this + 49);
  if (v7)
  {
    v9 = 112 * v7;
    do
    {
      if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v8 + 96));
        v10 = *(v8 + 8);
        if ((v8 + 24) != v10)
        {
          free(v10);
        }
      }

      v8 += 112;
      v9 -= 112;
    }

    while (v9);
    v8 = *(this + 49);
    v11 = 112 * *(this + 102);
  }

  else
  {
    v11 = 0;
  }

  llvm::deallocate_buffer(v8, v11);
  v12 = *(this + 46);
  if (v12)
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *(this + 44);
  *(this + 44) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 41);
  if (v15)
  {
    do
    {
      v16 = *v15;
      v17 = v15[4];
      if (v17 != v15[3])
      {
        free(v17);
      }

      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v18 = *(this + 39);
  *(this + 39) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 76);
  v20 = *(this + 36);
  if (v19)
  {
    v21 = (v20 + 16);
    v22 = 72 * v19;
    do
    {
      if ((*(v21 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000 && *v21 != *(v21 - 1))
      {
        free(*v21);
      }

      v21 += 9;
      v22 -= 72;
    }

    while (v22);
    v20 = *(this + 36);
    v23 = 72 * *(this + 76);
  }

  else
  {
    v23 = 0;
  }

  llvm::deallocate_buffer(v20, v23);
  v24 = *(this + 1);
  if (v24 != *this)
  {
    free(v24);
  }
}

uint64_t std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5, &v4);
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::isRequired();
}

char *llvm::PassInfoMixin<llvm::GlobalDCEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x45)
  {
    v1 = v0;
  }

  else
  {
    v1 = 69;
  }

  v2 = &aStringrefLlvmG_92[v1];
  v3 = 69 - v1;
  if ((69 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 69 - v1;
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

uint64_t llvm::IRBuilderBase::CreateAdd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = (*(**(this + 9) + 16))(*(this + 9));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  *a1 = &unk_2825B0018;
  llvm::GlobalDCEPass::~GlobalDCEPass((a1 + 1));

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMUserObject::areIndirectTextureWritesSupported(AGCLLVMUserObject *this)
{
  v1 = *this;
  if (*(this + 14) == 1 && (v2 = *this, *(*(this + *(v1 - 24) + 2168) + 1865) != 1))
  {
    v4 = 0;
  }

  else
  {
    v3 = *this;
    v4 = *(*(this + *(v1 - 24) + 2168) + 1852);
  }

  return v4 & 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v6[0] = &unk_2825A8F68;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMUserObject::replaceTrigIdentities(AGCLLVMUserObject *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  v2 = *(v1 + 267);
  v3 = *(v1 + 271);
  AGCLLVMBuilder::AGCLLVMBuilder(&v39, *v2);
  v45 = v3;
  v39 = &unk_2825A73A0;
  AGCLLVMBuilder::AGCLLVMBuilder(&v46, *v2);
  v51 = &v39;
  v50[37] = v2;
  v52 = v1;
  v46 = &unk_28257D048;
  v44 = v2;
  v41[20] = *(v3 + 104);
  {
    AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements = 0;
    *&dword_28117E488 = 0;
    qword_28117E490 = 0x2800000000;
    __cxa_atexit(llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::flag, memory_order_acquire) != -1)
  {
    v33[0] = v38;
    __p[0] = v33;
    std::__call_once(&AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::flag, __p, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::$_0 &&>>);
  }

  v4 = v44[4];
  v5 = v44 + 3;
  if (v4 != (v44 + 3))
  {
    do
    {
      if (v4)
      {
        v6 = (v4 - 56);
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v4 + 1);
      Name = llvm::Value::getName(v6);
      v38[0] = 0;
      v38[1] = 0;
      if (AGCLLVMBuilder::findPrefix(Name, v9, v38, &v37, "air.", 4uLL))
      {
        Key = llvm::StringMapImpl::FindKey();
        v11 = Key == -1 ? dword_28117E488 : Key;
        if (v11 != dword_28117E488)
        {
          v12 = *(v4 - 6);
          if (v12)
          {
            v30 = AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements;
            do
            {
              while (1)
              {
                v13 = *(v12 + 24);
                v12 = *(v12 + 8);
                if (((llvm::CallBase::arg_end(v13) - (v13 - 32 * (*(v13 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                {
                  llvm::IRBuilderBase::SetInsertPoint(&v40, v13);
                  v14 = *(v13 - 4 * (*(v13 + 5) & 0x7FFFFFF));
                  if (v14)
                  {
                    if (*(v14 + 16) == 84 && ((llvm::CallBase::arg_end(v14) - (v14 + 32 * -(*(v14 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                    {
                      v15 = *(v14 - 32);
                      if (v15)
                      {
                        if (!*(v15 + 16) && *(v15 + 24) == *(v14 + 72))
                        {
                          v16 = llvm::Value::getName(v15);
                          v36[0] = 0;
                          v36[1] = 0;
                          if (AGCLLVMBuilder::findPrefix(v16, v17, v36, &v35, "air.", 4uLL))
                          {
                            v18 = *(v30 + 8 * v11);
                            v19 = llvm::StringMapImpl::FindKey();
                            v20 = v19 == -1 ? *(v18 + 16) : v19;
                            v21 = *(v18 + 8) + 8 * v20;
                            if (v21 != *(*(v30 + 8 * v11) + 8) + 8 * *(*(v30 + 8 * v11) + 16))
                            {
                              if (AGCTargetPrinter::isValidToPrintMessage(*(v52 + 212)))
                              {
                                v29 = *(v52 + 212);
                                llvm::StringRef::str(v33, v38);
                                v22 = v33;
                                if (v34 < 0)
                                {
                                  v22 = v33[0];
                                }

                                v28 = v22;
                                llvm::StringRef::str(__p, v36);
                                if (v32 >= 0)
                                {
                                  v23 = __p;
                                }

                                else
                                {
                                  v23 = __p[0];
                                }

                                AGCTargetPrinter::printMessage(v29, "Simplify Identity: %s(%s)", v28, v23);
                                if (v32 < 0)
                                {
                                  operator delete(__p[0]);
                                }

                                if (v34 < 0)
                                {
                                  operator delete(v33[0]);
                                }
                              }

                              v24 = *(*v21 + 8);
                              v25 = *(*v21 + 16);
                              v26 = (v51 + (v25 >> 1));
                              if (v25)
                              {
                                v24 = *(*v26 + v24);
                              }

                              v24(v26, *(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF)));
                              llvm::Value::replaceAllUsesWith();
                              llvm::Instruction::eraseFromParent(v13);
                              if (!llvm::Value::getNumUses(v14))
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

                if (!v12)
                {
                  goto LABEL_43;
                }
              }

              llvm::Instruction::eraseFromParent(v14);
            }

            while (v12);
          }
        }
      }

LABEL_43:
      v4 = v7;
    }

    while (v7 != v5);
  }

  v39 = &unk_2825A73A0;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v50);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v49);
  if (v47 != &v48)
  {
    free(v47);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v43);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v42);
  if (v40 != v41)
  {
    free(v40);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserObject::Texture::getAllocationInfo(uint64_t this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 24);
    if (v5)
    {
      v6 = *(v3 + 16);
      v7 = &v6[4 * v5];
      v8 = (a3 & 0xFFFFF) - *(v3 + 236);
      do
      {
        v9 = v6[2];
        v10 = v8 / v9;
        v8 %= v9;
        v4 += *(*v6 + 28) * v10;
        v6 += 4;
      }

      while (v6 != v7);
    }

    a3 = a3 & 0xFFF00000 | v4 & 0xFFFFF;
  }

  *(this + 16) = *(a2 + 32);
  *(this + 8) = *(a2 + 8);
  v11 = *(a2 + 12);
  *(this + 9) = *(a2 + 16) == 1;
  *this = a3;
  *(this + 4) = v11;
  *(this + 24) = *(a2 + 40);
  return this;
}

BOOL llvm::SmallPtrSetImplBase::erase_imp(const void ***this, const void *a2)
{
  imp = llvm::SmallPtrSetImplBase::find_imp(this, a2);
  v4 = this[1];
  v5 = 16;
  if (v4 == *this)
  {
    v5 = 20;
  }

  v6 = &v4[*(this + v5)];
  if (imp != v6)
  {
    *imp = -2;
    ++*(this + 6);
  }

  return imp != v6;
}

const void **llvm::SmallPtrSetImplBase::find_imp(const void ***this, const void *a2)
{
  result = *this;
  v5 = this[1];
  if (v5 != result)
  {
    result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
    if (*result == a2)
    {
      return result;
    }

    v5 = this[1];
    v7 = 16;
    if (v5 == *this)
    {
      v7 = 20;
    }

    v8 = *(this + v7);
    return &v5[v8];
  }

  v8 = *(this + 5);
  if (!v8)
  {
    return &v5[v8];
  }

  v9 = 8 * v8;
  while (*result != a2)
  {
    ++result;
    v9 -= 8;
    if (!v9)
    {
      return &v5[v8];
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceLateTextureBufferLength(uint64_t this)
{
  v1 = *(this + *(*this - 24) + 2136);
  v2 = *(v1 + 32);
  v34 = v1 + 24;
  if (v2 != v1 + 24)
  {
    v3 = this;
    v33 = this + 2136;
    v36 = this + 1712;
    v4 = this + 2168;
    v5 = this + 1704;
    do
    {
      v35 = *(v2 + 8);
      if (v2)
      {
        v6 = (v2 - 56);
      }

      else
      {
        v6 = 0;
      }

      this = llvm::Value::getName(v6);
      if (v7 >= 0x26)
      {
        this = memcmp(this, "agx.texture_heap.texture_buffer_length", 0x26uLL);
        if (!this)
        {
          v8 = *(v33 + *(*v3 - 24));
          this = llvm::Module::getGlobalVariable();
          v9 = *(v2 - 48);
          if (v9)
          {
            v10 = this;
            do
            {
              v11 = *(v9 + 24);
              v9 = *(v9 + 8);
              if (*(v11 + 16) == 84)
              {
                v12 = v11;
              }

              else
              {
                v12 = 0;
              }

              llvm::IRBuilderBase::SetInsertPoint((v36 + *(*v3 - 24)), v12);
              v13 = *(v12 - 4 * (*(v12 + 5) & 0x7FFFFFF));
              v14 = v3 + *(*v3 - 24);
              v15 = *(v14 + 238);
              v40 = 257;
              Cast = llvm::IRBuilderBase::CreateCast((v14 + 1712), 47, v13, v15, v39);
              UDiv = Cast;
              v18 = *v3;
              if (!*(*(v4 + *(*v3 - 24)) + 1900))
              {
                v19 = AGCLLVMObject::useTextureIDLegacyMode(Cast);
                v18 = *v3;
                if (v19)
                {
                  v20 = *v3;
                  v21 = (v3 + *(v18 - 24));
                  v22 = *(v21[271] + 1816);
                  v23 = v21[238];
                  v24 = llvm::ConstantInt::get();
                  v40 = 257;
                  UDiv = llvm::IRBuilderBase::CreateUDiv((v21 + 214), UDiv, v24, v39);
                  v18 = *v3;
                }
              }

              v25 = (v3 + *(v18 - 24));
              v26 = v25[239];
              v40 = 257;
              Load = AGCLLVMBuilder::CreateLoad((v25 + 213), v10, v39);
              v38 = 257;
              GEP = llvm::IRBuilderBase::CreateGEP((v25 + 214), v26, Load, UDiv, v37);
              v29 = *(*v3 - 24);
              v40 = 257;
              v30 = AGCLLVMBuilder::CreateLoad((v5 + v29), GEP, v39);
              v31 = v3 + *(*v3 - 24);
              v32 = *(v31 + 238);
              v40 = 257;
              llvm::IRBuilderBase::CreateCast((v31 + 1712), 38, v30, v32, v39);
              llvm::Value::replaceAllUsesWith();
              this = llvm::Instruction::eraseFromParent(v12);
            }

            while (v9);
          }
        }
      }

      v2 = v35;
    }

    while (v35 != v34);
  }

  return this;
}

uint64_t AGCLLVMUserObject::replaceSamplerFunctionUses(uint64_t a1, uint64_t a2, int *a3)
{
  v502 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = (a1 + *(*a1 - 24));
  size = v7[90].__r_.__value_.__l.__size_;
  v9 = *a3;
  if ((size[1864] & 1) != 0 || a3[1] != 2)
  {
    if (v9 == 3)
    {
      (*(*size + 416))(size, *(a1 + 160));
      v6 = *a1;
      v9 = *a3;
    }
  }

  else if ((v9 & 0xFFFFFFFE) == 2)
  {
    v10 = "Read or write to cube texture not supported";
    v11 = v7 + 69;
LABEL_456:
    std::string::append(v11, v10);
    goto LABEL_457;
  }

  if (*(*(a1 + *(v6 - 24) + 2168) + 1855) == 1 && v9 == 8)
  {
    v13 = (*(v6 + 448))(a1);
    if (v13)
    {
      v14 = *(v13 + 32);
      if ((v14 & 0x400000) == 0)
      {
        v412 = std::__throw_bad_optional_access[abi:nn200100]();
        return AGCLLVMUserObject::isConstantSampler(v412, v413, v414, v415);
      }

      v6 = *a1;
      if ((v14 & 0x200000) != 0)
      {
        v15 = *a1;
        v16 = (a1 + *(v6 - 24));
        v10 = "Large MRT not supported with image block write";
LABEL_455:
        v11 = v16 + 69;
        goto LABEL_456;
      }
    }

    else
    {
      v6 = *a1;
    }
  }

  v17 = *(*(a1 + *(v6 - 24) + 2168) + 1792);
  v18 = llvm::PointerType::get();
  v19 = *v18;
  __src = v18;
  llvm::StructType::get();
  v20 = *a1;
  v431 = *(a3 + 41);
  if (*(a3 + 41))
  {
    v442 = *(*(a1 + *(v20 - 24) + 2168) + 1846);
  }

  else
  {
    v442 = 0;
  }

  v21 = *(v20 - 24);
  v22 = *(a2 + 8);
  v23 = 1;
  if (!v22)
  {
    goto LABEL_458;
  }

  v24 = a1 + 1712;
  v441 = a1 + 2168;
  v420 = *(*(a1 + v21 + 2168) + 1853);
  v447 = a1 + 1704;
  v424 = a1 + 2136;
  v423 = a1 + 1904;
  v436 = *(**(*(a2 + 24) + 16) + 8);
  v422 = a1 + 1888;
  v443 = a1 + 1712;
  v425 = *a3 & 0xFFFFFFFE;
  while (1)
  {
    v25 = *(v22 + 24);
    v22 = *(v22 + 8);
    llvm::IRBuilderBase::SetInsertPoint((v24 + *(*a1 - 24)), v25);
    v26 = *a3;
    memset(v483, 0, 11);
    v484 = 0u;
    v485 = 0u;
    v486 = 0u;
    v487 = 0u;
    v488 = 0;
    v489 = 0u;
    v490 = 0u;
    v491 = 0u;
    v492 = 0;
    v494 = 0u;
    memset(v495, 0, 28);
    v497 = 0u;
    memset(v498, 0, sizeof(v498));
    v496 = 0u;
    v499 = 1;
    v500 = 0;
    v501 = 0;
    v27 = a3[3];
    v498[25] = *(a3 + 52) != 0;
    *&v498[26] = *(a3 + 47);
    v493 = 4;
    v28 = *(v25 + 5) & 0x7FFFFFF;
    __src = v26;
    v481 = v27;
    v29 = (v25 - 32 * v28);
    ConstantSamplerGlobal = *(a3 + 31) ? *&v29[8 * *(a3 + 31)] : 0;
    v31 = *&v29[8 * *(a3 + 30)];
    if (!v31 || *(v31 + 16) - 11 >= 2)
    {
      if (!ConstantSamplerGlobal)
      {
        v444 = *&v29[8 * *(a3 + 30)];
        isConstantSampler = 0;
        v471 = 0;
        v470 = 0;
        goto LABEL_36;
      }

      if (ConstantSamplerGlobal[16] - 11 >= 2)
      {
        break;
      }
    }

    v32 = *v25;
    llvm::UndefValue::get();
LABEL_30:
    llvm::Value::replaceAllUsesWith();
LABEL_31:
    llvm::Instruction::eraseFromParent(v25);
LABEL_32:
    if (!v22)
    {
      v23 = 1;
      goto LABEL_458;
    }
  }

  v444 = *&v29[8 * *(a3 + 30)];
  v471 = 0;
  v470 = 0;
  isConstantSampler = AGCLLVMUserObject::isConstantSampler(a1, ConstantSamplerGlobal, &v471, &v470);
LABEL_36:
  if (v444 && *(llvm::Value::stripPointerCasts(v444) + 16) >= 0x15u && !(*(*a1 + 400))(a1))
  {
    goto LABEL_32;
  }

  if ((isConstantSampler & 1) == 0)
  {
    v35 = (*(*a1 + 416))(a1);
    if (ConstantSamplerGlobal)
    {
      if ((v35 & 1) == 0 && *(llvm::Value::stripPointerCasts(ConstantSamplerGlobal) + 16) > 0x14u)
      {
        goto LABEL_32;
      }
    }
  }

  if ((isConstantSampler | (*(*a1 + 352))(a1) & v442 ^ 1))
  {
    if ((llvm::AttributeList::hasFnAttr() & 1) != 0 || (llvm::CallBase::hasFnAttrOnCalledFunction() & 1) != 0 || a3[4] >= 2)
    {
      v501 = 1;
    }

    v469 = 0;
    if (isConstantSampler && !*(*(v441 + *(*a1 - 24)) + 1900))
    {
      v36 = v471;
      if (v442)
      {
        v37 = ((v471 >> 16) & 0xF) - 1;
        if (v37 > 7)
        {
          LOWORD(v38) = 0;
        }

        else
        {
          v38 = dword_20E715D98[v37];
        }

        v469 = (32 * ((v471 & 0x6000) != 0)) | (((v471 & 0x6000) == 0x4000) << 6) | (((v471 & 0x1800) == 2048) << 7) | (((v471 & 0x600) == 512) << 8) | v38;
        v36 = v471 & 0xFFFFFFFFFFF0FFFFLL;
      }

      ConstantSamplerGlobal = AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(a1, v36, v470);
    }

    v438 = ConstantSamplerGlobal;
    v440 = v22;
    BYTE1(v483[2]) = (*a3 - 9) < 2;
    if (*(a3 + 36))
    {
      v39 = (v25 - 32 * (*(v25 + 5) & 0x7FFFFFF));
      if (!*(a3 + 35))
      {
        goto LABEL_63;
      }

      v40 = *&v39[8 * *(a3 + 35)];
      if (!v40)
      {
        goto LABEL_63;
      }

      v41 = (v40 + 24);
      if (*(v40 + 32) >= 0x41u)
      {
        v41 = *v41;
      }

      if (*v41)
      {
LABEL_63:
        v42 = *&v39[8 * *(a3 + 36)];
        if (v42 && *(v42 + 16) <= 0x14u)
        {
          if (llvm::Constant::isZeroValue(*&v39[8 * *(a3 + 36)]))
          {
            goto LABEL_78;
          }

          v426 = isConstantSampler;
          if ((*(*v42 + 8) & 0xFE) == 0x12)
          {
            v43 = *(*v42 + 32);
            InsertElement = llvm::ConstantAggregateZero::get();
            if (v43)
            {
              for (i = 0; i != v43; ++i)
              {
                AggregateElement = llvm::Constant::getAggregateElement(v42);
                v47 = AggregateElement;
                v48 = *(AggregateElement + 32);
                if (v48 > 0x40)
                {
                  v49 = **(AggregateElement + 24);
                }

                else
                {
                  v49 = (*(AggregateElement + 24) << -v48) >> -v48;
                }

                if ((v49 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
                {
                  v50 = *AggregateElement;
                  v47 = llvm::ConstantInt::get();
                }

                v51 = v447 + *(*a1 - 24);
                LOWORD(v479) = 257;
                v52 = *(v51 + 200);
                v53 = llvm::ConstantInt::get();
                InsertElement = llvm::IRBuilderBase::CreateInsertElement((v51 + 8), InsertElement, v47, v53, __dst);
              }
            }
          }

          else
          {
            v96 = *(v42 + 32);
            if (v96 > 0x40)
            {
              v97 = **(v42 + 24);
            }

            else
            {
              v97 = (*(v42 + 24) << -v96) >> -v96;
            }

            InsertElement = v42;
            if ((v97 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
            {
              InsertElement = llvm::ConstantInt::get();
            }
          }
        }

        else
        {
          v426 = isConstantSampler;
          InsertElement = *&v39[8 * *(a3 + 36)];
        }

        *(&v491 + 1) = InsertElement;
        v22 = v440;
        v24 = a1 + 1712;
        isConstantSampler = v426;
      }
    }

LABEL_78:
    if (*a3 == 12)
    {
      *(&v497 + 1) = *(v25 + 4 * *(a3 + 48) + -4 * (*(v25 + 5) & 0x7FFFFFF));
      *v498 = *(v25 + 4 * *(a3 + 49) + -4 * (*(v25 + 5) & 0x7FFFFFF));
      *&v498[8] = *(v25 + 4 * *(a3 + 50) + -4 * (*(v25 + 5) & 0x7FFFFFF));
      *&v498[16] = *(v25 + 4 * *(a3 + 51) + -4 * (*(v25 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 40))
    {
      if (BYTE1(v483[2]) == 1)
      {
        v54 = *(a1 + 1896 + *(*a1 - 24));
        v55 = llvm::ConstantInt::get();
      }

      else
      {
        v55 = *(v25 + 4 * *(a3 + 40) + -4 * (*(v25 + 5) & 0x7FFFFFF));
      }

      v492 = v55;
    }

    if (v436 == 16)
    {
      if ((v442 & 1) == 0)
      {
        LOBYTE(v483[2]) = 1;
      }

      if (*(a3 + 46))
      {
        v495[1] = *(v25 + 4 * *(a3 + 46) + -4 * (*(v25 + 5) & 0x7FFFFFF));
      }
    }

    v56 = *(a3 + 38);
    if (*(a3 + 38))
    {
      *(&v494 + 1) = *(v25 + 4 * v56 + -4 * (*(v25 + 5) & 0x7FFFFFF));
      v495[0] = *(v25 + 4 * v56 + -4 * (*(v25 + 5) & 0x7FFFFFF) + 4);
      v493 = 2;
      goto LABEL_92;
    }

    if (*(a3 + 37))
    {
      v71 = (v25 + 32 * *(a3 + 37) + -32 * (*(v25 + 5) & 0x7FFFFFF));
      v72 = *v71;
      *&v494 = v71[4];
      v73 = (v72 + 24);
      if (*(v72 + 32) >= 0x41u)
      {
        v73 = *v73;
      }

      v74 = *v73;
      v493 = v74 != 0;
      if (HIDWORD(__src))
      {
        v75 = *a1;
        if (!v74)
        {
          if (!(*(v75 + 336))(a1))
          {
            v493 = 1;
            goto LABEL_92;
          }

          v75 = *a1;
        }

        if (!(*(v75 + 384))(a1))
        {
          goto LABEL_92;
        }

        v493 = 0;
        v76 = *(*a1 - 24);
        v77 = AGCLLVMUserObject::buildSamplerArgumentPointer(a1, v438, 1u);
        LOWORD(v479) = 257;
        Load = AGCLLVMBuilder::CreateLoad((v447 + v76), v77, __dst);
        goto LABEL_263;
      }

      if (__src != 3 || (v95 = *a1, *(*(v441 + *(*a1 - 24)) + 1883) != 1))
      {
LABEL_257:
        v493 = 3;
        *&v494 = 0;
        goto LABEL_92;
      }

      goto LABEL_174;
    }

    v86 = *(a3 + 39);
    if (*(a3 + 39))
    {
      if (HIDWORD(__src))
      {
        v493 = 1;
        v87 = *(v25 + 4 * v86 + -4 * (*(v25 + 5) & 0x7FFFFFF));
      }

      else if (__src == 3)
      {
        v493 = 1;
        v108 = *(v423 + *(*a1 - 24));
        v87 = llvm::ConstantInt::get();
      }

      else
      {
        v87 = 0;
        v493 = 3;
      }

      *&v494 = v87;
      if (!v420 || *a3 != 8 && *a3 != 3)
      {
LABEL_92:
        if (v431)
        {
          v495[2] = AGCLLVMBuilder::f32Extend((v447 + *(*a1 - 24)), *(v25 + 4 * *(a3 + 41) + -4 * (*(v25 + 5) & 0x7FFFFFF)), 1);
        }

        if (*(a3 + 42))
        {
          *&v496 = *(v25 + 4 * *(a3 + 42) + -4 * (*(v25 + 5) & 0x7FFFFFF));
        }

        v57 = *a3;
        if (*a3 == 8 || v57 == 3)
        {
          DefaultRoundingMode = a3[6];
          v59 = *a1;
          if (!DefaultRoundingMode)
          {
            DefaultRoundingMode = AGCLLVMObject::getDefaultRoundingMode((a1 + *(v59 - 24)));
            v59 = *a1;
          }

          v16 = (a1 + *(v59 - 24));
          v60 = v16[90].__r_.__value_.__l.__size_;
          if (DefaultRoundingMode == 2 && (v60[1888] & 1) == 0)
          {
            v10 = "The specified rounding mode is not supported on this device.";
            goto LABEL_455;
          }

          v483[0] = AGCLLVMTargetLowerer::getRTZMode(v60, DefaultRoundingMode);
          v57 = *a3;
        }

        v61 = (a1 + *(*a1 - 24));
        v62 = *(*(v61 + 271) + 1891) == 1 && v57 == 0;
        if (v62 && AGCLLVMObject::getDefaultRoundingMode(v61) == 1)
        {
          LOBYTE(v483[1]) = 1;
        }

        if (*(a3 + 43))
        {
          *(&v496 + 1) = *(v25 + 4 * *(a3 + 43) + -4 * (*(v25 + 5) & 0x7FFFFFF));
          v63 = **(&v496 + 1);
          if ((*(**(&v496 + 1) + 8) & 0xFE) == 0x12)
          {
            v63 = **(v63 + 16);
          }

          v64 = a1 + *(*a1 - 24);
          if (v63 == *(v64 + 1872) && (v483[0] & 0xFFFFFFFE) == 2)
          {
            v466 = *(v64 + 1760);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v467, (v64 + 1712));
            v468 = *(v64 + 1808);
            AGCLLVMUserObject::buildEmulatedIsF16Format(a1, &v466, v444);
            if (v467)
            {
              llvm::MetadataTracking::untrack();
            }

            v65 = a1 + *(*a1 - 24);
            v66 = *(v65 + 2168);
            v463 = *(v65 + 1760);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v464, (v65 + 1712));
            v465 = *(v65 + 1808);
            AGCLLVMTargetLowerer::buildRTZF16Value(v66, &v463, *(&v496 + 1), v483[0] == 3);
            if (v464)
            {
              llvm::MetadataTracking::untrack();
            }

            v67 = *(*a1 - 24);
            LOWORD(v479) = 257;
            *(&v496 + 1) = llvm::IRBuilderBase::CreateSelect();
          }
        }

        if (*(a3 + 44))
        {
          *&v497 = *(v25 + 4 * *(a3 + 44) + -4 * (*(v25 + 5) & 0x7FFFFFF));
        }

        if (*(a3 + 45))
        {
          v68 = *(v25 + 4 * *(a3 + 45) + -4 * (*(v25 + 5) & 0x7FFFFFF));
          v69 = (v68 + 24);
          if (*(v68 + 32) >= 0x41u)
          {
            v69 = *v69;
          }

          v70 = *v69;
        }

        else
        {
          if (v425 != 4)
          {
LABEL_138:
            BindlessConstantSampler = 0;
            v434 = *a3;
            if (v438 || *a3 == 8)
            {
              goto LABEL_207;
            }

            __p[0] = 4;
            __p[1] = 0;
            v475 = 0;
            if ((*(*a1 + 352))(a1))
            {
              if (*a3 == 3)
              {
                if (a3[1])
                {
                  v80 = 3;
                }

                else
                {
                  v80 = 1;
                }
              }

              else if (*a3 == 2)
              {
                if (*(a3 + 54))
                {
                  v80 = 4;
                }

                else
                {
                  v80 = 2 * (a3[1] != 0);
                }
              }

              else
              {
                v80 = 5;
              }

              InternalConstSampler = AGCLLVMUserObject::getInternalConstSampler(a1, v80);
              v111 = v109;
              v112 = a1 + *(*a1 - 24);
              if (*(*(v112 + 2168) + 1900))
              {
                llvm::IRBuilderBase::SetInsertPoint((v112 + 1712), v25);
                v113 = *(v423 + *(*a1 - 24));
                v114 = llvm::PointerType::get();
                BindlessConstantSampler = AGCLLVMUserObject::getBindlessConstantSampler(a1, InternalConstSampler, v111, v114);
                isConstantSampler = 1;
LABEL_203:
                if (v475 != -8192 && v475 != -4096 && v475)
                {
                  v116 = BindlessConstantSampler;
                  llvm::ValueHandleBase::RemoveFromUseList(__p);
                  BindlessConstantSampler = v116;
                }

LABEL_207:
                if (*(a3 + 52))
                {
                  v117 = *(v25 + 4 * *(a3 + 47) + -4 * (*(v25 + 5) & 0x7FFFFFF));
                  if (v117)
                  {
                    if (*(v117 + 16) == 16)
                    {
                      v118 = (v117 + 24);
                      if (*(v117 + 32) >= 0x41u)
                      {
                        v118 = *v118;
                      }

                      *&v498[26] = *v118;
                    }
                  }
                }

                v429 = BindlessConstantSampler;
                llvm::IRBuilderBase::SetInsertPoint((v24 + *(*a1 - 24)), v25);
                v119 = *(v25 + 4 * *(a3 + 34) + -4 * (*(v25 + 5) & 0x7FFFFFF));
                *&v491 = v119;
                v120 = a3[1];
                v122 = v120 == 2 && *a3 != 8;
                if (v120 == 3 || v122)
                {
                  v130 = AGCLLVMBuilder::extendVector((v447 + *(*a1 - 24)), v119, 4);
                  v432 = 0;
                }

                else
                {
                  v123 = *a1;
                  if (!*(a3 + 54))
                  {
                    v432 = 0;
LABEL_267:
                    if ((*(*(v441 + *(v123 - 24)) + 1953) & 1) == 0 && *(&v491 + 1) && *a3 == 2)
                    {
                      v428 = v25;
                      v186 = isConstantSampler;
                      v187 = 0;
                      if (a3[1] == 1)
                      {
                        v188 = 2;
                      }

                      else
                      {
                        v188 = 3;
                      }

                      do
                      {
                        v189 = v447 + *(*a1 - 24);
                        v190 = v491;
                        LOWORD(v479) = 257;
                        v191 = *(v189 + 200);
                        v192 = llvm::ConstantInt::get();
                        Element = llvm::IRBuilderBase::CreateExtractElement((v189 + 8), v190, v192, __dst);
                        v194 = v447 + *(*a1 - 24);
                        v195 = *(&v491 + 1);
                        LOWORD(v479) = 257;
                        v196 = *(v194 + 200);
                        v197 = llvm::ConstantInt::get();
                        v198 = llvm::IRBuilderBase::CreateExtractElement((v194 + 8), v195, v197, __dst);
                        v199 = a1 + *(*a1 - 24);
                        v200 = v491;
                        LOWORD(v479) = 257;
                        Add = llvm::IRBuilderBase::CreateAdd((v199 + 1712), Element, v198, __dst);
                        v476 = 257;
                        v202 = *(v199 + 1904);
                        v203 = llvm::ConstantInt::get();
                        llvm::IRBuilderBase::CreateInsertElement((v199 + 1712), v200, Add, v203, __p);
                        ++v187;
                      }

                      while (v188 != v187);
                      *(&v491 + 1) = 0;
                      v123 = *a1;
                      v22 = v440;
                      isConstantSampler = v186;
                      v25 = v428;
                    }

                    v204 = a1 + *(v123 - 24);
                    v205 = *(v204 + 2168);
                    if (v205[1881] == 1 && (*(a1 + 20) & 1) == 0 && (v205[1882] & 1) == 0)
                    {
                      if (a3[1])
                      {
                        v206 = 16;
                      }

                      else if (v205[1884])
                      {
                        v206 = 30;
                      }

                      else
                      {
                        v206 = 16;
                      }

                      if (*a3 == 2)
                      {
                        v460 = *(v204 + 1760);
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v461, (v204 + 1712));
                        v462 = *(v204 + 1808);
                        (*(*v205 + 904))(v205, &v460, a1, v444, &__src, *(a3 + 40), *(a3 + 44), *(a3 + 42), v416, v417, v418);
                        if (v461)
                        {
                          llvm::MetadataTracking::untrack();
                        }
                      }

                      else if (*a3 == 3)
                      {
                        if (a3[2] == 1)
                        {
                          *&v491 = AGCLLVMBuilder::clampToWidth((v204 + 1704), v491, v206, 0);
                          v123 = *a1;
                        }

                        v207 = *(a1 + 1880 + *(v123 - 24));
                        v208 = llvm::ConstantInt::get();
                        if (*(a3 + 40))
                        {
                          v209 = *(*a1 - 24);
                          v210 = AGCLLVMUserObject::buildImageArgumentPointer(a1, *(v25 - 4 * (*(v25 + 5) & 0x7FFFFFF)), 2u);
                          LOWORD(v479) = 257;
                          v211 = AGCLLVMBuilder::CreateLoad((v447 + v209), v210, __dst);
                          v212 = a1 + *(*a1 - 24);
                          LOWORD(v479) = 257;
                          v213 = *(v212 + 1904);
                          v214 = llvm::ConstantInt::get();
                          v215 = llvm::IRBuilderBase::CreateExtractElement((v212 + 1712), v211, v214, __dst);
                          v216 = *(v423 + *(*a1 - 24));
                          v217 = llvm::ConstantInt::get();
                          v476 = 257;
                          Sub = llvm::IRBuilderBase::CreateSub((v212 + 1712), v215, v217, __p);
                          v219 = *(*a1 - 24);
                          v220 = v492;
                          v221 = *v492;
                          LOWORD(v479) = 257;
                          ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc((v443 + v219), Sub, v221, __dst);
                          v476 = 257;
                          ICmp = llvm::IRBuilderBase::CreateICmp((v443 + v219), 34, v220, ZExtOrTrunc, __p);
                          v473 = 257;
                          v208 = llvm::IRBuilderBase::CreateOr((v443 + v219), v208, ICmp, &v472);
                        }

                        if (*(a3 + 44))
                        {
                          v224 = *(*a1 - 24);
                          v225 = v497;
                          v226 = *v497;
                          v227 = llvm::ConstantInt::get();
                          LOWORD(v479) = 257;
                          v228 = llvm::IRBuilderBase::CreateICmp((v443 + v224), 34, v225, v227, __dst);
                          v476 = 257;
                          llvm::IRBuilderBase::CreateOr((v443 + v224), v208, v228, __p);
                        }

                        v229 = v491;
                        v230 = *(*a1 - 24);
                        if ((*(*v491 + 8) & 0xFE) == 0x12)
                        {
                          v231 = v447 + v230;
                          LOWORD(v479) = 257;
                          v232 = *(v447 + v230 + 200);
                          v233 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateExtractElement((v231 + 8), v229, v233, __dst);
                          v234 = *(*a1 - 24);
                          v235 = v491;
                          v236 = *v491;
                          if ((*(*v491 + 8) & 0xFE) == 0x12)
                          {
                            v236 = **(v236 + 16);
                          }

                          v237 = (a1 + v234);
                          if (v236 != *(a1 + v234 + 1904))
                          {
                            v238 = v237[237];
                          }

                          llvm::ConstantInt::get();
                          LOWORD(v479) = 257;
                          Select = llvm::IRBuilderBase::CreateSelect();
                          v476 = 257;
                          v240 = v237[238];
                          v241 = llvm::ConstantInt::get();
                          *&v491 = llvm::IRBuilderBase::CreateInsertElement((v237 + 214), v235, Select, v241, __p);
                        }

                        else
                        {
                          if (*v491 != *(a1 + v230 + 1904))
                          {
                            v242 = *(a1 + v230 + 1896);
                          }

                          llvm::ConstantInt::get();
                          LOWORD(v479) = 257;
                          *&v491 = llvm::IRBuilderBase::CreateSelect();
                        }
                      }
                    }

                    BYTE2(v483[1]) = (v442 & 1) == 0;
                    BYTE1(v483[1]) = a3[7] & BYTE2(v483[1]);
                    *&v486 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v444, 2u);
                    *(&v486 + 1) = AGCLLVMUserObject::buildImageArgumentPointer(a1, v444, 3u);
                    if (*a3 == 8 || *a3 == 3)
                    {
                      *&v484 = AGCLLVMUserObject::buildBindlessIndexAsPtr(a1, v444);
                      *(&v485 + 1) = AGCLLVMUserObject::buildImageArgumentPointer(a1, v444, 1u);
                      v24 = a1 + 1712;
                      if ((*(*a1 + 408))(a1))
                      {
                        goto LABEL_308;
                      }

                      v243 = 4;
                      v244 = &v487;
                      v245 = v444;
                    }

                    else
                    {
                      v245 = v444;
                      v246 = AGCLLVMUserObject::buildBindlessIndexAsPtr(a1, v444);
                      v243 = 0;
                      *&v484 = v246;
                      v244 = &v485;
                      v24 = a1 + 1712;
                    }

                    *v244 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v245, v243);
LABEL_308:
                    if (v434 == 8)
                    {
                      v249 = *(a3 + 32);
                      v488 = *(a1 + 3764);
                      *&v489 = *(v25 + 4 * v249 + -4 * (*(v25 + 5) & 0x7FFFFFF));
                      *(&v489 + 1) = *(v25 + 4 * v249 + -4 * (*(v25 + 5) & 0x7FFFFFF) + 4);
                      *&v490 = *(v25 + 4 * v249 + -4 * (*(v25 + 5) & 0x7FFFFFF) + 8);
                      *(&v490 + 1) = *(v25 + 4 * v249 + -4 * (*(v25 + 5) & 0x7FFFFFF) + 12);
                      v482 = a3[5];
                      BYTE2(v483[2]) = (*(*(a1 + *(*a1 - 24)) + 240))(a1 + *(*a1 - 24)) ^ 1;
                      v250 = *(v25 + 4 * *(a3 + 53) + -4 * (*(v25 + 5) & 0x7FFFFFF));
                      v251 = (v250 + 24);
                      if (*(v250 + 32) >= 0x41u)
                      {
                        v251 = *v251;
                      }

                      if (*v251)
                      {
                        v500 = (*(*a1 + 448))(a1);
                      }

                      goto LABEL_321;
                    }

                    if (v429)
                    {
                      v247 = a1 + *(*a1 - 24);
                      if (*(*(v247 + 2168) + 1900))
                      {
                        *(&v484 + 1) = AGCLLVMUserObject::buildBindlessSamplerIndex(a1, v429);
                        Value = AGCLLVMUserObject::buildSamplerArgumentPointer(a1, v429, 0);
                      }

                      else
                      {
                        LODWORD(__p[0]) = 0;
                        LOWORD(v479) = 257;
                        Value = llvm::IRBuilderBase::CreateExtractValue(v247 + 1712, v429, __p, 1, __dst);
                      }

                      *(&v487 + 1) = Value;
                      goto LABEL_321;
                    }

                    v252 = v438;
                    *(&v484 + 1) = AGCLLVMUserObject::buildBindlessSamplerIndex(a1, v438);
                    *(&v487 + 1) = AGCLLVMUserObject::buildSamplerArgumentPointer(a1, v438, 0);
                    if (isConstantSampler)
                    {
                      if (v442)
                      {
                        goto LABEL_324;
                      }

                      goto LABEL_332;
                    }

                    v277 = *(v438 + 16);
                    if (!v438 || (v278 = v277 - 28, v277 < 0x1C))
                    {
                      if (!v438 || v277 != 5)
                      {
                        goto LABEL_372;
                      }

                      v278 = *(v438 + 9);
                    }

                    if (v278 - 48 <= 2)
                    {
                      do
                      {
                        v279 = *(v252 + 20);
                        if ((v279 & 0x40000000) != 0)
                        {
                          v280 = *(v252 - 8);
                        }

                        else
                        {
                          v280 = (v252 - 32 * (v279 & 0x7FFFFFF));
                        }

                        v252 = *v280;
                        v277 = *(*v280 + 16);
                        if (v252)
                        {
                          v281 = v277 >= 0x1C;
                        }

                        else
                        {
                          v281 = 0;
                        }

                        if (v281)
                        {
                          v283 = v277 - 28;
                        }

                        else
                        {
                          if (v252)
                          {
                            v282 = v277 == 5;
                          }

                          else
                          {
                            v282 = 0;
                          }

                          if (!v282)
                          {
                            break;
                          }

                          v283 = *(v252 + 18);
                        }
                      }

                      while (v283 - 48 < 3);
                    }

LABEL_372:
                    if (v277 == 3)
                    {
                      if ((llvm::GlobalValue::isDeclaration(v252) & 1) == 0)
                      {
                        __dst[0] = 0;
                        if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*(a1 + 688), *(a1 + 704), v252, __dst))
                        {
                          v284 = __dst[0];
                        }

                        else
                        {
                          v284 = (*(a1 + 688) + 48 * *(a1 + 704));
                        }

                        v400 = (v284 + 40);
LABEL_437:
                        v253 = *v400;
                        if (v253 != -1)
                        {
                          HIBYTE(v483[1]) = (*(*a1 + 376))(a1, v253) & 1;
                        }

                        goto LABEL_322;
                      }
                    }

                    else if (v277 <= 0x14)
                    {
                      if (v277 == 16)
                      {
                        PtrToInt = v252;
                      }

                      else
                      {
                        v401 = *(v423 + *(*a1 - 24));
                        PtrToInt = llvm::ConstantExpr::getPtrToInt();
                        if (PtrToInt)
                        {
                          v402 = *(PtrToInt + 16) == 16;
                        }

                        else
                        {
                          v402 = 0;
                        }

                        if (!v402)
                        {
                          v403 = *(a1 + 1912 + *(*a1 - 24));
                          PtrToInt = llvm::ConstantExpr::getPtrToInt();
                          if (*(PtrToInt + 16) != 16)
                          {
                            PtrToInt = 0;
                          }
                        }
                      }

                      if (*(PtrToInt + 32) > 0x40u)
                      {
                        v404 = **(PtrToInt + 24);
                        if ((v404 & 0x4000000000000000) != 0)
                        {
                          goto LABEL_321;
                        }
                      }

                      else
                      {
                        v404 = *(PtrToInt + 24);
                        if ((v404 & 0x4000000000000000) != 0)
                        {
                          goto LABEL_321;
                        }
                      }

                      if (v404 < *(a1 + 664))
                      {
                        v400 = (*(a1 + 656) + 4 * v404);
                        goto LABEL_437;
                      }
                    }

LABEL_321:
                    v253 = 0xFFFFFFFFLL;
LABEL_322:
                    if (v442)
                    {
                      if (!isConstantSampler)
                      {
                        LOWORD(__dst[0]) = (*(*a1 + 360))(a1, v253);
                        v254 = __dst;
                        goto LABEL_341;
                      }

LABEL_324:
                      v254 = &v469;
LABEL_341:
                      v260 = AGCLLVMUserObject::buildEmulatePCF(a1, &__src, v254);
                      v268 = 0;
                      goto LABEL_343;
                    }

                    if (v431)
                    {
                      v255 = isConstantSampler;
                    }

                    else
                    {
                      v255 = 1;
                    }

                    if ((v255 & 1) == 0 && ((*(*a1 + 360))(a1, v253) & 0x10) != 0)
                    {
                      v256 = a1 + *(*a1 - 24);
                      v257 = *(v256 + 2168);
                      v457 = *(v256 + 1760);
                      llvm::IRBuilderBase::getCurrentDebugLocation(&v458, (v256 + 1712));
                      v459 = *(v256 + 1808);
                      v495[2] = (*(*v257 + 40))(v257, &v457, v495[2], 0);
                      if (v458)
                      {
                        llvm::MetadataTracking::untrack();
                      }
                    }

LABEL_332:
                    v258 = a1 + *(*a1 - 24);
                    v259 = *(v258 + 2168);
                    v454 = *(v258 + 1760);
                    llvm::IRBuilderBase::getCurrentDebugLocation(&v455, (v258 + 1712));
                    v456 = *(v258 + 1808);
                    v260 = (*(*v259 + 288))(v259, &v454, &__src);
                    v261 = v455;
                    if (v455)
                    {
                      llvm::MetadataTracking::untrack();
                    }

                    if (*a3 == 12)
                    {
                      v262 = *(v441 + *(*a1 - 24));
                      if ((*(*v262 + 296))(v262, &__src))
                      {
                        v263 = v260;
                        v498[24] = 1;
                        v264 = a1 + *(*a1 - 24);
                        v265 = *(v264 + 2168);
                        v451 = *(v264 + 1760);
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v452, (v264 + 1712));
                        v453 = *(v264 + 1808);
                        v266 = (*(*v265 + 288))(v265, &v451, &__src);
                        if (v452)
                        {
                          llvm::MetadataTracking::untrack();
                        }

                        v267 = *(*a1 - 24);
                        LODWORD(__p[0]) = 0;
                        LOWORD(v479) = 257;
                        v268 = llvm::IRBuilderBase::CreateExtractValue(v24 + v267, v266, __p, 1, __dst);
                        v498[24] = 0;
                        v260 = v263;
                      }

                      else
                      {
                        v268 = 0;
                      }
                    }

                    else
                    {
                      v268 = 0;
                    }

LABEL_343:
                    if (!v260)
                    {
                      goto LABEL_31;
                    }

                    v435 = v268;
                    if (v436 == 16)
                    {
                      if ((v483[2] & 1) == 0)
                      {
                        v269 = a1 + *(*a1 - 24);
                        v270 = v260;
                        v271 = *(v269 + 2168);
                        v448 = *(v269 + 1760);
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v449, (v269 + 1712));
                        v450 = *(v269 + 1808);
                        v260 = (*(*v271 + 312))(v271, &v448, v270);
                        v261 = v449;
                        if (v449)
                        {
                          llvm::MetadataTracking::untrack();
                        }
                      }

                      if (LOBYTE(v483[2]) == 1 && *(a1 + 3913) == 1)
                      {
                        v272 = a1 + *(*a1 - 24);
                        v273 = *(v272 + 1760);
                        v274 = *(v272 + 1768);
                        __dst[0] = "sparse_tier1_done";
                        LOWORD(v479) = 259;
                        llvm::BasicBlock::splitBasicBlock();
                        v275 = *(a1 + 1776 + *(*a1 - 24));
                        __dst[0] = "sparse_tier1_valid";
                        LOWORD(v479) = 259;
                        v276 = *(v273 + 56);
                        operator new();
                      }
                    }

                    v286 = v260;
                    if (v432)
                    {
                      v287 = *(v441 + *(*a1 - 24));
                      v288 = (*(*v287 + 808))(v287);
                    }

                    else
                    {
                      v288 = 0;
                    }

                    if (a3[1] == 2 && (*(a1 + 20) & 1) == 0)
                    {
                      v289 = *(*(v441 + *(*a1 - 24)) + 1944) ^ 1;
                    }

                    else
                    {
                      v289 = 0;
                    }

                    v290 = *a3;
                    if (*a3 == 2 && ((v288 | v289) & 1) != 0)
                    {
                      v323 = v286;
                      if (v436 == 16)
                      {
                        v324 = *(*a1 - 24);
                        LODWORD(__p[0]) = 0;
                        LOWORD(v479) = 257;
                        v323 = llvm::IRBuilderBase::CreateExtractValue(v24 + v324, v286, __p, 1, __dst);
                      }

                      NullValue = llvm::Constant::getNullValue(*v323, v261);
                      v439 = v323;
                      v325 = *v323;
                      if ((*(*v323 + 2) & 0xFE) == 0x12)
                      {
                        v325 = **(v325 + 2);
                      }

                      v326 = *(*a1 - 24);
                      v327 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v444, 2u);
                      LOWORD(v479) = 257;
                      v328 = AGCLLVMBuilder::CreateLoad((v447 + v326), v327, __dst);
                      v329 = v447 + *(*a1 - 24);
                      LOWORD(v479) = 257;
                      v330 = *(v329 + 200);
                      v331 = llvm::ConstantInt::get();
                      v332 = llvm::IRBuilderBase::CreateExtractElement((v329 + 8), v328, v331, __dst);
                      v333 = v332;
                      if (v289)
                      {
                        LShr = v332;
                        if (v494)
                        {
                          v335 = *(*a1 - 24);
                          v336 = *v332;
                          LOWORD(v479) = 257;
                          Cast = llvm::IRBuilderBase::CreateCast(v443 + v335, 39, v494, v336, __dst);
                          v338 = *(*a1 - 24);
                          LOWORD(v479) = 257;
                          LShr = llvm::IRBuilderBase::CreateLShr((v443 + v338), v333, Cast, __dst);
                        }

                        v430 = v333;
                        v339 = a1 + *(*a1 - 24);
                        v340 = v491;
                        LOWORD(v479) = 257;
                        v341 = *(v339 + 1904);
                        v342 = llvm::ConstantInt::get();
                        v343 = llvm::IRBuilderBase::CreateExtractElement((v339 + 1712), v340, v342, __dst);
                        v344 = LShr;
                        v345 = *LShr;
                        v476 = 257;
                        v433 = llvm::IRBuilderBase::CreateCast(v339 + 1712, 39, v343, v345, __p);
                        v346 = *(*a1 - 24);
                        v347 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v444, 4u);
                        v348 = AGCLLVMBuilder::CreateLoad((v447 + v346), v347, "packedFormatAndAlpha");
                        v349 = a1 + *(*a1 - 24);
                        v350 = *(v349 + 1904);
                        v351 = llvm::ConstantInt::get();
                        __dst[0] = "alpha";
                        LOWORD(v479) = 259;
                        UIToFP = llvm::IRBuilderBase::CreateLShr((v349 + 1712), v348, v351, __dst);
                        if (*(v325 + 8) <= 6u)
                        {
                          v353 = *(*a1 - 24);
                          LOWORD(v479) = 257;
                          UIToFP = llvm::IRBuilderBase::CreateUIToFP((v443 + v353), UIToFP, v325, __dst);
                        }

                        v354 = AGCLLVMBuilder::truncateToSmall((v447 + *(*a1 - 24)), UIToFP, v325);
                        if ((*(*v439 + 8) & 0xFE) == 0x12)
                        {
                          v355 = *a1;
                          v356 = a1 + *(*a1 - 24);
                          v357 = *(v356 + 1912);
                          if (**(*NullValue + 16) == v357)
                          {
                            LOWORD(v479) = 257;
                            v354 = llvm::IRBuilderBase::CreateCast(v356 + 1712, 39, v354, v357, __dst);
                            v355 = *a1;
                          }

                          v358 = v447 + *(v355 - 24);
                          LOWORD(v479) = 257;
                          v359 = *(v358 + 200);
                          v360 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateInsertElement((v358 + 8), NullValue, v354, v360, __dst);
                        }

                        v361 = v344;
                        v362 = *(*a1 - 24);
                        LOWORD(v479) = 257;
                        v363 = llvm::IRBuilderBase::CreateICmp((v443 + v362), 35, v433, v344, __dst);
                        v364 = v491;
                        if ((*(*v491 + 8) & 0xFE) == 0x12)
                        {
                          v446 = v361;
                          v365 = a1 + *(*a1 - 24);
                          LOWORD(v479) = 257;
                          v366 = *(v365 + 1904);
                          v367 = llvm::ConstantInt::get();
                          v368 = llvm::IRBuilderBase::CreateExtractElement((v365 + 1712), v364, v367, __dst);
                          v369 = *v430;
                          v476 = 257;
                          v370 = llvm::IRBuilderBase::CreateCast(v365 + 1712, 39, v368, v369, __p);
                          v371 = *(*a1 - 24);
                          LOWORD(v479) = 257;
                          v372 = llvm::IRBuilderBase::CreateICmp((v443 + v371), 35, v370, v446, __dst);
                          v476 = 257;
                          llvm::IRBuilderBase::CreateOr((v443 + v371), v363, v372, __p);
                        }

                        v373 = *(*a1 - 24);
                        LOWORD(v479) = 257;
                        v374 = llvm::IRBuilderBase::CreateSelect();
                        v22 = v440;
                      }

                      else
                      {
                        v374 = v286;
                        v22 = v440;
                        if (v288)
                        {
                          if (*(v325 + 8) > 6u)
                          {
                            v389 = v332;
                          }

                          else
                          {
                            v387 = a1 + *(*a1 - 24);
                            v388 = *(v387 + 1872);
                            LOWORD(v479) = 257;
                            v389 = llvm::IRBuilderBase::CreateCast(v387 + 1712, 49, v332, v388, __dst);
                          }

                          v394 = AGCLLVMBuilder::truncateToSmall((v447 + *(*a1 - 24)), v389, v325);
                          v395 = v447 + *(*a1 - 24);
                          LOWORD(v479) = 257;
                          v396 = *(v395 + 200);
                          v397 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateInsertElement((v395 + 8), NullValue, v394, v397, __dst);
                          v398 = *(*a1 - 24);
                          LOWORD(v479) = 257;
                          v374 = llvm::IRBuilderBase::CreateSelect();
                        }
                      }

                      if (v436 == 16)
                      {
                        v399 = *(*a1 - 24);
                        LODWORD(__p[0]) = 0;
                        LOWORD(v479) = 257;
                        v24 = a1 + 1712;
                        v375 = v286;
                        llvm::IRBuilderBase::CreateInsertValue(v443 + v399, v286, v374, __p, 1, __dst);
                      }

                      else
                      {
                        v24 = a1 + 1712;
                        v375 = v286;
                      }
                    }

                    else
                    {
                      if (v290 != 10)
                      {
                        v375 = v286;
                        if (v290 != 9)
                        {
LABEL_386:
                          if (v290 == 12)
                          {
                            if (*(*v498 + 16) != 19)
                            {
                              v291 = *(*a1 - 24);
                              LODWORD(__p[0]) = 1;
                              LOWORD(v479) = 257;
                              v292 = llvm::IRBuilderBase::CreateExtractValue(v24 + v291, v375, __p, 1, __dst);
                              v293 = *(v422 + *(*a1 - 24));
                              v294 = llvm::ConstantInt::get();
                              v295 = *(v422 + *(*a1 - 24));
                              v296 = llvm::ConstantInt::get();
                              v297 = *(*a1 - 24);
                              LOWORD(v479) = 257;
                              v298 = llvm::IRBuilderBase::CreateAnd((v443 + v297), v292, v294, __dst);
                              v299 = *(*a1 - 24);
                              LOWORD(v479) = 257;
                              v300 = llvm::IRBuilderBase::CreateAnd((v443 + v299), v292, v296, __dst);
                              v476 = 257;
                              v302 = llvm::Constant::getNullValue(*v300, v301);
                              llvm::IRBuilderBase::CreateICmp((v443 + v299), 33, v300, v302, __p);
                              v303 = *(v422 + *(*a1 - 24));
                              llvm::ConstantInt::get();
                              v304 = *(v422 + *(*a1 - 24));
                              llvm::ConstantInt::get();
                              v473 = 257;
                              v305 = llvm::IRBuilderBase::CreateSelect();
                              v306 = *v498;
                              v307 = (v447 + *(*a1 - 24));
                              v308 = *(v307 + 24);
                              v309 = llvm::ConstantInt::get();
                              LOWORD(v479) = 257;
                              GEP = AGCLLVMBuilder::CreateGEP(v307, v306, v309, __dst);
                              v311 = v306;
                              v24 = a1 + 1712;
                              llvm::IRBuilderBase::CreateAlignedStore((v443 + *(*a1 - 24)), v298, v311, 0);
                              llvm::IRBuilderBase::CreateAlignedStore((v443 + *(*a1 - 24)), v305, GEP, 0);
                            }

                            if (v481 == 8 || v481 == 4)
                            {
                              v312 = *(*a1 - 24);
                              v313 = (a1 + 2032 + v312);
                              v314 = 4;
                            }

                            else if ((v481 & 0xFFFFFFFB) == 3)
                            {
                              v312 = *(*a1 - 24);
                              v313 = (a1 + 2040 + v312);
                              v314 = 2;
                            }

                            else
                            {
                              v312 = *(*a1 - 24);
                              v313 = (a1 + 2016 + v312);
                              if (v481 == 1)
                              {
                                v313 = (a1 + 2000 + v312);
                                v314 = 4;
                              }

                              else
                              {
                                v314 = 2;
                              }
                            }

                            v315 = *v313;
                            LODWORD(__p[0]) = 0;
                            LOWORD(v479) = 257;
                            v316 = llvm::IRBuilderBase::CreateExtractValue(v24 + v312, v286, __p, 1, __dst);
                            v317 = AGCLLVMBuilder::subrangeVector((v447 + *(*a1 - 24)), v316, 0, v314, 1);
                            v318 = AGCLLVMBuilder::subrangeVector((v447 + *(*a1 - 24)), v316, v314, v314, 1);
                            v319 = *(*a1 - 24);
                            if (v435)
                            {
                              v320 = AGCLLVMBuilder::subrangeVector((v447 + v319), v435, 0, v314, 1);
                              v321 = AGCLLVMBuilder::subrangeVector((v447 + *(*a1 - 24)), v435, v314, v314, 1);
                              v445 = AGCLLVMBuilder::concatenateVectors((v447 + *(*a1 - 24)), v317, v320);
                              v322 = AGCLLVMBuilder::concatenateVectors((v447 + *(*a1 - 24)), v318, v321);
                            }

                            else
                            {
                              v445 = AGCLLVMBuilder::extendVector((v447 + v319), v317, 4);
                              v322 = AGCLLVMBuilder::extendVector((v447 + *(*a1 - 24)), v318, 4);
                            }

                            v376 = v322;
                            v377 = *(*a1 - 24);
                            v378 = *(&v497 + 1);
                            if ((*(**(&v497 + 1) + 8) & 0xFE) == 0x12)
                            {
                              v379 = *(**(**(&v497 + 1) + 16) + 8);
                            }

                            v380 = llvm::PointerType::get();
                            LOWORD(v479) = 257;
                            PointerCast = llvm::IRBuilderBase::CreatePointerCast((v443 + v377), v378, v380, __dst);
                            v382 = (v447 + *(*a1 - 24));
                            v383 = *(v382 + 24);
                            v384 = llvm::ConstantInt::get();
                            LOWORD(v479) = 257;
                            v385 = AGCLLVMBuilder::CreateGEP(v382, PointerCast, v384, __dst);
                            llvm::IRBuilderBase::CreateAlignedStore((v443 + *(*a1 - 24)), v445, PointerCast, 0);
                            v386 = v385;
                            v24 = a1 + 1712;
                            llvm::IRBuilderBase::CreateAlignedStore((v443 + *(*a1 - 24)), v376, v386, 0);
                            v22 = v440;
                            goto LABEL_31;
                          }

                          goto LABEL_30;
                        }
                      }

                      v390 = v447 + *(*a1 - 24);
                      LOWORD(v479) = 257;
                      v391 = *(v390 + 200);
                      v392 = llvm::ConstantInt::get();
                      v393 = (v390 + 8);
                      v375 = v286;
                      llvm::IRBuilderBase::CreateExtractElement(v393, v286, v392, __dst);
                    }

                    v290 = *a3;
                    goto LABEL_386;
                  }

                  v124 = *a1;
                  v125 = *(v123 - 24);
                  if (a3[2] != 1)
                  {
                    v126 = v447 + v125;
                    v127 = *(v447 + v125 + 200);
                    if ((*(*v119 + 8) & 0xFE) == 0x12)
                    {
                      v128 = *(*v119 + 32);
                      v127 = llvm::FixedVectorType::get();
                    }

                    if ((*(v127 + 8) & 0xFE) == 0x12)
                    {
                      v129 = *(**(v127 + 16) + 8);
                    }

                    else
                    {
                      v129 = *(v127 + 8);
                    }

                    LOWORD(v479) = 257;
                    if (v129 > 6)
                    {
                      FPExt = llvm::IRBuilderBase::CreateCast(v126 + 8, 39, v119, v127, __dst);
                    }

                    else
                    {
                      FPExt = llvm::IRBuilderBase::CreateFPExt((v126 + 8), v119, v127, __dst);
                    }

                    v119 = FPExt;
                  }

                  *&v491 = v119;
                  v123 = *a1;
                  v132 = a1 + *(*a1 - 24);
                  if (*(*(v132 + 2168) + 1884))
                  {
                    v432 = 0;
                    goto LABEL_267;
                  }

                  v427 = isConstantSampler;
                  v133 = 1944;
                  if (a3[2] == 1)
                  {
                    v133 = 1952;
                  }

                  v134 = *(v132 + v133);
                  v135 = AGCLLVMUserObject::buildImageTextureBufferLength(a1, v444);
                  v136 = a1 + *(*a1 - 24);
                  (*(**(v136 + 2168) + 912))(*(v136 + 2168), v137, v138);
                  v139 = *(v136 + 1904);
                  v140 = llvm::ConstantInt::get();
                  v141 = a1 + *(*a1 - 24);
                  (*(**(v141 + 2168) + 912))(*(v141 + 2168), v142, v143);
                  v144 = *(v141 + 1904);
                  v421 = llvm::ConstantInt::get();
                  v145 = *(*a1 - 24);
                  LOWORD(v479) = 257;
                  v432 = llvm::IRBuilderBase::CreateICmp((v24 + v145), 36, v491, v135, __dst);
                  v146 = *a3;
                  if (*a3 == 3)
                  {
                    v147 = *(v441 + *(*a1 - 24));
                    if ((*(*v147 + 808))(v147))
                    {
                      v148 = a1 + *(*a1 - 24);
                      v149 = *(v148 + 1760);
                      v150 = *(v148 + 1768);
                      __dst[0] = "skip_texture_buffer_write";
                      LOWORD(v479) = 259;
                      llvm::BasicBlock::splitBasicBlock();
                      v151 = *(v149 + 40);
                      if (v151 == v149 + 40)
                      {
                        v154 = 0;
                      }

                      else
                      {
                        v152 = (v151 - 24);
                        if (v151)
                        {
                          v153 = v151 - 24;
                        }

                        else
                        {
                          v153 = 0;
                        }

                        if (*(v153 + 16) - 29 >= 0xB)
                        {
                          v154 = 0;
                        }

                        else
                        {
                          v154 = v152;
                        }
                      }

                      llvm::Instruction::eraseFromParent(v154);
                      v166 = *(a1 + 2160 + *(*a1 - 24));
                      __dst[0] = "texture_buffer_write";
                      LOWORD(v479) = 259;
                      v167 = *(v149 + 56);
                      operator new();
                    }

                    v146 = *a3;
                  }

                  isConstantSampler = v427;
                  if (v146 == 2 && (v155 = *(v441 + *(*a1 - 24)), (*(*v155 + 808))(v155)))
                  {
                    v156 = *(a1 + *(*a1 - 24) + 1904);
                    llvm::ConstantInt::get();
                    LOWORD(v479) = 257;
                  }

                  else
                  {
                    v157 = a1 + *(*a1 - 24);
                    (*(**(v157 + 2168) + 912))(*(v157 + 2168));
                    v158 = *(v157 + 1904);
                    llvm::ConstantInt::get();
                    v159 = *(*a1 - 24);
                    LOWORD(v479) = 257;
                  }

                  *&v491 = llvm::IRBuilderBase::CreateSelect();
                  v168 = *(*a1 - 24);
                  LOWORD(v479) = 257;
                  v169 = llvm::IRBuilderBase::CreateAnd((v24 + v168), v491, v140, __dst);
                  v170 = *(*a1 - 24);
                  LOWORD(v479) = 257;
                  v171 = llvm::IRBuilderBase::CreateLShr((v24 + v170), v491, v421, __dst);
                  v172 = *(*a1 - 24);
                  v173 = **(v134 + 16);
                  LOWORD(v479) = 257;
                  TruncOrBitCast = llvm::IRBuilderBase::CreateTruncOrBitCast((v443 + v172), v169, v173, __dst);
                  v175 = *(*a1 - 24);
                  v176 = **(v134 + 16);
                  LOWORD(v479) = 257;
                  v177 = llvm::IRBuilderBase::CreateTruncOrBitCast((v443 + v175), v171, v176, __dst);
                  v178 = llvm::UndefValue::get();
                  v179 = v447 + *(*a1 - 24);
                  LOWORD(v479) = 257;
                  v180 = *(v179 + 200);
                  v181 = llvm::ConstantInt::get();
                  v182 = llvm::IRBuilderBase::CreateInsertElement((v179 + 8), v178, TruncOrBitCast, v181, __dst);
                  v183 = v447 + *(*a1 - 24);
                  LOWORD(v479) = 257;
                  v184 = *(v183 + 200);
                  v185 = llvm::ConstantInt::get();
                  v130 = llvm::IRBuilderBase::CreateInsertElement((v183 + 8), v182, v177, v185, __dst);
                  v22 = v440;
                }

                *&v491 = v130;
                v123 = *a1;
                goto LABEL_267;
              }

              v85 = AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(a1, InternalConstSampler, v109);
            }

            else
            {
              if (HIDWORD(__src))
              {
                v81 = "agc.nnorm_sampler_wrapper_non_1d";
              }

              else
              {
                v81 = "agc.nnorm_sampler_wrapper_1d";
              }

              v82 = *(v424 + *(*a1 - 24));
              GlobalVariable = llvm::Module::getGlobalVariable();
              if (GlobalVariable)
              {
                v84 = GlobalVariable;
              }

              else
              {
                if (HIDWORD(__src))
                {
                  v88 = "agc.nnorm_sampler_non_1d";
                }

                else
                {
                  v88 = "agc.nnorm_sampler_1d";
                }

                v89 = 1;
                v90 = llvm::User::operator new(0x58);
                v91 = a1 + *(*a1 - 24);
                v92 = *(v91 + 2136);
                v93 = *(*(v91 + 2168) + 1792);
                BYTE1(v479) = 1;
                if (*v88)
                {
                  __dst[0] = v88;
                  v94 = 3;
                }

                else
                {
                  v94 = 1;
                }

                LOBYTE(v479) = v94;
                llvm::GlobalVariable::GlobalVariable();
                *(v90 + 80) |= 1u;
                v100 = *(*(v441 + *(*a1 - 24)) + 1812);
                v101 = __clz(v100) ^ 0x13F;
                if (v100)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = 0;
                }

                v419 = v102 | v419 & 0xFFFFFFFFFFFF0000;
                llvm::GlobalObject::setAlignment();
                llvm::GlobalObject::setSection();
                v103 = (v447 + *(*a1 - 24));
                v104 = *(v103 + 55);
                v105 = AGCLLVMBuilder::buildGlobalMetadata(v103, v90);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v104, v105);
                __dst[0] = v90;
                llvm::ConstantStruct::get();
                v84 = llvm::User::operator new(0x58);
                v106 = *(v424 + *(*a1 - 24));
                BYTE1(v479) = 1;
                if (*v81)
                {
                  __dst[0] = v81;
                  v89 = 3;
                }

                LOBYTE(v479) = v89;
                LOBYTE(v418) = 0;
                v417 = 0x100000002;
                v416 = 0;
                llvm::GlobalVariable::GlobalVariable();
                *(v84 + 80) |= 1u;
                llvm::GlobalVariable::setInitializer();
                __dst[0] = 4;
                __dst[1] = 0;
                v107 = v84;
                v478 = v84;
                if (v84 != -8192)
                {
                  v107 = v84;
                  if (v84 != -4096)
                  {
                    v107 = v84;
                    if (v84)
                    {
                      llvm::ValueHandleBase::AddToUseList(__dst);
                      v107 = v478;
                    }
                  }
                }

                std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(a1 + 816, v107);
                v22 = v440;
                v24 = a1 + 1712;
                if (v478 != -8192 && v478 != -4096 && v478)
                {
                  llvm::ValueHandleBase::RemoveFromUseList(__dst);
                }
              }

              v85 = v84;
            }

            llvm::ValueHandleBase::operator=(__p, v85);
            BindlessConstantSampler = 0;
            v115 = v475;
            if (v475 && *(v475 + 16) == 3)
            {
              if ((*(v475 + 80) & 1) != 0 && (llvm::GlobalValue::isDeclaration(v475) & 1) == 0)
              {
                BindlessConstantSampler = *(v115 - 4);
              }

              else
              {
                BindlessConstantSampler = 0;
              }
            }

            goto LABEL_203;
          }

          v70 = 0;
        }

        v498[28] = v70;
        goto LABEL_138;
      }

      v160 = *(*a1 - 24);
      v161 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v444, 7u);
      LOWORD(v479) = 257;
      v162 = AGCLLVMBuilder::CreateLoad((v447 + v160), v161, __dst);
      v163 = a1 + *(*a1 - 24);
      v164 = v494;
      v165 = AGCLLVMBuilder::truncateToSmall((v163 + 1704), v162, *v494);
      LOWORD(v479) = 257;
      Load = llvm::IRBuilderBase::CreateAdd((v163 + 1712), v164, v165, __dst);
    }

    else
    {
      if (*(a3 + 54))
      {
        v95 = *a1;
        if (*(*(v441 + *(*a1 - 24)) + 1884) == 1 && __src != 3)
        {
          goto LABEL_257;
        }

LABEL_174:
        v493 = 1;
        v99 = *(v423 + *(v95 - 24));
        Load = llvm::ConstantInt::get();
        goto LABEL_263;
      }

      if (BYTE1(v483[2]) != 1)
      {
        goto LABEL_257;
      }

      v493 = 0;
      Load = llvm::Constant::getNullValue(*(a1 + 1856 + *(*a1 - 24)), v34);
    }

LABEL_263:
    *&v494 = Load;
    goto LABEL_92;
  }

  std::string::basic_string[abi:nn200100]<0>(__dst, "sample");
  if (*a3 == 1)
  {
    v405 = "sample_compare";
LABEL_460:
    MEMORY[0x20F331AA0](__dst, v405);
  }

  else if (*a3 == 5)
  {
    v405 = "gather_compare";
    goto LABEL_460;
  }

  std::operator+<char>();
  v408 = std::string::append(&v472, " must be known at compile time");
  v409 = v408->__r_.__value_.__r.__words[2];
  *__p = *&v408->__r_.__value_.__l.__data_;
  v475 = v409;
  v408->__r_.__value_.__l.__size_ = 0;
  v408->__r_.__value_.__r.__words[2] = 0;
  v408->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v475) >= 0)
  {
    v410 = __p;
  }

  else
  {
    v410 = __p[0];
  }

  if (SHIBYTE(v475) >= 0)
  {
    v411 = HIBYTE(v475);
  }

  else
  {
    v411 = __p[1];
  }

  std::string::append((a1 + 1656 + *(*a1 - 24)), v410, v411);
  if (SHIBYTE(v475) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v472.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v472.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v478) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_457:
  v23 = 0;
LABEL_458:
  v406 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t AGCLLVMUserObject::isConstantSampler(AGCLLVMUserObject *this, llvm::Value *a2, unint64_t *a3, unint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v8 = *(a2 + 16);
  v9 = v8 - 28;
  if (v8 >= 0x1C)
  {
    goto LABEL_5;
  }

  if (v8 == 5)
  {
    v9 = *(a2 + 9);
LABEL_5:
    v10 = v9 != 48;
    while ((v9 & 0xFFFFFFFE) == 0x30)
    {
      v11 = *(v6 + 5);
      if ((v11 & 0x40000000) != 0)
      {
        v12 = *(v6 - 1);
      }

      else
      {
        v12 = (v6 - 32 * (v11 & 0x7FFFFFF));
      }

      v6 = *v12;
      v8 = *(*v12 + 16);
      if (v6)
      {
        v13 = v8 >= 0x1C;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v9 = v8 - 28;
      }

      else
      {
        if (v6)
        {
          v14 = v8 == 5;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          goto LABEL_23;
        }

        v9 = *(v6 + 9);
      }
    }

    goto LABEL_37;
  }

  v10 = 1;
LABEL_23:
  if (v8 == 16)
  {
    v16 = (v6 + 24);
    v17 = *(v6 + 8);
    goto LABEL_25;
  }

LABEL_37:
  if (v8 != 3)
  {
    return 0;
  }

  if (llvm::GlobalValue::isDeclaration(v6))
  {
    return 0;
  }

  v25 = *(v6 - 4);
  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 16);
  if (v26 == 14)
  {
    ElementAsInteger = llvm::ConstantDataSequential::getElementAsInteger(*(v6 - 4));
    v18 = llvm::ConstantDataSequential::getElementAsInteger(v25);
    goto LABEL_28;
  }

  if (v26 != 16)
  {
    return 0;
  }

  v16 = (v25 + 24);
  v17 = *(v25 + 32);
LABEL_25:
  if (v17 >= 0x41)
  {
    v16 = *v16;
  }

  v18 = 0;
  ElementAsInteger = *v16;
LABEL_28:
  v20 = *(this + *(*this - 24) + 2136);
  v29[0] = "air.version";
  v30 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v20, v29);
  if (!NamedMetadata)
  {
    if (*(this + 14) != 1)
    {
      goto LABEL_46;
    }

LABEL_44:
    if (ElementAsInteger < 0)
    {
      goto LABEL_46;
    }

    return 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (!Operand)
  {
    goto LABEL_46;
  }

  v23 = Operand;
  v28 = 0;
  LODWORD(v29[0]) = 0;
  parseMDInt(0, Operand, v29, &v28 + 1);
  LODWORD(v29[0]) = 1;
  parseMDInt(0, v23, v29, &v28);
  if (HIDWORD(v28) <= 1)
  {
    goto LABEL_44;
  }

  if (v28 <= 5 && HIDWORD(v28) == 2)
  {
    goto LABEL_44;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_46:
  v27 = (this + *(*this - 24));
  if (*(v27[271] + 1895) == 1 && (!(*(*v27 + 80))(v27) || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 7))
  {
    v18 = 0;
    ElementAsInteger &= 0xFFFFFFFFFF0FFFFFLL;
  }

  *a3 = ElementAsInteger;
  *a4 = v18;
  return 1;
}

uint64_t AGCLLVMUserObject::buildImageArgumentPointer(uint64_t a1, AGCLLVMUserObject *this, unsigned int a3)
{
  v53[2] = *MEMORY[0x277D85DE8];
  DirectImageGlobalValue = AGCLLVMUserObject::getDirectImageGlobalValue(this, this);
  if (DirectImageGlobalValue)
  {
    result = *(DirectImageGlobalValue - 32 * (*(DirectImageGlobalValue + 20) & 0x7FFFFFF) + 32 * a3);
LABEL_3:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (a3 <= 7)
  {
    v9 = AGCLLVMUserObject::buildBindlessIndex(a1, this);
    if (v9)
    {
      goto LABEL_24;
    }
  }

  v10 = a1 + *(*a1 - 24);
  if ((*(*(v10 + 2168) + 1869) & 1) == 0 && (a3 > 8 || ((1 << a3) & 0x103) == 0))
  {
    v9 = AGCLLVMUserObject::buildImageHeapIndex(a1, this);
LABEL_24:
    v46 = *MEMORY[0x277D85DE8];

    return AGCLLVMUserObject::buildBindlessImageArgumentPointer(a1, v9, a3);
  }

  v11 = a1 + (a3 << 6);
  v12 = *(v11 + 1256);
  if (v12)
  {
    v13 = *(v11 + 1288);
    v14 = *(v10 + 1904);
    v49 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(v10 + 1712, 47, this, v14, v48);
    if (a3 == 1)
    {
      v16 = a1 + *(*a1 - 24);
      v17 = *(v16 + 1904);
      v18 = llvm::ConstantInt::get();
      v49 = 257;
      Cast = llvm::IRBuilderBase::CreateLShr((v16 + 1712), Cast, v18, v48);
    }

    v19 = a1 + *(*a1 - 24);
    v20 = *(v19 + 1896);
    v49 = 257;
    v21 = llvm::IRBuilderBase::CreateCast(v19 + 1712, 38, Cast, v20, v48);
    UDiv = v21;
    v23 = *a1;
    if (*(a1 + 3767) == 1)
    {
      v24 = *a1;
      if (!*(*(*(v23 - 3) + a1 + 2168) + 1900))
      {
        v25 = AGCLLVMObject::useTextureIDLegacyMode(v21);
        v23 = *a1;
        if (v25)
        {
          v26 = *a1;
          v27 = *(v23 - 3) + a1;
          TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 224), *(v27[271] + 1784));
          LODWORD(v51) = v28;
          llvm::TypeSize::operator unsigned long long();
          v29 = v27[237];
          v30 = llvm::ConstantInt::get();
          v49 = 257;
          UDiv = llvm::IRBuilderBase::CreateUDiv((v27 + 214), UDiv, v30, v48);
          v23 = *a1;
        }
      }
    }

    v31 = *(v23 - 3) + a1;
    if (a3 > 1 || UDiv[16] < 0x15u)
    {
      v45 = *(v31 + 238);
      TypeAllocSize = llvm::ConstantInt::get();
      v51 = UDiv;
      v49 = 257;
      llvm::Type::isOpaquePointerTy(*v12);
      result = llvm::IRBuilderBase::CreateGEP((v31 + 1712), v13, v12, &TypeAllocSize, 2, v48);
    }

    else
    {
      v32 = *(v31 + 234);
      v33 = llvm::PointerType::get();
      v34 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + *(*a1 - 24) + 1704, "llvm.agx.textureState", 21, v33, v33, *(a1 + *(*a1 - 24) + 1912));
      v35 = a1 + *(*a1 - 24);
      v49 = 257;
      v53[0] = llvm::IRBuilderBase::CreateCast(v35 + 1712, 49, v12, v33, v48);
      v36 = a1 + *(*a1 - 24);
      v37 = *(v36 + 1912);
      v52 = 257;
      v53[1] = llvm::IRBuilderBase::CreateCast(v36 + 1712, 39, UDiv, v37, &TypeAllocSize);
      v47[16] = 257;
      v38 = llvm::IRBuilderBase::CreateCall(v35 + 1712, *(v34 + 24), v34, v53, 2, v47);
      v39 = a1 + *(*a1 - 24);
      v40 = *(*(v39 + 2168) + 1784);
      v41 = llvm::PointerType::get();
      v49 = 257;
      result = llvm::IRBuilderBase::CreateCast(v39 + 1712, 49, v38, v41, v48);
    }

    goto LABEL_3;
  }

  v42 = *(v11 + 1272);
  v43 = *(v11 + 1296);
  llvm::PointerType::get();
  v44 = *MEMORY[0x277D85DE8];

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserObject::getDirectImageGlobalValue(uint64_t this, llvm::Value *a2)
{
  if (!this)
  {
    return this;
  }

  v2 = this;
  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0x1B)
    {
      break;
    }

    if (v3 != 77)
    {
      return 0;
    }

LABEL_8:
    v4 = *(v2 + 20);
    if ((v4 & 0x40000000) != 0)
    {
      v5 = *(v2 - 8);
    }

    else
    {
      v5 = (v2 - 32 * (v4 & 0x7FFFFFF));
    }

    v2 = *v5;
    if (!*v5)
    {
      return 0;
    }
  }

  if (v3 == 5)
  {
    if (*(v2 + 18) != 49)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v3 != 3 || (llvm::GlobalValue::isDeclaration(v2) & 1) != 0)
  {
    return 0;
  }

  return *(v2 - 32);
}

uint64_t AGCLLVMUserObject::buildBindlessIndex(const void ***this, llvm::Value *a2)
{
  v4 = (this + 131);
  imp = llvm::SmallPtrSetImplBase::find_imp(this + 131, a2);
  v6 = this[132];
  v7 = 16;
  if (v6 == this[131])
  {
    v7 = 20;
  }

  if (imp == &v6[*&v4[v7]])
  {
    return 0;
  }

  v8 = *(*this - 3) + this;
  v9 = *(v8 + 238);
  v11 = "bindless_index";
  v12 = 259;
  return llvm::IRBuilderBase::CreateCast((v8 + 1712), 47, a2, v9, &v11);
}

uint64_t AGCLLVMUserObject::buildBindlessImageArgumentPointer(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v6 = a3 == 1;
  v7 = &a1[24 * v6];
  v8 = *(v7 + 303);
  if (!v8)
  {
    {
      v51 = *(*&a1[*(*a1 - 24) + 2168] + 920);
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(llvm::Value *,ImageArgumentQuery::Enum)::bind_indices[0] = (*(*v51 + 512))(v51);
      v52 = *(*&a1[*(*a1 - 24) + 2168] + 920);
      dword_27C8D81E4 = (*(*v52 + 240))(v52);
      dword_27C8D81E8 = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 792))();
      dword_27C8D81EC = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 520))();
      v53 = *(*&a1[*(*a1 - 24) + 2168] + 920);
      dword_27C8D81F0 = (*(*v53 + 248))(v53);
      dword_27C8D81F4 = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 800))();
      dword_27C8D81F8 = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 528))();
      dword_27C8D81FC = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 256))();
      dword_27C8D8200 = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 824))();
      dword_27C8D8204 = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 536))();
      dword_27C8D8208 = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 264))();
      dword_27C8D820C = (*(**(*&a1[*(*a1 - 24) + 2168] + 920) + 832))();
    }

    v9 = (&AGCLLVMUserObject::buildBindlessImageArgumentPointer(llvm::Value *,ImageArgumentQuery::Enum)::bind_index_names[2 * a1[3767]])[v6];
    if ((*(*&a1[*(*a1 - 24)] + 80))(&a1[*(*a1 - 24)]) == 27)
    {
      v10 = 2;
    }

    else
    {
      v10 = (*(*&a1[*(*a1 - 24)] + 80))(&a1[*(*a1 - 24)]) != 7 && (*(*&a1[*(*a1 - 24)] + 80))(&a1[*(*a1 - 24)]) != 22 && (*(*&a1[*(*a1 - 24)] + 80))(&a1[*(*a1 - 24)]) != 8 && (*(*&a1[*(*a1 - 24)] + 80))(&a1[*(*a1 - 24)]) != 3 && (*(*&a1[*(*a1 - 24)] + 80))(&a1[*(*a1 - 24)]) != 4;
    }

    v11 = AGCLLVMUserObject::buildBindlessImageArgumentPointer(llvm::Value *,ImageArgumentQuery::Enum)::bind_indices[6 * a1[3767] + 3 * v6 + v10];
    v12 = *&a1[*(*a1 - 24) + 1872];
    v13 = llvm::PointerType::get();
    if (*v9)
    {
      v76[2] = v9;
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    v76[0] = "agc.texture_heap.";
    LOBYTE(v77) = 3;
    HIBYTE(v77) = v14;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, v13, v76, v11, 0, 5, 1);
    llvm::ValueHandleBase::operator=((v7 + 2408), GlobalBufferBinding);
    v8 = *(v7 + 303);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 0;
    }

    if (a3 == 9)
    {
      AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(&a1[*(*a1 - 24) + 1704], *&a1[*(*a1 - 24) + 1912]);
      v20 = &a1[*(*a1 - 24)];
      v21 = *(v20 + 239);
      v77 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v20 + 1712), 39, a2, v21, v76);
      llvm::IRBuilderBase::CreateAlignedStore(v20 + 214, Cast, AllocaInEntryBlock, 0);
      return AllocaInEntryBlock;
    }

LABEL_23:
    v25 = *a1;
    v24 = *&a1[*(*a1 - 24) + 1904];
    goto LABEL_24;
  }

  if (a3 < 2)
  {
    v16 = &a1[*(*a1 - 24)];
    v17 = *(*(v16 + 271) + 1784);
    v18 = llvm::PointerType::get();
    v77 = 257;
    return llvm::IRBuilderBase::CreateCast((v16 + 1712), 49, v8, v18, v76);
  }

  if (a3 != 2)
  {
    goto LABEL_23;
  }

  v23 = *&a1[*(*a1 - 24) + 1904];
  v24 = llvm::FixedVectorType::get();
  v25 = *a1;
LABEL_24:
  v26 = *&a1[*(v25 - 24) + 1912];
  v27 = llvm::PointerType::get();
  v28 = *a1;
  v54 = v27;
  if (*(*&a1[*(*a1 - 24) + 2168] + 1900) || (v29 = AGCLLVMObject::useTextureIDLegacyMode(v27), v28 = *a1, !v29))
  {
    v30 = a2;
    v32 = (*&a1[*(v28 - 24) + 2168] + 1784);
  }

  else
  {
    v30 = a2;
    v31 = *a1;
    v32 = &a1[*(v28 - 24) + 1888];
  }

  v33 = *v32;
  v34 = llvm::PointerType::get();
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(&a1[*(*a1 - 24) + 1704], v24);
  v35 = &a1[*(*a1 - 24)];
  v77 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v35 + 1704), v8, v76);
  v75 = 257;
  v37 = llvm::IRBuilderBase::CreateCast((v35 + 1712), 49, Load, v34, v74);
  v73 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v35 + 1712), v33, v37, v30, v72);
  v71 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((v35 + 1712), 49, GEP, v54, v70);
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        v44 = &a1[*(*a1 - 24)];
        v45 = *(v44 + 271);
        v64 = *(v44 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (v44 + 1712));
        v66 = *(v44 + 452);
        (*(*v45 + 648))(v45, &v64, v39, AllocaInEntryBlock);
        if (!v65)
        {
          return AllocaInEntryBlock;
        }

        break;
      case 6:
        v47 = &a1[*(*a1 - 24)];
        v48 = *(v47 + 271);
        v61 = *(v47 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v47 + 1712));
        v63 = *(v47 + 452);
        (*(*v48 + 656))(v48, &v61, v39, AllocaInEntryBlock);
        if (!v62)
        {
          return AllocaInEntryBlock;
        }

        break;
      case 7:
        v40 = &a1[*(*a1 - 24)];
        v41 = *(v40 + 271);
        v58 = *(v40 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (v40 + 1712));
        v60 = *(v40 + 452);
        (*(*v41 + 664))(v41, &v58, v39, AllocaInEntryBlock);
        if (!v59)
        {
          return AllocaInEntryBlock;
        }

        break;
      default:
        return AllocaInEntryBlock;
    }

    goto LABEL_39;
  }

  if (a3 == 2)
  {
    v49 = &a1[*(*a1 - 24)];
    v50 = *(v49 + 271);
    v67 = *(v49 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v49 + 1712));
    v69 = *(v49 + 452);
    (*(*v50 + 640))(v50, &v67, v39, AllocaInEntryBlock);
    if (!v68)
    {
      return AllocaInEntryBlock;
    }

    goto LABEL_39;
  }

  if (a3 == 4)
  {
    v42 = &a1[*(*a1 - 24)];
    v43 = *(v42 + 271);
    v55 = *(v42 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (v42 + 1712));
    v57 = *(v42 + 452);
    (*(*v43 + 672))(v43, &v55, v39, AllocaInEntryBlock);
    if (v56)
    {
LABEL_39:
      llvm::MetadataTracking::untrack();
    }
  }

  return AllocaInEntryBlock;
}

uint64_t AGCLLVMBuilder::createAllocaInEntryBlock(AGCLLVMBuilder *this, llvm::Type *a2)
{
  v15 = *(this + 56);
  v4 = *(*(v15 + 56) + 80);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (this + 8));
  v17 = *(this + 26);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v5);
  if (FirstInsertionPt)
  {
    v7 = (FirstInsertionPt - 24);
  }

  else
  {
    v7 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + 8), v7);
  v14 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(this + 1, a2, 0, v13);
  v10 = v15;
  v11 = v16;
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v12 = v17;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v10, this + 8);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  return Alloca;
}

uint64_t AGCLLVMG16PB0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

uint64_t llvm::IRBuilderBase::CreateAnd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = (*(**(this + 9) + 24))(*(this + 9));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t llvm::IRBuilderBase::CreateLShr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 160))(*(this + 9));
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

uint64_t AGCLLVMG16PB0TargetLowerer::extractBaseLevel(AGCLLVMG16PB0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t llvm::IRBuilderBase::CreateICmp(unsigned int **a1, uint64_t a2, llvm::CmpInst **a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a1[9] + 40))(a1[9]);
  if (!v8)
  {
    v8 = llvm::User::operator new(0x40);
    llvm::CmpInst::makeCmpResultType(*a3, v9);
    llvm::CmpInst::CmpInst();
    (*(*a1[10] + 16))(a1[10], v8, a5, a1[6], a1[7]);
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = *a1;
      v12 = &v11[4 * v10];
      do
      {
        v13 = *v11;
        v14 = *(v11 + 1);
        llvm::Instruction::setMetadata();
        v11 += 4;
      }

      while (v11 != v12);
    }
  }

  return v8;
}

uint64_t llvm::CmpInst::makeCmpResultType(llvm::CmpInst *this, llvm::Type *a2)
{
  v3 = *(this + 2);
  result = llvm::Type::getInt1Ty(*this, a2);
  if (this && (v3 & 0xFE) == 0x12)
  {
    v5 = *(this + 8);
    v6 = *(this + 8) == 19;

    return llvm::VectorType::get();
  }

  return result;
}

uint64_t AGCLLVMGen5TargetLowerer::adjustToMip(unsigned int **this, llvm::Value *a2, llvm::Value *a3)
{
  v10 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), a2, a3, v9);
  v10 = 257;
  NullValue = llvm::Constant::getNullValue(*LShr, v5);
  llvm::IRBuilderBase::CreateICmp(this + 1, 33, LShr, NullValue, v9);
  v7 = this[25];
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMUserObject::buildBindlessIndexAsPtr(const void ***this, llvm::Value *a2)
{
  result = AGCLLVMUserObject::buildBindlessIndex(this, a2);
  if (result)
  {
    v4 = result;
    v5 = *(*(*this - 3) + this + 1888);
    v6 = llvm::PointerType::get();
    v7 = *(*this - 3) + this;
    v8 = "bindless_index_as_ptr";
    v9 = 259;
    return llvm::IRBuilderBase::CreateCast((v7 + 1712), 48, v4, v6, &v8);
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildBindlessSamplerIndex(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v3 = this + *(*this - 24);
  if (!*(*(v3 + 271) + 1900))
  {
    v6 = this + *(*this - 24);
    v7 = (v6 + 1712);
    goto LABEL_5;
  }

  v4 = *(v3 + 238);
  v15 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v3 + 1712), 47, a2, v4, v14);
  v6 = this + *(*this - 24);
  v7 = (v6 + 1712);
  if (!Cast)
  {
LABEL_5:
    v11 = *(v6 + 239);
    v8 = llvm::ConstantInt::get();
    v12 = *(this + *(*this - 24) + 1888);
    v10 = llvm::PointerType::get();
    v15 = 257;
    return llvm::IRBuilderBase::CreateCast(v7, 48, v8, v10, v14);
  }

  v8 = Cast;
  v9 = *(v6 + 236);
  v10 = llvm::PointerType::get();
  v15 = 257;
  return llvm::IRBuilderBase::CreateCast(v7, 48, v8, v10, v14);
}

llvm::Type **AGCLLVMUserObject::buildSamplerArgumentPointer(uint64_t a1, char *a2, unsigned int a3)
{
  v49[5] = *MEMORY[0x277D85DE8];
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", a2)) != 0 && *Value != 48 && atoi(Value) || (v7 = *(a1 + *(*a1 - 24) + 2168), *(v7 + 1900)))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 1892) ^ 1;
  }

  DirectImageGlobalValue = AGCLLVMUserObject::getDirectImageGlobalValue(a2, a2);
  if (DirectImageGlobalValue)
  {
    v10 = DirectImageGlobalValue;
    if (*(*DirectImageGlobalValue + 8) != 13)
    {
      if (*(DirectImageGlobalValue + 16) == 9)
      {
        v11 = DirectImageGlobalValue;
      }

      else
      {
        v11 = 0;
      }

      v10 = *(&v11[4 * a3] - 4 * (*(v11 + 5) & 0x7FFFFFF));
    }

    if (a3 != 2)
    {
      goto LABEL_42;
    }

    v12 = a1 + *(*a1 - 24);
    v48 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v12 + 1704), v10, v47);
LABEL_41:
    v10 = Load;
LABEL_42:
    v39 = *MEMORY[0x277D85DE8];
    return v10;
  }

  if (*(a1 + 15) == 1 && (a3 != 2) | v8 & 1)
  {
    v14 = a1 + *(*a1 - 24);
    if (a3 != 2)
    {
      v15 = *(*(v14 + 2168) + 1792);
      v16 = llvm::PointerType::get();
      v48 = 257;
      v17 = v14 + 1712;
      v18 = 50;
LABEL_39:
      v38 = a2;
      goto LABEL_40;
    }

    v16 = *(v14 + 1912);
    v48 = 257;
    v17 = v14 + 1712;
LABEL_38:
    v18 = 47;
    goto LABEL_39;
  }

  v19 = (a1 + *(*a1 - 24));
  if (*(v19[271] + 1900))
  {
    if (!*(a1 + 2520))
    {
      AGCLLVMUserObject::createSamplerHeapGlobal(a1);
    }

    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v20 = *(a1 + 2088);
        v21 = *(a1 + 2120);
        v22 = a1 + *(*a1 - 24);
        v23 = *(v22 + 1896);
        v48 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v22 + 1712, 47, a2, v23, v47);
        v25 = a1 + *(*a1 - 24);
        v26 = *(v25 + 1904);
        v49[0] = llvm::ConstantInt::get();
        v49[1] = Cast;
        v48 = 257;
        llvm::Type::isOpaquePointerTy(*v20);
        Load = llvm::IRBuilderBase::CreateGEP(v25 + 1712, v21, v20, v49, 2, v47);
        goto LABEL_41;
      }

      v35 = a1 + *(*a1 - 24);
      v36 = *(*(v35 + 2168) + 1792);
      v37 = *(a1 + 2520);
      v16 = llvm::PointerType::get();
      v48 = 257;
      v17 = v35 + 1712;
      v18 = 49;
      v38 = v37;
LABEL_40:
      Load = llvm::IRBuilderBase::CreateCast(v17, v18, v38, v16, v47);
      goto LABEL_41;
    }

    v34 = a1 + *(*a1 - 24);
    v16 = *(v34 + 1912);
    v48 = 257;
    v17 = v34 + 1712;
    goto LABEL_38;
  }

  v27 = a1 + (a3 << 6);
  v28 = *(v27 + 1896);
  v29 = *(v27 + 2152);
  if (v28)
  {
    if (v29)
    {
      v30 = v19[220];
      v31 = *(v30 + 40);
      if (v31 != v30 + 40)
      {
        v32 = v31 ? v31 - 24 : 0;
        if (*(v32 + 16) - 29 < 0xB)
        {
          v33 = v19[221];
          v47[0] = "pick_sampler";
          v48 = 259;
          llvm::BasicBlock::splitBasicBlock();
          v45 = *(a1 + *(*a1 - 24) + 2160);
          v47[0] = "non_constant_sampler";
          v48 = 259;
          v46 = *(v30 + 56);
          operator new();
        }
      }

      v43 = v19[270];
      v47[0] = "pick_sampler";
      v48 = 259;
      v44 = *(v30 + 56);
      operator new();
    }

    goto LABEL_47;
  }

  if (!v29)
  {
LABEL_47:
    v42 = *MEMORY[0x277D85DE8];

    return AGCLLVMUserObject::buildNonConstantSamplerArgumentPointer(a1, a2, a3);
  }

  v41 = *MEMORY[0x277D85DE8];

  return AGCLLVMUserObject::buildConstantSamplerArgumentPointer(a1, a2, a3);
}

uint64_t AGCLLVMUserObject::createSamplerHeapGlobal(AGCLLVMUserObject *this)
{
  {
    v13 = *(*(this + *(*this - 24) + 2168) + 920);
    AGCLLVMUserObject::createSamplerHeapGlobal(void)::bind_indices[0] = (*(*v13 + 552))(v13);
    dword_27C8D8224 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 280))();
    dword_27C8D8228 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 808))();
    dword_27C8D822C = (*(**(*(this + *(*this - 24) + 2168) + 920) + 560))();
    dword_27C8D8230 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 288))();
    dword_27C8D8234 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 816))();
  }

  if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 27)
  {
    v2 = 2;
  }

  else
  {
    v2 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 7 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 22 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 3 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 4;
  }

  v3 = AGCLLVMUserObject::createSamplerHeapGlobal(void)::bind_indices[3 * *(this + 3896) + v2];
  v4 = *(this + *(*this - 24) + 1872);
  v5 = llvm::PointerType::get();
  v14[0] = "agc.sampler_heap.";
  v14[2] = v3;
  v15 = 2051;
  GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v5, v14, v3, 0, 5, 0);
  llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
  *(GlobalBufferBinding + 80) &= ~1u;
  llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v7);
  llvm::GlobalVariable::setInitializer();
  v8 = *(this + *(*this - 24) + 2136);
  llvm::Module::getOrInsertNamedMetadata();
  v9 = this + *(*this - 24);
  v10 = *(v9 + 270);
  v11 = *(v9 + 238);
  llvm::ConstantInt::get();
  v14[0] = llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  return llvm::ValueHandleBase::operator=((this + 2504), GlobalBufferBinding);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildSampleFunction(void *a1, uint64_t a2, int *a3)
{
  v298 = *MEMORY[0x277D85DE8];
  v279 = *a2;
  v280 = *(a2 + 16);
  if (v280)
  {
    llvm::MetadataTracking::track();
  }

  v281 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v279);
  if (v280)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((*a3 - 6) < 3)
  {
    v6 = (*(*a1 + 1592))(a1, a3);
    goto LABEL_342;
  }

  if (*a3 == 3)
  {
    Element = *(a3 + 28);
    if (a3[2] == 6)
    {
      if ((*(*Element + 8) & 0xFE) == 0x12)
      {
        v291 = 257;
        v8 = a1[25];
        v9 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Element, v9, &v288);
      }

      v10 = a1[26];
      v11 = llvm::ConstantInt::get();
      v291 = 257;
      v12 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Element, v11, &v288);
      v13 = a1[26];
      v14 = llvm::ConstantInt::get();
      v291 = 257;
      LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), Element, v14, &v288);
      v16 = a1[26];
      v17 = llvm::ConstantInt::get();
      v297 = 257;
      v18 = llvm::IRBuilderBase::CreateAnd((a1 + 1), LShr, v17, &v296);
      v19 = a1[25];
      llvm::FixedVectorType::get();
      v20 = llvm::UndefValue::get();
      v21 = a1[25];
      v291 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v12, v21, &v288);
      v297 = 257;
      v23 = a1[25];
      v24 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v20, Cast, v24, &v296);
      v26 = a1[25];
      v291 = 257;
      v27 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v18, v26, &v288);
      v297 = 257;
      v28 = a1[25];
      v29 = llvm::ConstantInt::get();
      v30 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v27, v29, &v296);
      v31 = a1[25];
      v32 = llvm::ConstantInt::get();
      v291 = 257;
      v33 = a1[25];
      v34 = llvm::ConstantInt::get();
      v35 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v30, v32, v34, &v288);
      v36 = a1[25];
      v37 = llvm::ConstantInt::get();
      v291 = 257;
      v38 = a1[25];
      v39 = llvm::ConstantInt::get();
      v40 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v35, v37, v39, &v288);
    }

    else
    {
      v40 = AGCLLVMBuilder::extendVector(a1, *(a3 + 28), 4);
    }

    v275 = v40;
  }

  else
  {
    v275 = 0;
  }

  v41 = *a3;
  v42 = a3[1];
  if (*(a1 + 1883) & 1 | (v42 != 0))
  {
    v43 = a3[1];
  }

  else
  {
    v43 = *a3 == 3;
  }

  v44 = a3[2];
  if (v44 == 6)
  {
    v45 = 7;
  }

  else
  {
    v45 = a3[2];
  }

  v268 = v45;
  v46 = **(a3 + 17);
  if ((*(v46 + 8) & 0xFE) == 0x12)
  {
    v47 = *(**(v46 + 16) + 8);
  }

  else
  {
    v47 = *(v46 + 8);
  }

  v277 = *(a3 + 19);
  v266 = *(a3 + 25);
  v48 = *(a3 + 27);
  v288 = v290;
  v289 = 0x1000000000;
  v264 = v41 & 0xFFFFFFFE;
  v49 = 2040;
  if ((v41 & 0xFFFFFFFE) == 4)
  {
    v49 = 2048;
  }

  v84 = v41 == 3;
  v50 = 2056;
  if (!v84)
  {
    v50 = v49;
  }

  std::string::basic_string[abi:nn200100]<0>(&v296, *(a1 + v50));
  v51 = a1[24];
  if (v47 != 13)
  {
    v51 = a1[19];
  }

  if (*(a1 + 1954))
  {
    v52 = a1[24];
    if (v48)
    {
      v52 = **(a3 + 27);
    }

    v53 = a1[24];
    if (v42 == 2)
    {
      v53 = a1[24];
      if (v47 == 13)
      {
        v53 = **(a3 + 29);
      }
    }

    v276 = a1[24];
    if (v277)
    {
      v276 = **(a3 + 19);
    }

    v54 = *a3;
    if (a3[40] == 1 && v54 == 3)
    {
      v273 = v53;
      v270 = v52;
      v51 = **(a3 + 21);
      goto LABEL_44;
    }
  }

  else
  {
    v54 = *a3;
    v52 = a1[24];
    v53 = v52;
    v276 = v52;
  }

  v273 = v53;
  v270 = v52;
  if (v54 != 3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[24]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[24]);
  }

LABEL_44:
  v55 = a1[21];
  v56 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v56);
  v57 = a1[21];
  v58 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v58);
  v59 = a1[23];
  v60 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v60);
  if (*(a1 + 2384) == 1)
  {
    v61 = **(a3 + 17);
    if ((*(v61 + 8) & 0xFE) != 0x12)
    {
      goto LABEL_49;
    }

    v62 = *(v61 + 16);
  }

  else
  {
    v62 = a1 + 25;
  }

  v61 = *v62;
LABEL_49:
  if (v61 == a1[25])
  {
    v63 = ".i";
  }

  else if (v61 == a1[24])
  {
    v63 = ".ci16";
  }

  else
  {
    v63 = &unk_20E75F419;
  }

  if (v43 > 1)
  {
    if (v43 != 2)
    {
      if (v43 != 3)
      {
        goto LABEL_92;
      }

      std::string::append(&v296, ".3d");
      if (v47 == 13)
      {
        std::string::append(&v296, v63);
        v65 = llvm::FixedVectorType::get();
      }

      else
      {
        v65 = a1[39];
      }

LABEL_79:
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v65);
      goto LABEL_92;
    }

    std::string::append(&v296, ".cube");
    if (v47 == 13)
    {
      std::string::append(&v296, "stf");
      if ((a1[233] & 1) == 0)
      {
        v274 = 0;
        goto LABEL_187;
      }

      if (*(a1 + 2360) != 1)
      {
        v68 = llvm::FixedVectorType::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v68);
        v67 = v273;
LABEL_85:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v67);
        if (v277)
        {
          std::string::append(&v296, ".array");
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v276);
        }

        if (v266)
        {
          std::string::append(&v296, ".shadow");
          v66 = a1[21];
          goto LABEL_89;
        }

LABEL_90:
        if (v47 != 13)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }
    }

    else
    {
      std::string::append(&v296, a1[294]);
      if ((a1[295] & 1) == 0)
      {
        v67 = a1[39];
        goto LABEL_85;
      }
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[28]);
    v67 = a1[24];
    goto LABEL_85;
  }

  if (!v43)
  {
    std::string::append(&v296, ".1d");
    if (v47 != 13)
    {
      v61 = a1[21];
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v61);
    if (v277)
    {
      std::string::append(&v296, ".array");
      v66 = v276;
LABEL_89:
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v66);
      goto LABEL_90;
    }

    goto LABEL_90;
  }

  if (v43 != 1)
  {
    goto LABEL_92;
  }

  std::string::append(&v296, ".2d");
  if (v47 == 13)
  {
    v64 = llvm::FixedVectorType::get();
  }

  else
  {
    v64 = a1[28];
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v64);
  if (v48)
  {
    std::string::append(&v296, ".msaa");
  }

  if (v277)
  {
    std::string::append(&v296, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v276);
  }

  if (v47 != 13)
  {
    if (!v266)
    {
      goto LABEL_92;
    }

    std::string::append(&v296, ".shadow");
    v65 = a1[21];
    goto LABEL_79;
  }

LABEL_91:
  std::string::append(&v296, v63);
LABEL_92:
  v69 = a3[40];
  if (v69 > 1)
  {
    v70 = v51;
    if (v69 == 3)
    {
      v71 = v48;
      if (v48)
      {
        v74 = v270;
      }

      else
      {
        if (v264 != 4)
        {
          goto LABEL_113;
        }

        std::string::append(&v296, ".gather");
        if (*a3 != 4)
        {
          goto LABEL_113;
        }

        v74 = a1[24];
      }

      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v74);
      goto LABEL_113;
    }

    v71 = v48;
    if (v69 == 2)
    {
      std::string::append(&v296, ".grad");
      v72 = a3[1];
      if (v72 > 3)
      {
        v73 = 0;
      }

      else
      {
        v73 = dword_20E70CAF0[v72];
      }

      v75 = *(a1 + 2360);
      if (v42 != 2)
      {
        v75 = 0;
      }

      v76 = v73 - v75;
      if (v73 != v75)
      {
        do
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[28]);
          --v76;
        }

        while (v76);
      }
    }
  }

  else
  {
    v70 = v51;
    if (v69)
    {
      v71 = v48;
      if (v69 == 1)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v70);
        std::string::append(&v296, ".lod");
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[19]);
      v71 = v48;
    }
  }

LABEL_113:
  if (*(a3 + 18))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[24]);
    std::string::append(&v296, ".offset");
  }

  if (*a3 == 3)
  {
    v77 = a1[18];
    if (v44 == 8 || v44 == 4)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[41]);
      v78 = ".4xi16";
LABEL_119:
      std::string::append(&v296, v78);
      goto LABEL_135;
    }

    if ((v268 & 0xFFFFFFFB) == 3)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[42]);
      v78 = ".4xi32";
      goto LABEL_119;
    }

    v95 = 39;
    if (v268 == 1)
    {
      v95 = 37;
      v96 = ".4xh";
    }

    else
    {
      v96 = ".4xf";
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[v95]);
    std::string::append(&v296, v96);
    if (a3[4] == 1)
    {
      v78 = ".rtz";
      goto LABEL_119;
    }
  }

  else
  {
    v79 = 328;
    v80 = v268 & 0xFFFFFFFB;
    v81 = ".4xi32";
    v82 = 312;
    if (v268 == 1)
    {
      v82 = 296;
    }

    v83 = ".4xf";
    if (v268 == 1)
    {
      v83 = ".4xh";
    }

    v84 = v80 == 3;
    if (v80 == 3)
    {
      v85 = 336;
    }

    else
    {
      v85 = v82;
    }

    if (!v84)
    {
      v81 = v83;
    }

    if (v44 == 8)
    {
      v85 = 328;
      v81 = ".4xi16";
    }

    if (v44 == 4)
    {
      v86 = ".4xi16";
    }

    else
    {
      v79 = v85;
      v86 = v81;
    }

    v87 = *(a1 + v79);
    std::string::append(&v296, v86);
    v88 = a1[23];
    v89 = *v87;
    v294[0] = v87;
    v294[1] = v88;
    llvm::StructType::get();
  }

LABEL_135:
  if (v43 == 2 && v47 == 13)
  {
    if (a1[25] == v273)
    {
      v90 = ".i32";
    }

    else if (a1[24] == v273)
    {
      v90 = ".i16";
    }

    else if (a1[19] == v273)
    {
      v90 = ".f16";
    }

    else
    {
      v90 = &unk_20E75F419;
    }

    std::string::append(&v296, v90);
  }

  if (v277)
  {
    if (a1[25] == v276)
    {
      v91 = ".i32";
    }

    else if (a1[24] == v276)
    {
      v91 = ".i16";
    }

    else if (a1[19] == v276)
    {
      v91 = ".f16";
    }

    else
    {
      v91 = &unk_20E75F419;
    }

    std::string::append(&v296, v91);
  }

  if (v71)
  {
    if (a1[25] == v270)
    {
      v92 = ".i32";
    }

    else if (a1[24] == v270)
    {
      v92 = ".i16";
    }

    else if (a1[19] == v270)
    {
      v92 = ".f16";
    }

    else
    {
      v92 = &unk_20E75F419;
    }

    std::string::append(&v296, v92);
  }

  v93 = a3[40];
  v94 = ".f16";
  if (v93)
  {
    if (v93 != 1)
    {
      goto LABEL_180;
    }

    if (a1[25] == v70)
    {
      v94 = ".i32";
    }

    else if (a1[24] == v70)
    {
      v94 = ".i16";
    }

    else if (a1[19] != v70)
    {
      v94 = &unk_20E75F419;
    }
  }

  std::string::append(&v296, v94);
LABEL_180:
  if (*a3 != 3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, a1[19]);
  }

  llvm::FunctionType::get();
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    v97 = v296.__r_.__value_.__r.__words[0];
    if (!v296.__r_.__value_.__r.__words[0])
    {
      goto LABEL_186;
    }
  }

  else
  {
    v97 = &v296;
  }

  strlen(v97);
LABEL_186:
  v98 = a1[54];
  llvm::Module::getOrInsertFunction();
  v274 = v99;
LABEL_187:
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  if (v288 != v290)
  {
    free(v288);
  }

  v100 = *(a3 + 17);
  if ((*(*v100 + 8) & 0xFE) == 0x12)
  {
    v101 = *(**(*v100 + 16) + 8);
  }

  else
  {
    v101 = *(*v100 + 8);
  }

  v102 = *(a3 + 25);
  v271 = a3[40];
  v287 = *(a3 + 17);
  v288 = v290;
  v289 = 0x1000000000;
  v103 = *(a3 + 18);
  v272 = *(a3 + 19);
  v104 = *(a3 + 23);
  v269 = *(a3 + 22);
  v278 = a3[1];
  if (*a3 != 3)
  {
    v105 = a1[24];
    v106 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v106);
    if (*(a1 + 1876))
    {
      v107 = *(a3 + 24);
    }

    *(a1 + 1879);
    *(a3 + 25);
    *(a3 + 20);
    *a3;
    *(a3 + 273);
    *(a3 + 137);
    if (*a3 == 2 && *(a1 + 1881) == 1)
    {
      *(a1 + 1944);
    }

    v108 = a1[24];
    v109 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v109);
  }

  v110 = a1[21];
  v111 = llvm::PointerType::get();
  if (*a3 == 3)
  {
    v112 = (a3 + 14);
  }

  else
  {
    v112 = (a3 + 12);
  }

  v113 = *v112;
  v297 = 257;
  v114 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v113, v111, &v296);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v114);
  if (*a3 == 3)
  {
    v116 = llvm::ConstantPointerNull::get(v111, v115);
  }

  else
  {
    if (!*(a1 + 475) || (v117 = *(a3 + 5)) == 0)
    {
      v117 = *(a3 + 11);
    }

    v297 = 257;
    v116 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v117, v111, &v296);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v116);
  v118 = a1[23];
  v119 = llvm::PointerType::get();
  v120 = v119;
  v121 = *(a3 + 4);
  if (v121)
  {
    if (!*(a1 + 475) && (AGCLLVMObject::useTextureIDLegacyMode(v119) & 1) == 0)
    {
      v296.__r_.__value_.__r.__words[0] = llvm::DataLayout::getTypeAllocSize((a1 + 59), a1[223]);
      LODWORD(v296.__r_.__value_.__r.__words[1]) = v122;
      llvm::TypeSize::operator unsigned long long();
      v123 = a1[25];
      v124 = v104;
      v125 = llvm::ConstantInt::get();
      v126 = a1[25];
      v297 = 257;
      v127 = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, v121, v126, &v296);
      v296.__r_.__value_.__r.__words[0] = "agx2_tex_heap_byte_offset";
      v297 = 259;
      v128 = v125;
      v104 = v124;
      Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v127, v128, &v296);
      v297 = 257;
      v121 = llvm::IRBuilderBase::CreateCast((a1 + 1), 48, Mul, v120, &v296);
    }

    v130 = v121;
  }

  else
  {
    v131 = a1[26];
    v132 = llvm::ConstantInt::get();
    v297 = 257;
    v130 = llvm::IRBuilderBase::CreateCast((a1 + 1), 48, v132, v120, &v296);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v130);
  v133 = v287;
  if (v278 == 2)
  {
    if (v101 == 13)
    {
      v134 = AGCLLVMBuilder::subrangeVector(a1, v287, 0, 2, 1);
    }

    else
    {
      v134 = AGCLLVMBuilder::extendVector(a1, v287, 4);
    }

    v133 = v134;
    v287 = v134;
  }

  v135 = *v133;
  if ((*(*v133 + 8) & 0xFE) == 0x12)
  {
    v135 = **(v135 + 2);
  }

  if ((*(a1 + 1883) & 1) == 0 && !a3[1] && *a3 == 3)
  {
    v136 = v104;
    v137 = AGCLLVMBuilder::extendVector(a1, v133, 2);
    v138 = llvm::ConstantInt::get();
    v297 = 257;
    v139 = a1[25];
    v140 = llvm::ConstantInt::get();
    v141 = v137;
    v104 = v136;
    v287 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v141, v138, v140, &v296);
  }

  v142 = 0;
  if (*(a1 + 2360) == 1 && v278 == 2)
  {
    v143 = a3[1];
    if (v143 > 3)
    {
      v144 = 0;
    }

    else
    {
      v144 = dword_20E70CAF0[v143];
    }

    v265 = v104;
    v267 = v102;
    if (v271 == 2)
    {
      v145 = a1[28];
      v292[0] = a1[39];
      v292[1] = v145;
      v292[2] = v145;
      v292[3] = v145;
      v146 = a1[46];
      llvm::FunctionType::get();
      if (a1[297])
      {
        v147 = strlen(a1[297]);
      }

      v150 = a1[54];
      llvm::Module::getOrInsertFunction();
      v152 = v151;
      v296.__r_.__value_.__r.__words[0] = &v296.__r_.__value_.__r.__words[2];
      v296.__r_.__value_.__l.__size_ = 0x400000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v296, v287);
      AGCLLVMTargetLowerer::remapGradients(a1, &v296, v269, v265, v144);
      v295 = 257;
      v153 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v152 + 24), v152, v296.__r_.__value_.__l.__data_, LODWORD(v296.__r_.__value_.__r.__words[1]), v294);
      if (v296.__r_.__value_.__l.__data_ != &v296.__r_.__value_.__r.__words[2])
      {
        free(v296.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v148 = a1[39];
      llvm::FunctionType::get();
      if (a1[296])
      {
        v149 = strlen(a1[296]);
      }

      v154 = a1[54];
      llvm::Module::getOrInsertFunction();
      v297 = 257;
      v153 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v155 + 24), v155, &v287, 1, &v296);
    }

    v287 = AGCLLVMBuilder::subrangeVector(a1, v153, 0, 2, 1);
    v297 = 257;
    v156 = a1[25];
    v157 = llvm::ConstantInt::get();
    v158 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v153, v157, &v296);
    v159 = a1[25];
    v295 = 257;
    v160 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v158, v159, v294);
    v161 = a1[24];
    v293 = 257;
    v142 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v160, v161, v292);
    if (v271 == 2)
    {
      v269 = AGCLLVMBuilder::subrangeVector(a1, v153, 3u, 2, 1);
      v104 = AGCLLVMBuilder::subrangeVector(a1, v153, 5u, 2, 1);
    }

    else
    {
      v104 = v265;
    }

    v102 = v267;
  }

  if (v101 == 13 && v278 == 2)
  {
    v142 = *(a3 + 29);
    if ((*(a1 + 1954) & 1) == 0)
    {
      v142 = AGCLLVMBuilder::truncateToSmall(a1, *(a3 + 29), a1[24]);
    }
  }

  if (*(a3 + 23) == 1 && *a3 != 3)
  {
    if (a3[1] < 2)
    {
      if (v101 == 13)
      {
        goto LABEL_260;
      }

LABEL_259:
      (*(*a1 + 1600))(a1, *(a3 + 6), &v287, v278 == 2);
      goto LABEL_260;
    }

    if (v101 != 13 && v278 == 2)
    {
      goto LABEL_259;
    }
  }

LABEL_260:
  v163 = a1[24];
  if (v135 == v163)
  {
    v164 = v287;
    if ((a1[298] & 1) == 0)
    {
      v164 = AGCLLVMBuilder::extendFromSmall(a1, v287, v163, 0);
      v287 = v164;
    }
  }

  else
  {
    v164 = v287;
  }

  if (v101 != 13)
  {
    v164 = AGCLLVMBuilder::f32Extend(a1, v164, 1);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v164);
  if (v142)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v142);
  }

  if (v272)
  {
    FPToUI = *(a3 + 19);
    if (*FPToUI == a1[25] && (*(a1 + 1954) & 1) == 0)
    {
      if (*(FPToUI + 16) == 84)
      {
        v166 = *(FPToUI - 4);
        if (v166)
        {
          if (!*(v166 + 16) && *(v166 + 24) == *(FPToUI + 9))
          {
            Name = llvm::Value::getName(v166);
            if (v168 >= 0x13)
            {
              v169 = *Name == 0x766E6F632E726961 && Name[1] == 0x33692E752E747265;
              if (v169 && *(Name + 11) == 0x662E3233692E752ELL)
              {
                v284 = *(a1 + 7);
                llvm::IRBuilderBase::getCurrentDebugLocation(&v285, (a1 + 1));
                v286 = *(a1 + 26);
                v171 = AGCLLVMTargetLowerer::buildBiasF2IVarying(a1, &v284, *(FPToUI - 4 * (*(FPToUI + 5) & 0x7FFFFFF)));
                if (v285)
                {
                  llvm::MetadataTracking::untrack();
                }

                v172 = a1[24];
                v297 = 257;
                FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v171, v172, &v296);
              }
            }
          }
        }
      }

      if (FPToUI == *(a3 + 19))
      {
        v173 = a1[25];
        v174 = llvm::ConstantInt::get();
        v175 = *(a3 + 19);
        v297 = 257;
        llvm::IRBuilderBase::CreateICmp(a1 + 1, 37, v175, v174, &v296);
        v176 = *(a3 + 19);
        v297 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        FPToUI = AGCLLVMBuilder::truncateToSmall(a1, Select, a1[24]);
      }
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, FPToUI);
  }

  if (v102)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, *(a3 + 25));
  }

  v178 = *(a3 + 27);
  if (v178)
  {
    if ((*(a1 + 1954) & 1) == 0)
    {
      v179 = a1[24];
      v297 = 257;
      v178 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v178, v179, &v296);
    }

    v180 = v178;
    goto LABEL_296;
  }

  v206 = a3[40];
  switch(v206)
  {
    case 0:
      v180 = AGCLLVMBuilder::truncateToSmall(a1, *(a3 + 21), a1[19]);
      goto LABEL_296;
    case 1:
      v207 = *(a3 + 21);
      if (v101 == 13)
      {
        if (*(*v207 + 8) == 13)
        {
          if (*(a1 + 1954) == 1 && *a3 == 3)
          {
            goto LABEL_351;
          }

          if (*v207 == a1[25] && *(a1 + 1882) == 1)
          {
            v208 = llvm::ConstantInt::get();
            v297 = 257;
            llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v207, v208, &v296);
            v209 = a1[24];
            llvm::ConstantInt::get();
            v210 = *(a3 + 21);
            v211 = a1[24];
            v295 = 257;
            llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v210, v211, v294);
            v293 = 257;
            v212 = llvm::IRBuilderBase::CreateSelect();
          }

          else
          {
            v263 = a1[24];
            v297 = 257;
            v212 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v207, v263, &v296);
          }
        }

        else
        {
          v262 = a1[24];
          v297 = 257;
          v212 = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v207, v262, &v296);
        }
      }

      else
      {
        v212 = AGCLLVMBuilder::truncateToSmall(a1, *(a3 + 21), a1[19]);
      }

      v207 = v212;
LABEL_351:
      v180 = v207;
      goto LABEL_296;
    case 2:
      if (*(a1 + 2360) == 1 && v278 == 2)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v269);
        v180 = v104;
LABEL_296:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v180);
        break;
      }

      v260 = a3[1];
      if (v260 > 3)
      {
        v261 = 0;
      }

      else
      {
        v261 = dword_20E70CAF0[v260];
      }

      AGCLLVMTargetLowerer::remapGradients(a1, &v288, v269, v104, v261);
      break;
  }

  if (*(a3 + 18))
  {
    v181 = a1[25];
    v182 = llvm::ConstantInt::get();
    v183 = a3[1];
    if (v183 <= 3)
    {
      v184 = 0;
      v185 = dword_20E70CAF0[v183];
      do
      {
        v297 = 257;
        v186 = a1[25];
        v187 = llvm::ConstantInt::get();
        v188 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v103, v187, &v296);
        v189 = dword_20E715EA8[v184];
        v297 = 257;
        v190 = *v188;
        v191 = llvm::ConstantInt::get();
        Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v188, v191, &v296);
        v193 = dword_20E715EB4[v184];
        v297 = 257;
        v194 = *Shl;
        v195 = llvm::ConstantInt::get();
        v196 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Shl, v195, &v296);
        v297 = 257;
        v182 = llvm::IRBuilderBase::CreateOr((a1 + 1), v182, v196, &v296);
        ++v184;
      }

      while (v185 != v184);
    }

    v197 = AGCLLVMBuilder::truncateToSmall(a1, v182, a1[24]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v197);
  }

  v198 = *a3;
  if (*a3 == 4)
  {
    v199 = *(a3 + 276);
    v200 = a1[24];
    v201 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v201);
    v198 = *a3;
  }

  v202 = v275;
  if (v198 != 3)
  {
    v203 = *(a3 + 24);
    if (v203)
    {
      if (v203[16] <= 0x14u)
      {
        if (llvm::Constant::isZeroValue(*(a3 + 24)))
        {
          goto LABEL_308;
        }

        v203 = *(a3 + 24);
      }

      v205 = AGCLLVMBuilder::truncateToSmall(a1, v203, a1[19]);
      goto LABEL_325;
    }

LABEL_308:
    v204 = a1[19];
    v205 = llvm::ConstantFP::get();
LABEL_325:
    v202 = v205;
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v288, v202);
  v297 = 257;
  v6 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v274 + 24), v274, v288, v289, &v296);
  if (*(a3 + 288) == 1)
  {
    v213 = a1[9];
    llvm::Attribute::get();
    llvm::Value::getContext(v6);
    *(v6 + 8) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (*a3 == 3)
  {
    goto LABEL_340;
  }

  LODWORD(v294[0]) = 0;
  v297 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v6, v294, 1, &v296);
  if (a3[2] == 6)
  {
    v215 = a1[31];
    v216 = llvm::UndefValue::get();
    v297 = 257;
    v217 = a1[25];
    v218 = llvm::ConstantInt::get();
    v219 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Value, v218, &v296);
    v295 = 257;
    v220 = a1[25];
    v221 = llvm::ConstantInt::get();
    v222 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v216, v219, v221, v294);
    v297 = 257;
    v223 = a1[25];
    v224 = llvm::ConstantInt::get();
    v225 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Value, v224, &v296);
    v295 = 257;
    v226 = a1[25];
    v227 = llvm::ConstantInt::get();
    v228 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v222, v225, v227, v294);
    v229 = a1[26];
    v297 = 257;
    v230 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v228, v229, &v296);
    v231 = a1[26];
    llvm::FixedVectorType::get();
    v232 = llvm::UndefValue::get();
    v297 = 257;
    v233 = a1[25];
    v234 = llvm::ConstantInt::get();
    v235 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v232, v230, v234, &v296);
    v236 = a1[26];
    v237 = llvm::ConstantInt::get();
    v297 = 257;
    v238 = a1[25];
    v239 = llvm::ConstantInt::get();
    v240 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v235, v237, v239, &v296);
    v297 = 257;
    v241 = a1[25];
    v242 = llvm::ConstantInt::get();
    v243 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v240, v237, v242, &v296);
    v244 = a1[26];
    v245 = llvm::ConstantInt::get();
    v297 = 257;
    v246 = a1[25];
    v247 = llvm::ConstantInt::get();
    v248 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v243, v245, v247, &v296);
  }

  else
  {
    if (*(a3 + 22) != 1)
    {
      goto LABEL_334;
    }

    v248 = (**a1)(a1, Value);
  }

  Value = v248;
LABEL_334:
  if (*(a3 + 21) == 1 && (*(*Value + 8) & 0xFE) == 0x12)
  {
    v297 = 257;
    v249 = a1[25];
    v250 = llvm::ConstantInt::get();
    Value = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Value, v250, &v296);
  }

  if (*(a3 + 24) == 1)
  {
    v251 = a1[23];
    v252 = **Value;
    v296.__r_.__value_.__r.__words[0] = *Value;
    v296.__r_.__value_.__l.__size_ = v251;
    llvm::StructType::get();
    v253 = llvm::UndefValue::get();
    LODWORD(v294[0]) = 0;
    v297 = 257;
    InsertValue = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v253, Value, v294, 1, &v296);
    v283 = 1;
    v297 = 257;
    v255 = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v6, &v283, 1, &v296);
    v256 = a1[23];
    v295 = 257;
    v257 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v255, v256, v294);
    v282 = 1;
    v293 = 257;
    v6 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), InsertValue, v257, &v282, 1, v292);
  }

  else
  {
    v6 = Value;
  }

LABEL_340:
  if (v288 != v290)
  {
    free(v288);
  }

LABEL_342:
  v258 = *MEMORY[0x277D85DE8];
  return v6;
}

llvm::Value *AGCLLVMBuilder::f32Extend(AGCLLVMBuilder *this, llvm::Value *a2, int a3)
{
  v4 = a2;
  v5 = *a2;
  v6 = *(this + 21);
  if (*a2 != v6)
  {
    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v8 = *(v5 + 32);
      v9 = *(this + 21);
      v6 = llvm::FixedVectorType::get();
      v10 = *(v5 + 8);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    if ((v10 & 0xFE) == 0x12)
    {
      v10 = *(**(v5 + 16) + 8);
    }

    if (v10 > 6)
    {
      v14 = 257;
      if (a3)
      {
        return llvm::IRBuilderBase::CreateSIToFP((this + 8), v4, v6, v13);
      }

      else
      {
        return llvm::IRBuilderBase::CreateUIToFP((this + 8), v4, v6, v13);
      }
    }

    else
    {
      v14 = 257;
      return llvm::IRBuilderBase::CreateFPExt((this + 8), v4, v6, v13);
    }
  }

  return v4;
}

llvm::Value *AGCLLVMBuilder::truncateToSmall(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Type *a3)
{
  v3 = a2;
  v5 = *a2;
  v6 = *(this + 19);
  if (v6 == a3 || (v6 = *(this + 24), v6 == a3) || (v6 = *(this + 23), v6 == a3))
  {
    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v7 = *(v5 + 32);
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
      return llvm::IRBuilderBase::CreateCast(this + 8, 38, v3, v6, v11);
    }

    else
    {
      return llvm::IRBuilderBase::CreateFPTrunc((this + 8), v3, v6, v11);
    }
  }

  return v3;
}

uint64_t llvm::IRBuilderBase::CreateExtractValue(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    v8 = (*(**(a1 + 72) + 344))(*(a1 + 72), a2, a3, a4);
    if (v8)
    {
      v9 = *(v8 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, a5);
    }
  }

  else
  {
    v8 = llvm::User::operator new(0x60);
    v10 = *a2;
    llvm::ExtractValueInst::getIndexedType();
    llvm::Instruction::Instruction();
    if (*(v8 - 32))
    {
      v11 = *(v8 - 24);
      **(v8 - 16) = v11;
      if (v11)
      {
        *(v11 + 16) = *(v8 - 16);
      }
    }

    *(v8 - 32) = a2;
    v14 = a2[1];
    v13 = a2 + 1;
    v12 = v14;
    *(v8 - 24) = v14;
    if (v14)
    {
      *(v12 + 16) = v8 - 24;
    }

    *(v8 - 16) = v13;
    *v13 = v8 - 32;
    *(v8 + 64) = v8 + 80;
    *(v8 + 72) = 0x400000000;
    llvm::ExtractValueInst::init();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v8, a5, *(a1 + 48), *(a1 + 56));
    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = *a1;
      v17 = &v16[4 * v15];
      do
      {
        v18 = *v16;
        v19 = *(v16 + 1);
        llvm::Instruction::setMetadata();
        v16 += 4;
      }

      while (v16 != v17);
    }
  }

  return v8;
}

llvm::Value *AGCLLVMBuilder::coerceSampleType(void *a1, llvm::Value *a2, int a3)
{
  v3 = a2;
  v5 = *a2;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v13 = 19;
      if ((*(v5 + 2) & 0xFE) == 0x12)
      {
        v13 = 37;
      }

      v14 = a1[v13];
      v16 = 257;
      return llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), a2, v14, v15);
    }

    if (a3 != 3)
    {
      return v3;
    }

LABEL_9:
    v8 = a1[42];
    goto LABEL_11;
  }

  switch(a3)
  {
    case 4:
LABEL_5:
      if (llvm::Type::getScalarSizeInBits(v5) == 32)
      {
        v6 = a1[42];
        v16 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v3, v6, v15);
        v8 = a1[41];
        v16 = 257;
        v9 = (a1 + 1);
        v10 = 38;
        return llvm::IRBuilderBase::CreateCast(v9, v10, Cast, v8, v15);
      }

      v8 = a1[41];
LABEL_11:
      v16 = 257;
      v9 = (a1 + 1);
      v10 = 49;
      Cast = v3;
      return llvm::IRBuilderBase::CreateCast(v9, v10, Cast, v8, v15);
    case 7:
      goto LABEL_9;
    case 8:
      goto LABEL_5;
  }

  return v3;
}

uint64_t llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v9 = (*(**(a1 + 72) + 352))(*(a1 + 72), a2, a3, a4, a5);
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
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v9, a6);
    }
  }

  else
  {
    v9 = llvm::User::operator new(0x60);
    v11 = *a2;
    v12 = llvm::Instruction::Instruction();
    *(v12 + 64) = v12 + 80;
    *(v12 + 72) = 0x400000000;
    llvm::InsertValueInst::init();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v9, a6, *(a1 + 48), *(a1 + 56));
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = *a1;
      v15 = &v14[4 * v13];
      do
      {
        v16 = *v14;
        v17 = *(v14 + 1);
        llvm::Instruction::setMetadata();
        v14 += 4;
      }

      while (v14 != v15);
    }
  }

  return v9;
}

llvm::Value *AGCLLVMTargetBuilder::CreateFabs(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CreateFabs(v4, &v7, a2);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Value *AGCLLVMTargetLowerer::CreateFabs(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a2 + 6);
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(a1, &v8, a3, "llvm.fabs");
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildDot(AGCLLVMBuilder *a1, llvm::Value *a2, llvm::Value *a3, int a4)
{
  if ((~a4 & 6) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 26) = v6 | a4 & 8;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {

    return AGCLLVMBuilder::buildDotProduct(a1, a2, a3);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v9 = 257;
    return llvm::IRBuilderBase::CreateFMul(a1 + 8, a2, a3, v8);
  }
}

llvm::Value *AGCLLVMBuilder::buildDotProduct(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v23 = 257;
  v6 = *(this + 25);
  v7 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v7, v22);
  v23 = 257;
  v9 = *(this + 25);
  v10 = llvm::ConstantInt::get();
  v11 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a3, v10, v22);
  v23 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, Element, v11, v22);
  v13 = *(*a2 + 32);
  if (v13 >= 2)
  {
    for (i = 1; i != v13; ++i)
    {
      v23 = 257;
      v15 = *(this + 25);
      v16 = llvm::ConstantInt::get();
      v17 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v16, v22);
      v23 = 257;
      v18 = *(this + 25);
      v19 = llvm::ConstantInt::get();
      v20 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a3, v19, v22);
      FMul = AGCLLVMBuilder::buildFma(this, v17, v20, FMul);
    }
  }

  return FMul;
}

llvm::Instruction *AGCLLVMBuilder::buildFma(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  *(&v26.__r_.__value_.__s + 23) = 9;
  strcpy(&v26, "llvm.fma.");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v27, *(v8 + 32));
    v10 = std::string::insert(&v27, 0, "v");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v24 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v24 >= 0)
    {
      v13 = HIBYTE(v24);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v26, v12, v13);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(this + 21))
  {
    v16 = "f32";
  }

  else
  {
    v16 = "f16";
  }

  std::string::append(&v26, v16);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v26;
  }

  else
  {
    v17 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(this, v17, size, v8, v8, v8, v8);
  v27.__r_.__value_.__r.__words[0] = a2;
  v27.__r_.__value_.__l.__size_ = a3;
  v27.__r_.__value_.__r.__words[2] = a4;
  v25 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(this + 8, *(v19 + 24), v19, &v27, 3, __p);
  llvm::Instruction::setHasAllowReassoc(v20);
  llvm::Instruction::setHasApproxFunc(v20);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[3] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  v14[0] = v15;
  v14[1] = 0x300000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v14, __src, v14);
  llvm::FunctionType::get();
  v8 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v10 = v9;
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

llvm::Value *AGCLLVMTargetBuilder::CreateSqrt(AGCLLVMTargetBuilder *this, llvm::Value *a2)
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
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.sqrt");
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

uint64_t AGCLLVMAirBuiltins::buildFastFMin(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    v7 = (*(v6 + *(*v6 - 24) + 1808) & 2) == 0;
  }

  else
  {
    v7 = 1;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v8 = *(*a2 + 8);
  }

  v9 = v8 == 2;
  v10 = *(this + 58);
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 48))(v10, &v13, a2, a3, v9 & v7);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltins::buildFastFSaturate(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = (*(*v4 + 40))(v4, &v7, a2, 0);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Instruction *AGCLLVMAirBuiltins::buildMix(AGCLLVMBuilder *a1, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, int a5)
{
  v5 = a2;
  if ((~a5 & 6) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 26) = v6 | a5 & 8;
  if (a2 != a3)
  {
    v14 = 257;
    FNeg = llvm::IRBuilderBase::CreateFNeg(a1 + 8, a4, v13);
    v11 = AGCLLVMBuilder::buildFma(a1, v5, FNeg, v5);
    return AGCLLVMBuilder::buildFma(a1, a3, a4, v11);
  }

  return v5;
}

uint64_t llvm::IRBuilderBase::CreateFNeg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    v5 = llvm::UnaryOperator::Create();
    v7 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v5);
LABEL_9:
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a3);
    return v5;
  }

  v5 = (*(**(a1 + 72) + 200))(*(a1 + 72));
  if (v5)
  {
    v6 = *(v5 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltins::buildWidth(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = AGCLLVMAirBuiltins::buildDfdx(this, a2);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, v4);
  v6 = AGCLLVMAirBuiltins::buildDfdy(this, a2);
  v7 = AGCLLVMTargetBuilder::CreateFabs(this, v6);
  v10 = 257;
  return llvm::IRBuilderBase::CreateFAdd(this + 8, Fabs, v7, v9);
}

llvm::Value *AGCLLVMAirBuiltins::buildDfdx(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v18 = a2;
  v4 = *(this + 118) + *(**(this + 118) - 24);
  v5 = *(v4 + 1808);
  v15 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (this + 8));
  v17 = *(this + 26);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v15, v4 + 1712);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *a2;
  v8 = 1648;
  if (v6 == *(this + 19))
  {
    v8 = 1664;
  }

  v7 = *(this + 58);
  v9 = *(v7 + v8);
  if (v9)
  {
    v10 = strlen(*(v7 + v8));
  }

  else
  {
    v10 = 0;
  }

  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v9, v10, v6, v6);
  v14 = 257;
  result = llvm::IRBuilderBase::CreateCall(this + 8, *(v11 + 24), v11, &v18, 1, v13);
  *(*(this + 118) + *(**(this + 118) - 24) + 1808) = v5;
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildDfdy(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v19 = a2;
  v4 = *(this + 118) + *(**(this + 118) - 24);
  v5 = *(v4 + 1808);
  v16 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (this + 8));
  v18 = *(this + 26);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v16, v4 + 1712);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  *(*(this + 118) + *(**(this + 118) - 24) + 1808) = v5;
  v6 = *a2;
  v8 = 1656;
  if (v6 == *(this + 19))
  {
    v8 = 1672;
  }

  v7 = *(this + 58);
  v9 = *(v7 + v8);
  if (v9)
  {
    v10 = strlen(*(v7 + v8));
  }

  else
  {
    v10 = 0;
  }

  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v9, v10, v6, v6);
  v15 = 257;
  v12 = llvm::IRBuilderBase::CreateCall(this + 8, *(v11 + 24), v11, &v19, 1, v14);
  return (*(**(this + 118) + 32))(*(this + 118), v12);
}

uint64_t AGCLLVMAirBuiltins::buildFastFClamp(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = *(this + 58);
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v13 = *(this + 26);
  v9 = (*(*v8 + 80))(v8, &v11, a2, a3, a4, 0);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

double std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a2 + 24);
  v6 = *(a2 + 24);
  v8 = (a1 + 24);
  v9 = *(a1 + 47);
  v10 = *(a2 + 47);
  if (v10 >= 0)
  {
    v11 = *(a2 + 47);
  }

  else
  {
    v11 = *(a2 + 32);
  }

  if (v10 >= 0)
  {
    v12 = (a2 + 24);
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v9 >= 0)
  {
    v13 = *(a1 + 47);
  }

  else
  {
    v13 = *(a1 + 32);
  }

  if (v9 >= 0)
  {
    v14 = (a1 + 24);
  }

  else
  {
    v14 = *(a1 + 24);
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
  if (v16)
  {
    v17 = v16 < 0;
  }

  else
  {
    v17 = v11 < v13;
  }

  v18 = *(a3 + 24);
  v19 = *(a3 + 47);
  if (v19 >= 0)
  {
    v20 = *(a3 + 47);
  }

  else
  {
    v20 = *(a3 + 32);
  }

  if (v19 >= 0)
  {
    v21 = (a3 + 24);
  }

  else
  {
    v21 = *(a3 + 24);
  }

  if (v11 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v11;
  }

  v23 = memcmp(v21, v12, v22);
  v25 = v20 < v11;
  if (v23)
  {
    v25 = v23 < 0;
  }

  if (v17)
  {
    v26 = a1;
    if (v25)
    {
LABEL_51:
      v36 = a3;
LABEL_72:

      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v26, v36).n128_u64[0];
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2);
    v27 = *(a2 + 47);
    v28 = *(a3 + 47);
    if (v28 >= 0)
    {
      v29 = *(a3 + 47);
    }

    else
    {
      v29 = *(a3 + 32);
    }

    if (v28 >= 0)
    {
      v30 = (a3 + 24);
    }

    else
    {
      v30 = *(a3 + 24);
    }

    if (v27 >= 0)
    {
      v31 = *(a2 + 47);
    }

    else
    {
      v31 = *(a2 + 32);
    }

    if (v27 >= 0)
    {
      v32 = v7;
    }

    else
    {
      v32 = *(a2 + 24);
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    v34 = memcmp(v30, v32, v33);
    v35 = v29 < v31;
    if (v34)
    {
      v35 = v34 < 0;
    }

    if (v35)
    {
      v26 = a2;
      goto LABEL_51;
    }
  }

  else if (v25)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a2, a3);
    v37 = *(a1 + 47);
    v38 = *(a2 + 47);
    if (v38 >= 0)
    {
      v39 = *(a2 + 47);
    }

    else
    {
      v39 = *(a2 + 32);
    }

    if (v38 >= 0)
    {
      v40 = v7;
    }

    else
    {
      v40 = *(a2 + 24);
    }

    if (v37 >= 0)
    {
      v41 = *(a1 + 47);
    }

    else
    {
      v41 = *(a1 + 32);
    }

    if (v37 >= 0)
    {
      v42 = v8;
    }

    else
    {
      v42 = *(a1 + 24);
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    v44 = memcmp(v40, v42, v43);
    v45 = v39 < v41;
    if (v44)
    {
      v45 = v44 < 0;
    }

    if (v45)
    {
      v26 = a1;
      v36 = a2;
      goto LABEL_72;
    }
  }

  return result;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x20F331DA0);
  }
}

uint64_t AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject *this, const AGCLLVMStatelessFragmentObject::WriteFramebufferOptions *a2, unsigned __int8 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::str(&__p, a2, 1);
  v5 = *(a2 + 316);
  v6 = *(a2 + 80);
  v7 = *(a2 + 304);
  AGCLLVMStatelessFragmentObject::buildReadFramebufferFunctionType(this, *(a2 + 8), v5, v7);
  v8 = *(this + *(*this - 24) + 2136);
  llvm::Module::getOrInsertFunction();
  v10 = v9;
  v11 = *this;
  v12 = *(v9 + 9);
  *(v9 + 9) = v12 & 0xC00F | (16 * *(*(this + *(*this - 24) + 2168) + 1960));
  if (v5 == 1)
  {
    v13 = *(this + *(v11 - 24) + 1896);
    llvm::ConstantInt::get();
    v14 = 0;
  }

  else
  {
    if (v12)
    {
      llvm::Function::BuildLazyArguments(v9);
    }

    v15 = *(v10 + 88);
    llvm::Value::setName();
    v14 = 1;
  }

  if (*(v10 + 18))
  {
    llvm::Function::BuildLazyArguments(v10);
  }

  v16 = *(v10 + 88) + 40 * v14;
  llvm::Value::setName();
  if (v7)
  {
    if (*(v10 + 18))
    {
      llvm::Function::BuildLazyArguments(v10);
    }

    v17 = *(v10 + 88) + 40 * v14 + 40;
    llvm::Value::setName();
  }

  if (*(v10 + 72) == v10 + 72)
  {
    v18 = *(this + *(*this - 24) + 1776);
    operator new();
  }

  v19 = this + *(*this - 24);
  if (v19[2284] == 1)
  {
    v20 = *(v19 + 570);
  }

  else
  {
    v20 = 0;
  }

  AGCLLVMStatelessFragmentObject::addOrRemoveLogicalRasterOrderGroup(this, v10, v20, *(a2 + 308) & 0xFFFFFFFFFFLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::IRBuilderBase::CreateRet(llvm::IRBuilderBase *this, llvm::Value *a2)
{
  v4 = *(this + 8);
  v5 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FD40](v5, v4, a2, 0);
  v8 = 257;
  llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
  return v5;
}

uint64_t AGCLLVMAirBuiltins::buildNanFMax(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
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

  v8 = (*(*v6 + 56))(v6, &v10, a2, a3, v7 == *(this + 21));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMBuilder::findCommonDominatorOfUsers(uint64_t a1)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x400000000;
  v1 = *(a1 + 8);
  if (!v1)
  {
    v17 = 0;
    goto LABEL_39;
  }

  do
  {
    v3 = *(v1 + 24);
    if (!v3 || *(v3 + 16) != 83)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, *(v1 + 24));
      goto LABEL_24;
    }

    v4 = *(v3 + 20);
    if ((v4 & 0x40000000) != 0)
    {
      v6 = *(v3 - 8);
      v5 = v4 & 0x7FFFFFF;
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = v4 & 0x7FFFFFF;
      v6 = (v3 - 32 * v5);
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    v7 = 32 * v5;
    v8 = v6;
    do
    {
      if (*v6 == a1)
      {
        v9 = *(v3 + 20);
        if ((v9 & 0x40000000) != 0)
        {
          v10 = *(v3 - 8);
        }

        else
        {
          v10 = v3 - 32 * (v9 & 0x7FFFFFF);
        }

        v11 = *(v10 + 32 * *(v3 + 60) + 8 * ((v8 - v10) >> 5));
        v12 = *(v11 + 40);
        if (v12 == v11 + 40)
        {
          v15 = 0;
        }

        else
        {
          v13 = v12 - 24;
          if (v12)
          {
            v14 = v12 - 24;
          }

          else
          {
            v14 = 0;
          }

          if (*(v14 + 16) - 29 >= 0xB)
          {
            v15 = 0;
          }

          else
          {
            v15 = v13;
          }
        }

        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, v15);
      }

      v6 += 4;
      v8 += 4;
      v7 -= 32;
    }

    while (v7);
LABEL_24:
    v1 = *(v1 + 8);
  }

  while (v1);
  v16 = v25;
  if (v26)
  {
    v17 = 0;
    v18 = 8 * v26;
    do
    {
      v19 = *v16;
      if (v17 != *v16)
      {
        if (v17 && (v20 = *v16, (llvm::DominatorTree::dominates() & 1) == 0))
        {
          if ((llvm::DominatorTree::dominates() & 1) == 0)
          {
            v21 = *(v17 + 40);
            v22 = *(v19 + 40);
            llvm::DominatorTreeBase<llvm::BasicBlock,false>::findNearestCommonDominator();
          }
        }

        else
        {
          v17 = v19;
        }
      }

      ++v16;
      v18 -= 8;
    }

    while (v18);
    v16 = v25;
  }

  else
  {
    v17 = 0;
  }

  if (v16 != v27)
  {
    free(v16);
  }

LABEL_39:
  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t AGCLLVMAirBuiltins::buildNanFSaturate(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v5 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  v6 = (*(*v4 + 40))(v4, &v8, a2, v5 == *(this + 21));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](v4);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }
}

void std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserObject::initializeSampleFunctionMap(AGCLLVMUserObject *this)
{
  v1 = this;
  v340[8] = *MEMORY[0x277D85DE8];
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(this);
  if (*(SampleFunctionMap + 3))
  {
    goto LABEL_327;
  }

  v304 = SampleFunctionMap;
  v3 = 0;
  v338 = v340;
  v339 = xmmword_20E70C500;
  v231 = v1;
  do
  {
    v4 = 0;
    v241 = v3;
    v5 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v3];
    v331 = *(v5 + 2);
    v288 = v5;
    v6 = *(v5 + 12);
    if (v331 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v5 + 12);
    }

    v8 = 8;
    if (!v7)
    {
      v8 = 0;
    }

    v271 = v8;
    v243 = v6;
    v9 = v6 == 0;
    if (v6)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    v259 = v11;
    v265 = v10;
    v254 = v10 + 1;
    v251 = v10 + 2;
    v277 = v7;
    do
    {
      v245 = v4;
      v12 = (&AGCLLVMUserObject::air_image_dims + v4);
      v312 = *(&AGCLLVMUserObject::air_image_dims + v4 + 8);
      if (!v243 || v312 != 3)
      {
        v13 = 0;
        v14 = 1;
        v294 = v12;
        __s = &unk_20E75F419;
        v305 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_texture_subtypes;
        do
        {
          v249 = v14;
          v15 = 0;
          v247 = v13;
          v16 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
          do
          {
            v17 = *(v16 + 4);
            if (v17 != 6 && (!v7 || *(v16 + 20) == 1) && ((v15 & 0xFFFFFFFE) != 2 || v331 == 12))
            {
              v18 = *v288;
              if (*v288)
              {
                v19 = strlen(*v288);
                *&v339 = 0;
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v18, &v18[v19]);
              }

              else
              {
                *&v339 = 0;
              }

              if (*v12)
              {
                v20 = strlen(*v12);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, *v12, &(*v12)[v20]);
              }

              else if (*(&v339 + 1) < v339)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v21 = strlen(__s);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, __s, &__s[v21]);
              v22 = *(v16 + v271);
              if (v22)
              {
                v23 = strlen(*(v16 + v271));
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v22, &v22[v23]);
              }

              else if (*(&v339 + 1) < v339)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v24 = v254;
              v25 = v251;
              if (!*(v12 + 12))
              {
                v25 = v254;
                v24 = 0;
              }

              v326 = v24;
              v26 = v25 + (v331 == 1);
              if (v331 != 1)
              {
                v25 = 0;
              }

              v319 = v25;
              v27 = *(v305 + 2);
              if (v27 == 1)
              {
                v31 = v26 + 2;
                v32 = v26 + 3;
                v30 = 0;
                if (v312 == 2)
                {
                  v28 = 0;
                  v29 = 0;
                }

                else
                {
                  v28 = v26 + 4;
                  v29 = v26 + 3;
                  v32 = v26 + 5;
                }
              }

              else
              {
                if (v27)
                {
                  v30 = 0;
                  v28 = 0;
                  v29 = 0;
                  v32 = v26 + 1;
                  v31 = v26;
                }

                else
                {
                  if (v312 == 2)
                  {
                    v28 = 0;
                  }

                  else
                  {
                    v28 = v26 + 1;
                  }

                  if (v312 == 2)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v29 = v26;
                  }

                  if (v312 == 2)
                  {
                    v30 = v26;
                  }

                  else
                  {
                    v30 = v26 + 2;
                  }

                  v31 = v30 + 2;
                  v32 = v30 + 3;
                }

                v26 = 0;
              }

              v33 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v339);
              *(v33 + 8) = v331;
              *(v33 + 12) = v312;
              *(v33 + 16) = 0;
              *(v33 + 20) = v17;
              *(v33 + 24) = 1;
              *(v33 + 28) = 0;
              v7 = v277;
              *(v33 + 36) = v277;
              *(v33 + 37) = v32 + 1;
              *(v33 + 38) = 256;
              *(v33 + 40) = 0;
              *(v33 + 41) = v259;
              *(v33 + 42) = v265;
              *(v33 + 43) = v29;
              *(v33 + 44) = v28;
              *(v33 + 45) = v30;
              *(v33 + 46) = v26;
              *(v33 + 47) = 0;
              *(v33 + 48) = v326;
              *(v33 + 49) = v319;
              *(v33 + 50) = 0;
              *(v33 + 54) = v31;
              *(v33 + 55) = v32;
              *(v33 + 56) = 0;
              *(v33 + 60) = 1;
              *(v33 + 61) = 0;
              v12 = v294;
            }

            ++v15;
            v16 += 3;
          }

          while (v15 != 9);
          v305 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_texture_subtypes + 2 * v249;
          __s = *v305;
          v13 = 1;
          v14 = 2;
        }

        while ((v247 & 1) == 0);
      }

      v4 = v245 + 16;
    }

    while (v245 != 96);
    v3 = v241 + 1;
  }

  while (v241 != 3);
  do
  {
    v34 = 0;
    v226 = v3;
    v278 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v3];
    v289 = *(v278 + 12);
    v35 = 8;
    if (!*(v278 + 12))
    {
      v35 = 0;
    }

    v230 = v35;
    do
    {
      v227 = v34;
      v36 = &AGCLLVMUserObject::air_image_dims + v34;
      v283 = *(&AGCLLVMUserObject::air_image_dims + v34 + 8);
      if (!v289 || v283 != 3)
      {
        v232 = 1;
        v236 = &AGCLLVMUserObject::air_image_dims + v34;
        do
        {
          v37 = 0;
          v38 = 1;
          v237 = &unk_20E75F419;
          v238 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes;
          do
          {
            v229 = v38;
            v39 = 0;
            v228 = v37;
            v40 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
            do
            {
              v233 = v39;
              if (!v289)
              {
                if ((v39 & 0xFFFFFFFE) == 2)
                {
                  goto LABEL_137;
                }

LABEL_75:
                v41 = *(v278 + 2);
                if (v231)
                {
                  if (v41 == 2 && (v232 & 1) != 0)
                  {
                    v332 = (v40 + 2);
                    v252 = (v40 + v230);
                    v42 = 1;
                    v43 = 1;
                    v44 = (v283 & 0xFFFFFFFD) != 0;
                    v45 = 1;
                    goto LABEL_82;
                  }

                  v44 = 0;
                  v43 = (v41 & 0xFFFFFFFE) == 2;
                  v332 = (v40 + 2);
                  v42 = v41 != 3;
                  v252 = (v40 + v230);
                  if (v41 == 2)
                  {
                    v45 = v232;
LABEL_82:
                    v46 = 2;
                    v250 = 1;
LABEL_83:
                    v47 = 0;
                    v48 = v46 + v289;
                    if (!v289)
                    {
                      v46 = 0;
                    }

                    v246 = v46;
                    v49 = v48 + 2;
                    if (v283 != 2)
                    {
                      v49 = v48 + 1;
                    }

                    v244 = v49;
                    v248 = v48;
                    if (v283 == 2)
                    {
                      v50 = v48 + 1;
                    }

                    else
                    {
                      v50 = 0;
                    }

                    v242 = v50;
                    v51 = 1;
                    v240 = (v45 & 1) == 0;
                    v272 = *(v278 + 2);
                    v239 = v41 == 3;
                    v327 = v45 & 1;
                    v295 = 1;
                    __sa = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
                    v260 = v43;
                    v266 = v44;
                    v255 = v42;
                    while (2)
                    {
                      v235 = v51;
                      v234 = v47;
                      v52 = &off_277E21138;
                      v53 = 3;
                      v54 = &unk_20E75F419;
LABEL_92:
                      if ((v43 || *v332 != 6) && (v42 & *(v52 - 4) & 1) == 0)
                      {
                        v55 = *v278;
                        if (*v278)
                        {
                          v56 = strlen(*v278);
                          *&v339 = 0;
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v55, &v55[v56]);
                        }

                        else
                        {
                          *&v339 = 0;
                        }

                        if (v327)
                        {
                          if (*v36)
                          {
                            v57 = (*v36 + strlen(*v36));
                            v58 = *v36;
                            goto LABEL_107;
                          }

                          if (*(&v339 + 1) < v339)
                          {
                            llvm::SmallVectorBase<unsigned long long>::grow_pod();
                          }
                        }

                        else
                        {
                          if (v36[12])
                          {
                            v58 = "2d_ms_array";
                          }

                          else
                          {
                            v58 = "2d_ms";
                          }

                          v59 = 5;
                          if (v36[12])
                          {
                            v59 = 11;
                          }

                          v57 = &v58[v59];
LABEL_107:
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v58, v57);
                        }

                        v60 = strlen(v237);
                        llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v237, &v237[v60]);
                        v61 = strlen(v54);
                        llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v54, &v54[v61]);
                        v62 = *(__sa + 1);
                        if (v62)
                        {
                          v63 = strlen(*(__sa + 1));
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v62, &v62[v63]);
                        }

                        else if (*(&v339 + 1) < v339)
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod();
                        }

                        if (*v252)
                        {
                          v64 = strlen(*v252);
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, *v252, &(*v252)[v64]);
                          v65 = v339;
                        }

                        else
                        {
                          v65 = v339;
                          if (*(&v339 + 1) < v339)
                          {
                            llvm::SmallVectorBase<unsigned long long>::grow_pod();
                          }
                        }

                        v66 = v36[12] + v244;
                        if (v36[12])
                        {
                          v67 = v244;
                        }

                        else
                        {
                          v67 = 0;
                        }

                        v320 = v67;
                        v68 = v66 + v240;
                        v69 = v66 + v240 + v239;
                        if (v272 != 3)
                        {
                          v68 = 0;
                        }

                        v313 = v68;
                        if (v44)
                        {
                          v70 = v66 + v240 + v239;
                        }

                        else
                        {
                          v70 = 0;
                        }

                        if (v327)
                        {
                          v71 = 0;
                        }

                        else
                        {
                          v71 = v36[12] + v244;
                        }

                        v306 = v71;
                        v72 = v69 + v44;
                        v73 = v69 + v44 + v327;
                        if (v327)
                        {
                          v74 = v72;
                        }

                        else
                        {
                          v74 = 0;
                        }

                        v75 = *(v52 - 2);
                        v76 = *v332;
                        v77 = *(v238 + 2);
                        v78 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v65);
                        *(v78 + 8) = v272;
                        *(v78 + 12) = v283;
                        *(v78 + 16) = v295;
                        *(v78 + 20) = v76;
                        *(v78 + 24) = v77;
                        *(v78 + 28) = 0;
                        *(v78 + 32) = v75;
                        *(v78 + 36) = v289;
                        *(v78 + 37) = v73 + 1;
                        *(v78 + 38) = 0;
                        *(v78 + 39) = v250;
                        *(v78 + 40) = 0;
                        *(v78 + 41) = v246;
                        *(v78 + 42) = v248;
                        *(v78 + 43) = 0;
                        *(v78 + 44) = v70;
                        *(v78 + 45) = 0;
                        *(v78 + 47) = v74;
                        *(v78 + 48) = v320;
                        *(v78 + 49) = 0;
                        *(v78 + 50) = v306;
                        v36 = v236;
                        *(v78 + 51) = v313;
                        *(v78 + 52) = v242;
                        *(v78 + 53) = 0;
                        *(v78 + 55) = v73;
                        v43 = v260;
                        v44 = v266;
                        *(v78 + 56) = 0;
                        *(v78 + 60) = 1;
                        *(v78 + 61) = 0;
                        v42 = v255;
                      }

                      v79 = *v52;
                      v52 += 2;
                      v54 = v79;
                      if (!--v53)
                      {
                        __sa = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v235;
                        v295 = *__sa;
                        v47 = 1;
                        v51 = 2;
                        if (v234)
                        {
                          goto LABEL_137;
                        }

                        continue;
                      }

                      goto LABEL_92;
                    }
                  }

                  v46 = 1;
                  v250 = 0;
                }

                else
                {
                  v44 = 0;
                  v250 = 0;
                  v43 = (v41 & 0xFFFFFFFE) == 2;
                  v332 = (v40 + 2);
                  v42 = v41 != 3;
                  v252 = (v40 + v230);
                  v46 = 1;
                }

                v45 = v232;
                goto LABEL_83;
              }

              if (v39 & 0xFFFFFFFE) != 2 && (*(v40 + 20))
              {
                goto LABEL_75;
              }

LABEL_137:
              v39 = v233 + 1;
              v40 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v233 + 3];
            }

            while (v233 != 8);
            v238 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes + 2 * v229;
            v237 = *v238;
            v37 = 1;
            v38 = 2;
          }

          while ((v228 & 1) == 0);
          v80 = (v283 == 1) & v232;
          v232 = 0;
        }

        while ((v80 & 1) != 0);
      }

      v34 = v227 + 16;
    }

    while (v227 != 96);
    v3 = v226 + 1;
  }

  while (v226 != 7);
  v81 = 0;
  do
  {
    v256 = v81;
    v82 = &AGCLLVMUserObject::air_image_dims + v81;
    v83 = *(&AGCLLVMUserObject::air_image_dims + v81 + 8);
    __sb = v83 == 1;
    v307 = v83;
    if (v83 == 2)
    {
      v84 = 4;
    }

    else
    {
      v84 = 3;
    }

    v296 = v84;
    if (v83 == 2)
    {
      v85 = 3;
    }

    else
    {
      v85 = 0;
    }

    v290 = v85;
    v314 = 1;
    do
    {
      v86 = 0;
      v87 = 1;
      v321 = &unk_20E75F419;
      do
      {
        v267 = v87;
        v88 = 0;
        v261 = v86;
        v89 = ".v4f32";
        v90 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
        do
        {
          v273 = v88;
          v91 = 0;
          v92 = *(v90 + 4);
          v93 = 1;
          v328 = 1;
          v333 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
          do
          {
            v284 = v93;
            v279 = v91;
            v94 = &off_277E21138;
            v95 = 3;
            v96 = &unk_20E75F419;
            do
            {
              if (v92 == 6 || (*(v94 - 4) & 1) != 0)
              {
                goto LABEL_179;
              }

              *&v339 = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, "air.block_read_texture_", "");
              if (v314)
              {
                if (!*v82)
                {
                  if (*(&v339 + 1) < v339)
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod();
                  }

                  goto LABEL_168;
                }

                v97 = (*v82 + strlen(*v82));
                v98 = *v82;
              }

              else
              {
                if (v82[12])
                {
                  v98 = "2d_ms_array";
                }

                else
                {
                  v98 = "2d_ms";
                }

                v99 = 5;
                if (v82[12])
                {
                  v99 = 11;
                }

                v97 = &v98[v99];
              }

              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v98, v97);
LABEL_168:
              v100 = strlen(v321);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v321, &v321[v100]);
              v101 = strlen(v96);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v96, &v96[v101]);
              v102 = *(v333 + 1);
              if (v102)
              {
                v103 = strlen(*(v333 + 1));
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v102, &v102[v103]);
              }

              else if (*(&v339 + 1) < v339)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v104 = strlen(v89);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v89, &v89[v104]);
              if (v82[12])
              {
                v105 = v296;
              }

              else
              {
                v105 = 0;
              }

              v106 = v82[12] + v296 + __sb;
              v107 = v82;
              if (v307 == 1)
              {
                v108 = v82[12] + v296;
              }

              else
              {
                v108 = 0;
              }

              v109 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v339);
              *(v109 + 8) = 12;
              *(v109 + 12) = v307;
              *(v109 + 16) = v328;
              *(v109 + 20) = v92;
              *(v109 + 24) = 1;
              *(v109 + 28) = 0;
              *(v109 + 36) = 1;
              *(v109 + 37) = v106 + 5;
              *(v109 + 38) = 256;
              *(v109 + 42) = 2;
              *(v109 + 44) = v108;
              v82 = v107;
              *(v109 + 45) = 0;
              *(v109 + 47) = v106;
              *(v109 + 48) = v105;
              *(v109 + 53) = 0;
              *(v109 + 49) = 0;
              v110 = vadd_s16(vdup_n_s16(v106), 0x4000300020001);
              *(v109 + 55) = vuzp1_s8(v110, v110).u32[0];
              *(v109 + 59) = v290;
              *(v109 + 60) = 1;
              *(v109 + 61) = 0;
LABEL_179:
              v111 = *v94;
              v94 += 2;
              v96 = v111;
              --v95;
            }

            while (v95);
            v333 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v284;
            v328 = *v333;
            v91 = 1;
            v93 = 2;
          }

          while ((v279 & 1) == 0);
          v88 = v273 + 1;
          v90 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v273 + 3];
          v89 = *v90;
        }

        while (v273 != 8);
        v321 = *(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes + 2 * v267);
        v86 = 1;
        v87 = 2;
      }

      while ((v261 & 1) == 0);
      v112 = (v307 == 1) & v314;
      v314 = 0;
    }

    while ((v112 & 1) != 0);
    v81 = v256 + 16;
  }

  while (v256 != 96);
  v113 = 9;
  v114 = v231;
  do
  {
    v115 = 0;
    v253 = v113;
    v116 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v113];
    v117 = *(v116 + 2);
    v308 = v116;
    v118 = *(v116 + 12);
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    if (v118)
    {
      v120 = 2;
    }

    else
    {
      v120 = 0;
    }

    v285 = v120;
    v280 = v119 + 1;
    v291 = v119;
    v274 = v119 + 2;
    v262 = (v118 & 1 | (v117 == 5)) == 0;
    v268 = v118 | (v117 == 5);
    do
    {
      v257 = v115;
      v121 = (&AGCLLVMUserObject::air_image_dims + v115);
      v315 = *(&AGCLLVMUserObject::air_image_dims + v115 + 8);
      if ((v315 - 1) <= 1)
      {
        v122 = 0;
        v123 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
        do
        {
          v124 = *(v123 + 4);
          if (v124 != 6 && (v117 != 5 || *(v123 + 20) == 1) && ((v122 & 0xFFFFFFFE) != 2 || v117 == 12))
          {
            v125 = *v308;
            if (*v308)
            {
              v126 = strlen(*v308);
              *&v339 = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v125, &v125[v126]);
            }

            else
            {
              *&v339 = 0;
            }

            if (*v121)
            {
              v127 = strlen(*v121);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, *v121, &(*v121)[v127]);
            }

            else if (*(&v339 + 1) < v339)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            v128 = v123[v117 == 5];
            if (v128)
            {
              v129 = strlen(v123[v117 == 5]);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v128, &v128[v129]);
              v130 = v339;
            }

            else
            {
              v130 = v339;
              if (*(&v339 + 1) < v339)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }
            }

            v131 = v280;
            v132 = v274;
            if (!*(v121 + 12))
            {
              v132 = v280;
              v131 = 0;
            }

            v334 = v131;
            v133 = v132 + (v117 == 5);
            if (v117 != 5)
            {
              v132 = 0;
            }

            v329 = v132;
            v134 = v133 + 2;
            if (v315 == 2)
            {
              v135 = 0;
            }

            else
            {
              v135 = v133 + 1;
            }

            if (v315 == 2)
            {
              v136 = 0;
            }

            else
            {
              v136 = v133;
            }

            if (v315 == 2)
            {
              v134 = v133;
            }

            v137 = v134 + v262;
            if (v268)
            {
              v134 = 0;
            }

            v322 = v134;
            v138 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v130);
            *(v138 + 8) = v117;
            *(v138 + 12) = v315;
            *(v138 + 16) = 0;
            *(v138 + 20) = v124;
            *(v138 + 24) = 1;
            *(v138 + 36) = 0;
            *(v138 + 28) = 0;
            *(v138 + 37) = v137 + 1;
            *(v138 + 38) = 256;
            *(v138 + 40) = 0;
            *(v138 + 41) = v285;
            *(v138 + 42) = v291;
            *(v138 + 43) = v136;
            *(v138 + 44) = v135;
            *(v138 + 47) = 0;
            *(v138 + 45) = 0;
            *(v138 + 48) = v334;
            *(v138 + 49) = v329;
            *(v138 + 50) = 0;
            *(v138 + 52) = 0;
            *(v138 + 53) = v322;
            *(v138 + 55) = v137;
            *(v138 + 56) = 0;
            *(v138 + 60) = 0;
            *(v138 + 61) = 0;
            v114 = v231;
          }

          ++v122;
          v123 += 3;
        }

        while (v122 != 9);
      }

      v115 = v257 + 16;
    }

    while (v257 != 96);
    v113 = v253 + 1;
  }

  while (v253 != 12);
  v139 = 0;
  do
  {
    v140 = 0;
    v258 = v139;
    v323 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v113];
    v141 = *(v323 + 2);
    v316 = v114 & (v141 == 2);
    if (v316)
    {
      v142 = 2;
    }

    else
    {
      v142 = 1;
    }

    v143 = v142 + 2;
    if (v141 != 3)
    {
      v143 = v142 + 1;
    }

    v309 = v142;
    if (v141 == 3)
    {
      v144 = v142 + 1;
    }

    else
    {
      v144 = 0;
    }

    v297 = v144;
    __sc = v143;
    v292 = v143 + 1;
    v145 = 1;
    v146 = &unk_20E75F419;
    v330 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes;
    do
    {
      v269 = v145;
      v147 = 0;
      v263 = v140;
      v148 = ".v4f32";
      v335 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
      do
      {
        v275 = v147;
        if ((v147 & 0xFFFFFFFE) != 2 || v141 == 12)
        {
          v150 = 0;
          v151 = 1;
          v152 = 1;
          v153 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
          do
          {
            v286 = v151;
            v281 = v150;
            v154 = &off_277E21138;
            v155 = 3;
            v156 = &unk_20E75F419;
            do
            {
              if (*(v154 - 4) != 1 || v141 == 3)
              {
                v158 = *v323;
                if (*v323)
                {
                  v159 = strlen(*v323);
                  *&v339 = 0;
                  llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v158, &v158[v159]);
                }

                else
                {
                  *&v339 = 0;
                }

                v160 = strlen(v146);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v146, &v146[v160]);
                v161 = strlen(v156);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v156, &v156[v161]);
                v162 = *(v153 + 1);
                if (v162)
                {
                  v163 = strlen(*(v153 + 1));
                  llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v162, &v162[v163]);
                }

                else if (*(&v339 + 1) < v339)
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }

                v164 = strlen(v148);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v148, &v148[v164]);
                v165 = *(v154 - 2);
                v166 = *(v335 + 4);
                v167 = *(v330 + 2);
                v168 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v339);
                *(v168 + 8) = v141;
                *(v168 + 12) = 1;
                *(v168 + 16) = v152;
                *(v168 + 20) = v166;
                *(v168 + 24) = v167;
                *(v168 + 28) = 0;
                *(v168 + 32) = v165;
                *(v168 + 36) = 0;
                *(v168 + 37) = v292;
                *(v168 + 38) = 0;
                *(v168 + 39) = v316;
                *(v168 + 40) = 0;
                *(v168 + 42) = v309;
                *(v168 + 43) = 0;
                *(v168 + 51) = v297;
                *(v168 + 54) = 0;
                *(v168 + 52) = 0;
                *(v168 + 55) = __sc;
                *(v168 + 56) = 0;
                *(v168 + 60) = 1;
                *(v168 + 62) = 1;
              }

              v169 = *v154;
              v154 += 2;
              v156 = v169;
              --v155;
            }

            while (v155);
            v153 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v286;
            v152 = *v153;
            v150 = 1;
            v151 = 2;
          }

          while ((v281 & 1) == 0);
        }

        v147 = v275 + 1;
        v335 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v275 + 3];
        v148 = *v335;
      }

      while (v275 != 8);
      v330 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes + 2 * v269;
      v146 = *v330;
      v140 = 1;
      v145 = 2;
    }

    while ((v263 & 1) == 0);
    v139 = 1;
    v113 = 14;
    v114 = v231;
  }

  while ((v258 & 1) == 0);
  v170 = 0;
  v171 = ".v4f32";
  v172 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
  do
  {
    v310 = v170;
    v173 = 0;
    v174 = 1;
    v175 = 1;
    v176 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
    do
    {
      v324 = v174;
      v317 = v173;
      v177 = 0x10u;
      v178 = &unk_20E75F419;
      do
      {
        *&v339 = 0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, "air.block_read_texture_buffer_1d", "");
        v179 = strlen(v178);
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v178, &v178[v179]);
        v180 = *(v176 + 1);
        if (v180)
        {
          v181 = strlen(*(v176 + 1));
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v180, &v180[v181]);
        }

        else if (*(&v339 + 1) < v339)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v182 = strlen(v171);
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v171, &v171[v182]);
        v183 = *(v172 + 4);
        v184 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v339);
        *(v184 + 8) = 12;
        *(v184 + 16) = v175;
        *(v184 + 20) = v183;
        *(v184 + 24) = 1;
        *(v184 + 28) = 0;
        *(v184 + 36) = 16779009;
        *(v184 + 40) = 0;
        *(v184 + 42) = 2;
        *(v184 + 51) = 0;
        *(v184 + 43) = 0;
        *(v184 + 55) = 100992003;
        *(v184 + 59) = 256;
        v178 = *(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::rounding_modes + v177);
        v177 += 16;
      }

      while (v177 != 64);
      v176 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v324;
      v175 = *v176;
      v173 = 1;
      v174 = 2;
    }

    while ((v317 & 1) == 0);
    v170 = v310 + 1;
    v172 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v310 + 3];
    v171 = *v172;
  }

  while (v310 != 8);
  v185 = 16;
  do
  {
    v336 = v185;
    v186 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v185];
    v187 = *(v186 + 12);
    v188 = &byte_277E21294;
    v189 = 112;
    do
    {
      v190 = *(v188 - 1);
      if (v190 == 3)
      {
        v191 = v187;
      }

      else
      {
        v191 = 0;
      }

      if (v190 && (v191 & 1) == 0)
      {
        v192 = *v186;
        if (*v186)
        {
          v193 = strlen(*v186);
          *&v339 = 0;
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v192, &v192[v193]);
        }

        else
        {
          *&v339 = 0;
        }

        v194 = *(v188 - 12);
        if (v194)
        {
          v195 = strlen(*(v188 - 12));
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v194, &v194[v195]);
          v196 = v339;
          v197 = v304;
        }

        else
        {
          v196 = v339;
          if (*(&v339 + 1) < v339)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v197 = v304;
        }

        v198 = *(v186 + 2);
        v199 = *v188;
        v200 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v197, v338, v196);
        *(v200 + 8) = v198;
        *(v200 + 12) = v190;
        *(v200 + 16) = 0;
        *(v200 + 24) = 1;
        *(v200 + 36) = 0;
        *(v200 + 28) = 0;
        *(v200 + 37) = 4;
        *(v200 + 39) = 1;
        *(v200 + 40) = 0;
        *(v200 + 42) = 2;
        *(v200 + 47) = 0;
        *(v200 + 43) = 0;
        *(v200 + 48) = v199;
        *(v200 + 53) = 0;
        *(v200 + 49) = 0;
        *(v200 + 55) = 3;
        *(v200 + 56) = 0;
        *(v200 + 60) = 0;
        *(v200 + 61) = 0;
      }

      v188 += 16;
      v189 -= 16;
    }

    while (v189);
    v185 = v336 + 1;
  }

  while (v336 != 19);
  v201 = 1;
  do
  {
    v202 = 0;
    v264 = v201;
    v9 = (v201 & 1) == 0;
    v203 = &packed_pixel_data_types;
    if (!v9)
    {
      v203 = &pixel_data_types;
    }

    v293 = v203;
    v276 = *v203;
    do
    {
      v204 = 0;
      v270 = v202;
      v205 = (&AGCLLVMUserObject::air_image_dims + v202);
      v206 = 1;
      __sd = ".i16";
      v311 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
      do
      {
        v287 = v206;
        v282 = v204;
        if (v276)
        {
          v207 = 0;
          v318 = v276;
          v325 = v293;
          do
          {
            v298 = v207;
            v208 = &off_277E21138;
            v209 = 3;
            v210 = &unk_20E75F419;
            do
            {
              *&v339 = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, "air.write_imageblock_slice_to_texture_", "");
              if (*v205)
              {
                v211 = strlen(*v205);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, *v205, &(*v205)[v211]);
              }

              else if (*(&v339 + 1) < v339)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v212 = strlen(v210);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v210, &v210[v212]);
              if (*(v311 + 2) == 4)
              {
                v213 = strlen(__sd);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, __sd, &__sd[v213]);
              }

              v214 = strlen(v318);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v338, v318, &v318[v214]);
              v215 = *(v205 + 2);
              if (v215 == 2)
              {
                v216 = 7;
              }

              else
              {
                v216 = 6;
              }

              if (v215 == 2)
              {
                v217 = 6;
              }

              else
              {
                v217 = 0;
              }

              v337 = v217;
              v218 = v216 + *(v205 + 12);
              v219 = v205;
              if (*(v205 + 12))
              {
                v220 = v216;
              }

              else
              {
                v220 = 0;
              }

              v221 = *(v325 + 2);
              v222 = *(v208 - 2);
              v223 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v304, v338, v339);
              *(v223 + 8) = 8;
              *(v223 + 12) = v215;
              *(v223 + 16) = 0xA00000001;
              *(v223 + 24) = 1;
              *(v223 + 28) = v221;
              *(v223 + 32) = v222;
              *(v223 + 37) = v218 + 3;
              *(v223 + 38) = 0x10000;
              *(v223 + 42) = 5;
              *(v223 + 43) = 0;
              *(v223 + 47) = v218;
              *(v223 + 48) = v220;
              v205 = v219;
              *(v223 + 51) = 0;
              *(v223 + 49) = 0;
              *(v223 + 52) = v337;
              *(v223 + 53) = 0;
              *(v223 + 55) = v218 + 2;
              *(v223 + 56) = 0;
              *(v223 + 60) = 0;
              *(v223 + 61) = v218 + 1;
              *(v223 + 62) = 0;
              v224 = *v208;
              v208 += 2;
              v210 = v224;
              *(v223 + 36) = 0;
              --v209;
            }

            while (v209);
            v207 = v298 + 1;
            v325 = &v293[2 * (v298 + 1)];
            v318 = *v325;
          }

          while (*v325);
        }

        v311 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types)[2 * v287];
        __sd = *v311;
        v204 = 1;
        v206 = 2;
      }

      while ((v282 & 1) == 0);
      v202 = v270 + 16;
    }

    while (v270 != 96);
    v201 = 0;
  }

  while ((v264 & 1) != 0);
  if (v338 != v340)
  {
    free(v338);
  }

LABEL_327:
  v225 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 65, 8);
  v11 = v10;
  v12 = v10 + 64;
  if (a3)
  {
    memcpy((v10 + 64), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t AGCCodeGenServiceCreateInternal(uint64_t a1)
{
  v2 = LLVMAGXRuntimeMajorVersion();
  if (v2 == 1)
  {
    AGCEnv::load(v2);
    v5 = *(a1 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 8);
    }

    if (v5)
    {
      AGCEnv::deserialize(a1);
    }

    {
      if (Value)
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }
    }

    if (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("USE_MONOLITHIC_COMPILER", v4)) == 0 || *Value == 48 || (Value = atoi(Value), !Value))
    {
      {
        if (Value)
        {
          AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        }
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1)
      {
        Value = AGCEnv::getValue("MTL_MONOLITHIC_COMPILER", v4);
      }
    }

    AGCLLVMCtx::initialize(Value);
    operator new();
  }

  return 0;
}

uint64_t MTLCompilerCreate(unsigned int *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1 + 3;
  std::string::basic_string[abi:nn200100](&__dst, a1 + 3, v5);
  std::string::basic_string[abi:nn200100](&__p, v7 + v5, v6);
  v8 = (v5 + v6 + 12);
  memset(&v11, 0, sizeof(v11));
  if (a2 > v8)
  {
    std::string::append(&v11, a1 + v8, a2 - v8);
  }

  Internal = AGCCodeGenServiceCreateInternal(&v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(__dst);
  }

  return Internal;
}

void AGCEnv::load(AGCEnv *this)
{
  v53[20] = *MEMORY[0x277D85DE8];
  {
    if (this)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
    goto LABEL_53;
  }

  OSLog = AGCEnv::getOSLog(this);
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v51) = 136315138;
    *(&v51 + 4) = "load";
    _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s(){\n", &v51, 0xCu);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "/System/Library/PrivateFrameworks/AGXCompilerCore.framework/EnvVars.txt");
  v53[6] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  v53[0] = MEMORY[0x277D82858] + 64;
  v4 = MEMORY[0x277D82808];
  v5 = *(MEMORY[0x277D82808] + 16);
  *&v51 = *(MEMORY[0x277D82808] + 8);
  *&v52[*(v51 - 24) - 16] = v5;
  *(&v51 + 1) = 0;
  v6 = &v52[*(v51 - 24) - 16];
  std::ios_base::init(v6, v52);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *&v51 = v2;
  v53[0] = v3;
  MEMORY[0x20F331B50](v52);
  v7 = std::filebuf::open();
  if (!v7)
  {
    std::ios_base::clear(&v52[*(v51 - 24) - 16], *&v52[*(v51 - 24) + 16] | 4);
  }

  v8 = *&v52[*(v51 - 24) + 16] & 5;
  v9 = AGCEnv::getOSLog(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20E4E1000, v9, OS_LOG_TYPE_DEBUG, "}\n", buf, 2u);
    }

    goto LABEL_51;
  }

  if (v10)
  {
    v38 = __p;
    if (v43 < 0)
    {
      v38 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v38;
    _os_log_debug_impl(&dword_20E4E1000, v9, OS_LOG_TYPE_DEBUG, "Reading environment variables from '%s'", buf, 0xCu);
  }

  AGCEnv::getEnvLookup(v10);
  memset(&__str, 0, sizeof(__str));
  v11 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc(&v52[*(v51 - 24) - 16]);
    v12 = std::locale::use_facet(buf, v11);
    v13 = (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(buf);
    v14 = std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v51, &__str, v13);
    if ((v52[*(v51 - 24) + 16] & 5) != 0)
    {
      break;
    }

    v15 = std::string::find(&__str, 61, 0);
    if (v15 == -1)
    {
      v22 = AGCEnv::getOSLog(0xFFFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_20E4E1000, v22, OS_LOG_TYPE_DEBUG, "Skipped line with no '=' character in EnvVars.txt", buf, 2u);
      }
    }

    else
    {
      v16 = v15;
      std::string::basic_string(&v40, &__str, 0, v15, buf);
      std::string::basic_string(&v39, &__str, v16 + 1, 0xFFFFFFFFFFFFFFFFLL, buf);
      AGCEnv::trim(&v40);
      v17 = AGCEnv::trim(&v39);
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v19 = 0;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v40;
        }

        else
        {
          v20 = v40.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v21 = strcmp(AGCEnv::getStatusVariables(unsigned long *)::status_vars[v19], v20);
          if (!v21)
          {
            break;
          }

          if (++v19 == 46)
          {
            v27 = AGCEnv::getOSLog(v21);
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_43;
            }

            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = &v40;
            }

            else
            {
              v28 = v40.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = v28;
            v24 = v27;
            v25 = "Read unknown variable from EnvVars.txt: %s";
            v26 = 12;
            goto LABEL_42;
          }
        }

        *buf = &v40;
        v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v40.__r_.__value_.__l.__data_);
        v30 = std::string::operator=((v29 + 56), &v39);
        v31 = AGCEnv::getOSLog(v30);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v40;
        }

        else
        {
          v33 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v40.__r_.__value_.__l.__size_;
        }

        v34 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        v35 = &v39;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v39.__r_.__value_.__l.__size_;
          v35 = v39.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v33;
        v45 = 2048;
        v46 = v32;
        v47 = 2080;
        v48 = v35;
        v49 = 2048;
        v50 = v34;
        v24 = v31;
        v25 = "%s[%zu] = %s[%zu]\n";
        v26 = 42;
      }

      else
      {
        v23 = AGCEnv::getOSLog(v17);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v24 = v23;
        v25 = "Skipped line with empty variable name in EnvVars.txt";
        v26 = 2;
      }

LABEL_42:
      _os_log_debug_impl(&dword_20E4E1000, v24, OS_LOG_TYPE_DEBUG, v25, buf, v26);
LABEL_43:
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }
  }

  v36 = AGCEnv::getOSLog(v14);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20E4E1000, v36, OS_LOG_TYPE_DEBUG, "}\n", buf, 2u);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_51:
  *&v51 = *v4;
  *&v52[*(v51 - 24) - 16] = v4[3];
  MEMORY[0x20F331B60](v52);
  std::istream::~istream();
  MEMORY[0x20F331D40](v53);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_53:
  v37 = *MEMORY[0x277D85DE8];
}

void std::vector<std::unique_ptr<llvm::AGX::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

void AGCLLVMCtx::AGCLLVMCtx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a2;
  *(a1 + 40) = a5;
  llvm::AGX::AGXCompiler::AGXCompiler();
  *(a1 + 160) = xmmword_20E70C6B0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 176;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = a1 + 352;
  *(a1 + 344) = 0x400000000;
  *(a1 + 480) = a1 + 496;
  *(a1 + 488) = 0x400000000;
  *(a1 + 624) = a1 + 640;
  *(a1 + 632) = 0x400000000;
  *(a1 + 768) = a1 + 784;
  *(a1 + 776) = 0x400000000;
  *(a1 + 912) = a1 + 928;
  *(a1 + 920) = 0x400000000;
  *(a1 + 1056) = a1 + 1072;
  *(a1 + 1064) = 0x400000000;
  *(a1 + 1200) = a1 + 1216;
  *(a1 + 1208) = 0x400000000;
  *(a1 + 1344) = a1 + 1360;
  *(a1 + 1352) = 0x400000000;
  *(a1 + 1488) = a1 + 1504;
  *(a1 + 1496) = 0x400000000;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0x2000000000;
  llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::AnalysisManager();
}

void AGCPrinterFactory::Get(AGCPrinterFactory *this)
{
  {
    if (v1)
    {
      AGCPrinterFactory::AGCPrinterFactory(v1, v2);
    }
  }
}

void AGCPrinterFactory::AGCPrinterFactory(AGCPrinterFactory *this, const char *a2)
{
  AGCPrinterFactory::Get(void)::instance = 0;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
LABEL_5:
    LODWORD(Value) = 0;
    goto LABEL_6;
  }

  Value = AGCEnv::getValue("AGC_STATUS_FILE_MAX_SIZE_IN_BYTES", a2);
  if (Value)
  {
    if (*Value != 48)
    {
      LODWORD(Value) = atoi(Value);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  dword_27C8D81BC = Value;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v4 = AGCEnv::isEnabled(void)::is_internal == 1 && (v3 = AGCEnv::getValue("AGC_ENABLE_STATUS_FILE", a2)) != 0 && *v3 != 48 && atoi(v3) != 0;
  byte_27C8D81C0 = v4;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v6 = AGCEnv::isEnabled(void)::is_internal == 1 && (v5 = AGCEnv::getValue("AGC_ENABLE_STATUS_FILE_STDERR", a2)) != 0 && *v5 != 48 && atoi(v5) != 0;
  byte_27C8D81C1 = v6;
}

void GetAGCPrinterFactoryMutex(void)
{
  {
    __cxa_atexit(MEMORY[0x277D82690], &GetAGCPrinterFactoryMutex(void)::m, &dword_20E4E1000);
  }
}

void GetTargetPrinterCache(void)
{
  {
    GetTargetPrinterCache(void)::cache = 0u;
    *&qword_27C8D82A0 = 0u;
    dword_27C8D82B0 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,std::shared_ptr<AGCTargetPrinter>>::~unordered_map[abi:nn200100], &GetTargetPrinterCache(void)::cache, &dword_20E4E1000);
  }
}

uint64_t AGCTargetPrinter::AGCTargetPrinter(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &AGCPrinterFactory::Get(void)::instance;
  AGCTargetPrinter::printMessage(a1, "Running LLVM version %d (and AGC version %d.%d.%d).", 32023, 2, 0, 1);
  std::string::basic_string[abi:nn200100]<0>(&v10, "Active environment variable values:\n");
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    for (i = 0; i != 46; ++i)
    {
      v5 = AGCEnv::getStatusVariables(unsigned long *)::status_vars[i];
      Value = AGCEnv::getValue(v5, v3);
      if (Value)
      {
        v7 = Value;
        std::string::append(&v10, v5);
        std::string::append(&v10, "=");
        std::string::append(&v10, v7);
        std::string::append(&v10, "\n");
      }
    }
  }

  v8 = &v10;
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v10.__r_.__value_.__r.__words[0];
  }

  AGCTargetPrinter::printMessage(a1, "%s", v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return a1;
}

void AGCTargetPrinter::printMessage(AGCTargetPrinter *this, const char *a2, ...)
{
  va_start(va, a2);
  if (AGCTargetPrinter::isValidToPrintMessage(this))
  {
    __s = 0;
    vasprintf(&__s, a2, va);
    v4 = strlen(__s);
    v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, __s, v4);
    v8 = 10;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v8, 1);
    v6 = *this;
    std::ostream::flush();
    free(__s);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::$_0 &&>>()
{
  v140[8] = *MEMORY[0x277D85DE8];
  AGCLLVMUserObject::initializeSampleFunctionMap(0);
  AGCLLVMUserObject::initializeSampleFunctionMap(1);
  AGCLLVMUserObject::getDimensionFunctionMap(v0);
  v1 = 0;
  v138 = v140;
  v139 = xmmword_20E70C500;
  do
  {
    v2 = 0;
    v127 = v1;
    v3 = &(&AGCLLVMUserObject::initializeDimensionFunctionMap(void)::dim_funcs)[2 * v1];
    v4 = *(v3 + 2);
    do
    {
      v5 = &(&AGCLLVMUserObject::air_image_dims)[v2];
      if (v4 != 3)
      {
        if (v4 == 2 && *(v5 + 2) != 3)
        {
          goto LABEL_32;
        }

LABEL_8:
        v6 = *(v5 + 2);
        v7 = 1;
        while (1)
        {
          if (v7)
          {
            v8 = 5;
          }

          else
          {
            v8 = 4;
          }

          if (v4 == v8)
          {
            goto LABEL_27;
          }

          v9 = *v3;
          if (*v3)
          {
            v10 = strlen(*v3);
            *&v139 = 0;
            llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v9, &v9[v10]);
            if ((v7 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            *&v139 = 0;
            if ((v7 & 1) == 0)
            {
LABEL_18:
              if (*(v5 + 12))
              {
                v12 = "2d_ms_array";
              }

              else
              {
                v12 = "2d_ms";
              }

              if (*(v5 + 12))
              {
                v13 = 11;
              }

              else
              {
                v13 = 5;
              }

              v11 = &v12[v13];
              goto LABEL_25;
            }
          }

          if (!*v5)
          {
            if (*(&v139 + 1) < v139)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            goto LABEL_26;
          }

          v11 = &(*v5)[strlen(*v5)];
          v12 = *v5;
LABEL_25:
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v12, v11);
LABEL_26:
          v14 = *llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::try_emplace<>(v138, v139);
          *(v14 + 12) = v4;
          *(v14 + 16) = 0;
LABEL_27:
          v15 = (v6 == 1) & v7;
          v7 = 0;
          if ((v15 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      if (*(v5 + 12) == 1)
      {
        goto LABEL_8;
      }

LABEL_32:
      v2 += 2;
    }

    while (v2 != 14);
    v1 = v127 + 1;
  }

  while (v127 != 10);
  *&v139 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.get_width_texture_buffer_1d", "");
  v16 = *llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::try_emplace<>(v138, v139);
  *(v16 + 12) = 0;
  *(v16 + 16) = 1;
  v17 = v138;
  if (v138 != v140)
  {
    free(v138);
  }

  v138 = v140;
  v139 = xmmword_20E70C500;
  AGCLLVMUserObject::getTextureFenceFunctionSet(v17);
  for (i = 0; i != 14; i += 2)
  {
    v19 = &(&AGCLLVMUserObject::air_image_dims)[i];
    v20 = (&AGCLLVMUserObject::air_image_dims)[i + 1];
    v21 = 1;
    do
    {
      *&v139 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.fence_texture_", "");
      if ((v21 & 1) == 0)
      {
        if (*(v19 + 12))
        {
          v23 = "2d_ms_array";
        }

        else
        {
          v23 = "2d_ms";
        }

        if (*(v19 + 12))
        {
          v24 = 11;
        }

        else
        {
          v24 = 5;
        }

        v22 = &v23[v24];
        goto LABEL_48;
      }

      if (*v19)
      {
        v22 = &(*v19)[strlen(*v19)];
        v23 = *v19;
LABEL_48:
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v23, v22);
        goto LABEL_49;
      }

      if (*(&v139 + 1) < v139)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

LABEL_49:
      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set, v138, v139);
      v25 = (v20 == 1) & v21;
      v21 = 0;
    }

    while ((v25 & 1) != 0);
  }

  *&v139 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.fence_texture_", "");
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "buffer_1d", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set, v138, v139);
  v26 = v138;
  if (v138 != v140)
  {
    free(v138);
  }

  v138 = v140;
  v139 = xmmword_20E70C500;
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v26);
  for (j = 0; j != 16; ++j)
  {
    *&v139 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.is_null_", "");
    v28 = strlen(air_texture_types[j]);
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, air_texture_types[j], &air_texture_types[j][v28]);
    v29 = llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getIsNullTextureFunctionSet(void)::is_null_texture_function_set, v138, v139);
  }

  AGCLLVMUserObject::getGetNullTextureFunctionSet(v29);
  for (k = 0; k != 16; ++k)
  {
    *&v139 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.get_null_", "");
    v31 = strlen(air_texture_types[k]);
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, air_texture_types[k], &air_texture_types[k][v31]);
    llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getGetNullTextureFunctionSet(void)::get_null_texture_function_set, v138, v139);
  }

  v32 = v138;
  if (v138 != v140)
  {
    free(v138);
  }

  v138 = v140;
  v139 = xmmword_20E70C500;
  AGCLLVMUserObject::getUniqueIDFunctionSet(v32);
  *&v139 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.get_unique_identifier.p1", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v138, v139);
  *&v139 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.get_unique_identifier.p2", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v138, v139);
  for (m = 0; m != 16; ++m)
  {
    *&v139 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.get_unique_identifier_", "");
    v34 = strlen(air_texture_types[m]);
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, air_texture_types[m], &air_texture_types[m][v34]);
    llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v138, v139);
  }

  *&v139 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "air.get_unique_identifier_", "");
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, "sampler", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v138, v139);
  v35 = v138;
  if (v138 != v140)
  {
    free(v138);
  }

  v138 = v140;
  v139 = xmmword_20E70C500;
  AGCLLVMUserObject::getTextureAtomicFunctionSet(v35);
  v36 = 0;
  do
  {
    std::string::basic_string[abi:nn200100]<0>(&v134, "air.atomic_load_explicit_");
    __s = off_277E21710[v36];
    v37 = std::string::append(&v134, __s);
    __p = *v37;
    v37->__r_.__value_.__r.__words[0] = 0;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__r_.__value_.__l.__data_);
    }

    v126 = v36;
    for (n = 0; n != 4; ++n)
    {
      v39 = off_277E21698[n];
      v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v42 = strlen(off_277E21698[n]);
      std::string::basic_string[abi:nn200100](&v134, size + v42);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v134;
      }

      else
      {
        v43 = v134.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v43, p_p, size);
      }

      v45 = v43 + size;
      if (v42)
      {
        memmove(v45, v39, v42);
      }

      v45[v42] = 0;
      v46 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v134;
      }

      else
      {
        v47 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v134.__r_.__value_.__l.__size_;
      }

      *&v139 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v47, v47 + v46);
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v138, v139);
    }

    std::string::basic_string[abi:nn200100]<0>(&v134, "air.atomic_store_explicit_");
    v48 = std::string::append(&v134, __s);
    v49 = v48->__r_.__value_.__r.__words[0];
    v136.__r_.__value_.__r.__words[0] = v48->__r_.__value_.__l.__size_;
    *(v136.__r_.__value_.__r.__words + 7) = *(&v48->__r_.__value_.__r.__words[1] + 7);
    v50 = HIBYTE(v48->__r_.__value_.__r.__words[2]);
    v48->__r_.__value_.__r.__words[0] = 0;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v49;
    __p.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v136.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v50;
    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__r_.__value_.__l.__data_);
    }

    for (ii = 0; ii != 4; ++ii)
    {
      v52 = off_277E21698[ii];
      if ((v50 & 0x80u) == 0)
      {
        v53 = v50;
      }

      else
      {
        v53 = __p.__r_.__value_.__l.__size_;
      }

      v54 = strlen(off_277E21698[ii]);
      std::string::basic_string[abi:nn200100](&v134, v53 + v54);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &v134;
      }

      else
      {
        v55 = v134.__r_.__value_.__r.__words[0];
      }

      if (v53)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &__p;
        }

        else
        {
          v56 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v55, v56, v53);
      }

      v57 = v55 + v53;
      if (v54)
      {
        memmove(v57, v52, v54);
      }

      v57[v54] = 0;
      v58 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v134;
      }

      else
      {
        v59 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v58 = v134.__r_.__value_.__l.__size_;
      }

      *&v139 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v59, v59 + v58);
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v138, v139);
    }

    std::string::basic_string[abi:nn200100]<0>(&v134, "air.atomic_exchange_explicit_");
    v60 = std::string::append(&v134, __s);
    v61 = v60->__r_.__value_.__r.__words[0];
    v136.__r_.__value_.__r.__words[0] = v60->__r_.__value_.__l.__size_;
    *(v136.__r_.__value_.__r.__words + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
    v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
    v60->__r_.__value_.__r.__words[0] = 0;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v61;
    __p.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v136.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v62;
    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__r_.__value_.__l.__data_);
    }

    for (jj = 0; jj != 4; ++jj)
    {
      v64 = off_277E21698[jj];
      if ((v62 & 0x80u) == 0)
      {
        v65 = v62;
      }

      else
      {
        v65 = __p.__r_.__value_.__l.__size_;
      }

      v66 = strlen(off_277E21698[jj]);
      std::string::basic_string[abi:nn200100](&v134, v65 + v66);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v134;
      }

      else
      {
        v67 = v134.__r_.__value_.__r.__words[0];
      }

      if (v65)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &__p;
        }

        else
        {
          v68 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v67, v68, v65);
      }

      v69 = v67 + v65;
      if (v66)
      {
        memmove(v69, v64, v66);
      }

      v69[v66] = 0;
      v70 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v134;
      }

      else
      {
        v71 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v134.__r_.__value_.__l.__size_;
      }

      *&v139 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v71, v71 + v70);
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v138, v139);
    }

    std::string::basic_string[abi:nn200100]<0>(&v134, "air.atomic_compare_exchange_weak_explicit_");
    v72 = std::string::append(&v134, __s);
    v73 = v72->__r_.__value_.__r.__words[0];
    v136.__r_.__value_.__r.__words[0] = v72->__r_.__value_.__l.__size_;
    *(v136.__r_.__value_.__r.__words + 7) = *(&v72->__r_.__value_.__r.__words[1] + 7);
    v74 = HIBYTE(v72->__r_.__value_.__r.__words[2]);
    v72->__r_.__value_.__r.__words[0] = 0;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v73;
    __p.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v136.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v74;
    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__r_.__value_.__l.__data_);
    }

    for (kk = 0; kk != 4; ++kk)
    {
      v76 = off_277E21698[kk];
      if ((v74 & 0x80u) == 0)
      {
        v77 = v74;
      }

      else
      {
        v77 = __p.__r_.__value_.__l.__size_;
      }

      v78 = strlen(off_277E21698[kk]);
      std::string::basic_string[abi:nn200100](&v134, v77 + v78);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v134;
      }

      else
      {
        v79 = v134.__r_.__value_.__r.__words[0];
      }

      if (v77)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &__p;
        }

        else
        {
          v80 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v79, v80, v77);
      }

      v81 = v79 + v77;
      if (v78)
      {
        memmove(v81, v76, v78);
      }

      v81[v78] = 0;
      v82 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &v134;
      }

      else
      {
        v83 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v82 = v134.__r_.__value_.__l.__size_;
      }

      *&v139 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v83, v83 + v82);
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v138, v139);
    }

    for (mm = 0; mm != 7; ++mm)
    {
      std::string::basic_string[abi:nn200100]<0>(&v133, "air.atomic_");
      v85 = std::string::append(&v133, off_277E216C8[mm]);
      v86 = v85->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v85->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:nn200100]<0>(&v130, "_explicit_");
      if ((v132 & 0x80u) == 0)
      {
        v87 = &v130;
      }

      else
      {
        v87 = v130;
      }

      if ((v132 & 0x80u) == 0)
      {
        v88 = v132;
      }

      else
      {
        v88 = v131;
      }

      v89 = std::string::append(&v136, v87, v88);
      v90 = v89->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = *&v89->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      v91 = std::string::append(&v134, __s);
      v92 = v91->__r_.__value_.__r.__words[0];
      v137[0] = v91->__r_.__value_.__l.__size_;
      *(v137 + 7) = *(&v91->__r_.__value_.__r.__words[1] + 7);
      v93 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
      v91->__r_.__value_.__r.__words[0] = 0;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v92;
      __p.__r_.__value_.__l.__size_ = v137[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v137 + 7);
      *(&__p.__r_.__value_.__s + 23) = v93;
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if (v132 < 0)
      {
        operator delete(v130);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      for (nn = 0; nn != 4; ++nn)
      {
        v95 = off_277E21698[nn];
        if ((v93 & 0x80u) == 0)
        {
          v96 = v93;
        }

        else
        {
          v96 = __p.__r_.__value_.__l.__size_;
        }

        v97 = strlen(off_277E21698[nn]);
        std::string::basic_string[abi:nn200100](&v134, v96 + v97);
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v98 = &v134;
        }

        else
        {
          v98 = v134.__r_.__value_.__r.__words[0];
        }

        if (v96)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v99 = &__p;
          }

          else
          {
            v99 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v98, v99, v96);
        }

        v100 = v98 + v96;
        if (v97)
        {
          memmove(v100, v95, v97);
        }

        v100[v97] = 0;
        v101 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &v134;
        }

        else
        {
          v102 = v134.__r_.__value_.__r.__words[0];
        }

        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v101 = v134.__r_.__value_.__l.__size_;
        }

        *&v139 = 0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v102, v102 + v101);
        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v138, v139);
      }
    }

    v103 = 0;
    v104 = 1;
    do
    {
      v128 = v104;
      std::string::basic_string[abi:nn200100]<0>(&v133, "air.atomic_");
      v105 = std::string::append(&v133, off_277E21700[v103]);
      v106 = v105->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v105->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v106;
      v105->__r_.__value_.__l.__size_ = 0;
      v105->__r_.__value_.__r.__words[2] = 0;
      v105->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:nn200100]<0>(&v130, "_explicit_");
      if ((v132 & 0x80u) == 0)
      {
        v107 = &v130;
      }

      else
      {
        v107 = v130;
      }

      if ((v132 & 0x80u) == 0)
      {
        v108 = v132;
      }

      else
      {
        v108 = v131;
      }

      v109 = std::string::append(&v136, v107, v108);
      v110 = v109->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = *&v109->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      v111 = std::string::append(&v134, __s);
      v112 = v111->__r_.__value_.__r.__words[0];
      v137[0] = v111->__r_.__value_.__l.__size_;
      *(v137 + 7) = *(&v111->__r_.__value_.__r.__words[1] + 7);
      v113 = HIBYTE(v111->__r_.__value_.__r.__words[2]);
      v111->__r_.__value_.__r.__words[0] = 0;
      v111->__r_.__value_.__l.__size_ = 0;
      v111->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v112;
      __p.__r_.__value_.__l.__size_ = v137[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v137 + 7);
      *(&__p.__r_.__value_.__s + 23) = v113;
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if (v132 < 0)
      {
        operator delete(v130);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      v114 = 0;
      v115 = 1;
      do
      {
        v116 = v115;
        v117 = off_277E216B8[v114];
        if ((v113 & 0x80u) == 0)
        {
          v118 = v113;
        }

        else
        {
          v118 = __p.__r_.__value_.__l.__size_;
        }

        v119 = strlen(v117);
        std::string::basic_string[abi:nn200100](&v134, v118 + v119);
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = &v134;
        }

        else
        {
          v120 = v134.__r_.__value_.__r.__words[0];
        }

        if (v118)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v121 = &__p;
          }

          else
          {
            v121 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v120, v121, v118);
        }

        v122 = v120 + v118;
        if (v119)
        {
          memmove(v122, v117, v119);
        }

        v122[v119] = 0;
        v123 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v124 = &v134;
        }

        else
        {
          v124 = v134.__r_.__value_.__r.__words[0];
        }

        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v123 = v134.__r_.__value_.__l.__size_;
        }

        *&v139 = 0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v138, v124, v124 + v123);
        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v138, v139);
        v115 = 0;
        v114 = 1;
      }

      while ((v116 & 1) != 0);
      v104 = 0;
      v103 = 1;
    }

    while ((v128 & 1) != 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v36 = v126 + 1;
  }

  while (v126 != 7);
  if (v138 != v140)
  {
    free(v138);
  }

  v125 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117E5E0) = qword_28117E5E0 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 25, 8);
  v9 = v8;
  v10 = v8 + 24;
  if (a2)
  {
    memcpy((v8 + 24), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *i = v9;
  ++dword_28117E5DC;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  result = llvm::StringMapImpl::LookupBucketFor();
  v7 = *a1;
  v8 = *(*a1 + 8 * result);
  if (v8)
  {
    if (v8 != -8)
    {
      return result;
    }

    --*(a1 + 4);
  }

  v9 = result;
  v10 = MEMORY[0x20F330650](a3 + 9, 8);
  v11 = v10;
  v12 = v10 + 8;
  if (a3)
  {
    memcpy((v10 + 8), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v7 + 8 * v9) = v11;
  *v11 = a3;
  ++*(a1 + 3);

  return llvm::StringMapImpl::RehashTable(a1);
}