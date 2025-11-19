uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(uint64_t result)
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
      *(v4 - 1) = &unk_28257BDC8;
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

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 5) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 32;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 5);
  return result;
}

uint64_t llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_28257BDC8;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 56;
    *(v4 + 48) = 0x800000000;
    *(v4 + 120) = 0;
    *(v4 + 124) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

void std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
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

uint64_t AGCLLVMAGPVertexShaderRegular::LoadMap::addEntry(uint64_t a1, llvm::Value *a2, uint64_t a3)
{
  llvm::CallbackVH::CallbackVH(&v10, a2);
  v10 = &unk_28257BDA0;
  v13 = a1;
  v14 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v14);
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(a1, &v10, v14);
    llvm::ValueHandleBase::operator=((v6 + 8), v11);
    *(v6 + 32) = v13;
    *(v6 + 40) = v6 + 56;
    *(v6 + 48) = 0x800000000;
    *(v6 + 120) = 0;
    *(v6 + 124) = 0;
  }

  if (v12 != -8192 && v12 != -4096 && v12 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v11);
  }

  result = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v6 + 40, a3);
  *(v6 + 120) = *(a3 + 80);
  *(a1 + 64) &= *(a3 + 80);
  v9 = *(a3 + 84);
  *(a1 + 65) |= v9 == 2;
  *(a1 + 66) |= v9 == 3;
  return result;
}

BOOL isReinterpretedArray(llvm::Type *a1, llvm::Type *a2, llvm::DataLayout *this, int a4)
{
  if (!a4 || (*(a2 + 2) & 0xFE) == 0x12)
  {
    return 0;
  }

  llvm::DataLayout::getTypeSizeInBits(this, a2);
  if (llvm::TypeSize::operator unsigned long long() != 4)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  if ((v7 & 0xFE) != 0x10)
  {
    return 1;
  }

  if ((v7 & 0x11) != 0x10 || *(a1 + 3) != 1)
  {
    return 0;
  }

  result = 0;
  v8 = **(a1 + 2);
  if (v8 && *(v8 + 8) == 17)
  {
    if (*(v8 + 32) == 3)
    {
      v9 = (llvm::DataLayout::getTypeSizeInBits(this, **(v8 + 16)) + 7) >> 3;
      return llvm::TypeSize::operator unsigned long long() == 4;
    }

    return 0;
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(v8, v7);
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
    v15 = &unk_28257BDC8;
    v18 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v30, (LODWORD(v16[0]) >> 1) & 3, v16);
    v29 = &unk_28257BDC8;
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
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>>(v9, &v29, v19);
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

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(int32x2_t *a1, void *a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(a1, v6);
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

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_28257BDC8;
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

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
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
    v11 = &unk_28257BDC8;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderRegularPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderRegularPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderRegular>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 109;
  }

  v2 = &aStringrefLlvmG_25[v1];
  v3 = 109 - v1;
  if ((109 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 109 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::GlobalOptPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::GlobalOptPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::AlwaysInlinerPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::AlwaysInlinerPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void AGCLLVMAGPVertexShaderRegular::~AGCLLVMAGPVertexShaderRegular(AGCLLVMAGPVertexShaderRegular *this)
{
  *this = off_2825643F0;
  v2 = (this + 10456);
  *(this + 1307) = off_282564770;
  *(this + 1520) = &off_282564880;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255E220);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_2825643F0;
  v2 = (this + 10456);
  *(this + 1307) = off_282564770;
  *(this + 1520) = &off_282564880;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255E220);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMAGPVertexShaderPostTessellationHW::constructReply(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  v2 = AGCLLVMAGPVertexShaderPostTessellation::constructReply(this);
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

BOOL AGCLLVMAGPVertexShaderPostTessellation::constructReply(AGCLLVMAGPVertexShaderPostTessellation *this)
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
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 536, 4, *(this + 10420));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 536, 6, *(this + 10424));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 536, 8, *(this + 10428));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 536, 14, *(this + 10432));
    v9 = (*(*this + 656))(this);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v6 + 536, 16, v9, 0);
    LODWORD(v6) = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    v10 = this + *(*this - 24);
    v11 = *(v10 + 1080);
    v10[4358] = 1;
    v12 = *(v10 + 1082);
    v13 = v11 - *(v10 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v10 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v10 + 4288), v4);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((v10 + 4288), v5);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLPostTessellationInfo>((v10 + 4288), v6);
    v14 = *(*this - 24);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v10 + 4288), v13 + v12);
    flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4288), v15, v16);

    return AGCLLVMAGPVertexShader::validateReply(this);
  }

  return result;
}

void virtual thunk toAGCLLVMAGPVertexShaderPostTessellationHW::~AGCLLVMAGPVertexShaderPostTessellationHW(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255E2A0;
  v1[1357] = &unk_28255E648;
  v1[1570] = &unk_28255E758;
  v2 = v1[1355];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 1353));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(v1, off_28255E768);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1357));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255E2A0;
  v1[1357] = &unk_28255E648;
  v1[1570] = &unk_28255E758;
  v2 = v1[1355];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 1353));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(v1, off_28255E768);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1357));
}

void AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(AGCLLVMAGPVertexShaderPostTessellation *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[13];
  *(this + *(*this - 24) + 1704) = a2[14];
  v5 = *(this + 1352);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 10800));
  }

  v7 = (this + 10776);
  v8 = -360;
  do
  {
    v9 = *(v7 + 2);
    if (v9 != -8192 && v9 != -4096 && v9 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v7);
    }

    v7 = (v7 - 24);
    v8 += 24;
  }

  while (v8);
  v11 = a2[1];
  *this = v11;
  *(this + *(v11 - 24)) = a2[11];
  *(this + *(*this - 24) + 1704) = a2[12];
  v12 = *(this + 1295);
  if (v12 != this + 10376)
  {
    free(v12);
  }

  v13 = *(this + 1229);
  if (v13 != this + 9848)
  {
    free(v13);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792);

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, a2 + 2);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(AGCLLVMAGPVertexShaderPostTessellation *this)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (!v2)
  {
    goto LABEL_127;
  }

  v3 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v83, *v3);
  v90 = this;
  v83 = &unk_28257C0E8;
  v89[37] = v3;
  {
    AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(void)::tessellation_builtins = "air.get_num_patch_control_points";
    dword_27C8D7B90 = 1;
    qword_27C8D7B98 = AGCLLVMAGPVertexShaderPostTessellation::buildNumPatchControlPoints;
    dword_27C8D7BA0 = 0;
    dword_27C8D7BA8 = 2;
    word_27C8D7BAC = 0;
  }

  if (AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(void)::tessellation_builtins)
  {
    strlen(AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(void)::tessellation_builtins);
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v68 = v2;
    v69 = Function;
    if (dword_27C8D7BA8 == 12)
    {
      for (i = *(Function + 8); i; v86 = 0uLL)
      {
        v7 = *(i + 24);
        i = *(i + 8);
        llvm::IRBuilderBase::SetInsertPoint(v84, v7);
        v8 = v90 + *(*v90 - 24);
        v91[0] = v86;
        llvm::IRBuilderBase::getCurrentDebugLocation(&v91[1], v84);
        DWORD2(v91[1]) = v87;
        AGCLLVMBuilder::InsertPoint::restoreIP(v91, (v8 + 1712));
        if (*&v91[1])
        {
          llvm::MetadataTracking::untrack();
        }

        v9 = qword_27C8D7B98;
        v10 = (v90 + (dword_27C8D7BA0 >> 1));
        if (dword_27C8D7BA0)
        {
          v9 = *(*v10 + qword_27C8D7B98);
        }

        v9(v10, v7);
      }

      goto LABEL_124;
    }

    if (dword_27C8D7BA8 == 11)
    {
      if (qword_27C8D7B98)
      {
        v5 = strlen(qword_27C8D7B98);
        *&v91[0] = &v91[1] + 8;
        *(v91 + 8) = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v91, qword_27C8D7B98, (qword_27C8D7B98 + v5));
      }

      else
      {
        *&v91[1] = 64;
        *&v91[0] = &v91[1] + 8;
        *(&v91[0] + 1) = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v91, ".", "");
      if (*&v91[1] < *(&v91[0] + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v64 = *(v69 + 3);
      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (*&v91[0] != (&v91[1] + 8))
      {
        free(*&v91[0]);
      }

      goto LABEL_124;
    }

    v11 = **(*(Function + 24) + 16);
    v12 = ((*(v11 + 8) & 0xFE) == 18) & HIBYTE(word_27C8D7BAC);
    if (v12 == 1)
    {
      v13 = *(v11 + 32);
    }

    else
    {
      v13 = 1;
    }

    v71 = v13;
    v67 = v87;
    v14 = *(Function + 8);
    if (!v14)
    {
LABEL_118:
      v87 = v67;
LABEL_124:
      llvm::Function::eraseFromParent(v69);
      v2 = v68;
      goto LABEL_125;
    }

    v70 = **(*(Function + 24) + 16);
    while (1)
    {
      v15 = *(v14 + 24);
      v16 = *(v14 + 8);
      if (dword_27C8D7B90 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (dword_27C8D7B90 != 2)
        {
          goto LABEL_27;
        }

        v17 = 121;
      }

      v87 = v17;
LABEL_27:
      v72 = v16;
      llvm::IRBuilderBase::SetInsertPoint(v84, v15);
      v18 = llvm::UndefValue::get();
      if (v71)
      {
        for (j = 0; j != v71; ++j)
        {
          v73 = v18;
          v92 = 0;
          memset(v91, 0, sizeof(v91));
          v20 = llvm::CallBase::arg_end(v15) - v15 + 32 * (*(v15 + 5) & 0x7FFFFFF);
          if ((v20 & 0x1FFFFFFFE0) != 0)
          {
            v21 = (v20 >> 5);
            v22 = v91;
            v23 = v15;
            do
            {
              v24 = (v23 - 32 * (*(v15 + 5) & 0x7FFFFFF));
              v25 = *v24;
              *v22 = *v24;
              if (v12 && (*(*v25 + 8) & 0xFE) == 0x12)
              {
                v82 = 257;
                v26 = llvm::ConstantInt::get();
                *v22 = llvm::IRBuilderBase::CreateExtractElement(v84, v25, v26, &PrimitiveSizeInBits);
              }

              ++v22;
              v23 = (v23 + 32);
              --v21;
            }

            while (v21);
          }

          if (word_27C8D7BAC)
          {
            v27 = **&v91[0];
            if ((*(**&v91[0] + 8) & 0xFE) == 0x12)
            {
              v27 = **(v27 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v27);
            v81 = v28;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v29 = 0;
            }

            else
            {
              v30 = v89[4];
              if ((*(**&v91[0] + 8) & 0xFE) == 0x12)
              {
                v31 = *(**&v91[0] + 32);
                v30 = llvm::FixedVectorType::get();
              }

              if ((v20 & 0x1FFFFFFFE0) != 0)
              {
                v32 = (v20 >> 5);
                v33 = v91;
                do
                {
                  v34 = *v33;
                  v82 = 257;
                  *v33++ = llvm::IRBuilderBase::CreateFPExt(v84, v34, v30, &PrimitiveSizeInBits);
                  --v32;
                }

                while (v32);
              }

              v29 = 1;
            }
          }

          else
          {
            v29 = 0;
          }

          if (llvm::FPMathOperator::classof(v15))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v15);
          }

          else
          {
            FastMathFlags = 0;
          }

          v36 = v90 + *(*v90 - 24);
          v77 = v86;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v78, v84);
          v79 = v87;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v77, (v36 + 1712));
          if (v78)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          if (dword_27C8D7BA8 > 5)
          {
            if (dword_27C8D7BA8 <= 7)
            {
              if (dword_27C8D7BA8 == 6)
              {
                v54 = qword_27C8D7B98;
                v55 = (v90 + (dword_27C8D7BA0 >> 1));
                if (dword_27C8D7BA0)
                {
                  v54 = *(*v55 + qword_27C8D7B98);
                }

                v60 = v54(v55, *&v91[0], *(&v91[0] + 1), FastMathFlags);
                goto LABEL_95;
              }

              if (dword_27C8D7BA8 == 7)
              {
                v47 = qword_27C8D7B98;
                v49 = *(&v91[0] + 1);
                v48 = *&v91[0];
                v50 = *&v91[1];
                v51 = (v90 + (dword_27C8D7BA0 >> 1));
                if ((dword_27C8D7BA0 & 1) == 0)
                {
                  goto LABEL_103;
                }

                v56 = (*(*v51 + qword_27C8D7B98))(v51, *&v91[0], *(&v91[0] + 1), *&v91[1]);
LABEL_104:
                FPTrunc = v56;
              }
            }

            else
            {
              switch(dword_27C8D7BA8)
              {
                case 8:
                  v57 = qword_27C8D7B98;
                  v58 = (v90 + (dword_27C8D7BA0 >> 1));
                  if (dword_27C8D7BA0)
                  {
                    v57 = *(*v58 + qword_27C8D7B98);
                  }

                  v60 = v57(v58, *&v91[0], *(&v91[0] + 1), *&v91[1], FastMathFlags);
LABEL_95:
                  FPTrunc = v60;
                  break;
                case 9:
                  v47 = qword_27C8D7B98;
                  v51 = (v90 + (dword_27C8D7BA0 >> 1));
                  if (dword_27C8D7BA0)
                  {
                    v47 = *(*v51 + qword_27C8D7B98);
                  }

                  v48 = v91;
                  v49 = &unk_20E75F419;
                  v50 = 0;
LABEL_103:
                  v56 = v47(v51, v48, v49, v50);
                  goto LABEL_104;
                case 10:
                  v42 = qword_27C8D7B98;
                  v43 = (v90 + (dword_27C8D7BA0 >> 1));
                  if (dword_27C8D7BA0)
                  {
                    v42 = *(*v43 + qword_27C8D7B98);
                  }

                  v56 = v42(v43, *v15, v91, &unk_20E75F419, 0);
                  goto LABEL_104;
              }
            }
          }

          else if (dword_27C8D7BA8 <= 2)
          {
            if (dword_27C8D7BA8 == 1)
            {
              v52 = qword_27C8D7B98;
              v53 = (v90 + (dword_27C8D7BA0 >> 1));
              if (dword_27C8D7BA0)
              {
                v52 = *(*v53 + qword_27C8D7B98);
              }

              v56 = v52(v53);
              goto LABEL_104;
            }

            if (dword_27C8D7BA8 == 2)
            {
              v44 = qword_27C8D7B98;
              v45 = *v15;
              v46 = (v90 + (dword_27C8D7BA0 >> 1));
              if ((dword_27C8D7BA0 & 1) == 0)
              {
LABEL_79:
                v56 = v44(v46, v45);
                goto LABEL_104;
              }

LABEL_78:
              v44 = *(*v46 + v44);
              goto LABEL_79;
            }
          }

          else
          {
            switch(dword_27C8D7BA8)
            {
              case 3:
                v44 = qword_27C8D7B98;
                v45 = *&v91[0];
                v46 = (v90 + (dword_27C8D7BA0 >> 1));
                if ((dword_27C8D7BA0 & 1) == 0)
                {
                  goto LABEL_79;
                }

                goto LABEL_78;
              case 4:
                v59 = (*&v91[0] + 24);
                if (*(*&v91[0] + 32) >= 0x41u)
                {
                  v59 = *v59;
                }

                v40 = *v59;
                v38 = qword_27C8D7B98;
                v39 = *v15;
                v41 = (v90 + (dword_27C8D7BA0 >> 1));
                if (dword_27C8D7BA0)
                {
                  v38 = *(*v41 + qword_27C8D7B98);
                }

                goto LABEL_97;
              case 5:
                v38 = qword_27C8D7B98;
                v40 = *(&v91[0] + 1);
                v39 = *&v91[0];
                v41 = (v90 + (dword_27C8D7BA0 >> 1));
                if (dword_27C8D7BA0)
                {
                  v38 = *(*v41 + qword_27C8D7B98);
                }

LABEL_97:
                v56 = v38(v41, v39, v40);
                goto LABEL_104;
            }
          }

          v61 = v90 + *(*v90 - 24);
          v74 = *(v61 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v75, (v61 + 1712));
          v76 = *(v61 + 452);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v74, v84);
          if (v75)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v29)
          {
            v62 = *v15;
            if (v12 && (*(v62 + 8) & 0xFE) == 0x12)
            {
              v62 = **(v62 + 16);
            }

            v82 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v84, FPTrunc, v62, &PrimitiveSizeInBits);
          }

          if (v12)
          {
            v82 = 257;
            v63 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v84, v73, FPTrunc, v63, &PrimitiveSizeInBits);
          }

          v18 = FPTrunc;
        }
      }

      if (*v15 != v89[1])
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v15);
      v14 = v72;
      if (!v72)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_125:
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v89);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v88);
  if (v84[0] != &v85)
  {
    free(v84[0]);
  }

LABEL_127:
  v65 = *MEMORY[0x277D85DE8];
  return v2;
}

llvm::Value *AGCLLVMAGPVertexShaderPostTessellation::buildNumPatchControlPoints(AGCLLVMAGPVertexShaderPostTessellation *this, llvm::Type *a2)
{
  v3 = this + *(*this - 24);
  TessConstant = AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(this, 0xDu);

  return AGCLLVMBuilder::truncateToSmall((v3 + 1704), TessConstant, a2);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(void *a1, unsigned int a2)
{
  v3 = &a1[3 * a2];
  v4 = (v3 + 1305);
  if (!v3[1307])
  {
    v5 = &(&AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(AGCLLVMAGPVertexShaderPostTessellation::TessConstant)::tess_constant_info)[3 * a2];
    v6 = a1[1221];
    v7 = 1;
    v8 = llvm::User::operator new(0x58);
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 267);
    v11 = *v5;
    HIBYTE(v22) = 1;
    if (*v11)
    {
      v21 = v11;
      v7 = 3;
    }

    LOBYTE(v22) = v7;
    v20 = *(*(v9 + 271) + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    *(v8 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v12 = a1 + *(*a1 - 24);
    v13 = *(v5 + 2);
    v14 = *(v5 + 4);
    v15 = *(v12 + 268);
    v16 = AGCLLVMBuilder::buildGlobalMetadata((v12 + 1704), v8);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v15, v16);
    llvm::ValueHandleBase::operator=(v4, v8);
  }

  v17 = a1 + *(*a1 - 24);
  v18 = *(v4 + 2);
  v22 = 257;
  return AGCLLVMBuilder::CreateLoad((v17 + 1704), v18, &v21);
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x60)
  {
    v1 = v0;
  }

  else
  {
    v1 = 96;
  }

  v2 = &aStringrefLlvmG_30[v1];
  v3 = 96 - v1;
  if ((96 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 96 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderPostTessellationPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderPostTessellation>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x76)
  {
    v1 = v0;
  }

  else
  {
    v1 = 118;
  }

  v2 = &aStringrefLlvmG_29[v1];
  v3 = 118 - v1;
  if ((118 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 118 - v1;
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

uint64_t AGCLLVMAGPVertexShaderPostTessellationHW::getDrawPatchIndex(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  v2 = this + *(*this - 24);
  VIRead = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, 8);
  v4 = *(this + *(*this - 24) + 1904);
  v7 = 257;
  return llvm::IRBuilderBase::CreateCast((v2 + 1712), 49, VIRead, v4, v6);
}

llvm::Value *AGCLLVMAGPVertexShaderPostTessellationHW::getInstanceID(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  v2 = this + *(*this - 24);
  v3 = *(v2 + 238);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v2 + 1704));
  v5 = this + *(*this - 24);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((v5 + 1712), *(inserted + 24), inserted, 0, 0, v7);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellationHW::getPatchPosition(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  VIRead = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, 6);
  v3 = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, 7);
  v4 = this + *(*this - 24);
  if (*(this + 2605))
  {
    v5 = *(v4 + 241);
    v6 = llvm::UndefValue::get();
    v7 = this + *(*this - 24);
    v49 = 257;
    v8 = *(v7 + 238);
    v9 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v7 + 1712), v6, VIRead, v9, v48);
    v11 = this + *(*this - 24);
    v49 = 257;
    v12 = *(v11 + 238);
    v13 = llvm::ConstantInt::get();
    v14 = (v11 + 1712);
    v15 = InsertElement;
    v16 = v3;
  }

  else
  {
    v17 = *(v4 + 247);
    v18 = llvm::UndefValue::get();
    v19 = this + *(*this - 24);
    v49 = 257;
    v20 = *(v19 + 238);
    v21 = llvm::ConstantInt::get();
    v22 = llvm::IRBuilderBase::CreateInsertElement((v19 + 1712), v18, VIRead, v21, v48);
    v23 = this + *(*this - 24);
    v49 = 257;
    v24 = *(v23 + 238);
    v25 = llvm::ConstantInt::get();
    v26 = llvm::IRBuilderBase::CreateInsertElement((v23 + 1712), v22, v3, v25, v48);
    v27 = this + *(*this - 24);
    v28 = *(v27 + 234);
    v29 = llvm::ConstantFP::get();
    v30 = this + *(*this - 24);
    v49 = 257;
    v31 = *(v30 + 238);
    v32 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v30 + 1712), v26, v32, v48);
    v34 = this + *(*this - 24);
    v47 = 257;
    v35 = *(v34 + 238);
    v36 = llvm::ConstantInt::get();
    v37 = llvm::IRBuilderBase::CreateExtractElement((v34 + 1712), v26, v36, v46);
    v45 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd((v30 + 1712), Element, v37, v44);
    v43[16] = 257;
    FSub = llvm::IRBuilderBase::CreateFSub((v27 + 1712), v29, FAdd, v43);
    v40 = this + *(*this - 24);
    v49 = 257;
    v41 = *(v40 + 238);
    v13 = llvm::ConstantInt::get();
    v14 = (v40 + 1712);
    v15 = v26;
    v16 = FSub;
  }

  return llvm::IRBuilderBase::CreateInsertElement(v14, v15, v16, v13, v48);
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationHWPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x62)
  {
    v1 = v0;
  }

  else
  {
    v1 = 98;
  }

  v2 = &aStringrefLlvmG_28[v1];
  v3 = 98 - v1;
  if ((98 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 98 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderPostTessellationHWPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationHWPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderPostTessellationHW>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x78)
  {
    v1 = v0;
  }

  else
  {
    v1 = 120;
  }

  v2 = &aStringrefLlvmG_27[v1];
  v3 = 120 - v1;
  if ((120 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 120 - v1;
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

void AGCLLVMAGPVertexShaderPostTessellationHW::~AGCLLVMAGPVertexShaderPostTessellationHW(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  *this = &unk_28255E2A0;
  v2 = (this + 10856);
  *(this + 1357) = &unk_28255E648;
  *(this + 1570) = &unk_28255E758;
  v3 = *(this + 1355);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 10824));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(this, off_28255E768);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28255E2A0;
  v2 = (this + 10856);
  *(this + 1357) = &unk_28255E648;
  *(this + 1570) = &unk_28255E758;
  v3 = *(this + 1355);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 10824));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(this, off_28255E768);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationShader::getCompilationKeyDescription(AGCLLVMDriverTessellationShader *this@<X0>, std::string *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1307);
  if (v3)
  {
    std::string::basic_string[abi:nn200100]<0>(v15, "AGCTessellationDriverState");
    std::string::basic_string[abi:nn200100]<0>(v13, "patch_type");
    _agcFieldString<char const*>(&v17, v13, _agcTessellationPatchTypeStrings[*v3 & 3]);
    std::string::basic_string[abi:nn200100]<0>(v11, "partition_mode");
    _agcFieldString<char const*>(&v18, v11, _agcTessellationPartitionModeStrings[(*v3 >> 2) & 7]);
    std::string::basic_string[abi:nn200100]<0>(v9, "step_function");
    _agcFieldString<char const*>(&v19, v9, _agcTessellationStepFunctionStrings[*v3 >> 5]);
    std::string::basic_string[abi:nn200100]<0>(__p, "unused");
    _agcFieldString<unsigned int>(&v20, __p, *v3 >> 8);
    _agcGroupWithHeader(a2, v15, &v17, 4);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v20.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v20.__r_.__value_.__l.__data_ + i * 8));
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

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    std::string::basic_string[abi:nn200100]<0>(a2, &unk_20E75F419);
  }
}

void virtual thunk toAGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(AGCLLVMDriverTessellationShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(AGCLLVMDriverTessellationShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[16];
  *(this + *(*this - 24) + 1704) = a2[17];
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10464);
  v5 = a2[2];
  *this = v5;
  *(this + *(v5 - 24)) = a2[12];
  *(this + *(*this - 24) + 1704) = a2[13];
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792);

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, a2 + 3);
}

uint64_t AGCLLVMDriverTessellationShader::setupShaderInputs(AGCLLVMDriverTessellationShader *this)
{
  v2 = *(this + 2460);
  if (v2)
  {
    v3 = *(this + 1229);
    v4 = v3 + 32 * v2;
    v5 = *(this + 1308);
    v6 = *(this + 2618);
    v7 = &v5[v6];
    do
    {
      i = v5;
      if (v6)
      {
          ;
        }
      }

      v10 = *(v3 + 4);
      if (i != v7)
      {
        v11 = *i;
        while (*(v11 + 8) != v10)
        {
          do
          {
            v12 = i[1];
            ++i;
            v11 = v12;
            if (v12)
            {
              v13 = v11 == -8;
            }

            else
            {
              v13 = 1;
            }
          }

          while (v13);
          if (i == v7)
          {
            goto LABEL_21;
          }
        }

        v10 = *(v11 + 16);
      }

LABEL_21:
      *(v3 + 4) = v10;
      v3 += 32;
    }

    while (v3 != v4);
  }

  AGCLLVMUserObject::remapDriverBindpoint(this, this + 1308);

  return AGCLLVMAGPVertexShader::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverTessellationShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(AGCLLVMDriverTessellationShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void virtual thunk toAGCLLVMDriverVDMNOPDBGShader::~AGCLLVMDriverVDMNOPDBGShader(AGCLLVMDriverVDMNOPDBGShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v1, off_282560CD8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_282560CD8);
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMDriverVDMNOPDBGShader::setupShaderWrapper(llvm::Function **this)
{
  v15[1] = *MEMORY[0x277D85DE8];
  result = AGCLLVMDriverTessellationShader::setupShaderWrapper(this);
  if (result)
  {
    v3 = *(this + *(*this - 3) + 2136);
    result = llvm::Module::getFunction();
    if (result)
    {
      v4 = result;
      v5 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 3) + 1704, "llvm.agx1.nop.dbg", 17, *(this + *(*this - 3) + 1848), *(this + *(*this - 3) + 1896));
      v6 = *(this + *(*this - 3) + 1896);
      v15[0] = llvm::ConstantInt::get();
      v7 = *(v4 + 1);
      if (v7)
      {
        v8 = (this + 214);
        do
        {
          v9 = *(v7 + 8);
          v10 = *(v7 + 24);
          llvm::IRBuilderBase::SetInsertPoint(&v8[*(*this - 3)], v10);
          v11 = *(*this - 3);
          v14 = 257;
          llvm::IRBuilderBase::CreateCall(&v8[v11], *(v5 + 24), v5, v15, 1, v13);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v10);
          v7 = v9;
        }

        while (v9);
      }

      llvm::Function::eraseFromParent(v4);
      result = 1;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMDriverVDMNOPDBGShader::~AGCLLVMDriverVDMNOPDBGShader(AGCLLVMDriverVDMNOPDBGShader *this)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560CD8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560CD8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void virtual thunk toAGCLLVMDriverExecuteIndirectESLGenerationShader::~AGCLLVMDriverExecuteIndirectESLGenerationShader(AGCLLVMDriverExecuteIndirectESLGenerationShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282560D90;
  v1[1311] = &unk_282561118;
  v1[1524] = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 1307));
  *v1 = off_28256A148;
  v1[1311] = off_28256A4C8;
  v1[1524] = &off_28256A5D8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282561248);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1311));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_282560D90;
  v1[1311] = &unk_282561118;
  v1[1524] = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 1307));
  *v1 = off_28256A148;
  v1[1311] = off_28256A4C8;
  v1[1524] = &off_28256A5D8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282561248);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1311));
}

uint64_t AGCLLVMDriverExecuteIndirectESLGenerationShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverExecuteIndirectESLGenerationShader::~AGCLLVMDriverExecuteIndirectESLGenerationShader(AGCLLVMDriverExecuteIndirectESLGenerationShader *this)
{
  *this = &unk_282560D90;
  v2 = (this + 10488);
  *(this + 1311) = &unk_282561118;
  *(this + 1524) = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456);
  *this = off_28256A148;
  *(this + 1311) = off_28256A4C8;
  *(this + 1524) = &off_28256A5D8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561248);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282560D90;
  v2 = (this + 10488);
  *(this + 1311) = &unk_282561118;
  *(this + 1524) = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456);
  *this = off_28256A148;
  *(this + 1311) = off_28256A4C8;
  *(this + 1524) = &off_28256A5D8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561248);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::~AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader(AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825612D8;
  v1[1311] = &unk_282561660;
  v1[1524] = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 1307));
  *v1 = off_28256B768;
  v1[1311] = off_28256BAE8;
  v1[1524] = &off_28256BBF8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282561790);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1311));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825612D8;
  v1[1311] = &unk_282561660;
  v1[1524] = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v1 + 1307));
  *v1 = off_28256B768;
  v1[1311] = off_28256BAE8;
  v1[1524] = &off_28256BBF8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282561790);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1311));
}

uint64_t AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::~AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader(AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader *this)
{
  *this = &unk_2825612D8;
  v2 = (this + 10488);
  *(this + 1311) = &unk_282561660;
  *(this + 1524) = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456);
  *this = off_28256B768;
  *(this + 1311) = off_28256BAE8;
  *(this + 1524) = &off_28256BBF8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561790);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825612D8;
  v2 = (this + 10488);
  *(this + 1311) = &unk_282561660;
  *(this + 1524) = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456);
  *this = off_28256B768;
  *(this + 1311) = off_28256BAE8;
  *(this + 1524) = &off_28256BBF8;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561790);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverVRRPatchVertexShader::~AGCLLVMDriverVRRPatchVertexShader(AGCLLVMDriverVRRPatchVertexShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_28256CD88;
  v1[1307] = off_28256D108;
  v1[1520] = &off_28256D218;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282561CD8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_28256CD88;
  v1[1307] = off_28256D108;
  v1[1520] = &off_28256D218;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282561CD8);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));
}

uint64_t AGCLLVMDriverVRRPatchVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverVRRPatchVertexShader::~AGCLLVMDriverVRRPatchVertexShader(AGCLLVMDriverVRRPatchVertexShader *this)
{
  *this = off_28256CD88;
  v2 = (this + 10456);
  *(this + 1307) = off_28256D108;
  *(this + 1520) = &off_28256D218;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561CD8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_28256CD88;
  v2 = (this + 10456);
  *(this + 1307) = off_28256D108;
  *(this + 1520) = &off_28256D218;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561CD8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverGPUGatherVertexShader::~AGCLLVMDriverGPUGatherVertexShader(AGCLLVMDriverGPUGatherVertexShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_28256E3A8;
  v1[1307] = off_28256E728;
  v1[1520] = &off_28256E838;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282562220);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_28256E3A8;
  v1[1307] = off_28256E728;
  v1[1520] = &off_28256E838;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282562220);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));
}

uint64_t AGCLLVMDriverGPUGatherVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverGPUGatherVertexShader::~AGCLLVMDriverGPUGatherVertexShader(AGCLLVMDriverGPUGatherVertexShader *this)
{
  *this = off_28256E3A8;
  v2 = (this + 10456);
  *(this + 1307) = off_28256E728;
  *(this + 1520) = &off_28256E838;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562220);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_28256E3A8;
  v2 = (this + 10456);
  *(this + 1307) = off_28256E728;
  *(this + 1520) = &off_28256E838;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562220);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverFastClearVertexShaders::~AGCLLVMDriverFastClearVertexShaders(AGCLLVMDriverFastClearVertexShaders *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_28256F9C8;
  v1[1307] = off_28256FD48;
  v1[1520] = &off_28256FE58;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282562768);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_28256F9C8;
  v1[1307] = off_28256FD48;
  v1[1520] = &off_28256FE58;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_282562768);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));
}

void AGCLLVMDriverFastClearVertexShaders::~AGCLLVMDriverFastClearVertexShaders(AGCLLVMDriverFastClearVertexShaders *this)
{
  *this = off_28256F9C8;
  v2 = (this + 10456);
  *(this + 1307) = off_28256FD48;
  *(this + 1520) = &off_28256FE58;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562768);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_28256F9C8;
  v2 = (this + 10456);
  *(this + 1307) = off_28256FD48;
  *(this + 1520) = &off_28256FE58;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562768);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMAGPVertexShaderGen4::~AGCLLVMAGPVertexShaderGen4(AGCLLVMAGPVertexShaderGen4 *this)
{
  *this = off_282570FE8;
  v2 = (this + 10456);
  *(this + 1307) = off_282571368;
  *(this + 1520) = &off_282571478;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562CB0);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282570FE8;
  v2 = (this + 10456);
  *(this + 1307) = off_282571368;
  *(this + 1520) = &off_282571478;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562CB0);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void virtual thunk toAGCLLVMDriverMSTessellationPatchVertexShader::~AGCLLVMDriverMSTessellationPatchVertexShader(AGCLLVMDriverMSTessellationPatchVertexShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_282572608;
  v1[1307] = off_282572988;
  v1[1520] = &off_282572A98;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_2825631F8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_282572608;
  v1[1307] = off_282572988;
  v1[1520] = &off_282572A98;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_2825631F8);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1307));
}

uint64_t AGCLLVMDriverMSTessellationPatchVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverMSTessellationPatchVertexShader::~AGCLLVMDriverMSTessellationPatchVertexShader(AGCLLVMDriverMSTessellationPatchVertexShader *this)
{
  *this = off_282572608;
  v2 = (this + 10456);
  *(this + 1307) = off_282572988;
  *(this + 1520) = &off_282572A98;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825631F8);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282572608;
  v2 = (this + 10456);
  *(this + 1307) = off_282572988;
  *(this + 1520) = &off_282572A98;
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
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825631F8);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellation::AGCLLVMAGPVertexShaderPostTessellation(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v9 = AGCLLVMAGPVertexShader::AGCLLVMAGPVertexShader(a1, a2 + 1, a3, a4, a5, a6);
  v10 = *a2;
  *v9 = *a2;
  *(a1 + *(v10 - 24)) = a2[13];
  *(a1 + *(*a1 - 24) + 1704) = a2[14];
  *(a1 + 10424) = (*(a4 + 16) >> 8) & 3;
  *(a1 + 10428) = (*(a4 + 16) >> 10) & 3;
  v11 = -360;
  do
  {
    v12 = a1 + v11;
    *(v12 + 10800) = 4;
    *(v12 + 10808) = 0uLL;
    v11 += 24;
  }

  while (v11);
  *(a1 + 10800) = 4;
  *(a1 + 10808) = 0u;
  Operand = llvm::NamedMDNode::getOperand(*(a1 + 56));
  v14 = *(Operand - 8 * *(Operand + 8) + 24);
  String = llvm::MDString::getString(*(v14 - 8 * *(v14 + 8) + 8));
  v16 = 0;
  if (v17 == 4)
  {
    v16 = *String == 1684108657;
  }

  *(a1 + 10420) = v16;
  *(a1 + 10436) = (*(a1 + 10424) & 0xFFFFFFFE) == 2;
  return a1;
}

uint64_t *AGCLLVMAGPVertexShaderPostTessellationHW::getTessellationFactor(AGCLLVMAGPVertexShaderPostTessellationHW *this, char a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = 1872;
  if (!*(this + 2713))
  {
    v5 = 1856;
  }

  v6 = *(this + *(*this - 24) + v5);
  if (!*(this + 1355))
  {
    v7 = llvm::PointerType::get();
    v63[0] = "agc.tessellation_factor_buffer";
    v64 = 259;
    v8 = *(*(this + *(*this - 24) + 2168) + 920);
    v9 = (*(*v8 + 56))(v8);
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, v63, v9, 0, 5, 0);
    llvm::ValueHandleBase::operator=((this + 10824), GlobalBufferBinding);
  }

  v68 = 0;
  v69 = 0;
  if (*(this + 2605))
  {
    v11 = *this;
    v12 = this + *(*this - 24);
    v13 = 2016;
    if (!*(this + 2713))
    {
      v13 = 2000;
    }

    v14 = 1928;
    if (!*(this + 2713))
    {
      v14 = 1920;
    }

    v15 = *&v12[v13];
    v6 = *&v12[v14];
  }

  else
  {
    v15 = llvm::ArrayType::get(v6, 3);
    v11 = *this;
  }

  v68 = v15;
  v69 = v6;
  v16 = *(this + *(v11 - 24) + 2160);
  v17 = llvm::StructType::create();
  v18 = llvm::PointerType::get();
  v19 = this + *(*this - 24);
  v20 = *(this + 1355);
  v64 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v19 + 1704), v20, v63);
  v62 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v19 + 1712), 49, Load, v18, v61);
  v23 = 0;
  v24 = *(this + 2607);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = (*(*this + 640))(this);
      goto LABEL_21;
    }

    if (v24 == 3)
    {
      TessConstant = AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(this, 0xEu);
      v27 = (*(*this + 648))(this);
      v28 = (*(*this + 640))(this);
      v29 = this + *(*this - 24);
      v64 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v29 + 1712), v28, TessConstant, v63);
      v62 = 257;
      v67[0] = llvm::IRBuilderBase::CreateAdd((v29 + 1712), v27, Mul, v61);
      v31 = *(this + *(*this - 24) + 1904);
      v67[1] = llvm::ConstantInt::get();
      v66 = 257;
      llvm::Type::isOpaquePointerTy(*Cast);
      GEP = llvm::IRBuilderBase::CreateGEP((v29 + 1712), v17, Cast, v67, 2, v65);
      v60 = 257;
      v33 = (v29 + 1704);
      v34 = &v59;
LABEL_23:
      v23 = AGCLLVMBuilder::CreateLoad(v33, GEP, v34);
    }
  }

  else
  {
    if (!v24)
    {
      v35 = this + *(*this - 24);
      v36 = *(v35 + 238);
      v65[0] = llvm::ConstantInt::get();
      v37 = *(this + *(*this - 24) + 1904);
LABEL_22:
      v65[1] = llvm::ConstantInt::get();
      v64 = 257;
      llvm::Type::isOpaquePointerTy(*Cast);
      GEP = llvm::IRBuilderBase::CreateGEP((v35 + 1712), v17, Cast, v65, 2, v63);
      v62 = 257;
      v33 = (v35 + 1704);
      v34 = v61;
      goto LABEL_23;
    }

    if (v24 == 1)
    {
      v25 = (*(*this + 648))(this);
LABEL_21:
      v35 = this + *(*this - 24);
      v65[0] = v25;
      v38 = *(v35 + 238);
      goto LABEL_22;
    }
  }

  if (!*(this + 2605) && (a2 & 1) == 0)
  {
    v39 = *this;
    v40 = 1976;
    if (!*(this + 2713))
    {
      v40 = 1968;
    }

    v41 = *(this + *(*this - 24) + v40);
    v42 = llvm::UndefValue::get();
    v43 = this + *(*this - 24);
    LODWORD(v65[0]) = 0;
    v64 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v43 + 1712), v23, v65, 1, v63);
    v62 = 257;
    v45 = *(v43 + 238);
    v46 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v43 + 1712), v42, Value, v46, v61);
    v48 = this + *(*this - 24);
    LODWORD(v65[0]) = 1;
    v64 = 257;
    v49 = llvm::IRBuilderBase::CreateExtractValue((v48 + 1712), v23, v65, 1, v63);
    v62 = 257;
    v50 = *(v48 + 238);
    v51 = llvm::ConstantInt::get();
    v52 = llvm::IRBuilderBase::CreateInsertElement((v48 + 1712), InsertElement, v49, v51, v61);
    v53 = this + *(*this - 24);
    LODWORD(v65[0]) = 2;
    v64 = 257;
    v54 = llvm::IRBuilderBase::CreateExtractValue((v53 + 1712), v23, v65, 1, v63);
    v62 = 257;
    v55 = *(v53 + 238);
    v56 = llvm::ConstantInt::get();
    v23 = llvm::IRBuilderBase::CreateInsertElement((v53 + 1712), v52, v54, v56, v61);
  }

  v57 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t AGCLLVMDriverTessellationShader::AGCLLVMDriverTessellationShader(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  {
    v10 = a3;
    a3 = v10;
    if (v9)
    {
      AGCLLVMDriverTessellationShader::getDefaultCS(void)::defaultCS = 0;
      *algn_27C8D9658 = 0;
      qword_27C8D9660 = 0;
      a3 = v10;
    }
  }

  AGCLLVMAGPVertexShaderRegular::AGCLLVMAGPVertexShaderRegular(a1, a2 + 1, a3, &AGCLLVMDriverTessellationShader::getDefaultCS(void)::defaultCS, 0, 0);
  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[16];
  *(a1 + *(*a1 - 24) + 1704) = a2[17];
  *(a1 + 10456) = a4;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = 0;
  *(a1 + 10484) = 32;
  return a1;
}

uint64_t *llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = a3;
  *(v11 + 24) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void virtual thunk toAGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v1, off_28255F1F8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_28255F1F8);
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader *this)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F1F8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F1F8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v1, off_28255F758);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_28255F758);
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader *this)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F758);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F758);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::~AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader(AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v1, off_28255FCB8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_28255FCB8);
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::~AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader(AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader *this)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255FCB8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255FCB8);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationBucketedSumInstanceCountsShader::~AGCLLVMDriverTessellationBucketedSumInstanceCountsShader(AGCLLVMDriverTessellationBucketedSumInstanceCountsShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v1, off_282560218);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_282560218);
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationBucketedSumInstanceCountsShader::~AGCLLVMDriverTessellationBucketedSumInstanceCountsShader(AGCLLVMDriverTessellationBucketedSumInstanceCountsShader *this)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560218);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560218);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationClearInstanceCountsShader::~AGCLLVMDriverTessellationClearInstanceCountsShader(AGCLLVMDriverTessellationClearInstanceCountsShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v1, off_282560778);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_282560778);
  v2 = (v1 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverTessellationClearInstanceCountsShader::~AGCLLVMDriverTessellationClearInstanceCountsShader(AGCLLVMDriverTessellationClearInstanceCountsShader *this)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560778);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560778);
  AGCLLVMObject::~AGCLLVMObject((v1 + 10496));
}

void AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::create(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(v19, "tess_nb_0_");
  std::string::basic_string[abi:nn200100]<0>(v20, "tess_nb_1_");
  v5 = &v19[24 * (*a3 & 3)];
  if (v5[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v5, *(v5 + 1));
  }

  else
  {
    v23 = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (v20[v6 + 23] < 0)
    {
      operator delete(*&v19[v6 + 24]);
    }

    v6 -= 24;
    if (v6 == -48)
    {
      std::string::basic_string[abi:nn200100]<0>(v19, "0_");
      std::string::basic_string[abi:nn200100]<0>(v20, "1_");
      std::string::basic_string[abi:nn200100]<0>(v21, "2_");
      std::string::basic_string[abi:nn200100]<0>(v22, "3_");
      v7 = &v19[24 * ((*a3 >> 2) & 7)];
      v8 = v7[23];
      if (v8 >= 0)
      {
        v9 = &v19[24 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = v7[23];
      }

      else
      {
        v10 = *(v7 + 1);
      }

      std::string::append(&v23, v9, v10);
      v11 = 0;
      while (1)
      {
        if (v22[v11 + 23] < 0)
        {
          operator delete(*&v22[v11]);
        }

        v11 -= 24;
        if (v11 == -96)
        {
          std::string::basic_string[abi:nn200100]<0>(v19, "0");
          std::string::basic_string[abi:nn200100]<0>(v20, "1");
          std::string::basic_string[abi:nn200100]<0>(v21, "2");
          std::string::basic_string[abi:nn200100]<0>(v22, "3");
          v12 = &v19[24 * (*a3 >> 5)];
          v13 = v12[23];
          if (v13 >= 0)
          {
            v14 = &v19[24 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = v12[23];
          }

          else
          {
            v15 = *(v12 + 1);
          }

          std::string::append(&v23, v14, v15);
          v16 = 0;
          while (1)
          {
            if (v22[v16 + 23] < 0)
            {
              operator delete(*&v22[v16]);
            }

            v16 -= 24;
            if (v16 == -96)
            {
              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v23;
              }

              else
              {
                v17 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              AGCLLVMObject::readBitcode(a2, v17, size, 0);
              operator new();
            }
          }
        }
      }
    }
  }
}

void AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::create(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(v19, "tess_b3_0_");
  std::string::basic_string[abi:nn200100]<0>(v20, "tess_b3_1_");
  v5 = &v19[24 * (*a3 & 3)];
  if (v5[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v5, *(v5 + 1));
  }

  else
  {
    v23 = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (v20[v6 + 23] < 0)
    {
      operator delete(*&v19[v6 + 24]);
    }

    v6 -= 24;
    if (v6 == -48)
    {
      std::string::basic_string[abi:nn200100]<0>(v19, "0_");
      std::string::basic_string[abi:nn200100]<0>(v20, "1_");
      std::string::basic_string[abi:nn200100]<0>(v21, "2_");
      std::string::basic_string[abi:nn200100]<0>(v22, "3_");
      v7 = &v19[24 * ((*a3 >> 2) & 7)];
      v8 = v7[23];
      if (v8 >= 0)
      {
        v9 = &v19[24 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = v7[23];
      }

      else
      {
        v10 = *(v7 + 1);
      }

      std::string::append(&v23, v9, v10);
      v11 = 0;
      while (1)
      {
        if (v22[v11 + 23] < 0)
        {
          operator delete(*&v22[v11]);
        }

        v11 -= 24;
        if (v11 == -96)
        {
          std::string::basic_string[abi:nn200100]<0>(v19, "0");
          std::string::basic_string[abi:nn200100]<0>(v20, "1");
          std::string::basic_string[abi:nn200100]<0>(v21, "2");
          std::string::basic_string[abi:nn200100]<0>(v22, "3");
          v12 = &v19[24 * (*a3 >> 5)];
          v13 = v12[23];
          if (v13 >= 0)
          {
            v14 = &v19[24 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = v12[23];
          }

          else
          {
            v15 = *(v12 + 1);
          }

          std::string::append(&v23, v14, v15);
          v16 = 0;
          while (1)
          {
            if (v22[v16 + 23] < 0)
            {
              operator delete(*&v22[v16]);
            }

            v16 -= 24;
            if (v16 == -96)
            {
              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v23;
              }

              else
              {
                v17 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              AGCLLVMObject::readBitcode(a2, v17, size, 0);
              operator new();
            }
          }
        }
      }
    }
  }
}

void AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::create(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(v19, "tess_b1_0_");
  std::string::basic_string[abi:nn200100]<0>(v20, "tess_b1_1_");
  v5 = &v19[24 * (*a3 & 3)];
  if (v5[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v5, *(v5 + 1));
  }

  else
  {
    v23 = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (v20[v6 + 23] < 0)
    {
      operator delete(*&v19[v6 + 24]);
    }

    v6 -= 24;
    if (v6 == -48)
    {
      std::string::basic_string[abi:nn200100]<0>(v19, "0_");
      std::string::basic_string[abi:nn200100]<0>(v20, "1_");
      std::string::basic_string[abi:nn200100]<0>(v21, "2_");
      std::string::basic_string[abi:nn200100]<0>(v22, "3_");
      v7 = &v19[24 * ((*a3 >> 2) & 7)];
      v8 = v7[23];
      if (v8 >= 0)
      {
        v9 = &v19[24 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = v7[23];
      }

      else
      {
        v10 = *(v7 + 1);
      }

      std::string::append(&v23, v9, v10);
      v11 = 0;
      while (1)
      {
        if (v22[v11 + 23] < 0)
        {
          operator delete(*&v22[v11]);
        }

        v11 -= 24;
        if (v11 == -96)
        {
          std::string::basic_string[abi:nn200100]<0>(v19, "0");
          std::string::basic_string[abi:nn200100]<0>(v20, "1");
          std::string::basic_string[abi:nn200100]<0>(v21, "2");
          std::string::basic_string[abi:nn200100]<0>(v22, "3");
          v12 = &v19[24 * (*a3 >> 5)];
          v13 = v12[23];
          if (v13 >= 0)
          {
            v14 = &v19[24 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = v12[23];
          }

          else
          {
            v15 = *(v12 + 1);
          }

          std::string::append(&v23, v14, v15);
          v16 = 0;
          while (1)
          {
            if (v22[v16 + 23] < 0)
            {
              operator delete(*&v22[v16]);
            }

            v16 -= 24;
            if (v16 == -96)
            {
              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v23;
              }

              else
              {
                v17 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              AGCLLVMObject::readBitcode(a2, v17, size, 0);
              operator new();
            }
          }
        }
      }
    }
  }
}

void AGCLLVMDriverExecuteIndirectESLGenerationShader::create(AGCLLVMDriverExecuteIndirectESLGenerationShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, "gei_esl_gen");
  v5 = *(*(this + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 != 35 && v5 != 38)
        {
          goto LABEL_64;
        }

        v6 = "4_hal300";
      }

      else
      {
        if (v5 != 32 && v5 != 34)
        {
          goto LABEL_64;
        }

        v6 = "4_hal200";
      }

      goto LABEL_63;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 != 31)
      {
        goto LABEL_64;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v8 = v31;
      std::string::basic_string[abi:nn200100](v31, size + 6);
      if (v32 < 0)
      {
        v8 = v31[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v8, p_p, size);
      }

      strcpy(v8 + size, "4_g16p");
      v10 = *(*(this + 4) + 24);
      v35[0] = 1;
      std::string::basic_string[abi:nn200100]<0>(v36, "a0");
      v37 = 3;
      std::string::basic_string[abi:nn200100]<0>(v38, "b0");
      v39 = 4;
      std::string::basic_string[abi:nn200100]<0>(v40, "b0");
      v11 = 0;
      v29 = 0;
      v30 = 0;
      v28 = &v29;
      do
      {
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v28, &v29, v35[v11]);
        v11 += 8;
      }

      while (v11 != 24);
      getFullBitcodePath(&v33, v31, v10, &v28);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v33;
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v29);
      for (i = 0; i != -96; i -= 32)
      {
        if (v40[i + 23] < 0)
        {
          operator delete(*&v40[i]);
        }
      }

LABEL_89:
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      goto LABEL_64;
    }
  }

  else
  {
    if (v5 > 18)
    {
      if ((v5 - 19) < 3)
      {
        v6 = "3x";
LABEL_63:
        std::string::append(&__p, v6);
        goto LABEL_64;
      }

      if (v5 == 22)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = __p.__r_.__value_.__l.__size_;
        }

        v23 = v31;
        std::string::basic_string[abi:nn200100](v31, v22 + 6);
        if (v32 < 0)
        {
          v23 = v31[0];
        }

        if (v22)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v23, v24, v22);
        }

        strcpy(v23 + v22, "4_g15p");
        v25 = *(*(this + 4) + 24);
        v35[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v36, "a0");
        v37 = 3;
        std::string::basic_string[abi:nn200100]<0>(v38, "b0");
        v26 = 0;
        v29 = 0;
        v30 = 0;
        v28 = &v29;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v28, &v29, v35[v26]);
          v26 += 8;
        }

        while (v26 != 16);
        getFullBitcodePath(&v33, v31, v25, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v33;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v29);
        for (j = 0; j != -64; j -= 32)
        {
          if (v38[j + 23] < 0)
          {
            operator delete(*&v38[j]);
          }
        }
      }

      else
      {
        if (v5 != 24)
        {
          goto LABEL_64;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = __p.__r_.__value_.__l.__size_;
        }

        v15 = v31;
        std::string::basic_string[abi:nn200100](v31, v14 + 6);
        if (v32 < 0)
        {
          v15 = v31[0];
        }

        if (v14)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &__p;
          }

          else
          {
            v16 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v15, v16, v14);
        }

        strcpy(v15 + v14, "4_g15g");
        v17 = *(*(this + 4) + 24);
        v35[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v36, "a0");
        v37 = 3;
        std::string::basic_string[abi:nn200100]<0>(v38, "b0");
        v39 = 5;
        std::string::basic_string[abi:nn200100]<0>(v40, "c0");
        v18 = 0;
        v29 = 0;
        v30 = 0;
        v28 = &v29;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v28, &v29, v35[v18]);
          v18 += 8;
        }

        while (v18 != 24);
        getFullBitcodePath(&v33, v31, v17, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v33;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v29);
        for (k = 0; k != -96; k -= 32)
        {
          if (v40[k + 23] < 0)
          {
            operator delete(*&v40[k]);
          }
        }
      }

      goto LABEL_89;
    }

    if ((v5 - 17) < 2)
    {
      v6 = "3";
      goto LABEL_63;
    }

    if (v5 != 14 && v5 != 16)
    {
LABEL_64:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &__p;
      }

      else
      {
        v20 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      AGCLLVMObject::readBitcode(a2, v20, v21, 0);
      operator new();
    }
  }

  v6 = "2";
  goto LABEL_63;
}

void *std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 32);
        if (v15 <= a3)
        {
          break;
        }

        v13 = *v14;
        v3 = v14;
        if (!*v14)
        {
          goto LABEL_38;
        }
      }

      if (v15 >= a3)
      {
        break;
      }

      v3 = v14 + 1;
      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v8 = v3;
    goto LABEL_19;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    v17 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 32);
        if (v19 <= a3)
        {
          break;
        }

        v17 = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_40;
      }

      v3 = v18 + 1;
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v8)
  {
LABEL_38:
    operator new();
  }

  return result;
}

void getFullBitcodePath(std::string *this, const void **a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v6 = a4 + 8;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = HIWORD(a3);
  v10 = v6;
  do
  {
    if (*(v7 + 32) >= v9)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v9));
  }

  while (v7);
  if (v10 != v6 && v9 >= *(v10 + 32))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    v14 = &v23;
    std::string::basic_string[abi:nn200100](&v23, v13 + 1);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v23.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      memmove(v14, v15, v13);
    }

    *(&v14->__r_.__value_.__l.__data_ + v13) = 95;
    v18 = *(v10 + 40);
    v17 = v10 + 40;
    v16 = v18;
    v19 = *(v17 + 23);
    if (v19 >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = *(v17 + 8);
    }

    v22 = std::string::append(&v23, v20, v21);
    *this = *v22;
    v22->__r_.__value_.__r.__words[0] = 0;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_8:
    if (*(a2 + 23) < 0)
    {
      v11 = *a2;
      v12 = a2[1];

      std::string::__init_copy_ctor_external(this, v11, v12);
    }

    else
    {
      *this = *a2;
    }
  }
}

void std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::create(AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, "gei_esl_gen");
  v5 = *(*(this + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 != 35 && v5 != 38)
        {
          goto LABEL_44;
        }

        v6 = "gei_esl_range_exec_gen4_hal300";
      }

      else
      {
        if (v5 != 32 && v5 != 34)
        {
          goto LABEL_44;
        }

        v6 = "gei_esl_range_exec_gen4_hal200";
      }

      goto LABEL_43;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 != 31)
      {
        goto LABEL_44;
      }

      std::string::basic_string[abi:nn200100]<0>(v22, "gei_esl_range_exec_gen4_g16p");
      v7 = *(*(this + 4) + 24);
      v26[0] = 1;
      std::string::basic_string[abi:nn200100]<0>(v27, "a0");
      v28 = 3;
      std::string::basic_string[abi:nn200100]<0>(v29, "b0");
      v30 = 4;
      std::string::basic_string[abi:nn200100]<0>(v31, "b0");
      v8 = 0;
      v20 = 0;
      v21 = 0;
      v19 = &v20;
      do
      {
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v8]);
        v8 += 8;
      }

      while (v8 != 24);
      getFullBitcodePath(&v24, v22, v7, &v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v24;
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
      for (i = 0; i != -96; i -= 32)
      {
        if (v31[i + 23] < 0)
        {
          operator delete(*&v31[i]);
        }
      }

LABEL_59:
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (v5 > 18)
    {
      if ((v5 - 19) < 3)
      {
        v6 = "gei_esl_range_exec_gen3x";
LABEL_43:
        MEMORY[0x20F331AA0](&__p, v6);
        goto LABEL_44;
      }

      if (v5 == 22)
      {
        std::string::basic_string[abi:nn200100]<0>(v22, "gei_esl_range_exec_gen4_g15p");
        v16 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v17 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v17]);
          v17 += 8;
        }

        while (v17 != 16);
        getFullBitcodePath(&v24, v22, v16, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (j = 0; j != -64; j -= 32)
        {
          if (v29[j + 23] < 0)
          {
            operator delete(*&v29[j]);
          }
        }
      }

      else
      {
        if (v5 != 24)
        {
          goto LABEL_44;
        }

        std::string::basic_string[abi:nn200100]<0>(v22, "gei_esl_range_exec_gen4_g15g");
        v11 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v30 = 5;
        std::string::basic_string[abi:nn200100]<0>(v31, "c0");
        v12 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v12]);
          v12 += 8;
        }

        while (v12 != 24);
        getFullBitcodePath(&v24, v22, v11, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (k = 0; k != -96; k -= 32)
        {
          if (v31[k + 23] < 0)
          {
            operator delete(*&v31[k]);
          }
        }
      }

      goto LABEL_59;
    }

    if ((v5 - 17) < 2)
    {
      v6 = "gei_esl_range_exec_gen3";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
LABEL_44:
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

      AGCLLVMObject::readBitcode(a2, p_p, size, 0);
      operator new();
    }
  }

  v6 = "gei_esl_range_exec_gen2";
  goto LABEL_43;
}

void AGCLLVMDriverVRRPatchVertexShader::create(AGCLLVMDriverVRRPatchVertexShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
  v5 = *(*(this + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 != 35 && v5 != 38)
        {
          goto LABEL_44;
        }

        v6 = "late_latched_vrr_hal300";
      }

      else
      {
        if (v5 != 32 && v5 != 34)
        {
          goto LABEL_44;
        }

        v6 = "late_latched_vrr_hal200";
      }

      goto LABEL_43;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 != 31)
      {
        goto LABEL_44;
      }

      std::string::basic_string[abi:nn200100]<0>(v22, "late_latched_vrr_g16p");
      v7 = *(*(this + 4) + 24);
      v26[0] = 1;
      std::string::basic_string[abi:nn200100]<0>(v27, "a0");
      v28 = 3;
      std::string::basic_string[abi:nn200100]<0>(v29, "b0");
      v30 = 4;
      std::string::basic_string[abi:nn200100]<0>(v31, "b0");
      v8 = 0;
      v20 = 0;
      v21 = 0;
      v19 = &v20;
      do
      {
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v8]);
        v8 += 8;
      }

      while (v8 != 24);
      getFullBitcodePath(&v24, v22, v7, &v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v24;
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
      for (i = 0; i != -96; i -= 32)
      {
        if (v31[i + 23] < 0)
        {
          operator delete(*&v31[i]);
        }
      }

LABEL_59:
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (v5 > 18)
    {
      if ((v5 - 19) < 3)
      {
        v6 = "late_latched_vrr_g14x";
LABEL_43:
        MEMORY[0x20F331AA0](&__p, v6);
        goto LABEL_44;
      }

      if (v5 == 22)
      {
        std::string::basic_string[abi:nn200100]<0>(v22, "late_latched_vrr_g15p");
        v16 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v17 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v17]);
          v17 += 8;
        }

        while (v17 != 16);
        getFullBitcodePath(&v24, v22, v16, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (j = 0; j != -64; j -= 32)
        {
          if (v29[j + 23] < 0)
          {
            operator delete(*&v29[j]);
          }
        }
      }

      else
      {
        if (v5 != 24)
        {
          goto LABEL_44;
        }

        std::string::basic_string[abi:nn200100]<0>(v22, "late_latched_vrr_g15g");
        v11 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v30 = 5;
        std::string::basic_string[abi:nn200100]<0>(v31, "c0");
        v12 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v12]);
          v12 += 8;
        }

        while (v12 != 24);
        getFullBitcodePath(&v24, v22, v11, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (k = 0; k != -96; k -= 32)
        {
          if (v31[k + 23] < 0)
          {
            operator delete(*&v31[k]);
          }
        }
      }

      goto LABEL_59;
    }

    if ((v5 - 17) < 2)
    {
      v6 = "late_latched_vrr_g14";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
LABEL_44:
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

      AGCLLVMObject::readBitcode(a2, p_p, size, 1);
      operator new();
    }
  }

  v6 = "late_latched_vrr_g13";
  goto LABEL_43;
}

void AGCLLVMDriverGPUGatherVertexShader::create(AGCLLVMDriverGPUGatherVertexShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  std::string::basic_string[abi:nn200100]<0>(__p, &unk_20E75F419);
  v5 = *(*(this + 4) + 28);
  v6 = v5 > 0x26;
  v7 = (1 << v5) & 0x4D0F7F4000;
  if (!v6 && v7 != 0)
  {
    MEMORY[0x20F331AA0](__p, "gpu_gather_vertex_gen2");
  }

  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v12 >= 0)
  {
    v10 = v12;
  }

  else
  {
    v10 = __p[1];
  }

  AGCLLVMObject::readBitcode(a2, v9, v10, 0);
  operator new();
}

void AGCLLVMDriverFastClearVertexShaders::create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 3) != 2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  if ((a3 & 4) != 0)
  {
    v4 = "blit_vertex_fast_clear_gen2_meta";
  }

  else
  {
    v4 = 0;
    v5 = (a3 >> 3);
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v4 = "blit_vertex_fast_clear_gen2_5";
      }

      else if (v5 == 8)
      {
        v4 = "blit_vertex_fast_clear_gen2_8";
      }

      else
      {
        v6 = 0;
        if (v5 != 16)
        {
LABEL_11:
          AGCLLVMObject::readBitcode(a2, v4, v6, 1);
          operator new();
        }

        v4 = "blit_vertex_fast_clear_gen2_16";
      }
    }

    else if (v5 == 1)
    {
      v4 = "blit_vertex_fast_clear_gen2_1";
    }

    else if (v5 == 2)
    {
      v4 = "blit_vertex_fast_clear_gen2_2";
    }

    else
    {
      v6 = 0;
      if (v5 != 4)
      {
        goto LABEL_11;
      }

      v4 = "blit_vertex_fast_clear_gen2_4";
    }
  }

  v6 = strlen(v4);
  goto LABEL_11;
}

void *AGCArgumentBuffer::parseMDRoot(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*(a1 + 48) + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (i[2] == a2)
          {
            v25 = i + 3;
            goto LABEL_43;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v9)
            {
              v14 %= *&v9;
            }
          }

          else
          {
            v14 &= *&v9 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v30 = 3;
  v29 = &unk_28257C140;
  v31 = 0;
  v32 = 1;
  v33[0] = v34;
  v33[1] = 0x800000000;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 1;
  if (!*&v9)
  {
    goto LABEL_34;
  }

  v15 = vcnt_s8(v9);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (v8 >= *&v9)
    {
      v16 = v8 % *&v9;
    }
  }

  else
  {
    v16 = v8 & (*&v9 - 1);
  }

  v17 = *(*(a1 + 48) + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_34:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v8)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= *&v9)
      {
        v19 %= *&v9;
      }
    }

    else
    {
      v19 &= *&v9 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  if (v18[2] != a2)
  {
    goto LABEL_33;
  }

  v25 = v18 + 3;
  if (!a3)
  {
    v3 = parseMDStructType(a2);
  }

  AGCArgumentBuffer::ResourceTracker::pushArray(v33, &v29, 0);
  AGCArgumentBuffer::parseMDStruct(v26, a1, a2, v3, 0, (v18 + 3), v33);
  AGCArgumentBuffer::ResourceTracker::popArray(v33);
  v20 = v35;
  *(v18 + 22) = HIDWORD(v32);
  *(v18 + 23) = v20;
  v21 = HIDWORD(v35);
  *(v18 + 24) = v36;
  *(v18 + 25) = v21;
  v18[13] = v3;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  v22 = v31;
  v29 = &unk_28257C140;
  v31 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_43:
  v23 = *MEMORY[0x277D85DE8];
  return v25;
}

void llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::destroy_range(char *a1, char *a2)
{
  if (a2 != a1)
  {
    v3 = a2 - 40;
    do
    {
      v4 = *(v3 - 2);
      if (v3 != v4)
      {
        free(v4);
      }

      v5 = *(v3 - 8);
      if (v3 - 48 != v5)
      {
        free(v5);
      }

      v6 = v3 - 64;
      v3 -= 104;
    }

    while (v6 != a1);
  }
}

uint64_t llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::push_back(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 > a2 || v5 + 104 * v4 <= a2)
    {
      llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::grow();
    }

    llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::grow();
  }

  v6 = v5 + 104 * *(a1 + 8);
  *v6 = v6 + 16;
  *(v6 + 8) = 0x400000000;
  if (a2[2])
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v6, a2);
  }

  *(v6 + 48) = v6 + 64;
  result = v6 + 48;
  *(v6 + 56) = 0x400000000;
  if (a2[14])
  {
    result = llvm::SmallVectorImpl<llvm::MDNode *>::operator=(result, (a2 + 12));
  }

  *(v6 + 96) = a2[24];
  ++*(a1 + 8);
  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildStruct(AGCArgumentBuffer::Tier1TypeBuilder *this, AGCArgumentBuffer::Struct *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  AGCArgumentBuffer::Tier1TypeBuilder::endGroup(this);
  llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(this + 1000, *(*(this + 19) + 104 * *(this + 40) - 96));
  AGCArgumentBuffer::Tier1TypeBuilder::pushArrayIndices(this);
  v26 = v28;
  v27 = 0x400000000;
  if (*(this + 16))
  {
    llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v26, this + 56);
    v29 = v31;
    v30 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
    if (v27)
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v33, &v26);
    }
  }

  else
  {
    v29 = v31;
    v30 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
  }

  v35[8] = 0;
  llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::push_back(this + 152, &v29);
  if (v33 != v35)
  {
    free(v33);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  v4 = *(this + 19) + 104 * *(this + 40);
  *(v4 - 8) = *(v4 - 96);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v4 - 104, 0);
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 2);
    v8 = 8 * v5;
    do
    {
      if (*v7)
      {
        v6 |= AGCArgumentBuffer::Tier1TypeBuilder::buildField(this, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  LODWORD(v30) = 7;
  v31[0] = v32;
  v31[1] = 0x400000000;
  v36 = v38;
  v37 = 0x800000000;
  v39 = v41;
  v40 = 0x400000000;
  v41[4] = 0;
  v42 = 0;
  v29 = &unk_28257C160;
  v43 = 0;
  if (v6)
  {
    AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(this);
    v43 = *(this + 3);
    AGCArgumentBuffer::Tier1TypeBuilder::buildConstant(this, &v29);
  }

  AGCArgumentBuffer::Tier1TypeBuilder::endGroup(this);
  v9 = *(this + 19) + 104 * *(this + 40);
  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(this + 56, v9 - 56);
  v10 = *(this + 2);
  v11 = *(v9 - 104);
  v12 = *(v9 - 96);
  v13 = llvm::StructType::get();
  v14 = *(this + 16);
  if (v14)
  {
    v15 = *(this + 7) + 8 * v14;
    do
    {
      v16 = *(v15 - 8);
      v15 -= 8;
      v13 = llvm::ArrayType::get(v13, *(v16 + 24));
    }

    while (v15 != *(this + 7));
    v17 = *(this + 16);
    if (v17)
    {
      v18 = *(this + 264) - v17;
      v19 = *(this + 252) - v17;
      *(this + 264) = v18;
      *(this + 252) = v19;
    }
  }

  --*(this + 252);
  v20 = *(this + 40) - 1;
  *(this + 40) = v20;
  v21 = *(this + 19) + 104 * v20;
  v22 = *(v21 + 48);
  if (v22 != (v21 + 64))
  {
    free(v22);
  }

  if (*v21 != v21 + 16)
  {
    free(*v21);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(*(this + 19) + 104 * *(this + 40) - 104, v13);
  *(this + 5) = 0;
  *(this + 12) = 0;
  v23 = *(this + 19) + 104 * *(this + 40);
  *(v23 - 8) = *(v23 - 96);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23 - 104, 0);
  v29 = &unk_28257C100;
  if (v39 != v41)
  {
    free(v39);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildField(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (a2 && !v3)
  {
    do
    {
      a2 = *(a2 + 16);
      v3 = *(a2 + 8);
      if (a2)
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4);
  }

  if ((v3 - 3) >= 0xFFFFFFFE)
  {

    return AGCArgumentBuffer::Tier1TypeBuilder::buildStruct(a1, a2);
  }

  else
  {
    result = 0;
    if (v3 > 4)
    {
      switch(v3)
      {
        case 5:
          v6 = (a1 + 40);
          break;
        case 6:
          v6 = (a1 + 44);
          break;
        case 7:
          AGCArgumentBuffer::Tier1TypeBuilder::buildConstant(a1, a2);
          return 0;
        default:
          return result;
      }

LABEL_21:
      AGCArgumentBuffer::Tier1TypeBuilder::buildResource(a1, a2, v6);
      return 1;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = (a1 + 48);
      goto LABEL_21;
    }

    v7 = *(a1 + 64);
    if (v7 >= *(a1 + 68))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 56) + 8 * v7) = a2;
    ++*(a1 + 64);
    result = AGCArgumentBuffer::Tier1TypeBuilder::buildField(a1, *(a2 + 16));
    --*(a1 + 64);
  }

  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildConstant(AGCArgumentBuffer::Tier1TypeBuilder *this, AGCArgumentBuffer::Constant *a2)
{
  llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(this + 1000, *(*(this + 19) + 104 * *(this + 40) - 96));
  llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(this + 1000, *(this + 28));
  AGCArgumentBuffer::Tier1TypeBuilder::pushArrayIndices(this);
  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a2 + 184, this + 1048);
  v4 = *(this + 252);
  if (v4)
  {
    v5 = *(this + 125);
    v6 = 4 * v4;
    do
    {
      v7 = *(this + 3);
      v8 = *v5++;
      v9 = llvm::ConstantInt::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v9);
      v6 -= 4;
    }

    while (v6);
  }

  v10 = *(a2 + 31);
  v11 = *(this + 16);
  if (v11)
  {
    v12 = *(this + 7) + 8 * v11;
    do
    {
      v13 = *(v12 - 8);
      v12 -= 8;
      v10 = llvm::ArrayType::get(v10, *(v13 + 24));
    }

    while (v12 != *(this + 7));
  }

  result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this + 104, v10);
  v15 = *(this + 16);
  v16 = *(this + 252);
  if (v15)
  {
    v16 -= v15;
    *(this + 264) -= v15;
  }

  *(this + 252) = v16 - 2;
  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildResource(AGCArgumentBuffer::Tier1TypeBuilder *this, AGCArgumentBuffer::Resource *a2, unsigned int *a3)
{
  AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(this);
  *(a2 + 25) = *a3;
  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a2 + 184, this + 1048);
  v6 = *(this + 252);
  if (v6)
  {
    v7 = *(this + 125);
    v8 = 4 * v6;
    do
    {
      v9 = *(this + 3);
      v10 = *v7++;
      v11 = llvm::ConstantInt::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v11);
      v8 -= 4;
    }

    while (v8);
  }

  v12 = *(this + 16);
  if (v12)
  {
    v13 = *(this + 7);
    v14 = 8 * v12;
    v15 = 1;
    do
    {
      v16 = *v13++;
      v15 *= *(v16 + 24);
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v15 = 1;
  }

  v17 = *(this + 3);
  v18 = *(*(this + 19) + 104 * *(this + 40) - 8);
  v19 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v19);
  v20 = *(this + 3);
  v21 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v21);
  v22 = *(this + 3);
  v23 = llvm::ConstantInt::get();
  result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v23);
  *a3 += v15;
  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(uint64_t this)
{
  if (*(this + 112))
  {
    v1 = this;
    v2 = *(this + 152) + 104 * *(this + 160) - 104;
    v3 = *(this + 16);
    v4 = *(v1 + 104);
    v5 = llvm::StructType::get();
    this = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2, v5);
    *(v1 + 112) = 0;
  }

  return this;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::pushArrayIndices(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 56);
    v4 = 8 * v1;
    do
    {
      v5 = *v3++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2 + 1048, *(v5 + 32) | (*(v2 + 1008) << 32));
      this = llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(v2 + 1000, 0);
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::endGroup(AGCArgumentBuffer::Tier1TypeBuilder *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(this + 4);
  v3 = llvm::ArrayType::get(v2, *(*(this + 1) + 1816));
  v4 = llvm::ArrayType::get(v3, *(this + 10));
  v5 = llvm::ArrayType::get(*(this + 4), *(*(this + 1) + 1820));
  v6 = llvm::ArrayType::get(v5, *(this + 11));
  v7 = llvm::ArrayType::get(*(this + 3), *(*(this + 1) + 1872));
  v8 = *(this + 4);
  llvm::ArrayType::get(v8, 0);
  v9 = *(this + 12);
  if (v9)
  {
    llvm::ArrayType::get(v2, v9);
  }

  if (*(this + 10))
  {
    llvm::ArrayType::get(v4, 2);
  }

  if (*(this + 11))
  {
    llvm::ArrayType::get(v6, 1);
  }

  v10 = *(this + 10);
  if (v10)
  {
    llvm::ArrayType::get(v7, v10);
    v11 = *(this + 10);
    if (v11)
    {
      llvm::ArrayType::get(v8, v11);
    }
  }

  v12 = *(this + 11);
  if (v12)
  {
    llvm::ArrayType::get(v8, v12);
  }

  if (*(this + 12) || *(this + 10))
  {
    v13 = *(this + 19) + 104 * *(this + 40) - 104;
  }

  else
  {
    v13 = *(this + 19) + 104 * *(this + 40) - 104;
    if (!*(this + 11))
    {
      v18 = *(this + 2);
      v15 = llvm::StructType::get();
      goto LABEL_16;
    }
  }

  v14 = *(this + 2);
  v15 = llvm::StructType::get();
LABEL_16:
  *(*v13 + 8 * *(v13 + 96)) = v15;
  result = AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(this);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCArgumentBuffer::Resource::~Resource(AGCArgumentBuffer::Resource *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::Constant::~Constant(AGCArgumentBuffer::Constant *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

__n128 AGCArgumentBuffer::ResourceTracker::pushArray(AGCArgumentBuffer::ResourceTracker *this, AGCArgumentBuffer::Array *a2, int a3)
{
  v3 = *(this + 72);
  v9.n128_u64[0] = a2;
  v9.n128_u8[8] = a3;
  v9.n128_u8[12] = 0;
  v10.n128_u8[0] = 0;
  v10.n128_u32[1] = 0;
  v10.n128_u32[2] = v3;
  v4 = *(this + 2);
  v5 = *this;
  if (v4 >= *(this + 3))
  {
    if (v5 > &v9 || v5 + 32 * v4 <= &v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 32 * *(this + 2));
  result = v9;
  v8 = v10;
  *v6 = v9;
  v6[1] = v8;
  ++*(this + 2);
  *(this + 74) *= *(a2 + 6);
  LODWORD(v6) = *(this + 73) + a3;
  *(this + 73) = v6 + 1;
  *(a2 + 8) = v6;
  return result;
}

void AGCArgumentBuffer::parseMDStruct(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int32x2_t *a7)
{
  v128[2] = *MEMORY[0x277D85DE8];
  *a1 = 1;
  *(a1 + 1) = 0;
  v12 = (a1 + 8);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::string::push_back((a1 + 8), 123);
  if (!a4)
  {
    a4 = parseMDStructType(a3);
  }

  v13 = *(a4 + 12);
  v126 = v128;
  v127 = 0x400000000;
  llvm::SmallVectorImpl<unsigned int>::assign(&v126, v13, 0);
  v14 = *a7 + 32 * a7[1].u32[0];
  if ((*(v14 - 16) & 1) == 0)
  {
    *(v14 - 20) = a5;
    *(v14 - 16) = 1;
  }

  v112 = v12;
  a7[36] = vadd_s32(a7[36], 0x100000001);
  v15 = *(a6 + 24);
  if (v15 != v13)
  {
    if (v15 <= v13)
    {
      if (*(a6 + 28) < v13)
      {
        __dst = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      if (v15 != v13)
      {
        bzero((*(a6 + 16) + 8 * v15), 8 * v13 - 8 * v15);
      }
    }

    else
    {
      v16 = 8 * v13 - 8 * v15;
      v17 = (*(a6 + 16) + 8 * v15 - 8);
      do
      {
        v18 = *v17;
        *v17 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        --v17;
        v16 += 8;
      }

      while (v16);
    }

    *(a6 + 24) = v13;
  }

  v19 = *(a2 + 16);
  StructLayout = llvm::DataLayout::getStructLayout();
  if (v13)
  {
    v21 = (StructLayout + 16);
    v22 = v126;
    do
    {
      v23 = *v21++;
      *v22++ = v23;
      --v13;
    }

    while (v13);
  }

  v24 = *(a3 + 8);
  if (v24)
  {
    LODWORD(v25) = 0;
    v109 = *(a3 + 8);
    v106 = a3;
    v107 = a6;
    while (1)
    {
      v123 = 0;
      v121 = -1;
      v122 = 0;
      v26 = isStringMDNode(*(a3 - 8 * *(a3 + 8) + 8 * v25), "air.struct_type_info");
      v27 = *(a3 + 8);
      if (v26)
      {
        v28 = *(a3 - 8 * v27 + 8 * (v25 + 1));
        if (v28 && ((*v28 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v28)) == 0)
        {
          v28 = 0;
        }

        v29 = -v27;
        v51 = v28 == 0;
        v30 = *a1;
        if (v51)
        {
          v30 = 0;
        }

        *a1 = v30;
        v31 = (v25 + 2);
        LODWORD(v25) = v25 + 2;
      }

      else
      {
        v31 = v25;
        v29 = -v27;
      }

      if (isStringMDNode(*(a3 + 8 * v29 + 8 * v31), "air.inline_type_info"))
      {
        v32 = *(a3 - 8 * *(a3 + 8) + 8 * (v25 + 1));
        if (v32 && ((*v32 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v32)) == 0)
        {
          v32 = 0;
        }

        v51 = v32 == 0;
        v33 = *a1;
        if (v51)
        {
          v33 = 0;
        }

        *a1 = v33;
        LODWORD(v25) = v25 + 2;
      }

      v34 = v25;
      LODWORD(__dst) = v25;
      *a1 &= parseMDInt(0, a3, &__dst, &v123 + 1);
      LODWORD(__dst) = v25 + 1;
      *a1 &= parseMDInt(0, a3, &__dst, &v123);
      __s1 = v25;
      v35 = v25 + 3;
      LODWORD(__dst) = v34 + 2;
      v36 = parseMDInt(0, a3, &__dst, &v122);
      v37 = a3 - 8 * *(a3 + 8);
      v38 = *(v37 + 8 * v35);
      if (v38)
      {
        if (*v38)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(v37 + 8 * v35);
        }
      }

      else
      {
        v39 = 0;
      }

      v40 = v36 & *a1;
      if (!v39)
      {
        v40 = 0;
      }

      v41 = *(v37 + 8 * (__s1 + 4));
      if (v41)
      {
        if (*v41)
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }
      }

      else
      {
        v42 = 0;
      }

      if (!v42)
      {
        v40 = 0;
      }

      *a1 = v40;
      String = llvm::MDString::getString(v39);
      __n = v43;
      llvm::MDString::getString(v42);
      v44 = v127;
      if (v127)
      {
        v45 = v126;
        do
        {
          v46 = v44 >> 1;
          v47 = &v45[4 * (v44 >> 1)];
          v49 = *v47;
          v48 = v47 + 1;
          v44 += ~(v44 >> 1);
          if (v49 < HIDWORD(v123))
          {
            v45 = v48;
          }

          else
          {
            v44 = v46;
          }
        }

        while (v44);
      }

      else
      {
        v45 = v126;
      }

      v50 = *(a6 + 16);
      if (__n >= 7)
      {
        v51 = *String == 1801675120 && *(String + 3) == 1600415083;
        if (v51)
        {
          v122 *= *(String + __n - 1) - 48;
        }
      }

      v114 = *(*(a4 + 16) + 8 * ((v45 - v126) >> 2));
      if (*(v114 + 8) == 17)
      {
        operator new();
      }

      v25 = (__s1 + 5);
      std::string::push_back(v112, 1);
      if (v25 < v24)
      {
        break;
      }

      a3 = v106;
LABEL_243:
      a6 = v107;
      if (v25 >= v24)
      {
        goto LABEL_244;
      }
    }

    a3 = v106;
    while (1)
    {
      v52 = *(v106 - 8 * *(v106 + 8) + 8 * v25);
      if (isStringMDNode(v52, "air.render_target") || isStringMDNode(v52, "air.raster_order_group") || isStringMDNode(v52, "air.imageblock_index"))
      {
        goto LABEL_73;
      }

      if (!isStringMDNode(v52, "air.indirect_argument"))
      {
        goto LABEL_243;
      }

      v53 = v25;
      v54 = v25 + 1;
      LODWORD(__dst) = v54;
      if (parseMDInt(0, v106, &__dst, &v121))
      {
        v121 += a5;
        operator new();
      }

      v55 = *(v106 - 8 * *(v106 + 8) + 8 * v54);
      if (!v55)
      {
        v25 = v53;
        goto LABEL_74;
      }

      v56 = *v55;
      v25 = v53;
      if (v56 > 0x22 || ((0x7FFFFFFF0uLL >> v56) & 1) == 0)
      {
        goto LABEL_74;
      }

      v57 = llvm::MDString::getString(*&v55[-8 * *(v55 + 2) + 8]);
      v125 = 0;
      v119 = 0;
      if (v58 <= 24)
      {
        if (v58 > 18)
        {
          switch(v58)
          {
            case 19:
              if (*v57 == 0x69646E692E726961 && *(v57 + 8) == 0x6675625F74636572 && *(v57 + 11) == 0x7265666675625F74)
              {
LABEL_151:
                HIBYTE(v119) = 0;
                v77 = *(v114 + 2);
                if (v77 == 16 && *(**(v114 + 2) + 8) == 17)
                {
                  LODWORD(__dst) = 2;
                  HIDWORD(v124) = 0;
                  parseMDLocationIndex(v55, &__dst, &v121, &v125 + 1);
                  v78 = (__dst + 1);
                  LODWORD(__dst) = v78;
                  if (isStringMDNode(*&v55[8 * v78 + -8 * *(v55 + 2)], "air.address_space"))
                  {
                    parseMDInt("air.address_space", v55, &__dst, &v124 + 1);
                    v78 = __dst;
                  }

                  if (isStringMDNode(*&v55[8 * v78 + -8 * *(v55 + 2)], "air.arg_type_name"))
                  {
                    LODWORD(__dst) = v78 + 1;
                    v79 = llvm::MDString::getString(*&v55[8 * (v78 + 1) + -8 * *(v55 + 2)]);
                    v81 = v80 >= 5 && *v79 == 1634890337 && *(v79 + 4) == 121;
                    HIBYTE(v119) = v81;
                  }

                  AGCArgumentBuffer::unwrapArray();
                }

                if (v77 == 16)
                {
                  operator new();
                }

                v124 = 0;
                __dst = 0;
                LOBYTE(v118) = 0;
                BYTE4(v117) = 0;
                if ((v77 & 0xFE) == 0x12)
                {
                  v77 = *(**(v114 + 2) + 8);
                }

                *a1 &= parseMDBuffer(v55, v77 >> 8, &v121, &v125 + 1, &v124 + 1, &v124, &__dst, &v117 + 4, &v119, &v125, &v118);
                v121 += a5;
                operator new();
              }

              break;
            case 21:
              if (*v57 == 0x69646E692E726961 && *(v57 + 8) == 0x6E6F635F74636572 && *(v57 + 13) == 0x746E6174736E6F63)
              {
                v93 = isStringMDNode(*&v55[-8 * *(v55 + 2) + 8], "air.indirect_constant");
                v94 = v93;
                if (v93)
                {
                  v95 = *(v55 + 2);
                  LODWORD(__dst) = 2;
                  if (v95 >= 3)
                  {
                    do
                    {
                      v96 = parseMDLocationIndex(v55, &__dst, &v121, &v125 + 1);
                      v97 = __dst;
                      if ((v96 & 1) == 0)
                      {
                        v97 = __dst + 1;
                        LODWORD(__dst) = __dst + 1;
                      }
                    }

                    while (v97 < v95);
                  }
                }

                *a1 &= v94;
                v121 += a5;
                operator new();
              }

              break;
            case 23:
              v65 = *v57 == 0x747065642E726961 && *(v57 + 8) == 0x69636E6574735F68;
              if (v65 && *(v57 + 15) == 0x65746174735F6C69)
              {
                goto LABEL_222;
              }

              break;
          }
        }

        else
        {
          switch(v58)
          {
            case 10:
              if (*v57 == 0x666675622E726961 && *(v57 + 8) == 29285)
              {
                goto LABEL_151;
              }

              v70 = *v57 == 0x736E65742E726961 && *(v57 + 8) == 29295;
              v24 = v109;
              if (v70)
              {
                v124 = 0;
                v118 = 0;
                v117 = 0;
                __dst = 0;
                v116 = 0;
                v115 = 0;
                *a1 &= parseMDBuffer(v55, 1, &v124 + 1, &v124, &v118, &v117 + 1, &__dst, &v116 + 1, &v116, &v117, &v115);
                if (v124 >= 2)
                {
                  AGCArgumentBuffer::unwrapArray();
                }

                operator new();
              }

              goto LABEL_73;
            case 11:
              if (*v57 == 0x747865742E726961 && *(v57 + 3) == 0x657275747865742ELL)
              {
                LOBYTE(__dst) = 0;
                BYTE4(v124) = 0;
                *a1 &= parseMDTexture(v55, &v121, &v125 + 1, &__dst, &v119 + 1, &v124 + 4, &v119, &v125);
                v121 += a5;
                if (HIBYTE(v119) == 1)
                {
                  AGCArgumentBuffer::unwrapArray();
                }

                operator new();
              }

              v85 = *v57 == 0x706D61732E726961 && *(v57 + 3) == 0x72656C706D61732ELL;
              v24 = v109;
              if (v85)
              {
                *a1 &= parseMDSampler(v55, &v121, &v125 + 1, &v119 + 1);
                v121 += a5;
                if (HIBYTE(v119) == 1)
                {
                  AGCArgumentBuffer::unwrapArray();
                }

                operator new();
              }

              goto LABEL_73;
            case 18:
              v59 = *v57 == 0x6D6D6F632E726961 && *(v57 + 8) == 0x666675625F646E61;
              if (v59 && *(v57 + 16) == 29285)
              {
                goto LABEL_222;
              }

              break;
          }
        }

        goto LABEL_221;
      }

      if (v58 > 30)
      {
        switch(v58)
        {
          case 31:
            v61 = *(v57 + 23);
            v63 = *v57 == 0x65746E692E726961 && *(v57 + 8) == 0x6E6F697463657372 && *(v57 + 16) == 0x6F6974636E75665FLL;
            v64 = 0x656C6261745F6E6FLL;
LABEL_165:
            if (v63 && v61 == v64)
            {
              goto LABEL_222;
            }

            break;
          case 35:
            v67 = "air.instance_acceleration_structure";
            v68 = 35;
LABEL_220:
            if (!memcmp(v57, v67, v68))
            {
              goto LABEL_222;
            }

            break;
          case 36:
            v67 = "air.primitive_acceleration_structure";
            v68 = 36;
            goto LABEL_220;
        }
      }

      else
      {
        switch(v58)
        {
          case 25:
            v71 = *(v57 + 24);
            v73 = *v57 == 0x646E65722E726961 && *(v57 + 8) == 0x6C657069705F7265 && *(v57 + 16) == 0x746174735F656E69;
            v74 = 101;
LABEL_199:
            if (v73 && v71 == v74)
            {
              goto LABEL_222;
            }

            break;
          case 26:
            if (*v57 == 0x706D6F632E726961 && *(v57 + 8) == 0x657069705F657475 && *(v57 + 16) == 0x6174735F656E696CLL && *(v57 + 24) == 25972)
            {
LABEL_222:
              *a1 &= parseMDOpaqueTypes(v55, &v121, &v125 + 1, &v119 + 1);
              v121 += a5;
              if (HIBYTE(v119) == 1)
              {
                AGCArgumentBuffer::unwrapArray();
              }

              operator new();
            }

            v71 = *(v57 + 24);
            v73 = *v57 == 0x697369762E726961 && *(v57 + 8) == 0x636E75665F656C62 && *(v57 + 16) == 0x6261745F6E6F6974;
            v74 = 25964;
            goto LABEL_199;
          case 27:
            v61 = *(v57 + 19);
            v63 = *v57 == 0x69646E692E726961 && *(v57 + 8) == 0x6D6F635F74636572 && *(v57 + 16) == 0x6675625F646E616DLL;
            v64 = 0x7265666675625F64;
            goto LABEL_165;
        }
      }

LABEL_221:
      v24 = v109;
LABEL_73:
      v25 = (v25 + 2);
LABEL_74:
      if (v25 >= v24)
      {
        goto LABEL_243;
      }
    }
  }

LABEL_244:
  std::string::push_back(v112, 125);
  if (a1[1])
  {
    v99 = a1[31];
    if ((v99 & 0x80u) == 0)
    {
      v100 = v112;
    }

    else
    {
      v100 = *(a1 + 1);
    }

    if ((v99 & 0x80u) != 0)
    {
      v99 = *(a1 + 2);
    }

    if (v99)
    {
      v101 = -1;
      do
      {
        v102 = v100->__r_.__value_.__s.__data_[0];
        v100 = (v100 + 1);
        v101 = crc_table[v102 ^ ((v101 & 0xFF00) >> 8)] ^ (v101 << 8);
        --v99;
      }

      while (v99);
      v103 = v101 | 0x7FE00000;
    }

    else
    {
      v103 = 2145452031;
    }

    *a2 = v103;
  }

  a7[36] = vadd_s32(a7[36], -1);
  if (v126 != v128)
  {
    free(v126);
  }

  v104 = *MEMORY[0x277D85DE8];
}

uint64_t *AGCArgumentBuffer::ResourceTracker::popArray(uint64_t *this)
{
  v1 = *this;
  v2 = *(this + 2);
  v3 = *this + 32 * v2;
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  v6 = *(v3 - 20);
  v7 = *(v3 - 16);
  v8 = *(v3 - 12);
  v9 = *(v4 + 24);
  *(this + 74) /= v9;
  v10 = v8 - v6 + 1;
  *(v4 + 28) = v10;
  v11 = (v2 - 1);
  *(this + 2) = v11;
  if (v11)
  {
    v12 = v1 + 32 * v11;
    if ((*(v12 - 16) & 1) == 0)
    {
      *(v12 - 20) = v6;
      *(v12 - 16) = v7;
      v9 = *(v4 + 24);
      v10 = *(v4 + 28);
    }

    v13 = v6 + v10 * v9 - 1;
    if (*(v12 - 12) > v13)
    {
      v13 = *(v12 - 12);
    }

    *(v12 - 12) = v13;
  }

  if (v5)
  {
    v14 = -2;
  }

  else
  {
    v14 = -1;
  }

  *(this + 73) += v14;
  return this;
}

uint64_t AGCArgumentBuffer::ResourceTracker::addResource(uint64_t this, AGCArgumentBuffer::Resource *a2, unsigned int *a3)
{
  v4 = *(this + 8);
  if (v4 == 1)
  {
    v5 = *(a2 + 6);
  }

  else
  {
    v15 = *this + 32 * v4;
    v5 = *(a2 + 6);
    v16 = 1;
    do
    {
      v18 = *(v15 - 32);
      v15 -= 32;
      v17 = v18;
      if (v5 >= *(a2 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v3 = v3 & 0xFFFFFFFF00000000 | v16;
      v19 = (*(a2 + 2) + 16 * v5);
      *v19 = v17;
      v19[1] = v3;
      v5 = *(a2 + 6) + 1;
      *(a2 + 6) = v5;
      v16 *= *(*v15 + 24);
    }

    while (v15 != *this + 32);
  }

  v6 = *(a2 + 2);
  v7 = (v6 + 16 * v5 - 16);
  if (v5)
  {
    v8 = v7 > v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v6 + 16;
    do
    {
      v10 = *(v9 - 16);
      *(v9 - 16) = *v7;
      *v7-- = v10;
      v11 = v9 >= v7;
      v9 += 16;
    }

    while (!v11);
  }

  v12 = *(this + 8);
  v13 = *this + 32 * v12;
  if (v12 == 1)
  {
    v14 = *this + 32;
  }

  else
  {
    v20 = 32 * v12 - 32;
    v14 = *this + 32;
    while (*(v14 + 24) != *(this + 288))
    {
      v14 += 32;
      v20 -= 32;
      if (!v20)
      {
        v14 = v13;
        break;
      }
    }
  }

  *(a2 + 24) = (v14 - (*this + 32)) >> 5;
  v21 = *(a2 + 58);
  if ((*(v13 - 16) & 1) == 0)
  {
    *(v13 - 20) = v21;
    *(v13 - 16) = 1;
  }

  if (*(v13 - 12) > v21)
  {
    v21 = *(v13 - 12);
  }

  *(v13 - 12) = v21;
  v22 = *(this + 296);
  *(a2 + 59) = *a3;
  *(a2 + 60) = v22;
  *a3 += v22;
  return this;
}

void bufferTypeMap(void)
{
  v183 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:nn200100]<0>(v3, "float");
    v4 = 3;
    std::string::basic_string[abi:nn200100]<0>(v5, "float2");
    v6 = 4;
    std::string::basic_string[abi:nn200100]<0>(v7, "float3");
    v8 = 5;
    std::string::basic_string[abi:nn200100]<0>(v9, "float4");
    v10 = 6;
    std::string::basic_string[abi:nn200100]<0>(v11, "packed_float");
    v12 = 3;
    std::string::basic_string[abi:nn200100]<0>(v13, "packed_float2");
    v14 = 4;
    std::string::basic_string[abi:nn200100]<0>(v15, "packed_float3");
    v16 = 5;
    std::string::basic_string[abi:nn200100]<0>(v17, "packed_float4");
    v18 = 6;
    std::string::basic_string[abi:nn200100]<0>(v19, "half");
    v20 = 16;
    std::string::basic_string[abi:nn200100]<0>(v21, "half2");
    v22 = 17;
    std::string::basic_string[abi:nn200100]<0>(v23, "half3");
    v24 = 18;
    std::string::basic_string[abi:nn200100]<0>(v25, "half4");
    v26 = 19;
    std::string::basic_string[abi:nn200100]<0>(v27, "packed_half");
    v28 = 16;
    std::string::basic_string[abi:nn200100]<0>(v29, "packed_half2");
    v30 = 17;
    std::string::basic_string[abi:nn200100]<0>(v31, "packed_half3");
    v32 = 18;
    std::string::basic_string[abi:nn200100]<0>(v33, "packed_half4");
    v34 = 19;
    std::string::basic_string[abi:nn200100]<0>(v35, "int");
    v36 = 29;
    std::string::basic_string[abi:nn200100]<0>(v37, "int2");
    v38 = 30;
    std::string::basic_string[abi:nn200100]<0>(v39, "int3");
    v40 = 31;
    std::string::basic_string[abi:nn200100]<0>(v41, "int4");
    v42 = 32;
    std::string::basic_string[abi:nn200100]<0>(v43, "packed_int");
    v44 = 29;
    std::string::basic_string[abi:nn200100]<0>(v45, "packed_int2");
    v46 = 30;
    std::string::basic_string[abi:nn200100]<0>(v47, "packed_int3");
    v48 = 31;
    std::string::basic_string[abi:nn200100]<0>(v49, "packed_int4");
    v50 = 32;
    std::string::basic_string[abi:nn200100]<0>(v51, "uint");
    v52 = 33;
    std::string::basic_string[abi:nn200100]<0>(v53, "uint2");
    v54 = 34;
    std::string::basic_string[abi:nn200100]<0>(v55, "uint3");
    v56 = 35;
    std::string::basic_string[abi:nn200100]<0>(v57, "uint4");
    v58 = 36;
    std::string::basic_string[abi:nn200100]<0>(v59, "packed_uint");
    v60 = 33;
    std::string::basic_string[abi:nn200100]<0>(v61, "packed_uint2");
    v62 = 34;
    std::string::basic_string[abi:nn200100]<0>(v63, "packed_uint3");
    v64 = 35;
    std::string::basic_string[abi:nn200100]<0>(v65, "packed_uint4");
    v66 = 36;
    std::string::basic_string[abi:nn200100]<0>(v67, "short");
    v68 = 37;
    std::string::basic_string[abi:nn200100]<0>(v69, "short2");
    v70 = 38;
    std::string::basic_string[abi:nn200100]<0>(v71, "short3");
    v72 = 39;
    std::string::basic_string[abi:nn200100]<0>(v73, "short4");
    v74 = 40;
    std::string::basic_string[abi:nn200100]<0>(v75, "packed_short");
    v76 = 37;
    std::string::basic_string[abi:nn200100]<0>(v77, "packed_short2");
    v78 = 38;
    std::string::basic_string[abi:nn200100]<0>(v79, "packed_short3");
    v80 = 39;
    std::string::basic_string[abi:nn200100]<0>(v81, "packed_short4");
    v82 = 40;
    std::string::basic_string[abi:nn200100]<0>(v83, "ushort");
    v84 = 41;
    std::string::basic_string[abi:nn200100]<0>(v85, "ushort2");
    v86 = 42;
    std::string::basic_string[abi:nn200100]<0>(v87, "ushort3");
    v88 = 43;
    std::string::basic_string[abi:nn200100]<0>(v89, "ushort4");
    v90 = 44;
    std::string::basic_string[abi:nn200100]<0>(v91, "packed_ushort");
    v92 = 41;
    std::string::basic_string[abi:nn200100]<0>(v93, "packed_ushort2");
    v94 = 42;
    std::string::basic_string[abi:nn200100]<0>(v95, "packed_ushort3");
    v96 = 43;
    std::string::basic_string[abi:nn200100]<0>(v97, "packed_ushort4");
    v98 = 44;
    std::string::basic_string[abi:nn200100]<0>(v99, "char");
    v100 = 45;
    std::string::basic_string[abi:nn200100]<0>(v101, "char2");
    v102 = 46;
    std::string::basic_string[abi:nn200100]<0>(v103, "char3");
    v104 = 47;
    std::string::basic_string[abi:nn200100]<0>(v105, "char4");
    v106 = 48;
    std::string::basic_string[abi:nn200100]<0>(v107, "packed_char");
    v108 = 45;
    std::string::basic_string[abi:nn200100]<0>(v109, "packed_char2");
    v110 = 46;
    std::string::basic_string[abi:nn200100]<0>(v111, "packed_char3");
    v112 = 47;
    std::string::basic_string[abi:nn200100]<0>(v113, "packed_char4");
    v114 = 48;
    std::string::basic_string[abi:nn200100]<0>(v115, "uchar");
    v116 = 49;
    std::string::basic_string[abi:nn200100]<0>(v117, "uchar2");
    v118 = 50;
    std::string::basic_string[abi:nn200100]<0>(v119, "uchar3");
    v120 = 51;
    std::string::basic_string[abi:nn200100]<0>(v121, "uchar4");
    v122 = 52;
    std::string::basic_string[abi:nn200100]<0>(v123, "packed_uchar");
    v124 = 49;
    std::string::basic_string[abi:nn200100]<0>(v125, "packed_uchar2");
    v126 = 50;
    std::string::basic_string[abi:nn200100]<0>(v127, "packed_uchar3");
    v128 = 51;
    std::string::basic_string[abi:nn200100]<0>(v129, "packed_uchar4");
    v130 = 52;
    std::string::basic_string[abi:nn200100]<0>(v131, "BOOL");
    v132 = 53;
    std::string::basic_string[abi:nn200100]<0>(v133, "BOOL2");
    v134 = 54;
    std::string::basic_string[abi:nn200100]<0>(v135, "BOOL3");
    v136 = 55;
    std::string::basic_string[abi:nn200100]<0>(v137, "BOOL4");
    v138 = 56;
    std::string::basic_string[abi:nn200100]<0>(v139, "packed_BOOL");
    v140 = 53;
    std::string::basic_string[abi:nn200100]<0>(v141, "packed_BOOL2");
    v142 = 54;
    std::string::basic_string[abi:nn200100]<0>(v143, "packed_BOOL3");
    v144 = 55;
    std::string::basic_string[abi:nn200100]<0>(v145, "packed_BOOL4");
    v146 = 56;
    std::string::basic_string[abi:nn200100]<0>(v147, "float2x2");
    v148 = 7;
    std::string::basic_string[abi:nn200100]<0>(v149, "float2x3");
    v150 = 8;
    std::string::basic_string[abi:nn200100]<0>(v151, "float2x4");
    v152 = 9;
    std::string::basic_string[abi:nn200100]<0>(v153, "float3x2");
    v154 = 10;
    std::string::basic_string[abi:nn200100]<0>(v155, "float3x3");
    v156 = 11;
    std::string::basic_string[abi:nn200100]<0>(v157, "float3x4");
    v158 = 12;
    std::string::basic_string[abi:nn200100]<0>(v159, "float4x2");
    v160 = 13;
    std::string::basic_string[abi:nn200100]<0>(v161, "float4x3");
    v162 = 14;
    std::string::basic_string[abi:nn200100]<0>(v163, "float4x4");
    v164 = 15;
    std::string::basic_string[abi:nn200100]<0>(v165, "half2x2");
    v166 = 20;
    std::string::basic_string[abi:nn200100]<0>(v167, "half2x3");
    v168 = 21;
    std::string::basic_string[abi:nn200100]<0>(v169, "half2x4");
    v170 = 22;
    std::string::basic_string[abi:nn200100]<0>(v171, "half3x2");
    v172 = 23;
    std::string::basic_string[abi:nn200100]<0>(v173, "half3x3");
    v174 = 24;
    std::string::basic_string[abi:nn200100]<0>(v175, "half3x4");
    v176 = 25;
    std::string::basic_string[abi:nn200100]<0>(v177, "half4x2");
    v178 = 26;
    std::string::basic_string[abi:nn200100]<0>(v179, "half4x3");
    v180 = 27;
    std::string::basic_string[abi:nn200100]<0>(v181, "half4x4");
    v1 = 0;
    v182 = 28;
    qword_27C8D88D0 = 0;
    qword_27C8D88C8 = 0;
    bufferTypeMap(void)::localBufferTypeMap = &qword_27C8D88C8;
    do
    {
      std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLCompilerDataType> const&>(&bufferTypeMap(void)::localBufferTypeMap, &qword_27C8D88C8, &v3[v1]);
      v1 += 32;
    }

    while (v1 != 2880);
    v2 = 2880;
    do
    {
      if (v3[v2 - 9] < 0)
      {
        operator delete(*&v3[v2 - 32]);
      }

      v2 -= 32;
    }

    while (v2);
    __cxa_atexit(std::map<std::string,MTLCompilerDataType>::~map[abi:nn200100], &bufferTypeMap(void)::localBufferTypeMap, &dword_20E4E1000);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100]((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void pixelTypeMap(void)
{
  v35 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:nn200100]<0>(v3, "r8unorm");
    v4 = 62;
    std::string::basic_string[abi:nn200100]<0>(v5, "r8snorm");
    v6 = 63;
    std::string::basic_string[abi:nn200100]<0>(v7, "r16unorm");
    v8 = 64;
    std::string::basic_string[abi:nn200100]<0>(v9, "r16snorm");
    v10 = 65;
    std::string::basic_string[abi:nn200100]<0>(v11, "rg8unorm");
    v12 = 66;
    std::string::basic_string[abi:nn200100]<0>(v13, "rg8snorm");
    v14 = 67;
    std::string::basic_string[abi:nn200100]<0>(v15, "rg16unorm");
    v16 = 68;
    std::string::basic_string[abi:nn200100]<0>(v17, "rg16snorm");
    v18 = 69;
    std::string::basic_string[abi:nn200100]<0>(v19, "rgba8unorm");
    v20 = 70;
    std::string::basic_string[abi:nn200100]<0>(v21, "srgba8unorm");
    v22 = 71;
    std::string::basic_string[abi:nn200100]<0>(v23, "rgba8snorm");
    v24 = 72;
    std::string::basic_string[abi:nn200100]<0>(v25, "rgba16unorm");
    v26 = 73;
    std::string::basic_string[abi:nn200100]<0>(v27, "rgba16snorm");
    v28 = 74;
    std::string::basic_string[abi:nn200100]<0>(v29, "rgb10a2");
    v30 = 75;
    std::string::basic_string[abi:nn200100]<0>(v31, "rg11b10f");
    v32 = 76;
    std::string::basic_string[abi:nn200100]<0>(v33, "rgb9e5");
    v1 = 0;
    v34 = 77;
    qword_27C8D9768 = 0;
    qword_27C8D9760 = 0;
    pixelTypeMap(void)::localPixelFormatTypeMap = &qword_27C8D9760;
    do
    {
      std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLCompilerDataType> const&>(&pixelTypeMap(void)::localPixelFormatTypeMap, &qword_27C8D9760, &v3[v1]);
      v1 += 32;
    }

    while (v1 != 512);
    v2 = 512;
    do
    {
      if (v3[v2 - 9] < 0)
      {
        operator delete(*&v3[v2 - 32]);
      }

      v2 -= 32;
    }

    while (v2);
    __cxa_atexit(std::map<std::string,MTLCompilerDataType>::~map[abi:nn200100], &pixelTypeMap(void)::localPixelFormatTypeMap, &dword_20E4E1000);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void AGCArgumentBuffer::Tensor::~Tensor(AGCArgumentBuffer::Tensor *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::Sampler::~Sampler(AGCArgumentBuffer::Sampler *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::Texture::~Texture(AGCArgumentBuffer::Texture *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::DummyStruct::~DummyStruct(AGCArgumentBuffer::DummyStruct *this)
{
  *this = &unk_28257C120;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C120;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void AGCArgumentBuffer::Buffer::~Buffer(AGCArgumentBuffer::Buffer *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLCompilerDataType> const&>(void *result, void *a2, void *a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, a2 + 4), result))
  {
    v7 = *a2;
    if (*v5 == a2)
    {
      v9 = a2;
LABEL_17:
      if (!v7)
      {
        v16 = a2;
        goto LABEL_31;
      }

      v16 = v9;
      v12 = v9 + 1;
LABEL_30:
      if (!*v12)
      {
        goto LABEL_31;
      }

      return result;
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = v13[2];
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v9 + 4, a3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:
    result = std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(v5, &v16, a3);
    v12 = result;
    goto LABEL_30;
  }

  result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2 + 4, a3);
  if (result)
  {
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = a2;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 == v6 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, v12 + 4), result))
    {
      if (v10)
      {
        v16 = v12;
      }

      else
      {
        v16 = a2;
        v12 = a2 + 1;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v16 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void AGCArgumentBuffer::Struct::~Struct(char **this)
{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);
}

char **llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void AGCArgumentBuffer::Root::~Root(char **this)
{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);
}

void AGCArgumentBuffer::Array::~Array(AGCArgumentBuffer::Array *this)
{
  *this = &unk_28257C140;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C140;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t AGCArgumentBuffer::AGCArgumentBuffer(uint64_t a1, AGCArgumentBuffer::Struct *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v38 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a7;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  v9 = AGCArgumentBuffer::parseMDRoot(a1, a5, a6);
  *(a1 + 32) = v9;
  if (*(a2 + 1869) == 1)
  {
    v11 = *(a1 + 8);
    v16[0] = v9;
    v16[1] = a2;
    v16[2] = v11;
    v16[3] = llvm::Type::getInt32Ty(v11, v10);
    v16[4] = llvm::Type::getInt64Ty(v11, v12);
    v17 = 0;
    v18 = 0;
    v19 = v21;
    v20 = 0x400000000;
    v22 = v24;
    v23 = 0x400000000;
    v25 = v27;
    v26 = 0x800000000;
    v28 = v30;
    v29 = 0x800000000;
    v31[0] = v32;
    v31[1] = 0x400000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, 0);
    v33[0] = v34;
    v33[1] = 0x400000000;
    v35 = v37;
    v36 = 0x400000000;
    v37[8] = 0;
    llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::push_back(&v25, v33);
    if (v35 != v37)
    {
      free(v35);
    }

    if (v33[0] != v34)
    {
      free(v33[0]);
    }

    v17 = 0;
    v18 = 0;
    v13 = v25 + 104 * v26;
    *(v13 - 2) = *(v13 - 24);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v13 - 104), 0);
    AGCArgumentBuffer::Tier1TypeBuilder::buildStruct(v16, v16[0]);
    *(a1 + 40) = *(*(v25 + 13 * v26 - 13) + 8);
    if (v31[0] != v32)
    {
      free(v31[0]);
    }

    if (v28 != v30)
    {
      free(v28);
    }

    llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::destroy_range(v25, v25 + 104 * v26);
    if (v25 != v27)
    {
      free(v25);
    }

    if (v22 != v24)
    {
      free(v22);
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

AGCArgumentBuffer *AGCArgumentBuffer::lookup(AGCArgumentBuffer *this, const llvm::GetElementPtrInst *a2, const llvm::Use **a3, BOOL *a4)
{
  *a4 = 1;
  v6 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF) + 64);
  if (v6 >= a2)
  {
LABEL_48:
    *a3 = v6;
    return this;
  }

  v9 = 1;
  while (1)
  {
    v10 = *v6;
    v11 = *(*v6 + 16);
    if (*v6 && v11 == 16)
    {
      v14 = *(v10 + 32);
      v15 = v14 > 0x40 ? llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) == v14 : *(v10 + 24) == 0;
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }

    v9 &= v13;
    *a4 = v9;
    v16 = *(this + 2);
    if (v16 - 3 < 0xFFFFFFFE || this == 0)
    {
      break;
    }

    if (v11 != 16)
    {
      return 0;
    }

    v20 = (v10 + 24);
    if (*(v10 + 32) >= 0x41u)
    {
      v20 = *v20;
    }

    v21 = *v20;
    if (v21 >= *(this + 6))
    {
      return 0;
    }

    this = *(*(this + 2) + 8 * v21);
    if (!this)
    {
      return this;
    }

LABEL_44:
    v6 = (v6 + 32);
    if (v6 >= a2)
    {
      goto LABEL_48;
    }
  }

  if (v16 == 3 && this != 0)
  {
    goto LABEL_43;
  }

  if (!v16 && this)
  {
    if (v11 != 16)
    {
      return 0;
    }

    v19 = *(v10 + 32);
    if (v19 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) != v19)
      {
        return 0;
      }
    }

    else if (*(v10 + 24))
    {
      return 0;
    }

LABEL_43:
    this = *(this + 2);
    goto LABEL_44;
  }

  if (v16 > 9 || ((1 << v16) & 0x260) == 0)
  {
    goto LABEL_48;
  }

  if (v11 == 16)
  {
    v22 = *(v10 + 32);
    if (v22 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) != v22)
      {
        return 0;
      }
    }

    else if (*(v10 + 24))
    {
      return 0;
    }

    goto LABEL_44;
  }

  return 0;
}

llvm::Value *AGCArgumentBuffer::Resource::getResourceId(uint64_t a1, llvm::Type **a2, uint64_t a3)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  Add = llvm::ConstantInt::get();
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 16);
    v10 = &v9[4 * v8];
    do
    {
      v11 = *(a3 + 32 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * *(*v9 + 32));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v6);
      v20 = 257;
      ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc(a2, v11, Int32Ty, v19);
      v14 = v9[2];
      llvm::Type::getInt32Ty(a2[8], v15);
      v16 = llvm::ConstantInt::get();
      v20 = 257;
      Mul = llvm::IRBuilderBase::CreateMul(a2, v16, ZExtOrTrunc, v19);
      v20 = 257;
      Add = llvm::IRBuilderBase::CreateAdd(a2, Add, Mul, v19);
      v9 += 4;
    }

    while (v9 != v10);
  }

  return Add;
}

unint64_t AGCArgumentBuffer::Resource::getResourceIdBounds(AGCArgumentBuffer::Resource *this, llvm::GetElementPtrInst *a2)
{
  v2 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  v5 = *(v2 + 4);
  v4 = v2 + 32;
  v3 = v5;
  v6 = *(v5 + 16);
  if (v5)
  {
    v7 = v6 == 16;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 32);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v3 + 24)) != v9)
    {
      goto LABEL_8;
    }
  }

  else if (*(v3 + 24))
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    return v11 | v10;
  }

  v12 = *(this + 6);
  if (v12)
  {
    LODWORD(v11) = 0;
    v13 = 0;
    v14 = 16 * v12;
    v15 = (*(this + 2) + 8);
    do
    {
      v16 = *(v15 - 1);
      v17 = *&v4[32 * *(v16 + 32)];
      if (v17)
      {
        v18 = *(v17 + 16) == 16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = (v17 + 24);
        if (*(v17 + 32) >= 0x41u)
        {
          v19 = *v19;
        }

        LODWORD(v11) = v11 + *v15 * *v19;
      }

      else
      {
        v13 += (*(v16 + 24) - 1) * *v15;
      }

      v15 += 4;
      v14 -= 16;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
    LODWORD(v11) = 0;
  }

  v10 = v11 & 0xFFFFFF00 | ((v11 + v13) << 32);
  v11 = v11;
  return v11 | v10;
}

llvm::Value *AGCArgumentBuffer::Resource::getResourceArrayIndex(uint64_t a1, llvm::Type **a2, void *a3)
{
  v6 = *(a1 + 100);
  llvm::Type::getInt32Ty(a2[8], a2);
  Add = llvm::ConstantInt::get();
  v9 = *(a1 + 96);
  if (v9 != *(a1 + 24))
  {
    v10 = (*(a1 + 16) + 16 * v9);
    do
    {
      v11 = *(*a3 + 8 * *(*v10 + 32));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v7);
      v20 = 257;
      ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc(a2, v11, Int32Ty, v19);
      v14 = v10[2];
      llvm::Type::getInt32Ty(a2[8], v15);
      v16 = llvm::ConstantInt::get();
      v20 = 257;
      Mul = llvm::IRBuilderBase::CreateMul(a2, ZExtOrTrunc, v16, v19);
      v20 = 257;
      Add = llvm::IRBuilderBase::CreateAdd(a2, Add, Mul, v19);
      v10 += 4;
    }

    while (v10 != (*(a1 + 16) + 16 * *(a1 + 24)));
  }

  return Add;
}

llvm::Value *AGCArgumentBuffer::Buffer::remapToTier1Indices(void *a1, uint64_t a2, llvm::Type **a3, void *a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (*(a2 + 112))
  {
    llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1, a2 + 104);
  }

  v8 = *(a2 + 192);
  if (v8)
  {
    v9 = *(a2 + 184);
    v10 = &v9[2 * v8];
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      *(*a1 + 8 * v12) = *(*a4 + 8 * v11);
    }

    while (v9 != v10);
  }

  result = AGCArgumentBuffer::Resource::getResourceArrayIndex(a2, a3, a4);
  *(*a1 + 8 * *(a1 + 2) - 8) = result;
  return result;
}

uint64_t AGCArgumentBuffer::Sampler::typeSet(AGCArgumentBuffer::Sampler *this, AGCLLVMTargetLowerer *a2, llvm::LLVMContext *a3)
{
  *this = this + 16;
  *(this + 1) = 0x300000000;
  Int64Ty = llvm::Type::getInt64Ty(a3, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 455));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v7);
  v9 = llvm::Type::getInt64Ty(a3, v8);

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v9);
}

uint64_t AGCArgumentBuffer::Texture::typeSet(AGCArgumentBuffer::Texture *this, AGCLLVMTargetLowerer *a2, llvm::LLVMContext *a3)
{
  *this = this + 16;
  *(this + 1) = 0x400000000;
  Int64Ty = llvm::Type::getInt64Ty(a3, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 454));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v7);
  v9 = llvm::Type::getInt64Ty(a3, v8);
  v10 = llvm::ArrayType::get(v9, *(a2 + 454));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v10);
  Int32Ty = llvm::Type::getInt32Ty(a3, v11);
  v13 = llvm::ArrayType::get(Int32Ty, *(a2 + 468));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v13);
  v15 = llvm::Type::getInt64Ty(a3, v14);

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v15);
}

void *AGCArgumentBuffer::Constant::remapToTier1Indices(void *result, uint64_t a2, void *a3)
{
  *result = result + 2;
  result[1] = 0x800000000;
  if (*(a2 + 112))
  {
    result = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(result, a2 + 104);
  }

  v5 = *(a2 + 192);
  if (v5)
  {
    v6 = *(a2 + 184);
    v7 = &v6[2 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v6 += 2;
      *(*result + 8 * v9) = *(*a3 + 8 * v8);
    }

    while (v6 != v7);
  }

  return result;
}

llvm::Value *AGCLLVMAirBuiltins::buildSimdBarrier(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (*(v2 + 1048))
  {
    v3 = strlen(*(v2 + 1048));
  }

  v4 = *(a1 + 144);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

std::string *AGCLLVMAirBuiltins::buildAtomic(uint64_t a1, uint64_t *a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v4 = **a2;
  v5 = *(v4 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) == 0x100)
  {
    v6 = *(a1 + 944);
    if (v6)
    {
      *(v6 + 9) = 1;
    }
  }

  else
  {
    v7 = v5 & 0xFFFFFF00;
    v8 = *(a1 + 944);
    if (v7 == 2048)
    {
      if (v8)
      {
        *(v8 + 8) = 257;
      }
    }

    else if (v8)
    {
      *(v8 + 8) = 1;
    }
  }

  {
    AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map = 0;
    *&dword_28117DBD0 = 0;
    qword_28117DBD8 = 0x2000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirBuiltins::initializeAtomicMap(void)::flag, memory_order_acquire) != -1)
  {
    v163 = v152;
    __src = &v163;
    std::__call_once(&AGCLLVMAirBuiltins::initializeAtomicMap(void)::flag, &__src, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeAtomicMap(void)::$_0 &&>>);
  }

  Key = llvm::StringMapImpl::FindKey();
  v11 = Key;
  if (Key == -1)
  {
    v11 = dword_28117DBD0;
  }

  v12 = *(AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map + 8 * v11);
  if (*(v12 + 24) == 1 && (*(*(a1 + 464) + 1920) & 1) == 0)
  {
    v58 = (*(a1 + 944) + *(**(a1 + 944) - 24));
    v59 = "Unsupported batched atomic operation for given target.";
LABEL_56:
    std::string::append(v58 + 69, v59);
    goto LABEL_75;
  }

  AlignedLoad = 0;
  v14 = *(v12 + 8);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (!*(v12 + 24))
      {
        v84 = *a2;
        v85 = *(a1 + 72);
        if (*(v12 + 16))
        {
          FloatTy = llvm::Type::getFloatTy(v85, v10);
        }

        else
        {
          FloatTy = llvm::Type::getInt32Ty(v85, v10);
        }

        v97 = FloatTy;
        v98 = a2[1];
        v99 = a2[2];
        v100 = (v98 + 24);
        if (*(v98 + 32) >= 0x41u)
        {
          v100 = *v100;
        }

        v101 = *v100 - 2;
        if (v101 >= 4)
        {
          v102 = 256;
        }

        else
        {
          v102 = (v101 << 7) + 512;
        }

        v103 = (v99 + 24);
        if (*(v99 + 32) >= 0x41u)
        {
          v103 = *v103;
        }

        v104 = (*v103 - 1) < 2;
        v105 = *v84;
        v106 = *(*v84 + 2);
        if ((v106 & 0xFE) == 0x12)
        {
          v106 = *(**(v105 + 2) + 8);
        }

        if ((v106 & 0xFFFFFF00) == 0x300 || v106 <= 0xFF)
        {
          v166 = 257;
          llvm::Type::isOpaquePointerTy(v105);
          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v97, v84, 0, &v163);
          *(AlignedLoad + 18) = *(AlignedLoad + 18) & 0xFC7F | v102;
          *(AlignedLoad + 60) = v104;
          setVolatility<llvm::AtomicRMWInst>(AlignedLoad, a2[3]);
        }

        else
        {
          v117 = *(a1 + 464);
          v139 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v140, (a1 + 8));
          v141 = *(a1 + 104);
          Cast = (*(*v117 + 64))(v117, &v139, v84, v99);
          v119 = v140;
          if (v140)
          {
            llvm::MetadataTracking::untrack();
          }

          v120 = *(a1 + 72);
          if (*(v12 + 16))
          {
            Int32Ty = llvm::Type::getFloatTy(v120, v119);
          }

          else
          {
            Int32Ty = llvm::Type::getInt32Ty(v120, v119);
          }

          v125 = Int32Ty;
          if (Int32Ty == *(a1 + 168))
          {
            v127 = *(a1 + 200);
            if ((*(*Cast + 2) & 0xFE) == 0x12)
            {
              v128 = *(**(*Cast + 2) + 8);
            }

            v129 = llvm::PointerType::get();
            v166 = 257;
            Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, Cast, v129, &v163);
            v126 = *(a1 + 200);
          }

          else
          {
            v126 = Int32Ty;
          }

          v166 = 257;
          llvm::Type::isOpaquePointerTy(*Cast);
          v130 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v126, Cast, 0, &v163);
          *(v130 + 18) = *(v130 + 18) & 0xFC7F | v102;
          *(v130 + 60) = v104;
          setVolatility<llvm::AtomicRMWInst>(v130, a2[3]);
          v166 = 257;
          AlignedLoad = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v130, v125, &v163);
        }

        goto LABEL_138;
      }

      goto LABEL_75;
    }

    if (v14 != 3)
    {
LABEL_138:
      v122 = *MEMORY[0x277D85DE8];
      return AlignedLoad;
    }

    if (*(v12 + 24))
    {
LABEL_75:
      AlignedLoad = 0;
      *(a1 + 960) = 0;
      goto LABEL_138;
    }

    v40 = *a2;
    v41 = a2[2];
    v42 = a2[3];
    v43 = (v41 + 24);
    if (*(v41 + 32) >= 0x41u)
    {
      v43 = *v43;
    }

    v44 = a2[1];
    v45 = *v43;
    v46 = v45 - 2;
    v47 = v45 + 2;
    if (v46 >= 4)
    {
      v48 = 2;
    }

    else
    {
      v48 = v47;
    }

    v49 = (v42 + 24);
    if (*(v42 + 32) >= 0x41u)
    {
      v49 = *v49;
    }

    v50 = (*v49 - 1) < 2;
    v51 = *(*v40 + 8);
    if ((v51 & 0xFE) == 0x12)
    {
      v51 = *(**(*v40 + 16) + 8);
    }

    if ((v51 & 0xFFFFFF00) == 0x300 || v51 <= 0xFF)
    {
      AlignedStore = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), a2[1], *a2, 0);
      v53 = *(AlignedStore + 18) & 0xFC7F | (v48 << 7);
      *(AlignedStore + 18) = v53;
      *(AlignedStore + 60) = v50;
      v54 = a2[4];
      if (v54 && *(v54 + 16) == 16)
      {
        v55 = AlignedStore;
        v56 = *(v54 + 32);
        if (v56 > 0x40)
        {
          v57 = llvm::APInt::countLeadingZerosSlowCase((v54 + 24)) == v56;
        }

        else
        {
          v57 = *(v54 + 24) == 0;
        }

        v124 = v57;
        AlignedLoad = 0;
        *(v55 + 18) = v53 & 0xFFFE | v124 ^ 1;
        goto LABEL_138;
      }
    }

    else
    {
      v109 = *(a1 + 464);
      v136 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v137, (a1 + 8));
      v138 = *(a1 + 104);
      v110 = (*(*v109 + 64))(v109, &v136, v40, v42);
      if (v137)
      {
        llvm::MetadataTracking::untrack();
      }

      if (*v44 == *(a1 + 168))
      {
        v111 = *(a1 + 200);
        if ((*(*v110 + 8) & 0xFE) == 0x12)
        {
          v112 = *(**(*v110 + 16) + 8);
        }

        v113 = llvm::PointerType::get();
        v166 = 257;
        v110 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v110, v113, &v163);
        v114 = *(a1 + 200);
        v166 = 257;
        v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v44, v114, &v163);
      }

      AtomicRMW = llvm::IRBuilderBase::CreateAtomicRMW((a1 + 8), 0, v110, v44, 0);
      setVolatility<llvm::AtomicRMWInst>(AtomicRMW, a2[4]);
    }

    goto LABEL_137;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v16 = *a2;
      v15 = a2[1];
      v17 = a2[2];
      v18 = *v17;
      v166 = 257;
      llvm::Type::isOpaquePointerTy(*v15);
      v135 = v15;
      v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v18, v15, 0, &v163);
      v133 = *(a1 + 168);
      v134 = *v17;
      if (*v17 == v133)
      {
        v20 = *(a1 + 200);
        if ((*(*v16 + 8) & 0xFE) == 0x12)
        {
          v21 = *(**(*v16 + 16) + 8);
        }

        v22 = llvm::PointerType::get();
        v166 = 257;
        v16 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v16, v22, &v163);
        v23 = *(a1 + 200);
        v166 = 257;
        v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v19, v23, &v163);
        v24 = *(a1 + 200);
        v166 = 257;
        v17 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v17, v24, &v163);
      }

      v25 = a2[3];
      v26 = (v25 + 24);
      if (*(v25 + 32) >= 0x41u)
      {
        v26 = *v26;
      }

      v27 = *v26;
      v28 = a2[4];
      v29 = (v28 + 24);
      if (*(v28 + 32) >= 0x41u)
      {
        v29 = *v29;
      }

      v30 = *v29;
      v31 = a2[5];
      v32 = (v31 + 24);
      if (*(v31 + 32) >= 0x41u)
      {
        v32 = *v32;
      }

      v33 = (*v32 - 1);
      v34 = *(a1 + 464);
      v142 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v143, (a1 + 8));
      v144 = *(a1 + 104);
      v35 = (*(*v34 + 64))(v34, &v142, v16, v31);
      if (v143)
      {
        llvm::MetadataTracking::untrack();
      }

      AtomicCmpXchg = llvm::IRBuilderBase::CreateAtomicCmpXchg((a1 + 8), v35, v19, v17, 0);
      v37 = a2[6];
      if (v37 && *(v37 + 16) == 16)
      {
        v38 = *(v37 + 32);
        if (v38 > 0x40)
        {
          v39 = llvm::APInt::countLeadingZerosSlowCase((v37 + 24)) == v38;
        }

        else
        {
          v39 = *(v37 + 24) == 0;
        }

        v107 = v39;
        *(AtomicCmpXchg + 18) = *(AtomicCmpXchg + 18) & 0xFFFE | v107 ^ 1;
      }

      LODWORD(__src) = 0;
      v166 = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, AtomicCmpXchg, &__src, 1, &v163);
      if (v134 == v133)
      {
        v108 = *(a1 + 168);
        v166 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, AlignedLoad, v108, &v163);
      }

      llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), AlignedLoad, v135, 0);
    }

    goto LABEL_138;
  }

  v60 = *a2;
  v61 = a2[2];
  v62 = a2[3];
  v63 = (v61 + 24);
  if (*(v61 + 32) >= 0x41u)
  {
    v63 = *v63;
  }

  v64 = *v63 - 2;
  v65 = (v62 + 24);
  if (*(v62 + 32) >= 0x41u)
  {
    v65 = *v65;
  }

  v66 = a2[1];
  v67 = (*v65 - 1);
  v68 = *(a1 + 464);
  v154 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v155, (a1 + 8));
  v156 = *(a1 + 104);
  v69 = (*(*v68 + 64))(v68, &v154, v60, v62);
  if (v155)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(v12 + 24) != 1)
  {
    v78 = *(v12 + 16);
    if (v78 == 2)
    {
      v79 = *(a1 + 464);
      if ((v79[1921] & 1) == 0)
      {
        std::string::basic_string[abi:nn200100]<0>(v150, "Unsupported float atomic operation for given target.");
        AGCLLVMAirBuiltins::recordError(a1, v150);
        if (v151 < 0)
        {
          v116 = *v150;
LABEL_136:
          operator delete(v116);
        }

LABEL_137:
        AlignedLoad = 0;
        goto LABEL_138;
      }

      if (v79[1924] == 1)
      {
        v80 = *(a1 + 944);
        if (!v80 || (*(v80 + *(*v80 - 24) + 1808) & 1) == 0)
        {
          v147 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v148, (a1 + 8));
          v149 = *(a1 + 104);
          v82 = llvm::Type::getFloatTy(*(a1 + 456), v81);
          v69 = (*(*v79 + 72))(v79, &v147, v69, v82);
          if (v148)
          {
            llvm::MetadataTracking::untrack();
          }
        }
      }

      v78 = *(v12 + 16);
      if (v78 == 2)
      {
        v83 = *(*v69 + 2);
        if ((v83 & 0xFE) == 0x12)
        {
          v83 = *(**(*v69 + 2) + 8);
        }

        if ((v83 & 0xFFFFFF00) == 0x300 && (*(*(a1 + 464) + 1922) & 1) == 0)
        {
          v58 = (*(a1 + 944) + *(**(a1 + 944) - 24));
          v59 = "Unsupported local float atomic operation for given target.";
          goto LABEL_56;
        }

LABEL_93:
        AlignedLoad = llvm::IRBuilderBase::CreateAtomicRMW((a1 + 8), *(v12 + 12), v69, v66, 0);
        setVolatility<llvm::AtomicRMWInst>(AlignedLoad, a2[4]);
        goto LABEL_138;
      }
    }

    if (v78 != 1 || (*(*(a1 + 464) + 1913) & 1) != 0)
    {
      goto LABEL_93;
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Unsupported float atomic operation for given target.");
    AGCLLVMAirBuiltins::recordError(a1, __p);
    if (v146 < 0)
    {
      v116 = __p[0];
      goto LABEL_136;
    }

    goto LABEL_137;
  }

  v70 = *(a1 + 288);
  __src = *(a1 + 248);
  v158 = v70;
  v71 = *(a1 + 224);
  v159 = *(a1 + 336);
  v160 = v71;
  v72 = *(a1 + 312);
  v161 = *(a1 + 272);
  v162 = v72;
  v163 = v165;
  v164 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v163, &__src, &v163);
  if (*(v12 + 24))
  {
    if (*(v12 + 16))
    {
      v73 = 3;
    }

    else
    {
      v73 = 0;
    }

    v74 = v163[v73 - 2 + *(v12 + 20)];
    if (v163 != v165)
    {
      free(v163);
    }

    if ((*(*v69 + 2) & 0xFE) == 0x12)
    {
      v75 = *(**(*v69 + 2) + 8);
    }

    v76 = llvm::PointerType::get();
    v77 = a2[4];
    if (*(v77 + 32) > 0x40u)
    {
      llvm::APInt::countLeadingZerosSlowCase((v77 + 24));
    }

    else
    {
      v39 = *(v77 + 24) == 0;
    }

    v87 = *(a1 + 432);
    v163 = v74;
    v164 = v76;
    v165[0] = v74;
    Declaration = llvm::Intrinsic::getDeclaration();
    v153 = 257;
    __src = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v69, v76, v152);
    v158 = v66;
    v89 = *(v12 + 12);
    v90 = *(a1 + 200);
    v91 = llvm::ConstantInt::get();
    v159 = v91;
    if (*(v12 + 24))
    {
      v92 = *(v12 + 20) - 2;
      if (v92 <= 2)
      {
        v93 = dword_20E70CF9C[v92];
        v94 = *(a1 + 200);
        v91 = llvm::ConstantInt::get();
      }

      v160 = v91;
      v95 = *(a1 + 200);
      v161 = llvm::ConstantInt::get();
      v96 = *(a1 + 200);
      v162 = llvm::ConstantInt::get();
      v163 = v165;
      v164 = 0x600000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v163, &__src, &v163);
      LOWORD(v161) = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateCall(a1 + 8, *(Declaration + 24), Declaration, v163, v164, &__src);
      if (v163 != v165)
      {
        free(v163);
      }

      goto LABEL_138;
    }
  }

  v131 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMAirBuiltins::recordError(v131, v132);
}

std::string *AGCLLVMAirBuiltins::recordError(uint64_t a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  result = std::string::append((*(a1 + 944) + *(**(a1 + 944) - 24) + 1656), a2, v4);
  *(a1 + 960) = 0;
  return result;
}

uint64_t llvm::IRBuilderBase::CreateAtomicRMW(unsigned int **a1, uint64_t a2, uint64_t a3, llvm::Type **a4, __int16 a5)
{
  if ((a5 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    v17 = (llvm::DataLayout::getTypeSizeInBits(DataLayout, *a4) + 7) >> 3;
    v18 = v9 == 1;
    llvm::TypeSize::operator unsigned long long();
  }

  v10 = llvm::User::operator new(0x40);
  llvm::AtomicRMWInst::AtomicRMWInst();
  v19 = 257;
  (*(*a1[10] + 16))(a1[10], v10, &v17, a1[6], a1[7]);
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = *a1;
    v13 = &v12[4 * v11];
    do
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      llvm::Instruction::setMetadata();
      v12 += 4;
    }

    while (v12 != v13);
  }

  return v10;
}

uint64_t setVolatility<llvm::AtomicRMWInst>(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    v3 = *(a2 + 32);
    if (v3 > 0x40)
    {
      v4 = llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v3;
    }

    else
    {
      v4 = *(a2 + 24) == 0;
    }

    v5 = v4;
    *(a1 + 18) = *(a1 + 18) & 0xFFFE | v5 ^ 1;
  }

  return a1;
}

uint64_t llvm::IRBuilderBase::CreateAtomicCmpXchg(unsigned int **a1, uint64_t a2, uint64_t a3, llvm::Type **a4, __int16 a5)
{
  if ((a5 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    v17 = (llvm::DataLayout::getTypeSizeInBits(DataLayout, *a4) + 7) >> 3;
    v18 = v9 == 1;
    llvm::TypeSize::operator unsigned long long();
  }

  v10 = llvm::User::operator new(0x40);
  llvm::AtomicCmpXchgInst::AtomicCmpXchgInst();
  v19 = 257;
  (*(*a1[10] + 16))(a1[10], v10, &v17, a1[6], a1[7]);
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = *a1;
    v13 = &v12[4 * v11];
    do
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      llvm::Instruction::setMetadata();
      v12 += 4;
    }

    while (v12 != v13);
  }

  return v10;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeAtomicMap(void)::$_0 &&>>()
{
  v0 = 0;
  v145 = *MEMORY[0x277D85DE8];
  memset(&v143, 0, sizeof(v143));
  qmemcpy(v123, ".cmpxchg.weak.f3.cmpxchg.weak.i3", sizeof(v123));
  do
  {
    v1 = std::string::basic_string[abi:nn200100]<0>(&__str, off_277E20380[v0]);
    if (!std::string::compare(v1, "global"))
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__p, size + 10);
      if (v141 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, p_str, size);
      }

      strcpy(p_p + size, ".max.u.i64");
      if (v141 >= 0)
      {
        v5 = &__p;
      }

      else
      {
        v5 = __p;
      }

      if (v141 >= 0)
      {
        v6 = v141;
      }

      else
      {
        v6 = v140;
      }

      v7 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v5, v6);
      *(v7 + 8) = 0x900000000;
      *(v7 + 16) = 1;
      *(v7 + 20) = 0;
      *(v7 + 24) = 0;
      if (v141 < 0)
      {
        operator delete(__p);
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__p, v8 + 10);
      if (v141 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if (v8)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &__str;
        }

        else
        {
          v10 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, ".min.u.i64");
      if (v141 >= 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if (v141 >= 0)
      {
        v12 = v141;
      }

      else
      {
        v12 = v140;
      }

      v13 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v11, v12);
      *(v13 + 8) = 0xA00000000;
      *(v13 + 16) = 1;
      *(v13 + 20) = 0;
      *(v13 + 24) = 0;
      if (v141 < 0)
      {
        operator delete(__p);
      }
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:nn200100](&__p, v14 + 17);
    if (v141 >= 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if (v14)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__str;
      }

      else
      {
        v16 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, v14);
    }

    v17 = &v15[v14];
    *v17 = v123[1];
    *(v17 + 8) = 50;
    if (v141 >= 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if (v141 >= 0)
    {
      v19 = v141;
    }

    else
    {
      v19 = v140;
    }

    v20 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v18, v19);
    *(v20 + 8) = 0xD00000001;
    *(v20 + 16) = 0;
    *(v20 + 20) = 0;
    *(v20 + 24) = 0;
    if (v141 < 0)
    {
      operator delete(__p);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:nn200100](&__p, v21 + 17);
    if (v141 >= 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p;
    }

    if (v21)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__str;
      }

      else
      {
        v23 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v22, v23, v21);
    }

    v124 = v0;
    v24 = &v22[v21];
    *v24 = v123[0];
    *(v24 + 8) = 50;
    if (v141 >= 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if (v141 >= 0)
    {
      v26 = v141;
    }

    else
    {
      v26 = v140;
    }

    v27 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v25, v26);
    *(v27 + 8) = 0xD00000001;
    *(v27 + 16) = 2;
    *(v27 + 20) = 0;
    *(v27 + 24) = 0;
    if (v141 < 0)
    {
      operator delete(__p);
    }

    v28 = 1;
    do
    {
      v29 = 0;
      v30 = v28 > 1;
      if (v28 <= 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      v141 = 1;
      LOWORD(__p) = v28 | 0x30;
      if (v28 <= 1)
      {
        v32 = &unk_20E75F419;
      }

      else
      {
        v32 = ".batched";
      }

      do
      {
        v33 = &(&off_277E20310)[2 * v29];
        v34 = 1;
        do
        {
          std::string::operator=(&v143, &__str);
          std::string::append(&v143, v32);
          std::string::append(&v143, *v33);
          if (v34)
          {
            v35 = ".u";
          }

          else
          {
            v35 = ".s";
          }

          std::string::append(&v143, v35);
          if (v28 < 2)
          {
            std::string::basic_string[abi:nn200100]<0>(&v136, ".i32");
          }

          else
          {
            std::operator+<char>();
            v36 = std::string::append(&v135, "i32");
            v37 = v36->__r_.__value_.__r.__words[2];
            *&v136.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
            v136.__r_.__value_.__r.__words[2] = v37;
            v36->__r_.__value_.__l.__size_ = 0;
            v36->__r_.__value_.__r.__words[2] = 0;
            v36->__r_.__value_.__r.__words[0] = 0;
          }

          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v136;
          }

          else
          {
            v38 = v136.__r_.__value_.__r.__words[0];
          }

          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v136.__r_.__value_.__l.__size_;
          }

          std::string::append(&v143, v38, v39);
          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          if (v28 >= 2 && SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          v40 = v34 & 1;
          v41 = 8;
          if (v34)
          {
            v41 = 12;
          }

          v42 = *(v33 + v41);
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v143;
          }

          else
          {
            v43 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v143.__r_.__value_.__l.__size_;
          }

          v34 = 0;
          v45 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v43, v44);
          *(v45 + 8) = 0;
          *(v45 + 12) = v42;
          *(v45 + 16) = 0;
          *(v45 + 20) = v31;
          *(v45 + 24) = v30;
          *(v45 + 27) = v138;
          *(v45 + 25) = v137;
        }

        while (v40);
        ++v29;
      }

      while (v29 != 7);
      if (v28 <= 1)
      {
        std::string::basic_string[abi:nn200100]<0>(&v136, ".xchg.i32");
      }

      else
      {
        std::operator+<char>();
        v46 = std::string::append(&v134, "i32");
        v47 = v46->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = *&v46->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &__str;
      }

      else
      {
        v48 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = __str.__r_.__value_.__l.__size_;
      }

      v50 = std::string::insert(&v136, 0, v48, v49);
      v51 = v50->__r_.__value_.__r.__words[0];
      v144.__r_.__value_.__r.__words[0] = v50->__r_.__value_.__l.__size_;
      *(v144.__r_.__value_.__r.__words + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
      v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      v143.__r_.__value_.__r.__words[0] = v51;
      v143.__r_.__value_.__l.__size_ = v144.__r_.__value_.__r.__words[0];
      *(&v143.__r_.__value_.__r.__words[1] + 7) = *(v144.__r_.__value_.__r.__words + 7);
      *(&v143.__r_.__value_.__s + 23) = v52;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v143;
      }

      else
      {
        v53 = v143.__r_.__value_.__r.__words[0];
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v143.__r_.__value_.__l.__size_;
      }

      v55 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v53, v54);
      *(v55 + 8) = 0;
      *(v55 + 16) = 0;
      *(v55 + 20) = v31;
      *(v55 + 24) = v30;
      *(v55 + 27) = v138;
      *(v55 + 25) = v137;
      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v136, ".store.i32");
      }

      else
      {
        std::operator+<char>();
        v56 = std::string::append(&v133, "i32");
        v57 = v56->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = *&v56->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &__str;
      }

      else
      {
        v58 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = __str.__r_.__value_.__l.__size_;
      }

      v60 = std::string::insert(&v136, 0, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[0];
      v144.__r_.__value_.__r.__words[0] = v60->__r_.__value_.__l.__size_;
      *(v144.__r_.__value_.__r.__words + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
      v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      v143.__r_.__value_.__r.__words[0] = v61;
      v143.__r_.__value_.__l.__size_ = v144.__r_.__value_.__r.__words[0];
      *(&v143.__r_.__value_.__r.__words[1] + 7) = *(v144.__r_.__value_.__r.__words + 7);
      *(&v143.__r_.__value_.__s + 23) = v62;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &v143;
      }

      else
      {
        v63 = v143.__r_.__value_.__r.__words[0];
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v64 = v143.__r_.__value_.__l.__size_;
      }

      v65 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v63, v64);
      *(v65 + 8) = 3;
      *(v65 + 16) = 0;
      *(v65 + 20) = v31;
      *(v65 + 24) = v30;
      *(v65 + 27) = v138;
      *(v65 + 25) = v137;
      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v136, ".load.i32");
      }

      else
      {
        std::operator+<char>();
        v66 = std::string::append(&v132, "i32");
        v67 = v66->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &__str;
      }

      else
      {
        v68 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = __str.__r_.__value_.__l.__size_;
      }

      v70 = std::string::insert(&v136, 0, v68, v69);
      v71 = v70->__r_.__value_.__r.__words[0];
      v144.__r_.__value_.__r.__words[0] = v70->__r_.__value_.__l.__size_;
      *(v144.__r_.__value_.__r.__words + 7) = *(&v70->__r_.__value_.__r.__words[1] + 7);
      v72 = HIBYTE(v70->__r_.__value_.__r.__words[2]);
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      v143.__r_.__value_.__r.__words[0] = v71;
      v143.__r_.__value_.__l.__size_ = v144.__r_.__value_.__r.__words[0];
      *(&v143.__r_.__value_.__r.__words[1] + 7) = *(v144.__r_.__value_.__r.__words + 7);
      *(&v143.__r_.__value_.__s + 23) = v72;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v143;
      }

      else
      {
        v73 = v143.__r_.__value_.__r.__words[0];
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v143.__r_.__value_.__l.__size_;
      }

      v75 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v73, v74);
      *(v75 + 8) = 2;
      *(v75 + 16) = 0;
      *(v75 + 20) = v31;
      *(v75 + 24) = v30;
      *(v75 + 27) = v138;
      *(v75 + 25) = v137;
      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v144, ".add.f32");
      }

      else
      {
        std::operator+<char>();
        v76 = std::string::append(&v131, "f32");
        v77 = v76->__r_.__value_.__r.__words[2];
        *&v144.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
        v144.__r_.__value_.__r.__words[2] = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = &__str;
      }

      else
      {
        v78 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v79 = __str.__r_.__value_.__l.__size_;
      }

      v80 = std::string::insert(&v144, 0, v78, v79);
      v81 = v80->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v80->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = &v136;
      }

      else
      {
        v82 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v83 = v136.__r_.__value_.__l.__size_;
      }

      v84 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v82, v83);
      *(v84 + 8) = 0xB00000000;
      *(v84 + 16) = 2;
      *(v84 + 20) = v31;
      *(v84 + 24) = v30;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v144, ".sub.f32");
      }

      else
      {
        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v85 = std::string::append(&v128, "f32");
        v86 = v85->__r_.__value_.__r.__words[2];
        *&v144.__r_.__value_.__l.__data_ = *&v85->__r_.__value_.__l.__data_;
        v144.__r_.__value_.__r.__words[2] = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = &__str;
      }

      else
      {
        v87 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = __str.__r_.__value_.__l.__size_;
      }

      v89 = std::string::insert(&v144, 0, v87, v88);
      v90 = v89->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v89->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v136;
      }

      else
      {
        v91 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v92 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v92 = v136.__r_.__value_.__l.__size_;
      }

      v93 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v91, v92);
      *(v93 + 8) = 0xC00000000;
      *(v93 + 16) = 2;
      *(v93 + 20) = v31;
      *(v93 + 24) = v30;
      *(v93 + 27) = v130;
      *(v93 + 25) = v129;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v144, ".xchg.f32");
      }

      else
      {
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v94 = std::string::append(&v127, "f32");
        v95 = v94->__r_.__value_.__r.__words[2];
        *&v144.__r_.__value_.__l.__data_ = *&v94->__r_.__value_.__l.__data_;
        v144.__r_.__value_.__r.__words[2] = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = &__str;
      }

      else
      {
        v96 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v97 = __str.__r_.__value_.__l.__size_;
      }

      v98 = std::string::insert(&v144, 0, v96, v97);
      v99 = v98->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v98->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = &v136;
      }

      else
      {
        v100 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v136.__r_.__value_.__l.__size_;
      }

      v102 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v100, v101);
      *(v102 + 8) = 0;
      *(v102 + 16) = 2;
      *(v102 + 20) = v31;
      *(v102 + 24) = v30;
      *(v102 + 27) = v130;
      *(v102 + 25) = v129;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v144, ".store.f32");
      }

      else
      {
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v103 = std::string::append(&v126, "f32");
        v104 = v103->__r_.__value_.__r.__words[2];
        *&v144.__r_.__value_.__l.__data_ = *&v103->__r_.__value_.__l.__data_;
        v144.__r_.__value_.__r.__words[2] = v104;
        v103->__r_.__value_.__l.__size_ = 0;
        v103->__r_.__value_.__r.__words[2] = 0;
        v103->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &__str;
      }

      else
      {
        v105 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = __str.__r_.__value_.__l.__size_;
      }

      v107 = std::string::insert(&v144, 0, v105, v106);
      v108 = v107->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v107->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = &v136;
      }

      else
      {
        v109 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v110 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v110 = v136.__r_.__value_.__l.__size_;
      }

      v111 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v109, v110);
      *(v111 + 8) = 0xD00000003;
      *(v111 + 16) = 2;
      *(v111 + 20) = v31;
      *(v111 + 24) = v30;
      *(v111 + 27) = v130;
      *(v111 + 25) = v129;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v144, ".load.f32");
      }

      else
      {
        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v112 = std::string::append(&v125, "f32");
        v113 = v112->__r_.__value_.__r.__words[2];
        *&v144.__r_.__value_.__l.__data_ = *&v112->__r_.__value_.__l.__data_;
        v144.__r_.__value_.__r.__words[2] = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v114 = &__str;
      }

      else
      {
        v114 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v115 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v115 = __str.__r_.__value_.__l.__size_;
      }

      v116 = std::string::insert(&v144, 0, v114, v115);
      v117 = v116->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = *&v116->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v117;
      v116->__r_.__value_.__l.__size_ = 0;
      v116->__r_.__value_.__r.__words[2] = 0;
      v116->__r_.__value_.__r.__words[0] = 0;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v118 = &v136;
      }

      else
      {
        v118 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v119 = v136.__r_.__value_.__l.__size_;
      }

      v120 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v118, v119);
      *(v120 + 8) = 0xD00000002;
      *(v120 + 16) = 2;
      *(v120 + 20) = v31;
      *(v120 + 24) = v30;
      *(v120 + 27) = v130;
      *(v120 + 25) = v129;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      if (v141 < 0)
      {
        operator delete(__p);
      }
    }

    while (v28++ < 4);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v0 = v124 + 1;
  }

  while (v124 != 3);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v122 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117DBD8) = qword_28117DBD8 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 33, 8);
  v9 = v8;
  v10 = v8 + 32;
  if (a2)
  {
    memcpy((v8 + 32), a1, a2);
  }

  *(v10 + a2) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = a2;
  *(v9 + 24) = 0;
  *i = v9;
  ++dword_28117DBD4;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

uint64_t AGCLLVMAirBuiltins::buildUnpackSRGB(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 4)
  {
    v11 = bswap64(*(a3 + a4 - 5) | (*(a3 + a4 - 1) << 32));
    v12 = v11 >= 0x7634663136000000;
    v13 = v11 > 0x7634663136000000;
    v14 = !v12;
    v15 = v13 - v14;
    v5 = (a1 + 8);
    v16 = *(a1 + 320);
    v43 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v16, v42);
    v10 = 312;
    if (v15)
    {
      v9 = 168;
    }

    else
    {
      v10 = 296;
      v9 = 152;
    }

    if (v15)
    {
      v8 = 32;
    }

    else
    {
      v8 = 16;
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 320);
    v43 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v6, v42);
    v8 = 32;
    v9 = 168;
    v10 = 312;
  }

  v17 = *(a1 + v10);
  v18 = llvm::UndefValue::get();
  v19 = *(a1 + 464);
  v39 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v40, v5);
  v41 = *(a1 + 104);
  v43 = 257;
  v20 = *(a1 + 200);
  v21 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), Cast, v21, v42);
  v23 = (*(*v19 + 96))(v19, &v39, Element, 8, 0, v8);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  v43 = 257;
  v24 = *(a1 + 200);
  v25 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v18, v23, v25, v42);
  for (i = 0; i != 3; ++i)
  {
    v43 = 257;
    v28 = *(a1 + 200);
    v29 = llvm::ConstantInt::get();
    v30 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), Cast, v29, v42);
    v31 = *(a1 + 464);
    v36 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v37, v5);
    v38 = *(a1 + 104);
    v32 = (*(*v31 + 152))(v31, &v36, v30, 0, *(a1 + v9));
    if (v37)
    {
      llvm::MetadataTracking::untrack();
    }

    v43 = 257;
    v33 = *(a1 + 200);
    v34 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v32, v34, v42);
    InsertElement = result;
  }

  return result;
}

uint64_t AGCLLVMAirBuiltins::buildPackSRGB(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 40);
  v5 = llvm::UndefValue::get();
  v31 = 257;
  v6 = *(this + 25);
  v7 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v7, v30);
  v9 = *(this + 58);
  v27 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (this + 8));
  v29 = *(this + 26);
  v10 = (*(*v9 + 88))(v9, &v27, Element, 8, 0, 1);
  v31 = 257;
  v11 = *(this + 25);
  v12 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v5, v10, v12, v30);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  for (i = 0; i != 3; ++i)
  {
    v31 = 257;
    v15 = *(this + 25);
    v16 = llvm::ConstantInt::get();
    v17 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v16, v30);
    v18 = *(this + 58);
    v24 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (this + 8));
    v26 = *(this + 26);
    v19 = (*(*v18 + 144))(v18, &v24, v17, 0, *(this + 23));
    if (v25)
    {
      llvm::MetadataTracking::untrack();
    }

    v31 = 257;
    v20 = *(this + 25);
    v21 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v19, v21, v30);
  }

  v22 = *(this + 25);
  v31 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v22, v30);
}

llvm::Value *AGCLLVMAirBuiltins::buildUnpackNorm(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a3[1];
  if (v5 == 16)
  {
    v10 = *(a1 + 240);
    v21 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v10, v20);
    v12 = *(a1 + 464);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v9 = (*(*v12 + 96))(v12, &v14, Cast, 16, a3[3], 32);
    if (v15)
    {
LABEL_4:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    if (v5 != 8)
    {
      return 0;
    }

    v6 = *(a1 + 320);
    v21 = 257;
    v7 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v6, v20);
    v8 = *(a1 + 464);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v9 = (*(*v8 + 96))(v8, &v17, v7, 8, a3[3], 32);
    if (v18)
    {
      goto LABEL_4;
    }
  }

  if (*a3 == 16)
  {
    return AGCLLVMBuilder::truncateToSmall(a1, v9, *(a1 + 152));
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltins::buildPackNorm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  if (v6 == 16)
  {
    v11 = *(a1 + 464);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v8 = (*(*v11 + 88))(v11, &v14, a2, 16, *(a3 + 3), 1);
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v6 == 8)
  {
    v7 = *(a1 + 464);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v8 = (*(*v7 + 88))(v7, &v17, a2, 8, *(a3 + 3), 1);
    if (!v18)
    {
LABEL_5:
      v9 = *(a1 + 200);
      v13 = 257;
      return llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v8, v9, v12);
    }

LABEL_4:
    llvm::MetadataTracking::untrack();
    goto LABEL_5;
  }

  return 0;
}

uint64_t AGCLLVMAirBuiltins::buildTrunc(AGCLLVMAirBuiltins *this, llvm::Type **a2)
{
  v4 = *a2;
  if (*a2 != *(this + 19))
  {
    v5 = *(this + 21);
  }

  llvm::ConstantFP::get();
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v11 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v6 = *(this + 25);
  v11 = 257;
  FPToSI = llvm::IRBuilderBase::CreateFPToSI((this + 8), a2, v6, v10);
  v9[16] = 257;
  llvm::IRBuilderBase::CreateSIToFP((this + 8), FPToSI, v4, v9);
  v11 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t llvm::IRBuilderBase::CreateSIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 44, a2, a3, a4);
}

uint64_t AGCLLVMAirBuiltins::buildRound(llvm::Type **this, llvm::Value *a2)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v4 = this[21];
  llvm::ConstantFP::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v5 = this[21];
  llvm::ConstantFP::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v6 = this[21];
  llvm::ConstantFP::get();
  v7 = this[21];
  llvm::ConstantFP::get();
  v8 = this[21];
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateSelect();
  v17 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), a2, Select, v18);
  v11 = this[25];
  v19 = 257;
  FPToSI = llvm::IRBuilderBase::CreateFPToSI((this + 1), FAdd, v11, v18);
  v13 = this[21];
  v17 = 257;
  llvm::IRBuilderBase::CreateSIToFP((this + 1), FPToSI, v13, &v16);
  v14 = this[21];
  llvm::ConstantFP::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v19 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildRNE(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v16 = a2;
  v4 = *(this + 58);
  v5 = *(v4 + 1376);
  if (v5)
  {
    v6 = strlen(*(v4 + 1376));
  }

  else
  {
    v6 = 0;
  }

  v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v5, v6, *(this + 25), *(this + 21));
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v8 = *(this + 21);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  v15 = 257;
  v9 = llvm::IRBuilderBase::CreateCall(this + 8, *(v7 + 24), v7, &v16, 1, v14);
  v10 = *(this + 21);
  v13 = 257;
  llvm::IRBuilderBase::CreateSIToFP((this + 8), v9, v10, v12);
  v15 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildPow(llvm::Type **this, llvm::Value *a2, llvm::Value *a3)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a3);
  v6 = this[21];
  llvm::ConstantFP::get();
  v25 = 257;
  FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
  v8 = this[25];
  v25 = 257;
  FPToSI = llvm::IRBuilderBase::CreateFPToSI((this + 1), a3, v8, v24);
  v10 = this[25];
  v11 = llvm::ConstantInt::get();
  v25 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((this + 1), FPToSI, v11, v24);
  v13 = this[25];
  v14 = llvm::ConstantInt::get();
  v23 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(this + 1, 32, v12, v14, &v22);
  v25 = 257;
  v16 = llvm::IRBuilderBase::CreateAnd((this + 1), ICmp, FCmpHelper, v24);
  v17 = this[21];
  llvm::ConstantFP::get();
  v25 = 257;
  v18 = llvm::IRBuilderBase::CreateFCmpHelper();
  v25 = 257;
  llvm::IRBuilderBase::CreateAnd((this + 1), v18, v16, v24);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v20 = AGCLLVMAirBuiltins::buildPowr(this, Fabs, a3);
  v25 = 257;
  llvm::IRBuilderBase::CreateFNeg((this + 1), v20, v24);
  v23 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *AGCLLVMAirBuiltins::buildPowr(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 19);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f16";
LABEL_6:
    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v8, 17, v6, v6, v6);
    goto LABEL_7;
  }

  v6 = *(this + 21);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f32";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v12[0] = a2;
  v12[1] = a3;
  v11[16] = 257;
  result = llvm::IRBuilderBase::CreateCall(this + 8, *(v7 + 24), v7, v12, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildCeil(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v7 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg(this + 8, a2, v6);
  Floor = AGCLLVMTargetBuilder::CreateFloor(this, FNeg);
  v7 = 257;
  return llvm::IRBuilderBase::CreateFNeg(this + 8, Floor, v6);
}

uint64_t AGCLLVMAirBuiltins::buildTan(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = (*(*this + 24))(this, a2, 0);
  v5 = (*(*this + 24))(this, a2, 1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, v4, v5, v7);
}

uint64_t AGCLLVMAirBuiltins::buildArcsin(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v6 = llvm::ConstantFP::get();
  v17 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v16);
  v15 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v5, FMul, v14);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
  v17 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v5, Sqrt, v16);
  v17 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, FAdd, v16);
  v12 = (*(*this + 32))(this, FDiv);
  v15 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, v6, v12, v14);
}

uint64_t AGCLLVMAirBuiltins::buildArccos(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  llvm::ConstantFP::get();
  v5 = llvm::ConstantFP::get();
  v6 = llvm::ConstantFP::get();
  v19 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v18);
  v17 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v5, FMul, v16);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
  v19 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v5, a2, v18);
  v19 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, v5, Sqrt, v18);
  v19 = 257;
  llvm::IRBuilderBase::CreateFMul(this + 8, FDiv, FAdd, v18);
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v19 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = 257;
  v13 = llvm::IRBuilderBase::CreateFDiv(this + 8, v5, Select, v18);
  v14 = (*(*this + 32))(this, v13);
  v17 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, v6, v14, v16);
}

void AGCLLVMAirBuiltins::buildArctan(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v6 = 1336;
  if (*a2 == *(this + 21))
  {
    v6 = 1328;
  }

  v5 = *(this + 58);
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = strlen(*(v5 + v6));
  }

  else
  {
    v8 = 0;
  }

  AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v7, v8, v4, v4);
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v10 = *(this + 7);
  v9 = *(this + 8);
  llvm::BasicBlock::splitBasicBlock();
  v11 = *(this + 57);
  v12 = *(v10 + 56);
  operator new();
}

llvm::Value *AGCLLVMAirBuiltins::buildSinCos(AGCLLVMAirBuiltins *this, llvm::Value *a2, int a3)
{
  v6 = *a2;
  v7 = llvm::ConstantFP::get();
  v21 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, v7, v20);
  if (a3)
  {
    v9 = llvm::ConstantFP::get();
    v21 = 257;
    FMul = llvm::IRBuilderBase::CreateFAdd(this + 8, FMul, v9, v20);
  }

  Floor = AGCLLVMTargetBuilder::CreateFloor(this, FMul);
  v21 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, FMul, Floor, v20);
  v12 = llvm::ConstantFP::get();
  v21 = 257;
  v19 = llvm::IRBuilderBase::CreateFMul(this + 8, FSub, v12, v20);
  v14 = 1344;
  if (v6 == *(this + 19))
  {
    v14 = 1352;
  }

  v13 = *(this + 58);
  v15 = *(v13 + v14);
  if (v15)
  {
    v16 = strlen(*(v13 + v14));
  }

  else
  {
    v16 = 0;
  }

  v17 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v15, v16, v6, v6);
  v21 = 257;
  return llvm::IRBuilderBase::CreateCall(this + 8, *(v17 + 24), v17, &v19, 1, v20);
}

void AGCLLVMAirBuiltinsGen2::buildArcsin(AGCLLVMAirBuiltinsGen2 *this, llvm::Value *a2)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v3 = *(this + 21);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  v5 = *(this + 7);
  v4 = *(this + 8);
  llvm::BasicBlock::splitBasicBlock();
  v6 = *(this + 57);
  v7 = *(v5 + 56);
  operator new();
}

llvm::Instruction *AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(AGCLLVMAirBuiltinsGen2 *this, llvm::Value *a2)
{
  v4 = *(this + 21);
  v5 = llvm::ConstantFP::get();
  v6 = 4u;
  do
  {
    v7 = *(&AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(llvm::Value *)::coefficients + v6);
    v8 = *(this + 21);
    v9 = llvm::ConstantFP::get();
    result = AGCLLVMBuilder::buildFma(this, v5, a2, v9);
    v5 = result;
    v6 += 4;
  }

  while (v6 != 28);
  return result;
}

void AGCLLVMAirBuiltinsGen2::buildArccos(AGCLLVMAirBuiltinsGen2 *this, llvm::Value *a2)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v3 = *(this + 21);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  v5 = *(this + 7);
  v4 = *(this + 8);
  llvm::BasicBlock::splitBasicBlock();
  v6 = *(this + 57);
  v7 = *(v5 + 56);
  operator new();
}

llvm::Value *AGCLLVMTargetBuilder::CreateRsqrt(AGCLLVMTargetBuilder *this, llvm::Value *a2)
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
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.rsqrt");
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