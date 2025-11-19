llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    llvm::APInt::initSlowCase(this);
  }

  else
  {
    *this = a2 != 0;
  }

  return this;
}

uint64_t std::function<llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v8 = a4;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, a3, &v8, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(v6);
}

uint64_t std::__function::__func<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = (a2 + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  v14 = *a3;
  v11 = a3 + 1;
  v15 = *(a3 + 2);
  if (v15)
  {
    llvm::MetadataTracking::retrack();
    *v11 = 0;
  }

  v16 = *(a3 + 6);
  v12 = v9(v10, &v14, *a4, *a5);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

__n128 std::__function::__func<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BB778;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer&,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = (a2 + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  v14 = *a3;
  v11 = a3 + 1;
  v15 = *(a3 + 2);
  if (v15)
  {
    llvm::MetadataTracking::retrack();
    *v11 = 0;
  }

  v16 = *(a3 + 6);
  v12 = v9(v10, &v14, *a4, *a5);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

__n128 std::__function::__func<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer&,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BB730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AGCLLVMObjectArray::addNewMainObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1848) = a2;
  *__p = *a3;
  v5 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = a2;
  llvm::SmallVectorImpl<std::pair<std::unique_ptr<AGCLLVMObjectBase>,std::string>>::emplace_back<AGCLLVMObjectBase*&,std::string>(a1 + 1704, &v6, __p);
  if (SHIBYTE(v5) < 0)
  {
    v3 = __p[0];

    operator delete(v3);
  }
}

__n128 llvm::SmallVectorImpl<std::pair<std::unique_ptr<AGCLLVMObjectBase>,std::string>>::emplace_back<AGCLLVMObjectBase*&,std::string>(uint64_t a1, void *a2, __n128 *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<std::unique_ptr<AGCLLVMObjectBase>,std::string>,false>::growAndEmplaceBack<AGCLLVMObjectBase*&,std::string>();
  }

  v4 = *a1 + 32 * v3;
  *v4 = *a2;
  result = *a3;
  *(v4 + 24) = a3[1].n128_u64[0];
  *(v4 + 8) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  ++*(a1 + 8);
  return result;
}

void AGCLLVMUserIntersectionShaderArray<RaytracingConstantsGen1>::~AGCLLVMUserIntersectionShaderArray(AGCLLVMObjectArray *a1)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(a1);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserShaderWithIntersectionShadersArray::~AGCLLVMUserShaderWithIntersectionShadersArray(AGCLLVMUserShaderWithIntersectionShadersArray *this)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRawRayPointers@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, llvm::Value **a6@<X8>)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v36 = *a2;
  v37 = *(a2 + 16);
  if (v37)
  {
    llvm::MetadataTracking::track();
  }

  v38 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v36);
  if (v37)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = *(a1 + 184);
  v13 = llvm::PointerType::get();
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a1 + 200);
  v34[0] = "vrid_ext";
  v35 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a4, v16, v34);
  v18 = *(a1 + 200);
  v41[0] = llvm::ConstantInt::get();
  v41[1] = Cast;
  v19 = *(v15 + 24);
  v34[0] = "ray_core";
  v35 = 259;
  llvm::Type::isOpaquePointerTy(*v15);
  GEP = llvm::IRBuilderBase::CreateGEP(a1 + 8, v19, v15, v41, 2, v34);
  v22 = llvm::ConstantPointerNull::get(v13, v21);
  if (a5)
  {
    v23 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ria.token.id", 22, *(a1 + 192), 0, 0);
    v24 = *(a1 + 200);
    v39[0] = llvm::ConstantInt::get();
    v25 = *(a1 + 200);
    v35 = 257;
    v39[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v23, v25, v34);
    v26 = *(v14 + 24);
    v34[0] = "token_buffer";
    v35 = 259;
    llvm::Type::isOpaquePointerTy(*v14);
    v22 = llvm::IRBuilderBase::CreateGEP(a1 + 8, v26, v14, v39, 2, v34);
  }

  v35 = 257;
  *a6 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v22, v13, v34);
  a6[1] = llvm::ConstantPointerNull::get(v13, v27);
  a6[2] = llvm::ConstantPointerNull::get(v13, v28);
  v40 = 257;
  a6[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v13, v39);
  a6[4] = llvm::ConstantPointerNull::get(v13, v29);
  a6[5] = llvm::ConstantPointerNull::get(v13, v30);
  result = llvm::ConstantPointerNull::get(v13, v31);
  a6[6] = result;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v17[20] = *MEMORY[0x277D85DE8];
  v16[0] = v17;
  v16[1] = 0x1400000000;
  llvm::SmallVectorImpl<llvm::MDNode const*>::resizeImpl<false>(v16, a6);
  if (a6)
  {
    v9 = 0;
    do
    {
      *(v16[0] + v9) = **(a5 + 8 * v9);
      ++v9;
    }

    while (a6 != v9);
  }

  llvm::FunctionType::get();
  v10 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v15[16] = 257;
  v12 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v11 + 24), v11, a5, a6, v15);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMemCpy2DConditionalLoadStoreExpansion(uint64_t a1, uint64_t ***a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = (*a2)[8];
  v5 = (*a2)[10];
  v73 = (*a2)[2];
  v6 = *(*v73 + 8);
  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(**(*v73 + 16) + 8);
  }

  v75 = *v3;
  v7 = v3[9];
  v8 = v3[11];
  v76 = v3[3];
  v9 = v3[5];
  v72 = v3[6];
  v10 = v3[7];
  if (*(v4 + 16) != 16)
  {
    goto LABEL_11;
  }

  v11 = v3[4];
  v12 = *(v4 + 8);
  if (v12 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v4 + 3)) != v12 - 1)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }
  }

  else if (v4[3] != 1)
  {
    goto LABEL_11;
  }

  if (*(v11 + 16) != 16)
  {
    goto LABEL_11;
  }

  v13 = *(v11 + 8);
  if (v13 > 0x40)
  {
    v14 = llvm::APInt::countLeadingZerosSlowCase((v11 + 3)) == v13 - 1;
  }

  else
  {
    v14 = v11[3] == 1;
  }

  v15 = v14;
LABEL_12:
  v16 = v6 & 0xFFFFFF00;
  if (v5[16] > 0x14u)
  {
LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  v79 = 257;
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v5, v18, &v78);
  if (*(Element + 16) == 16)
  {
    v20 = Element;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v20 + 32);
  if (v21 > 0x40)
  {
    if (**(v20 + 24))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v20 + 24) << -v21) >> -v21)
  {
    goto LABEL_18;
  }

  v79 = 257;
  v40 = *(a1 + 200);
  v41 = llvm::ConstantInt::get();
  v42 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v5, v41, &v78);
  if (*(v42 + 16) == 16)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = *(v43 + 32);
  if (v44 > 0x40)
  {
    v45 = **(v43 + 24);
  }

  else
  {
    v45 = (*(v43 + 24) << -v44) >> -v44;
  }

  if (v45)
  {
    v71 = 0;
  }

  else
  {
    v71 = v9 == v7;
  }

  v22 = v71;
LABEL_19:
  v79 = 257;
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v25 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v24, &v78);
  v79 = 257;
  v26 = *(a1 + 200);
  v27 = llvm::ConstantInt::get();
  v28 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v27, &v78);
  v79 = 257;
  v29 = *(a1 + 200);
  v30 = llvm::ConstantInt::get();
  v31 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v30, &v78);
  v33 = v25 == v76 && v28 == v10;
  v34 = v33 & v15;
  if (v22)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&v78, *(a1 + 2616));
  if (v16 == 768)
  {
    v36 = ".read";
  }

  else
  {
    v36 = ".write";
  }

  v37 = std::string::append(&v78, v36);
  v38 = v37->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (*(v8 + 16) == 16)
  {
    v39 = *(v8 + 8);
    if (v39 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v8 + 3)) != v39 - 1)
      {
        goto LABEL_45;
      }
    }

    else if (v8[3] != 1)
    {
      goto LABEL_45;
    }

    std::string::append(&v77, ".edgeclamped");
  }

LABEL_45:
  if (v35)
  {
    v79 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v28, v31, &v78);
    *&__src.__r_.__value_.__l.__data_ = v75;
    __src.__r_.__value_.__r.__words[2] = v73;
    v81 = v72;
    v82 = Mul;
    v78.__r_.__value_.__r.__words[0] = &v78.__r_.__value_.__r.__words[2];
    v78.__r_.__value_.__l.__size_ = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v78, &__src, &v83);
    v47 = (*(*a1 + 1928))(a1, &v78);
    v48 = v78.__r_.__value_.__r.__words[0];
    if (v78.__r_.__value_.__l.__data_ == &v78.__r_.__value_.__r.__words[2])
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v15)
  {
    std::string::append(&v77, ".noholes");
    v51 = a2;
  }

  else
  {
    v52 = (v75 + 24);
    if (*(v75 + 32) >= 0x41u)
    {
      v52 = *v52;
    }

    v53 = *v52;
    v54 = (*(&v75 + 1) + 24);
    if (*(*(&v75 + 1) + 32) >= 0x41u)
    {
      v54 = *v54;
    }

    v51 = a2;
    v55 = *v54;
    if (v55 > 4 && v53 == v55)
    {
      v57 = v55 >> 2;
    }

    else
    {
      v57 = v53 / v55;
    }

    std::to_string(&__src, v57);
    v58 = std::string::insert(&__src, 0, ".withholes.v");
    v59 = v58->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = *&v58->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v78;
    }

    else
    {
      v60 = v78.__r_.__value_.__r.__words[0];
    }

    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v78.__r_.__value_.__l.__size_;
    }

    std::string::append(&v77, v60, size);
    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  v78.__r_.__value_.__r.__words[0] = &v78.__r_.__value_.__r.__words[2];
  v78.__r_.__value_.__l.__size_ = 0xC00000000;
  v62 = *(v51 + 2);
  if (v62)
  {
    v63 = *v51;
    v64 = 8 * v62;
    do
    {
      v65 = *v63++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v78, *v65);
      v64 -= 8;
    }

    while (v64);
  }

  v66 = *(a1 + 144);
  llvm::FunctionType::get();
  v67 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v68 = *v51;
  v69 = *(v51 + 2);
  LOWORD(v82) = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v70 + 24), v70, v68, v69, &__src);
  v47 = *(a1 + 2648);
  v48 = v78.__r_.__value_.__r.__words[0];
  if (v78.__r_.__value_.__l.__data_ != &v78.__r_.__value_.__r.__words[2])
  {
LABEL_47:
    free(v48);
  }

LABEL_48:
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::programTypeSpecialRegisterValueForShaderType(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
    v2 = 3;
  }

  else
  {
    v2 = a2 == 9;
  }

  if ((a2 - 27) >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (a2 == 2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if (a2 <= 6)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getImageBlockWriteIntrinsicFromDimension@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, _BYTE *a4@<X8>)
{
  *a3 = 0;
  result = std::string::basic_string[abi:nn200100]<0>(a4, *(a1 + 2064));
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v7 = ".coords.2d.array";
LABEL_13:
        result = std::string::append(result, v7);
        v9 = 1;
LABEL_16:
        *a3 = v9;
        return result;
      }

      v8 = ".coords.2d";
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v8 = ".coords.1d.array";
    }

    else
    {
      v8 = ".coords.1d";
    }
  }

  else if (a2 <= 5)
  {
    if (a2 != 4)
    {
      result = std::string::append(result, ".coords.3d");
      v9 = 2;
      goto LABEL_16;
    }

    v8 = ".coords.2d.msaa";
  }

  else
  {
    switch(a2)
    {
      case 6:
        v8 = ".coords.cubestf";
        break;
      case 7:
        v8 = ".coords.cubestf.array";
        break;
      case 8:
        v7 = ".coords.2d.msaa.array";
        goto LABEL_13;
      default:
        return result;
    }
  }

  return std::string::append(result, v8);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v20 = *a2;
  v21 = *(a2 + 2);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 6);
  v8 = AGCLLVMGen5TargetLowerer::buildSimdShuffleDown(a1, &v20, a3, a4);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v9 = *(a1 + 192);
    v10 = (*(a1 + 968) - 1);
    v11 = llvm::ConstantInt::get();
    v17 = *a2;
    v18 = *(a2 + 2);
    if (v18)
    {
      llvm::MetadataTracking::track();
    }

    v19 = *(a2 + 6);
    v12 = (*(*a1 + 1624))(a1, &v17, *(a1 + 192));
    v16 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v11, v12, v15);
    if (v18)
    {
      llvm::MetadataTracking::untrack();
    }

    v16 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Sub, a4, v15);
    v16 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v8 = AGCLLVMGen5TargetLowerer::buildSimdShuffleUp(a1, &v16, a3, a4);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    if (v14)
    {
      llvm::MetadataTracking::track();
    }

    v15 = *(a2 + 6);
    v9 = (*(*a1 + 1624))(a1, &v13, *(a1 + 192));
    if (v14)
    {
      llvm::MetadataTracking::untrack();
    }

    v12 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v9, a4, v11);
    v12 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildQuadShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v19 = *a2;
  v20 = *(a2 + 2);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(a1, &v19, a3, a4);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v9 = *(a1 + 192);
    v10 = llvm::ConstantInt::get();
    v16 = *a2;
    v17 = *(a2 + 2);
    if (v17)
    {
      llvm::MetadataTracking::track();
    }

    v18 = *(a2 + 6);
    v11 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v16, *(a1 + 192));
    v15 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v10, v11, v14);
    if (v17)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Sub, a4, v14);
    v15 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildQuadShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleUp(a1, &v16, a3, a4);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    if (v14)
    {
      llvm::MetadataTracking::track();
    }

    v15 = *(a2 + 6);
    v9 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v13, *(a1 + 192));
    if (v14)
    {
      llvm::MetadataTracking::untrack();
    }

    v12 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v9, a4, v11);
    v12 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildWriteImageBlockIntrinsic(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, int a6)
{
  v67[16] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v62, *(a1 + 2064));
  if (a6)
  {
    std::string::append(&v62, ".subset");
  }

  std::string::append(&v62, ".coords");
  v66[0] = v67;
  v66[1] = 0x1000000000;
  v63 = v65;
  v64 = 0x1000000000;
  if (*(a1 + 1948) == 1 && *(a2 + 26) == 1)
  {
    v12 = *(a1 + 192);
    v13 = llvm::ConstantInt::get();
    v61 = 257;
    a3 = llvm::IRBuilderBase::CreateOr((a1 + 8), a3, v13, v60);
  }

  v57 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v58, (a1 + 8));
  v59 = *(a1 + 104);
  v14 = (*(*a1 + 1680))(a1, &v57, a3, a5);
  if (v58)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v14);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, a4);
  v15 = *(a1 + 200);
  v16 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, v16);
  v17 = *(a2 + 56);
  v18 = *(a1 + 200);
  v19 = llvm::PointerType::get();
  v61 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v17, v19, v60);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, Cast);
  v21 = *(a1 + 184);
  v22 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, v22);
  v23 = *(a2 + 32);
  if (!v23)
  {
    v24 = *(a1 + 208);
    v25 = llvm::ConstantInt::get();
    v61 = 257;
    v23 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v25, v22, v60);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v23);
  v26 = *(a2 + 4);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = ".cubestf";
LABEL_19:
      std::string::append(&v62, v27);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 248));
      v28 = *(a2 + 136);
      v29 = *(a1 + 248);
      goto LABEL_20;
    }

    if (v26 != 3)
    {
      goto LABEL_21;
    }

    std::string::append(&v62, ".3d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 336));
    v28 = *(a2 + 136);
    v29 = *(a1 + 336);
  }

  else
  {
    if (v26)
    {
      if (v26 != 1)
      {
        goto LABEL_21;
      }

      v27 = ".2d";
      goto LABEL_19;
    }

    std::string::append(&v62, ".1d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 200));
    v28 = *(a2 + 136);
    v29 = *(a1 + 200);
  }

LABEL_20:
  v61 = 257;
  ZExtOrBitCast = llvm::IRBuilderBase::CreateZExtOrBitCast((a1 + 8), v28, v29, v60);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, ZExtOrBitCast);
LABEL_21:
  if (*(a2 + 152))
  {
    std::string::append(&v62, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
    v31 = *(a2 + 152);
    v32 = *(a1 + 192);
    v61 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v33);
  }

  if (*(a2 + 232))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
    v34 = *(a2 + 232);
    v35 = *(a1 + 192);
    v61 = 257;
    v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v34, v35, v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v36);
  }

  if (*(a2 + 168))
  {
    std::string::append(&v62, ".lod");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
    v37 = *(a2 + 168);
    v38 = *(a1 + 192);
    v61 = 257;
    v39 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v37, v38, v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v39);
  }

  if (a6)
  {
    v40 = **(a2 + 120);
    if ((*(v40 + 8) & 0xFE) == 0x12)
    {
      v41 = *(v40 + 32);
      if (!v41)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v41 = 1;
    }

    v42 = 0;
    v43 = v41;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
      v44 = *(a2 + 120);
      v61 = 257;
      v45 = *(a1 + 200);
      v46 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v44, v46, v60);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, Element);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
      v48 = *(a2 + 128);
      v61 = 257;
      v49 = *(a1 + 200);
      v50 = llvm::ConstantInt::get();
      v51 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v48, v50, v60);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v51);
      ++v42;
    }

    while (v43 != v42);
  }

LABEL_34:
  if (*(a2 + 16) == 1)
  {
    std::string::append(&v62, ".rtz");
  }

  v52 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v53 = &v62;
LABEL_39:
    strlen(v53);
    goto LABEL_40;
  }

  v53 = v62.__r_.__value_.__r.__words[0];
  if (v62.__r_.__value_.__r.__words[0])
  {
    goto LABEL_39;
  }

LABEL_40:
  v54 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v61 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v55 + 24), v55, v63, v64, v60);
  if (v63 != v65)
  {
    free(v63);
  }

  if (v66[0] != v67)
  {
    free(v66[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v56 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPackMXU(void *a1, int a2, uint64_t *a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v21 = 0;
  v22 = 0;
  if (a2 == 9)
  {
    v5 = *a3;
    v6 = a1[37];
    v7 = "llvm.agx3.pack.4xi4.v4f32";
    v8 = "llvm.agx3.pack.4xi4.v4f16";
  }

  else
  {
    if (a2 != 10)
    {
      goto LABEL_9;
    }

    v5 = *a3;
    v6 = a1[27];
    v7 = "llvm.agx3.pack.2xi8.v2f32";
    v8 = "llvm.agx3.pack.2xi8.v2f16";
  }

  if (v5 == v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  MEMORY[0x20F331AA0](__s, v9);
LABEL_9:
  v10 = *a3;
  __src[0] = a1[24];
  __src[1] = v10;
  v27[0] = v28;
  v27[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v27, __src, v24);
  v11 = a1[54];
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    v12 = __s;
LABEL_12:
    strlen(v12);
    goto LABEL_13;
  }

  v12 = *__s;
  if (*__s)
  {
    goto LABEL_12;
  }

LABEL_13:
  v13 = a1[24];
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v15 = v14;
  v16 = a1[24];
  v26[0] = llvm::ConstantInt::get();
  v26[1] = a3;
  v25 = 257;
  v17 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v15 + 24), v15, v26, 2, __src);
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(*__s);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildUnpackMXU(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v21 = 0;
  v22 = 0;
  if (a2 == 10)
  {
    v8 = "llvm.agx3.unpack.2xi8.v2f16";
    v9 = 28;
    v10 = 27;
  }

  else
  {
    v7 = 0;
    if (a2 != 9)
    {
      goto LABEL_6;
    }

    v8 = "llvm.agx3.unpack.4xi4.v4f16";
    v9 = 39;
    v10 = 37;
  }

  MEMORY[0x20F331AA0](__s, v8);
  v11 = a1[v10];
  v7 = a1[v9];
LABEL_6:
  __src[0] = a1[24];
  __src[1] = __src[0];
  v27[0] = v28;
  v27[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v27, __src, v24);
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    v12 = __s;
LABEL_9:
    strlen(v12);
    goto LABEL_10;
  }

  v12 = *__s;
  if (*__s)
  {
    goto LABEL_9;
  }

LABEL_10:
  llvm::FunctionType::get();
  v13 = a1[54];
  llvm::Module::getOrInsertFunction();
  v15 = v14;
  v16 = a1[24];
  v26[0] = llvm::ConstantInt::get();
  v26[1] = a3;
  v25 = 257;
  FPExt = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v15 + 24), v15, v26, 2, __src);
  if (a1[21] == a4)
  {
    v25 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1), FPExt, v7, __src);
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(*__s);
  }

  v18 = *MEMORY[0x277D85DE8];
  return FPExt;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::intersectionQueryResidencyForQueryAtInstruction(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Value *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Value *>>>::find<llvm::Value *>((a1 + 8), a2);
  if (v4)
  {
    v2 = v4[3];
  }

  if (*(a1 + 80) != 1)
  {
    return 2;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    return 2;
  }

  while (1)
  {
    v6 = v5[4];
    if (v2 >= v6)
    {
      break;
    }

LABEL_8:
    v5 = *v5;
    if (!v5)
    {
      return 2;
    }
  }

  if (v6 < v2)
  {
    ++v5;
    goto LABEL_8;
  }

  if ((*(a1 + 51) & 1) != 0 || (*(a1 + 48) & 1) != 0 || *(a1 + 53) == 1)
  {
    return 2;
  }

  return 0;
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Value *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Value *>>>::find<llvm::Value *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BBFA0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPayloadVariant(uint64_t a1, int a2)
{
  if ((~a2 & 0x44) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  v3 = a2 & 1;
  if ((a2 & 0x40) != 0)
  {
    v3 = 2;
  }

  if ((a2 & 4) != 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::replacePayloadSupportFunctions(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a1[54];
  result = llvm::Module::getFunction();
  if (result)
  {
    v13 = result;
    v38 = a4;
    v14 = *(result + 8);
    while (v14)
    {
      v15 = *(v14 + 24);
      v14 = *(v14 + 8);
      if (a6 == 8)
      {
        llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v15);
        v16 = (*(*a1 + 117))(a1);
        v17 = a1[25];
        v18 = llvm::ConstantInt::get();
        v42 = 257;
        v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v16, v18, v41);
        v20 = a1[26];
        v21 = llvm::PointerType::get();
        v22 = *(a2 + 16);
        v42 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v22, v21, v41);
        PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v19, PointerCast);
        v25 = a1[25];
        (*(*a1[115] + 1128))();
        v26 = a1[25];
        v27 = llvm::ConstantInt::get();
        v42 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v25, PerVridSetDataPtr, v27, v41);
        v42 = 257;
        Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v41);
        v30 = a1[23];
        v40 = 257;
        llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Load, v30, v39);
      }

      else
      {
        v31 = a1[23];
        llvm::ConstantInt::get();
      }

      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v15);
    }

    v32 = a1[54];
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v34 = *(Function + 8);
      if (v34)
      {
        do
        {
          v35 = *(v34 + 8);
          v36 = *(v34 + 24);
          llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v36);
          v37 = a1[22];
          llvm::ConstantInt::get();
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v36);
          v34 = v35;
        }

        while (v35);
      }
    }

    llvm::Function::eraseFromParent(v13);
    return (*(*a1 + 180))(a1, a2, a3, v38);
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v5 = *(a1 + 200);
  v24[0] = "vrid_ext";
  v25 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a2, v5, v24);
  v7 = *(a1 + 200);
  v8 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), Cast, v8, v24);
  v10 = *(a1 + 208);
  (*(**(a1 + 920) + 968))();
  v11 = *(a1 + 200);
  v12 = llvm::ConstantInt::get();
  v25 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v10, a3, v12, v24);
  v14 = *(a1 + 200);
  v15 = llvm::PointerType::get();
  v23 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v15, v22);
  v17 = *(a1 + 200);
  (*(**(a1 + 920) + 1136))();
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v25 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), LShr, v19, v24);
  v23 = 257;
  return llvm::IRBuilderBase::CreateGEP((a1 + 8), v17, PointerCast, Mul, v22);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = (*(*a1 + 1016))(a1, a2, a4);
  v9 = 0;
  v10 = a1[1940];
  v11 = 6;
  v12 = -104;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v11, v6, v4, v10))
    {
      v13 = RaytracingConstantsGen1::payloadSegmentSize(v11, a1[2872]);
      if ((v11 - 19) <= 4)
      {
        v14 = (0x201010101uLL >> v12) & 3;
        if (a3 >= v14)
        {
          v15 = (a3 - v14) / (((v14 << 8) & 0xFFFCFFFF | (((0x201010101uLL >> v12) & 3) << 16)) >> 16) + 1;
        }

        else
        {
          v15 = 0;
        }

        v13 *= v15;
      }

      v16 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v8 >= v16;
      v18 = v8 - v16;
      if (!v17)
      {
        v18 = 0;
      }

      if (v13 - 1 >= v8)
      {
        v9 += v13;
      }

      else
      {
        v8 = v18;
      }
    }

    ++v11;
    v12 += 8;
  }

  while (v11 != 26);
  return v9;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getRaytracingShaderType(uint64_t a1, int a2, char a3)
{
  if (a2 > 8)
  {
    if (a2 == 11)
    {
      return 3;
    }

    if (a2 == 10 || a2 == 9)
    {
      return (a3 & 0xFD) != 0;
    }

    return 4;
  }

  if (!a2)
  {
    return 5;
  }

  if (a2 != 1)
  {
    if (a2 == 4)
    {
      return 7;
    }

    return 4;
  }

  return 6;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSDoneRayTraceSCSFlagSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a3 + 16);
  v7 = *(a1 + 208);
  if ((*(*v6 + 2) & 0xFE) == 0x12)
  {
    v8 = *(**(*v6 + 2) + 8);
  }

  v9 = llvm::PointerType::get();
  v23 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v6, v9, v22);
  v11 = (*(*a1 + 952))(a1);
  v12 = *(a1 + 200);
  v22[0] = "vrid";
  v23 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v12, v22);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  v15 = *(a1 + 200);
  v16 = llvm::ConstantInt::get();
  v17 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v23 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v17, PerVridSetDataPtr, v19, v22);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v16, GEP, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSDoneRayTraceSCSFlagRead(AGCLLVMBuilder *a1, uint64_t a2, uint64_t a3)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a3 + 16);
  v7 = *(a1 + 26);
  if ((*(*v6 + 2) & 0xFE) == 0x12)
  {
    v8 = *(**(*v6 + 2) + 8);
  }

  v9 = llvm::PointerType::get();
  v22 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v6, v9, v21);
  v11 = (*(*a1 + 952))(a1);
  v12 = *(a1 + 25);
  v21[0] = "vrid";
  v22 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v12, v21);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  v15 = *(a1 + 25);
  (*(**(a1 + 115) + 1096))();
  v16 = *(a1 + 25);
  v17 = llvm::ConstantInt::get();
  v22 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v15, PerVridSetDataPtr, v17, v21);
  v20[16] = 257;
  return AGCLLVMBuilder::CreateLoad(a1, GEP, v20);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v25);
  v13 = *(a1 + 144);
  v14 = *(a1 + 184);
  v15 = llvm::PointerType::get();
  v26 = 257;
  v30[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v15, v25);
  v16 = *(a1 + 184);
  v17 = llvm::PointerType::get();
  v24 = 257;
  v30[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v17, v23);
  v18 = *(a1 + 208);
  v22 = 257;
  v30[2] = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a5, v18, v21);
  v30[3] = a6;
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.set_buffer_intersection_function_table", 42, v13, v30, 4uLL);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v25);
  v13 = *(a1 + 208);
  v14 = *(a1 + 184);
  v15 = llvm::PointerType::get();
  v26 = 257;
  v30[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v15, v25);
  v16 = *(a1 + 184);
  v17 = llvm::PointerType::get();
  v24 = 257;
  v30[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v17, v23);
  v30[2] = a5;
  v18 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_buffer_intersection_function_table", 42, v13, v30, 3uLL);
  v22 = 257;
  result = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v18, a6, v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetSizeIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
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

  v18 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v17);
  v9 = *(a1 + 200);
  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v18 = 257;
  v22[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v11, v17);
  v12 = *(a1 + 184);
  v13 = llvm::PointerType::get();
  v16[16] = 257;
  v22[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v13, v16);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_size_intersection_function_table", 40, v9, v22, 2uLL);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getIntersectionMainFunctionName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  if ((*(*a1 + 1424))(a1, a2, a4) == 4)
  {
    v9 = "agc.intersection";
  }

  else
  {
    v9 = "agc.cliqueS";
  }

  result = std::string::basic_string[abi:nn200100]<0>(a5, v9);
  if (a3 <= 7)
  {
    result = std::string::append(a5, off_277E220F0[a3]);
  }

  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 11)
      {
        if (v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22170;
      }

      else if (v7 == 10)
      {
        if (v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22150;
      }

      else
      {
        if (v7 != 9 || v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22130;
      }

      goto LABEL_39;
    }

    if (v7 == 6)
    {
      goto LABEL_26;
    }

    if (v7 != 7)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v11 = ".gin1122SWWA";
        goto LABEL_40;
      }

LABEL_18:
      result = std::string::append(a5, ".box");
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v11 = ".box_motion_leaf";
      }

      else
      {
        v11 = ".box_leaf";
      }

      goto LABEL_40;
    }

LABEL_27:
    result = std::string::append(a5, ".curve");
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v11 = ".curve_motion_leaf";
    }

    else
    {
      v11 = ".curve_leaf";
    }

    goto LABEL_40;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v13 = ".early_termination";
      goto LABEL_34;
    }

    if (v7 != 2)
    {
      return result;
    }

LABEL_26:
    v13 = ".triangle";
LABEL_34:
    result = std::string::append(a5, v13);
    if (v5 >= 8)
    {
      return result;
    }

    v12 = off_277E22190;
LABEL_39:
    v11 = v12[v5];
    goto LABEL_40;
  }

  v11 = ".miss";
LABEL_40:

  return std::string::append(a5, v11);
}

unint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSizeAndUserPayloadSize(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v6 = a4;
  if (a3)
  {
    if (a4)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    if ((a4 & 0x40) != 0)
    {
      v9 = 7;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = (*(*a1 + 1456))(a1, a4);
  }

  return (AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(a1, v9, a5, (v6 >> 5) & 1) + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCliqueSGeneral(void *a1, __int128 *a2, uint64_t a3, unsigned int a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 2);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v18, (a1 + 1));
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(v17, 0, sizeof(v17));
  (*(*a1 + 944))(v17, a1);
  memset(v16, 0, sizeof(v16));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v16, a1, a3, *&v17[0], 0, 0, 0);
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, *&v17[0], v16, a4, 1u, 1);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSGeneral(AGCLLVMBuilder::InsertPoint,std::array<llvm::GlobalVariable *,6ul> const&,unsigned char,unsigned char)::functionNames[a5];
  v12 = strlen(v11);
  v13 = a1[18];
  v21 = v10;
  v22 = v17[0];
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v11, v12, v13, &v21, 3uLL);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, llvm::Type **a6, char a7)
{
  v14 = *(a2 + 200);
  llvm::PointerType::get();
  v15 = *(a2 + 208);
  v16 = llvm::PointerType::get();
  v17 = *(a3 + 16);
  v52 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), v17, v16, v51);
  v19 = *(a2 + 208);
  (*(**(a2 + 920) + 896))();
  v20 = *(a2 + 200);
  v21 = llvm::ConstantInt::get();
  v51[0] = "scs.scs_layout.ptr";
  v52 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a2 + 8), v19, PointerCast, v21, v51);
  v23 = *(a2 + 200);
  v24 = llvm::PointerType::get();
  v52 = 257;
  v25 = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), GEP, v24, v51);
  v26 = *(a2 + 200);
  v27 = llvm::ConstantInt::get();
  v52 = 257;
  v28 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v26, v25, v27, v51);
  *a1 = AGCLLVMBuilder::CreateLoad(a2, v28, "global_stride");
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a2, a4, PointerCast);
  v30 = *(a2 + 200);
  (*(**(a2 + 920) + 1072))();
  v31 = *(a2 + 200);
  v32 = llvm::ConstantInt::get();
  v52 = 257;
  v33 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v30, PerVridSetDataPtr, v32, v51);
  v34 = *(a2 + 200);
  (*(**(a2 + 920) + 1080))();
  v35 = *(a2 + 200);
  v36 = llvm::ConstantInt::get();
  v52 = 257;
  v37 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v34, PerVridSetDataPtr, v36, v51);
  v38 = *(a2 + 200);
  (*(**(a2 + 920) + 1088))();
  v39 = *(a2 + 200);
  v40 = llvm::ConstantInt::get();
  v52 = 257;
  v41 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v38, PerVridSetDataPtr, v40, v51);
  v42 = *(a2 + 200);
  v52 = 257;
  llvm::Type::isOpaquePointerTy(*v41);
  a1[2] = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v42, v41, 0, v51);
  v43 = *(a2 + 200);
  if ((a5 & 0x100000000) != 0)
  {
    v47 = *(a2 + 200);
    Cast = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), Cast, v33, 0);
  }

  else
  {
    v52 = 257;
    llvm::Type::isOpaquePointerTy(*v33);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v43, v33, 0, v51);
    v45 = *(a2 + 200);
    v50[16] = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 38, AlignedLoad, v45, v50);
  }

  a1[1] = Cast;
  if (a7)
  {
    result = llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), a6, v37, 0);
  }

  else
  {
    v49 = *(a2 + 200);
    v52 = 257;
    llvm::Type::isOpaquePointerTy(*v37);
    result = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v49, v37, 0, v51);
    a6 = result;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = a6;
  return result;
}

uint64_t *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(void *a1, uint64_t a2, uint64_t a3, llvm::Value **a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v126 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 477);
  v12 = a1[23];
  v13 = llvm::PointerType::get();
  v14 = a1[23];
  v108 = llvm::PointerType::get();
  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v17 = a1[25];
  *&v120 = "vrid_ext";
  LOWORD(v122) = 259;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, a3, v17, &v120);
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  v117 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v118, (a1 + 1));
  v119 = *(a1 + 26);
  (*(*a1 + 1976))(&v120, a1, &v117, a2, a3, a7);
  if (v118)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v11 >= 4)
  {
    v112 = *(a1 + 7);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v113, (a1 + 1));
    v114 = *(a1 + 26);
    (*(*a1 + 1096))(v115, a1, &v112);
    v19 = v115[1];
    v20 = v115[2];
    if (v113)
    {
      llvm::MetadataTracking::untrack();
    }

    v21 = a1[25];
    v22 = llvm::ConstantInt::get();
    v115[0] = "scs.num_vrids";
    v116 = 259;
    llvm::IRBuilderBase::CreateMul((a1 + 1), v20, v22, v115);
    v23 = a1[25];
    v24 = llvm::ConstantInt::get();
    v115[0] = "scs.max_level_depth";
    v116 = 259;
    llvm::IRBuilderBase::CreateAdd((a1 + 1), v19, v24, v115);
  }

  v25 = a1[25];
  v26 = llvm::ConstantInt::get();
  v115[0] = "vrid_level_1";
  v116 = 259;
  v99 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v26, v115);
  v27 = a1[25];
  v28 = llvm::ConstantInt::get();
  v115[0] = "vrid_level_2";
  v116 = 259;
  v103 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v28, v115);
  llvm::ArrayType::get(v13, 0x1A);
  v29 = llvm::UndefValue::get();
  LODWORD(v124[0]) = 2;
  v116 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v29, *(&v120 + 1), v124, 1, v115);
  LODWORD(v124[0]) = 3;
  v116 = 257;
  v31 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), InsertValue, v121, v124, 1, v115);
  LODWORD(v124[0]) = 0;
  v116 = 257;
  v32 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v31, *(&v121 + 1), v124, 1, v115);
  LODWORD(v124[0]) = 4;
  v116 = 257;
  v33 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v32, *(&v122 + 1), v124, 1, v115);
  LODWORD(v124[0]) = 5;
  v116 = 257;
  v34 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v33, v123, v124, 1, v115);
  v35 = a6;
  if (a7)
  {
    LODWORD(v124[0]) = 1;
    v116 = 257;
    v34 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v34, v120, v124, 1, v115);
  }

  v104 = v34;
  if (a5 <= 6 && (((1 << a5) & 0x4A) != 0 || ((1 << a5) & 0x21) != 0))
  {
    v36 = a1[25];
    v101 = llvm::ConstantInt::get();
    v37 = a1[25];
    llvm::ConstantInt::get();
  }

  else
  {
    v95 = a4[3];
    v96 = a1[25];
    v97 = llvm::ConstantInt::get();
    v116 = 257;
    v101 = v95;
    llvm::IRBuilderBase::CreateAdd((a1 + 1), v95, v97, v115);
  }

  v116 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v15, v13, v115);
  v116 = 257;
  v98 = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v16, v108, v115);
  v39 = *a4;
  v115[0] = "global_vrid_size";
  v116 = 259;
  v40 = *v39;
  v41 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v39, v41, v115);
  v109 = (*(*a1 + 1016))(a1, a5, a6);
  v43 = a1[23];
  v116 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v99, LShr, v115);
  v124[0] = "segment_start";
  v125 = 259;
  v45 = a5;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v43, PointerCast, Mul, v124);
  v46 = a1[23];
  v47 = *(&v121 + 1);
  v48 = a1[25];
  v49 = llvm::ConstantInt::get();
  v116 = 257;
  v106 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v46, v47, v49, v115);
  v50 = 6;
  v51 = -104;
  v52 = v104;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v50, v45, v35, *(a1 + 1940)))
    {
      v53 = RaytracingConstantsGen1::payloadSegmentSize(v50, *(a1 + 2872));
      if (v53)
      {
        v54 = v53;
        if (v53 <= v109)
        {
          LODWORD(v124[0]) = v50;
          v116 = 257;
          v76 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v52, v106, v124, 1, v115);
          v77 = (v54 + 3) & 0x3FFC;
          v78 = a1[23];
          v79 = a1[25];
          v80 = llvm::ConstantInt::get();
          v116 = 257;
          v81 = v78;
          v52 = v76;
          v106 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v81, v106, v80, v115);
          v82 = (v109 - v77);
          if (v109 < v77)
          {
            v82 = 0;
          }

          v109 = v82;
        }

        else
        {
          v55 = a1[25];
          v56 = llvm::ConstantInt::get();
          if ((v50 - 19) <= 4)
          {
            v57 = a1[25];
            v58 = llvm::ConstantInt::get();
            v116 = 257;
            llvm::IRBuilderBase::CreateICmp(a1 + 1, 35, v101, v58, v115);
            v59 = a1[25];
            v60 = llvm::ConstantInt::get();
            v116 = 257;
            Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v101, v60, v115);
            v62 = a1[25];
            v35 = a6;
            v63 = llvm::ConstantInt::get();
            v125 = 257;
            UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 1), Sub, v63, v124);
            v65 = a1[25];
            v66 = llvm::ConstantInt::get();
            v111 = 257;
            llvm::IRBuilderBase::CreateAdd((a1 + 1), UDiv, v66, v110);
            v67 = a1[25];
            llvm::ConstantInt::get();
            Select = llvm::IRBuilderBase::CreateSelect();
            v116 = 257;
            v56 = llvm::IRBuilderBase::CreateMul((a1 + 1), v56, Select, v115);
          }

          v116 = 257;
          v69 = llvm::IRBuilderBase::CreateMul((a1 + 1), v103, v56, v115);
          v70 = a1[23];
          v116 = 257;
          v71 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v70, GEP, v69, v115);
          v110[0] = v50;
          v125 = 257;
          v52 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v52, v71, v110, 1, v124);
          v72 = a1[23];
          v73 = a1[25];
          v74 = llvm::ConstantInt::get();
          v116 = 257;
          v75 = llvm::IRBuilderBase::CreateMul((a1 + 1), v56, v74, v115);
          v125 = 257;
          GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v72, GEP, v75, v124);
          v45 = a5;
        }
      }
    }

    ++v50;
    v51 += 8;
  }

  while (v50 != 26);
  if (a4[1])
  {
    v83 = *a4;
    v84 = a1[25];
    v85 = llvm::ConstantInt::get();
    v116 = 257;
    v86 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v83, v85, v115);
    v125 = 257;
    v87 = llvm::IRBuilderBase::CreateMul((a1 + 1), v99, v86, v124);
    v88 = a4[1];
    v116 = 257;
    v89 = llvm::IRBuilderBase::CreateMul((a1 + 1), v103, v88, v115);
    v116 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), v87, v89, v115);
    v91 = *v98;
    v92 = a1[23];
    v115[0] = "ray_user_data_as_i8";
    v116 = 259;
    v124[0] = llvm::IRBuilderBase::CreateGEP((a1 + 1), v92, v98, Add, v115);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.in.user.payload.section.bounds", 40, v91, v124, 1uLL);
  }

  v93 = *MEMORY[0x277D85DE8];
  return v52;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCliqueSPop(void *a1, __int128 *a2, uint64_t a3, unsigned int a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 2);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v15, (a1 + 1));
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v14, a1);
  v8 = *&v14[0];
  memset(v14, 0, sizeof(v14));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v14, a1, a3, v8, 0, 0, 0);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v8, v14, a4, 1u, 1);
  v10 = a1[18];
  v18[0] = v9;
  v18[1] = v8;
  v11 = a1[22];
  v18[2] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_pop_commit_end", 26, v10, v18, 3uLL);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCliqueSPush(uint64_t a1, __int128 *a2, uint64_t a3, llvm::Type **a4, uint64_t a5, unsigned int a6)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 2);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v25, a1 + 8);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(v24, 0, sizeof(v24));
  (*(*a1 + 944))(v24, a1);
  memset(v23, 0, sizeof(v23));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v23, a1, a3, *&v24[0], 0, 0, 0);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, *&v24[0], v23, a6, 1u, 1);
  v12 = *(a1 + 144);
  v28[0] = v11;
  v22 = 257;
  v28[1] = AGCLLVMBuilder::CreateLoad(a1, a4, v21);
  v28[2] = *&v24[0];
  v13 = *(a1 + 176);
  v28[3] = llvm::ConstantInt::get();
  v14 = *(a1 + 176);
  v28[4] = llvm::ConstantInt::get();
  v15 = *(a1 + 176);
  v28[5] = llvm::ConstantInt::get();
  v16 = *(a1 + 1940);
  v17 = *(a1 + 176);
  v28[6] = llvm::ConstantInt::get();
  v18 = *(a1 + 184);
  v28[7] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_transform_and_commit", 32, v12, v28, 8uLL);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayDriverTestHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v14, "agx.ray_driver_test_hit");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v14, a3);
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v17 >= 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 176);
  v21[0] = *(a3 + 24);
  v21[1] = a4;
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v21, 2uLL);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(uint64_t a1, const void **a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(__p, &unk_20E75F419);
  v6 = *a3 - 1;
  if (v6 <= 2)
  {
    MEMORY[0x20F331AA0](__p, off_277E220D8[v6]);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayHasMoreResults(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
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

  std::string::basic_string[abi:nn200100]<0>(v12, "agx.ray_has_more_results");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v12, a3);
  if (v15 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v15 >= 0)
  {
    v7 = v15;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = *(a1 + 176);
  v19[0] = *(a3 + 24);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v6, v7, v8, v19, 1uLL);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayRunThisThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
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

  std::string::basic_string[abi:nn200100]<0>(v15, "agx.ray_run_this_thread");
  v6 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v15, a3);
  if (v18 < 0)
  {
    v6 = __p[0];
  }

  if (v18 >= 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = *(a1 + 184);
  v9 = *v8;
  v22 = v8;
  v23 = v8;
  v10 = llvm::StructType::get();
  v11 = *(a3 + 8);
  v22 = *(a3 + 24);
  v23 = v11;
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v6, v7, v10, &v22, 2uLL);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayEndSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "agx.end_serial");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v13, a3);
  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v16 >= 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 144);
  v11 = *(a3 + 8);
  v20[0] = *(a3 + 24);
  v20[1] = v11;
  v20[2] = a4;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v20, 3uLL);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayHasTerminated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v14, "agx.ray_has_terminated");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v14, a3);
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v17 >= 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 176);
  v21[0] = *(a3 + 24);
  v21[1] = a4;
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v21, 2uLL);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRiaCliqueEnd(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.ria_clique_end", 18, *(a1 + 144), 0, 0);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::commitIntersectionTestSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v19, "agx.commit_serial");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v19, a3);
  if (v22 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v22 >= 0)
  {
    v13 = v22;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = *(a1 + 192);
  v15 = *(a3 + 8);
  v26[0] = *(a3 + 24);
  v26[1] = v15;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v16 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v12, v13, v14, v26, 5uLL);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::commitIntersectionTestParallel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[7] = *MEMORY[0x277D85DE8];
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = *(a3 + 8);
  v27[0] = *(a3 + 24);
  v27[1] = v12;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v13 = *(a1 + 176);
  v27[5] = llvm::ConstantInt::get();
  v14 = *(a1 + 176);
  v27[6] = llvm::ConstantInt::get();
  std::string::basic_string[abi:nn200100]<0>(v20, "agx.commit_parallel");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v20, a3);
  if (v23 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v23 >= 0)
  {
    v16 = v23;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v15, v16, *(a1 + 176), v27, 7uLL);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIFBEmulationWrapper(AGCLLVMBuilder *a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v26[10] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v26, a1);
  v8 = v26[0];
  memset(v22, 0, sizeof(v22));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v22, a1, a4, v26[0], 0, 0, 0);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v8, v22, 0, 1u, 1);
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v8, v22, 1u, 1u, 1);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v8, v22, 2u, 1u, 1);
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v8, v22, 3u, 1u, 1);
  v13 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v8, v22, 4u, 1u, 1);
  v14 = *(a1 + 18);
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v26[4] = v13;
  v21 = 257;
  v26[5] = AGCLLVMBuilder::CreateLoad(a1, a3, v20);
  v26[6] = v8;
  v15 = *(a1 + 23);
  v26[7] = llvm::ConstantInt::get();
  v16 = *(a1 + 23);
  v26[8] = llvm::ConstantInt::get();
  v17 = *(a1 + 23);
  v26[9] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.ifb_wrapper", 15, v14, v26, 0xAuLL);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionGin1122SWWA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
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

  (*(*a1 + 944))(v12, a1);
  v6 = *&v12[0];
  memset(v12, 0, sizeof(v12));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v12, a1, a3, v6, 0, 0, 0);
  v16[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v6, v12, 8u, 1u, 1);
  v16[1] = v6;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_parallel_gin1122swwa", 31, *(a1 + 144), v16, 2uLL);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v9);
  if (v10)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionEarlyTermination(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
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

  (*(*a1 + 944))(v14, a1);
  v8 = *&v14[0];
  memset(v14, 0, sizeof(v14));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v14, a1, a3, v8, 0, 0, 0);
  v18[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v8, v14, a4, 1u, 1);
  v18[1] = v8;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_early_termination", 28, *(a1 + 144), v18, 2uLL);
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v11);
  if (v12)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionMiss(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v13, a1);
  v6 = *&v13[0];
  memset(v13, 0, sizeof(v13));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v13, a1, a3, v6, 0, 0, 0);
  v17[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v6, v13, 8u, 1u, 1);
  v17[1] = v6;
  v7 = *(a1 + 176);
  v17[2] = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_parallel_miss", 24, *(a1 + 144), v17, 3uLL);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v10);
  if (v11)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionTest(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  v15 = a4 - 6 < 3 || (a6 - 5) < 3;
  if (a4 > 8)
  {
    goto LABEL_19;
  }

  if (((1 << a4) & 0x44) == 0)
  {
    if (((1 << a4) & 0x88) != 0)
    {
      v37 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
      v39 = *(a1 + 104);
      (*(*a1 + 1208))(&v43, a1, &v37, a3, a5, a6, 1, a7, 0, v15);
      v45 = v43;
      v46 = v44;
      if (!v38)
      {
LABEL_19:
        v16 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (((1 << a4) & 0x120) == 0)
      {
        goto LABEL_19;
      }

      v34 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (a1 + 8));
      v36 = *(a1 + 104);
      (*(*a1 + 1200))(&v43, a1, &v34, a3, a5, a6, 1, a7, 0, v15);
      v45 = v43;
      v46 = v44;
      if (!v35)
      {
        goto LABEL_19;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_19;
  }

  v40 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
  v42 = *(a1 + 104);
  HIBYTE(v24) = v15;
  LOBYTE(v24) = 0;
  (*(*a1 + 1192))(&v43, a1, &v40, a3, a5, a6, 1, a7, !v15, v24);
  v45 = v43;
  v46 = v44;
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = 1;
LABEL_23:
  v31 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 8));
  v33 = *(a1 + 104);
  v17 = *(a1 + 176);
  v18 = llvm::ConstantInt::get();
  v19 = *(a1 + 176);
  v20 = llvm::ConstantInt::get();
  v21 = *(a1 + 168);
  v22 = llvm::ConstantFP::get();
  (*(*a1 + 1256))(a1, &v31, &v45, v18, v20, v22, (a6 - 5) < 3u, 0);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    v28 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
    v30 = *(a1 + 104);
    (*(*a1 + 1112))(a1, &v28, a3, a5, a6, 1);
    if (v29)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v25 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (a1 + 8));
  v27 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v25);
  if (v26)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCurveIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, unsigned int a5@<W5>, char a6@<W7>, uint64_t a7@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v47, a1);
  v14 = v47;
  memset(v43, 0, sizeof(v43));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v43, a1, a3, v47, 0, 0, 0);
  v15 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v14, v43, a4, a5, 1);
  v17 = v16;
  v18 = *(a1 + 168);
  v19 = *(a1 + 200);
  v20 = *(a1 + 184);
  v21 = llvm::PointerType::get();
  v22 = *(a1 + 200);
  v23 = *v18;
  v47 = v18;
  v48 = v18;
  *&v49 = v19;
  *(&v49 + 1) = v20;
  v50 = v19;
  v51.i64[0] = v19;
  v51.i64[1] = v21;
  v52 = v22;
  v53 = v22;
  v24 = llvm::StructType::get();
  v25 = *(a1 + 184);
  v42 = *(a1 + 192);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + 192);
  v28 = *v26;
  v47 = v26;
  v48 = v27;
  *&v49 = v27;
  *(&v49 + 1) = v27;
  v29 = llvm::StructType::get();
  v30 = *v24;
  v47 = v24;
  v48 = v42;
  v49 = v42;
  v50 = v29;
  v51 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v31 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v31);
  v33 = result;
  if ((a6 & 1) == 0)
  {
    v34 = *(a1 + 1940);
    v47 = v15;
    v35 = *(a1 + 184);
    v48 = llvm::ConstantInt::get();
    v36 = *(a1 + 176);
    v37 = llvm::ConstantInt::get();
    if (v34)
    {
      v38 = 21;
    }

    else
    {
      v38 = 14;
    }

    *&v49 = v37;
    if (v34)
    {
      v39 = "agx.curve_test_legacy";
    }

    else
    {
      v39 = "agx.curve_test";
    }

    v40 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v39, v38, v31, &v47, 3uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v40, v33, 0);
  }

  *a7 = 3;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17;
  *(a7 + 24) = v33;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildBoundingBoxIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, unsigned int a5@<W5>, char a6@<W7>, uint64_t a7@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v47, a1);
  v14 = v47;
  memset(v43, 0, sizeof(v43));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v43, a1, a3, v47, 0, 0, 0);
  v15 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v14, v43, a4, a5, 1);
  v17 = v16;
  v18 = *(a1 + 168);
  v19 = *(a1 + 200);
  v20 = *(a1 + 184);
  v21 = llvm::PointerType::get();
  v22 = *(a1 + 200);
  v23 = *v18;
  v47 = v18;
  v48 = v18;
  *&v49 = v19;
  *(&v49 + 1) = v20;
  v50 = v19;
  v51.i64[0] = v19;
  v51.i64[1] = v21;
  v52 = v22;
  v53 = v22;
  v24 = llvm::StructType::get();
  v25 = *(a1 + 184);
  v42 = *(a1 + 192);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + 192);
  v28 = *v26;
  v47 = v26;
  v48 = v27;
  *&v49 = v27;
  *(&v49 + 1) = v27;
  v29 = llvm::StructType::get();
  v30 = *v24;
  v47 = v24;
  v48 = v42;
  v49 = v42;
  v50 = v29;
  v51 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v31 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v31);
  v33 = result;
  if ((a6 & 1) == 0)
  {
    v34 = *(a1 + 1940);
    v47 = v15;
    v35 = *(a1 + 184);
    v48 = llvm::ConstantInt::get();
    v36 = *(a1 + 176);
    v37 = llvm::ConstantInt::get();
    if (v34)
    {
      v38 = 28;
    }

    else
    {
      v38 = 21;
    }

    *&v49 = v37;
    if (v34)
    {
      v39 = "agx.bounding_box_test_legacy";
    }

    else
    {
      v39 = "agx.bounding_box_test";
    }

    v40 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v39, v38, v31, &v47, 3uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v40, v33, 0);
  }

  *a7 = 2;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17;
  *(a7 + 24) = v33;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildTriangleIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, unsigned int a5@<W5>, uint64_t a6@<X8>, char a7)
{
  v59 = *MEMORY[0x277D85DE8];
  v51 = *a2;
  v52 = *(a2 + 16);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v51);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v54, a1);
  v13 = v54;
  memset(v50, 0, sizeof(v50));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v50, a1, a3, v54, 0, 0, 0);
  v14 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v13, v50, a4, a5, 1);
  v16 = v15;
  v17 = *(a1 + 168);
  v18 = *(a1 + 200);
  v19 = *(a1 + 184);
  v20 = llvm::PointerType::get();
  v21 = *(a1 + 224);
  v22 = *(a1 + 184);
  v23 = *v17;
  v54 = v17;
  v55 = v18;
  *&v56 = v18;
  *(&v56 + 1) = v20;
  v57 = v21;
  v58.i64[0] = v22;
  v24 = llvm::StructType::get();
  v25 = llvm::ArrayType::get(v24, 2);
  v26 = *(a1 + 200);
  v27 = *(a1 + 184);
  v28 = *v25;
  v54 = v25;
  v55 = v26;
  *&v56 = v26;
  *(&v56 + 1) = v26;
  v57 = v26;
  v58.i64[0] = v27;
  v29 = llvm::StructType::get();
  v30 = *(a1 + 184);
  v49 = *(a1 + 192);
  v31 = llvm::PointerType::get();
  v32 = *(a1 + 192);
  v33 = *v31;
  v54 = v31;
  v55 = v32;
  *&v56 = v32;
  *(&v56 + 1) = v32;
  v34 = llvm::StructType::get();
  v35 = *v29;
  v54 = v29;
  v55 = v49;
  v56 = v49;
  v57 = v34;
  v58 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v36 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v36);
  v38 = result;
  if ((a7 & 1) == 0)
  {
    v39 = *(a1 + 1940);
    v54 = v14;
    v40 = *(a1 + 184);
    v55 = llvm::ConstantInt::get();
    v41 = *(a1 + 184);
    *&v56 = llvm::ConstantInt::get();
    v42 = *(a1 + 176);
    *(&v56 + 1) = llvm::ConstantInt::get();
    v43 = *(a1 + 176);
    v44 = llvm::ConstantInt::get();
    if (v39)
    {
      v45 = 24;
    }

    else
    {
      v45 = 17;
    }

    v57 = v44;
    if (v39)
    {
      v46 = "agx.triangle_test_legacy";
    }

    else
    {
      v46 = "agx.triangle_test";
    }

    v47 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v46, v45, v36, &v54, 5uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v47, v38, 0);
  }

  *a6 = 1;
  *(a6 + 8) = v14;
  *(a6 + 16) = v16;
  *(a6 + 24) = v38;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectionQueryAccessor(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, std::string::size_type a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v41 = a5;
  v42 = a6;
  v38 = *a2;
  v39 = *(a2 + 16);
  if (v39)
  {
    llvm::MetadataTracking::track();
  }

  v40 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v38);
  if (v39)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = *(a1 + 184);
  v16 = llvm::PointerType::get();
  v17 = 4;
  if (a6 < 4)
  {
    v17 = a6;
  }

  v32.__r_.__value_.__r.__words[0] = a5 + v17;
  v32.__r_.__value_.__l.__size_ = a6 - v17;
  llvm::StringRef::str(&__str, &v32);
  v18 = std::string::find(&__str, 46, 0);
  if (v18 != -1)
  {
    std::string::basic_string(&v32, &__str, 0, v18, &v43);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v32;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 42 && !memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query", 0x2AuLL) && llvm::StringRef::find() != -1)
  {
    std::string::append(&__str, "_instancing");
  }

  std::string::basic_string[abi:nn200100]<0>(&v36, "_preCurves");
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __str.__r_.__value_.__l.__size_ != 42)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 53 && !memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query_instancing", 0x35uLL))
    {
      v31 = *(a7 + 12);
      std::operator+<char>();
      if (v31 == 8)
      {
        goto LABEL_50;
      }

      goto LABEL_25;
    }

LABEL_24:
    std::operator+<char>();
    goto LABEL_25;
  }

  if (memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query", 0x2AuLL))
  {
    goto LABEL_24;
  }

  v19 = *(a7 + 12);
  std::operator+<char>();
  if (v19 == 7)
  {
LABEL_50:
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v43, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v43 = v36;
    }

    goto LABEL_26;
  }

LABEL_25:
  std::string::basic_string[abi:nn200100]<0>(&v43, &unk_20E75F419);
LABEL_26:
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v43;
  }

  else
  {
    v20 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v32, v20, size);
  v23 = v22->__r_.__value_.__r.__words[2];
  *__p = *&v22->__r_.__value_.__l.__data_;
  v35 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v35 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v35 >= 0)
  {
    v25 = SHIBYTE(v35);
  }

  else
  {
    v25 = __p[1];
  }

  v33 = 257;
  v43.__r_.__value_.__r.__words[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v16, &v32);
  v43.__r_.__value_.__l.__size_ = a8;
  v26 = *(a1 + 176);
  v43.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
  v27 = *(a1 + 176);
  v44 = llvm::ConstantInt::get();
  v28 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v24, v25, a7, &v43, 4uLL);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitCurveIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v20 = *a2;
  v21 = *(a2 + 16);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 168);
  v19 = 257;
  v23[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v18);
  v9 = *(a1 + 200);
  v23[1] = llvm::ConstantInt::get();
  v10 = *(a1 + 176);
  v23[2] = llvm::ConstantInt::get();
  v11 = *(a1 + 176);
  v23[3] = llvm::ConstantInt::get();
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_candidate_curve_distance_intersection_query", 51, v8, v23, 4uLL);
  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v15, a3, v12);
  if (v16)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
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

  v8 = *(a1 + 184);
  v9 = llvm::PointerType::get();
  v10 = *(a1 + 144);
  v14 = 257;
  v18[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v9, v13);
  v18[1] = a4;
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.commit", 29, v10, v18, 2uLL);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDeallocateIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
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

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 144);
  v12 = 257;
  v16[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v11);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.deallocate", 33, v8, v16, 1uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitBoundingBoxIntersectionQuery(uint64_t a1, __int128 *a2, llvm::Type **a3, uint64_t a4)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 6);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v9, a3, a4);
  if (v10)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitTriangleIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v20 = *a2;
  v21 = *(a2 + 16);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 168);
  v19 = 257;
  v23[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v18);
  v9 = *(a1 + 200);
  v23[1] = llvm::ConstantInt::get();
  v10 = *(a1 + 176);
  v23[2] = llvm::ConstantInt::get();
  v11 = *(a1 + 176);
  v23[3] = llvm::ConstantInt::get();
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_candidate_triangle_distance_intersection_query", 54, v8, v23, 4uLL);
  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v15, a3, v12);
  if (v16)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildAbortIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
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

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 144);
  v12 = 257;
  v16[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v11);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.abort", 28, v8, v16, 1uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildNextIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v47 = *MEMORY[0x277D85DE8];
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

  v15 = *(a1 + 184);
  v16 = llvm::PointerType::get();
  v17 = (*(*a1 + 952))(a1);
  v40[0] = "vrid";
  LOWORD(v41) = 259;
  llvm::Value::setName();
  v18 = *(a1 + 200);
  LOWORD(v41) = 257;
  *&v44 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v16, v40);
  v19 = *(a1 + 200);
  *(&v44 + 1) = llvm::ConstantInt::get();
  v20 = *(a1 + 176);
  *&v45 = llvm::ConstantInt::get();
  v21 = *(a1 + 176);
  *(&v45 + 1) = llvm::ConstantInt::get();
  v22 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_instance_levels_intersection_query", 42, v18, &v44, 4uLL);
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(&v44, a1, a5, v17, 0x100000000, v22, 1);
  if (a8)
  {
    v23 = (*(*a1 + 1456))(a1, a6);
    v24 = v23;
  }

  else
  {
    if (a6)
    {
      v25 = 6;
    }

    else
    {
      v25 = 5;
    }

    if ((a6 & 0x40) != 0)
    {
      LOBYTE(v23) = 7;
    }

    else
    {
      LOBYTE(v23) = v25;
    }

    if ((a6 & 0x40) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a6 & 1;
    }
  }

  v26 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v17, &v44, v23, 0, 0);
  v27 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v17, &v44, v24, 0, 0);
  v28 = *(a1 + 176);
  v36 = 257;
  v40[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v16, v35);
  v40[1] = v26;
  v40[2] = v27;
  v34 = 257;
  v40[3] = AGCLLVMBuilder::CreateLoad(a1, a4, v33);
  v41 = v17;
  v29 = *(a1 + 192);
  v42 = llvm::ConstantInt::get();
  v30 = *(a1 + 184);
  v43 = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.next", 27, v28, v40, 7uLL);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildResetIntersectionQuery(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v40 = *MEMORY[0x277D85DE8];
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

  v8 = *(a1 + 184);
  v9 = llvm::PointerType::get();
  v10 = *(a1 + 144);
  v11 = *a3;
  v25 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v11, v9, v24);
  v30 = *(a3 + 8);
  v31 = *(a3 + 24);
  v12 = *(a3 + 40);
  v13 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v12, v13, v22);
  v14 = *(a3 + 64);
  v33 = *(a3 + 48);
  v34 = v14;
  v35 = *(a3 + 80);
  v15 = *(a3 + 128);
  v16 = *(a3 + 136);
  v36 = *(a3 + 96);
  v37 = v16;
  if (!v15)
  {
    v17 = *(a1 + 176);
    v15 = llvm::ConstantInt::get();
  }

  v38 = v15;
  v21 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v20);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.reset", 28, v10, &PointerCast, 0x10uLL);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildAllocateIntersectionQuery(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 1344))(a1, 0, a6 ^ 1u, a4, a5);
  v11 = a1[23];
  v12 = llvm::PointerType::get();
  v13 = a1[25];
  v20[0] = llvm::ConstantInt::get();
  v14 = a1[25];
  v20[1] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.allocate", 31, v12, v20, 2uLL);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetUnpackedSCSLayout@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 456);
  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v27[0] = *(a1 + 200);
    v27[1] = v27[0];
    v27[2] = v27[0];
    v27[3] = v27[0];
    v28 = v27[0];
    TypeByName = llvm::StructType::create();
  }

  v8 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.scs.get_unpacked_layout", 27, TypeByName, 0, 0);
  v23 = 0;
  v27[0] = "scs.traversal_depth";
  LOWORD(v28) = 259;
  *a3 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v23, 1, v27);
  v22 = 1;
  v20 = "scs.max_instance_levels";
  v21 = 259;
  a3[1] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v22, 1, &v20);
  v19 = 2;
  v17 = "scs.num_cliques";
  v18 = 259;
  a3[2] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v19, 1, &v17);
  v16 = 3;
  v14 = "scs.per_ray_user_payload_size";
  v15 = 259;
  a3[3] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v16, 1, &v14);
  v13 = 4;
  v11 = "scs.per_ray_driver_payload_size";
  v12 = 259;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v13, 1, &v11);
  a3[4] = result;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a4;
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

  v6 = v10;
  v7 = v10;
  v8 = 8;
  v9 = 0;
  operator new();
}

uint64_t std::function<BOOL ()(llvm::Value const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(llvm::Value const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(llvm::Value const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  llvm::SmallPtrSetImpl<void *>::insert(v24, *(a1 + 8), *a2);
  if (v24[16] != 1)
  {
    return 1;
  }

  v4 = v3[1];
  v5 = 1;
  if (v4)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      v7 = *(v6 + 16);
      if (v6 && v7 == 92)
      {
        if (**(a1 + 16) == 1)
        {
          if (!**(v6 + 64) && (std::function<BOOL ()(llvm::Value const*)>::operator()(*(*(a1 + 24) + 24), v6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (*(v6 + 72) != 1 || **(v6 + 64))
        {
          return 0;
        }
      }

      else if (v6 && v7 == 84)
      {
        v8 = *(v6 - 32);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v6 + 72))
        {
          return 0;
        }

        Name = llvm::Value::getName(*(v6 - 32));
        if (v10 < 0x20 || (*Name == 0x5F7465672E726961 ? (v11 = Name[1] == 0x746E695F65707974) : (v11 = 0), v11 ? (v12 = Name[2] == 0x6F69746365737265) : (v12 = 0), v12 ? (v13 = Name[3] == 0x746C757365725F6ELL) : (v13 = 0), !v13))
        {
          v14 = llvm::Value::getName(v8);
          if (v15 < 0x1F)
          {
            return 0;
          }

          v16 = *v14 == 0x656C65722E726961 && v14[1] == 0x65746E695F657361;
          v17 = v16 && v14[2] == 0x6E6F697463657372;
          if (!v17 || *(v14 + 23) != 0x746C757365725F6ELL)
          {
            return 0;
          }
        }
      }

      else
      {
        v19 = (((v7 - 75) >> 1) | ((v7 - 75) << 7));
        v20 = v19 > 5;
        v21 = (1 << v19) & 0x33;
        v22 = v20 || v21 == 0;
        if (v22 || !std::function<BOOL ()(llvm::Value const*)>::operator()(*(*(a1 + 24) + 24), v6))
        {
          return 0;
        }
      }

      v4 = *(v4 + 8);
      if (!v4)
      {
        return 1;
      }
    }
  }

  return v5;
}

__n128 std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BCE20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromConfigurationBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::Type **a3@<X2>, llvm::Type **a4@<X3>, uint64_t *a5@<X8>)
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

  v10 = *(a1 + 208);
  v11 = llvm::PointerType::get();
  v12 = *(a1 + 200);
  v13 = llvm::PointerType::get();
  v34 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a3, v33);
  v32[16] = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v11, v32);
  v16 = *(a1 + 208);
  (*(**(a1 + 920) + 1032))();
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  v33[0] = "scs.scs_layout.ptr";
  v34 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, PointerCast, v18, v33);
  v20 = *(a1 + 200);
  v21 = *(*GEP + 2);
  v22 = llvm::PointerType::get();
  v34 = 257;
  v23 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v22, v33);
  v24 = *(a1 + 200);
  v25 = llvm::ConstantInt::get();
  v34 = 257;
  v26 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v24, v23, v25, v33);
  *a5 = AGCLLVMBuilder::CreateLoad(a1, v24, v26, "global_stride");
  v27 = *(a1 + 200);
  v34 = 257;
  llvm::Type::isOpaquePointerTy(*a4);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v13, a4, 0, v33);
  a5[2] = AGCLLVMBuilder::CreateLoad(a1, v27, AlignedLoad, "shader_stride");
  v29 = *(a1 + 200);
  a5[1] = llvm::ConstantInt::get();
  v30 = *(a1 + 200);
  result = llvm::ConstantInt::get();
  a5[4] = 0;
  a5[5] = 0;
  a5[3] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildReleaseIntersectPayload(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  result = AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildReleaseIntersectionResult(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  result = AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectionResultAccessor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  v88 = *MEMORY[0x277D85DE8];
  v80 = *a2;
  v81 = *(a2 + 16);
  if (v81)
  {
    llvm::MetadataTracking::track();
  }

  v82 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v80);
  if (v81)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = a1[26];
  LOWORD(v78) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, a3, v15, v77);
  v17 = a1[26];
  v18 = llvm::ConstantInt::get();
  LOWORD(v78) = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v18, v77);
  v20 = a1[24];
  LOWORD(v78) = 257;
  v21 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v19, v20, v77);
  LOWORD(v78) = 257;
  v22 = *Cast;
  v23 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), Cast, v23, v77);
  v25 = a1[26];
  v26 = llvm::ConstantInt::get();
  v87 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), LShr, v26, &v85);
  v28 = a1[25];
  LOWORD(v78) = 257;
  v29 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v27, v28, v77);
  LOWORD(v78) = 257;
  v30 = *Cast;
  v31 = llvm::ConstantInt::get();
  v32 = llvm::IRBuilderBase::CreateLShr((a1 + 1), Cast, v31, v77);
  v33 = a1[26];
  v34 = llvm::ConstantInt::get();
  LOWORD(v78) = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v32, v34, v77);
  v87 = 257;
  v36 = *v35;
  v37 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v35, v37, &v85);
  v39 = a1[25];
  v84 = 257;
  v77[0] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Shl, v39, &__str);
  v87 = 257;
  v40 = *v32;
  v41 = llvm::ConstantInt::get();
  v42 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v32, v41, &v85);
  v43 = a1[26];
  v44 = llvm::ConstantInt::get();
  v87 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v42, v44, &v85);
  v46 = a1[25];
  v87 = 257;
  v77[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v45, v46, &v85);
  v87 = 257;
  v47 = *v42;
  v48 = llvm::ConstantInt::get();
  v49 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v42, v48, &v85);
  v50 = a1[26];
  v51 = llvm::ConstantInt::get();
  v87 = 257;
  v52 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v49, v51, &v85);
  v53 = a1[25];
  v87 = 257;
  v78 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v52, v53, &v85);
  v87 = 257;
  v54 = *v49;
  v55 = llvm::ConstantInt::get();
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v49, v55, &v85);
  v57 = a1[26];
  v58 = llvm::ConstantInt::get();
  v87 = 257;
  v59 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v56, v58, &v85);
  v60 = a1[25];
  v87 = 257;
  v79 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v59, v60, &v85);
  v87 = 257;
  v61 = *v56;
  v62 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateLShr((a1 + 1), v56, v62, &v85);
  v77[1] = 0;
  v77[2] = 0;
  v63 = (*(*a1 + 1456))(a1, a9);
  v64 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a8, v21, v77, v63, (a9 >> 5) & 1, 0);
  v65 = 4;
  if (a6 < 4)
  {
    v65 = a6;
  }

  v85.__r_.__value_.__r.__words[0] = v65 + a5;
  v85.__r_.__value_.__l.__size_ = a6 - v65;
  llvm::StringRef::str(&__str, &v85);
  v66 = std::string::find(&__str, 46, 0);
  if (v66 != -1)
  {
    std::string::basic_string(&v85, &__str, 0, v66, __p);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v85;
  }

  v67 = __p;
  std::operator+<char>();
  if (v76 < 0)
  {
    v67 = __p[0];
  }

  if (v76 >= 0)
  {
    v68 = v76;
  }

  else
  {
    v68 = __p[1];
  }

  v85.__r_.__value_.__r.__words[0] = v64;
  v85.__r_.__value_.__l.__size_ = v29;
  (*(*a1 + 1456))(a1, a9);
  v69 = a1[25];
  v85.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
  v86 = a4;
  v70 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v67, v68, a7, &v85, 4uLL);
  if (v76 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v71 = *MEMORY[0x277D85DE8];
  return v70;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayForDirectAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v111 = *MEMORY[0x277D85DE8];
  v94 = *a2;
  v95 = *(a2 + 16);
  if (v95)
  {
    llvm::MetadataTracking::track();
  }

  v96 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v94);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 952))(a1);
  v99 = "vrid";
  LOWORD(v103) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 1344))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v20 = *(a3 + 140);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(&v91, a1, a5, v13, v19 | 0x100000000, v22, 1);
  v23 = (*(*a1 + 1456))(a1, a6);
  v90[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v13, &v91, v23, (a6 >> 5) & 1, 0);
  v90[1] = v24;
  v87 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v88, (a1 + 1));
  v89 = *(a1 + 26);
  v25 = (*(*a1 + 1032))(a1, &v87, a3, a4, v13, v17, v16, v19, v90, a5, a6);
  if (v88)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a7)
  {
    v26 = a1[25];
    v83 = a1[21];
    v27 = a1[23];
    v28 = llvm::PointerType::get();
    v29 = a1[25];
    v84 = v25;
    v86 = a3;
    v30 = a1[23];
    v31 = a1[28];
    v32 = a6;
    v33 = v13;
    v34 = a1[21];
    v35 = llvm::ArrayType::get(a1[34], 4);
    v36 = llvm::ArrayType::get(a1[34], 4);
    v37 = *v26;
    v99 = v26;
    v100 = v83;
    v101 = v26;
    v102 = v26;
    v103 = v28;
    *&v104 = v29;
    *(&v104 + 1) = v29;
    v105 = v30;
    v106 = v31;
    v107 = v30;
    v108 = v34;
    v109 = v35;
    v13 = v33;
    a6 = v32;
    v110 = v36;
    v38 = llvm::StructType::get();
    v99 = v90[0];
    (*(*a1 + 1456))(a1, v32);
    v39 = a1[25];
    v100 = llvm::ConstantInt::get();
    v40 = a1[24];
    v101 = llvm::ConstantInt::get();
    v102 = v13;
    v103 = v84;
    v104 = *(v86 + 144);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v38, &v99, 7uLL);
  }

  v41 = a1[23];
  v99 = v90[0];
  (*(*a1 + 1456))(a1, a6);
  v42 = a1[25];
  v100 = llvm::ConstantInt::get();
  v43 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.get_core_id", 29, v41, &v99, 2uLL);
  v44 = a1[26];
  LOWORD(v103) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v13, v44, &v99);
  v46 = a1[23];
  v47 = llvm::ConstantInt::get();
  LOWORD(v103) = 257;
  v48 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v43, v47, &v99);
  v49 = a1[26];
  v98 = 257;
  v50 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v48, v49, v97);
  LOWORD(v103) = 257;
  v51 = *v50;
  v52 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v50, v52, &v99);
  LOWORD(v103) = 257;
  v54 = llvm::IRBuilderBase::CreateOr((a1 + 1), Shl, Cast, &v99);
  v55 = v91;
  LOWORD(v103) = 257;
  v56 = *v91;
  v57 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v55, v57, &v99);
  v59 = a1[26];
  v98 = 257;
  v60 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, LShr, v59, v97);
  LOWORD(v103) = 257;
  v61 = *v60;
  v62 = llvm::ConstantInt::get();
  v63 = llvm::IRBuilderBase::CreateShl((a1 + 1), v60, v62, &v99);
  LOWORD(v103) = 257;
  v64 = llvm::IRBuilderBase::CreateOr((a1 + 1), v63, v54, &v99);
  v65 = a1[26];
  LOWORD(v103) = 257;
  v66 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, *(&v92 + 1), v65, &v99);
  LOWORD(v103) = 257;
  v67 = *v66;
  v68 = llvm::ConstantInt::get();
  v69 = llvm::IRBuilderBase::CreateShl((a1 + 1), v66, v68, &v99);
  LOWORD(v103) = 257;
  v70 = llvm::IRBuilderBase::CreateOr((a1 + 1), v69, v64, &v99);
  if (v93)
  {
    v71 = a1[26];
    LOWORD(v103) = 257;
    v72 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v93, v71, &v99);
    LOWORD(v103) = 257;
    v73 = *v72;
    v74 = llvm::ConstantInt::get();
    v75 = llvm::IRBuilderBase::CreateShl((a1 + 1), v72, v74, &v99);
    LOWORD(v103) = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 1), v75, v70, &v99);
  }

  if (*(&v93 + 1))
  {
    v76 = a1[26];
    LOWORD(v103) = 257;
    v77 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, *(&v93 + 1), v76, &v99);
    LOWORD(v103) = 257;
    v78 = *v77;
    v79 = llvm::ConstantInt::get();
    v80 = llvm::IRBuilderBase::CreateShl((a1 + 1), v77, v79, &v99);
    LOWORD(v103) = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 1), v80, v70, &v99);
  }

  v81 = *MEMORY[0x277D85DE8];
  return v70;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayWithResults@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v58 = *a2;
  v59 = *(a2 + 16);
  if (v59)
  {
    llvm::MetadataTracking::track();
  }

  v60 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v58);
  if (v59)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 952))(a1);
  v61 = "vrid";
  LOWORD(v65) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 1344))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  memset(v57, 0, sizeof(v57));
  v20 = *(a3 + 140);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v57, a1, a5, v13, v19 | 0x100000000, v22, 1);
  v23 = (*(*a1 + 1456))(a1, a6);
  v56[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v13, v57, v23, (a6 >> 5) & 1, 0);
  v56[1] = v24;
  v53 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (a1 + 1));
  v55 = *(a1 + 26);
  v48 = a6;
  v49 = a3;
  v25 = a4;
  v47 = v13;
  v45 = (*(*a1 + 1032))(a1, &v53, a3, v25, v13, v17, v16, v19, v56, a5, a6);
  if (v54)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = a1[25];
  v27 = a1[21];
  v28 = a1[23];
  v29 = llvm::PointerType::get();
  v30 = a1[25];
  v31 = a1[23];
  v32 = a1[28];
  v33 = a1[21];
  v34 = llvm::ArrayType::get(a1[34], 4);
  v35 = llvm::ArrayType::get(a1[34], 4);
  v36 = *v26;
  v61 = v26;
  v62 = v27;
  v63 = v26;
  v64 = v26;
  v65 = v29;
  *&v66 = v30;
  *(&v66 + 1) = v30;
  v67 = v31;
  v68 = v32;
  v69 = v31;
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v37 = llvm::StructType::get();
  v61 = v56[0];
  (*(*a1 + 1456))(a1, v48);
  v38 = a1[25];
  v62 = llvm::ConstantInt::get();
  v39 = a1[24];
  v63 = llvm::ConstantInt::get();
  v64 = v47;
  v65 = v45;
  v66 = *(v49 + 144);
  v40 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v37, &v61, 7uLL);
  a7[10] = 0;
  a7[11] = 0;
  a7[12] = 0;
  v50[0] = 0;
  LOWORD(v65) = 257;
  *a7 = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 1;
  LOWORD(v65) = 257;
  a7[1] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 2;
  LOWORD(v65) = 257;
  a7[2] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 3;
  LOWORD(v65) = 257;
  a7[3] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 4;
  LOWORD(v65) = 257;
  a7[4] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 5;
  LOWORD(v65) = 257;
  a7[5] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 6;
  LOWORD(v65) = 257;
  a7[6] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 7;
  LOWORD(v65) = 257;
  a7[7] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 8;
  LOWORD(v65) = 257;
  a7[8] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v52 = 9;
  LOWORD(v65) = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, &v52, 1, &v61);
  v42 = a1[22];
  v51 = 257;
  a7[9] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Value, v42, v50);
  v50[0] = 10;
  LOWORD(v65) = 257;
  a7[10] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 11;
  LOWORD(v65) = 257;
  a7[11] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 12;
  LOWORD(v65) = 257;
  result = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  a7[12] = result;
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRay(uint64_t a1, uint64_t a2, __int128 *a3, llvm::Type **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11)
{
  v80 = *MEMORY[0x277D85DE8];
  v57 = *a2;
  v58 = *(a2 + 16);
  if (v58)
  {
    llvm::MetadataTracking::track();
  }

  v59 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v57);
  if (v58)
  {
    llvm::MetadataTracking::untrack();
  }

  LOWORD(v61) = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v60);
  v60[0] = "bvh_state_words_heap_base";
  LOWORD(v61) = 259;
  llvm::Value::setName();
  *(a3 + 34);
  if (*(a3 + 112) == 1)
  {
    v17 = *(a3 + 15);
    if (v17 && *(v17 + 16) == 59)
    {
      v18 = 1 << *(v17 + 18);
    }

    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a9 + 8));
  }

  if ((a11 & 0x100) != 0)
  {
    v19 = *(a1 + 208);
    v20 = llvm::PointerType::get();
    v21 = *(a10 + 16);
    LOWORD(v61) = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v21, v20, v60);
    PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, a5, PointerCast);
    v24 = *(a1 + 200);
    (*(**(a1 + 920) + 1128))();
    v25 = *(a1 + 200);
    v26 = llvm::ConstantInt::get();
    LOWORD(v61) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v24, PerVridSetDataPtr, v26, v60);
    (*(*a1 + 1456))(a1, a11);
    v28 = *(a1 + 200);
    v29 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v29, GEP, 0);
  }

  v30 = *(a1 + 176);
  v60[0] = *a9;
  v60[1] = Load;
  v60[2] = a5;
  v31 = *(a1 + 200);
  v60[3] = llvm::ConstantInt::get();
  v32 = *(a1 + 200);
  v61 = llvm::ConstantInt::get();
  v33 = *(a1 + 200);
  v62 = llvm::ConstantInt::get();
  (*(*a1 + 1456))(a1, a11);
  v34 = *(a1 + 200);
  v35 = llvm::ConstantInt::get();
  v36 = a3[1];
  v64 = *a3;
  v65 = v36;
  v37 = *(a3 + 6);
  v38 = *(a3 + 7);
  v63 = v35;
  v66 = v37;
  v39 = *(a1 + 184);
  v40 = llvm::PointerType::get();
  v56 = 257;
  v67 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v38, v40, v55);
  v41 = a3[5];
  v68 = a3[4];
  v69 = v41;
  v70 = a3[6];
  v42 = *(a3 + 4);
  v43 = *(a1 + 200);
  v54 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v42, v43, v53);
  v44 = a3[11];
  v72 = a3[10];
  v73 = v44;
  v45 = *(a3 + 5);
  v74 = *(a3 + 24);
  v75 = v45;
  v76 = a3[15];
  v77 = *(a3 + 32);
  v46 = *(a1 + 192);
  v78 = llvm::ConstantInt::get();
  v47 = *(a1 + 1940);
  v48 = *(a1 + 176);
  v79 = llvm::ConstantInt::get();
  v49 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray", 17, v30, v60, 0x1FuLL);
  if (*(a3 + 112) == 1 && (*(a3 + 264) & 1) == 0)
  {
    v50 = *(a9 + 8);
    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a3 + 15));
  }

  v51 = *MEMORY[0x277D85DE8];
  return v49;
}

uint64_t llvm::IRBuilderBase::CreateMemCpy(uint64_t a1, llvm::LLVMContext *a2)
{
  llvm::Type::getInt64Ty(*(a1 + 64), a2);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateMemTransferInst();
}

uint64_t *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, llvm::Type **a12, uint64_t a13, llvm::Type **a14, llvm::Type **a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v235 = *MEMORY[0x277D85DE8];
  v229 = *a2;
  v230 = *(a2 + 16);
  if (v230)
  {
    llvm::MetadataTracking::track();
  }

  v231 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v229);
  if (v230)
  {
    llvm::MetadataTracking::untrack();
  }

  v227 = 0u;
  v228 = 0u;
  v226 = 0u;
  v223 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v224, (a1 + 8));
  v225 = *(a1 + 104);
  (*(*a1 + 1080))(&v226, a1, &v223, a12, a13);
  if (v224)
  {
    llvm::MetadataTracking::untrack();
  }

  v213 = a6;
  v24 = *(a1 + 184);
  v25 = llvm::PointerType::get();
  v26 = *(a1 + 200);
  v218 = llvm::PointerType::get();
  v27 = *(a1 + 208);
  v212 = llvm::PointerType::get();
  v28 = *(a1 + 456);
  TypeByName = llvm::StructType::getTypeByName();
  v29 = *(a1 + 184);
  v30 = llvm::PointerType::get();
  v31 = *(a1 + 208);
  v209 = llvm::PointerType::get();
  v211 = a9;
  if ((a19 & 1) == 0)
  {
    v33 = *(a1 + 56);
    v32 = *(a1 + 64);
    v221[0] = "entry.continue";
    v222 = 259;
    llvm::BasicBlock::splitBasicBlock();
    v34 = *(a1 + 72);
    v221[0] = "scs.config";
    v222 = 259;
    v35 = *(v33 + 56);
    operator new();
  }

  v36 = v226;
  v222 = 257;
  v37 = *v226;
  v38 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v36, v38, v221);
  v40 = v226;
  v41 = *(a1 + 200);
  v42 = llvm::ConstantInt::get();
  v222 = 257;
  v43 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v40, v42, v221);
  v44 = *(a1 + 144);
  v233[0] = LShr;
  v45 = a3[3];
  v222 = 257;
  v233[1] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v45, v25, v221);
  v233[2] = v43;
  v46 = a3[5];
  v220 = 257;
  v233[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v46, v30, v219);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.kick.scoped.ray.data.stride.driver.user.data", 54, v44, v233, 4uLL);
  v47 = a3[2];
  v222 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v47, v212, v221);
  v49 = *(a1 + 208);
  v50 = llvm::ConstantInt::get();
  v51 = *(a1 + 208);
  (*(**(a1 + 920) + 888))();
  v52 = *(a1 + 200);
  v53 = llvm::ConstantInt::get();
  v222 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v51, PointerCast, v53, v221);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v50, GEP, 0);
  v55 = *(a1 + 208);
  (*(**(a1 + 920) + 896))();
  v56 = *(a1 + 200);
  v57 = llvm::ConstantInt::get();
  v222 = 257;
  v58 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v55, PointerCast, v57, v221);
  v59 = *(a1 + 208);
  v222 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a12, v221);
  v220 = 257;
  v61 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v209, v219);
  (*(**(a1 + 920) + 1032))();
  v62 = *(a1 + 200);
  v63 = llvm::ConstantInt::get();
  v234 = 257;
  v64 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v59, v61, v63, v233);
  v65 = *(a1 + 208);
  v222 = 257;
  llvm::Type::isOpaquePointerTy(*v64);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v65, v64, 0, v221);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), AlignedLoad, v58, 0);
  v222 = 257;
  v67 = AGCLLVMBuilder::CreateLoad(a1, a12, v221);
  v68 = *(a1 + 200);
  v232[0] = llvm::ConstantInt::get();
  v69 = *(a1 + 200);
  v232[1] = llvm::ConstantInt::get();
  v220 = 257;
  llvm::Type::isOpaquePointerTy(*v67);
  v70 = llvm::IRBuilderBase::CreateGEP(a1 + 8, TypeByName, v67, v232, 2, v219);
  v234 = 257;
  v71 = AGCLLVMBuilder::CreateLoad(a1, v70, v233);
  v72 = *(a1 + 208);
  v222 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v71, v72, v221);
  v74 = *(a1 + 208);
  (*(**(a1 + 920) + 952))();
  v75 = *(a1 + 200);
  v76 = llvm::ConstantInt::get();
  v220 = 257;
  v77 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v74, PointerCast, v76, v219);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, v77, 0);
  if (a14)
  {
    v78 = *(a1 + 208);
    (*(**(a1 + 920) + 976))(*(a1 + 920));
    v79 = *(a1 + 200);
    v80 = llvm::ConstantInt::get();
    v222 = 257;
    v81 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v78, PointerCast, v80, v221);
    v220 = 257;
    v82 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v81, v218, v219);
    v222 = 257;
    v83 = AGCLLVMBuilder::CreateLoad(a1, a14, v221);
    v219[0] = 0;
    v221[0] = "user_data_start";
    v222 = 259;
    Value = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v83, v219, 1, v221);
    v219[0] = 1;
    v221[0] = "user_data_end";
    v222 = 259;
    v85 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v83, v219, 1, v221);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Value, v82, 0);
    v86 = *(a1 + 200);
    v87 = llvm::ConstantInt::get();
    v222 = 257;
    v88 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v86, v82, v87, v221);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v85, v88, 0);
  }

  if (a15)
  {
    v89 = *(a1 + 208);
    (*(**(a1 + 920) + 984))(*(a1 + 920));
    v90 = *(a1 + 200);
    v91 = llvm::ConstantInt::get();
    v222 = 257;
    v92 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v89, PointerCast, v91, v221);
    v220 = 257;
    v93 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v92, v218, v219);
    v222 = 257;
    v94 = AGCLLVMBuilder::CreateLoad(a1, a15, v221);
    v219[0] = 0;
    v221[0] = "driver_data_start";
    v222 = 259;
    v95 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v94, v219, 1, v221);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v95, v93, 0);
  }

  v96 = (*(*a1 + 952))(a1);
  v97 = *(a1 + 200);
  v221[0] = "vrid";
  v222 = 259;
  v98 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v96, v97, v221);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v98, PointerCast);
  v100 = *(&v226 + 1);
  v101 = *(a1 + 200);
  (*(**(a1 + 920) + 1072))();
  v102 = *(a1 + 200);
  v103 = llvm::ConstantInt::get();
  v222 = 257;
  v104 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v101, PerVridSetDataPtr, v103, v221);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v100, v104, 0);
  v105 = *(&v227 + 1);
  v106 = *(a1 + 200);
  (*(**(a1 + 920) + 1080))();
  v107 = *(a1 + 200);
  v108 = llvm::ConstantInt::get();
  v222 = 257;
  v109 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v106, PerVridSetDataPtr, v108, v221);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v105, v109, 0);
  v110 = v227;
  v111 = *(a1 + 200);
  (*(**(a1 + 920) + 1088))();
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v222 = 257;
  v114 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v111, PerVridSetDataPtr, v113, v221);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v110, v114, 0);
  v115 = *(a1 + 200);
  v116 = llvm::ConstantInt::get();
  v117 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v118 = *(a1 + 200);
  v119 = llvm::ConstantInt::get();
  v222 = 257;
  v120 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v117, PerVridSetDataPtr, v119, v221);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v116, v120, 0);
  if (a16)
  {
    v121 = *(a1 + 200);
    (*(**(a1 + 920) + 1104))(*(a1 + 920));
    v122 = *(a1 + 200);
    v123 = llvm::ConstantInt::get();
    v222 = 257;
    v124 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v121, PerVridSetDataPtr, v123, v221);
    v222 = 257;
    v125 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v124, v212, v221);
    v126 = *(a1 + 208);
    v222 = 257;
    v127 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a16, v126, v221);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v127, v125, 0);
  }

  if (a17)
  {
    v128 = *(a1 + 200);
    (*(**(a1 + 920) + 1120))(*(a1 + 920));
    v129 = *(a1 + 200);
    v130 = llvm::ConstantInt::get();
    v222 = 257;
    v131 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v128, PerVridSetDataPtr, v130, v221);
    v222 = 257;
    v132 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v131, v212, v221);
    v133 = *(a1 + 208);
    v222 = 257;
    v134 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a17, v133, v221);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v134, v132, 0);
  }

  if (v213)
  {
    v135 = *(a1 + 200);
    (*(**(a1 + 920) + 1112))(*(a1 + 920));
    v136 = *(a1 + 200);
    v137 = llvm::ConstantInt::get();
    v222 = 257;
    v138 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v135, PerVridSetDataPtr, v137, v221);
    v220 = 257;
    v139 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v138, v212, v219);
    v222 = 257;
    v140 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v213 + 24), v213, 0, 0, v221);
    v141 = *(a1 + 208);
    v220 = 257;
    v142 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v140, v141, v219);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v142, v139, 0);
  }

  v143 = a4[2];
  v222 = 257;
  v144 = AGCLLVMBuilder::CreateLoad(a1, v143, v221);
  v145 = *(a1 + 208);
  v220 = 257;
  v146 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v144, v145, v219);
  v147 = *(a1 + 208);
  (*(**(a1 + 920) + 904))();
  v148 = *(a1 + 200);
  v149 = llvm::ConstantInt::get();
  v234 = 257;
  v150 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v147, PointerCast, v149, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v146, v150, 0);
  v151 = a4[5];
  v222 = 257;
  v152 = AGCLLVMBuilder::CreateLoad(a1, v151, v221);
  v153 = *(a1 + 208);
  v220 = 257;
  v154 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v152, v153, v219);
  v155 = *(a1 + 208);
  (*(**(a1 + 920) + 912))();
  v156 = *(a1 + 200);
  v157 = llvm::ConstantInt::get();
  v234 = 257;
  v158 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v155, PointerCast, v157, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v154, v158, 0);
  v159 = a4[8];
  v222 = 257;
  v160 = AGCLLVMBuilder::CreateLoad(a1, v159, v221);
  v161 = *(a1 + 208);
  v220 = 257;
  v162 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v160, v161, v219);
  v163 = *(a1 + 208);
  (*(**(a1 + 920) + 920))();
  v164 = *(a1 + 200);
  v165 = llvm::ConstantInt::get();
  v234 = 257;
  v166 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v163, PointerCast, v165, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v162, v166, 0);
  v167 = *(a5 + 16);
  v222 = 257;
  v168 = AGCLLVMBuilder::CreateLoad(a1, v167, v221);
  v169 = *(a1 + 208);
  v220 = 257;
  v170 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v168, v169, v219);
  v171 = *(a1 + 208);
  (*(**(a1 + 920) + 928))();
  v172 = *(a1 + 200);
  v173 = llvm::ConstantInt::get();
  v234 = 257;
  v174 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v171, PointerCast, v173, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v170, v174, 0);
  v175 = *(a7 + 16);
  v222 = 257;
  v176 = AGCLLVMBuilder::CreateLoad(a1, v175, v221);
  v177 = *(a1 + 208);
  v220 = 257;
  v178 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v176, v177, v219);
  v179 = *(a1 + 208);
  (*(**(a1 + 920) + 936))();
  v180 = *(a1 + 200);
  v181 = llvm::ConstantInt::get();
  v234 = 257;
  v182 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v179, PointerCast, v181, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v178, v182, 0);
  v183 = *(a8 + 16);
  v222 = 257;
  v184 = AGCLLVMBuilder::CreateLoad(a1, v183, v221);
  v185 = *(a1 + 208);
  v220 = 257;
  v186 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v184, v185, v219);
  v187 = *(a1 + 208);
  (*(**(a1 + 920) + 944))();
  v188 = *(a1 + 200);
  v189 = llvm::ConstantInt::get();
  v234 = 257;
  v190 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v187, PointerCast, v189, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v186, v190, 0);
  v191 = *(a10 + 16);
  v222 = 257;
  v192 = AGCLLVMBuilder::CreateLoad(a1, v191, v221);
  v193 = *(a1 + 208);
  v220 = 257;
  v194 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v192, v193, v219);
  v195 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v196 = *(a1 + 200);
  v197 = llvm::ConstantInt::get();
  v234 = 257;
  v198 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v195, PointerCast, v197, v233);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v194, v198, 0);
  if (*(a1 + 1946) == 1)
  {
    v199 = *(a11 + 16);
    v222 = 257;
    v200 = AGCLLVMBuilder::CreateLoad(a1, v199, v221);
    v201 = *(a1 + 208);
    v220 = 257;
    v202 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v200, v201, v219);
    v203 = *(a1 + 208);
    (*(**(a1 + 920) + 1008))();
    v204 = *(a1 + 200);
    v205 = llvm::ConstantInt::get();
    v234 = 257;
    v206 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v203, PointerCast, v205, v233);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v202, v206, 0);
  }

  *v211 = *(a1 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((v211 + 16), (a1 + 8));
  *(v211 + 24) = *(a1 + 104);
  v208 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSGOTPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
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

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v19);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1112))();
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v14, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v19);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSPerEncoderIndirectionTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v16);
  v9 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v10 = *(a1 + 200);
  v11 = llvm::ConstantInt::get();
  v17 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v9, PointerCast, v11, v16);
  v17 = 257;
  v13 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v16);
  v14 = *(a1 + 208);
  v17 = 257;
  llvm::Type::isOpaquePointerTy(*v13);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v13, 0, v16);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSDispatchPrivateBufferPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
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

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v19);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1120))();
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v14, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v19);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSGlobalBindingTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
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

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v19);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1104))();
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v14, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v19);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getRayTraversalDepth(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x1F)
  {
    v2 = 31;
  }

  else
  {
    v2 = a2;
  }

  v3 = 114 * v2;
  if (v3 >= 0x388)
  {
    v3 = 904;
  }

  return (v3 + 119) & 0x7F8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::readRayPointerT@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 456);
  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v12[0] = *(a1 + 192);
    v12[1] = v12[0];
    TypeByName = llvm::StructType::create();
  }

  v6 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.read_ray_pointer", 20, TypeByName, 0, 0);
  v11 = 0;
  v13 = 257;
  *a2 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v6, &v11, 1, v12);
  v10 = 1;
  v9[16] = 257;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v6, &v10, 1, v9);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::readRayPointerSR(uint64_t a1)
{
  v2 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ray.pointer", 21, *(a1 + 192), 0, 0);
  v3 = *(a1 + 200);
  v6 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v2, v3, v5);
}

llvm::Type **AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectionShaderArgument(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, unsigned int a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 184);
  v13 = 1;
  v14 = llvm::PointerType::get();
  v15 = *(a1 + 184);
  v33 = llvm::PointerType::get();
  v16 = 0;
  switch(a3)
  {
    case 0:
    case 1:
    case 9:
    case 10:
      v16 = *(a1 + 272);
      break;
    case 2:
    case 3:
    case 13:
    case 14:
    case 21:
    case 23:
    case 24:
      v16 = *(a1 + 168);
      break;
    case 4:
    case 5:
    case 6:
    case 16:
    case 17:
    case 22:
    case 27:
      goto LABEL_8;
    case 7:
    case 8:
      if ((a5 & 0x40) != 0)
      {
        v13 = a6;
      }

      else
      {
        v13 = 1;
      }

LABEL_8:
      v16 = *(a1 + 200);
      break;
    case 11:
      v16 = *(a1 + 224);
      break;
    case 12:
    case 15:
      v16 = *(a1 + 184);
      break;
    case 19:
    case 20:
      v16 = *(a1 + 272);
      v13 = 4;
      break;
    case 25:
    case 26:
      v16 = v14;
      break;
    default:
      break;
  }

  v17 = *(*(*(a1 + 56) + 56) + 80);
  if (v17)
  {
    v18 = (v17 - 24);
  }

  else
  {
    v18 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v18);
  if (FirstInsertionPt)
  {
    v20 = (FirstInsertionPt - 24);
  }

  else
  {
    v20 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v20);
  v21 = *(a1 + 200);
  v22 = llvm::ConstantInt::get();
  LOWORD(PointerCast) = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca((a1 + 8), v16, v22, v43);
  v40 = *a2;
  v41 = *(a2 + 16);
  if (v41)
  {
    llvm::MetadataTracking::track();
  }

  v42 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v40);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1940))
  {
    v24 = "agx.get_intersection_shader_argument_legacy";
  }

  else
  {
    v24 = "agx.get_intersection_shader_argument";
  }

  std::string::basic_string[abi:nn200100]<0>(v36, v24);
  v25 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v36, a4);
  if (v39 < 0)
  {
    v25 = __p[0];
  }

  if (v39 >= 0)
  {
    v26 = v39;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = *(a1 + 144);
  v28 = *(a4 + 8);
  v43[0] = *(a4 + 24);
  v43[1] = v28;
  v29 = *(a1 + 200);
  v43[2] = llvm::ConstantInt::get();
  v30 = *(a1 + 192);
  v43[3] = llvm::ConstantInt::get();
  v35 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Alloca, v33, v34);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v25, v26, v27, v43, 5uLL);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v13 <= 1)
  {
    LOWORD(PointerCast) = 257;
    Alloca = AGCLLVMBuilder::CreateLoad(a1, Alloca, v43);
  }

  v31 = *MEMORY[0x277D85DE8];
  return Alloca;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::createGPUVAMasks(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildConvertHFP8_Vector(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v119 = *MEMORY[0x277D85DE8];
  v104 = *a2;
  v105 = *(a2 + 16);
  if (v105)
  {
    llvm::MetadataTracking::track();
  }

  v106 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v104);
  if (v105)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *(*a3 + 32);
  std::string::basic_string[abi:nn200100]<0>(&v107, "f32");
  v108 = *(a1 + 168);
  std::string::basic_string[abi:nn200100]<0>(v109, "f16");
  v110 = *(a1 + 152);
  std::string::basic_string[abi:nn200100]<0>(v111, "bf16");
  v112 = *(a1 + 160);
  std::string::basic_string[abi:nn200100]<0>(v113, "f8e5m2");
  v114 = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v115, "f8e4m3");
  v116 = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v117, "f8e4m3fn");
  v12 = 0;
  v118 = *(a1 + 184);
  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v102, v103, &v107.__r_.__value_.__r.__words[v12]);
    v12 += 4;
  }

  while (v12 != 24);
  for (i = 0; i != -192; i -= 32)
  {
    if (v117[i + 23] < 0)
    {
      operator delete(*&v117[i]);
    }
  }

  if (*(a4 + 23) < 0)
  {
    if (**a4 != 118)
    {
      std::string::__init_copy_ctor_external(&v107, *a4, *(a4 + 8));
      goto LABEL_20;
    }
  }

  else if (*a4 != 118)
  {
    v107 = *a4;
    goto LABEL_20;
  }

  if (v11 <= 0xA)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  std::string::basic_string(&v107, a4, v14, 0xFFFFFFFFFFFFFFFFLL, v99);
LABEL_20:
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v107;
  if (*(a5 + 23) < 0)
  {
    if (**a5 != 118)
    {
      std::string::__init_copy_ctor_external(&v107, *a5, *(a5 + 8));
      goto LABEL_31;
    }
  }

  else if (*a5 != 118)
  {
    v107 = *a5;
    goto LABEL_31;
  }

  if (v11 <= 0xA)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  std::string::basic_string(&v107, a5, v15, 0xFFFFFFFFFFFFFFFFLL, v99);
LABEL_31:
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v107;
  v16 = *std::map<std::string,unsigned short>::at(&v102, a5);
  v17 = llvm::FixedVectorType::get();
  memset(__p, 0, sizeof(__p));
  if (v11 != 1)
  {
    v18 = 0;
    do
    {
      v19 = *(a1 + 200);
      v107.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
      std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v107);
      ++v18;
    }

    while (v11 - 1 != v18);
  }

  v20 = v11 >> 1;
  if (a6)
  {
    v21 = *(a1 + 200);
    v107.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
    std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v107);
  }

  v80 = __p[0];
  v22 = llvm::ConstantVector::get();
  v81 = v11;
  if (a6)
  {
    v78 = v22;
    v79 = v17;
    v23 = *(a1 + 192);
    llvm::FixedVectorType::get();
    v24 = llvm::UndefValue::get();
    if (v11 >= 2)
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = *std::map<std::string,unsigned short>::at(&v102, a4);
        llvm::FixedVectorType::get();
        v28 = llvm::UndefValue::get();
        v109[0] = 257;
        v29 = *(a1 + 200);
        v30 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v30, &v107);
        v100 = 257;
        v32 = *(a1 + 200);
        v33 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v28, Element, v33, v99);
        v109[0] = 257;
        v35 = *(a1 + 200);
        v36 = llvm::ConstantInt::get();
        v37 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v36, &v107);
        v100 = 257;
        v38 = *(a1 + 200);
        v39 = llvm::ConstantInt::get();
        v40 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v37, v39, v99);
        v96 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v97, (a1 + 8));
        v98 = *(a1 + 104);
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v95, *a4, *(a4 + 8));
        }

        else
        {
          v95 = *a4;
        }

        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v94, *a5, *(a5 + 8));
        }

        else
        {
          v94 = *a5;
        }

        v41 = (*(*a1 + 768))(a1, &v96, v40, &v95, &v94, 1, 1);
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v97)
        {
          llvm::MetadataTracking::untrack();
        }

        v109[0] = 257;
        v42 = *(a1 + 200);
        v43 = llvm::ConstantInt::get();
        v24 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v24, v41, v43, &v107);
        ++v25;
        v26 += 2;
      }

      while (v20 != v25);
    }

    if ((v81 & 1) == 0)
    {
      v109[0] = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v24, v79, &v107);
      v45 = v80;
      goto LABEL_89;
    }

    v67 = *std::map<std::string,unsigned short>::at(&v102, a5);
    v68 = llvm::FixedVectorType::get();
    v109[0] = 257;
    v69 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v24, v68, &v107);
    v109[0] = 257;
    Cast = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v69, v69, v78, &v107);
    goto LABEL_76;
  }

  ShuffleVector = a3;
  if (v11)
  {
    v109[0] = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), a3, a3, v22, &v107);
  }

  v47 = *(a1 + 192);
  v48 = llvm::FixedVectorType::get();
  v109[0] = 257;
  v82 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, ShuffleVector, v48, &v107);
  Cast = llvm::UndefValue::get();
  if (v11 >= 2)
  {
    v49 = 0;
    v50 = 1;
    v51 = v20;
    do
    {
      v109[0] = 257;
      v52 = *(a1 + 200);
      v53 = llvm::ConstantInt::get();
      v54 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v82, v53, &v107);
      v91 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (a1 + 8));
      v93 = *(a1 + 104);
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, *a4, *(a4 + 8));
      }

      else
      {
        v90 = *a4;
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, *a5, *(a5 + 8));
      }

      else
      {
        v89 = *a5;
      }

      v55 = (*(*a1 + 768))(a1, &v91, v54, &v90, &v89, 0, 1);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (v92)
      {
        llvm::MetadataTracking::untrack();
      }

      v109[0] = 257;
      v56 = *(a1 + 200);
      v57 = llvm::ConstantInt::get();
      v58 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v55, v57, &v107);
      v100 = 257;
      v59 = *(a1 + 200);
      v60 = llvm::ConstantInt::get();
      v61 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v58, v60, v99);
      v109[0] = 257;
      v62 = *(a1 + 200);
      v63 = llvm::ConstantInt::get();
      v64 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v55, v63, &v107);
      v100 = 257;
      v65 = *(a1 + 200);
      v66 = llvm::ConstantInt::get();
      Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v61, v64, v66, v99);
      ++v49;
      v50 += 2;
    }

    while (v51 != v49);
  }

  v45 = v80;
  if (v81)
  {
LABEL_76:
    v109[0] = 257;
    v70 = *(a1 + 200);
    v71 = llvm::ConstantInt::get();
    v72 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v71, &v107);
    v86 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (a1 + 8));
    v88 = *(a1 + 104);
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v85, *a4, *(a4 + 8));
    }

    else
    {
      v85 = *a4;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v84, *a5, *(a5 + 8));
    }

    else
    {
      v84 = *a5;
    }

    v73 = (*(*a1 + 768))(a1, &v86, v72, &v85, &v84, a6, 0);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (v87)
    {
      llvm::MetadataTracking::untrack();
    }

    v109[0] = 257;
    v74 = *(a1 + 200);
    v75 = llvm::ConstantInt::get();
    Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v73, v75, &v107);
    v45 = __p[0];
  }

LABEL_89:
  if (v45)
  {
    operator delete(v45);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v103[0]);
  v76 = *MEMORY[0x277D85DE8];
  return Cast;
}

void *std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(void *result, void *a2, void *a3)
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

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildConvertHFP8_F2F(void *a1, uint64_t a2, llvm::Value *Cast, uint64_t *a4, unsigned __int16 *a5, int a6, int a7)
{
  v98 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v90, "f8e4m3");
  LOWORD(v93) = 0;
  std::string::basic_string[abi:nn200100]<0>(v94, "f8e4m3fn");
  LOWORD(v95) = 1;
  std::string::basic_string[abi:nn200100]<0>(v96, "f8e5m2");
  v13 = 0;
  LOWORD(v97) = 2;
  v86[0] = 0;
  v86[1] = 0;
  v85 = v86;
  do
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(&v85, v86, (&v90 + v13));
    v13 += 32;
  }

  while (v13 != 96);
  for (i = 0; i != -96; i -= 32)
  {
    if (v96[i + 23] < 0)
    {
      operator delete(*&v96[i]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v90, "f32");
  v15 = (a1 + 21);
  v93 = a1[21];
  std::string::basic_string[abi:nn200100]<0>(v94, "f16");
  v95 = a1[19];
  std::string::basic_string[abi:nn200100]<0>(v96, "bf16");
  v16 = 0;
  v97 = a1[20];
  v84[0] = 0;
  v84[1] = 0;
  v83 = v84;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v83, v84, (&v90 + v16));
    v16 += 32;
  }

  while (v16 != 96);
  for (j = 0; j != -96; j -= 32)
  {
    if (v96[j + 23] < 0)
    {
      operator delete(*&v96[j]);
    }
  }

  v80 = *a2;
  v81 = *(a2 + 16);
  if (v81)
  {
    llvm::MetadataTracking::track();
  }

  v82 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v80);
  if (v81)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = a1[24];
  v19 = llvm::ConstantInt::get();
  v20 = a1[24];
  v21 = llvm::ConstantInt::get();
  v94[0] = 257;
  v23 = llvm::IRBuilderBase::CreateOr((a1 + 1), v21, v19, &v90);
  if (!a6)
  {
    v38 = *std::map<std::string,unsigned short>::at(&v85, a4);
    v39 = a1[24];
    v40 = llvm::ConstantInt::get();
    v94[0] = 257;
    v41 = llvm::IRBuilderBase::CreateOr((a1 + 1), v40, v23, &v90);
    v42 = *(a5 + 23);
    if (v42 < 0)
    {
      if (*(a5 + 1) != 3)
      {
        goto LABEL_38;
      }

      v43 = *a5;
    }

    else
    {
      v43 = a5;
      if (v42 != 3)
      {
        goto LABEL_38;
      }
    }

    v46 = *v43;
    v47 = *(v43 + 2);
    if (v46 == 12646 && v47 == 54)
    {
LABEL_39:
      v49 = *v15;
      if ((a7 & 1) == 0)
      {
        v50 = a1[24];
        v94[0] = 257;
        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, Cast, v50, &v90);
      }

      v51 = &v79;
      std::string::basic_string[abi:nn200100]<0>(&v79, "llvm.agx3.unpack.hfp8.");
      if (v49 == a1[21])
      {
        v52 = "f32";
      }

      else
      {
        v52 = "bf16";
      }

      std::string::append(&v79, v52);
      llvm::FixedVectorType::get();
      __src = a1[24];
      v88 = __src;
      v90 = &v92;
      v91 = 0x200000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v90, &__src, &v89);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v51 = v79.__r_.__value_.__r.__words[0]) != 0)
      {
        strlen(v51);
      }

      llvm::FunctionType::get();
      v53 = a1[54];
      llvm::Module::getOrInsertFunction();
      v55 = v54;
      if (v90 != &v92)
      {
        free(v90);
      }

      __src = v41;
      v88 = Cast;
      v94[0] = 257;
      Element = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v55 + 24), v55, &__src, 2, &v90);
      if (a7)
      {
        v57 = *(a5 + 23);
        if (v57 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v57 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v73 = a1[19];
        v74 = llvm::FixedVectorType::get();
      }

      else
      {
        v94[0] = 257;
        v58 = a1[25];
        v59 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Element, v59, &v90);
        v60 = *(a5 + 23);
        if (v60 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v60 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v74 = a1[19];
      }

      v94[0] = 257;
      FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), Element, v74, &v90);
      goto LABEL_87;
    }

LABEL_38:
    v15 = std::map<std::string,unsigned short>::at(&v83, a5);
    goto LABEL_39;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_HFP8_ENABLE_SATURATE", v22);
    if (Value)
    {
      if (*Value != 48)
      {
        atoi(Value);
      }
    }
  }

  v25 = a1[24];
  v26 = llvm::ConstantInt::get();
  v94[0] = 257;
  v27 = llvm::IRBuilderBase::CreateOr((a1 + 1), v26, v23, &v90);
  v28 = *std::map<std::string,unsigned short>::at(&v85, a5);
  v29 = a1[24];
  v30 = llvm::ConstantInt::get();
  v94[0] = 257;
  v31 = llvm::IRBuilderBase::CreateOr((a1 + 1), v30, v27, &v90);
  if (a7)
  {
    v94[0] = 257;
    v32 = a1[25];
    v33 = llvm::ConstantInt::get();
    v34 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v33, &v90);
    v94[0] = 257;
    v35 = a1[25];
    v36 = llvm::ConstantInt::get();
    FPExt = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v36, &v90);
    Cast = v34;
  }

  else
  {
    v44 = *v15;
    FPExt = llvm::ConstantFP::get();
  }

  v45 = *(a4 + 23);
  if (v45 < 0)
  {
    if (a4[1] != 3)
    {
LABEL_62:
      v62 = *v15;
      v94[0] = 257;
      Cast = llvm::IRBuilderBase::CreateFPExt((a1 + 1), Cast, v62, &v90);
      v63 = *v15;
      v94[0] = 257;
      FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1), FPExt, v63, &v90);
      goto LABEL_63;
    }

    a4 = *a4;
  }

  else if (v45 != 3)
  {
    goto LABEL_62;
  }

  if (*a4 != 13158 || *(a4 + 2) != 50)
  {
    goto LABEL_62;
  }

LABEL_63:
  v64 = &v79;
  std::string::basic_string[abi:nn200100]<0>(&v79, "llvm.agx3.pack.hfp8");
  v65 = a1[21];
  __src = a1[24];
  v88 = v65;
  v89 = v65;
  v90 = &v92;
  v91 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v90, &__src, &v90);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v64 = v79.__r_.__value_.__r.__words[0]) != 0)
  {
    strlen(v64);
  }

  v66 = a1[24];
  llvm::FunctionType::get();
  v67 = a1[54];
  llvm::Module::getOrInsertFunction();
  v69 = v68;
  if (v90 != &v92)
  {
    free(v90);
  }

  __src = v31;
  v88 = Cast;
  v89 = FPExt;
  v94[0] = 257;
  Element = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v69 + 24), v69, &__src, 3, &v90);
  if ((a7 & 1) == 0)
  {
    v70 = a1[23];
    v94[0] = 257;
    FPTrunc = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v70, &v90);
LABEL_87:
    Element = FPTrunc;
  }

LABEL_88:
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v84[0]);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v86[0]);
  v76 = *MEMORY[0x277D85DE8];
  return Element;
}

void *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(void *result, void *a2, void *a3)
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

uint64_t std::map<std::string,unsigned short>::at(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 56;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildConvertHFP8_ParseArgTypes@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 1947))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdYield(uint64_t a1, uint64_t a2, llvm::CmpInst **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  v7 = llvm::ConstantInt::get();
  v16 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 37, a3, v7, v15);
  v8 = *(a1 + 200);
  llvm::ConstantInt::get();
  v21 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v10 = *(a1 + 192);
  v16 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v10, v15);
  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.yield", 15, *(a1 + 144), *(a1 + 192));
  v20[0] = Cast;
  v16 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v12 + 24), v12, v20, 1, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v62 = v5;
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() != -1 && ((llvm::CallBase::arg_end(a2) - (a2 + 32 * -(*(a2 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0xA0)
    {
      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map = 0u;
        *algn_27C8DB2B0 = 0u;
        dword_27C8DB2C0 = 1065353216;
        v43 = 48;
        v44 = &dword_277E22068;
        do
        {
          v45 = *v44;
          v44 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, v45);
          v43 -= 16;
        }

        while (v43);
        __cxa_atexit(std::unordered_map<AIR::MemoryOrder,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map = 0u;
        unk_27C8DB2E0 = 0u;
        dword_27C8DB2F0 = 1065353216;
        v46 = 32;
        v47 = &dword_277E22098;
        do
        {
          v48 = *v47;
          v47 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, v48);
          v46 -= 16;
        }

        while (v46);
        __cxa_atexit(std::unordered_map<AIR::MemoryScope,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map = 0u;
        *algn_27C8DB310 = 0u;
        dword_27C8DB320 = 1065353216;
        v49 = 32;
        v50 = &byte_277E220B8;
        do
        {
          v51 = *v50;
          v50 += 16;
          std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, v51);
          v49 -= 16;
        }

        while (v49);
        __cxa_atexit(std::unordered_map<BOOL,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, &dword_20E4E1000);
      }

      v7 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
      v8 = *v7;
      v9 = v7[8];
      v10 = v7[16];
      v11 = **v7;
      v12 = *(v11 + 8);
      if ((v12 & 0xFE) == 0x12)
      {
        v12 = *(**(v11 + 16) + 8);
      }

      v13 = v7[4];
      v14 = v7[12];
      v15 = v12 & 0xFFFFFF00;
      std::string::basic_string[abi:nn200100]<0>(&v55, "air.simdgroup_atomic.wait.i32.");
      if (v15 == 256)
      {
        v16 = "device.";
      }

      else
      {
        v16 = "threadgroup.";
      }

      v17 = std::string::append(&v55, v16);
      v18 = v17->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<BOOL,char const*>::unordered_map(v54, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map);
      v19 = *(v10 + 8);
      if (v19 > 0x40)
      {
        v20 = *v10[3];
      }

      else
      {
        v20 = (v10[3] << -v19) >> -v19;
      }

      v21 = std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::find<BOOL>(v54[0], v54[1], v20 != 0);
      v22 = std::string::append(&v56, v21[3]);
      v23 = v22->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v57, ".");
      v25 = v24->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v53, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map);
      v26 = *(v9 + 8);
      if (v26 > 0x40)
      {
        v27 = *v9[3];
      }

      else
      {
        v27 = (v9[3] << -v26) >> -v26;
      }

      v28 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v53[0], v53[1], v27);
      v29 = std::string::append(&v58, v28[3]);
      v30 = v29->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v65, ".");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v52, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map);
      v33 = *(v14 + 8);
      if (v33 > 0x40)
      {
        v34 = *v14[3];
      }

      else
      {
        v34 = (v14[3] << -v33) >> -v33;
      }

      v35 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v52[0], v52[1], v34);
      v36 = std::string::append(&v63, v35[3]);
      v37 = v36->__r_.__value_.__r.__words[2];
      v59 = *&v36->__r_.__value_.__l.__data_;
      v60 = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v52);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v53);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v54);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
      v38 = *v13;
      v63.__r_.__value_.__r.__words[0] = *v8;
      v63.__r_.__value_.__l.__size_ = v38;
      llvm::FunctionType::get();
      v39 = *(a1 + 432);
      llvm::Module::getOrInsertFunction();
      v65.__r_.__value_.__r.__words[0] = v8;
      v65.__r_.__value_.__l.__size_ = v13;
      v64 = 257;
      llvm::IRBuilderBase::CreateCall(a1 + 8, *(v40 + 24), v40, &v65, 2, &v63);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(a2);
      AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(a1, "spin_limit");
    }

    v6 = 0;
  }

  else
  {
    llvm::Instruction::eraseFromParent(a2);
    v6 = 1;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v6;
}

void *std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(void *result, unsigned __int8 a2)
{
  v2 = result[1];
  if (!v2 || ((v3 = vcnt_s8(v2), v3.i16[0] = vaddlv_u8(v3), v2 <= a2) ? (v4 = 0) : (v4 = a2), v3.u32[0] >= 2uLL ? (v5 = v4) : (v5 = ~*(result + 2) & a2), (v6 = *(*result + 8 * v5)) == 0 || (v7 = *v6) == 0))
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v8 >= v2)
      {
        v8 %= v2;
      }
    }

    else
    {
      v8 &= v2 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_19;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t std::unordered_map<BOOL,char const*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(a1, *(i + 16));
  }

  return a1;
}

uint64_t std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(a1, *(i + 4));
  }

  return a1;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(uint64_t a1, char *__s)
{
  {
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix, "translator.agx3.simdgroup_atomic_wait.get_");
    __cxa_atexit(MEMORY[0x277D82640], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix, &dword_20E4E1000);
  }

  {
    v12 = byte_27C8DB347;
    if (byte_27C8DB347 < 0)
    {
      v12 = qword_27C8DB338;
    }

    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix_length = v12;
  }

  if (byte_27C8DB347 >= 0)
  {
    v4 = byte_27C8DB347;
  }

  else
  {
    v4 = qword_27C8DB338;
  }

  v5 = strlen(__s);
  v6 = &v15;
  std::string::basic_string[abi:nn200100](&v15, v4 + v5);
  if (v16 < 0)
  {
    v6 = v15;
  }

  if (v4)
  {
    if (byte_27C8DB347 >= 0)
    {
      v7 = &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix;
    }

    else
    {
      v7 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix;
    }

    memmove(v6, v7, v4);
  }

  v8 = v6 + v4;
  if (v5)
  {
    memmove(v8, __s, v5);
  }

  v8[v5] = 0;
  v9 = *(a1 + 168);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  *(inserted + 18) &= 0xC00Fu;
  v11 = *(a1 + 456);
  v13 = "entry";
  v14 = 259;
  operator new();
}

uint64_t *std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::find<BOOL>(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  v4 = ~a2 & a3;
  if (a3 >= a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if (v3.u32[0] >= 2uLL)
  {
    v4 = v5;
  }

  v6 = *(a1 + 8 * v4);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == a3)
    {
      if (*(result + 16) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      if (v8 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMemCpy2D(uint64_t a1, llvm::Instruction *a2)
{
  v12[12] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v11[0] = v12;
  v11[1] = 0xC00000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1968))(a1, v11);
  v8 = *a2;
  v10[16] = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMemCpy1D(uint64_t a1, llvm::Instruction *a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v12[0] = v13;
  v12[1] = 0x500000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v12, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1928))(a1, v12);
  v8 = *a2;
  v11 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildImageBaseLevelExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v17 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v16);
  v15[16] = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v9, GEP, 0, v15);
  v13 = (*(*a1 + 248))(a1, AlignedLoad);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v13, a4, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildImageMipCountExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v23 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v22);
  v21 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v9, GEP, 0, v20);
  v13 = (*(*a1 + 248))(a1, AlignedLoad);
  v14 = (*(*a1 + 249))(a1, AlignedLoad);
  v23 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v14, v13, v22);
  v16 = a1[25];
  v17 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Sub, v17, v20);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Add, a4, 0);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMeshVaryingWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v11, v16);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.varying.write", 28, *(a1 + 144), *(a1 + 192), *(a1 + 192), v11);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = PointerCast;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v21, 3, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMeshPrimattrWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v11, v16);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.primattr.write", 29, *(a1 + 144), *(a1 + 192), *(a1 + 192), v11);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = PointerCast;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v21, 3, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMeshIndexWrite(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
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

  v8 = *(a1 + 184);
  v9 = llvm::PointerType::get();
  v15 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a4, v9, v14);
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.mesh.index.write", 26, *(a1 + 144), *(a1 + 192), v9);
  v19[0] = a3;
  v19[1] = PointerCast;
  v15 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v11 + 24), v11, v19, 2, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildWaitFence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
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

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.wait.fence", 20, *(a1 + 144), *(a1 + 192));
  v14[0] = a3;
  v10 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, v14, 1, v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildAllocateUVB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
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

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.allocate.uvb", 22, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v16[0] = a3;
  v16[1] = a4;
  v12 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v8 + 24), v8, v16, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetMeshPrimitivePointer(uint64_t a1, uint64_t a2)
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

  v4 = *(a1 + 184);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetPayloadPointer(uint64_t a1, uint64_t a2)
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

  v4 = *(a1 + 184);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildEnableAllThreads(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
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

  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildWriteChildcount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.object.childcount.write", 33, *(a1 + 144), *(a1 + 200));
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

  v14[0] = a3;
  v10 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, v14, 1, v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildStoreChildcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
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

  v8 = *(a1 + 336);
  v9 = llvm::PointerType::get();
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.object.childcount.store", 33, *(a1 + 144), v8, v9);
  v18[0] = a4;
  v18[1] = a3;
  v14 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v10 + 24), v10, v18, 2, v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v94[16] = *MEMORY[0x277D85DE8];
  v87 = *a2;
  v88 = *(a2 + 16);
  if (v88)
  {
    llvm::MetadataTracking::track();
  }

  v89 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v87);
  if (v88)
  {
    llvm::MetadataTracking::untrack();
  }

  *__s = 0;
  v85 = 0;
  v86 = 0;
  v93[0] = v94;
  v93[1] = 0x1000000000;
  v90 = v92;
  v91 = 0x1000000000;
  if (*(a1 + 1948) == 1 && *(a1 + 1949) == 1)
  {
    *(a1 + 1950);
  }

  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v17 = *(a1 + 192);
  v18 = llvm::ConstantInt::get();
  v81 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v82, (a1 + 8));
  v83 = *(a1 + 104);
  v19 = (*(*a1 + 1680))(a1, &v81, v18, a10);
  if (v82)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v19);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 192));
  v20 = *(a1 + 192);
  v80 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v20, v79);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, Cast);
  v22 = *(a1 + 200);
  v23 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, v23);
  v24 = *(a1 + 200);
  v25 = llvm::PointerType::get();
  v80 = 257;
  v26 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v25, v79);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v26);
  v78 = 0;
  (*(*a1 + 1736))(__s, a1, a8, &v78);
  v27 = *(a1 + 184);
  v28 = llvm::PointerType::get();
  v80 = 257;
  v29 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, a4, v28, v79);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, v28);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v29);
  v30 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v32 = *(a1 + 200);
  v33 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v34 = *(a1 + 200);
  v35 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v36 = *(a1 + 200);
  v37 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v80 = 257;
  v38 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v33 + 24), v33, 0, 0, v79);
  v77 = 257;
  v39 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v76);
  v75 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v38, v39, v74);
  v80 = 257;
  v41 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v37 + 24), v37, 0, 0, v79);
  v77 = 257;
  v42 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v35 + 24), v35, 0, 0, v76);
  v75 = 257;
  v43 = llvm::IRBuilderBase::CreateMul((a1 + 8), v41, v42, v74);
  v44 = 0;
  if ((v78 - 1) > 1)
  {
    goto LABEL_15;
  }

  if (*(a1 + 1728))
  {
    v45 = strlen(*(a1 + 1728));
  }

  v46 = *(a1 + 200);
  v47 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v80 = 257;
  v44 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v47 + 24), v47, 0, 0, v79);
  if (v78 == 2)
  {
    v48 = *(a1 + 336);
    v49 = llvm::UndefValue::get();
    v80 = 257;
    v50 = *(a1 + 200);
    v51 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v49, Mul, v51, v79);
    v80 = 257;
    v53 = *(a1 + 200);
    v54 = llvm::ConstantInt::get();
    v55 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v43, v54, v79);
    v80 = 257;
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v58 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v55, v44, v57, v79);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 336));
    v59 = v58;
  }

  else
  {
LABEL_15:
    v60 = *(a1 + 248);
    v61 = llvm::UndefValue::get();
    v80 = 257;
    v62 = *(a1 + 200);
    v63 = llvm::ConstantInt::get();
    v64 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v61, Mul, v63, v79);
    v80 = 257;
    v65 = *(a1 + 200);
    v66 = llvm::ConstantInt::get();
    v67 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v64, v43, v66, v79);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 248));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v67);
    if (!v44)
    {
      goto LABEL_18;
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 192));
    v68 = *(a1 + 192);
    v80 = 257;
    v59 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v68, v79);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v59);
LABEL_18:
  v69 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((SHIBYTE(v86) & 0x80000000) == 0)
  {
    v70 = __s;
LABEL_21:
    strlen(v70);
    goto LABEL_22;
  }

  v70 = *__s;
  if (*__s)
  {
    goto LABEL_21;
  }

LABEL_22:
  v71 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v80 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v72 + 24), v72, v90, v91, v79);
  if (v90 != v92)
  {
    free(v90);
  }

  if (v93[0] != v94)
  {
    free(v93[0]);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(*__s);
  }

  v73 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRawRayPointers@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, llvm::Value **a6@<X8>)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v36 = *a2;
  v37 = *(a2 + 16);
  if (v37)
  {
    llvm::MetadataTracking::track();
  }

  v38 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v36);
  if (v37)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = *(a1 + 184);
  v13 = llvm::PointerType::get();
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a1 + 200);
  v34[0] = "vrid_ext";
  v35 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a4, v16, v34);
  v18 = *(a1 + 200);
  v41[0] = llvm::ConstantInt::get();
  v41[1] = Cast;
  v19 = *(v15 + 24);
  v34[0] = "ray_core";
  v35 = 259;
  llvm::Type::isOpaquePointerTy(*v15);
  GEP = llvm::IRBuilderBase::CreateGEP(a1 + 8, v19, v15, v41, 2, v34);
  v22 = llvm::ConstantPointerNull::get(v13, v21);
  if (a5)
  {
    v23 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ria.token.id", 22, *(a1 + 192), 0, 0);
    v24 = *(a1 + 200);
    v39[0] = llvm::ConstantInt::get();
    v25 = *(a1 + 200);
    v35 = 257;
    v39[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v23, v25, v34);
    v26 = *(v14 + 24);
    v34[0] = "token_buffer";
    v35 = 259;
    llvm::Type::isOpaquePointerTy(*v14);
    v22 = llvm::IRBuilderBase::CreateGEP(a1 + 8, v26, v14, v39, 2, v34);
  }

  v35 = 257;
  *a6 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v22, v13, v34);
  a6[1] = llvm::ConstantPointerNull::get(v13, v27);
  a6[2] = llvm::ConstantPointerNull::get(v13, v28);
  v40 = 257;
  a6[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v13, v39);
  a6[4] = llvm::ConstantPointerNull::get(v13, v29);
  a6[5] = llvm::ConstantPointerNull::get(v13, v30);
  result = llvm::ConstantPointerNull::get(v13, v31);
  a6[6] = result;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMemCpy2DConditionalLoadStoreExpansion(uint64_t a1, uint64_t ***a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = (*a2)[8];
  v5 = (*a2)[10];
  v73 = (*a2)[2];
  v6 = *(*v73 + 8);
  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(**(*v73 + 16) + 8);
  }

  v75 = *v3;
  v7 = v3[9];
  v8 = v3[11];
  v76 = v3[3];
  v9 = v3[5];
  v72 = v3[6];
  v10 = v3[7];
  if (*(v4 + 16) != 16)
  {
    goto LABEL_11;
  }

  v11 = v3[4];
  v12 = *(v4 + 8);
  if (v12 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v4 + 3)) != v12 - 1)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }
  }

  else if (v4[3] != 1)
  {
    goto LABEL_11;
  }

  if (*(v11 + 16) != 16)
  {
    goto LABEL_11;
  }

  v13 = *(v11 + 8);
  if (v13 > 0x40)
  {
    v14 = llvm::APInt::countLeadingZerosSlowCase((v11 + 3)) == v13 - 1;
  }

  else
  {
    v14 = v11[3] == 1;
  }

  v15 = v14;
LABEL_12:
  v16 = v6 & 0xFFFFFF00;
  if (v5[16] > 0x14u)
  {
LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  v79 = 257;
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v5, v18, &v78);
  if (*(Element + 16) == 16)
  {
    v20 = Element;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v20 + 32);
  if (v21 > 0x40)
  {
    if (**(v20 + 24))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v20 + 24) << -v21) >> -v21)
  {
    goto LABEL_18;
  }

  v79 = 257;
  v40 = *(a1 + 200);
  v41 = llvm::ConstantInt::get();
  v42 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v5, v41, &v78);
  if (*(v42 + 16) == 16)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = *(v43 + 32);
  if (v44 > 0x40)
  {
    v45 = **(v43 + 24);
  }

  else
  {
    v45 = (*(v43 + 24) << -v44) >> -v44;
  }

  if (v45)
  {
    v71 = 0;
  }

  else
  {
    v71 = v9 == v7;
  }

  v22 = v71;
LABEL_19:
  v79 = 257;
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v25 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v24, &v78);
  v79 = 257;
  v26 = *(a1 + 200);
  v27 = llvm::ConstantInt::get();
  v28 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v27, &v78);
  v79 = 257;
  v29 = *(a1 + 200);
  v30 = llvm::ConstantInt::get();
  v31 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v30, &v78);
  v33 = v25 == v76 && v28 == v10;
  v34 = v33 & v15;
  if (v22)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&v78, *(a1 + 2616));
  if (v16 == 768)
  {
    v36 = ".read";
  }

  else
  {
    v36 = ".write";
  }

  v37 = std::string::append(&v78, v36);
  v38 = v37->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (*(v8 + 16) == 16)
  {
    v39 = *(v8 + 8);
    if (v39 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v8 + 3)) != v39 - 1)
      {
        goto LABEL_45;
      }
    }

    else if (v8[3] != 1)
    {
      goto LABEL_45;
    }

    std::string::append(&v77, ".edgeclamped");
  }

LABEL_45:
  if (v35)
  {
    v79 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v28, v31, &v78);
    *&__src.__r_.__value_.__l.__data_ = v75;
    __src.__r_.__value_.__r.__words[2] = v73;
    v81 = v72;
    v82 = Mul;
    v78.__r_.__value_.__r.__words[0] = &v78.__r_.__value_.__r.__words[2];
    v78.__r_.__value_.__l.__size_ = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v78, &__src, &v83);
    v47 = (*(*a1 + 1928))(a1, &v78);
    v48 = v78.__r_.__value_.__r.__words[0];
    if (v78.__r_.__value_.__l.__data_ == &v78.__r_.__value_.__r.__words[2])
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v15)
  {
    std::string::append(&v77, ".noholes");
    v51 = a2;
  }

  else
  {
    v52 = (v75 + 24);
    if (*(v75 + 32) >= 0x41u)
    {
      v52 = *v52;
    }

    v53 = *v52;
    v54 = (*(&v75 + 1) + 24);
    if (*(*(&v75 + 1) + 32) >= 0x41u)
    {
      v54 = *v54;
    }

    v51 = a2;
    v55 = *v54;
    if (v55 > 4 && v53 == v55)
    {
      v57 = v55 >> 2;
    }

    else
    {
      v57 = v53 / v55;
    }

    std::to_string(&__src, v57);
    v58 = std::string::insert(&__src, 0, ".withholes.v");
    v59 = v58->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = *&v58->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v78;
    }

    else
    {
      v60 = v78.__r_.__value_.__r.__words[0];
    }

    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v78.__r_.__value_.__l.__size_;
    }

    std::string::append(&v77, v60, size);
    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  v78.__r_.__value_.__r.__words[0] = &v78.__r_.__value_.__r.__words[2];
  v78.__r_.__value_.__l.__size_ = 0xC00000000;
  v62 = *(v51 + 2);
  if (v62)
  {
    v63 = *v51;
    v64 = 8 * v62;
    do
    {
      v65 = *v63++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v78, *v65);
      v64 -= 8;
    }

    while (v64);
  }

  v66 = *(a1 + 144);
  llvm::FunctionType::get();
  v67 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v68 = *v51;
  v69 = *(v51 + 2);
  LOWORD(v82) = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v70 + 24), v70, v68, v69, &__src);
  v47 = *(a1 + 2648);
  v48 = v78.__r_.__value_.__r.__words[0];
  if (v78.__r_.__value_.__l.__data_ != &v78.__r_.__value_.__r.__words[2])
  {
LABEL_47:
    free(v48);
  }

LABEL_48:
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getRayCoreElementType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 224);
  v5 = *(a1 + 168);
  v6 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v1 = *(a1 + 456);
  result = llvm::StructType::create();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::programTypeSpecialRegisterValueForShaderType(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
    v2 = 3;
  }

  else
  {
    v2 = a2 == 9;
  }

  if ((a2 - 27) >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (a2 == 2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if (a2 <= 6)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getImageBlockWriteIntrinsicFromDimension@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, _BYTE *a4@<X8>)
{
  *a3 = 0;
  result = std::string::basic_string[abi:nn200100]<0>(a4, *(a1 + 2064));
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v7 = ".coords.2d.array";
LABEL_13:
        result = std::string::append(result, v7);
        v9 = 1;
LABEL_16:
        *a3 = v9;
        return result;
      }

      v8 = ".coords.2d";
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v8 = ".coords.1d.array";
    }

    else
    {
      v8 = ".coords.1d";
    }
  }

  else if (a2 <= 5)
  {
    if (a2 != 4)
    {
      result = std::string::append(result, ".coords.3d");
      v9 = 2;
      goto LABEL_16;
    }

    v8 = ".coords.2d.msaa";
  }

  else
  {
    switch(a2)
    {
      case 6:
        v8 = ".coords.cubestf";
        break;
      case 7:
        v8 = ".coords.cubestf.array";
        break;
      case 8:
        v7 = ".coords.2d.msaa.array";
        goto LABEL_13;
      default:
        return result;
    }
  }

  return std::string::append(result, v8);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v5 = *(a3 + 8) & 0xFE;
  if (*(a1 + 1889) == 1)
  {
    v6 = a3;
    if (v5 == 18)
    {
      v6 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = a2;
    }

    if (a2 == 12)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    if (a2 == 13)
    {
      v9 = 15;
    }

    else
    {
      v9 = v8;
    }

    if (a5)
    {
      v9 = a2;
    }

    if (v6 == *(a1 + 168) && a4 != 0)
    {
      a2 = v9;
    }
  }

  if (v5 == 18)
  {
    a3 = **(a3 + 16);
  }

  v12 = a2 == 1 && a3 == *(a1 + 168);
  return v12 | (a2 << 16);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v20 = *a2;
  v21 = *(a2 + 2);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 6);
  v8 = AGCLLVMGen5TargetLowerer::buildSimdShuffleDown(a1, &v20, a3, a4);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v9 = *(a1 + 192);
    v10 = (*(a1 + 968) - 1);
    v11 = llvm::ConstantInt::get();
    v17 = *a2;
    v18 = *(a2 + 2);
    if (v18)
    {
      llvm::MetadataTracking::track();
    }

    v19 = *(a2 + 6);
    v12 = (*(*a1 + 1624))(a1, &v17, *(a1 + 192));
    v16 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v11, v12, v15);
    if (v18)
    {
      llvm::MetadataTracking::untrack();
    }

    v16 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Sub, a4, v15);
    v16 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v8 = AGCLLVMGen5TargetLowerer::buildSimdShuffleUp(a1, &v16, a3, a4);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    if (v14)
    {
      llvm::MetadataTracking::track();
    }

    v15 = *(a2 + 6);
    v9 = (*(*a1 + 1624))(a1, &v13, *(a1 + 192));
    if (v14)
    {
      llvm::MetadataTracking::untrack();
    }

    v12 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v9, a4, v11);
    v12 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildQuadShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v19 = *a2;
  v20 = *(a2 + 2);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(a1, &v19, a3, a4);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v9 = *(a1 + 192);
    v10 = llvm::ConstantInt::get();
    v16 = *a2;
    v17 = *(a2 + 2);
    if (v17)
    {
      llvm::MetadataTracking::track();
    }

    v18 = *(a2 + 6);
    v11 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v16, *(a1 + 192));
    v15 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v10, v11, v14);
    if (v17)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Sub, a4, v14);
    v15 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildQuadShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleUp(a1, &v16, a3, a4);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    if (v14)
    {
      llvm::MetadataTracking::track();
    }

    v15 = *(a2 + 6);
    v9 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v13, *(a1 + 192));
    if (v14)
    {
      llvm::MetadataTracking::untrack();
    }

    v12 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v9, a4, v11);
    v12 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildWriteImageBlockIntrinsic(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, int a6)
{
  v67[16] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v62, *(a1 + 2064));
  if (a6)
  {
    std::string::append(&v62, ".subset");
  }

  std::string::append(&v62, ".coords");
  v66[0] = v67;
  v66[1] = 0x1000000000;
  v63 = v65;
  v64 = 0x1000000000;
  if (*(a1 + 1948) == 1 && *(a2 + 26) == 1)
  {
    v12 = *(a1 + 192);
    v13 = llvm::ConstantInt::get();
    v61 = 257;
    a3 = llvm::IRBuilderBase::CreateOr((a1 + 8), a3, v13, v60);
  }

  v57 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v58, (a1 + 8));
  v59 = *(a1 + 104);
  v14 = (*(*a1 + 1680))(a1, &v57, a3, a5);
  if (v58)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v14);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, a4);
  v15 = *(a1 + 200);
  v16 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, v16);
  v17 = *(a2 + 56);
  v18 = *(a1 + 200);
  v19 = llvm::PointerType::get();
  v61 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v17, v19, v60);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, Cast);
  v21 = *(a1 + 184);
  v22 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, v22);
  v23 = *(a2 + 32);
  if (!v23)
  {
    v24 = *(a1 + 208);
    v25 = llvm::ConstantInt::get();
    v61 = 257;
    v23 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v25, v22, v60);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v23);
  v26 = *(a2 + 4);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = ".cubestf";
LABEL_19:
      std::string::append(&v62, v27);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 248));
      v28 = *(a2 + 136);
      v29 = *(a1 + 248);
      goto LABEL_20;
    }

    if (v26 != 3)
    {
      goto LABEL_21;
    }

    std::string::append(&v62, ".3d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 336));
    v28 = *(a2 + 136);
    v29 = *(a1 + 336);
  }

  else
  {
    if (v26)
    {
      if (v26 != 1)
      {
        goto LABEL_21;
      }

      v27 = ".2d";
      goto LABEL_19;
    }

    std::string::append(&v62, ".1d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 200));
    v28 = *(a2 + 136);
    v29 = *(a1 + 200);
  }

LABEL_20:
  v61 = 257;
  ZExtOrBitCast = llvm::IRBuilderBase::CreateZExtOrBitCast((a1 + 8), v28, v29, v60);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, ZExtOrBitCast);
LABEL_21:
  if (*(a2 + 152))
  {
    std::string::append(&v62, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
    v31 = *(a2 + 152);
    v32 = *(a1 + 192);
    v61 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v33);
  }

  if (*(a2 + 232))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
    v34 = *(a2 + 232);
    v35 = *(a1 + 192);
    v61 = 257;
    v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v34, v35, v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v36);
  }

  if (*(a2 + 168))
  {
    std::string::append(&v62, ".lod");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
    v37 = *(a2 + 168);
    v38 = *(a1 + 192);
    v61 = 257;
    v39 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v37, v38, v60);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v39);
  }

  if (a6)
  {
    v40 = **(a2 + 120);
    if ((*(v40 + 8) & 0xFE) == 0x12)
    {
      v41 = *(v40 + 32);
      if (!v41)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v41 = 1;
    }

    v42 = 0;
    v43 = v41;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
      v44 = *(a2 + 120);
      v61 = 257;
      v45 = *(a1 + 200);
      v46 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v44, v46, v60);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, Element);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v66, *(a1 + 192));
      v48 = *(a2 + 128);
      v61 = 257;
      v49 = *(a1 + 200);
      v50 = llvm::ConstantInt::get();
      v51 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v48, v50, v60);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v63, v51);
      ++v42;
    }

    while (v43 != v42);
  }

LABEL_34:
  if (*(a2 + 16) == 1)
  {
    std::string::append(&v62, ".rtz");
  }

  v52 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v53 = &v62;
LABEL_39:
    strlen(v53);
    goto LABEL_40;
  }

  v53 = v62.__r_.__value_.__r.__words[0];
  if (v62.__r_.__value_.__r.__words[0])
  {
    goto LABEL_39;
  }

LABEL_40:
  v54 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v61 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v55 + 24), v55, v63, v64, v60);
  if (v63 != v65)
  {
    free(v63);
  }

  if (v66[0] != v67)
  {
    free(v66[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v56 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPackMXU(void *a1, int a2, uint64_t *a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v21 = 0;
  v22 = 0;
  if (a2 == 9)
  {
    v5 = *a3;
    v6 = a1[37];
    v7 = "llvm.agx3.pack.4xi4.v4f32";
    v8 = "llvm.agx3.pack.4xi4.v4f16";
  }

  else
  {
    if (a2 != 10)
    {
      goto LABEL_9;
    }

    v5 = *a3;
    v6 = a1[27];
    v7 = "llvm.agx3.pack.2xi8.v2f32";
    v8 = "llvm.agx3.pack.2xi8.v2f16";
  }

  if (v5 == v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  MEMORY[0x20F331AA0](__s, v9);
LABEL_9:
  v10 = *a3;
  __src[0] = a1[24];
  __src[1] = v10;
  v27[0] = v28;
  v27[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v27, __src, v24);
  v11 = a1[54];
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    v12 = __s;
LABEL_12:
    strlen(v12);
    goto LABEL_13;
  }

  v12 = *__s;
  if (*__s)
  {
    goto LABEL_12;
  }

LABEL_13:
  v13 = a1[24];
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v15 = v14;
  v16 = a1[24];
  v26[0] = llvm::ConstantInt::get();
  v26[1] = a3;
  v25 = 257;
  v17 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v15 + 24), v15, v26, 2, __src);
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(*__s);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildUnpackMXU(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v21 = 0;
  v22 = 0;
  if (a2 == 10)
  {
    v8 = "llvm.agx3.unpack.2xi8.v2f16";
    v9 = 28;
    v10 = 27;
  }

  else
  {
    v7 = 0;
    if (a2 != 9)
    {
      goto LABEL_6;
    }

    v8 = "llvm.agx3.unpack.4xi4.v4f16";
    v9 = 39;
    v10 = 37;
  }

  MEMORY[0x20F331AA0](__s, v8);
  v11 = a1[v10];
  v7 = a1[v9];
LABEL_6:
  __src[0] = a1[24];
  __src[1] = __src[0];
  v27[0] = v28;
  v27[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v27, __src, v24);
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    v12 = __s;
LABEL_9:
    strlen(v12);
    goto LABEL_10;
  }

  v12 = *__s;
  if (*__s)
  {
    goto LABEL_9;
  }

LABEL_10:
  llvm::FunctionType::get();
  v13 = a1[54];
  llvm::Module::getOrInsertFunction();
  v15 = v14;
  v16 = a1[24];
  v26[0] = llvm::ConstantInt::get();
  v26[1] = a3;
  v25 = 257;
  FPExt = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v15 + 24), v15, v26, 2, __src);
  if (a1[21] == a4)
  {
    v25 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1), FPExt, v7, __src);
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(*__s);
  }

  v18 = *MEMORY[0x277D85DE8];
  return FPExt;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::IntersectionQueryAnalysisGen6::intersectionQueryResidencyForQueryAtInstruction(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Value *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Value *>>>::find<llvm::Value *>((a1 + 8), a2);
  if (v4)
  {
    v2 = v4[3];
  }

  if (*(a1 + 80) != 1)
  {
    return 2;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    return 2;
  }

  while (1)
  {
    v6 = v5[4];
    if (v2 >= v6)
    {
      break;
    }

LABEL_8:
    v5 = *v5;
    if (!v5)
    {
      return 2;
    }
  }

  if (v6 < v2)
  {
    ++v5;
    goto LABEL_8;
  }

  if ((*(a1 + 51) & 1) != 0 || (*(a1 + 48) & 1) != 0 || *(a1 + 53) == 1)
  {
    return 2;
  }

  return 0;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BC7A8;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BC7A8;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getPayloadVariant(uint64_t a1, int a2)
{
  if ((~a2 & 0x44) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  v3 = a2 & 1;
  if ((a2 & 0x40) != 0)
  {
    v3 = 2;
  }

  if ((a2 & 4) != 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::replacePayloadSupportFunctions(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a1[54];
  result = llvm::Module::getFunction();
  if (result)
  {
    v13 = result;
    v38 = a4;
    v14 = *(result + 8);
    while (v14)
    {
      v15 = *(v14 + 24);
      v14 = *(v14 + 8);
      if (a6 == 8)
      {
        llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v15);
        v16 = (*(*a1 + 117))(a1);
        v17 = a1[25];
        v18 = llvm::ConstantInt::get();
        v42 = 257;
        v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v16, v18, v41);
        v20 = a1[26];
        v21 = llvm::PointerType::get();
        v22 = *(a2 + 16);
        v42 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v22, v21, v41);
        PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v19, PointerCast);
        v25 = a1[25];
        (*(*a1[115] + 1128))();
        v26 = a1[25];
        v27 = llvm::ConstantInt::get();
        v42 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v25, PerVridSetDataPtr, v27, v41);
        v42 = 257;
        Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v41);
        v30 = a1[23];
        v40 = 257;
        llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Load, v30, v39);
      }

      else
      {
        v31 = a1[23];
        llvm::ConstantInt::get();
      }

      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v15);
    }

    v32 = a1[54];
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v34 = *(Function + 8);
      if (v34)
      {
        do
        {
          v35 = *(v34 + 8);
          v36 = *(v34 + 24);
          llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v36);
          v37 = a1[22];
          llvm::ConstantInt::get();
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v36);
          v34 = v35;
        }

        while (v35);
      }
    }

    llvm::Function::eraseFromParent(v13);
    return (*(*a1 + 180))(a1, a2, a3, v38);
  }

  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::replacePayloadSupportFunctions(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 432);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v7 = Function;
    v8 = *(Function + 8);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        v11 = *(v4 + 2872);
        v12 = *(v4 + 184);
        llvm::ConstantInt::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
        v8 = v9;
      }

      while (v9);
    }

    llvm::Function::eraseFromParent(v7);
  }

  v13 = *(v4 + 432);
  v14 = llvm::Module::getFunction();
  v40 = v4;
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + 8);
    if (v16)
    {
      do
      {
        v17 = (*(*v4 + 1456))(v4, 1);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(v4, 6, 1uLL, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(v40, v17, 1uLL, 0);
        v18 = *(v16 + 8);
        v19 = *(v16 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v40 + 8), v19);
        v20 = *(v19 - 4 * (*(v19 + 5) & 0x7FFFFFF));
        v21 = *(v40 + 200);
        llvm::ConstantInt::get();
        v22 = *(v40 + 200);
        v4 = v40;
        llvm::ConstantInt::get();
        LOWORD(v43) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v19);
        v16 = v18;
      }

      while (v18);
    }

    llvm::Function::eraseFromParent(v15);
  }

  v23 = *(v4 + 432);
  v24 = llvm::Module::getFunction();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + 8);
    if (v26)
    {
      do
      {
        v27 = (*(*v4 + 1456))(v4, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(v4, 5, 0, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(v40, v27, 0, 0);
        v28 = *(v26 + 8);
        v29 = *(v26 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v40 + 8), v29);
        v30 = *(v29 - 4 * (*(v29 + 5) & 0x7FFFFFF));
        v31 = *(v40 + 200);
        llvm::ConstantInt::get();
        v32 = *(v40 + 200);
        v4 = v40;
        llvm::ConstantInt::get();
        LOWORD(v43) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v29);
        v26 = v28;
      }

      while (v28);
    }

    llvm::Function::eraseFromParent(v25);
  }

  v33 = *(v4 + 432);
  v34 = llvm::Module::getFunction();
  if (v34)
  {
    v35 = *(v34 + 8);
    if (v35)
    {
      do
      {
        v36 = *(v35 + 8);
        v37 = *(v35 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v4 + 8), v37);
        v38 = *(v37 - 4 * (*(v37 + 5) & 0x7FFFFFF));
        v39 = *(v4 + 144);
        v41[0] = a3;
        v41[1] = v38;
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(v4, "llvm.agx3.update.bvh", 20, v39, v41, 2uLL);
        llvm::Instruction::eraseFromParent(v37);
        v35 = v36;
      }

      while (v36);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v41, "agc.query.allocate");
  LOBYTE(v42) = 1;
  std::string::basic_string[abi:nn200100]<0>(&v43, "agc.query.deallocate");
  LOBYTE(v44) = 0;
  operator new();
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = (*(*a1 + 1016))(a1, a2, a4);
  v9 = 0;
  v10 = a1[1940];
  v11 = 6;
  v12 = -104;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v11, v6, v4, v10))
    {
      v13 = RaytracingConstantsGen2::payloadSegmentSize(v11, a1[2872]);
      if ((v11 - 19) <= 4)
      {
        v14 = (0x201010101uLL >> v12) & 3;
        if (a3 >= v14)
        {
          v15 = (a3 - v14) / (((v14 << 8) & 0xFFFCFFFF | (((0x201010101uLL >> v12) & 3) << 16)) >> 16) + 1;
        }

        else
        {
          v15 = 0;
        }

        v13 *= v15;
      }

      v16 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v8 >= v16;
      v18 = v8 - v16;
      if (!v17)
      {
        v18 = 0;
      }

      if (v13 - 1 >= v8)
      {
        v9 += v13;
      }

      else
      {
        v8 = v18;
      }
    }

    ++v11;
    v12 += 8;
  }

  while (v11 != 26);
  return v9;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getRaytracingShaderType(uint64_t a1, int a2, char a3)
{
  if (a2 > 8)
  {
    if (a2 == 11)
    {
      return 3;
    }

    if (a2 == 10 || a2 == 9)
    {
      return (a3 & 0xFD) != 0;
    }

    return 4;
  }

  if (!a2)
  {
    return 5;
  }

  if (a2 != 1)
  {
    if (a2 == 4)
    {
      return 7;
    }

    return 4;
  }

  return 6;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSDoneRayTraceSCSFlagSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a3 + 16);
  v7 = *(a1 + 208);
  if ((*(*v6 + 2) & 0xFE) == 0x12)
  {
    v8 = *(**(*v6 + 2) + 8);
  }

  v9 = llvm::PointerType::get();
  v23 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v6, v9, v22);
  v11 = (*(*a1 + 952))(a1);
  v12 = *(a1 + 200);
  v22[0] = "vrid";
  v23 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v12, v22);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  v15 = *(a1 + 200);
  v16 = llvm::ConstantInt::get();
  v17 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v23 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v17, PerVridSetDataPtr, v19, v22);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v16, GEP, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSDoneRayTraceSCSFlagRead(AGCLLVMBuilder *a1, uint64_t a2, uint64_t a3)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a3 + 16);
  v7 = *(a1 + 26);
  if ((*(*v6 + 2) & 0xFE) == 0x12)
  {
    v8 = *(**(*v6 + 2) + 8);
  }

  v9 = llvm::PointerType::get();
  v22 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v6, v9, v21);
  v11 = (*(*a1 + 952))(a1);
  v12 = *(a1 + 25);
  v21[0] = "vrid";
  v22 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v12, v21);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  v15 = *(a1 + 25);
  (*(**(a1 + 115) + 1096))();
  v16 = *(a1 + 25);
  v17 = llvm::ConstantInt::get();
  v22 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v15, PerVridSetDataPtr, v17, v21);
  v20[16] = 257;
  return AGCLLVMBuilder::CreateLoad(a1, GEP, v20);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v25);
  v13 = *(a1 + 144);
  v14 = *(a1 + 184);
  v15 = llvm::PointerType::get();
  v26 = 257;
  v30[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v15, v25);
  v16 = *(a1 + 184);
  v17 = llvm::PointerType::get();
  v24 = 257;
  v30[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v17, v23);
  v18 = *(a1 + 208);
  v22 = 257;
  v30[2] = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a5, v18, v21);
  v30[3] = a6;
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.set_buffer_intersection_function_table", 42, v13, v30, 4uLL);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v25);
  v13 = *(a1 + 208);
  v14 = *(a1 + 184);
  v15 = llvm::PointerType::get();
  v26 = 257;
  v30[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v15, v25);
  v16 = *(a1 + 184);
  v17 = llvm::PointerType::get();
  v24 = 257;
  v30[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v17, v23);
  v30[2] = a5;
  v18 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_buffer_intersection_function_table", 42, v13, v30, 3uLL);
  v22 = 257;
  result = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v18, a6, v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetSizeIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
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

  v18 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v17);
  v9 = *(a1 + 200);
  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v18 = 257;
  v22[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v11, v17);
  v12 = *(a1 + 184);
  v13 = llvm::PointerType::get();
  v16[16] = 257;
  v22[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v13, v16);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_size_intersection_function_table", 40, v9, v22, 2uLL);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::createDriverParameterShaderCoreBinding(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1[24];
  v2 = a1[57];
  llvm::StructType::create();
  v3 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  inserted = llvm::Module::getOrInsertNamedMetadata();
  if (!llvm::NamedMDNode::getNumOperands(inserted))
  {
    RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(0x1000000uLL, 1);
    v5 = a1[57];
    v6 = a1[25];
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::createShaderCoreBindings@<X0>(llvm::ArrayType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(*a1 + 245))(a1);
  v9 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(v8, 0x1000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v10 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v11 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v12 = llvm::User::operator new(0x58);
  v13 = llvm::ArrayType::get(a1[23], 0x200);
  llvm::ArrayType::get(v13, 0x30);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  *a4 = v12;
  a4[1] = v9;
  a4[3] = v10;
  a4[5] = v11;
  result = (*(*a1 + 171))(a1, a2);
  a4[2] = result;
  a4[4] = a3;
  return result;
}

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getIntersectionMainFunctionName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  if ((*(*a1 + 1424))(a1, a2, a4) == 4)
  {
    v9 = "agc.intersection";
  }

  else
  {
    v9 = "agc.cliqueS";
  }

  result = std::string::basic_string[abi:nn200100]<0>(a5, v9);
  if (a3 <= 7)
  {
    result = std::string::append(a5, off_277E220F0[a3]);
  }

  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 11)
      {
        if (v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22170;
      }

      else if (v7 == 10)
      {
        if (v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22150;
      }

      else
      {
        if (v7 != 9 || v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22130;
      }

      goto LABEL_39;
    }

    if (v7 == 6)
    {
      goto LABEL_26;
    }

    if (v7 != 7)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v11 = ".gin1122SWWA";
        goto LABEL_40;
      }

LABEL_18:
      result = std::string::append(a5, ".box");
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v11 = ".box_motion_leaf";
      }

      else
      {
        v11 = ".box_leaf";
      }

      goto LABEL_40;
    }

LABEL_27:
    result = std::string::append(a5, ".curve");
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v11 = ".curve_motion_leaf";
    }

    else
    {
      v11 = ".curve_leaf";
    }

    goto LABEL_40;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v13 = ".early_termination";
      goto LABEL_34;
    }

    if (v7 != 2)
    {
      return result;
    }

LABEL_26:
    v13 = ".triangle";
LABEL_34:
    result = std::string::append(a5, v13);
    if (v5 >= 8)
    {
      return result;
    }

    v12 = off_277E22190;
LABEL_39:
    v11 = v12[v5];
    goto LABEL_40;
  }

  v11 = ".miss";
LABEL_40:

  return std::string::append(a5, v11);
}

unint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSizeAndUserPayloadSize(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v6 = a4;
  if (a3)
  {
    if (a4)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    if ((a4 & 0x40) != 0)
    {
      v9 = 7;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = (*(*a1 + 1456))(a1, a4);
  }

  return (AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(a1, v9, a5, (v6 >> 5) & 1) + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSGeneral(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 2);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v18, (a1 + 1));
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(v17, 0, sizeof(v17));
  (*(*a1 + 944))(v17, a1);
  memset(v16, 0, sizeof(v16));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v16, a1, a3, *&v17[0], 0, 0, 0);
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, *&v17[0], v16, a4, 1u, 1);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSGeneral(AGCLLVMBuilder::InsertPoint,std::array<llvm::GlobalVariable *,6ul> const&,unsigned char,unsigned char)::functionNames[a5];
  v12 = strlen(v11);
  v13 = a1[18];
  v21 = v10;
  v22 = v17[0];
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v11, v12, v13, &v21, 3uLL);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}