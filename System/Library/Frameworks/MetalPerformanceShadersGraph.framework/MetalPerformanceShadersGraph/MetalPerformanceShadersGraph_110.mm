void llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 80 * v6 - 80;
    if (v8 < 0x50)
    {
      v9 = *a1;
LABEL_7:
      v13 = (v7 + 80 * v6);
      do
      {
        *v9 = xmmword_1E096FB70;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x50 + 1;
    v9 = (v7 + 80 * (v10 & 0x7FFFFFFFFFFFFFELL));
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = xmmword_1E096FB70;
      v11[5] = xmmword_1E096FB70;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, v4, &v17);
        v14 = v17;
        *v17 = *v4;
        v14[3] = 0x600000000;
        v14[2] = (v14 + 4);
        v15 = (v14 + 2);
        if (*(v4 + 24))
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(v15, (v4 + 16));
        }

        ++*(a1 + 8);
        v16 = *(v4 + 16);
        if ((v4 + 32) != v16)
        {
          free(v16);
        }
      }

      v4 += 80;
    }

    while (v4 != a3);
  }
}

void mlir::ANECRegionOpCreator::isOpCompatible(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::copyFrom(v2);
}

uint64_t mlir::ANECRegionOpCreator::getRegionOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir::IRMapping *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v56[0] = a6;
  v56[1] = a7;
  v55[0] = a9;
  v55[1] = a10;
  v54[0] = a11;
  v54[1] = a12;
  v53[0] = a13;
  v53[1] = a14;
  v52[0] = a15;
  v52[1] = a16;
  v22 = (a1 + 328);
  v23 = *(a1 + 351);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v24 = *(a1 + 336);
    if (!v24)
    {
      std::string::__init_copy_ctor_external(&v51, *v22, 0);
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(a1 + 351))
    {
      *&v51.__r_.__value_.__l.__data_ = *v22;
      v51.__r_.__value_.__r.__words[2] = *(a1 + 344);
      goto LABEL_15;
    }

    v24 = *(a1 + 336);
  }

  *(&v48.__r_.__value_.__s + 23) = 1;
  LOWORD(v48.__r_.__value_.__l.__data_) = 95;
  if ((v23 & 0x80000000) == 0)
  {
    v25 = (a1 + 328);
  }

  else
  {
    v25 = *v22;
  }

  if ((v23 & 0x80000000) == 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v24;
  }

  v27 = std::string::append(&v48, v25, v26);
  v28 = v27->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

LABEL_15:
  v29 = *(a1 + 312);
  if (v29 > 3)
  {
    if (v29 > 5)
    {
      v44 = 773;
      v41 = a3;
      v42 = a4;
      v43 = "_ane_region_";
      v45[0] = &v41;
      v46 = &a17;
      v47 = 2818;
      v48.__r_.__value_.__r.__words[0] = v45;
      v48.__r_.__value_.__r.__words[2] = &v51;
      v49 = 1026;
      if (v29 == 6)
      {
        llvm::Twine::str(&v48, &__p);
        v34 = *(a1 + 8);
        *&v48.__r_.__value_.__l.__data_ = 0uLL;
        v31 = mlir::OpBuilder::create<mlir::anec::A18,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v34, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
      }

      else
      {
        llvm::Twine::str(&v48, &__p);
        v38 = *(a1 + 8);
        *&v48.__r_.__value_.__l.__data_ = 0uLL;
        v31 = mlir::OpBuilder::create<mlir::anec::A11Legacy,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v38, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
      }
    }

    else
    {
      v44 = 773;
      v41 = a3;
      v42 = a4;
      v43 = "_ane_region_";
      v45[0] = &v41;
      v46 = &a17;
      v47 = 2818;
      v48.__r_.__value_.__r.__words[0] = v45;
      v48.__r_.__value_.__r.__words[2] = &v51;
      v49 = 1026;
      if (v29 == 4)
      {
        llvm::Twine::str(&v48, &__p);
        v32 = *(a1 + 8);
        *&v48.__r_.__value_.__l.__data_ = 0uLL;
        v31 = mlir::OpBuilder::create<mlir::anec::A16,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v32, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
      }

      else
      {
        llvm::Twine::str(&v48, &__p);
        v36 = *(a1 + 8);
        *&v48.__r_.__value_.__l.__data_ = 0uLL;
        v31 = mlir::OpBuilder::create<mlir::anec::A17,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v36, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
      }
    }
  }

  else if (v29 > 1)
  {
    v44 = 773;
    v41 = a3;
    v42 = a4;
    v43 = "_ane_region_";
    v45[0] = &v41;
    v46 = &a17;
    v47 = 2818;
    v48.__r_.__value_.__r.__words[0] = v45;
    v48.__r_.__value_.__r.__words[2] = &v51;
    v49 = 1026;
    if (v29 == 2)
    {
      llvm::Twine::str(&v48, &__p);
      v33 = *(a1 + 8);
      *&v48.__r_.__value_.__l.__data_ = 0uLL;
      v31 = mlir::OpBuilder::create<mlir::anec::A14,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v33, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
    }

    else
    {
      llvm::Twine::str(&v48, &__p);
      v37 = *(a1 + 8);
      *&v48.__r_.__value_.__l.__data_ = 0uLL;
      v31 = mlir::OpBuilder::create<mlir::anec::A15,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v37, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
    }
  }

  else
  {
    v44 = 773;
    v41 = a3;
    v42 = a4;
    v43 = "_ane_region_";
    v45[0] = &v41;
    v46 = &a17;
    v47 = 2818;
    v48.__r_.__value_.__r.__words[0] = v45;
    v48.__r_.__value_.__r.__words[2] = &v51;
    v49 = 1026;
    if (v29)
    {
      llvm::Twine::str(&v48, &__p);
      v35 = *(a1 + 8);
      *&v48.__r_.__value_.__l.__data_ = 0uLL;
      v31 = mlir::OpBuilder::create<mlir::anec::A13,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v35, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
    }

    else
    {
      llvm::Twine::str(&v48, &__p);
      v30 = *(a1 + 8);
      *&v48.__r_.__value_.__l.__data_ = 0uLL;
      v31 = mlir::OpBuilder::create<mlir::anec::A12,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v30, a2, &__p.__r_.__value_.__l.__data_, a5, v54, v53, v56, v55, v52, &v48);
    }
  }

  v39 = v31;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v39;
    }

LABEL_34:
    operator delete(v51.__r_.__value_.__l.__data_);
    return v39;
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }

  return v39;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A12,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A12,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A13,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A13,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A14,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A14,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A15,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A15,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A16,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A16,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A17,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A17,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A18,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A18,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::A11Legacy,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A11Legacy,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::anec::A11Legacy::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

float mlir::ANECRegionOpCreator::computeHostRegionCost(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0.0;
  }

  v5 = 8 * a3;
  v6 = 0.0;
  do
  {
    v7 = *a2++;
    v8 = mlir::mps::detail::MPSAbstractCostModel::computeCost(a1 + 224, v7, *(a1 + 320));
    v6 = v6 + *&v8;
    v5 -= 8;
  }

  while (v5);
  return v6;
}

float mlir::ANECRegionOpCreator::computeDeviceRegionCost(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  v4 = 0.0;
  v3[0] = this;
  v3[1] = &v4;
  v5 = v3;
  mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_19ANECRegionOpCreator23computeDeviceRegionCostES3_E3__0NS1_24ExecutionCostOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
  return v4;
}

float mlir::ANECRegionOpCreator::computeModuleCost(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "anec", 4);
  v7 = 0.0;
  v6[0] = &LoadedDialect;
  v6[1] = this;
  v6[2] = &v7;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ANECRegionOpCreator::computeModuleCost(mlir::Operation *)::$_0>, v6, 1);
  return v7;
}

void mlir::ANECRegionOpCreator::canonicalizeTranslatedRegion(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v60 = 0u;
  v61 = 0u;
  Context = mlir::Attribute::getContext((a2 + 24));
  v62 = &v64;
  v63 = 0x600000000;
  v66 = 0;
  v65 = 0;
  v67 = 0;
  v69 = 0;
  v68 = 0;
  v70 = 0x2800000000;
  v71 = 0;
  v72 = 0;
  v73 = 0x2800000000;
  mlir::anec::getANECConvCanonicalizationPatterns(&Context);
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v29, &Context, 0, 0, 0, 0);
  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    LOBYTE(__dst) = 0;
    v44 = 0x200000000;
    v45 = xmmword_1E097BBC0;
    v47 = 0;
    v46 = 0uLL;
    mlir::applyPatternsAndFoldGreedily(v5, &v29, &v44, &__dst);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v29);
  v6 = mlir::Attribute::getContext((a2 + 24));
  v45 = 0u;
  v46 = 0u;
  v44 = v6;
  v47 = &v49;
  v48 = 0x600000000;
  v51 = 0;
  v50 = 0;
  v52 = 0;
  v54 = 0;
  v53 = 0;
  v55 = 0x2800000000;
  v56 = 0;
  v57 = 0;
  v58 = 0x2800000000;
  if (*(this + 352) == 1)
  {
    mlir::anec::getANECCanonicalizeQuantPatterns(&v44);
  }

  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&__dst, &v44, 0, 0, 0, 0);
  v7 = *(a2 + 11);
  if ((v7 & 0x7FFFFF) != 0)
  {
    v8 = (((a2 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v23.__r_.__value_.__s.__data_[0] = 0;
    v29 = 0x200000000;
    v30 = xmmword_1E097BBC0;
    v32 = 0;
    v31 = 0uLL;
    mlir::applyPatternsAndFoldGreedily(v8, &__dst, &v29, &v23);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&__dst);
  v9 = mlir::Attribute::getContext((a2 + 24));
  v30 = 0u;
  v31 = 0u;
  v29 = v9;
  v32 = &v34;
  v33 = 0x600000000;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0x2800000000;
  v41 = 0;
  v42 = 0;
  v43 = 0x2800000000;
  mlir::anec::getANECLateCanonicalizationPatterns(&v29);
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v23, &v29, 0, 0, 0, 0);
  v10 = *(a2 + 11);
  if ((v10 & 0x7FFFFF) != 0)
  {
    v11 = (((a2 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v22.__r_.__value_.__s.__data_[0] = 0;
    __dst = 0x200000000;
    __dst_8 = xmmword_1E097BBC0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    mlir::applyPatternsAndFoldGreedily(v11, &v23, &__dst, &v22);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v23);
  if (HIDWORD(v42) && v42)
  {
    v12 = 0;
    do
    {
      v13 = *(v41 + v12);
      if (v13 != -8 && v13 != 0)
      {
        v15 = *v13;
        v16 = *(v13 + 4);
        if (v16 == (v13 + 8))
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        llvm::deallocate_buffer(v13, (v15 + 41));
      }

      v12 += 8;
    }

    while (8 * v42 != v12);
  }

  free(v41);
  if (HIDWORD(v39) && v39)
  {
    v17 = 0;
    do
    {
      v18 = *(v38 + v17);
      if (v18 != -8 && v18 != 0)
      {
        v20 = *v18;
        v21 = *(v18 + 4);
        if (v21 == (v18 + 8))
        {
          (*(*v21 + 32))(v21);
        }

        else if (v21)
        {
          (*(*v21 + 40))(v21);
        }

        llvm::deallocate_buffer(v18, (v20 + 41));
      }

      v17 += 8;
    }

    while (8 * v39 != v17);
  }

  free(v38);
  llvm::deallocate_buffer(v35, (16 * v37));
}

void mlir::ANECRegionOpCreator::~ANECRegionOpCreator(void **this)
{
  *this = &unk_1F5B13EC8;
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  v2 = this[29];
  if (v2 != this + 31)
  {
    free(v2);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100]((this + 26));
  mlir::ConversionTarget::~ConversionTarget((this + 5));
}

{
  *this = &unk_1F5B13EC8;
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  v2 = this[29];
  if (v2 != this + 31)
  {
    free(v2);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100]((this + 26));
  mlir::ConversionTarget::~ConversionTarget((this + 5));
}

void sub_1DFFA392C()
{

  operator delete(v0);
}

uint64_t mlir::ANECRegionOpCreator::getMarkAttrID(mlir::ANECRegionOpCreator *this, uint64_t a2)
{
  v2 = *(this + 78);
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      v3 = *(this + 1);
      if (v2 == 4)
      {
        v4 = "A16_region";
      }

      else
      {
        v4 = "A17_region";
      }

      goto LABEL_18;
    }

    if (v2 == 6)
    {
      v3 = *(this + 1);
      v4 = "A18_region";
      goto LABEL_18;
    }

    if (v2 == 7)
    {
      v3 = *(this + 1);
      v4 = "A11Legacy_region";
      goto LABEL_18;
    }
  }

  else
  {
    if (v2 > 1)
    {
      v3 = *(this + 1);
      if (v2 == 2)
      {
        v4 = "A14_region";
      }

      else
      {
        v4 = "A15_region";
      }

      goto LABEL_18;
    }

    if (!v2)
    {
      v3 = *(this + 1);
      v4 = "A12_region";
      goto LABEL_18;
    }

    if (v2 == 1)
    {
      v3 = *(this + 1);
      v4 = "A13_region";
LABEL_18:
      v6 = v4;
      v7 = 259;
      return mlir::Builder::getStringAttr(v3, &v6);
    }
  }

  return a2;
}

uint64_t mlir::ANECRegionOpCreator::getCanonicalizationPatterns@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 216);
  *a2 = *(this + 208);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t mlir::ANECRegionOpCreator::getRegionTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(*(a1 + 8), a2, v5);
}

uint64_t mlir::ANECRegionOpCreator::getBody(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    return *(a2 + 2);
  }

  return result;
}

void mlir::ANECRegionOpCreator::materializeHostTypeConversion(uint64_t a1, mlir *a2, unint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((mlir::materializeMPSToANECHostTypeConversion(*(a1 + 8), a2, a3, a4, a5, a6) & 1) == 0)
  {
    mlir::emitError(a2, v7, v24);
    if (v24[0])
    {
      v21 = 3;
      v22 = "unable to materialize host type conversion";
      v23 = 42;
      v8 = &v21;
      v9 = v25;
      if (v26 >= v27)
      {
        if (v25 <= &v21 && v25 + 24 * v26 > &v21)
        {
          v20 = &v21 - v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
          v9 = v25;
          v8 = (v25 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
          v8 = &v21;
          v9 = v25;
        }
      }

      v10 = &v9[24 * v26];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v26;
      if (v24[0])
      {
        mlir::InFlightDiagnostic::report(v24);
      }
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v32;
        v14 = __p;
        if (v32 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v32 = v12;
        operator delete(v14);
      }

      v15 = v29;
      if (v29)
      {
        v16 = v30;
        v17 = v29;
        if (v30 != v29)
        {
          do
          {
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              operator delete[](v18);
            }
          }

          while (v16 != v15);
          v17 = v29;
        }

        v30 = v15;
        operator delete(v17);
      }

      if (v25 != v28)
      {
        free(v25);
      }
    }
  }
}

uint64_t mlir::ANECRegionOpCreator::getCallOp(uint64_t a1, uint64_t a2, mlir::SymbolRefAttr *a3, uint64_t a4, uint64_t a5)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v9[1] = a5;
  v8 = a3;
  v5 = *(a1 + 8);
  v7 = 1;
  return mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(v5, a2, &v8, &v7, v9);
}

void *mlir::ANECRegionOpCreator::getConvertedType(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v11[0] = a2;
  v11[1] = v3;
  if (mlir::CallOpInterface::getArgOperands(v11))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v11);
    v6 = v5;
    isSplat = mlir::ElementsAttr::isSplat(v11);
    result = mlir::MemRefType::get(ArgAttrsAttr, v6, isSplat, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v10 = mlir::ElementsAttr::isSplat(v11);
  result = mlir::UnrankedMemRefType::get(v10, 0);
  if (result)
  {
LABEL_6:
    v9 = result;
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
    return v9;
  }

  return result;
}

unint64_t mlir::ANECRegionOpCreator::getClonedAttributes(mlir::ANECRegionOpCreator *this, const mlir::DictionaryAttr *a2)
{
  v12[9] = *MEMORY[0x1E69E9840];
  v11[0] = v12;
  v11[1] = 0x400000000;
  v12[8] = 4;
  Value = mlir::AffineMapAttr::getValue(a2);
  v4 = mlir::DictionaryAttr::end(a2);
  if (Value != v4)
  {
    v5 = v4;
    do
    {
      v10 = *Value;
      NameDialect = mlir::NamedAttribute::getNameDialect(&v10);
      if (NameDialect && *(NameDialect + 24) == &mlir::detail::TypeIDResolver<mlir::silc::SilcDialect,void>::id)
      {
        mlir::NamedAttrList::push_back(v11, v10, *(&v10 + 1));
      }

      ++Value;
    }

    while (Value != v5);
  }

  Context = mlir::Attribute::getContext(a2);
  result = mlir::NamedAttrList::getDictionary(v11, Context);
  if (v11[0] != v12)
  {
    v9 = result;
    free(v11[0]);
    return v9;
  }

  return result;
}

unint64_t mlir::ANECRegionOpCreator::getFinalizedAttributes(mlir::ANECRegionOpCreator *this, const mlir::DictionaryAttr *a2)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[8] = 4;
  Value = mlir::AffineMapAttr::getValue(a2);
  v4 = mlir::DictionaryAttr::end(a2);
  if (Value != v4)
  {
    v5 = v4;
    do
    {
      v14 = *Value;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v14);
      AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      if (v7 == 13 && *AttrData == 0x6168732E636C6973 && *(AttrData + 5) == 0x676E696472616873)
      {
        CallableRegion = *(&v14 + 1);
        v13 = *(&v14 + 1);
        v9 = mlir::Attribute::getContext(&v13) != 0;
        *(&v14 + 1) = mlir::silc::ShardingAttr::inflateRank(&CallableRegion, v9, 1);
      }

      mlir::NamedAttrList::push_back(v16, v14, *(&v14 + 1));
      ++Value;
    }

    while (Value != v5);
  }

  Context = mlir::Attribute::getContext(a2);
  result = mlir::NamedAttrList::getDictionary(v16, Context);
  if (v16[0] != v17)
  {
    v12 = result;
    free(v16[0]);
    return v12;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::copyFrom(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = (v3 + 16);
    v5 = 32 * v2;
    do
    {
      if ((*(v4 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          *v4 = v6;
          operator delete(v6);
        }
      }

      v4 += 4;
      v5 -= 32;
    }

    while (v5);
    v3 = *a1;
    v7 = (32 * *(a1 + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_19ANECRegionOpCreator23computeDeviceRegionCostES3_E3__0NS1_24ExecutionCostOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(float ***a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v6 = *a1;
      v8[0] = a2;
      v8[1] = InterfaceFor;
      result = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v8, *(*v6 + 40));
      *v6[1] = v7 + *v6[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ANECRegionOpCreator::computeModuleCost(mlir::Operation *)::$_0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 48);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12[0] = *(v4 + 8);
    v6 = a2;
    Values = mlir::SparseElementsAttr::getValues(v12);
    a2 = v6;
  }

  else
  {
    Values = *(v4 + 24);
  }

  if (Values == **a1)
  {
    v8 = a2;
    InterfaceFor = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v12[0] = v8;
    v12[1] = InterfaceFor;
    mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v12, *(v3 + 320));
  }

  else
  {
    v7 = mlir::mps::detail::MPSAbstractCostModel::computeCost(v3 + 224, a2, *(v3 + 320));
  }

  v10 = *(a1 + 16);
  result = *&v7 + *v10;
  *v10 = result;
  return result;
}

int32x2_t *mlir::affine::AffineDialect::AffineDialect(int32x2_t *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "affine", 6, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id);
  *v3 = &unk_1F5B13FD8;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v7 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v7);
  }

  v5 = this[4];
  if (!mlir::MLIRContext::isDialectLoading(v5, "ub", 2))
  {
    v7 = v5;
    mlir::MLIRContext::getOrLoadDialect(v5, "ub", 2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ub::UBDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ub::UBDialect>(void)::{lambda(void)#1}>, &v7);
  }

  mlir::affine::AffineDialect::initialize(this);
  return this;
}

uint64_t mlir::affine::AffineDialect::initialize(int32x2_t *this)
{
  mlir::Dialect::addOperations<mlir::affine::AffineDmaStartOp,mlir::affine::AffineDmaWaitOp,mlir::affine::AffineApplyOp,mlir::affine::AffineDelinearizeIndexOp,mlir::affine::AffineForOp,mlir::affine::AffineIfOp,mlir::affine::AffineLoadOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp,mlir::affine::AffineParallelOp,mlir::affine::AffinePrefetchOp,mlir::affine::AffineStoreOp,mlir::affine::AffineVectorLoadOp,mlir::affine::AffineVectorStoreOp,mlir::affine::AffineYieldOp>(this);
  v2 = operator new(0x18uLL);
  {
    v6 = v2;
    mlir::arith::ArithDialect::initialize();
    v2 = v6;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = this;
  v2[2] = v3;
  *v2 = &unk_1F5B14D90;
  v7 = v2;
  mlir::Dialect::addInterface(this, &v7);
  v4 = v7;
  v7 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>(this);
}

void sub_1DFFA4628(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::Dialect::addOperations<mlir::affine::AffineDmaStartOp,mlir::affine::AffineDmaWaitOp,mlir::affine::AffineApplyOp,mlir::affine::AffineDelinearizeIndexOp,mlir::affine::AffineForOp,mlir::affine::AffineIfOp,mlir::affine::AffineLoadOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp,mlir::affine::AffineParallelOp,mlir::affine::AffinePrefetchOp,mlir::affine::AffineStoreOp,mlir::affine::AffineVectorLoadOp,mlir::affine::AffineVectorStoreOp,mlir::affine::AffineYieldOp>(uint64_t a1)
{
  v2 = operator new(0x70uLL);
  v7 = mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v7, 0, 0);
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = operator new(0x70uLL);
  v7 = mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::Model(v4, a1);
  mlir::RegisteredOperationName::insert(&v7, 0, 0);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  mlir::RegisteredOperationName::insert<mlir::affine::AffineApplyOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineDelinearizeIndexOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineForOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineIfOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineLoadOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineMaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineMinOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineParallelOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffinePrefetchOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineStoreOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineVectorLoadOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::affine::AffineVectorStoreOp>(a1);
  return mlir::RegisteredOperationName::insert<mlir::affine::AffineYieldOp>(a1);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::affine::AffineDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

mlir::Block *mlir::affine::isTopLevelValue(uint64_t a1)
{
  v5 = a1;
  if (a1 && (*(a1 + 8) & 7) == 7)
  {
    result = mlir::Block::getParentOp(*(a1 + 16));
    if (result)
    {
      {
        v3 = result;
        mlir::affine::isTopLevelValue();
        result = v3;
      }

      v2 = *(**(result + 6) + 32);

      return v2();
    }
  }

  else
  {
    result = *(mlir::Value::getDefiningOp(&v5) + 16);
    if (result)
    {
      result = mlir::Block::getParentOp(result);
      if (result)
      {
        {
          v4 = result;
          mlir::affine::isTopLevelValue();
          result = v4;
        }

        return (*(**(result + 6) + 32))(*(result + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id);
      }
    }
  }

  return result;
}

unint64_t mlir::affine::getAffineScope(mlir::affine *this, mlir::Operation *a2)
{
  do
  {
    v3 = *(this + 2);
    if (!v3)
    {
      return 0;
    }

    v4 = this;
    ParentOp = mlir::Block::getParentOp(v3);
    if (!ParentOp)
    {
      return 0;
    }

    this = ParentOp;
    {
      mlir::affine::isTopLevelValue();
    }
  }

  while (!(*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id));
  v6 = *(v4 + 2);
  if (!v6)
  {
    return 0;
  }

  return mlir::Block::getParent(v6);
}

uint64_t mlir::affine::isValidSymbol(unint64_t *a1, unint64_t *a2)
{
  v25 = a1;
  v31[0] = (a1[1] & 0xFFFFFFFFFFFFFFF8);
  LODWORD(DefiningOp) = mlir::Type::isIndex(v31);
  if (!DefiningOp)
  {
    return DefiningOp & 1;
  }

  if (a2)
  {
    v31[0] = a1;
    if ((~*(a1 + 2) & 7) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1;
    }

    v27 = v5;
    if (v5)
    {
      ParentRegion = mlir::Value::getParentRegion(&v27);
    }

    else
    {
      ParentRegion = *(mlir::Value::getDefiningOp(v31) + 16);
      if (ParentRegion)
      {
        ParentRegion = mlir::Block::getParent(ParentRegion);
      }
    }

    if (ParentRegion == a2)
    {
      return 1;
    }

    DefiningOp = mlir::Value::getDefiningOp(&v25);
    if (!DefiningOp)
    {
      v16 = a2[2];
      if (!v16)
      {
        return 0;
      }

      {
      }

      if ((*(**(v16 + 48) + 32))(*(v16 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    DefiningOp = mlir::Value::getDefiningOp(&v25);
    if (!DefiningOp)
    {
      return DefiningOp & 1;
    }
  }

  v7 = DefiningOp;
  v24 = 0;
  v31[0] = &v24;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(v31, DefiningOp))
  {
    return 1;
  }

  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    if ((*(v7 + 46) & 0x80) == 0)
    {
      return 1;
    }

    v17 = *(v7 + 68);
    if (!v17)
    {
      return 1;
    }

    v18 = *(v7 + 72);
    v19 = v17 - 1;
    v20 = (v18 + 24);
    do
    {
      v21 = *v20;
      v20 += 4;
      LODWORD(DefiningOp) = mlir::affine::isValidSymbol(v21, a2);
      v23 = v19-- != 0;
    }

    while (DefiningOp && v23);
    return DefiningOp & 1;
  }

  if (!mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v7))
  {
    if (!a2)
    {
      return 0;
    }

    DefiningOp = a2[2];
    if (DefiningOp)
    {
      if (mlir::Operation::hasTrait<mlir::OpTrait::IsIsolatedFromAbove>(DefiningOp))
      {
        return 0;
      }

LABEL_31:
      DefiningOp = *(a2[2] + 16);
      if (DefiningOp)
      {
        DefiningOp = mlir::Block::getParent(DefiningOp);
        if (DefiningOp)
        {
          return mlir::affine::isValidSymbol(v25, DefiningOp) & 1;
        }
      }
    }

    return DefiningOp & 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v7);
  v31[0] = v7;
  v31[1] = InterfaceFor;
  v30 = a2;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v31);
  LOBYTE(DefiningOp) = mlir::affine::isTopLevelValue(CallableForCallee);
  if (DefiningOp)
  {
    return DefiningOp & 1;
  }

  v11 = DefiningOp;
  v12 = mlir::CallOpInterface::getCallableForCallee(v31);
  LOBYTE(DefiningOp) = v11;
  if ((~*(v12 + 8) & 7) == 0)
  {
    return DefiningOp & 1;
  }

  isSplat = mlir::ElementsAttr::isSplat(v31);
  ConstantIntValue = mlir::getConstantIntValue(isSplat);
  LOBYTE(DefiningOp) = v11;
  if ((v15 & 1) == 0)
  {
    return DefiningOp & 1;
  }

  v27 = mlir::CallOpInterface::getCallableForCallee(v31);
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  while (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    if (*(*(*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      return 0;
    }

    v27 = *(*(DefiningOp + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v27);
    if (!DefiningOp)
    {
      return DefiningOp & 1;
    }
  }

  v29 = ConstantIntValue;
  v28 = 0;
  v26[0] = &v29;
  v26[1] = &v30;
  v27 = DefiningOp;
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  return HIBYTE(v28) & v28 & 1;
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

uint64_t mlir::affine::parseDimAndSymbolList(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v18[32] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x800000000;
  if (((*(*a1 + 720))(a1, &v16, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    v13 = 0;
    v14 = v16;
    if (v16 == v18)
    {
      return v13;
    }

    goto LABEL_12;
  }

  *a3 = v17;
  v6 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v6, v7);
  if ((*(*a1 + 720))(a1, &v16, 6, 1, 0xFFFFFFFFLL))
  {
    if (!v17)
    {
      v13 = 1;
      v14 = v16;
      if (v16 == v18)
      {
        return v13;
      }

      goto LABEL_12;
    }

    v9 = v16;
    v10 = 32 * v17 - 32;
    do
    {
      v11 = (*(*a1 + 728))(a1, v9, IndexType, a2);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v9 += 32;
      v12 = v10;
      v10 -= 32;
    }

    while (v12);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 & 1;
  v14 = v16;
  if (v16 != v18)
  {
LABEL_12:
    free(v14);
  }

  return v13;
}

BOOL mlir::affine::AffineApplyOp::parse(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v31 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v31, 0, "map", 3, a2 + 112))
  {
    return 0;
  }

  v30 = 0;
  if ((mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v30) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (NumDims == v30 && *(a2 + 24) == mlir::AffineMap::getNumSymbols(&Value) + NumDims)
  {
    v8 = mlir::arith::FastMathFlagsAttr::getValue(&Value);
    v9 = *(a2 + 72);
    if (v9 + v8 > *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + v8, 8);
      v9 = *(a2 + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else if (v8)
    {
LABEL_8:
      v10 = *(a2 + 64) + 8 * v9;
      v11 = v10;
      v12 = v8;
      if (v8 < 4)
      {
        goto LABEL_40;
      }

      v11 = (v10 + 8 * (v8 & 0xFFFFFFFC));
      v12 = v8 & 3;
      v13 = vdupq_n_s64(IndexType);
      v14 = (v10 + 16);
      v15 = v8 & 0xFFFFFFFC;
      do
      {
        v14[-1] = v13;
        *v14 = v13;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if ((v8 & 0xFFFFFFFC) != v8)
      {
LABEL_40:
        do
        {
          *v11++ = IndexType;
          --v12;
        }

        while (v12);
      }
    }

    *(a2 + 72) = v9 + v8;
    return 1;
  }

  v17 = (*(*a1 + 16))(a1);
  v27 = "dimension or symbol index mismatch";
  v28 = 259;
  (*(*a1 + 24))(v32, a1, v17, &v27);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  v18 = result;
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
    result = v18;
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
      result = v18;
    }

    v19 = __p;
    if (__p)
    {
      v20 = v38;
      v21 = __p;
      if (v38 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v38 = v19;
      operator delete(v21);
      result = v18;
    }

    v22 = v35;
    if (v35)
    {
      v23 = v36;
      v24 = v35;
      if (v36 != v35)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v23 != v22);
        v24 = v35;
      }

      v36 = v22;
      operator delete(v24);
      result = v18;
    }

    if (v33 != &v34)
    {
      free(v33);
      return v18;
    }
  }

  return result;
}

llvm::raw_ostream *printDimAndSymbolList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a4 - a2;
  v11 = (*(*a6 + 16))(a6);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 40);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 40;
  }

  v35 = a1;
  v13 = a1 + 32 * a2;
  v14 = a5;
  if (v10 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  v16 = (*(*a6 + 16))(a6);
  if (v15)
  {
    v17 = v16;
    (*(*a6 + 160))(a6, *(v13 + 24));
    v18 = v15 - 1;
    if (v15 != 1)
    {
      v24 = (v13 + 56);
      do
      {
        v26 = v17[4];
        if (v17[3] - v26 <= 1uLL)
        {
          llvm::raw_ostream::write(v17, ", ", 2uLL);
        }

        else
        {
          *v26 = 8236;
          v17[4] += 2;
        }

        v25 = *v24;
        v24 += 4;
        (*(*a6 + 160))(a6, v25);
        --v18;
      }

      while (v18);
    }
  }

  result = (*(*a6 + 16))(a6);
  v20 = *(result + 4);
  if (v20 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    v21 = v10 - v14;
    if (v10 <= v14)
    {
      return result;
    }
  }

  else
  {
    *(result + 4) = v20 + 1;
    *v20 = 41;
    v21 = v10 - v14;
    if (v10 <= v14)
    {
      return result;
    }
  }

  v22 = (*(*a6 + 16))(a6);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 91);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 91;
  }

  v27 = (*(*a6 + 16))(a6);
  (*(*a6 + 160))(a6, *(v13 + 32 * v14 + 24));
  if (v21 != 1)
  {
    v29 = a2 + v14 - a4 + 1;
    v30 = (32 * a2 + 32 * v14 + v35 + 56);
    do
    {
      v33 = v27[4];
      if (v27[3] - v33 > 1uLL)
      {
        *v33 = 8236;
        v27[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v27, ", ", 2uLL);
      }

      v31 = *v30;
      v30 += 4;
      (*(*a6 + 160))(a6, v31);
    }

    while (!__CFADD__(v29++, 1));
  }

  result = (*(*a6 + 16))(a6);
  v28 = *(result + 4);
  if (v28 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 93);
  }

  else
  {
    *(result + 4) = v28 + 1;
    *v28 = 93;
  }

  return result;
}

unint64_t mlir::affine::AffineApplyOp::fold(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15[0] = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v15);
  v4 = mlir::AffineMap::getResult(&Value, 0);
  v15[0] = v4;
  if (mlir::arith::FastMathFlagsAttr::getValue(v15) == 6)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v15, v4);
    v13 = v15[0];
    if (v15[0])
    {
LABEL_3:
      v5 = *(*a1 + 72) + 32 * mlir::AffineDimExpr::getPosition(&v13);
      return *(v5 + 24) | 4;
    }
  }

  else
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v15, 0);
    v13 = v15[0];
    if (v15[0])
    {
      goto LABEL_3;
    }
  }

  v15[0] = v4;
  if (mlir::arith::FastMathFlagsAttr::getValue(v15) == 7)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v15, v4);
    v13 = v15[0];
    if (v15[0])
    {
LABEL_7:
      NumDims = mlir::AffineMap::getNumDims(&Value);
      v5 = *(*a1 + 72) + 32 * (mlir::AffineDimExpr::getPosition(&v13) + NumDims);
      return *(v5 + 24) | 4;
    }
  }

  else
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v15, 0);
    v13 = v15[0];
    if (v15[0])
    {
      goto LABEL_7;
    }
  }

  v15[0] = v16;
  v15[1] = 0x100000000;
  LOBYTE(v13) = 0;
  v8 = mlir::AffineMap::constantFold(&Value, *(a2 + 48), *(a2 + 56), v15, &v13);
  if (v13 == 1)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    result = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id) & 0xFFFFFFFFFFFFFFFBLL;
    v11 = v15[0];
  }

  else
  {
    v11 = v15[0];
    if (v8)
    {
      result = *v15[0] & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      result = 0;
    }
  }

  if (v11 != v16)
  {
    v12 = result;
    free(v11);
    return v12;
  }

  return result;
}

void composeAffineMapAndOperands(mlir::AffineBinaryOpExpr *a1, uint64_t a2)
{
  v106[6] = *MEMORY[0x1E69E9840];
  if (!mlir::arith::FastMathFlagsAttr::getValue(a1))
  {
    mlir::affine::canonicalizeMapAndOperands(a1, a2);
    *a1 = mlir::simplifyAffineMap(*a1);
    return;
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  v5 = *a2;
  NumDims = mlir::AffineMap::getNumDims(a1);
  v97 = v99;
  *v98 = 0x400000000;
  if (NumDims >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, NumDims, 8);
    v7 = v98[0];
LABEL_7:
    memcpy(v97 + 8 * v7, v5, 8 * NumDims);
    v8 = v98[0];
    goto LABEL_8;
  }

  if (NumDims)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:
  v98[0] = v8 + NumDims;
  v9 = *a2;
  v10 = &v9[8 * mlir::AffineMap::getNumDims(a1)];
  v11 = (a2 + 8);
  v12 = *a2 + 8 * *(a2 + 8);
  v94 = v96;
  *v95 = 0x400000000;
  v13 = (v12 - v10) >> 3;
  if (v13 < 5)
  {
    v14 = 0;
    if (v10 == v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v13, 8);
  v14 = v95[0];
  if (v10 != v12)
  {
LABEL_12:
    memcpy(v94 + 8 * v14, v10, v12 - v10);
    v14 = v95[0];
  }

LABEL_13:
  v15 = v14 + ((v12 - v10) >> 3);
  v95[0] = v15;
  v16 = v98[0];
  if (v15 | v98[0])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      while (1)
      {
        v19 = mlir::AffineBinaryOpExpr::getLHS(a1);
        v20 = v98[0];
        v21 = (v18 - v98[0]);
        v22 = (v18 >= v98[0] ? v94 + 8 * v21 : v97 + 8 * v17);
        if (*v22)
        {
          v23 = v19;
          DefiningOp = mlir::Value::getDefiningOp(v22);
          if (DefiningOp)
          {
            if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
            {
              break;
            }
          }
        }

        v17 = (v18 + 1);
        v16 = v98[0];
        v15 = v95[0];
        v18 = v17;
        if ((v95[0] + v98[0]) == v17)
        {
          goto LABEL_70;
        }
      }

      *v22 = 0;
      v104 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      v25 = DefiningOp;
      Value = mlir::AffineMapAttr::getValue(&v104);
      if ((*(v25 + 46) & 0x80) != 0)
      {
        v26 = v25;
        v27 = *(v25 + 72);
        v28 = *(v26 + 68);
        v104 = v106;
        v105 = 0x600000000;
        if (v28 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v28, 8);
          v29 = &v104[8 * v105];
          if (v29 >= v27 + 32 * v28 || v27 + 24 >= &v104[8 * v105 + 8 * v28])
          {
            v31 = v28 & 3;
            if ((v28 & 3) == 0)
            {
              v31 = 4;
            }

            v32 = v28 - v31;
            v33 = &v29[8 * v32];
            v34 = (v27 + 88);
            v35 = (v29 + 16);
            v36 = v32;
            do
            {
              v37 = v34 - 8;
              v38 = vld4q_f64(v37);
              v39 = vld4q_f64(v34);
              *(v35 - 1) = v38;
              *v35 = v39;
              v34 += 16;
              v35 += 2;
              v36 -= 4;
            }

            while (v36);
            v29 = v33;
          }

          else
          {
LABEL_37:
            v32 = 0;
          }

          v40 = v28 - v32;
          v41 = (v27 + 32 * v32 + 24);
          do
          {
            v42 = *v41;
            v41 += 4;
            *v29 = v42;
            v29 += 8;
            --v40;
          }

          while (v40);
          v43 = v105;
          goto LABEL_41;
        }

        if (v28)
        {
          v29 = v106;
          goto LABEL_37;
        }

        v43 = 0;
      }

      else
      {
        LODWORD(v28) = 0;
        v43 = 0;
        v104 = v106;
        HIDWORD(v105) = 6;
      }

LABEL_41:
      LODWORD(v105) = v43 + v28;
      mlir::affine::canonicalizeMapAndOperands(&Value, &v104);
      v102 = mlir::AffineMap::shiftDims(&Value, v98[0], 0);
      v91 = mlir::AffineMap::shiftSymbols(&v102, v95[0], 0);
      Result = mlir::AffineMap::getResult(&v91, 0);
      v44 = v104;
      v45 = v105;
      v46 = mlir::AffineMap::getNumDims(&Value);
      if (v45 >= v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = v45;
      }

      mlir::ValueRange::ValueRange(&v102, v44, v47);
      v48 = v104;
      v49 = v105;
      NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
      v51 = v49 - NumSymbols;
      if (v49 <= NumSymbols)
      {
        v51 = 0;
      }

      if (v49 >= NumSymbols)
      {
        v52 = NumSymbols;
      }

      else
      {
        v52 = v49;
      }

      mlir::ValueRange::ValueRange(&v100, v48 + 8 * v51, v52);
      if (v18 < v20)
      {
        AffineDimExpr = mlir::getAffineDimExpr(v18, v23, v53);
        v56 = v102;
        v55 = v103;
        v57 = v98[0];
        v58 = v103 + v98[0];
        if (v58 <= v98[1])
        {
          goto LABEL_54;
        }

LABEL_53:
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, v58, 8);
        v57 = v98[0];
        goto LABEL_54;
      }

      AffineDimExpr = mlir::getAffineSymbolExpr(v21, v23, v53);
      v56 = v102;
      v55 = v103;
      v57 = v98[0];
      v58 = v103 + v98[0];
      if (v58 > v98[1])
      {
        goto LABEL_53;
      }

LABEL_54:
      v91 = v56;
      v92 = 0;
      if (v55)
      {
        v59 = 0;
        v60 = (v97 + 8 * v57);
        do
        {
          *v60++ = mlir::ValueRange::dereference_iterator(&v91, v59);
          v59 = v92 + 1;
          v92 = v59;
        }

        while (v59 != v55);
        LODWORD(v57) = v98[0];
      }

      v98[0] = v57 + v55;
      v62 = v100;
      v61 = v101;
      v63 = v95[0];
      v64 = v101 + v95[0];
      if (v64 > v95[1])
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v64, 8);
        v63 = v95[0];
      }

      v91 = v62;
      v92 = 0;
      if (v61)
      {
        v65 = 0;
        v66 = (v94 + 8 * v63);
        do
        {
          *v66++ = mlir::ValueRange::dereference_iterator(&v91, v65);
          v65 = v92 + 1;
          v92 = v65;
        }

        while (v65 != v61);
        LODWORD(v63) = v95[0];
      }

      v95[0] = v63 + v61;
      *a1 = mlir::AffineMap::replace(a1, AffineDimExpr, Result, v98[0], v63 + v61);
      if (v104 != v106)
      {
        free(v104);
      }

      v17 = 0;
      v18 = 0;
      v16 = v98[0];
      v15 = v95[0];
    }

    while (v95[0] | v98[0]);
  }

LABEL_70:
  *v11 = 0;
  v104 = v106;
  v105 = 0x400000000;
  v91 = v93;
  v92 = 0x400000000;
  if (v16 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v16, 8);
    v15 = v95[0];
    if (HIDWORD(v92) >= v95[0])
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v15 > 4)
  {
LABEL_74:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v15, 8);
  }

LABEL_75:
  if (v98[0])
  {
    v67 = 0;
    v68 = v97;
    v69 = 8 * v98[0];
    do
    {
      while (1)
      {
        v70 = *v68;
        if (!*v68)
        {
          break;
        }

        v71 = mlir::getAffineDimExpr(v67, LHS, v13);
        v72 = v105;
        if (v105 >= HIDWORD(v105))
        {
          v76 = v71;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 8);
          v71 = v76;
          v72 = v105;
        }

        *&v104[8 * v72] = v71;
        LODWORD(v105) = v105 + 1;
        v73 = *(a2 + 8);
        if (v73 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v73 + 1, 8);
          v73 = *(a2 + 8);
        }

        v67 = (v67 + 1);
        *(*a2 + 8 * v73) = v70;
        ++*v11;
        ++v68;
        v69 -= 8;
        if (!v69)
        {
          goto LABEL_88;
        }
      }

      AffineConstantExpr = mlir::getAffineConstantExpr(0, LHS, v13);
      v75 = v105;
      if (v105 >= HIDWORD(v105))
      {
        v77 = AffineConstantExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 8);
        AffineConstantExpr = v77;
        v75 = v105;
      }

      *&v104[8 * v75] = AffineConstantExpr;
      LODWORD(v105) = v105 + 1;
      ++v68;
      v69 -= 8;
    }

    while (v69);
  }

  else
  {
    LODWORD(v67) = 0;
  }

LABEL_88:
  if (v95[0])
  {
    v78 = 0;
    v79 = v94;
    v80 = 8 * v95[0];
    do
    {
      while (1)
      {
        v81 = *v79;
        if (!*v79)
        {
          break;
        }

        AffineSymbolExpr = mlir::getAffineSymbolExpr(v78, LHS, v13);
        v83 = v92;
        if (v92 >= HIDWORD(v92))
        {
          v88 = AffineSymbolExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 8);
          AffineSymbolExpr = v88;
          v83 = v92;
        }

        *(v91 + v83) = AffineSymbolExpr;
        LODWORD(v92) = v92 + 1;
        v84 = *(a2 + 8);
        if (v84 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v84 + 1, 8);
          v84 = *(a2 + 8);
        }

        v78 = (v78 + 1);
        *(*a2 + 8 * v84) = v81;
        ++*v11;
        ++v79;
        v80 -= 8;
        if (!v80)
        {
          goto LABEL_102;
        }
      }

      v85 = mlir::getAffineConstantExpr(0, LHS, v13);
      v86 = v92;
      if (v92 >= HIDWORD(v92))
      {
        v87 = v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 8);
        v85 = v87;
        v86 = v92;
      }

      *(v91 + v86) = v85;
      LODWORD(v92) = v92 + 1;
      ++v79;
      v80 -= 8;
    }

    while (v80);
  }

  else
  {
    LODWORD(v78) = 0;
  }

LABEL_102:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v104, v105, v91, v92, v67, v78);
  mlir::affine::canonicalizeMapAndOperands(a1, a2);
  *a1 = mlir::simplifyAffineMap(*a1);
  if (v91 != v93)
  {
    free(v91);
  }

  if (v104 != v106)
  {
    free(v104);
  }

  if (v94 != v96)
  {
    free(v94);
  }

  if (v97 != v99)
  {
    free(v97);
  }
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v21[0] = *a1;
  v21[1] = 0;
  v22 = *(a1 + 16);
  v26 = v28;
  v27 = 0x600000000;
  v23 = mlir::foldAttributesIntoMap(v21, a3, a4, a5, &v26);
  composeAffineMapAndOperands(&v23, &v26);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v21, a2, &v23, &v26);
  if (v26 != v28)
  {
    free(v26);
  }

  if ((*(v7 + 46) & 0x80) == 0)
  {
    v11 = 0;
    v26 = v28;
    v27 = 0x600000000;
    goto LABEL_16;
  }

  v8 = *(v7 + 68);
  v26 = v28;
  v27 = 0x600000000;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_16;
  }

  if (v8 < 7)
  {
    v9 = 0;
    v10 = v8;
    goto LABEL_10;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v8, 8);
  v9 = v27;
  v10 = v8 - v27;
  if (v8 != v27)
  {
LABEL_10:
    bzero(v26 + 8 * v9, 8 * v10);
  }

  v12 = 0;
  LODWORD(v27) = v8;
  v13 = 24;
  do
  {
    v14 = *(*(v7 + 72) + v13);
    v20 = (v26 + v12);
    v23 = v14;
    DefiningOp = mlir::Value::getDefiningOp(&v23);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::Attribute>::match(&v20, DefiningOp);
    }

    v13 += 32;
    v12 += 8;
    --v8;
  }

  while (v8);
  v11 = v27;
LABEL_16:
  v23 = v25;
  v24 = 0x600000000;
  if ((mlir::Operation::fold(v7, v26, v11, &v23) & 1) != 0 && v24)
  {
    mlir::Operation::erase(v7);
    v16 = v23;
    v17 = *v23;
    if (v23 == v25)
    {
      goto LABEL_24;
    }

LABEL_23:
    free(v16);
    goto LABEL_24;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    (*(*v18 + 16))(v18, v7, 0, 0);
  }

  v17 = (v7 - 16) | 4;
  v16 = v23;
  if (v23 != v25)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v26 != v28)
  {
    free(v26);
  }

  return v17;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(void **a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v11[0] = &v12;
  v11[1] = 1;
  v12 = a3;
  mlir::AffineMap::inferFromExprList(v11, 1uLL, *a1, &v13);
  result = mlir::affine::makeComposedFoldedAffineApply(a1, a2, *v13, a4, a5);
  if (v13 != v14)
  {
    v10 = result;
    free(v13);
    return v10;
  }

  return result;
}

void mlir::affine::canonicalizeMapAndOperands(mlir::AffineBinaryOpExpr *a1, uint64_t a2)
{
  v162[8] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a2 + 8))
  {
    return;
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  v150 = &v152;
  v151 = 0x800000000;
  v4 = *(a2 + 8);
  if (v4 <= 8)
  {
    __src = &v139;
    v138 = 0x800000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v4, 8);
    v5 = *(a2 + 8);
    __src = &v139;
    v138 = 0x800000000;
    if (v5 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v139, v5, 8);
    }
  }

  NumSymbols = mlir::AffineMap::getNumSymbols(a1);
  NumDims = mlir::AffineMap::getNumDims(a1);
  v160 = v162;
  v161 = 0x800000000;
  if (NumDims)
  {
    v7 = NumDims;
    v8 = NumDims;
    if (NumDims < 9)
    {
      v9 = 0;
      v10 = NumDims;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, NumDims, 8);
      v9 = v161;
      v10 = v8 - v161;
      if (v8 == v161)
      {
        goto LABEL_13;
      }
    }

    bzero(&v160[v9], 8 * v10);
LABEL_13:
    LODWORD(v161) = v7;
  }

  NumInputs = mlir::AffineMap::getNumInputs(a1);
  if (NumInputs)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = NumInputs;
    do
    {
      v21 = mlir::AffineMap::getNumDims(a1);
      v18 = *(*a2 + 8 * v12);
      if (v12 >= v21)
      {
        v19 = v151;
        p_src = &v150;
        if (v151 >= HIDWORD(v151))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v151 + 1, 8);
          v19 = v151;
        }

        v16 = v14;
      }

      else
      {
        v147 = *(*a2 + 8 * v12);
        if (v18 && (v134 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8), mlir::Type::isIndex(&v134)) && (mlir::affine::isTopLevelValue(v18) || (DefiningOp = mlir::Value::getDefiningOp(&v147)) != 0 && (v25 = v147, AffineScope = mlir::affine::getAffineScope(DefiningOp, v24), mlir::affine::isValidSymbol(v25, AffineScope))))
        {
          v16 = (v14 + 1);
          AffineSymbolExpr = mlir::getAffineSymbolExpr((v14 + NumSymbols), LHS, v22);
          v160[v12] = AffineSymbolExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v138;
          p_src = &__src;
          if (v138 >= HIDWORD(v138))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v139, v138 + 1, 8);
            v19 = v138;
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineDimExpr(v13, LHS, v22);
          v160[v12] = AffineDimExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v151;
          p_src = &v150;
          if (v151 >= HIDWORD(v151))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v151 + 1, 8);
            v19 = v151;
          }

          v16 = v14;
          v13 = (v13 + 1);
        }
      }

      *(*p_src + v19) = v18;
      ++*(p_src + 2);
      ++v12;
      v14 = v16;
    }

    while (v15 != v12);
  }

  else
  {
    LODWORD(v16) = 0;
    LODWORD(v13) = 0;
  }

  v28 = __src;
  v29 = v138;
  v30 = v151;
  v31 = v151 + v138;
  if (v31 > HIDWORD(v151))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v31, 8);
    v30 = v151;
  }

  if (v29)
  {
    memcpy(v150 + 8 * v30, v28, 8 * v29);
    v30 = v151;
  }

  v32 = v30 + v29;
  LODWORD(v151) = v32;
  if (&v150 != a2)
  {
    v33 = *(a2 + 8);
    if (v33 >= v32)
    {
      if (v32)
      {
        memmove(*a2, v150, 8 * v32);
      }

      goto LABEL_46;
    }

    if (*(a2 + 12) >= v32)
    {
      if (v33)
      {
        memmove(*a2, v150, 8 * v33);
        v34 = v151 - v33;
        if (v151 == v33)
        {
LABEL_46:
          *(a2 + 8) = v32;
          goto LABEL_47;
        }
      }

      else
      {
        v33 = 0;
        v34 = v151;
        if (!v151)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v32, 8);
      v33 = 0;
      v34 = v151;
      if (!v151)
      {
        goto LABEL_46;
      }
    }

    memcpy((*a2 + 8 * v33), v150 + 8 * v33, 8 * v34);
    goto LABEL_46;
  }

LABEL_47:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v160, v161, 0, 0, v13, v16 + NumSymbols);
  if (v160 != v162)
  {
    free(v160);
  }

  if (__src != &v139)
  {
    free(__src);
  }

  if (v150 != &v152)
  {
    free(v150);
  }

  v35 = mlir::AffineMap::getNumDims(a1);
  v36 = v35;
  v133 = 1;
  if (v35 <= 0x39)
  {
    v37 = ((v35 << 58) | 1);
    goto LABEL_61;
  }

  v38 = operator new(0x48uLL);
  v37 = v38;
  v39 = v36 + 63;
  v40 = (v36 + 63) >> 6;
  *v38 = v38 + 16;
  *(v38 + 3) = 6;
  if ((v36 + 63) >= 0x1C0)
  {
    *(v38 + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v38, (v38 + 16), v39 >> 6, 8);
    v41 = *v37;
    v42 = 8 * v40;
LABEL_59:
    bzero(v41, v42);
    goto LABEL_60;
  }

  if (v39 >= 0x40)
  {
    v41 = v38 + 16;
    v42 = 8 * v40;
    goto LABEL_59;
  }

LABEL_60:
  v37[2] = v40;
  v37[16] = v36;
LABEL_61:
  v133 = v37;
  v43 = mlir::AffineMap::getNumSymbols(a1);
  v44 = v43;
  v132 = 1;
  if (v43 <= 0x39)
  {
    v45 = ((v43 << 58) | 1);
    goto LABEL_69;
  }

  v46 = operator new(0x48uLL);
  v45 = v46;
  v47 = v44 + 63;
  v48 = (v44 + 63) >> 6;
  *v46 = v46 + 16;
  *(v46 + 3) = 6;
  if ((v44 + 63) >= 0x1C0)
  {
    *(v46 + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v46, (v46 + 16), v47 >> 6, 8);
    v49 = *v45;
    v50 = 8 * v48;
LABEL_67:
    bzero(v49, v50);
    goto LABEL_68;
  }

  if (v47 >= 0x40)
  {
    v49 = v46 + 16;
    v50 = 8 * v48;
    goto LABEL_67;
  }

LABEL_68:
  v45[2] = v48;
  v45[16] = v44;
LABEL_69:
  v132 = v45;
  v150 = &v133;
  v151 = &v132;
  mlir::AffineMap::walkExprs(a1, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &v150);
  v126 = mlir::AffineBinaryOpExpr::getLHS(a1);
  v160 = v162;
  v161 = 0x800000000;
  v51 = *(a2 + 8);
  if (v51 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v51, 8);
  }

  v150 = 1;
  v151 = -4096;
  v153 = -4096;
  v154 = -4096;
  v155 = -4096;
  v156 = -4096;
  v157 = -4096;
  v158 = -4096;
  v159 = -4096;
  v52 = mlir::AffineMap::getNumDims(a1);
  v147 = v149;
  v148 = 0x800000000;
  if (v52)
  {
    v53 = v52;
    v54 = v52;
    if (v52 < 9)
    {
      v55 = 0;
      v56 = v52;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v52, 8);
      v55 = v148;
      v56 = v54 - v148;
      if (v54 == v148)
      {
        goto LABEL_77;
      }
    }

    bzero(v147 + 8 * v55, 8 * v56);
LABEL_77:
    LODWORD(v148) = v53;
  }

  v57 = mlir::AffineMap::getNumDims(a1);
  if (v57)
  {
    v59 = 0;
    v60 = 0;
    v61 = v57;
    while (1)
    {
      if (v133)
      {
        if (((1 << v59) & (v133 >> 1) & ~(-1 << (v133 >> 58))) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((*(*v133 + 8 * (v59 >> 6)) & (1 << v59)) == 0)
      {
        goto LABEL_81;
      }

      if (v150)
      {
        v63 = 8;
        v62 = &v151;
      }

      else
      {
        v62 = v151;
        v63 = v152;
        if (!v152)
        {
          v64 = 0;
          v65 = 0;
          goto LABEL_89;
        }
      }

      v69 = *(*a2 + 8 * v59);
      v70 = 0x9DDFEA08EB382D69 * ((8 * v69 - 0xAE502812AA7333) ^ HIDWORD(v69));
      v71 = 0x9DDFEA08EB382D69 * (HIDWORD(v69) ^ (v70 >> 47) ^ v70);
      LODWORD(v70) = -348639895 * ((v71 >> 47) ^ v71);
      v72 = v63 - 1;
      v73 = v70 & (v63 - 1);
      v74 = v62[2 * v73];
      if (v69 == v74)
      {
LABEL_96:
        v66 = &v62[2 * v73];
        if (v150)
        {
          v75 = &v160;
        }

        else
        {
          v75 = (v151 + 16 * v152);
        }

        if (v66 == v75)
        {
          goto LABEL_100;
        }

        goto LABEL_80;
      }

      v80 = 1;
      while (v74 != -4096)
      {
        v81 = v73 + v80++;
        v73 = v81 & v72;
        v74 = v62[2 * v73];
        if (v69 == v74)
        {
          goto LABEL_96;
        }
      }

      v62 = v151;
      v64 = v152;
      if (v150)
      {
LABEL_100:
        v76 = mlir::getAffineDimExpr(v60, v126, v58);
        *(v147 + v59) = v76;
        v77 = *(*a2 + 8 * v59);
        v78 = v161;
        if (v161 >= HIDWORD(v161))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v161 + 1, 8);
          v78 = v161;
        }

        v160[v78] = v77;
        v60 = (v60 + 1);
        LODWORD(v161) = v161 + 1;
        v79 = *(v147 + v59);
        v134 = *(*a2 + 8 * v59);
        v135 = v79;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v150, &v134, &v135, &__src);
        goto LABEL_81;
      }

      v65 = v152;
LABEL_89:
      v66 = &v62[2 * v65];
      v67 = &v62[2 * v64];
      if (v150)
      {
        v68 = &v160;
      }

      else
      {
        v68 = v67;
      }

      if (v66 == v68)
      {
        goto LABEL_100;
      }

LABEL_80:
      *(v147 + v59) = v66[1];
LABEL_81:
      if (++v59 == v61)
      {
        goto LABEL_111;
      }
    }
  }

  LODWORD(v60) = 0;
LABEL_111:
  __src = 1;
  v138 = -4096;
  v140 = -4096;
  v141 = -4096;
  v142 = -4096;
  v143 = -4096;
  v144 = -4096;
  v145 = -4096;
  v146 = -4096;
  v82 = mlir::AffineMap::getNumSymbols(a1);
  v134 = v136;
  v135 = 0x800000000;
  if (v82)
  {
    v83 = v82;
    v84 = v82;
    if (v82 < 9)
    {
      v85 = 0;
      v86 = v82;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v136, v82, 8);
      v85 = v135;
      v86 = v84 - v135;
      if (v84 == v135)
      {
        goto LABEL_117;
      }
    }

    bzero(v134 + 8 * v85, 8 * v86);
LABEL_117:
    LODWORD(v135) = v83;
  }

  v87 = mlir::AffineMap::getNumSymbols(a1);
  if (v87)
  {
    v88 = 0;
    v89 = 0;
    v90 = v87;
    while (1)
    {
      if (v132)
      {
        if (((1 << v88) & (v132 >> 1) & ~(-1 << (v132 >> 58))) == 0)
        {
          goto LABEL_121;
        }
      }

      else if ((*(*v132 + 8 * (v88 >> 6)) & (1 << v88)) == 0)
      {
        goto LABEL_121;
      }

      v131 = 0;
      v91 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v88));
      v129 = &v131;
      __p = v91;
      v92 = mlir::Value::getDefiningOp(&__p);
      if (v92 && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v129, v92))
      {
        mlir::IntegerAttr::getValue(&v131, &__p);
        if (v128 > 0x40)
        {
          v94 = *__p;
        }

        else if (v128)
        {
          v94 = (__p << -v128) >> -v128;
        }

        else
        {
          v94 = 0;
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(v94, v126, v93);
        *(v134 + v88) = AffineConstantExpr;
        if (v128 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        goto LABEL_121;
      }

      v96 = mlir::AffineMap::getNumDims(a1) + v88;
      if (__src)
      {
        v98 = 8;
        v97 = &v138;
      }

      else
      {
        v97 = v138;
        v98 = v139;
        if (!v139)
        {
          v99 = 0;
          v100 = 0;
          goto LABEL_135;
        }
      }

      v104 = *(*a2 + 8 * v96);
      v105 = 0x9DDFEA08EB382D69 * ((8 * v104 - 0xAE502812AA7333) ^ HIDWORD(v104));
      v106 = 0x9DDFEA08EB382D69 * (HIDWORD(v104) ^ (v105 >> 47) ^ v105);
      LODWORD(v105) = -348639895 * ((v106 >> 47) ^ v106);
      v107 = v98 - 1;
      v108 = v105 & (v98 - 1);
      v109 = v97[2 * v108];
      if (v104 == v109)
      {
LABEL_142:
        v101 = &v97[2 * v108];
        if (__src)
        {
          v110 = &v147;
        }

        else
        {
          v110 = (v138 + 16 * v139);
        }

        if (v101 == v110)
        {
          goto LABEL_146;
        }

        goto LABEL_120;
      }

      v117 = 1;
      while (v109 != -4096)
      {
        v118 = v108 + v117++;
        v108 = v118 & v107;
        v109 = v97[2 * v108];
        if (v104 == v109)
        {
          goto LABEL_142;
        }
      }

      v97 = v138;
      v99 = v139;
      if (__src)
      {
LABEL_146:
        v111 = mlir::getAffineSymbolExpr(v89, v126, v95);
        *(v134 + v88) = v111;
        v112 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v88));
        v113 = v161;
        if (v161 >= HIDWORD(v161))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v161 + 1, 8);
          v113 = v161;
        }

        v89 = (v89 + 1);
        v160[v113] = v112;
        LODWORD(v161) = v161 + 1;
        v114 = mlir::AffineMap::getNumDims(a1);
        v115 = *(v134 + v88);
        v129 = *(*a2 + 8 * (v114 + v88));
        v130 = v115;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v129, &v130, &__p);
        goto LABEL_121;
      }

      v100 = v139;
LABEL_135:
      v101 = &v97[2 * v100];
      v102 = &v97[2 * v99];
      if (__src)
      {
        v103 = &v147;
      }

      else
      {
        v103 = v102;
      }

      if (v101 == v103)
      {
        goto LABEL_146;
      }

LABEL_120:
      *(v134 + v88) = v101[1];
LABEL_121:
      if (++v88 == v90)
      {
        goto LABEL_161;
      }
    }
  }

  LODWORD(v89) = 0;
LABEL_161:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v147, v148, v134, v135, v60, v89);
  if (&v160 == a2)
  {
    goto LABEL_172;
  }

  v119 = v161;
  v120 = *(a2 + 8);
  if (v120 >= v161)
  {
    if (v161)
    {
      memmove(*a2, v160, 8 * v161);
    }

    goto LABEL_171;
  }

  if (*(a2 + 12) < v161)
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v119, 8);
    v120 = 0;
    v121 = v161;
    if (!v161)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

  if (!v120)
  {
    v120 = 0;
    v121 = v161;
    if (!v161)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

  memmove(*a2, v160, 8 * v120);
  v121 = v161 - v120;
  if (v121)
  {
LABEL_170:
    memcpy((*a2 + 8 * v120), &v160[v120], 8 * v121);
  }

LABEL_171:
  *(a2 + 8) = v119;
LABEL_172:
  if (v134 != v136)
  {
    free(v134);
  }

  if ((__src & 1) == 0)
  {
    llvm::deallocate_buffer(v138, (16 * v139));
  }

  if (v147 != v149)
  {
    free(v147);
  }

  if ((v150 & 1) == 0)
  {
    llvm::deallocate_buffer(v151, (16 * v152));
  }

  if (v160 != v162)
  {
    free(v160);
  }

  v122 = v132;
  if ((v132 & 1) == 0 && v132)
  {
    if (*v132 != v132 + 16)
    {
      free(*v132);
    }

    operator delete(v122);
  }

  v123 = v133;
  if ((v133 & 1) == 0 && v133)
  {
    if (*v133 != v133 + 16)
    {
      free(*v133);
    }

    operator delete(v123);
  }
}

void mlir::affine::canonicalizeSetAndOperands(mlir::IntegerSet *a1, uint64_t a2)
{
  v162[8] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a2 + 8))
  {
    return;
  }

  Context = mlir::IntegerSet::getContext(a1);
  v150 = &v152;
  v151 = 0x800000000;
  v4 = *(a2 + 8);
  if (v4 <= 8)
  {
    __src = &v139;
    v138 = 0x800000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v4, 8);
    v5 = *(a2 + 8);
    __src = &v139;
    v138 = 0x800000000;
    if (v5 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v139, v5, 8);
    }
  }

  NumSymbols = mlir::AffineMap::getNumSymbols(a1);
  NumDims = mlir::AffineMap::getNumDims(a1);
  v160 = v162;
  v161 = 0x800000000;
  if (NumDims)
  {
    v7 = NumDims;
    v8 = NumDims;
    if (NumDims < 9)
    {
      v9 = 0;
      v10 = NumDims;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, NumDims, 8);
      v9 = v161;
      v10 = v8 - v161;
      if (v8 == v161)
      {
        goto LABEL_13;
      }
    }

    bzero(&v160[v9], 8 * v10);
LABEL_13:
    LODWORD(v161) = v7;
  }

  NumInputs = mlir::AffineMap::getNumInputs(a1);
  if (NumInputs)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = NumInputs;
    do
    {
      v21 = mlir::AffineMap::getNumDims(a1);
      v18 = *(*a2 + 8 * v12);
      if (v12 >= v21)
      {
        v19 = v151;
        p_src = &v150;
        if (v151 >= HIDWORD(v151))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v151 + 1, 8);
          v19 = v151;
        }

        v16 = v14;
      }

      else
      {
        v147 = *(*a2 + 8 * v12);
        if (v18 && (v134 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8), mlir::Type::isIndex(&v134)) && (mlir::affine::isTopLevelValue(v18) || (DefiningOp = mlir::Value::getDefiningOp(&v147)) != 0 && (v25 = v147, AffineScope = mlir::affine::getAffineScope(DefiningOp, v24), mlir::affine::isValidSymbol(v25, AffineScope))))
        {
          v16 = (v14 + 1);
          AffineSymbolExpr = mlir::getAffineSymbolExpr((v14 + NumSymbols), Context, v22);
          v160[v12] = AffineSymbolExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v138;
          p_src = &__src;
          if (v138 >= HIDWORD(v138))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v139, v138 + 1, 8);
            v19 = v138;
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineDimExpr(v13, Context, v22);
          v160[v12] = AffineDimExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v151;
          p_src = &v150;
          if (v151 >= HIDWORD(v151))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v151 + 1, 8);
            v19 = v151;
          }

          v16 = v14;
          v13 = (v13 + 1);
        }
      }

      *(*p_src + v19) = v18;
      ++*(p_src + 2);
      ++v12;
      v14 = v16;
    }

    while (v15 != v12);
  }

  else
  {
    LODWORD(v16) = 0;
    LODWORD(v13) = 0;
  }

  v28 = __src;
  v29 = v138;
  v30 = v151;
  v31 = v151 + v138;
  if (v31 > HIDWORD(v151))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, &v152, v31, 8);
    v30 = v151;
  }

  if (v29)
  {
    memcpy(v150 + 8 * v30, v28, 8 * v29);
    v30 = v151;
  }

  v32 = v30 + v29;
  LODWORD(v151) = v32;
  if (&v150 != a2)
  {
    v33 = *(a2 + 8);
    if (v33 >= v32)
    {
      if (v32)
      {
        memmove(*a2, v150, 8 * v32);
      }

      goto LABEL_46;
    }

    if (*(a2 + 12) >= v32)
    {
      if (v33)
      {
        memmove(*a2, v150, 8 * v33);
        v34 = v151 - v33;
        if (v151 == v33)
        {
LABEL_46:
          *(a2 + 8) = v32;
          goto LABEL_47;
        }
      }

      else
      {
        v33 = 0;
        v34 = v151;
        if (!v151)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v32, 8);
      v33 = 0;
      v34 = v151;
      if (!v151)
      {
        goto LABEL_46;
      }
    }

    memcpy((*a2 + 8 * v33), v150 + 8 * v33, 8 * v34);
    goto LABEL_46;
  }

LABEL_47:
  *a1 = mlir::IntegerSet::replaceDimsAndSymbols(a1, v160, v161, 0, 0, v13, v16 + NumSymbols);
  if (v160 != v162)
  {
    free(v160);
  }

  if (__src != &v139)
  {
    free(__src);
  }

  if (v150 != &v152)
  {
    free(v150);
  }

  v35 = mlir::AffineMap::getNumDims(a1);
  v36 = v35;
  v133 = 1;
  if (v35 <= 0x39)
  {
    v37 = ((v35 << 58) | 1);
    goto LABEL_61;
  }

  v38 = operator new(0x48uLL);
  v37 = v38;
  v39 = v36 + 63;
  v40 = (v36 + 63) >> 6;
  *v38 = v38 + 16;
  *(v38 + 3) = 6;
  if ((v36 + 63) >= 0x1C0)
  {
    *(v38 + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v38, (v38 + 16), v39 >> 6, 8);
    v41 = *v37;
    v42 = 8 * v40;
LABEL_59:
    bzero(v41, v42);
    goto LABEL_60;
  }

  if (v39 >= 0x40)
  {
    v41 = v38 + 16;
    v42 = 8 * v40;
    goto LABEL_59;
  }

LABEL_60:
  v37[2] = v40;
  v37[16] = v36;
LABEL_61:
  v133 = v37;
  v43 = mlir::AffineMap::getNumSymbols(a1);
  v44 = v43;
  v132 = 1;
  if (v43 <= 0x39)
  {
    v45 = ((v43 << 58) | 1);
    goto LABEL_69;
  }

  v46 = operator new(0x48uLL);
  v45 = v46;
  v47 = v44 + 63;
  v48 = (v44 + 63) >> 6;
  *v46 = v46 + 16;
  *(v46 + 3) = 6;
  if ((v44 + 63) >= 0x1C0)
  {
    *(v46 + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v46, (v46 + 16), v47 >> 6, 8);
    v49 = *v45;
    v50 = 8 * v48;
LABEL_67:
    bzero(v49, v50);
    goto LABEL_68;
  }

  if (v47 >= 0x40)
  {
    v49 = v46 + 16;
    v50 = 8 * v48;
    goto LABEL_67;
  }

LABEL_68:
  v45[2] = v48;
  v45[16] = v44;
LABEL_69:
  v132 = v45;
  v150 = &v133;
  v151 = &v132;
  mlir::IntegerSet::walkExprs(a1, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &v150);
  v126 = mlir::IntegerSet::getContext(a1);
  v160 = v162;
  v161 = 0x800000000;
  v51 = *(a2 + 8);
  if (v51 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v51, 8);
  }

  v150 = 1;
  v151 = -4096;
  v153 = -4096;
  v154 = -4096;
  v155 = -4096;
  v156 = -4096;
  v157 = -4096;
  v158 = -4096;
  v159 = -4096;
  v52 = mlir::AffineMap::getNumDims(a1);
  v147 = v149;
  v148 = 0x800000000;
  if (v52)
  {
    v53 = v52;
    v54 = v52;
    if (v52 < 9)
    {
      v55 = 0;
      v56 = v52;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v52, 8);
      v55 = v148;
      v56 = v54 - v148;
      if (v54 == v148)
      {
        goto LABEL_77;
      }
    }

    bzero(v147 + 8 * v55, 8 * v56);
LABEL_77:
    LODWORD(v148) = v53;
  }

  v57 = mlir::AffineMap::getNumDims(a1);
  if (v57)
  {
    v59 = 0;
    v60 = 0;
    v61 = v57;
    while (1)
    {
      if (v133)
      {
        if (((1 << v59) & (v133 >> 1) & ~(-1 << (v133 >> 58))) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((*(*v133 + 8 * (v59 >> 6)) & (1 << v59)) == 0)
      {
        goto LABEL_81;
      }

      if (v150)
      {
        v63 = 8;
        v62 = &v151;
      }

      else
      {
        v62 = v151;
        v63 = v152;
        if (!v152)
        {
          v64 = 0;
          v65 = 0;
          goto LABEL_89;
        }
      }

      v69 = *(*a2 + 8 * v59);
      v70 = 0x9DDFEA08EB382D69 * ((8 * v69 - 0xAE502812AA7333) ^ HIDWORD(v69));
      v71 = 0x9DDFEA08EB382D69 * (HIDWORD(v69) ^ (v70 >> 47) ^ v70);
      LODWORD(v70) = -348639895 * ((v71 >> 47) ^ v71);
      v72 = v63 - 1;
      v73 = v70 & (v63 - 1);
      v74 = v62[2 * v73];
      if (v69 == v74)
      {
LABEL_96:
        v66 = &v62[2 * v73];
        if (v150)
        {
          v75 = &v160;
        }

        else
        {
          v75 = (v151 + 16 * v152);
        }

        if (v66 == v75)
        {
          goto LABEL_100;
        }

        goto LABEL_80;
      }

      v80 = 1;
      while (v74 != -4096)
      {
        v81 = v73 + v80++;
        v73 = v81 & v72;
        v74 = v62[2 * v73];
        if (v69 == v74)
        {
          goto LABEL_96;
        }
      }

      v62 = v151;
      v64 = v152;
      if (v150)
      {
LABEL_100:
        v76 = mlir::getAffineDimExpr(v60, v126, v58);
        *(v147 + v59) = v76;
        v77 = *(*a2 + 8 * v59);
        v78 = v161;
        if (v161 >= HIDWORD(v161))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v161 + 1, 8);
          v78 = v161;
        }

        v160[v78] = v77;
        v60 = (v60 + 1);
        LODWORD(v161) = v161 + 1;
        v79 = *(v147 + v59);
        v134 = *(*a2 + 8 * v59);
        v135 = v79;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v150, &v134, &v135, &__src);
        goto LABEL_81;
      }

      v65 = v152;
LABEL_89:
      v66 = &v62[2 * v65];
      v67 = &v62[2 * v64];
      if (v150)
      {
        v68 = &v160;
      }

      else
      {
        v68 = v67;
      }

      if (v66 == v68)
      {
        goto LABEL_100;
      }

LABEL_80:
      *(v147 + v59) = v66[1];
LABEL_81:
      if (++v59 == v61)
      {
        goto LABEL_111;
      }
    }
  }

  LODWORD(v60) = 0;
LABEL_111:
  __src = 1;
  v138 = -4096;
  v140 = -4096;
  v141 = -4096;
  v142 = -4096;
  v143 = -4096;
  v144 = -4096;
  v145 = -4096;
  v146 = -4096;
  v82 = mlir::AffineMap::getNumSymbols(a1);
  v134 = v136;
  v135 = 0x800000000;
  if (v82)
  {
    v83 = v82;
    v84 = v82;
    if (v82 < 9)
    {
      v85 = 0;
      v86 = v82;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v136, v82, 8);
      v85 = v135;
      v86 = v84 - v135;
      if (v84 == v135)
      {
        goto LABEL_117;
      }
    }

    bzero(v134 + 8 * v85, 8 * v86);
LABEL_117:
    LODWORD(v135) = v83;
  }

  v87 = mlir::AffineMap::getNumSymbols(a1);
  if (v87)
  {
    v88 = 0;
    v89 = 0;
    v90 = v87;
    while (1)
    {
      if (v132)
      {
        if (((1 << v88) & (v132 >> 1) & ~(-1 << (v132 >> 58))) == 0)
        {
          goto LABEL_121;
        }
      }

      else if ((*(*v132 + 8 * (v88 >> 6)) & (1 << v88)) == 0)
      {
        goto LABEL_121;
      }

      v131 = 0;
      v91 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v88));
      v129 = &v131;
      __p = v91;
      v92 = mlir::Value::getDefiningOp(&__p);
      if (v92 && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v129, v92))
      {
        mlir::IntegerAttr::getValue(&v131, &__p);
        if (v128 > 0x40)
        {
          v94 = *__p;
        }

        else if (v128)
        {
          v94 = (__p << -v128) >> -v128;
        }

        else
        {
          v94 = 0;
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(v94, v126, v93);
        *(v134 + v88) = AffineConstantExpr;
        if (v128 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        goto LABEL_121;
      }

      v96 = mlir::AffineMap::getNumDims(a1) + v88;
      if (__src)
      {
        v98 = 8;
        v97 = &v138;
      }

      else
      {
        v97 = v138;
        v98 = v139;
        if (!v139)
        {
          v99 = 0;
          v100 = 0;
          goto LABEL_135;
        }
      }

      v104 = *(*a2 + 8 * v96);
      v105 = 0x9DDFEA08EB382D69 * ((8 * v104 - 0xAE502812AA7333) ^ HIDWORD(v104));
      v106 = 0x9DDFEA08EB382D69 * (HIDWORD(v104) ^ (v105 >> 47) ^ v105);
      LODWORD(v105) = -348639895 * ((v106 >> 47) ^ v106);
      v107 = v98 - 1;
      v108 = v105 & (v98 - 1);
      v109 = v97[2 * v108];
      if (v104 == v109)
      {
LABEL_142:
        v101 = &v97[2 * v108];
        if (__src)
        {
          v110 = &v147;
        }

        else
        {
          v110 = (v138 + 16 * v139);
        }

        if (v101 == v110)
        {
          goto LABEL_146;
        }

        goto LABEL_120;
      }

      v117 = 1;
      while (v109 != -4096)
      {
        v118 = v108 + v117++;
        v108 = v118 & v107;
        v109 = v97[2 * v108];
        if (v104 == v109)
        {
          goto LABEL_142;
        }
      }

      v97 = v138;
      v99 = v139;
      if (__src)
      {
LABEL_146:
        v111 = mlir::getAffineSymbolExpr(v89, v126, v95);
        *(v134 + v88) = v111;
        v112 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v88));
        v113 = v161;
        if (v161 >= HIDWORD(v161))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v161 + 1, 8);
          v113 = v161;
        }

        v89 = (v89 + 1);
        v160[v113] = v112;
        LODWORD(v161) = v161 + 1;
        v114 = mlir::AffineMap::getNumDims(a1);
        v115 = *(v134 + v88);
        v129 = *(*a2 + 8 * (v114 + v88));
        v130 = v115;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v129, &v130, &__p);
        goto LABEL_121;
      }

      v100 = v139;
LABEL_135:
      v101 = &v97[2 * v100];
      v102 = &v97[2 * v99];
      if (__src)
      {
        v103 = &v147;
      }

      else
      {
        v103 = v102;
      }

      if (v101 == v103)
      {
        goto LABEL_146;
      }

LABEL_120:
      *(v134 + v88) = v101[1];
LABEL_121:
      if (++v88 == v90)
      {
        goto LABEL_161;
      }
    }
  }

  LODWORD(v89) = 0;
LABEL_161:
  *a1 = mlir::IntegerSet::replaceDimsAndSymbols(a1, v147, v148, v134, v135, v60, v89);
  if (&v160 == a2)
  {
    goto LABEL_172;
  }

  v119 = v161;
  v120 = *(a2 + 8);
  if (v120 >= v161)
  {
    if (v161)
    {
      memmove(*a2, v160, 8 * v161);
    }

    goto LABEL_171;
  }

  if (*(a2 + 12) < v161)
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v119, 8);
    v120 = 0;
    v121 = v161;
    if (!v161)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

  if (!v120)
  {
    v120 = 0;
    v121 = v161;
    if (!v161)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

  memmove(*a2, v160, 8 * v120);
  v121 = v161 - v120;
  if (v121)
  {
LABEL_170:
    memcpy((*a2 + 8 * v120), &v160[v120], 8 * v121);
  }

LABEL_171:
  *(a2 + 8) = v119;
LABEL_172:
  if (v134 != v136)
  {
    free(v134);
  }

  if ((__src & 1) == 0)
  {
    llvm::deallocate_buffer(v138, (16 * v139));
  }

  if (v147 != v149)
  {
    free(v147);
  }

  if ((v150 & 1) == 0)
  {
    llvm::deallocate_buffer(v151, (16 * v152));
  }

  if (v160 != v162)
  {
    free(v160);
  }

  v122 = v132;
  if ((v132 & 1) == 0 && v132)
  {
    if (*v132 != v132 + 16)
    {
      free(*v132);
    }

    operator delete(v122);
  }

  v123 = v133;
  if ((v133 & 1) == 0 && v133)
  {
    if (*v133 != v133 + 16)
    {
      free(*v133);
    }

    operator delete(v123);
  }
}

void mlir::affine::AffineApplyOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.apply", 12, v24, a2, 0, 0);
  *v4 = &unk_1F5B14E38;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineApplyOp>]";
  v25 = 118;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::affine::AffineDmaStartOp::getNumElements(mlir::Operation **this)
{
  v6.var0 = "src_map";
  v6.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*this, v6);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
  v7.var0 = "dst_map";
  v7.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*this, v7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  v3 = mlir::AffineMap::getNumInputs(&InherentAttr);
  v8.var0 = "tag_map";
  v8.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*this, v8);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  return *(*(*this + 9) + 32 * (NumInputs + v3 + mlir::AffineMap::getNumInputs(&InherentAttr) + 3) + 24);
}

BOOL mlir::affine::AffineDmaStartOp::parse(uint64_t a1, uint64_t a2)
{
  v50[16] = *MEMORY[0x1E69E9840];
  memset(v34, 0, 24);
  v33 = 0;
  v48 = v50;
  v49 = 0x400000000;
  memset(v32, 0, 24);
  v31 = 0;
  v45 = v47;
  v46 = 0x400000000;
  memset(v30, 0, 24);
  v29 = 0;
  v42 = v44;
  v43 = 0x400000000;
  memset(v28, 0, 24);
  v39 = v41;
  v40 = 0x200000000;
  v36 = v38;
  v37 = 0x300000000;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v48, &v33, "src_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v32, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v45, &v31, "dst_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v30, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v42, &v29, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v28, 1) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(a1, &v39, 0) & 1) == 0)
  {
    goto LABEL_44;
  }

  if ((v40 & 0xFFFFFFFD) != 0)
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = "expected two stride related operands";
    goto LABEL_14;
  }

  v24 = v40;
  if (((*(*a1 + 584))(a1, &v36) & 1) == 0)
  {
LABEL_44:
    v9 = 0;
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v37 != 3)
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = "expected three types";
LABEL_14:
    v26[0] = v8;
    v27 = 259;
    (*(*a1 + 24))(v35, a1, v7, v26);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_46;
    }

LABEL_45:
    free(v10);
    goto LABEL_46;
  }

  if (((*(*a1 + 728))(a1, v34, *v36, a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v49)
  {
    v11 = v48;
    v12 = 32 * v49;
    while (((*(*a1 + 728))(a1, v11, IndexType, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

LABEL_56:
    v9 = 0;
    v10 = v36;
    if (v36 != v38)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_23:
  if (((*(*a1 + 728))(a1, v32, *(v36 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v46)
  {
    v13 = v45;
    v14 = 32 * v46;
    while (((*(*a1 + 728))(a1, v13, IndexType, a2 + 16) & 1) != 0)
    {
      v13 += 32;
      v14 -= 32;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_56;
  }

LABEL_28:
  if (((*(*a1 + 728))(a1, v30, *(v36 + 2), a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v43)
  {
    v15 = v42;
    v16 = 32 * v43;
    while (((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_56;
  }

LABEL_33:
  if (((*(*a1 + 728))(a1, v28, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v24 == 2 && v40)
  {
    v17 = v39;
    v18 = 32 * v40;
    while (((*(*a1 + 728))(a1, v17, IndexType, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_56;
  }

LABEL_39:
  v19 = v49;
  v35[0] = mlir::AffineMapAttr::getValue(&v33);
  if (v19 == mlir::AffineMap::getNumInputs(v35) && (v20 = v46, v26[0] = mlir::AffineMapAttr::getValue(&v31), v20 == mlir::AffineMap::getNumInputs(v26)) && (v21 = v43, Value = mlir::AffineMapAttr::getValue(&v29), v21 == mlir::AffineMap::getNumInputs(&Value)))
  {
    v9 = 1;
    v10 = v36;
    if (v36 != v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v23 = (*(*a1 + 16))(a1);
    v26[0] = "memref operand count not equal to map.numInputs";
    v27 = 259;
    (*(*a1 + 24))(v35, a1, v23, v26);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    v10 = v36;
    if (v36 != v38)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v9;
}

BOOL mlir::affine::AffineDmaStartOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v97.var0 = "src_map";
    v97.var1 = 7;
    InherentAttr = mlir::Operation::getInherentAttr(*this, v97);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    if (*(*(*(*(*(*this + 9) + 32 * (mlir::AffineMap::getNumInputs(&InherentAttr) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v84[0] = "expected DMA destination to be of memref type";
      v85 = 259;
      mlir::OpState::emitOpError(this, v84, &InherentAttr);
      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
      if (InherentAttr)
      {
        mlir::InFlightDiagnostic::report(&InherentAttr);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v93;
          v13 = __p;
          if (v93 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v93 = v11;
          operator delete(v13);
        }

        v5 = v90;
        if (!v90)
        {
          goto LABEL_181;
        }

        v14 = v91;
        v7 = v90;
        if (v91 == v90)
        {
          goto LABEL_180;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            operator delete[](v15);
          }
        }

        while (v14 != v5);
        goto LABEL_179;
      }

      return v1;
    }

    v98.var0 = "src_map";
    v98.var1 = 7;
    InherentAttr = mlir::Operation::getInherentAttr(*this, v98);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
    v99.var0 = "dst_map";
    v99.var1 = 7;
    InherentAttr = mlir::Operation::getInherentAttr(*this, v99);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    if (*(*(*(*(*(*this + 9) + 32 * (NumInputs + mlir::AffineMap::getNumInputs(&InherentAttr) + 2) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v84[0] = "expected DMA tag to be of memref type";
      v85 = 259;
      mlir::OpState::emitOpError(this, v84, &InherentAttr);
      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
      if (InherentAttr)
      {
        mlir::InFlightDiagnostic::report(&InherentAttr);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v93;
          v20 = __p;
          if (v93 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v93 = v18;
          operator delete(v20);
        }

        v5 = v90;
        if (!v90)
        {
          goto LABEL_181;
        }

        v21 = v91;
        v7 = v90;
        if (v91 == v90)
        {
          goto LABEL_180;
        }

        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v21 != v5);
        goto LABEL_179;
      }

      return v1;
    }

    v100.var0 = "src_map";
    v100.var1 = 7;
    InherentAttr = mlir::Operation::getInherentAttr(*this, v100);
    v84[0] = mlir::AffineMapAttr::getValue(&InherentAttr);
    v24 = mlir::AffineMap::getNumInputs(v84);
    v101.var0 = "dst_map";
    v101.var1 = 7;
    InherentAttr = mlir::Operation::getInherentAttr(*this, v101);
    Value = mlir::AffineMapAttr::getValue(&InherentAttr);
    v25 = mlir::AffineMap::getNumInputs(&Value) + v24;
    v102.var0 = "tag_map";
    v102.var1 = 7;
    InherentAttr = mlir::Operation::getInherentAttr(*this, v102);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    v27 = v25 + mlir::AffineMap::getNumInputs(&InherentAttr);
    if ((*(*this + 46) & 0x80) != 0)
    {
      v28 = *(*this + 17);
      if (v28 == v27 + 4 || v28 == v27 + 6)
      {
LABEL_55:
        AffineScope = mlir::affine::getAffineScope(*this, v26);
        v30 = *this;
        if ((*(*this + 46) & 0x80) != 0)
        {
          v31 = *(v30 + 9);
        }

        else
        {
          v31 = 0;
        }

        v103.var0 = "src_map";
        v103.var1 = 7;
        InherentAttr = mlir::Operation::getInherentAttr(v30, v103);
        InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
        v32 = mlir::AffineMap::getNumInputs(&InherentAttr);
        if (v32)
        {
          v33 = v32;
          v34 = (v31 + 56);
          while (1)
          {
            v35 = *v34;
            InherentAttr = (*v34)[1] & 0xFFFFFFFFFFFFFFF8;
            if (!mlir::Type::isIndex(&InherentAttr))
            {
              break;
            }

            if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v35, AffineScope) & 1) == 0)
            {
              v84[0] = "src index must be a valid dimension or symbol identifier";
              v85 = 259;
              mlir::OpState::emitOpError(this, v84, &InherentAttr);
              v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
              if (InherentAttr)
              {
                mlir::InFlightDiagnostic::report(&InherentAttr);
              }

              if (v95 != 1)
              {
                return v1;
              }

              if (v94 != &v95)
              {
                free(v94);
              }

              v36 = __p;
              if (__p)
              {
                v37 = v93;
                v38 = __p;
                if (v93 != __p)
                {
                  do
                  {
                    v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
                  }

                  while (v37 != v36);
                  v38 = __p;
                }

                v93 = v36;
                operator delete(v38);
              }

              v5 = v90;
              if (!v90)
              {
                goto LABEL_181;
              }

              v39 = v91;
              v7 = v90;
              if (v91 == v90)
              {
                goto LABEL_180;
              }

              do
              {
                v47 = *--v39;
                v46 = v47;
                *v39 = 0;
                if (v47)
                {
                  operator delete[](v46);
                }
              }

              while (v39 != v5);
              goto LABEL_179;
            }

            v34 += 4;
            if (!--v33)
            {
              goto LABEL_95;
            }
          }

          v84[0] = "src index to dma_start must have 'index' type";
          v85 = 259;
          mlir::OpState::emitOpError(this, v84, &InherentAttr);
          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
          if (InherentAttr)
          {
            mlir::InFlightDiagnostic::report(&InherentAttr);
          }

          if (v95 != 1)
          {
            return v1;
          }

          if (v94 != &v95)
          {
            free(v94);
          }

          v40 = __p;
          if (__p)
          {
            v41 = v93;
            v42 = __p;
            if (v93 != __p)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = __p;
            }

            v93 = v40;
            operator delete(v42);
          }

          v5 = v90;
          if (!v90)
          {
            goto LABEL_181;
          }

          v43 = v91;
          v7 = v90;
          if (v91 == v90)
          {
            goto LABEL_180;
          }

          do
          {
            v45 = *--v43;
            v44 = v45;
            *v43 = 0;
            if (v45)
            {
              operator delete[](v44);
            }
          }

          while (v43 != v5);
        }

        else
        {
LABEL_95:
          DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(this);
          if (v49)
          {
            v50 = v49;
            v51 = (DstIndices + 24);
            while (1)
            {
              v52 = *v51;
              InherentAttr = (*v51)[1] & 0xFFFFFFFFFFFFFFF8;
              if (!mlir::Type::isIndex(&InherentAttr))
              {
                break;
              }

              if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v52, AffineScope) & 1) == 0)
              {
                v84[0] = "dst index must be a valid dimension or symbol identifier";
                v85 = 259;
                mlir::OpState::emitOpError(this, v84, &InherentAttr);
                v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
                if (InherentAttr)
                {
                  mlir::InFlightDiagnostic::report(&InherentAttr);
                }

                if (v95 != 1)
                {
                  return v1;
                }

                if (v94 != &v95)
                {
                  free(v94);
                }

                v53 = __p;
                if (__p)
                {
                  v54 = v93;
                  v55 = __p;
                  if (v93 != __p)
                  {
                    do
                    {
                      v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
                    }

                    while (v54 != v53);
                    v55 = __p;
                  }

                  v93 = v53;
                  operator delete(v55);
                }

                v5 = v90;
                if (!v90)
                {
                  goto LABEL_181;
                }

                v56 = v91;
                v7 = v90;
                if (v91 == v90)
                {
                  goto LABEL_180;
                }

                do
                {
                  v64 = *--v56;
                  v63 = v64;
                  *v56 = 0;
                  if (v64)
                  {
                    operator delete[](v63);
                  }
                }

                while (v56 != v5);
                goto LABEL_179;
              }

              v51 += 4;
              if (!--v50)
              {
                goto LABEL_133;
              }
            }

            v84[0] = "dst index to dma_start must have 'index' type";
            v85 = 259;
            mlir::OpState::emitOpError(this, v84, &InherentAttr);
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
            if (InherentAttr)
            {
              mlir::InFlightDiagnostic::report(&InherentAttr);
            }

            if (v95 != 1)
            {
              return v1;
            }

            if (v94 != &v95)
            {
              free(v94);
            }

            v57 = __p;
            if (__p)
            {
              v58 = v93;
              v59 = __p;
              if (v93 != __p)
              {
                do
                {
                  v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
                }

                while (v58 != v57);
                v59 = __p;
              }

              v93 = v57;
              operator delete(v59);
            }

            v5 = v90;
            if (!v90)
            {
              goto LABEL_181;
            }

            v60 = v91;
            v7 = v90;
            if (v91 == v90)
            {
              goto LABEL_180;
            }

            do
            {
              v62 = *--v60;
              v61 = v62;
              *v60 = 0;
              if (v62)
              {
                operator delete[](v61);
              }
            }

            while (v60 != v5);
          }

          else
          {
LABEL_133:
            TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(this);
            if (!v66)
            {
              return 1;
            }

            v67 = v66;
            for (i = (TagIndices + 24); ; i += 4)
            {
              v69 = *i;
              InherentAttr = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
              if (!mlir::Type::isIndex(&InherentAttr))
              {
                break;
              }

              if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v69, AffineScope) & 1) == 0)
              {
                v84[0] = "tag index must be a valid dimension or symbol identifier";
                v85 = 259;
                mlir::OpState::emitOpError(this, v84, &InherentAttr);
                v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
                if (InherentAttr)
                {
                  mlir::InFlightDiagnostic::report(&InherentAttr);
                }

                if (v95 != 1)
                {
                  return v1;
                }

                if (v94 != &v95)
                {
                  free(v94);
                }

                v70 = __p;
                if (__p)
                {
                  v71 = v93;
                  v72 = __p;
                  if (v93 != __p)
                  {
                    do
                    {
                      v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
                    }

                    while (v71 != v70);
                    v72 = __p;
                  }

                  v93 = v70;
                  operator delete(v72);
                }

                v5 = v90;
                if (!v90)
                {
                  goto LABEL_181;
                }

                v73 = v91;
                v7 = v90;
                if (v91 == v90)
                {
                  goto LABEL_180;
                }

                do
                {
                  v81 = *--v73;
                  v80 = v81;
                  *v73 = 0;
                  if (v81)
                  {
                    operator delete[](v80);
                  }
                }

                while (v73 != v5);
                goto LABEL_179;
              }

              v1 = 1;
              if (!--v67)
              {
                return v1;
              }
            }

            v84[0] = "tag index to dma_start must have 'index' type";
            v85 = 259;
            mlir::OpState::emitOpError(this, v84, &InherentAttr);
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
            if (InherentAttr)
            {
              mlir::InFlightDiagnostic::report(&InherentAttr);
            }

            if (v95 != 1)
            {
              return v1;
            }

            if (v94 != &v95)
            {
              free(v94);
            }

            v74 = __p;
            if (__p)
            {
              v75 = v93;
              v76 = __p;
              if (v93 != __p)
              {
                do
                {
                  v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
                }

                while (v75 != v74);
                v76 = __p;
              }

              v93 = v74;
              operator delete(v76);
            }

            v5 = v90;
            if (!v90)
            {
              goto LABEL_181;
            }

            v77 = v91;
            v7 = v90;
            if (v91 == v90)
            {
              goto LABEL_180;
            }

            do
            {
              v79 = *--v77;
              v78 = v79;
              *v77 = 0;
              if (v79)
              {
                operator delete[](v78);
              }
            }

            while (v77 != v5);
          }
        }

        goto LABEL_179;
      }
    }

    else if (v27 == -4 || v27 == -6)
    {
      goto LABEL_55;
    }

    v84[0] = "incorrect number of operands";
    v85 = 259;
    mlir::OpState::emitOpError(this, v84, &InherentAttr);
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
    if (InherentAttr)
    {
      mlir::InFlightDiagnostic::report(&InherentAttr);
    }

    if (v95 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v87);
    }

    return v1;
  }

  v84[0] = "expected DMA source to be of memref type";
  v85 = 259;
  mlir::OpState::emitOpError(this, v84, &InherentAttr);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
  if (InherentAttr)
  {
    mlir::InFlightDiagnostic::report(&InherentAttr);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v93;
      v4 = __p;
      if (v93 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v93 = v2;
      operator delete(v4);
    }

    v5 = v90;
    if (!v90)
    {
      goto LABEL_181;
    }

    v6 = v91;
    v7 = v90;
    if (v91 == v90)
    {
LABEL_180:
      v91 = v5;
      operator delete(v7);
LABEL_181:
      if (v88 != &v89)
      {
        free(v88);
      }

      return v1;
    }

    do
    {
      v9 = *--v6;
      v8 = v9;
      *v6 = 0;
      if (v9)
      {
        operator delete[](v8);
      }
    }

    while (v6 != v5);
LABEL_179:
    v7 = v90;
    goto LABEL_180;
  }

  return v1;
}

void mlir::affine::AffineDmaStartOp::getEffects(mlir::Operation **a1, uint64_t a2)
{
  {
    mlir::memref::AtomicRMWOp::getEffects();
  }

  v17 = *(*a1 + 9);
  InherentAttr = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v4 = *(a2 + 8);
    if (v4 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_13:
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &InherentAttr, &v17, &v16);
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>();
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 12))
  {
    goto LABEL_13;
  }

LABEL_5:
  v5 = *a2 + 40 * v4;
  v6 = v17;
  *v5 = InherentAttr;
  *(v5 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v5 + 16) = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_14:
  mlir::memref::AtomicRMWOp::getEffects();
LABEL_6:
  v17 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v7 = *a1;
  v19.var0 = "src_map";
  v19.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*a1, v19);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  InherentAttr = (*(v7 + 9) + 32 * (mlir::AffineMap::getNumInputs(&InherentAttr) + 1));
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v8 = *(a2 + 8);
    if (v8 < *(a2 + 12))
    {
      goto LABEL_8;
    }

LABEL_16:
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v17, &InherentAttr, &v16);
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  mlir::memref::AtomicRMWOp::getEffects();
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v8 = *(a2 + 8);
  if (v8 >= *(a2 + 12))
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = *a2 + 40 * v8;
  v10 = InherentAttr;
  *v9 = v17;
  *(v9 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v9 + 16) = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 36) = 0;
  ++*(a2 + 8);
  {
    goto LABEL_9;
  }

LABEL_17:
  mlir::affine::AffineDmaStartOp::getEffects();
LABEL_9:
  v17 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v11 = *a1;
  v20.var0 = "src_map";
  v20.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*a1, v20);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
  v21.var0 = "dst_map";
  v21.var1 = 7;
  InherentAttr = mlir::Operation::getInherentAttr(*a1, v21);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  InherentAttr = (*(v11 + 9) + 32 * (NumInputs + mlir::AffineMap::getNumInputs(&InherentAttr) + 2));
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v13 = *(a2 + 8);
    if (v13 < *(a2 + 12))
    {
LABEL_11:
      v14 = *a2 + 40 * v13;
      v15 = InherentAttr;
      *v14 = v17;
      *(v14 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v14 + 16) = v15 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 36) = 0;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    mlir::memref::AtomicRMWOp::getEffects();
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v13 = *(a2 + 8);
    if (v13 < *(a2 + 12))
    {
      goto LABEL_11;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v17, &InherentAttr, &v16);
}

BOOL mlir::affine::AffineDmaWaitOp::parse(uint64_t a1, uint64_t a2)
{
  v23[8] = *MEMORY[0x1E69E9840];
  memset(v19, 0, 24);
  v17 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  memset(v16, 0, 24);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v21, &v18, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v16, 1) & 1) == 0 || ((*(*a1 + 576))(a1, &v17) & 1) == 0 || ((*(*a1 + 728))(a1, v19, v17, a2 + 16) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v22)
  {
    v7 = v21;
    v8 = 32 * v22;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  if (((*(*a1 + 728))(a1, v16, IndexType, a2 + 16) & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v13 = v22;
    v20[0] = mlir::AffineMapAttr::getValue(&v18);
    if (v13 == mlir::AffineMap::getNumInputs(v20))
    {
      v11 = 1;
      goto LABEL_15;
    }

    v9 = (*(*a1 + 16))(a1);
    v10 = "tag memref operand count != to map.numInputs";
  }

  else
  {
    v9 = (*(*a1 + 16))(a1);
    v10 = "expected tag to be of memref type";
  }

  v14 = v10;
  v15 = 259;
  (*(*a1 + 24))(v20, a1, v9, &v14);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
LABEL_15:
  if (v21 != v23)
  {
    free(v21);
  }

  return v11;
}

BOOL mlir::affine::AffineDmaWaitOp::verifyInvariantsImpl(mlir::affine **this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    AffineScope = mlir::affine::getAffineScope(*this, a2);
    v13 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v14 = *(v13 + 9);
    }

    else
    {
      v14 = 0;
    }

    v44.var0 = "tag_map";
    v44.var1 = 7;
    v34[0] = mlir::Operation::getInherentAttr(v13, v44);
    v34[0] = mlir::AffineMapAttr::getValue(v34);
    NumInputs = mlir::AffineMap::getNumInputs(v34);
    if (!NumInputs)
    {
      return 1;
    }

    v16 = NumInputs;
    for (i = (v14 + 56); ; i += 4)
    {
      v18 = *i;
      v34[0] = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::Type::isIndex(v34))
      {
        break;
      }

      if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v18, AffineScope) & 1) == 0)
      {
        v32[0] = "index must be a valid dimension or symbol identifier";
        v33 = 259;
        mlir::OpState::emitOpError(this, v32, v34);
        v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
        if (v34[0])
        {
          mlir::InFlightDiagnostic::report(v34);
        }

        if (v42 != 1)
        {
          return v2;
        }

        if (v41 != &v42)
        {
          free(v41);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v40;
          v21 = __p;
          if (v40 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v40 = v19;
          operator delete(v21);
        }

        v6 = v37;
        if (!v37)
        {
          goto LABEL_61;
        }

        v22 = v38;
        v8 = v37;
        if (v38 == v37)
        {
          goto LABEL_60;
        }

        do
        {
          v30 = *--v22;
          v29 = v30;
          *v22 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v22 != v6);
        goto LABEL_59;
      }

      v2 = 1;
      if (!--v16)
      {
        return v2;
      }
    }

    v32[0] = "index to dma_wait must have 'index' type";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, v34);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42 != 1)
    {
      return v2;
    }

    if (v41 != &v42)
    {
      free(v41);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v40;
      v25 = __p;
      if (v40 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v40 = v23;
      operator delete(v25);
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_61;
    }

    v26 = v38;
    v8 = v37;
    if (v38 == v37)
    {
      goto LABEL_60;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        operator delete[](v27);
      }
    }

    while (v26 != v6);
    goto LABEL_59;
  }

  v32[0] = "expected DMA tag to be of memref type";
  v33 = 259;
  mlir::OpState::emitOpError(this, v32, v34);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v40;
      v5 = __p;
      if (v40 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v40 = v3;
      operator delete(v5);
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_61;
    }

    v7 = v38;
    v8 = v37;
    if (v38 == v37)
    {
LABEL_60:
      v38 = v6;
      operator delete(v8);
LABEL_61:
      if (v35 != &v36)
      {
        free(v35);
      }

      return v2;
    }

    do
    {
      v10 = *--v7;
      v9 = v10;
      *v7 = 0;
      if (v10)
      {
        operator delete[](v9);
      }
    }

    while (v7 != v6);
LABEL_59:
    v8 = v37;
    goto LABEL_60;
  }

  return v2;
}

void *mlir::affine::AffineForOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, void *, const char *, uint64_t), uint64_t a13)
{
  v55 = *MEMORY[0x1E69E9840];
  v18 = a1 + 16;
  v48 = *(a1 + 16);
  v50 = __PAIR64__(a7, a4);
  v51 = a11;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, &v50, 3);
  Context = mlir::Attribute::getContext(a2);
  v54 = 261;
  v52 = "operandSegmentSizes";
  v53 = 19;
  v21 = mlir::StringAttr::get(Context, &v52);
  mlir::NamedAttribute::NamedAttribute(v49, v21, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v49[0], v49[1]);
  v52 = a10;
  v53 = 0;
  if (a11)
  {
    for (i = 0; i != a11; v53 = i)
    {
      v23 = *(mlir::ValueRange::dereference_iterator(&v52, i) + 8);
      v24 = *(a2 + 72);
      if (v24 >= *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24 + 1, 8);
        v24 = *(a2 + 72);
      }

      *(*(a2 + 64) + 8 * v24) = v23 & 0xFFFFFFFFFFFFFFF8;
      ++*(a2 + 72);
      i = (v53 + 1);
    }
  }

  v25 = *(*(*(a2 + 8) + 96) + 8);
  IndexType = mlir::Builder::getIndexType(a1, i);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IndexType, a9);
  mlir::NamedAttribute::NamedAttribute(&v52, v25, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v52, v53);
  v28 = **(*(a2 + 8) + 96);
  v29 = mlir::AffineMapAttr::get(a5);
  mlir::NamedAttribute::NamedAttribute(&v52, v28, v29);
  mlir::NamedAttrList::push_back(a2 + 112, v52, v53);
  mlir::OperationState::addOperands(a2, a3, a4);
  v30 = *(*(*(a2 + 8) + 96) + 16);
  v31 = mlir::AffineMapAttr::get(a8);
  mlir::NamedAttribute::NamedAttribute(&v52, v30, v31);
  mlir::NamedAttrList::push_back(a2 + 112, v52, v53);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a10, a11);
  v32 = mlir::OperationState::addRegion(a2);
  mlir::ValueRange::ValueRange(&v52, 0, 0);
  Block = mlir::OpBuilder::createBlock(a1, v32, 0, v52, v53, 0, 0);
  v35 = mlir::Builder::getIndexType(a1, v34);
  v36 = mlir::Block::addArgument(Block, v35, *a2);
  v52 = a10;
  v53 = 0;
  if (!a11)
  {
    v41 = a12;
    if (!a12)
    {
      result = mlir::impl::ensureRegionTerminator(v32, a1, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::buildTerminator);
      v44 = v48;
      if (v48)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  for (j = 0; j != a11; v53 = j)
  {
    v49[0] = mlir::ValueRange::dereference_iterator(&v52, j);
    v38 = *(v49[0] + 8);
    Loc = mlir::Value::getLoc(v49);
    result = mlir::Block::addArgument(Block, v38 & 0xFFFFFFFFFFFFFFF8, Loc);
    j = v53 + 1;
  }

  v41 = a12;
  if (a12)
  {
LABEL_12:
    v42 = Block[5];
    *(a1 + 16) = Block;
    *(a1 + 24) = v42;
    v43 = *a2;
    mlir::ValueRange::ValueRange(&v52, Block[6] + 8, ((Block[7] - Block[6]) >> 3) - 1);
    result = v41(a13, a1, v43, v36, v52, v53);
  }

  v44 = v48;
  if (v48)
  {
LABEL_14:
    *v18 = v44;
    return result;
  }

LABEL_16:
  *v18 = 0;
  *(v18 + 8) = 0;
  return result;
}

BOOL mlir::affine::AffineForOp::verifyRegions(mlir::affine::AffineForOp *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3 + 48;
  v4 = *(v3 + 48);
  if (((*(v5 + 8) - v4) & 0x7FFFFFFF8) == 0 || (Value = *(*v4 + 8) & 0xFFFFFFFFFFFFFFF8, !mlir::Type::isIndex(&Value)))
  {
    v27[0] = "expected body to have a single index argument for the induction variable";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &Value);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v39 != 1)
    {
      return v11;
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v37;
      v14 = __p;
      if (v37 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v37 = v12;
      operator delete(v14);
    }

    v15 = v34;
    if (v34)
    {
      v16 = v35;
      v17 = v34;
      if (v35 == v34)
      {
        goto LABEL_50;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          operator delete[](v18);
        }
      }

      while (v16 != v15);
LABEL_49:
      v17 = v34;
LABEL_50:
      v35 = v15;
      operator delete(v17);
    }

LABEL_51:
    if (v32 != &v33)
    {
      free(v32);
    }

    return v11;
  }

  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::getNumInputs(&Value) && (mlir::affine::AffineForOp::verifyRegions(this) & 1) == 0)
  {
    return 0;
  }

  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::getNumInputs(&Value))
  {
    if ((mlir::affine::AffineForOp::verifyRegions(this) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(*this + 36);
  if (!v6)
  {
    return 1;
  }

  v27[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v27);
  v29 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v27[0] = mlir::AffineMapAttr::getValue(&v29);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(*this + 68);
  }

  else
  {
    v7 = 0;
  }

  NumInputs = mlir::AffineMap::getNumInputs(&Value);
  if (v7 - (NumInputs + mlir::AffineMap::getNumInputs(v27)) != v6)
  {
    v27[0] = "mismatch between the number of loop-carried values and results";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &Value);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v39 != 1)
    {
      return v11;
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v37;
      v22 = __p;
      if (v37 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v37 = v20;
      operator delete(v22);
    }

    v15 = v34;
    if (v34)
    {
      v23 = v35;
      v17 = v34;
      if (v35 == v34)
      {
        goto LABEL_50;
      }

      do
      {
        v25 = *--v23;
        v24 = v25;
        *v23 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v23 != v15);
      goto LABEL_49;
    }

    goto LABEL_51;
  }

  v9 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  if (((*(v10 + 56) - *(v10 + 48)) >> 3) - 1 == v6)
  {
    return 1;
  }

  v27[0] = "mismatch between the number of basic block args and results";
  v28 = 259;
  mlir::OpState::emitOpError(this, v27, &Value);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v39 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v31);
  }

  return v11;
}

uint64_t verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v7 = 0;
  for (i = (a2 + 24); ; i += 4)
  {
    v9 = *i;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 < a4)
    {
      break;
    }

    if ((mlir::affine::isValidSymbol(v9, AffineScope) & 1) == 0)
    {
      v27[0] = "operand cannot be used as a symbol";
      v28 = 259;
      mlir::OpState::emitOpError(a1, v27, v29);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v35;
          v21 = __p;
          if (v35 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v35 = v19;
          operator delete(v21);
        }

        v15 = v32;
        if (v32)
        {
          v22 = v33;
          v17 = v32;
          if (v33 != v32)
          {
            do
            {
              v24 = *--v22;
              v23 = v24;
              *v22 = 0;
              if (v24)
              {
                operator delete[](v23);
              }
            }

            while (v22 != v15);
            goto LABEL_42;
          }

LABEL_43:
          v33 = v15;
          operator delete(v17);
        }

        goto LABEL_44;
      }

      return v11;
    }

LABEL_5:
    if (a3 == ++v7)
    {
      return 1;
    }
  }

  if (mlir::affine::isValidDim())
  {
    goto LABEL_5;
  }

  v27[0] = "operand cannot be used as a dimension id";
  v28 = 259;
  mlir::OpState::emitOpError(a1, v27, v29);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v35;
      v14 = __p;
      if (v35 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v35 = v12;
      operator delete(v14);
    }

    v15 = v32;
    if (v32)
    {
      v16 = v33;
      v17 = v32;
      if (v33 == v32)
      {
        goto LABEL_43;
      }

      do
      {
        v26 = *--v16;
        v25 = v26;
        *v16 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v16 != v15);
LABEL_42:
      v17 = v32;
      goto LABEL_43;
    }

LABEL_44:
    if (v30 != &v31)
    {
      free(v30);
    }
  }

  return v11;
}

uint64_t mlir::affine::AffineForOp::parse(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  memset(v44, 0, 24);
  v46 = 0;
  v44[5] = 0;
  v45 = 0;
  v44[4] = mlir::Builder::getIndexType(v4, v5);
  if (((*(*a1 + 752))(a1, v44, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 24);
  if (!parseBound(1, a2, a1))
  {
    return 0;
  }

  v7 = *(a2 + 24);
  __p = " between bounds";
  v55[8] = 259;
  if (((*(*a1 + 400))(a1, "to", 2, &__p) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (!parseBound(0, a2, a1))
  {
    return 0;
  }

  v9 = *(a2 + 24);
  if (((*(*a1 + 408))(a1, "step", 4) & 1) == 0)
  {
    v40 = v9;
    v41 = v8;
    v17 = *(*(*(a2 + 8) + 96) + 8);
    IndexType = mlir::Builder::getIndexType(v4, v10);
    IntegerAttr = mlir::Builder::getIntegerAttr(v4, IndexType, 1);
    mlir::OperationState::addAttribute(a2, v17, IntegerAttr);
    goto LABEL_10;
  }

  v11 = (*(*a1 + 40))(a1);
  v50 = 0;
  v13 = mlir::Builder::getIndexType(v4, v12);
  __p = *(*(*(a2 + 8) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&__p);
  v15 = AttrData;
  v16 = AttrData ? strlen(AttrData) : 0;
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v50, v13, v15, v16, a2 + 112))
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v50, &__p);
  v32 = v54 - 1;
  if (v54 > 0x40)
  {
    v37 = *(__p + (v32 >> 6));
    operator delete[](__p);
    if ((v37 >> v32))
    {
      goto LABEL_30;
    }
  }

  else if ((__p >> v32))
  {
LABEL_30:
    v47 = "expected step to be representable as a positive signed integer";
    v49 = 259;
    (*(*a1 + 24))(&__p, a1, v11, &v47);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    return v33;
  }

  v40 = v9;
  v41 = v8;
LABEL_10:
  __p = v55;
  v54 = 0x400000000;
  v50 = v52;
  v51 = 0x400000000;
  v20 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&__p, v44);
  if ((*(*a1 + 408))(a1, "iter_args", 9, v20))
  {
    if ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) == 0 || ((*(*a1 + 560))(a1, a2 + 64) & 1) == 0)
    {
LABEL_25:
      result = 0;
      goto LABEL_34;
    }

    if (v54 != 1)
    {
      if (v51)
      {
        v21 = *(a2 + 72);
        if (v21)
        {
          v22 = 0;
          v23 = v50;
          v24 = *(a2 + 64);
          v38 = (v54 << 6) - 128;
          v39 = __p + 96;
          v25 = (v21 << 6) - 64;
          v26 = (v51 << 6) - 64;
          while (1)
          {
            *&v39[v22] = *v24;
            if (((*(*a1 + 728))(a1, v23) & 1) == 0)
            {
              goto LABEL_25;
            }

            if (v38 != v22 && v26 != v22)
            {
              v23 += 32;
              ++v24;
              v27 = v25 == v22;
              v22 += 64;
              if (!v27)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }
  }

  LODWORD(v47) = v7 - v6;
  HIDWORD(v47) = v40 - v41;
  v48 = v51;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(v4, &v47, 3);
  mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 19, DenseI32ArrayAttr);
  v29 = mlir::OperationState::addRegion(a2);
  if (*(a2 + 72) + 1 == v54)
  {
    v30 = v29;
    if ((*(*a1 + 776))(a1, v29, __p))
    {
      mlir::impl::ensureRegionTerminator(v30, v4, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::buildTerminator);
      result = (*(*a1 + 488))(a1, a2 + 112);
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v34 = (*(*a1 + 16))(a1);
  v42 = "mismatch between the number of loop-carried values and results";
  v43 = 259;
  (*(*a1 + 24))(&v47, a1, v34, &v42);
  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
  result = v35;
LABEL_34:
  if (v50 != v52)
  {
    v36 = result;
    free(v50);
    result = v36;
  }

  if (__p != v55)
  {
    v33 = result;
    free(__p);
    return v33;
  }

  return result;
}

BOOL parseBound(int a1, uint64_t a2, uint64_t a3)
{
  v70[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = "max";
  }

  else
  {
    v6 = "min";
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  v8 = (*(*a3 + 408))(a3, v6, 3);
  v9 = (*(*a3 + 32))(a3);
  v58 = *(*(*(a2 + 8) + 96) + v7);
  v68 = v70;
  v69 = 0x100000000;
  if (((*(*a3 + 720))(a3, &v68, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (v69)
  {
    if (v69 == 1)
    {
      v11 = v68;
      IndexType = mlir::Builder::getIndexType(v9, v10);
      if ((*(*a3 + 728))(a3, v11, IndexType, a2 + 16))
      {
        SymbolIdentityMap = mlir::Builder::getSymbolIdentityMap(v9, v13, v14);
        v16 = v58;
LABEL_12:
        v17 = mlir::AffineMapAttr::get(SymbolIdentityMap);
        mlir::NamedAttribute::NamedAttribute(v59, v16, v17);
        mlir::NamedAttrList::push_back(a2 + 112, v59[0], v59[1]);
        v18 = 1;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v37 = (*(*a3 + 16))(a3);
    v56[0] = "expected only one loop bound operand";
    v57 = 259;
    (*(*a3 + 24))(v59, a3, v37, v56);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v65;
        v40 = __p;
        if (v65 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v65 = v38;
        operator delete(v40);
      }

      v31 = v62;
      if (!v62)
      {
        goto LABEL_59;
      }

      v41 = v63;
      v33 = v62;
      if (v63 == v62)
      {
LABEL_58:
        v63 = v31;
        operator delete(v33);
LABEL_59:
        if (v60 != &v61)
        {
          free(v60);
        }

        goto LABEL_35;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          operator delete[](v42);
        }
      }

      while (v41 != v31);
LABEL_57:
      v33 = v62;
      goto LABEL_58;
    }

    goto LABEL_35;
  }

  v19 = (*(*a3 + 40))(a3);
  v55 = 0;
  v21 = mlir::Builder::getIndexType(v9, v20);
  AttrData = mlir::OpaqueAttr::getAttrData(&v58);
  if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a3, &v55, v21, AttrData, v23, a2 + 112))
  {
LABEL_34:
    v18 = 0;
    goto LABEL_35;
  }

  v24 = v55;
  v25 = *(*v55 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v26 = v55;
  }

  else
  {
    v26 = 0;
  }

  v54 = v26;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v44 = *(a2 + 24);
    v53 = 0;
    v18 = 0;
    if ((mlir::affine::parseDimAndSymbolList(a3, a2 + 16, &v53) & 1) == 0)
    {
      goto LABEL_35;
    }

    Value = mlir::AffineMapAttr::getValue(&v54);
    NumDims = mlir::AffineMap::getNumDims(&Value);
    if (NumDims == v53)
    {
      v46 = *(a2 + 24) - v44;
      if (mlir::AffineMap::getNumSymbols(&Value) + NumDims == v46)
      {
        v18 = 1;
        if (mlir::arith::FastMathFlagsAttr::getValue(&Value) < 2 || (v8 & 1) != 0)
        {
          goto LABEL_35;
        }

        if (a1)
        {
          v47 = "lower loop bound affine map with multiple results requires 'max' prefix";
        }

        else
        {
          v47 = "upper loop bound affine map with multiple results requires 'min' prefix";
        }

        v56[0] = v47;
        v57 = 259;
        (*(*a3 + 24))(v59, a3, v19, v56);
LABEL_72:
        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
        goto LABEL_35;
      }

      v50 = (*(*a3 + 16))(a3);
      v51 = "symbol operand count and affine map symbol count must match";
    }

    else
    {
      v50 = (*(*a3 + 16))(a3);
      v51 = "dim operand count and affine map dim count must match";
    }

    v56[0] = v51;
    v57 = 259;
    (*(*a3 + 24))(v59, a3, v50, v56);
    goto LABEL_72;
  }

  if (v25 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v24 = 0;
  }

  v56[0] = v24;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    --*(a2 + 120);
    v16 = v58;
    Int = mlir::IntegerAttr::getInt(v56);
    SymbolIdentityMap = mlir::Builder::getConstantAffineMap(v9, Int, v49);
    goto LABEL_12;
  }

  v27 = (*(*a3 + 16))(a3);
  v56[0] = "expected valid affine map representation for loop bounds";
  v57 = 259;
  (*(*a3 + 24))(v59, a3, v27, v56);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v65;
      v30 = __p;
      if (v65 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v65 = v28;
      operator delete(v30);
    }

    v31 = v62;
    if (!v62)
    {
      goto LABEL_59;
    }

    v32 = v63;
    v33 = v62;
    if (v63 == v62)
    {
      goto LABEL_58;
    }

    do
    {
      v36 = *--v32;
      v35 = v36;
      *v32 = 0;
      if (v36)
      {
        operator delete[](v35);
      }
    }

    while (v32 != v31);
    goto LABEL_57;
  }

LABEL_35:
  if (v68 != v70)
  {
    free(v68);
  }

  return v18;
}

llvm::raw_ostream *printBound(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v23 = a1;
  Value = mlir::AffineMapAttr::getValue(&v23);
  if (mlir::arith::FastMathFlagsAttr::getValue(&Value) != 1)
  {
    v10 = (*(*a5 + 16))(a5);
    if (a4)
    {
      v11 = v10;
      v12 = strlen(a4);
      v13 = v11[4];
      if (v12 <= v11[3] - v13)
      {
        if (v12)
        {
          memcpy(v13, a4, v12);
          v11[4] += v12;
        }
      }

      else
      {
        llvm::raw_ostream::write(v11, a4, v12);
      }
    }

    v14 = (*(*a5 + 16))(a5);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    goto LABEL_17;
  }

  v9 = mlir::AffineMap::getResult(&Value, 0);
  if (mlir::AffineMap::getNumDims(&Value) || mlir::AffineMap::getNumSymbols(&Value) || ((v24 = v9, mlir::arith::FastMathFlagsAttr::getValue(&v24) != 5) ? (v18 = 0) : (v18 = v9), mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v24, v18), (v21 = v24) == 0))
  {
    if (mlir::AffineMap::getNumDims(&Value) || mlir::AffineMap::getNumSymbols(&Value) != 1)
    {
      goto LABEL_17;
    }

    v24 = v9;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v24) == 7)
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v24, v9);
      if (!v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v24, 0);
      if (!v24)
      {
LABEL_17:
        (*(*a5 + 40))(a5, v23);
        NumDims = mlir::AffineMap::getNumDims(&Value);
        return printDimAndSymbolList(a2, 0, a2, a3, NumDims, a5);
      }
    }

    return (*(*a5 + 160))(a5, *(a2 + 24));
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(&v21);
  v20 = (*(*a5 + 16))(a5);
  return llvm::raw_ostream::operator<<(v20, LHS);
}

void mlir::affine::AffineForOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.for", 10, v24, a2, 0, 0);
  *v4 = &unk_1F5B14ED8;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AffineForEmptyLoopFolder]";
  v25 = 97;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

void mlir::affine::AffineForOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((v7 & (TrivialConstantTripCount == 1)) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    if (TrivialConstantTripCount)
    {
      v13 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
      if (v13)
      {
        v14 = v13 - 8;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 48);
      v16 = ((*(v14 + 56) - v15) >> 3) - 1;
      v37 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v10 = &v37;
      mlir::ValueRange::ValueRange(v38, v15 + 8, v16);
      v11 = *(a3 + 8);
      v12 = *a3;
      if (v11 < *(a3 + 12))
      {
        goto LABEL_14;
      }

LABEL_26:
      if (v12 <= &v37 && v12 + 24 * v11 > &v37)
      {
        v34 = &v38[-1] - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v11 + 1, 24);
        v12 = *a3;
        v10 = &v34[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v11 + 1, 24);
        v12 = *a3;
        v10 = &v37;
      }

LABEL_14:
      v17 = v12 + 24 * *(a3 + 8);
      v18 = *v10;
      v19 = v10[2];
      goto LABEL_25;
    }

LABEL_3:
    v8 = *(*a1 + 36);
    if (v8)
    {
      v9 = *a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    v37 = 0;
    v10 = &v37;
    mlir::ValueRange::ValueRange(v38, v9, v8);
    v11 = *(a3 + 8);
    v12 = *a3;
    if (v11 < *(a3 + 12))
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v20 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 48);
  v23 = ((*(v21 + 56) - v22) >> 3) - 1;
  v37 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v24 = &v37;
  mlir::ValueRange::ValueRange(v38, v22 + 8, v23);
  v25 = *(a3 + 8);
  v26 = *a3;
  if (v25 >= *(a3 + 12))
  {
    if (v26 <= &v37 && v26 + 24 * v25 > &v37)
    {
      v35 = &v38[-1] - v26;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v25 + 1, 24);
      v26 = *a3;
      v27 = &v35[*a3];
      goto LABEL_20;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v25 + 1, 24);
    v26 = *a3;
  }

  v27 = &v37;
LABEL_20:
  v28 = v26 + 24 * *(a3 + 8);
  v29 = *v27;
  *(v28 + 16) = v27[2];
  *v28 = v29;
  ++*(a3 + 8);
  v30 = *(*a1 + 36);
  if (v30)
  {
    v31 = *a1 - 16;
  }

  else
  {
    v31 = 0;
  }

  v37 = 0;
  mlir::ValueRange::ValueRange(v38, v31, v30);
  v32 = *(a3 + 8);
  v33 = *a3;
  if (v32 >= *(a3 + 12))
  {
    if (v33 <= &v37 && v33 + 24 * v32 > &v37)
    {
      v36 = &v38[-1] - v33;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v32 + 1, 24);
      v33 = *a3;
      v24 = &v36[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v32 + 1, 24);
      v33 = *a3;
      v24 = &v37;
    }
  }

  v17 = v33 + 24 * *(a3 + 8);
  v18 = *v24;
  v19 = v24[2];
LABEL_25:
  *(v17 + 16) = v19;
  *v17 = v18;
  ++*(a3 + 8);
}

unint64_t anonymous namespace::getTrivialConstantTripCount(uint64_t a1)
{
  v2 = a1 + 64;
  v10 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v10, &__p);
  if (v9 > 0x40)
  {
    v3 = *__p;
    operator delete[](__p);
  }

  else if (v9)
  {
    v3 = (__p << -v9) >> -v9;
  }

  else
  {
    v3 = 0;
  }

  __p = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1));
  __p = mlir::AffineMapAttr::getValue(&__p);
  if (!mlir::AffineMap::isSingleConstant(&__p))
  {
    return 0;
  }

  __p = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
  __p = mlir::AffineMapAttr::getValue(&__p);
  if (!mlir::AffineMap::isSingleConstant(&__p) || v3 < 1)
  {
    return 0;
  }

  __p = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1));
  __p = mlir::AffineMapAttr::getValue(&__p);
  SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&__p);
  __p = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
  __p = mlir::AffineMapAttr::getValue(&__p);
  v5 = mlir::AffineMap::getSingleConstantResult(&__p);
  if (v5 - SingleConstantResult < 1)
  {
    return 0;
  }

  else
  {
    return (v3 + v5 - SingleConstantResult - 1) / v3;
  }
}

uint64_t mlir::affine::AffineForOp::setLowerBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88);
  v10 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88), 3);
  mlir::NamedAttribute::NamedAttribute(&v14, v10, v12);
  v15 = 0;
  v16 = v14;
  mlir::MutableOperandRange::MutableOperandRange(v17, v8, 0, v9, &v15, 1);
  mlir::MutableOperandRange::assign(v17, a2, a3);
  if (v18 != v19)
  {
    free(v18);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineForOp::setUpperBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v10 = *(v9 + 88);
  v11 = *(v9 + 92);
  v12 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88), 3);
  mlir::NamedAttribute::NamedAttribute(&v16, v12, v14);
  v17 = 1;
  v18 = v16;
  mlir::MutableOperandRange::MutableOperandRange(v19, v8, v10, v11, &v17, 1);
  mlir::MutableOperandRange::assign(v19, a2, a3);
  if (v20 != v21)
  {
    free(v20);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::affine::AffineForOp::getConstantUpperBound(mlir::affine::AffineForOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::getSingleConstantResult(&Value);
}

uint64_t mlir::affine::AffineForOp::getLoopLowerBounds@<X0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v6[0] = mlir::AffineMapAttr::getValue(v6);
  result = mlir::AffineMap::isSingleConstant(v6);
  if (result)
  {
    v6[0] = mlir::Attribute::getContext((*this + 24));
    memset(&v6[1], 0, 24);
    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    Value = mlir::AffineMapAttr::getValue(&Value);
    SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
    result = mlir::Builder::getI64IntegerAttr(v6, SingleConstantResult);
    *(a2 + 16) = result & 0xFFFFFFFFFFFFFFFBLL;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000001;
    *(a2 + 64) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

double mlir::affine::AffineForOp::getLoopSteps@<D0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v6[1], 0, 24);
  v9 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v9, &__p);
  if (v8 > 0x40)
  {
    v4 = *__p;
    operator delete[](__p);
  }

  else if (v8)
  {
    v4 = (__p << -v8) >> -v8;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 16) = mlir::Builder::getI64IntegerAttr(v6, v4) & 0xFFFFFFFFFFFFFFFBLL;
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::affine::AffineForOp::getLoopUpperBounds@<X0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v6[0] = mlir::AffineMapAttr::getValue(v6);
  result = mlir::AffineMap::isSingleConstant(v6);
  if (result)
  {
    v6[0] = mlir::Attribute::getContext((*this + 24));
    memset(&v6[1], 0, 24);
    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    Value = mlir::AffineMapAttr::getValue(&Value);
    SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
    result = mlir::Builder::getI64IntegerAttr(v6, SingleConstantResult);
    *(a2 + 16) = result & 0xFFFFFFFFFFFFFFFBLL;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000001;
    *(a2 + 64) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::ValueRange::ValueRange(v30, *a3, *(a3 + 8));
  v19 = *a4;
  mlir::ValueRange::ValueRange(v29, *a5, *(a5 + 8));
  v20 = *a6;
  v21 = *a7;
  mlir::ValueRange::ValueRange(v27, *a8, *(a8 + 8));
  mlir::affine::AffineForOp::build(a1, v28, v30[0], v30[1], v19, v29[0], v29[1], v20, v21, v27[0], v27[1], 0, v25);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

mlir::Block *mlir::affine::getForInductionVarOwner(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = *(a1 + 16);
      if (result)
      {
        result = mlir::Block::getParent(result);
        if (result)
        {
          result = mlir::Block::getParent(*(a1 + 16));
          while (1)
          {
            v3 = *(result + 2);
            if (v3)
            {
              if (*(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
              {
                break;
              }
            }

            result = mlir::Region::getParentRegion(result);
            if (!result)
            {
              return result;
            }
          }

          v4 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
          if (v4)
          {
            v5 = v4 - 8;
          }

          else
          {
            v5 = 0;
          }

          if (**(v5 + 48) == a1)
          {
            return *(result + 2);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

__n128 mlir::affine::AffineIfOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    if (*(a3 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, 2uLL, 24);
    }

    v12 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (*v12 == v12)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = v12[1];
      if (v13)
      {
        v14 = v13 - 8;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 48);
      v16 = (*(v14 + 56) - v15) >> 3;
    }

    v33 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v17 = &v33;
    mlir::ValueRange::ValueRange(v34, v15, v16);
    v18 = *(a3 + 8);
    v19 = *a3;
    if (v18 >= *(a3 + 12))
    {
      if (v19 <= &v33 && v19 + 24 * v18 > &v33)
      {
        v32 = &v34[-1] - v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v18 + 1, 24);
        v19 = *a3;
        v17 = &v32[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v18 + 1, 24);
        v19 = *a3;
        v17 = &v33;
      }
    }

    v20 = v19 + 24 * *(a3 + 8);
    v21 = *v17;
    *(v20 + 16) = v17[2];
    *v20 = v21;
    ++*(a3 + 8);
    v5 = *a1;
    v22 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v24 = *(v22 + 24);
    v23 = v22 + 24;
    if (v24 != v23)
    {
      v25 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 32);
      if (v25)
      {
        v26 = v25 - 8;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v26 + 48);
      v28 = (*(v26 + 56) - v27) >> 3;
      v33 = v23;
      v9 = &v33;
      mlir::ValueRange::ValueRange(v34, v27, v28);
      v10 = *(a3 + 8);
      v11 = *a3;
      if (v10 >= *(a3 + 12))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v6 = *(v5 + 36);
  v7 = v5 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v33 = 0;
  v9 = &v33;
  mlir::ValueRange::ValueRange(v34, v8, v6);
  v10 = *(a3 + 8);
  v11 = *a3;
  if (v10 >= *(a3 + 12))
  {
LABEL_23:
    if (v11 <= &v33 && v11 + 24 * v10 > &v33)
    {
      v31 = &v34[-1] - v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v10 + 1, 24);
      v11 = *a3;
      v9 = &v31[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v10 + 1, 24);
      v11 = *a3;
      v9 = &v33;
    }
  }

LABEL_22:
  v29 = (v11 + 24 * *(a3 + 8));
  result = *v9;
  v29[1].n128_u64[0] = v9[1].n128_u64[0];
  *v29 = result;
  ++*(a3 + 8);
  return result;
}

BOOL mlir::affine::AffineIfOp::verify(mlir::Operation **this)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*(*this + 47) || (v65.var0 = "condition", v65.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(*this, v65), (v4 & 1) == 0))
  {
    v66.var0 = "condition";
    v66.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((v2 + 56), v66);
  }

  if (!InherentAttr)
  {
    v52 = 0;
    goto LABEL_33;
  }

  if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v5 = InherentAttr;
  }

  else
  {
    v5 = 0;
  }

  v52 = v5;
  if (!v5)
  {
LABEL_33:
    v53[0] = "requires an integer set attribute named 'condition'";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v24;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v61;
      v27 = __p;
      if (v61 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v61 = v25;
      operator delete(v27);
    }

    v28 = v58;
    if (v58)
    {
      v29 = v59;
      v30 = v58;
      if (v59 == v58)
      {
        goto LABEL_98;
      }

      do
      {
        v32 = *--v29;
        v31 = v32;
        *v29 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v29 != v28);
LABEL_97:
      v30 = v58;
LABEL_98:
      v59 = v28;
      operator delete(v30);
    }

LABEL_99:
    if (v56 != v57)
    {
      free(v56);
    }

    return v24;
  }

  Value = mlir::AffineMapAttr::getValue(&v52);
  if ((*(*this + 46) & 0x80) == 0)
  {
    if (!mlir::AffineMap::getNumInputs(&Value))
    {
      goto LABEL_11;
    }

LABEL_81:
    v53[0] = "operand count and condition integer set dimension and symbol count must match";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v24;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v61;
      v46 = __p;
      if (v61 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v61 = v44;
      operator delete(v46);
    }

    v28 = v58;
    if (v58)
    {
      v47 = v59;
      v30 = v58;
      if (v59 == v58)
      {
        goto LABEL_98;
      }

      do
      {
        v49 = *--v47;
        v48 = v49;
        *v47 = 0;
        if (v49)
        {
          operator delete[](v48);
        }
      }

      while (v47 != v28);
      goto LABEL_97;
    }

    goto LABEL_99;
  }

  v6 = *(*this + 17);
  if (v6 != mlir::AffineMap::getNumInputs(&Value))
  {
    goto LABEL_81;
  }

LABEL_11:
  v7 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    mlir::AffineMap::getNumDims(&Value);
    return 1;
  }

  v8 = *(v7 + 9);
  v9 = *(v7 + 17);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (!v9)
  {
    return 1;
  }

  v12 = 0;
  v13 = NumDims;
  for (i = (v8 + 24); ; i += 4)
  {
    v15 = *i;
    AffineScope = mlir::affine::getAffineScope(*this, v11);
    if (v12 >= v13)
    {
      break;
    }

    if ((mlir::affine::isValidDim() & 1) == 0)
    {
      v53[0] = "operand cannot be used as a dimension id";
      v54 = 259;
      mlir::OpState::emitOpError(this, v53, v55);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v61;
          v20 = __p;
          if (v61 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v61 = v18;
          operator delete(v20);
        }

        v21 = v58;
        if (v58)
        {
          v22 = v59;
          v23 = v58;
          if (v59 != v58)
          {
            do
            {
              v43 = *--v22;
              v42 = v43;
              *v22 = 0;
              if (v43)
              {
                operator delete[](v42);
              }
            }

            while (v22 != v21);
            v23 = v58;
          }

          v59 = v21;
          operator delete(v23);
        }

        if (v56 != v57)
        {
          free(v56);
        }
      }

      return v17;
    }

LABEL_16:
    if (v9 == ++v12)
    {
      return 1;
    }
  }

  if (mlir::affine::isValidSymbol(v15, AffineScope))
  {
    goto LABEL_16;
  }

  v53[0] = "operand cannot be used as a symbol";
  v54 = 259;
  mlir::OpState::emitOpError(this, v53, v55);
  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v61;
      v36 = __p;
      if (v61 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v61 = v34;
      operator delete(v36);
    }

    v37 = v58;
    if (v58)
    {
      v38 = v59;
      v39 = v58;
      if (v59 != v58)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            operator delete[](v40);
          }
        }

        while (v38 != v37);
        v39 = v58;
      }

      v59 = v37;
      operator delete(v39);
    }

    if (v56 != v57)
    {
      free(v56);
    }
  }

  return v33;
}

BOOL mlir::affine::AffineIfOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerSetAttr>(a1, &v31, 0, "condition", 9, a2 + 112))
  {
    return 0;
  }

  v30 = 0;
  if ((mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v30) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (NumDims == v30)
  {
    if (*(a2 + 6) == mlir::AffineMap::getNumSymbols(&Value) + NumDims)
    {
      if ((*(*a1 + 568))(a1, a2 + 16))
      {
        llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(a2 + 224, 2uLL);
        v5 = mlir::OperationState::addRegion(a2);
        v6 = mlir::OperationState::addRegion(a2);
        if ((*(*a1 + 776))(a1, v5, 0, 0, 0))
        {
          v7 = (*(*a1 + 32))(a1);
          mlir::impl::ensureRegionTerminator(v5, v7, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>::buildTerminator);
          if (((*(*a1 + 408))(a1, "else", 4) & 1) == 0)
          {
            return (*(*a1 + 488))(a1, a2 + 28) & 1;
          }

          if ((*(*a1 + 776))(a1, v6, 0, 0, 0))
          {
            v8 = (*(*a1 + 32))(a1);
            mlir::impl::ensureRegionTerminator(v6, v8, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>::buildTerminator);
            return (*(*a1 + 488))(a1, a2 + 28) & 1;
          }
        }
      }

      return 0;
    }

    v20 = (*(*a1 + 16))(a1);
    v27[0] = "symbol operand count and integer set symbol count must match";
    v28 = 259;
    (*(*a1 + 24))(v32, a1, v20, v27);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    v11 = result;
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
      result = v11;
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
        result = v11;
      }

      v21 = __p;
      if (__p)
      {
        v22 = v38;
        v23 = __p;
        if (v38 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v38 = v21;
        operator delete(v23);
        result = v11;
      }

      v15 = v35;
      if (!v35)
      {
        goto LABEL_47;
      }

      v24 = v36;
      v17 = v35;
      if (v36 == v35)
      {
LABEL_46:
        v36 = v15;
        operator delete(v17);
        result = v11;
LABEL_47:
        if (v33 != &v34)
        {
          free(v33);
          return v11;
        }

        return result;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v24 != v15);
LABEL_45:
      v17 = v35;
      goto LABEL_46;
    }
  }

  else
  {
    v10 = (*(*a1 + 16))(a1);
    v27[0] = "dim operand count and integer set dim count must match";
    v28 = 259;
    (*(*a1 + 24))(v32, a1, v10, v27);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    v11 = result;
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
      result = v11;
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v38;
        v14 = __p;
        if (v38 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v38 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v35;
      if (!v35)
      {
        goto LABEL_47;
      }

      v16 = v36;
      v17 = v35;
      if (v36 == v35)
      {
        goto LABEL_46;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          operator delete[](v18);
        }
      }

      while (v16 != v15);
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t mlir::affine::AffineIfOp::fold(mlir::Operation **a1)
{
  v69[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*(*a1 + 47) || (v70.var0 = "condition", v70.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(*a1, v70), (v4 & 1) == 0))
  {
    v71.var0 = "condition";
    v71.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((v2 + 56), v71);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v5 = InherentAttr;
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

  v67 = v5;
  Value = mlir::AffineMapAttr::getValue(&v67);
  v6 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    LODWORD(v8) = 0;
    v23 = 0;
    v67 = v69;
    HIDWORD(v68) = 4;
    goto LABEL_29;
  }

  v7 = *(v6 + 9);
  v8 = *(v6 + 17);
  v67 = v69;
  v68 = 0x400000000;
  if (v8 < 5)
  {
    if (!v8)
    {
      v23 = 0;
      goto LABEL_29;
    }

    v9 = v69;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v8, 8);
    v9 = v67 + 8 * v68;
    if (v8 >= 0xD && (v9 >= v7 + 32 * v8 || v7 + 24 >= v67 + 8 * v68 + 8 * v8))
    {
      v11 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v11 = 4;
      }

      v12 = v8 - v11;
      v13 = &v9[v12];
      v14 = (v7 + 88);
      v15 = (v9 + 2);
      v16 = v12;
      do
      {
        v17 = v14 - 8;
        v18 = vld4q_f64(v17);
        v19 = vld4q_f64(v14);
        *(v15 - 1) = v18;
        *v15 = v19;
        v14 += 16;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v9 = v13;
      goto LABEL_26;
    }
  }

  v12 = 0;
LABEL_26:
  v20 = v8 - v12;
  v21 = (v7 + 32 * v12 + 24);
  do
  {
    v22 = *v21;
    v21 += 4;
    *v9++ = v22;
    --v20;
  }

  while (v20);
  v23 = v68;
LABEL_29:
  LODWORD(v68) = v23 + v8;
  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v26 = mlir::ArrayAttr::getValue(&Value);
  v28 = v27;
  Context = mlir::IntegerSet::getContext(&Value);
  v65 = mlir::AffineMap::get(NumDims, NumSymbols, v26, v28, Context);
  if (v68)
  {
    v30 = v67;
    v31 = 8 * v68;
    while (1)
    {
      v63[0] = *v30;
      DefiningOp = mlir::Value::getDefiningOp(v63);
      if (DefiningOp)
      {
        if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
        {
          break;
        }
      }

      ++v30;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_35;
      }
    }

    composeAffineMapAndOperands(&v65, &v67);
    v33 = mlir::AffineMap::getNumDims(&v65);
    v34 = mlir::AffineMap::getNumSymbols(&v65);
    Results = mlir::AffineMap::getResults(&v65);
    v37 = v36;
    RawData = mlir::DenseArrayAttr::getRawData(&Value);
    Value = mlir::IntegerSet::get(v33, v34, Results, v37, RawData, v39);
  }

LABEL_35:
  mlir::affine::canonicalizeSetAndOperands(&Value, &v67);
  v40 = *a1;
  if (!*(*a1 + 47) || (v72.var0 = "condition", v72.var1 = 9, v41 = mlir::Operation::getInherentAttr(*a1, v72), (v42 & 1) == 0))
  {
    v73.var0 = "condition";
    v73.var1 = 9;
    v41 = mlir::DictionaryAttr::get((v40 + 56), v73);
  }

  if (v41)
  {
    if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    v63[0] = v43;
    v44 = mlir::AffineMapAttr::getValue(v63);
    v45 = Value;
    if (Value != v44)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v63[0] = 0;
    v48 = mlir::AffineMapAttr::getValue(v63);
    v45 = Value;
    if (Value != v48)
    {
LABEL_43:
      v46 = v67;
      v47 = v68;
      goto LABEL_60;
    }
  }

  v49 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v50 = *(v49 + 9);
    v51 = *(v49 + 17);
    v46 = v67;
    v47 = v68;
    if (v51 != v68)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v46 = v67;
    v47 = v68;
    if (v68)
    {
      goto LABEL_60;
    }
  }

  if (v47)
  {
    v52 = 0;
    v53 = (v50 + 24);
    while (v51 != v52 && v46[v52] == *v53)
    {
      ++v52;
      v53 += 4;
      if (v47 == v52)
      {
        if (((v51 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1 == v51)
        {
          goto LABEL_56;
        }

        break;
      }
    }
  }

  else if (!v51)
  {
LABEL_56:
    v54 = 0;
    if (v46 == v69)
    {
      return v54;
    }

    goto LABEL_61;
  }

LABEL_60:
  mlir::ValueRange::ValueRange(&v65, v46, v47);
  v55 = v65;
  v56 = v66;
  v57 = *a1;
  v58 = mlir::IntegerSetAttr::get(v45);
  v59 = mlir::Attribute::getContext((v57 + 24));
  v64 = 261;
  v63[0] = "condition";
  v63[1] = 9;
  v60 = mlir::StringAttr::get(v59, v63);
  mlir::Operation::setAttr(v57, v60, v58);
  mlir::Operation::setOperands(*a1, v55, v56);
  v54 = 1;
  v46 = v67;
  if (v67 != v69)
  {
LABEL_61:
    free(v46);
  }

  return v54;
}

void mlir::affine::AffineIfOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.if", 9, v44, a2, 0, 0);
  *v4 = &unk_1F5B14F78;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyDeadElse]";
  v45 = 89;
  v9 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v45;
  }

  v11 = &v44[v10];
  v12 = v45 - v10;
  if (v45 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v45 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v24 + 2), "affine.if", 9, v44, a2, 0, 0);
  *v24 = &unk_1F5B15018;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AlwaysTrueOrFalseIf]";
  v45 = 92;
  v29 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v45;
  }

  v31 = &v44[v30];
  v32 = v45 - v30;
  if (v45 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v45 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v16 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::AffineMapAttr::get(a4);
  Context = mlir::Attribute::getContext(a2);
  v19 = 261;
  v18[0] = "map";
  v18[1] = 3;
  v12 = mlir::StringAttr::get(Context, v18);
  mlir::NamedAttribute::NamedAttribute(v20, v12, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  result = mlir::AffineBinaryOpExpr::getRHS(&v16);
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    v15 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14 + 1, 8);
    result = v15;
    LODWORD(v14) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v14) = result;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  memset(v14, 0, 24);
  v13 = 0;
  v15 = 0;
  v16 = v18;
  v17 = 0x100000000;
  if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v16, &v13, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v15) && ((*(*a1 + 728))(a1, v14, v15, a2 + 16))
  {
    if (!v17)
    {
LABEL_10:
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v15);
      v10 = mlir::AsmParser::addTypeToList(a1, RHS, a2 + 64);
      v11 = v16;
      if (v16 == v18)
      {
        return v10 & 1;
      }

      goto LABEL_13;
    }

    v7 = v16;
    v8 = 32 * v17;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = 0;
  v11 = v16;
  if (v16 != v18)
  {
LABEL_13:
    free(v11);
  }

  return v10 & 1;
}

uint64_t mlir::affine::AffineLoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      v26.var0 = "map";
      v26.var1 = 3;
      InherentAttr = mlir::DictionaryAttr::get((v8 + 56), v26);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  v25.var0 = "map";
  v25.var1 = 3;
  InherentAttr = mlir::Operation::getInherentAttr(v8, v25);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = *(v11 + 9);
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v23);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v23 = 3;
  (*(*a2 + 192))(a2, Value, v18, &AttrDictionary, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = v19[4];
  if ((v19[3] - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    v19[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineLoadOp::verify(mlir::affine::AffineLoadOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v16 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == mlir::AffineBinaryOpExpr::getRHS(&v16))
  {
    mlir::affine::AffineLoadOp::verify();
    return v17[0];
  }

  else
  {
    v14 = "result type must match element type of memref";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v17);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (*v17)
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              operator delete[](v11);
            }
          }

          while (v9 != v8);
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v4;
}

uint64_t verifyMemoryOpIndexing(mlir::affine *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v48 = a5;
  v49 = a2;
  Value = mlir::AffineMapAttr::getValue(&v49);
  v10 = mlir::arith::FastMathFlagsAttr::getValue(&Value);
  mlir::ArrayAttr::getValue(&v48);
  if (v11 == v10)
  {
    if (mlir::AffineMap::getNumInputs(&Value) == a6)
    {
      AffineScope = mlir::affine::getAffineScope(a1, v12);
      if (!a4)
      {
        return 1;
      }

      v14 = AffineScope;
      for (i = (a3 + 24); ; i += 4)
      {
        v25 = *i;
        v50[0] = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::Type::isIndex(v50))
        {
          break;
        }

        if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v25, v14) & 1) == 0)
        {
          v45[0] = "index must be a valid dimension or symbol identifier";
          v46 = 259;
          mlir::Operation::emitOpError(a1, v45, v50);
          v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
          if (v50[0])
          {
            mlir::InFlightDiagnostic::report(v50);
          }

          if (v58 != 1)
          {
            return v16;
          }

          if (v57 != &v58)
          {
            free(v57);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v56;
            v28 = __p;
            if (v56 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v56 = v26;
            operator delete(v28);
          }

          v20 = v53;
          if (!v53)
          {
            goto LABEL_76;
          }

          v29 = v54;
          v22 = v53;
          if (v54 == v53)
          {
            goto LABEL_75;
          }

          do
          {
            v43 = *--v29;
            v42 = v43;
            *v29 = 0;
            if (v43)
            {
              operator delete[](v42);
            }
          }

          while (v29 != v20);
          goto LABEL_74;
        }

        v16 = 1;
        if (!--a4)
        {
          return v16;
        }
      }

      v45[0] = "index to load must have 'index' type";
      v46 = 259;
      mlir::Operation::emitOpError(a1, v45, v50);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
      if (v50[0])
      {
        mlir::InFlightDiagnostic::report(v50);
      }

      if (v58 != 1)
      {
        return v16;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v56;
        v38 = __p;
        if (v56 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v56 = v36;
        operator delete(v38);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v39 = v54;
      v22 = v53;
      if (v54 == v53)
      {
        goto LABEL_75;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          operator delete[](v40);
        }
      }

      while (v39 != v20);
      goto LABEL_74;
    }

    v45[0] = "expects as many subscripts as affine map inputs";
    v46 = 259;
    mlir::Operation::emitOpError(a1, v45, v50);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v56;
        v32 = __p;
        if (v56 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v56 = v30;
        operator delete(v32);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v33 = v54;
      v22 = v53;
      if (v54 == v53)
      {
LABEL_75:
        v54 = v20;
        operator delete(v22);
LABEL_76:
        if (v51 != &v52)
        {
          free(v51);
        }

        return v16;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          operator delete[](v34);
        }
      }

      while (v33 != v20);
LABEL_74:
      v22 = v53;
      goto LABEL_75;
    }
  }

  else
  {
    v45[0] = "affine map num results must equal memref rank";
    v46 = 259;
    mlir::Operation::emitOpError(a1, v45, v50);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v56;
        v19 = __p;
        if (v56 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v56 = v17;
        operator delete(v19);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v21 = v54;
      v22 = v53;
      if (v54 == v53)
      {
        goto LABEL_75;
      }

      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          operator delete[](v23);
        }
      }

      while (v21 != v20);
      goto LABEL_74;
    }
  }

  return v16;
}

void mlir::affine::AffineLoadOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.load", 11, v24, a2, 0, 0);
  *v4 = &unk_1F5B15088;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineLoadOp>]";
  v25 = 117;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}