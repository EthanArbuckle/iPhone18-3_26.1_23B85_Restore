uint64_t mlir::AbstractType::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 376);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*a2 + 360);
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 != a1)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  result = *(v3 + 16 * v5 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::IntegerType::get(uint64_t *a1, int a2, unsigned int a3)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 > 31)
  {
    switch(a2)
    {
      case 32:
        v7 = *(*a1 + 584);
        if (v7)
        {
          return v7;
        }

        break;
      case 64:
        v7 = *(*a1 + 592);
        if (v7)
        {
          return v7;
        }

        break;
      case 128:
        v7 = *(*a1 + 600);
        if (!v7)
        {
          break;
        }

        return v7;
      default:
        break;
    }

LABEL_2:
    v9 = a1;
    v3 = *a1;
    v8[0] = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
    v8[1] = &v9;
    v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
    v13[1] = v8;
    v12 = a2 | (a3 << 32);
    v4 = a3 ^ 0xFF51AFD7ED558CCDLL;
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * a2 + 8));
    v11 = &v12;
    v10[0] = &v12;
    v10[1] = v13;
    return mlir::StorageUniquer::getParametricStorageTypeImpl((v3 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  }

  if (a2 == 1)
  {
    v7 = *(*a1 + 560);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 == 8)
  {
    v7 = *(*a1 + 568);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 != 16)
  {
    goto LABEL_2;
  }

  v7 = *(*a1 + 576);
  if (!v7)
  {
    goto LABEL_2;
  }

  return v7;
}

uint64_t mlir::NoneType::get(mlir::NoneType *this, mlir::MLIRContext *a2)
{
  v2 = *this;
  result = *(*this + 608);
  if (!result)
  {
    return mlir::StorageUniquer::getSingletonImpl((v2 + 384), &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id);
  }

  return result;
}

void *mlir::detail::AttributeUniquer::initializeAttributeStorage(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 632);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(*a2 + 616);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != a3)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a3)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *result = v8;
  return result;
}

uint64_t mlir::BoolAttr::get(mlir::BoolAttr *this, mlir::MLIRContext *a2)
{
  v2 = 672;
  if (a2)
  {
    v2 = 680;
  }

  return *(*this + v2);
}

void *mlir::detail::DistinctAttributeUniquer::allocateStorage(uint64_t a1, uint64_t a2)
{
  v3 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get((*a1 + 816));
  v3[10] += 16;
  v4 = ((*v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = v4 + 2;
  if (*v3)
  {
    v6 = v5 > v3[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v3, 16, 16, 3);
    *result = 0;
    result[1] = a2;
  }

  else
  {
    *v3 = v5;
    *v4 = 0;
    v4[1] = a2;
    return v4;
  }

  return result;
}

void mlir::detail::StringAttrStorage::initialize(mlir::detail::StringAttrStorage *this, mlir::MLIRContext *a2)
{
  LOBYTE(v22[0]) = 46;
  v4 = llvm::StringRef::find(this + 2, v22, 1uLL, 0);
  if (v4 != -1)
  {
    v6 = *(this + 2);
    v5 = *(this + 3);
    v7 = v4 >= v5 ? *(this + 3) : v4;
    v8 = v5 >= v4 + 1 ? v4 + 1 : *(this + 3);
    *&v19 = *(this + 2);
    *(&v19 + 1) = v7;
    v20 = v6 + v8;
    v21 = v5 - v8;
    if (v7 && v5 > v4 + 1)
    {
      v22[0] = v19;
      v22[1] = v7;
      v10 = *a2;
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((*a2 + 248), v22);
      v12 = *(v10 + 248) + 24 * *(v10 + 264);
      if (v11)
      {
        v12 = v11;
      }

      v13 = *a2;
      if (v12 == *(v13 + 248) + 24 * *(v13 + 264))
      {
        *(this + 4) = 0;
      }

      else
      {
        v14 = *(v12 + 16);
        *(this + 4) = v14;
        if (v14)
        {
          return;
        }
      }

      std::recursive_mutex::lock((v13 + 720));
      v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::operator[](v13 + 792, &v19);
      v16 = *(v15 + 2);
      if (v16 >= *(v15 + 3))
      {
        v18 = v13;
        v17 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v15 + 2), v16 + 1, 8);
        v15 = v17;
        v13 = v18;
        LODWORD(v16) = *(v15 + 2);
      }

      *&(*v15)[8 * v16] = this;
      ++*(v15 + 2);
      std::recursive_mutex::unlock((v13 + 720));
    }
  }
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::operator[](uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = (v5 + 4);
        v5[3] = 0x600000000;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  {
    v13 = a3;
    v14 = a6;
    v12 = a5;
    v15 = a2;
    v16 = a4;
    mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>();
    a2 = v15;
    a4 = v16;
    a3 = v13;
    a6 = v14;
    a5 = v12;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::detail::AffineMapStorage,void>::resolveTypeID(void)::id;
  v21[0] = a2;
  v21[1] = a3;
  v8 = *a5;
  v19[0] = *a4;
  v19[1] = v8;
  v20 = *a6;
  v9 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(v20, (v20 + 8 * *(&v20 + 1)))) | ((37 * v8) << 32));
  v10 = 0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ v9 | ((37 * v19[0]) << 32));
  v17[0] = v19;
  v17[1] = v21;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, (v10 >> 31) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::AffineMap::get(mlir::AffineMap *this, mlir::MLIRContext *a2)
{
  v8 = 0uLL;
  v7 = 0;
  v6 = 0;
  v2 = *this;
  v4 = &v5;
  v5 = this;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v2 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v4, &v7, &v6, &v8);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14[0] = a3;
  DesiredBytecodeVersion = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(&v8);
  *&v13 = v14;
  *(&v13 + 1) = 1;
  v11 = a2;
  v12 = a1;
  v10 = DesiredBytecodeVersion;
  v6 = *DesiredBytecodeVersion;
  v9 = &v10;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v6 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v9, &v12, &v11, &v13);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v10 = a1;
  v9 = a2;
  v5 = *a5;
  v7 = &v8;
  v8 = a5;
  return mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>((v5 + 352), llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>, &v7, &v10, &v9, &v11);
}

uint64_t mlir::IntegerSet::get(int a1, int a2, mlir::BytecodeWriterConfig *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12 = this;
  *(&v12 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  v9 = a2;
  v10 = a1;
  DesiredBytecodeVersion = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(this);
  return mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>((*DesiredBytecodeVersion + 352), llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>::callback_fn<mlir::IntegerSet::get(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,llvm::ArrayRef<BOOL>)::$_0>, &v8, &v10, &v9, &v12, &v11);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _OWORD *a6, _OWORD *a7)
{
  {
    v20 = a5;
    v21 = a7;
    v17 = a6;
    v18 = a4;
    v22 = a3;
    v19 = a2;
    mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>();
    a2 = v19;
    a5 = v20;
    a7 = v21;
    a3 = v22;
    a4 = v18;
    a6 = v17;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::detail::IntegerSetStorage,void>::resolveTypeID(void)::id;
  v28[0] = a2;
  v28[1] = a3;
  v9 = *a5;
  v25[0] = *a4;
  v25[1] = v9;
  v10 = *a7;
  v26 = *a6;
  v27 = v10;
  v11 = (37 * v9);
  v12 = llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(v26, (v26 + 8 * *(&v26 + 1)));
  v13 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<char const>(v27, v27 + *(&v27 + 1))) | (v12 << 32));
  v14 = 0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ v13 | (v11 << 32));
  v15 = 0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ v14 | ((37 * v25[0]) << 32));
  v23[0] = v25;
  v23[1] = v28;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v8, (v15 >> 31) ^ v15, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void mlir::OperationName::UnregisteredOpModel::~UnregisteredOpModel(mlir::OperationName::UnregisteredOpModel *this)
{
  *this = &unk_1F5B05788;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(this + 4);
  }

  if (v2 != (this + 48))
  {
    free(v2);
  }
}

{
  *this = &unk_1F5B05788;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(this + 4);
  }

  if (v2 != (this + 48))
  {
    free(v2);
  }

  operator delete(this);
}

void std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(a1, a2[1]);
    v4 = a2[11];
    if (v4 == a2 + 8)
    {
      (*(*v4 + 32))(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_6:
        v5 = a2;

LABEL_8:
        operator delete(v5);
        return;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      if ((*(a2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(a2[4]);
    v5 = a2;

    goto LABEL_8;
  }
}

mlir::MLIRContextImpl *mlir::MLIRContextImpl::MLIRContextImpl(mlir::MLIRContextImpl *this, int a2)
{
  *(this + 3) = 0;
  mlir::DiagnosticEngine::DiagnosticEngine((this + 32));
  *(this + 3) = 0u;
  *(this + 40) = 0;
  *(this + 41) = a2;
  *(this + 21) = 1;
  *(this + 4) = 0u;
  *(this + 10) = this + 96;
  *(this + 11) = 0x400000000;
  *(this + 16) = this + 144;
  *(this + 136) = 0u;
  *(this + 19) = 1;
  *(this + 10) = 0u;
  *(this + 22) = 0x1000000000;
  *(this + 184) = 0u;
  *(this + 50) = 0;
  *(this + 13) = 0u;
  *(this + 28) = 0x1000000000;
  *(this + 29) = this + 248;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 15) = 0u;
  mlir::DialectRegistry::DialectRegistry((this + 272));
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 336));
  *(this + 43) = 0;
  mlir::StorageUniquer::StorageUniquer((this + 352));
  *(this + 94) = 0;
  *(this + 360) = 0u;
  mlir::StorageUniquer::StorageUniquer((this + 384));
  *(this + 102) = 0;
  *(this + 392) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 620) = 0u;
  mlir::StorageUniquer::StorageUniquer((this + 640));
  *(this + 166) = 0;
  *(this + 648) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  MEMORY[0x1E12E57B0](this + 720);
  *(this + 196) = 0;
  *(this + 792) = 0u;
  *(this + 202) = 0;
  v4 = operator new(0x88uLL);
  *(v4 + 8) = 0u;
  *v4 = &unk_1F5AF80A0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 3) = v4 + 40;
  *(v4 + 4) = 0x100000000;
  MEMORY[0x1E12E57B0](v4 + 64);
  *(v4 + 32) = 0;
  *(this + 102) = v4 + 24;
  *(this + 103) = v4;
  if (a2)
  {
    v5 = operator new(0x140uLL);
    v6 = llvm::StdThreadPool::StdThreadPool(v5, 0x100000000);
    v7 = *(this + 7);
    *(this + 7) = v6;
    if (v7)
    {
      (*(*v7 + 16))(v7);
      v6 = *(this + 7);
    }

    *(this + 6) = v6;
  }

  return this;
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AF80A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t *mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v7);
    operator delete(v8);
  }

  return a1;
}

BOOL mlir::MLIRContext::getLoadedDialects(void)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (v4)
  {
    v5 = memcmp(*(*a1 + 8), *(*a2 + 8), v4);
    if (v5)
    {
      return v5 >> 31;
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  return v2 < v3;
}

uint64_t mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get(uint64_t *a1)
{
  {
    mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get();
  }

  v2 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache(void)::cache();
  v3 = v2;
  v4 = *a1;
  v28 = *a1;
  v5 = v2 + 8;
  if (*v2)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(v2 + 16);
    if (!v6)
    {
      v23 = 0;
      goto LABEL_19;
    }

    v5 = *(v2 + 8);
  }

  v7 = v6 - 1;
  v8 = v7 & ((v4 >> 4) ^ (v4 >> 9));
  v9 = v5 + 40 * v8;
  v10 = *v9;
  if (v4 == *v9)
  {
    goto LABEL_8;
  }

  v24 = 0;
  v25 = 1;
  while (v10 != -4096)
  {
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v10 == -8192;
    }

    if (v26)
    {
      v24 = v9;
    }

    v27 = v8 + v25++;
    v8 = v27 & v7;
    v9 = v5 + 40 * v8;
    v10 = *v9;
    if (v4 == *v9)
    {
      goto LABEL_8;
    }
  }

  if (v24)
  {
    v23 = v24;
  }

  else
  {
    v23 = v9;
  }

LABEL_19:
  v9 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v2, v23, &v28);
LABEL_8:
  v11 = v9 + 8;
  result = **(v9 + 8);
  if (result)
  {
    return result;
  }

  v13 = *a1;
  std::recursive_mutex::lock((*a1 + 40));
  v14 = *a1;
  v15 = *(*a1 + 8);
  if (v15 >= *(*a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(*a1, (v9 + 8));
    std::recursive_mutex::unlock((v13 + 40));
    v21 = *a1;
    v20 = a1[1];
    if (!v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = (*v14 + 24 * v15);
    v17 = operator new(0x60uLL);
    *v17 = 0u;
    v17[1] = 0u;
    v17[3] = 0u;
    v17[2] = 0u;
    *(v17 + 2) = v17 + 2;
    *(v17 + 7) = 4;
    *(v17 + 10) = 0;
    *(v17 + 8) = v17 + 5;
    *(v17 + 9) = 0;
    *(v17 + 11) = 1;
    v18 = *(v9 + 8);
    v19 = *(v9 + 16);
    *v16 = v17;
    v16[1] = v18;
    v16[2] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
      v18 = *v11;
    }

    atomic_store(1u, v18 + 8);
    **v11 = *v16;
    ++*(v14 + 8);
    std::recursive_mutex::unlock((v13 + 40));
    v21 = *a1;
    v20 = a1[1];
    if (!v20)
    {
      goto LABEL_14;
    }
  }

  atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
LABEL_14:
  v22 = *(v9 + 32);
  *(v9 + 24) = v21;
  *(v9 + 32) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::clearExpiredEntries(v3);
  return **v11;
}

void mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::clearExpiredEntries(int *a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v7 = &v3[10 * v5];
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = (a1 + 42);
    if (v4 == a1 + 42)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v2)
  {
    v4 = a1 + 2;
    v7 = a1 + 42;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v6 = a1[4];
    v7 = &v4[10 * v6];
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 1) + 40 * a1[4];
  if (v4 == v8)
  {
    return;
  }

LABEL_17:
  v9 = v4 + 10;
  if (v4 + 10 != v7)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = atomic_load((*(v4 + 1) + 8));
    if ((v11 & 1) == 0)
    {
      v12 = *(v4 + 4);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = *(v4 + 2);
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      *v4 = -8192;
      v10 = a1[1] + 1;
      *a1 -= 2;
      a1[1] = v10;
    }

    v4 = v9;
    if (v9 == v8)
    {
      break;
    }

    v9 += 10;
    if (v4 + 10 != v7)
    {
      do
      {
LABEL_22:
        if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }

        v9 += 10;
      }

      while (v9 != v7);
    }
  }
}

int *mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1u)
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = a1 + 168;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = v3 + 40 * v5;
    }

    v7 = v3 + 40 * v5;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 168;
    if (v4 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v4 = a1 + 8;
    v7 = a1 + 168;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 40;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 + 40 * v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v4 == v8)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 24);
        if (v12)
        {
          mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState::remove(v12, **(v4 + 8));
        }

        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    do
    {
      v4 += 40;
    }

    while (v4 != v7 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v4 != v8);
LABEL_28:

  return llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(a1);
}

void mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState::remove(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  v7 = *a1;
  if (v5)
  {
    v8 = 24 * v5;
    v7 = *a1;
    while (*v7 != a2)
    {
      v7 += 3;
      v8 -= 24;
      if (!v8)
      {
        v7 = (*a1 + 24 * v5);
        break;
      }
    }
  }

  if (v7 + 3 != v6)
  {
    v9 = v7 + 4;
    do
    {
      v11 = *(v9 - 1);
      *(v9 - 1) = 0;
      v12 = *(v9 - 4);
      *(v9 - 4) = v11;
      if (v12)
      {
        v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v12);
        operator delete(v13);
      }

      v14 = *v9;
      *v9 = 0;
      v9[1] = 0;
      v15 = *(v9 - 2);
      *(v9 - 3) = v14;
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      v10 = v9 + 2;
      v9 += 3;
    }

    while (v10 != v6);
    LODWORD(v5) = *(a1 + 8);
    v4 = *a1;
  }

  v16 = v5 - 1;
  *(a1 + 8) = v16;
  mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(&v4[3 * v16]);

  std::recursive_mutex::unlock((a1 + 40));
}

int *llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1 + 2;
    v3 = 4;
  }

  else
  {
    v3 = a1[4];
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 1);
  }

  v5 = (v4 + 4);
  v6 = 40 * v3;
  do
  {
    if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v7 = v5[2];
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *v5;
      if (*v5 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v5 += 5;
    v6 -= 40;
  }

  while (v6);
  v2 = *a1;
LABEL_14:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (40 * a1[4]));
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 40 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 40 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v11 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v9 = a1;
  v10 = a3;
  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v9, v10, &v11);
  a1 = v9;
  a3 = v10;
  v4 = *v9;
  v3 = v11;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  v7 = operator new(0x28uLL);
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0;
  *v7 = &unk_1F5AF80F0;
  *(v7 + 32) = 0;
  *(v3 + 8) = v7 + 3;
  *(v3 + 16) = v7;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  return v3;
}

void llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v21[15] = *MEMORY[0x1E69E9840];
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v6 > 4)
    {
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v6;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(a1, v7, &v7[5 * v8]);

    llvm::deallocate_buffer(v7, (40 * v8));
  }

  v9 = &v18;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 32);
    v19 = *(a1 + 16);
    v20 = v17;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = v21;
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_12:
      v11 = *(a1 + 88);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  *v9 = v10;
  *(v9 + 1) = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(v9 + 3) = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 += 5;
  v11 = *(a1 + 88);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *v9 = v11;
  *(v9 + 1) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(v9 + 3) = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v9 += 5;
  v12 = *(a1 + 128);
  if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v6 >= 5)
  {
LABEL_15:
    *a1 &= ~1u;
    v13 = a1;
    v14 = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
    a1 = v13;
    *(v13 + 8) = v14;
    *(v13 + 16) = v6;
  }

LABEL_16:
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(a1, &v18, v9);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = (a1 + 42);
    v9 = (a1 + 2);
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[40 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 40;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[40 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 80;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (v15 != *v19)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (v15 == *v19)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 1) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 3) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AF80F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(uint64_t a1, unsigned __int8 **a2)
{
  v22 = 0;
  v4 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v22);
  v6 = v5;
  v7 = (v5 + 24 * *(a1 + 8));
  v8 = operator new(0x60uLL);
  *v8 = 0u;
  v8[1] = 0u;
  v8[3] = 0u;
  v8[2] = 0u;
  *(v8 + 2) = v8 + 2;
  *(v8 + 7) = 4;
  *(v8 + 10) = 0;
  *(v8 + 8) = v8 + 5;
  *(v8 + 9) = 0;
  *(v8 + 11) = 1;
  v9 = *a2;
  v10 = a2[1];
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    v9 = *a2;
  }

  atomic_store(1u, v9 + 8);
  **a2 = *v7;
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = &v11[24 * v12];
    v14 = v6;
    do
    {
      v15 = *v11;
      *v11 = 0;
      *v14 = v15;
      *(v14 + 16) = *(v11 + 2);
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      v14 += 24;
      v11 += 24;
    }

    while (v11 != v13);
    v11 = *a1;
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = -24 * v16;
      v18 = &v11[24 * v16 - 24];
      do
      {
        v18 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(v18) - 3;
        v17 += 24;
      }

      while (v17);
      v11 = *a1;
    }
  }

  v19 = v22;
  if (v11 != v4)
  {
    free(v11);
  }

  *a1 = v6;
  v20 = *(a1 + 8) + 1;
  *(a1 + 8) = v20;
  *(a1 + 12) = v19;
  return v6 + 24 * v20 - 24;
}

void *llvm::object_creator<anonymous namespace::MLIRContextOptions>::call()
{
  v0 = operator new(0x240uLL);
  bzero(v0, 0x240uLL);
  *&v4 = "Disable multi-threading within MLIR, overrides any further call to MLIRContext::enableMultiThreading()";
  *(&v4 + 1) = 102;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [23],llvm::cl::desc>(v0, "mlir-disable-threading", &v4);
  *&v4 = "When a diagnostic is emitted on an operation, also print the operation as an attached note";
  *(&v4 + 1) = 90;
  v2 = 1;
  v3 = &v2;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [28],llvm::cl::desc,llvm::cl::initializer<BOOL>>(v0 + 192, "mlir-print-op-on-diagnostic", &v4, &v3);
  *&v4 = "When a diagnostic is emitted, also print the stack trace as an attached note";
  *(&v4 + 1) = 76;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [23],llvm::cl::desc>(v0 + 384, "mlir-print-stacktrace-on-diagnostic", &v4);
  return v0;
}

void llvm::object_deleter<anonymous namespace::MLIRContextOptions>::call(char *__p)
{
  if (!__p)
  {
    return;
  }

  *(__p + 48) = &unk_1F5B3E720;
  v2 = __p + 544;
  v3 = *(__p + 71);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(__p + 48) = &unk_1F5B3E1D8;
    v4 = *(__p + 60);
    if (v4 != *(__p + 59))
    {
LABEL_6:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(__p + 48) = &unk_1F5B3E1D8;
    v4 = *(__p + 60);
    if (v4 != *(__p + 59))
    {
      goto LABEL_6;
    }
  }

  v5 = *(__p + 56);
  if (v5 != __p + 464)
  {
    free(v5);
  }

  *(__p + 24) = &unk_1F5B3E720;
  v6 = *(__p + 47);
  if (v6 == __p + 352)
  {
    (*(*v6 + 32))(v6);
    *(__p + 24) = &unk_1F5B3E1D8;
    v7 = *(__p + 36);
    if (v7 != *(__p + 35))
    {
LABEL_13:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(__p + 24) = &unk_1F5B3E1D8;
    v7 = *(__p + 36);
    if (v7 != *(__p + 35))
    {
      goto LABEL_13;
    }
  }

  v8 = *(__p + 32);
  if (v8 != __p + 272)
  {
    free(v8);
  }

  *__p = &unk_1F5B3E720;
  v9 = *(__p + 23);
  if (v9 == __p + 160)
  {
    (*(*v9 + 32))(v9);
    *__p = &unk_1F5B3E1D8;
    v10 = *(__p + 12);
    if (v10 == *(__p + 11))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *__p = &unk_1F5B3E1D8;
    v10 = *(__p + 12);
    if (v10 == *(__p + 11))
    {
      goto LABEL_21;
    }
  }

  free(v10);
LABEL_21:
  v11 = *(__p + 8);
  if (v11 != __p + 80)
  {
    free(v11);
  }

  operator delete(__p);
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [23],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [28],llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = *a4;
  *(a1 + 128) = **a4;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v13;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::MLIRContextImpl::~MLIRContextImpl(mlir::MLIRContextImpl *this)
{
  if (*(this + 92))
  {
    v2 = *(this + 94);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = *(this + 45);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 2;
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v4 = *(this + 45);
    }

    v15 = *(this + 45) + 16 * v2;
    while (v4 != v15)
    {
      v16 = v4[1];
      v17 = *(v16 + 96);
      if (v17 >= 8)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (v16 + 72);
          if ((v17 & 2) == 0)
          {
            v18 = *v18;
          }

          (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
        }

        if ((v17 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v16 + 72), *(v16 + 80));
        }
      }

      v19 = *(v16 + 8);
      v20 = *(v16 + 16);
      if (v20)
      {
        v21 = 16 * v20;
        v22 = v19 + 1;
        do
        {
          v23 = *v22;
          v22 += 2;
          free(v23);
          v21 -= 16;
        }

        while (v21);
        v19 = *(v16 + 8);
      }

      if (v19 != (v16 + 24))
      {
        free(v19);
      }

      do
      {
        v4 += 2;
      }

      while (v4 != v15 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_6:
  if (*(this + 156))
  {
    v5 = *(this + 158);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *(this + 77);
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v7 = *(this + 77);
    }

    v24 = *(this + 77) + 16 * v5;
    while (v7 != v24)
    {
      v25 = v7[1];
      v26 = *(v25 + 96);
      if (v26 >= 8)
      {
        if ((v26 & 4) != 0)
        {
          v27 = (v25 + 72);
          if ((v26 & 2) == 0)
          {
            v27 = *v27;
          }

          (*((v26 & 0xFFFFFFFFFFFFFFF8) + 16))(v27);
        }

        if ((v26 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v25 + 72), *(v25 + 80));
        }
      }

      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      if (v29)
      {
        v30 = 16 * v29;
        v31 = v28 + 1;
        do
        {
          v32 = *v31;
          v31 += 2;
          free(v32);
          v30 -= 16;
        }

        while (v30);
        v28 = *(v25 + 8);
      }

      if (v28 != (v25 + 24))
      {
        free(v28);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v24 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_11:
  v8 = *(this + 103);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(this + 202);
    v10 = *(this + 99);
    if (v9)
    {
LABEL_14:
      v11 = 80 * v9;
      v12 = v10 + 32;
      do
      {
        if (*(v12 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v13 = *(v12 - 2);
          if (v12 != v13)
          {
            free(v13);
          }
        }

        v12 += 80;
        v11 -= 80;
      }

      while (v11);
      v10 = *(this + 99);
      v14 = 80 * *(this + 202);
LABEL_60:
      llvm::deallocate_buffer(v10, v14);
    }
  }

  else
  {
    v9 = *(this + 202);
    v10 = *(this + 99);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  v14 = 0;
  goto LABEL_60;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_(uint64_t result, void *a2)
{
  v2 = ***(result + 8);
  v3 = *(v2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((*result >> 4) ^ (*result >> 9));
  v7 = *(v4 + 16 * (v5 & ((*result >> 4) ^ (*result >> 9))));
  if (v7 != *result)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *a2 = v8;
  return result;
}

const char *llvm::getTypeName<mlir::detail::AffineMapStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineMapStorage]";
  v6 = 80;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::detail::IntegerSetStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::IntegerSetStorage]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

_OWORD *llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1E096FB70;
        *(v17 + 24) = xmmword_1E096FB70;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v30);
              v23 = v30;
              *v30 = *v22;
              v24 = *(v22 + 16);
              *(v22 + 16) = 0;
              v23[2] = v24;
              ++*(a1 + 8);
              v25 = *(v22 + 16);
              *(v22 + 16) = 0;
              if (v25)
              {
                (*(*v25 + 8))(v25);
              }
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_1E096FB70;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_26:
      v29 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_1E096FB70;
        v15 = (v15 + 24);
      }

      while (v15 != v29);
      return result;
    }

    v26 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v26 & 0x1FFFFFFFFFFFFFFELL));
    v27 = result;
    v28 = v26 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v27 = xmmword_1E096FB70;
      *(v27 + 24) = xmmword_1E096FB70;
      v27 += 3;
      v28 -= 2;
    }

    while (v28);
    if (v26 != (v26 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v6 = v2 - 1;
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 80 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 80 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }
  }

  else if (v7 == -2)
  {
    v16 = 1;
    v17 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 80 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    v28 = 1;
    v29 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v30 = *result;
    if (*result == -2)
    {
      goto LABEL_27;
    }

    while (v30 != -1)
    {
      if (!*(result + 8))
      {
        return result;
      }

      do
      {
LABEL_27:
        v31 = v28 + v29;
        ++v28;
        v29 = v31 & v6;
        result = v3 + 80 * (v31 & v6);
        v30 = *result;
      }

      while (*result == -2);
    }
  }

  if (v7 != -1)
  {
    return 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v9[2] = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t *llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::OperationName::Impl>>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v19 = v10[1];
        ++v10;
        v11 = v19;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  v14 = *a5;
  *a5 = 0;
  *buffer = a3;
  buffer[1] = v14;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v15 = *v10 == -8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    do
    {
      v17 = v10[1];
      ++v10;
      v16 = v17;
      if (v17)
      {
        v18 = v16 == -8;
      }

      else
      {
        v18 = 1;
      }
    }

    while (v18);
  }

  return v10;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t result, void *a2)
{
  v2 = ***(result + 8);
  v3 = *(v2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((*result >> 4) ^ (*result >> 9));
  v7 = *(v4 + 16 * (v5 & ((*result >> 4) ^ (*result >> 9))));
  if (v7 != *result)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *a2 = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 80 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 80 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 80 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 80 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 80 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 80 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(80 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 80 * v10 - 80;
    if (v11 >= 0x50)
    {
      v16 = v11 / 0x50 + 1;
      v12 = &result[5 * (v16 & 0x7FFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1E096FB70;
        v17[5] = xmmword_1E096FB70;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 5 * v3;
        if (v3)
        {
          v21 = 80 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v30);
              v23 = v30;
              *v30 = *v22;
              v23[3] = 0x600000000;
              v23[2] = (v23 + 4);
              v24 = (v23 + 2);
              if (*(v22 + 24))
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v24, (v22 + 16));
              }

              ++*(a1 + 8);
              v25 = *(v22 + 16);
              if ((v22 + 32) != v25)
              {
                free(v25);
              }
            }

            v22 += 80;
            v21 -= 80;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (16 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[5 * v10];
    do
    {
      *v12 = xmmword_1E096FB70;
      v12 += 5;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 80 * v13 - 80;
    if (v14 < 0x50)
    {
      v15 = result;
LABEL_28:
      v29 = &result[5 * v13];
      do
      {
        *v15 = xmmword_1E096FB70;
        v15 += 5;
      }

      while (v15 != v29);
      return result;
    }

    v26 = v14 / 0x50 + 1;
    v15 = &result[5 * (v26 & 0x7FFFFFFFFFFFFFELL)];
    v27 = result;
    v28 = v26 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v27 = xmmword_1E096FB70;
      v27[5] = xmmword_1E096FB70;
      v27 += 10;
      v28 -= 2;
    }

    while (v28);
    if (v26 != (v26 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_28;
    }
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(void *a1, void *a2)
{
  v106[1] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v95 = 0;
  }

  else
  {
    v2 = HIDWORD(*a1);
    v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    *&v102 = v4;
    if (a1 + 1 == a2)
    {
      v95 = 8;
    }

    else
    {
      v5 = HIDWORD(a1[1]);
      v6 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v5);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
      *(&v102 + 1) = v7;
      if (a1 + 2 == a2)
      {
        v95 = 16;
      }

      else
      {
        v8 = HIDWORD(a1[2]);
        v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
        v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
        *&v103 = v10;
        if (a1 + 3 == a2)
        {
          v95 = 24;
        }

        else
        {
          v11 = HIDWORD(a1[3]);
          v12 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v11);
          v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
          *(&v103 + 1) = v13;
          if (a1 + 4 == a2)
          {
            v95 = 32;
          }

          else
          {
            v14 = HIDWORD(a1[4]);
            v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
            v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
            *&v104 = v16;
            if (a1 + 5 == a2)
            {
              v95 = 40;
            }

            else
            {
              v17 = HIDWORD(a1[5]);
              v18 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v17);
              v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
              *(&v104 + 1) = v19;
              if (a1 + 6 == a2)
              {
                v95 = 48;
              }

              else
              {
                v20 = HIDWORD(a1[6]);
                v21 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v20);
                v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
                *&v105 = v22;
                if (a1 + 7 == a2)
                {
                  v95 = 56;
                }

                else
                {
                  v23 = HIDWORD(a1[7]);
                  v24 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v23);
                  *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                  v25 = a1 + 8;
                  if (a1 + 8 != a2)
                  {
                    v101 = &v103;
                    v26 = v16 + 0x4BF62CB950C3753ALL;
                    v27 = v19 + v22 + v16 + 0x4BF62CB950C3753ALL;
                    v28 = v27 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                    v29 = v19 - 0x4B6D499041670D8DLL * __ROR8__(v22 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v30 = __ROR8__(v27, 44) + v26 + __ROR8__(v29 + v10 + v26 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47)), 21);
                    v31 = v4 + 0x298DF016A9F64655 + v7 + v10 + v13;
                    v32 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v33 = __ROR8__(v4 + 0x298DF016A9F64655 + v7 + v10, 44) + v4 + 0x298DF016A9F64655 + __ROR8__(v32 + v4 + 0x298DF016A9F64655 + v13 - 0xAE502812AB8D92, 21);
                    v34 = 0x544962662A7EE1A4;
                    v35 = 64;
                    while (1)
                    {
                      v45 = v25 + 1;
                      v46 = HIDWORD(*v25);
                      v47 = 0x9DDFEA08EB382D69 * ((8 * *v25 - 0xAE502812AA7333) ^ v46);
                      *&v102 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) ^ ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) >> 47));
                      v48 = v25 + 1 == a2;
                      if (v25 + 1 == a2)
                      {
                        v63 = 0;
                        v64 = &v102 + 8;
                        v65 = 8;
                      }

                      else
                      {
                        v49 = HIDWORD(v25[1]);
                        v50 = 0x9DDFEA08EB382D69 * ((8 * v25[1] - 0xAE502812AA7333) ^ v49);
                        *(&v102 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) ^ ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) >> 47));
                        v45 = v25 + 2;
                        v48 = v25 + 2 == a2;
                        if (v25 + 2 == a2)
                        {
                          v63 = 8;
                          v64 = v101;
                          v65 = 16;
                        }

                        else
                        {
                          v51 = HIDWORD(v25[2]);
                          v52 = 0x9DDFEA08EB382D69 * ((8 * v25[2] - 0xAE502812AA7333) ^ v51);
                          *&v103 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
                          v45 = v25 + 3;
                          v48 = v25 + 3 == a2;
                          if (v25 + 3 == a2)
                          {
                            v63 = 16;
                            v64 = &v103 + 8;
                            v65 = 24;
                          }

                          else
                          {
                            v53 = HIDWORD(v25[3]);
                            v54 = 0x9DDFEA08EB382D69 * ((8 * v25[3] - 0xAE502812AA7333) ^ v53);
                            *(&v103 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
                            v45 = v25 + 4;
                            v48 = v25 + 4 == a2;
                            if (v25 + 4 == a2)
                            {
                              v63 = 24;
                              v64 = &v104;
                              v65 = 32;
                            }

                            else
                            {
                              v55 = HIDWORD(v25[4]);
                              v56 = 0x9DDFEA08EB382D69 * ((8 * v25[4] - 0xAE502812AA7333) ^ v55);
                              *&v104 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) ^ ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) >> 47));
                              v45 = v25 + 5;
                              v48 = v25 + 5 == a2;
                              if (v25 + 5 == a2)
                              {
                                v63 = 32;
                                v64 = &v104 + 8;
                                v65 = 40;
                              }

                              else
                              {
                                v57 = HIDWORD(v25[5]);
                                v58 = 0x9DDFEA08EB382D69 * ((8 * v25[5] - 0xAE502812AA7333) ^ v57);
                                *(&v104 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) ^ ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) >> 47));
                                v45 = v25 + 6;
                                v48 = v25 + 6 == a2;
                                if (v25 + 6 == a2)
                                {
                                  v63 = 40;
                                  v64 = &v105;
                                  v65 = 48;
                                }

                                else
                                {
                                  v59 = HIDWORD(v25[6]);
                                  v60 = 0x9DDFEA08EB382D69 * ((8 * v25[6] - 0xAE502812AA7333) ^ v59);
                                  *&v105 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) ^ ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) >> 47));
                                  v45 = v25 + 7;
                                  v48 = v25 + 7 == a2;
                                  if (v25 + 7 != a2)
                                  {
                                    v61 = HIDWORD(v25[7]);
                                    v62 = 0x9DDFEA08EB382D69 * ((8 * v25[7] - 0xAE502812AA7333) ^ v61);
                                    *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
                                    v25 += 8;
                                    v48 = v25 == a2;
                                    v63 = 56;
                                    v64 = v106;
                                    v65 = 64;
                                    goto LABEL_28;
                                  }

                                  v63 = 48;
                                  v64 = &v105 + 8;
                                  v65 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v25 = v45;
LABEL_28:
                      if ((v65 & 0x38) != 0)
                      {
                        v66 = 56 - v63;
                        v67 = v65;
                        if (v65 != 56 - v63)
                        {
                          do
                          {
                            v74 = v67;
                            v67 = v66;
                            v66 = v74 % v66;
                          }

                          while (v66);
                          v75 = (&v102 + v67);
                          do
                          {
                            v77 = *(v75 - 1);
                            v75 = (v75 - 1);
                            v76 = v77;
                            v78 = (v75 + v65);
                            v79 = v75;
                            do
                            {
                              v80 = v79;
                              v79 = v78;
                              *v80 = *v78;
                              v81 = v65 < v106 - v78;
                              v82 = &v102 + v65 - (v106 - v78);
                              v78 = (v78 + v65);
                              if (!v81)
                              {
                                v78 = v82;
                              }
                            }

                            while (v78 != v75);
                            *v79 = v76;
                          }

                          while (v75 != &v102);
                          goto LABEL_11;
                        }

                        v68 = v63 | 7;
                        if (55 - v63 < (v63 | 7uLL))
                        {
                          v68 = 55 - v63;
                        }

                        v69 = &v102;
                        if (&v102 < (&v102 | 9) + v63 + v68)
                        {
                          v70 = v65;
                          if (v64 < &v102 + v68 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v68 >= 0x1F)
                        {
                          v84 = v68 + 1;
                          v83 = (v68 + 1) & 0x60;
                          v85 = v102;
                          v86 = v103;
                          v87 = *(v64 + 1);
                          v102 = *(&v102 + v65);
                          v103 = v87;
                          *(&v102 + v65) = v85;
                          *(v64 + 1) = v86;
                          if (v83 != 32)
                          {
                            v88 = v104;
                            v89 = v105;
                            v90 = *(v64 + 3);
                            v104 = *(v64 + 2);
                            v105 = v90;
                            *(v64 + 2) = v88;
                            *(v64 + 3) = v89;
                          }

                          if (v84 == v83)
                          {
                            goto LABEL_11;
                          }

                          if ((v84 & 0x18) == 0)
                          {
                            v69 = &v102 + v83;
                            v70 = v65 + v83;
LABEL_34:
                            v71 = v69 + 1;
                            do
                            {
                              v72 = *(v71 - 1);
                              *(v71 - 1) = *(&v102 + v70);
                              *(&v102 + v70) = v72;
                              if (v71 == v64)
                              {
                                break;
                              }

                              ++v71;
                            }

                            while (v70++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v83 = 0;
                        }

                        v91 = &v64[v83];
                        v92 = (&v102 + v83);
                        v93 = v68 - v83 + 1;
                        do
                        {
                          v94 = *v92;
                          *v92++ = *v91;
                          *v91 = v94;
                          v91 += 8;
                          v93 -= 8;
                        }

                        while (v93);
                      }

LABEL_11:
                      v36 = v29 + v31 + v34 + *(&v102 + 1);
                      v29 = *(&v104 + 1) + v31 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v33 + v105, 42);
                      v37 = v32 + v28;
                      v38 = v102 - 0x4B6D499041670D8DLL * v33;
                      v39 = v28 + v38;
                      v40 = v38 + *(&v102 + 1) + v103;
                      v41 = __ROR8__(v40, 44) + v38;
                      v42 = __ROR8__(v37, 33);
                      v43 = (0xB492B66FBE98F273 * __ROR8__(v36, 37)) ^ v30;
                      v33 = v41 + __ROR8__(v43 + v39 + *(&v103 + 1), 21);
                      v34 = 0xB492B66FBE98F273 * v42;
                      v44 = 0xB492B66FBE98F273 * v42 + v30 + v104;
                      v31 = v40 + *(&v103 + 1);
                      v30 = __ROR8__(v29 + v103 + v44 + *(&v105 + 1), 21) + v44 + __ROR8__(*(&v104 + 1) + v105 + v44, 44);
                      v28 = *(&v104 + 1) + v105 + v44 + *(&v105 + 1);
                      v35 += v65;
                      v32 = v43;
                      if (v48)
                      {
                        v96 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v31 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ v28)));
                        v97 = 0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v30)));
                        v98 = 0x9DDFEA08EB382D69 * (v97 ^ (v97 >> 47)) - 0x4B6D499041670D8DLL * ((v35 ^ (v35 >> 47)) + v42);
                        v99 = 0x9DDFEA08EB382D69 * (v98 ^ (v43 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * (v96 ^ (v96 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) ^ ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) >> 47));
                      }
                    }
                  }

                  v95 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v102, v95, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, _DWORD *a2)
{
  v2 = *a1;
  if (**a1 != *a2)
  {
    return 0;
  }

  if (v2[1] != a2[1])
  {
    return 0;
  }

  v3 = *(v2 + 2);
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  v5 = (a2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v5 = 8 * v4;
  v6 = 8 * v4 + 24;
  a2[10] += v6;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v21 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8 * v4 + 24, v6, 3);
    a1 = v21;
  }

  else
  {
    *a2 = v8;
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 0;
  *Slow = *v2;
  *(Slow + 4) = v2[1];
  *(Slow + 8) = v4;
  if (v4)
  {
    v10 = (Slow + 24);
    if ((v5 - 8) < 0x28)
    {
      v11 = v3;
      do
      {
LABEL_13:
        v18 = *v11++;
        *v10++ = v18;
      }

      while (v11 != (v3 + 8 * v4));
      goto LABEL_14;
    }

    v11 = v3;
    if (Slow - v3 + 24 < 0x20)
    {
      goto LABEL_13;
    }

    v12 = ((v5 - 8) >> 3) + 1;
    v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
    v10 = (v10 + v13);
    v11 = (v3 + v13);
    v14 = (v3 + 16);
    v15 = (Slow + 40);
    v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v19 = a1[1];
  if (*v19)
  {
    (*v19)(*(v19 + 8), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *a2 && v2[1] == *(a2 + 4))
  {
    v3 = *(v2 + 2);
    if (v3 == *(a2 + 16))
    {
      if (v3)
      {
        v4 = *(v2 + 1);
        v5 = *(a2 + 8);
        v6 = 8 * v3;
        while (*v4 == *v5)
        {
          ++v4;
          ++v5;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = *(v2 + 4);
        if (v7 == *(a2 + 32))
        {
          return memcmp(*(v2 + 3), *(a2 + 24), v7) == 0;
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::detail::IntegerSetStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::IntegerSetStorage::construct(uint64_t *a1, uint64_t a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = result + 40;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v21 = a2;
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    a2 = v21;
  }

  else
  {
    *a1 = v6;
  }

  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  v8 = *(a2 + 16);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v9 = *(a2 + 8);
  v10 = 8 * v8;
  a1[10] += 8 * v8;
  if (!*a1 || (v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v11 + v10 > a1[1]))
  {
    v22 = result;
    v23 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v8, 8 * v8, 3);
    a2 = v23;
    v11 = Slow;
    result = v22;
    v12 = v10 - 8;
    if ((v10 - 8) >= 0x18)
    {
      goto LABEL_10;
    }

LABEL_18:
    v13 = v11;
    v14 = v9;
    do
    {
LABEL_19:
      v25 = *v14++;
      *v13++ = v25;
    }

    while (v14 != (v9 + 8 * v8));
    goto LABEL_20;
  }

  *a1 = v11 + v10;
  v12 = v10 - 8;
  if ((v10 - 8) < 0x18)
  {
    goto LABEL_18;
  }

LABEL_10:
  v13 = v11;
  v14 = v9;
  if (v11 - v9 < 0x20)
  {
    goto LABEL_19;
  }

  v15 = (v12 >> 3) + 1;
  v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
  v13 = (v11 + v16);
  v14 = (v9 + v16);
  v17 = (v9 + 16);
  v18 = (v11 + 16);
  v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = *v17;
    *(v18 - 1) = *(v17 - 1);
    *v18 = v20;
    v17 += 2;
    v18 += 2;
    v19 -= 4;
  }

  while (v19);
  if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_19;
  }

LABEL_20:
  *(result + 8) = v11;
  *(result + 16) = v8;
  v26 = *(a2 + 32);
  if (!v26)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    return result;
  }

  v27 = *(a2 + 24);
  a1[10] += v26;
  v28 = *a1;
  if (*a1 && v26 + v28 <= a1[1])
  {
    *a1 = v26 + v28;
    if (v26 >= 8)
    {
      goto LABEL_24;
    }

LABEL_38:
    v29 = v28;
    v30 = v27;
    goto LABEL_39;
  }

  v40 = result;
  v28 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v26, v26, 0);
  result = v40;
  if (v26 < 8)
  {
    goto LABEL_38;
  }

LABEL_24:
  v29 = v28;
  v30 = v27;
  if ((v28 - v27) >= 0x20)
  {
    if (v26 < 0x20)
    {
      v31 = 0;
      goto LABEL_32;
    }

    v31 = v26 & 0xFFFFFFFFFFFFFFE0;
    v32 = (v27 + 16);
    v33 = (v28 + 16);
    v34 = v26 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v35 = *v32;
      *(v33 - 1) = *(v32 - 1);
      *v33 = v35;
      v32 += 2;
      v33 += 2;
      v34 -= 32;
    }

    while (v34);
    if (v26 == v31)
    {
      goto LABEL_35;
    }

    if ((v26 & 0x18) != 0)
    {
LABEL_32:
      v29 = (v28 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v30 = (v27 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v36 = (v27 + v31);
      v37 = (v28 + v31);
      v38 = v31 - (v26 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v39 = *v36++;
        *v37++ = v39;
        v38 += 8;
      }

      while (v38);
      if (v26 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v30 = (v27 + v31);
    v29 = (v28 + v31);
  }

  do
  {
LABEL_39:
    v41 = *v30++;
    *v29++ = v41;
  }

  while (v30 != (v27 + v26));
LABEL_35:
  *(result + 24) = v28;
  *(result + 32) = v26;
  return result;
}

uint64_t convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(void *a1, const char *a2, void *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, void *a6, const char *a7)
{
  v82 = *MEMORY[0x1E69E9840];
  if (mlir::detail::DenseArrayAttrImpl<int>::classof(a3))
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  v65 = v14;
  if (!v14)
  {
    a4(&v70, a5);
    if (v70)
    {
      LODWORD(v66) = 3;
      v67 = "expected ";
      v68 = 9;
      v18 = &v66;
      v19 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v66 && v72 + 24 * v73 > &v66)
        {
          v59 = &v66 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v19 = v72;
          v18 = v72 + v59;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v18 = &v66;
          v19 = v72;
        }
      }

      v20 = &v19[24 * v73];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      ++v73;
      if (v70)
      {
        v69 = 261;
        v66 = a6;
        v67 = a7;
        mlir::Diagnostic::operator<<(&v71, &v66);
        if (v70)
        {
          LODWORD(v66) = 3;
          v68 = 16;
          v22 = &v66;
          v23 = v72;
          if (v73 >= v74)
          {
            if (v72 <= &v66 && v72 + 24 * v73 > &v66)
            {
              v63 = &v66 - v72;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
              v23 = v72;
              v22 = v72 + v63;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
              v22 = &v66;
              v23 = v72;
            }
          }

          v24 = &v23[24 * v73];
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          ++v73;
          if (v70)
          {
            mlir::InFlightDiagnostic::report(&v70);
          }
        }
      }
    }

    if (v81 != 1)
    {
      return 0;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v79;
      v28 = __p;
      if (v79 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v79 = v26;
      operator delete(v28);
    }

    v29 = v76;
    if (!v76)
    {
      goto LABEL_57;
    }

    v30 = v77;
    v31 = v76;
    if (v77 == v76)
    {
      goto LABEL_56;
    }

    do
    {
      v33 = *--v30;
      v32 = v33;
      *v30 = 0;
      if (v33)
      {
        operator delete[](v32);
      }
    }

    while (v30 != v29);
    goto LABEL_55;
  }

  if (mlir::AffineBinaryOpExpr::getLHS(&v65) != a2)
  {
    a4(&v70, a5);
    if (v70)
    {
      LODWORD(v66) = 3;
      v67 = "size mismatch in attribute conversion: ";
      v68 = 39;
      v34 = &v66;
      v35 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v66 && v72 + 24 * v73 > &v66)
        {
          v60 = &v66 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v35 = v72;
          v34 = v72 + v60;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v34 = &v66;
          v35 = v72;
        }
      }

      v36 = &v35[24 * v73];
      v37 = *v34;
      *(v36 + 2) = *(v34 + 2);
      *v36 = v37;
      ++v73;
    }

    LHS = mlir::AffineBinaryOpExpr::getLHS(&v65);
    if (v70)
    {
      LODWORD(v66) = 2;
      v67 = LHS;
      v39 = &v66;
      v40 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v66 && v72 + 24 * v73 > &v66)
        {
          v61 = &v66 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v40 = v72;
          v39 = v72 + v61;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v39 = &v66;
          v40 = v72;
        }
      }

      v41 = &v40[24 * v73];
      v42 = *v39;
      *(v41 + 2) = *(v39 + 2);
      *v41 = v42;
      v43 = ++v73;
      if (v70)
      {
        LODWORD(v66) = 3;
        v67 = " vs ";
        v68 = 4;
        v44 = &v66;
        v45 = v72;
        if (v43 >= v74)
        {
          if (v72 <= &v66 && v72 + 24 * v43 > &v66)
          {
            v62 = &v66 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v43 + 1, 24);
            v45 = v72;
            v44 = v72 + v62;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v43 + 1, 24);
            v44 = &v66;
            v45 = v72;
          }
        }

        v46 = &v45[24 * v73];
        v47 = *v44;
        *(v46 + 2) = *(v44 + 2);
        *v46 = v47;
        v48 = ++v73;
        if (v70)
        {
          LODWORD(v66) = 5;
          v67 = a2;
          v49 = &v66;
          v50 = v72;
          if (v48 >= v74)
          {
            if (v72 <= &v66 && v72 + 24 * v48 > &v66)
            {
              v64 = &v66 - v72;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v48 + 1, 24);
              v50 = v72;
              v49 = v72 + v64;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v48 + 1, 24);
              v49 = &v66;
              v50 = v72;
            }
          }

          v51 = &v50[24 * v73];
          v52 = *v49;
          *(v51 + 2) = *(v49 + 2);
          *v51 = v52;
          ++v73;
          if (v70)
          {
            mlir::InFlightDiagnostic::report(&v70);
          }
        }
      }
    }

    if (v81 != 1)
    {
      return 0;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v79;
      v55 = __p;
      if (v79 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v79 = v53;
      operator delete(v55);
    }

    v29 = v76;
    if (!v76)
    {
LABEL_57:
      if (v72 != v75)
      {
        free(v72);
      }

      return 0;
    }

    v56 = v77;
    v31 = v76;
    if (v77 == v76)
    {
LABEL_56:
      v77 = v29;
      operator delete(v31);
      goto LABEL_57;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        operator delete[](v57);
      }
    }

    while (v56 != v29);
LABEL_55:
    v31 = v76;
    goto LABEL_56;
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v65);
  if (v16)
  {
    memmove(a1, v15, 4 * v16);
  }

  return 1;
}

uint64_t mlir::Operation::create(mlir::Operation *this, const mlir::OperationState *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = *this;
  v4 = *(this + 1);
  mlir::ValueRange::ValueRange(v18, *(this + 8), *(this + 18));
  mlir::ValueRange::ValueRange(v17, *(this + 2), *(this + 6));
  Context = mlir::Attribute::getContext(this);
  Dictionary = mlir::NamedAttrList::getDictionary((this + 112), Context);
  mlir::NamedAttrList::NamedAttrList(v15, Dictionary);
  v7 = *(this + 32);
  mlir::BlockRange::BlockRange(v14, *(this + 25), *(this + 52));
  mlir::ValueRange::ValueRange(v13, *(this + 28), *(this + 58));
  result = mlir::Operation::create(v3, v4, v18[0], v18[1], v17[0], v17[1], v15, v7, v14[0], v14[1], v13[0], v13[1]);
  if (v15[0] != &v16)
  {
    v10 = result;
    free(v15[0]);
    result = v10;
  }

  v11 = *(this + 31);
  if (v11)
  {
    v12 = result;
    mlir::Operation::setPropertiesFromAttribute(result, v11, 0, v9);
    return v12;
  }

  return result;
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, int a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v29[0] = a11;
  v29[1] = a12;
  v27 = a2;
  v28 = a1;
  (*(*a2 + 48))(a2, &v27, a7);
  v18 = v27;
  Context = mlir::Attribute::getContext(&v28);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  v21 = mlir::Operation::create(a1, v18, a3, a4, a5, a6, Dictionary, a8, a9, a10, a12);
  if (a12)
  {
    v22 = 0;
    do
    {
      if (mlir::RegionRange::dereference_iterator(v29, v22))
      {
        v23 = (((v21 + 64 + 16 * ((*(v21 + 44) >> 23) & 1) + ((*(v21 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 40) + 24 * v22);
        v24 = mlir::RegionRange::dereference_iterator(v29, v22);
        mlir::Region::takeBody(v23, v24);
      }

      ++v22;
    }

    while (v22 != a12);
  }

  return v21;
}

uint64_t mlir::Operation::setPropertiesFromAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 44);
  v7 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if (!BYTE3(v6))
    {
      v7 = 0;
    }

    *v7 = a2;
    return 1;
  }

  else
  {
    if (BYTE3(v6))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    return (*(*v5 + 18))(v5, v5, v9, a2, a3, a4);
  }
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, int a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v22 = a2;
  v23 = a1;
  (*(*a2 + 48))(a2, &v22, a7);
  v17 = v22;
  Context = mlir::Attribute::getContext(&v23);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  return mlir::Operation::create(a1, v17, a3, a4, a5, a6, Dictionary, a8, a9, a10, a11);
}

void mlir::Region::takeBody(mlir::Region *this, mlir::Region *a2)
{
  mlir::Region::dropAllReferences(this, a2);
  v4 = *(this + 1);
  if (v4 != this)
  {
    do
    {
      v5 = *(v4 + 1);
      v6 = (v4 - 8);
      if (v4)
      {
        v7 = v4 - 8;
      }

      else
      {
        v7 = 0;
      }

      llvm::ilist_traits<mlir::Block>::removeNodeFromList(this, v7);
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v9 = v8;
      *(v8 + 8) = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      mlir::Block::~Block(v6);
      operator delete(v10);
      v4 = v5;
    }

    while (v5 != this);
  }

  if (*a2 != a2 && a2 != this)
  {
    v11 = *(a2 + 1);
    llvm::ilist_traits<mlir::Block>::transferNodesFromList(this, a2, v11, a2);
    if (v11 != a2)
    {
      v12 = *a2;
      v13 = *v11;
      *(v13 + 8) = a2;
      *a2 = v13;
      v14 = *this;
      *(v12 + 8) = this;
      *v11 = v14;
      *(v14 + 8) = v11;
      *this = v12;
    }
  }
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *this, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v17 = a11;
  NumTrailing = mlir::OpResult::getNumTrailing(this);
  NumInline = mlir::OpResult::getNumInline(this);
  v20 = (*(*a2 + 112))(a2);
  v54 = v20 - (v20 != 0) + 8 * (v20 != 0);
  v58 = a7;
  v59 = v54 & 0xFFFFFFF8;
  v53 = a8;
  if (a6)
  {
    v21 = (v54 & 0xFFFFFFF8);
    v22 = a10;
    v23 = a6;
  }

  else
  {
    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    }

    v24 = (*(*a2 + 32))(a2, mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id);
    v23 = 0;
    v21 = v59;
    v22 = a10;
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_8;
    }
  }

  v25 = 1;
  v26 = 16;
LABEL_8:
  v27 = 32 * (v22 + v23) + 24 * a11;
  v57 = NumTrailing;
  v28 = 16 * NumInline + 24 * NumTrailing;
  v29 = (v28 - (v28 != 0) + 8 * (v28 != 0)) & 0xFFFFFFFFFFFFFFF8;
  v30 = malloc(v27 + v29 + ((v26 + v21 - (v26 + v21 != 0) + 8 * (v26 + v21 != 0)) & 0xFFFFFFFFFFFFFFF8) + 64);
  v31 = &v30[v29];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = a1;
  *(v31 + 32) = 0;
  *(v31 + 36) = this;
  v56 = v25;
  if (v25)
  {
    v32 = 0x800000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v54 | 7;
  if (v54 < 0)
  {
    v33 = (v54 | 7) + 7;
  }

  *(v31 + 40) = a10;
  *(v31 + 44) = a11 & 0x7FFFFF | ((v33 >> 3) << 24) | v32;
  *(v31 + 48) = a2;
  *(v31 + 56) = 0;
  if (v59)
  {
    v34 = v31 + 16 * (v32 >> 23) + 64;
    if (((v33 << 21) & 0xFF000000) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    (*(*a2 + 120))(a2, a2, v35, v53);
  }

  if (NumInline)
  {
    v36 = 0;
    v37 = 0;
    v38 = &v30[v29 - 8];
    do
    {
      v39 = v37 + 1;
      v40 = mlir::TypeRange::dereference_iterator(a3, v37);
      *(v38 - 1) = 0;
      *v38 = v40 & 0xFFFFFFFFFFFFFFF8 | (v36 >> 32);
      v36 += 0x100000000;
      v38 -= 2;
      v37 = v39;
    }

    while (NumInline != v39);
  }

  if (v57)
  {
    v41 = 0;
    v42 = &v30[v29 - 120];
    do
    {
      v43 = mlir::TypeRange::dereference_iterator(a3, NumInline + v41);
      *v42 = 0;
      *(v42 + 1) = v43 & 0xFFFFFFFFFFFFFFF8 | 6;
      *(v42 + 2) = v41;
      v42 -= 24;
      ++v41;
    }

    while (v57 != v41);
  }

  if (a11)
  {
    v44 = 0;
    do
    {
      mlir::Region::Region((((v31 + 64 + 16 * ((*(v31 + 44) >> 23) & 1) + ((*(v31 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40) + v44), v31);
      v44 += 24;
      --v17;
    }

    while (v17);
  }

  v45 = *(v31 + 44);
  if (v56)
  {
    mlir::detail::OperandStorage::OperandStorage();
    v45 = *(v31 + 44);
  }

  if (a10)
  {
    v46 = 0;
    v47 = ((v31 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v48 = mlir::BlockRange::dereference_iterator(a9, v46);
      *v47 = 0;
      v47[1] = 0;
      v47[2] = v31;
      v47[3] = v48;
      v50 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v48, v49);
      v51 = *v50;
      *v47 = *v50;
      v47[1] = v50;
      if (v51)
      {
        *(v51 + 8) = v47;
      }

      *v50 = v47;
      ++v46;
      v47 += 4;
    }

    while (a10 != v46);
  }

  mlir::Operation::setAttrs(v31, v58);
  return v31;
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t a2)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v18 = a2;
  if (*(a1 + 47))
  {
    v19 = v21;
    v20 = 0x300000000;
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v18);
    if (LHS > HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, LHS, 16);
    }

    Value = mlir::AffineMapAttr::getValue(&v18);
    v5 = mlir::DictionaryAttr::end(&v18);
    if (Value != v5)
    {
      v6 = v5;
      do
      {
        while (1)
        {
          v17 = *Value;
          CallableRegion = mlir::CallGraphNode::getCallableRegion(&v17);
          AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
          (*(**(a1 + 48) + 80))(*(a1 + 48), a1, AttrData, v9);
          if ((v10 & 1) == 0)
          {
            break;
          }

          v7 = mlir::CallGraphNode::getCallableRegion(&v17);
          (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v7, *(&v17 + 1));
          if (++Value == v6)
          {
            goto LABEL_11;
          }
        }

        v11 = v17;
        v12 = v20;
        if (v20 >= HIDWORD(v20))
        {
          v15 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 16);
          v11 = v15;
          v12 = v20;
        }

        *(v19 + v12) = v11;
        LODWORD(v20) = v20 + 1;
        ++Value;
      }

      while (Value != v6);
    }

LABEL_11:
    v13 = v20;
    if (mlir::AffineBinaryOpExpr::getLHS(&v18) != v13)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v18 = mlir::DictionaryAttr::get(Context, v19, v20);
    }

    if (v19 != v21)
    {
      free(v19);
    }

    a2 = v18;
  }

  *(a1 + 56) = a2;
}

void mlir::Operation::~Operation(mlir::Operation *this, uint64_t a2)
{
  v3 = *(this + 11);
  if ((v3 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v3 = *(this + 11);
  }

  v4 = this + 64;
  v5 = *(this + 10);
  if (v5)
  {
    v6 = &v4[16 * ((v3 >> 23) & 1) + 7 + ((v3 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v7 = 32 * v5;
    v8 = (v6 + 8);
    do
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = *(v8 - 1);
        *v9 = v10;
        if (v10)
        {
          *(v10 + 8) = v9;
        }
      }

      v8 += 4;
      v7 -= 32;
    }

    while (v7);
    v3 = *(this + 11);
  }

  if ((v3 & 0x7FFFFF) != 0)
  {
    v11 = ((&v4[16 * ((v3 >> 23) & 1) + 7 + ((v3 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v5);
    v12 = 24 * (v3 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v11, a2);
      v11 = (v13 + 24);
      v12 -= 24;
    }

    while (v12);
    v3 = *(this + 11);
  }

  if (HIBYTE(v3))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v4[16 * ((v3 >> 23) & 1)]);
  }
}

void mlir::Operation::destroy(mlir::Operation *this)
{
  v2 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v2);
  v4 = 16 * mlir::OpResult::getNumInline(v2) + 24 * NumTrailing;
  v5 = this - ((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this, v6);

  free(v5);
}

mlir::Block *mlir::Operation::isProperAncestor(mlir::Operation *this, Operation *ParentOp)
{
  do
  {
    result = *(ParentOp + 2);
    if (!result)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(result);
    result = (ParentOp != 0);
  }

  while (ParentOp != this && ParentOp != 0);
  return result;
}

mlir::Diagnostic *mlir::Operation::emitError@<X0>(mlir::Block **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + 3);
  mlir::emitError(a1[3], a2, a3);
  Context = mlir::Attribute::getContext(v5);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    v8 = mlir::Diagnostic::attachNote((a3 + 8), *v5, 1);
    v9 = v8;
    v10 = *(v8 + 16);
    v17 = 3;
    v18 = "see current operation: ";
    v19 = 23;
    v11 = *(v8 + 24);
    v12 = &v17;
    if (v11 >= *(v8 + 28))
    {
      if (v10 <= &v17 && v10 + 24 * v11 > &v17)
      {
        v16 = &v17 - v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 16, v8 + 32, v11 + 1, 24);
        v10 = *(v9 + 16);
        v12 = &v16[v10];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 16, v8 + 32, v11 + 1, 24);
        v10 = *(v9 + 16);
        v12 = &v17;
      }
    }

    v13 = v10 + 24 * *(v9 + 24);
    v14 = *v12;
    *(v13 + 16) = *(v12 + 2);
    *v13 = v14;
    ++*(v9 + 24);
    mlir::OpPrintingFlags::OpPrintingFlags(&v17);
    v15 = mlir::OpPrintingFlags::printGenericOpForm(&v17, 1);
    return mlir::Diagnostic::appendOp(v9, a1, v15);
  }

  return result;
}

uint64_t mlir::Operation::emitWarning@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + 3);
  mlir::emitWarning(a1[3], a2, a3);
  Context = mlir::Attribute::getContext(v5);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    v8 = mlir::Diagnostic::attachNote((a3 + 8), *v5, 1);
    v9 = *(v8 + 16);
    v17 = 3;
    v18 = "see current operation: ";
    v19 = 23;
    v10 = *(v8 + 24);
    v11 = &v17;
    if (v10 >= *(v8 + 28))
    {
      if (v9 <= &v17 && v9 + 24 * v10 > &v17)
      {
        v15 = &v17 - v9;
        v16 = v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 16, v8 + 32, v10 + 1, 24);
        v8 = v16;
        v9 = *(v16 + 16);
        v11 = &v15[v9];
      }

      else
      {
        v14 = v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 16, v8 + 32, v10 + 1, 24);
        v8 = v14;
        v9 = *(v14 + 16);
        v11 = &v17;
      }
    }

    v12 = v9 + 24 * *(v8 + 24);
    v13 = *v11;
    *(v12 + 16) = *(v11 + 2);
    *v12 = v13;
    ++*(v8 + 24);
    return mlir::Diagnostic::operator<<(v8, a1);
  }

  return result;
}

unint64_t mlir::Operation::getAttrDictionary(mlir::Operation *this)
{
  v6[9] = *MEMORY[0x1E69E9840];
  if (!*(this + 47))
  {
    return *(this + 7);
  }

  mlir::NamedAttrList::NamedAttrList(v5, *(this + 7));
  (*(**(this + 6) + 96))(*(this + 6), this, v5);
  Context = mlir::Attribute::getContext((this + 24));
  result = mlir::NamedAttrList::getDictionary(v5, Context);
  if (v5[0] != v6)
  {
    v4 = result;
    free(v5[0]);
    return v4;
  }

  return result;
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v20[6] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 47))
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    *(a1 + 56) = mlir::DictionaryAttr::get(Context, a2, a3);
    return;
  }

  v18 = v20;
  v19 = 0x300000000;
  if (a3 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, a3, 16);
    goto LABEL_6;
  }

  if (a3)
  {
LABEL_6:
    v7 = 16 * a3;
    do
    {
      while (1)
      {
        v17 = *a2;
        CallableRegion = mlir::CallGraphNode::getCallableRegion(&v17);
        AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
        (*(**(a1 + 48) + 80))(*(a1 + 48), a1, AttrData, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v8 = mlir::CallGraphNode::getCallableRegion(&v17);
        (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v8, *(&v17 + 1));
        a2 += 2;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      v12 = v17;
      v13 = v19;
      if (v19 >= HIDWORD(v19))
      {
        v15 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v19 + 1, 16);
        v12 = v15;
        v13 = v19;
      }

      *(v18 + v13) = v12;
      LODWORD(v19) = v19 + 1;
      a2 += 2;
      v7 -= 16;
    }

    while (v7);
  }

LABEL_12:
  v14 = mlir::Attribute::getContext((a1 + 24));
  *(a1 + 56) = mlir::DictionaryAttr::get(v14, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }
}

uint64_t mlir::Operation::getPropertiesAsAttribute(mlir::Operation *this)
{
  v2 = *(this + 6);
  if (v2[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return (*(*v2 + 19))(v2, this);
  }
}

uint64_t mlir::Operation::copyProperties(uint64_t a1, uint64_t a2)
{
  if (HIBYTE(*(a1 + 44)))
  {
    v3 = a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64;
  }

  else
  {
    v3 = 0;
  }

  return (*(**(a1 + 48) + 160))(*(a1 + 48), v3, a2);
}

uint64_t mlir::Operation::hashProperties(mlir::Operation *this)
{
  if (HIBYTE(*(this + 11)))
  {
    v1 = this + 16 * ((*(this + 11) >> 23) & 1) + 64;
  }

  else
  {
    v1 = 0;
  }

  return (*(**(this + 6) + 176))(*(this + 6), v1);
}

BOOL mlir::Operation::isBeforeInBlock(mlir::Operation *this, mlir::Operation *a2)
{
  if (mlir::Block::isOpOrderValid(*(this + 2)))
  {
    mlir::Operation::updateOrderIfNecessary(this, v4);
    mlir::Operation::updateOrderIfNecessary(a2, v5);
  }

  else
  {
    mlir::Block::recomputeOpOrder(*(this + 2), v4);
  }

  return *(this + 8) < *(a2 + 8);
}

uint64_t *mlir::Operation::updateOrderIfNecessary(uint64_t *this, uint64_t a2)
{
  if (*(this + 8) == -1)
  {
    v2 = this[2];
    v3 = *(v2 + 40);
    v4 = (v2 + 32);
    if (v3 == v2 + 32 || *(v3 + 8) != v4)
    {
      if (*v4 == this)
      {
        v8 = *this;
        if (v3 == this)
        {
          v8 = 0;
        }

        v9 = *(v8 + 32);
        if (v9 != -1)
        {
          *(this + 8) = v9 + 5;
          return this;
        }

        return mlir::Block::recomputeOpOrder(this[2], a2);
      }

      if (v3 != this)
      {
        v5 = *(*this + 32);
        if (v5 != -1)
        {
          v6 = this[1] == v4 ? 0 : this[1];
          v7 = *(v6 + 32);
          if (v7 != -1 && v5 + 1 != v7)
          {
            *(this + 8) = v5 + ((v7 - v5) >> 1);
            return this;
          }
        }

        return mlir::Block::recomputeOpOrder(this[2], a2);
      }

      if (this[1] == v4)
      {
        v10 = 0;
      }

      else
      {
        v10 = this[1];
      }

      v11 = *(v10 + 32);
      if (!v11 || v11 == -1)
      {
        return mlir::Block::recomputeOpOrder(this[2], a2);
      }

      if (v11 > 5)
      {
        *(this + 8) = 5;
      }

      else
      {
        *(this + 8) = v11 >> 1;
      }
    }
  }

  return this;
}

uint64_t llvm::ilist_traits<mlir::Operation>::addNodeToList(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = result - 32;
  *(a2 + 32) = -1;
  return result;
}

uint64_t llvm::ilist_traits<mlir::Operation>::transferNodesFromList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 - 32;
  result = mlir::Block::invalidateOpOrder(a1 - 32);
  if (a1 != a2)
  {
    while (a3 != a4)
    {
      *(a3 + 16) = v8;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void mlir::Operation::erase(mlir::Operation *this)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v3 = *this;
    v2 = *(this + 1);
    *v2 = *this;
    *(v3 + 8) = v2;
    *this = 0;
    *(this + 1) = 0;
  }

  v4 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v4);
  v6 = 16 * mlir::OpResult::getNumInline(v4) + 24 * NumTrailing;
  v7 = this - ((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this, v8);

  free(v7);
}

uint64_t *mlir::Operation::remove(uint64_t *this)
{
  if (this[2])
  {
    this[2] = 0;
    v2 = *this;
    v1 = this[1];
    *v1 = *this;
    *(v2 + 8) = v1;
    *this = 0;
    this[1] = 0;
  }

  return this;
}

mlir::Operation *mlir::Operation::moveBefore(mlir::Operation *this, mlir::Operation *a2)
{
  if (this != a2)
  {
    v3 = this;
    v4 = *(this + 1);
    if (v4 != a2)
    {
      v5 = *(a2 + 2);
      v6 = *(this + 2);
      this = mlir::Block::invalidateOpOrder(v5);
      if (v4 != v3 && v6 != v5)
      {
        v8 = v3;
        do
        {
          *(v8 + 2) = v5;
          v8 = *(v8 + 1);
        }

        while (v8 != v4);
      }

      if (v4 != v3)
      {
        v9 = *v4;
        v10 = *v3;
        *(v10 + 8) = v4;
        *v4 = v10;
        v11 = *a2;
        *(v9 + 8) = a2;
        *v3 = v11;
        *(v11 + 8) = v3;
        *a2 = v9;
      }
    }
  }

  return this;
}

uint64_t mlir::Operation::moveBefore(uint64_t result, mlir::Block *this, uint64_t *a3)
{
  if (result != a3)
  {
    v4 = result;
    v5 = *(result + 8);
    if (v5 != a3)
    {
      v7 = *(result + 16);
      result = mlir::Block::invalidateOpOrder(this);
      if (v7 != this && v5 != v4)
      {
        v9 = v4;
        do
        {
          v9[2] = this;
          v9 = v9[1];
        }

        while (v9 != v5);
      }

      if (v5 != v4)
      {
        v10 = *v5;
        v11 = *v4;
        *(v11 + 8) = v5;
        *v5 = v11;
        v12 = *a3;
        *(v10 + 8) = a3;
        *v4 = v12;
        *(v12 + 8) = v4;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t *mlir::Operation::moveAfter(uint64_t *this, mlir::Operation *a2)
{
  v2 = *(a2 + 1);
  v3 = this[1];
  if (v2 != this && v3 != v2)
  {
    v5 = this;
    v6 = *(a2 + 2);
    v7 = this[2];
    this = mlir::Block::invalidateOpOrder(v6);
    if (v3 != v5 && v7 != v6)
    {
      v9 = v5;
      do
      {
        v9[2] = v6;
        v9 = v9[1];
      }

      while (v9 != v3);
    }

    if (v3 != v5)
    {
      v10 = *v3;
      v11 = *v5;
      *(v11 + 8) = v3;
      *v3 = v11;
      v12 = *v2;
      *(v10 + 8) = v2;
      *v5 = v12;
      *(v12 + 8) = v5;
      *v2 = v10;
    }
  }

  return this;
}

uint64_t mlir::Operation::dropAllDefinedValueUses(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    v3 = this - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
      while (1)
      {
        v5 = *this;
        if (!*this)
        {
          break;
        }

        v6 = v5[1];
        if (v6)
        {
          v7 = *v5;
          *v6 = *v5;
          if (v7)
          {
            *(v7 + 8) = v6;
          }
        }

        *v5 = 0;
        v5[1] = 0;
        v5[3] = 0;
      }
    }
  }

  v8 = *(v1 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = ((v1 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v10 = v9 + 24 * (v8 & 0x7FFFFF);
    j = *(v9 + 8);
    if (j != v9)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v9 += 24;
      if (v9 == v10)
      {
        break;
      }

      for (j = *(v9 + 8); j != v9; j = *(j + 8))
      {
LABEL_17:
        if (j)
        {
          v12 = (j - 8);
        }

        else
        {
          v12 = 0;
        }

        this = mlir::Block::dropAllDefinedValueUses(v12);
      }
    }
  }

  return this;
}

uint64_t *mlir::Operation::setSuccessor(mlir::Operation *this, mlir::Block *a2, unsigned int a3)
{
  v3 = (((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    *v4 = *v3;
    if (v5)
    {
      *(v5 + 8) = v4;
    }
  }

  v3[3] = a2;
  result = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
  v7 = *result;
  *v3 = *result;
  v3[1] = result;
  if (v7)
  {
    *(v7 + 8) = v3;
  }

  *result = v3;
  return result;
}

uint64_t mlir::Operation::fold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 48) + 16))(*(a1 + 48), a1, a2, a3, a4))
  {
    return 1;
  }

  v9 = *(a1 + 48);
  if (*(v9 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    Values = *(v9 + 24);
    if (Values)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(v9 + 8);
  Values = mlir::SparseElementsAttr::getValues(&v12);
  if (!Values)
  {
    return 0;
  }

LABEL_6:
  result = mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(Values);
  if (result)
  {
    v11 = mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(Values);
    return (*(*v11 + 16))(v11, a1, a2, a3, a4);
  }

  return result;
}

void mlir::Operation::emitOpError(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = 257;
  mlir::Operation::emitError(a1, v24, &v29);
  if (v29)
  {
    v26 = 3;
    v27 = "'";
    v28 = 1;
    v6 = &v26;
    v7 = v31;
    if (v32 >= v33)
    {
      if (v31 <= &v26 && v31 + 24 * v32 > &v26)
      {
        v22 = &v26 - v31;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
        v7 = v31;
        v6 = (v31 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
        v6 = &v26;
        v7 = v31;
      }
    }

    v8 = &v7[24 * v32];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v32;
    if (v29)
    {
      mlir::Diagnostic::operator<<(v30, *(a1 + 48));
      if (v29)
      {
        v26 = 3;
        v27 = "' op ";
        v28 = 5;
        v10 = &v26;
        v11 = v31;
        if (v32 >= v33)
        {
          if (v31 <= &v26 && v31 + 24 * v32 > &v26)
          {
            v23 = &v26 - v31;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
            v11 = v31;
            v10 = (v31 + v23);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
            v10 = &v26;
            v11 = v31;
          }
        }

        v12 = &v11[24 * v32];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v32;
        if (v29)
        {
          mlir::Diagnostic::operator<<(v30, a2);
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v29);
  if (v29)
  {
    mlir::InFlightDiagnostic::report(&v29);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v38;
      v16 = __p;
      if (v38 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v38 = v14;
      operator delete(v16);
    }

    v17 = v35;
    if (v35)
    {
      v18 = v36;
      v19 = v35;
      if (v36 != v35)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v18 != v17);
        v19 = v35;
      }

      v36 = v17;
      operator delete(v19);
    }

    if (v31 != v34)
    {
      free(v31);
    }
  }
}

_BYTE *mlir::Operation::CloneOptions::cloneOperands(_BYTE *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *this = *this & 0xFD | v2;
  return this;
}

uint64_t mlir::OpState::parse(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v19[0] = *(v4 + 8);
    Values = mlir::SparseElementsAttr::getValues(v19);
    v4 = *(a2 + 8);
  }

  else
  {
    Values = *(v4 + 24);
  }

  v19[0] = *(v4 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v19);
  (*(*Values + 64))(v21, Values, AttrData, v7);
  if (v22 == 1)
  {
    return (v21[0])(v21[1], a1, a2);
  }

  v9 = (*(*a1 + 16))(a1);
  v19[0] = "has no custom assembly form";
  v20 = 259;
  (*(*a1 + 24))(v21, a1, v9, v19);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v28;
      v12 = __p;
      if (v28 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v28 = v10;
      operator delete(v12);
    }

    v13 = v25;
    if (v25)
    {
      v14 = v26;
      v15 = v25;
      if (v26 != v25)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v25;
      }

      v26 = v13;
      operator delete(v15);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v8;
}

uint64_t mlir::OpState::print(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v14[0] = *(v8 + 8);
    Values = mlir::SparseElementsAttr::getValues(v14);
  }

  else
  {
    Values = *(v8 + 24);
  }

  (*(*Values + 72))(v14);
  if (v15 < 8)
  {
    result = (*(*a2 + 216))(a2, a1, 1);
    v12 = v15;
    if (v15 < 8)
    {
      return result;
    }
  }

  else
  {
    mlir::OpState::printOpName(a1, a2, a3, a4);
    if ((v15 & 2) != 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = v14[0];
    }

    result = (*(v15 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2);
    v12 = v15;
    if (v15 < 8)
    {
      return result;
    }
  }

  if ((v12 & 4) != 0)
  {
    if ((v12 & 2) != 0)
    {
      v13 = v14;
    }

    else
    {
      v13 = v14[0];
    }

    result = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
  }

  if ((v12 & 2) == 0)
  {
    llvm::deallocate_buffer(v14[0], v14[1]);
  }

  return result;
}

void *mlir::OpState::printOpName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78[0] = *(*(a1 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v78);
  v9 = v8;
  v79 = 773;
  v78[0] = a3;
  v78[1] = a4;
  v78[2] = ".";
  llvm::Twine::str(v78, &v80);
  v10 = SHIBYTE(v80.__r_.__value_.__r.__words[2]);
  v11 = v80.__r_.__value_.__r.__words[0];
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v80;
  }

  else
  {
    v12 = v80.__r_.__value_.__r.__words[0];
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v80.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v80.__r_.__value_.__l.__size_;
  }

  if (v9 < size || size && memcmp(AttrData, v12, size))
  {
    if (v10 < 0)
    {
      operator delete(v11);
    }

    goto LABEL_37;
  }

  if (v9)
  {
    if (v9 < 8)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_26;
    }

    if (v9 >= 0x20)
    {
      v17 = 0uLL;
      v18.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v18.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v19 = vdupq_n_s64(1uLL);
      v14 = v9 & 0xFFFFFFFFFFFFFFE0;
      v20 = 0uLL;
      v21 = AttrData + 1;
      v22 = 0uLL;
      v23 = v9 & 0xFFFFFFFFFFFFFFE0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37 = vceqq_s8(v21[-1], v18);
        v38 = vmovl_u8(*v37.i8);
        v39 = vmovl_high_u8(v37);
        v40 = vmovl_high_u16(v39);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v28 = vaddq_s64(v28, vandq_s8(v41, v19));
        v42 = vmovl_high_u16(v38);
        v43 = vmovl_u16(*v39.i8);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v27 = vaddq_s64(v27, vandq_s8(v41, v19));
        v41.i64[0] = v43.u32[2];
        v41.i64[1] = v43.u32[3];
        v26 = vaddq_s64(v26, vandq_s8(v41, v19));
        v41.i64[0] = v42.u32[2];
        v41.i64[1] = v42.u32[3];
        v24 = vaddq_s64(v24, vandq_s8(v41, v19));
        v44 = vmovl_u16(*v38.i8);
        v41.i64[0] = v43.u32[0];
        v41.i64[1] = v43.u32[1];
        v25 = vaddq_s64(v25, vandq_s8(v41, v19));
        v41.i64[0] = v44.u32[0];
        v41.i64[1] = v44.u32[1];
        v45 = vandq_s8(v41, v19);
        v41.i64[0] = v44.u32[2];
        v41.i64[1] = v44.u32[3];
        v46 = vandq_s8(v41, v19);
        v41.i64[0] = v42.u32[0];
        v41.i64[1] = v42.u32[1];
        v47 = vceqq_s8(*v21, v18);
        v22 = vaddq_s64(v22, vandq_s8(v41, v19));
        v48 = vmovl_u8(*v47.i8);
        v49 = vmovl_high_u8(v47);
        v20 = vaddq_s64(v20, v46);
        v50 = vmovl_high_u16(v49);
        v17 = vaddq_s64(v17, v45);
        v41.i64[0] = v50.u32[2];
        v41.i64[1] = v50.u32[3];
        v36 = vaddq_s64(v36, vandq_s8(v41, v19));
        v51 = vmovl_high_u16(v48);
        v52 = vmovl_u16(*v49.i8);
        v41.i64[0] = v50.u32[0];
        v41.i64[1] = v50.u32[1];
        v35 = vaddq_s64(v35, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[2];
        v41.i64[1] = v52.u32[3];
        v34 = vaddq_s64(v34, vandq_s8(v41, v19));
        v41.i64[0] = v51.u32[2];
        v41.i64[1] = v51.u32[3];
        v32 = vaddq_s64(v32, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[0];
        v41.i64[1] = v52.u32[1];
        v33 = vaddq_s64(v33, vandq_s8(v41, v19));
        v53 = vmovl_u16(*v48.i8);
        v41.i64[0] = v51.u32[0];
        v41.i64[1] = v51.u32[1];
        v31 = vaddq_s64(v31, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[2];
        v41.i64[1] = v53.u32[3];
        v30 = vaddq_s64(v30, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[0];
        v41.i64[1] = v53.u32[1];
        v29 = vaddq_s64(v29, vandq_s8(v41, v19));
        v21 += 2;
        v23 -= 32;
      }

      while (v23);
      v15 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v29, v17), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v22), vaddq_s64(v35, v27))), vaddq_s64(vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26)), vaddq_s64(vaddq_s64(v32, v24), vaddq_s64(v36, v28)))));
      if (v9 == v14)
      {
        goto LABEL_30;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_26:
        v70 = v9 - v14;
        v71 = &AttrData->u8[v14];
        do
        {
          v72 = *v71++;
          if (v72 == 46)
          {
            ++v15;
          }

          --v70;
        }

        while (v70);
LABEL_30:
        v16 = v15 == 1;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v54 = v14;
    v14 = v9 & 0xFFFFFFFFFFFFFFF8;
    v55 = 0uLL;
    v56 = v15;
    v57 = &AttrData->i8[v54];
    v58 = v54 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v59 = vdupq_n_s64(1uLL);
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = *v57++;
      v63 = vmovl_u8(vceq_s8(v62, 0x2E2E2E2E2E2E2E2ELL));
      v64 = vmovl_u16(*v63.i8);
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vandq_s8(v65, v59);
      v65.i64[0] = v64.u32[2];
      v65.i64[1] = v64.u32[3];
      v67 = vandq_s8(v65, v59);
      v68 = vmovl_high_u16(v63);
      v65.i64[0] = v68.u32[0];
      v65.i64[1] = v68.u32[1];
      v69 = vandq_s8(v65, v59);
      v65.i64[0] = v68.u32[2];
      v65.i64[1] = v68.u32[3];
      v61 = vaddq_s64(v61, vandq_s8(v65, v59));
      v60 = vaddq_s64(v60, v69);
      v55 = vaddq_s64(v55, v67);
      v56 = vaddq_s64(v56, v66);
      v58 += 8;
    }

    while (v58);
    v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v56, v60), vaddq_s64(v55, v61)));
    if (v9 == v14)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  operator delete(v11);
LABEL_32:
  if (v9 >= a4 + 1)
  {
    v73 = a4 + 1;
  }

  else
  {
    v73 = v9;
  }

  v74 = (AttrData + v73);
  v75 = v9 - v73;
  if (v16)
  {
    AttrData = v74;
    v9 = v75;
  }

LABEL_37:
  result = (*(*a2 + 16))(a2);
  if (v9 > result[3] - result[4])
  {
    return llvm::raw_ostream::write(result, AttrData->i8, v9);
  }

  if (v9)
  {
    v77 = result;
    result = memcpy(result[4], AttrData, v9);
    v77[4] += v9;
  }

  return result;
}

uint64_t mlir::OpTrait::impl::foldIdempotent(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 46) & 0x80) == 0 || *(this + 17) != 1)
  {
    v4 = *(this + 9);
    v5 = *(v4 + 24);
    if (v5 != *(v4 + 56))
    {
      return 0;
    }

    return v5 | 4;
  }

  v6 = *(*(this + 9) + 24);
  result = mlir::Value::getDefiningOp(&v6);
  if (!result)
  {
    return result;
  }

  if (*(this + 6) == *(result + 48))
  {
    v5 = *(*(this + 9) + 24);
    return v5 | 4;
  }

  return 0;
}

BOOL mlir::OpTrait::impl::verifyOneOperand(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, &v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires a single operand";
    v21 = 25;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyZeroRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, &v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires zero regions";
    v21 = 21;
    v2 = &v19;
    v3 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = v23;
        v2 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v2 = &v19;
        v3 = v23;
      }
    }

    v4 = &v3[24 * v24];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v24;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyOneRegion(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, &v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires one region";
    v21 = 19;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFF) == a2)
  {
    return 1;
  }

  v3 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, &v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v4 = &v32;
    v5 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v5 = v36;
        v4 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = &v32;
        v5 = v36;
      }
    }

    v6 = &v5[24 * v37];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v3;
      v9 = &v32;
      v10 = v36;
      if (v8 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v8 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v10 = v36;
          v9 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v9 = &v32;
          v10 = v36;
        }
      }

      v11 = &v10[24 * v37];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " regions";
        v34 = 8;
        v14 = &v32;
        v15 = v36;
        if (v13 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v13 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v15 = v36;
            v14 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v14 = &v32;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v37;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(this + 11) & 0x7FFFFFu) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, &v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v3 = &v32;
    v4 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = v36;
        v3 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v3 = &v32;
        v4 = v36;
      }
    }

    v5 = &v4[24 * v37];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    v7 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v2;
      v8 = &v32;
      v9 = v36;
      if (v7 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v7 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v9 = v36;
          v8 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v8 = &v32;
          v9 = v36;
        }
      }

      v10 = &v9[24 * v37];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " or more regions";
        v34 = 16;
        v13 = &v32;
        v14 = v36;
        if (v12 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v12 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v14 = v36;
            v13 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v13 = &v32;
            v14 = v36;
          }
        }

        v15 = &v14[24 * v37];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v37;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v17;
}

BOOL mlir::OpTrait::impl::verifyZeroResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!*(this + 9))
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, &v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires zero results";
    v21 = 21;
    v2 = &v19;
    v3 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = v23;
        v2 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v2 = &v19;
        v3 = v23;
      }
    }

    v4 = &v3[24 * v24];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v24;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyOneResult(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 9) == 1)
  {
    return 1;
  }

  v18 = 257;
  mlir::Operation::emitOpError(this, &v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v20 = "requires one result";
    v21 = 19;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 9) == a2)
  {
    return 1;
  }

  v3 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, &v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v4 = &v32;
    v5 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v5 = v36;
        v4 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = &v32;
        v5 = v36;
      }
    }

    v6 = &v5[24 * v37];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v3;
      v9 = &v32;
      v10 = v36;
      if (v8 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v8 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v10 = v36;
          v9 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v8 + 1, 24);
          v9 = &v32;
          v10 = v36;
        }
      }

      v11 = &v10[24 * v37];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " results";
        v34 = 8;
        v14 = &v32;
        v15 = v36;
        if (v13 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v13 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v15 = v36;
            v14 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v13 + 1, 24);
            v14 = &v32;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v37;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 9) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v31 = 257;
  mlir::Operation::emitOpError(this, &v30, v35);
  if (v35[0])
  {
    v32 = 3;
    v33 = "expected ";
    v34 = 9;
    v3 = &v32;
    v4 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v32 && v36 + 24 * v37 > &v32)
      {
        v27 = &v32 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v4 = v36;
        v3 = (v36 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v3 = &v32;
        v4 = v36;
      }
    }

    v5 = &v4[24 * v37];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    v7 = ++v37;
    if (v35[0])
    {
      v32 = 5;
      v33 = v2;
      v8 = &v32;
      v9 = v36;
      if (v7 >= v38)
      {
        if (v36 <= &v32 && v36 + 24 * v7 > &v32)
        {
          v28 = &v32 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v9 = v36;
          v8 = (v36 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v7 + 1, 24);
          v8 = &v32;
          v9 = v36;
        }
      }

      v10 = &v9[24 * v37];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v37;
      if (v35[0])
      {
        v32 = 3;
        v33 = " or more results";
        v34 = 16;
        v13 = &v32;
        v14 = v36;
        if (v12 >= v38)
        {
          if (v36 <= &v32 && v36 + 24 * v12 > &v32)
          {
            v29 = &v32 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v14 = v36;
            v13 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v12 + 1, 24);
            v13 = &v32;
            v14 = v36;
          }
        }

        v15 = &v14[24 * v37];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v37;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v21 = v40;
    if (v40)
    {
      v22 = v41;
      v23 = v40;
      if (v41 != v40)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v40;
      }

      v41 = v21;
      operator delete(v23);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v17;
}

BOOL mlir::OpTrait::impl::verifyIsTerminator(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2 && *(v2 + 32) == this)
  {
    return 1;
  }

  v13 = "must be the last operation in the parent block";
  v14 = 259;
  mlir::Operation::emitOpError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            operator delete[](v10);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::OpTrait::impl::verifyZeroSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(this + 10))
  {
    return 1;
  }

  v19 = "requires 0 successors but found ";
  v20 = 259;
  mlir::Operation::emitOpError(this, &v19, v23);
  if (v23[0])
  {
    v3 = *(this + 10);
    v21 = 5;
    v22 = v3;
    v4 = &v21;
    v5 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v21 && v24 + 24 * v25 > &v21)
      {
        v18 = &v21 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v5 = v24;
        v4 = (v24 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v4 = &v21;
        v5 = v24;
      }
    }

    v6 = &v5[24 * v25];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v25;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v31;
      v11 = __p;
      if (v31 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v31 = v9;
      operator delete(v11);
    }

    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            operator delete[](v15);
          }
        }

        while (v13 != v12);
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return v8;
}

BOOL mlir::OpTrait::impl::verifyOneSuccessor(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 10) == 1)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v19 = "requires 1 successor but found ";
    v20 = 259;
    mlir::Operation::emitOpError(this, &v19, v23);
    if (v23[0])
    {
      v4 = *(this + 10);
      v21 = 5;
      v22 = v4;
      v5 = &v21;
      v6 = v24;
      if (v25 >= v26)
      {
        if (v24 <= &v21 && v24 + 24 * v25 > &v21)
        {
          v18 = &v21 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
          v6 = v24;
          v5 = (v24 + v18);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
          v5 = &v21;
          v6 = v24;
        }
      }

      v7 = &v6[24 * v25];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      ++v25;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v31;
        v12 = __p;
        if (v31 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v31 = v10;
        operator delete(v12);
      }

      v13 = v28;
      if (v28)
      {
        v14 = v29;
        v15 = v28;
        if (v29 != v28)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              operator delete[](v16);
            }
          }

          while (v14 != v13);
          v15 = v28;
        }

        v29 = v13;
        operator delete(v15);
      }

      if (v24 != v27)
      {
        free(v24);
      }
    }

    return v9;
  }
}

BOOL verifyTerminatorSuccessors(mlir::Operation *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (v2)
  {
    Parent = mlir::Block::getParent(v2);
    mlir::SuccessorRange::SuccessorRange(&v18, a1);
    v4 = v19;
    if (!v19)
    {
      return 1;
    }
  }

  else
  {
    Parent = 0;
    mlir::SuccessorRange::SuccessorRange(&v18, a1);
    v4 = v19;
    if (!v19)
    {
      return 1;
    }
  }

  for (i = (v18 + 24); mlir::Block::getParent(*i) == Parent; i += 4)
  {
    if (!--v4)
    {
      return 1;
    }
  }

  v16 = "reference to block defined in another region";
  v17 = 259;
  mlir::Operation::emitError(a1, &v16, &v18);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            operator delete[](v14);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(this + 10) == a2)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v3 = a2;
    v32 = "requires ";
    v33 = 259;
    mlir::Operation::emitOpError(this, &v32, v37);
    if (v37[0])
    {
      v34 = 5;
      v35 = v3;
      v5 = &v34;
      v6 = v38;
      if (v39 >= v40)
      {
        if (v38 <= &v34 && v38 + 24 * v39 > &v34)
        {
          v29 = &v34 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v6 = v38;
          v5 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v5 = &v34;
          v6 = v38;
        }
      }

      v7 = &v6[24 * v39];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      v9 = ++v39;
      if (v37[0])
      {
        v34 = 3;
        v35 = " successors but found ";
        v36 = 22;
        v10 = &v34;
        v11 = v38;
        if (v9 >= v40)
        {
          if (v38 <= &v34 && v38 + 24 * v9 > &v34)
          {
            v30 = &v34 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
            v11 = v38;
            v10 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
            v10 = &v34;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        v14 = ++v39;
        if (v37[0])
        {
          v15 = *(this + 10);
          v34 = 5;
          v35 = v15;
          v16 = &v34;
          v17 = v38;
          if (v14 >= v40)
          {
            if (v38 <= &v34 && v38 + 24 * v14 > &v34)
            {
              v31 = &v34 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
              v17 = v38;
              v16 = (v38 + v31);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v14 + 1, 24);
              v16 = &v34;
              v17 = v38;
            }
          }

          v18 = &v17[24 * v39];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v39;
        }
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v45;
        v23 = __p;
        if (v45 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v45 = v21;
        operator delete(v23);
      }

      v24 = v42;
      if (v42)
      {
        v25 = v43;
        v26 = v42;
        if (v43 != v42)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              operator delete[](v27);
            }
          }

          while (v25 != v24);
          v26 = v42;
        }

        v43 = v24;
        operator delete(v26);
      }

      if (v38 != v41)
      {
        free(v38);
      }
    }

    return v20;
  }
}

BOOL mlir::OpTrait::impl::verifyAtLeastNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(this + 10) >= a2)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v2 = a2;
    v32 = "requires at least ";
    v33 = 259;
    mlir::Operation::emitOpError(this, &v32, v37);
    if (v37[0])
    {
      v34 = 5;
      v35 = v2;
      v4 = &v34;
      v5 = v38;
      if (v39 >= v40)
      {
        if (v38 <= &v34 && v38 + 24 * v39 > &v34)
        {
          v29 = &v34 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v5 = v38;
          v4 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v4 = &v34;
          v5 = v38;
        }
      }

      v6 = &v5[24 * v39];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      v8 = ++v39;
      if (v37[0])
      {
        v34 = 3;
        v35 = " successors but found ";
        v36 = 22;
        v9 = &v34;
        v10 = v38;
        if (v8 >= v40)
        {
          if (v38 <= &v34 && v38 + 24 * v8 > &v34)
          {
            v30 = &v34 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v8 + 1, 24);
            v10 = v38;
            v9 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v8 + 1, 24);
            v9 = &v34;
            v10 = v38;
          }
        }

        v11 = &v10[24 * v39];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        v13 = ++v39;
        if (v37[0])
        {
          v14 = *(this + 10);
          v34 = 5;
          v35 = v14;
          v15 = &v34;
          v16 = v38;
          if (v13 >= v40)
          {
            if (v38 <= &v34 && v38 + 24 * v13 > &v34)
            {
              v31 = &v34 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v13 + 1, 24);
              v16 = v38;
              v15 = (v38 + v31);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v13 + 1, 24);
              v15 = &v34;
              v16 = v38;
            }
          }

          v17 = &v16[24 * v39];
          v18 = *v15;
          *(v17 + 2) = *(v15 + 2);
          *v17 = v18;
          ++v39;
        }
      }
    }

    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v45;
        v22 = __p;
        if (v45 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v45 = v20;
        operator delete(v22);
      }

      v23 = v42;
      if (v42)
      {
        v24 = v43;
        v25 = v42;
        if (v43 != v42)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              operator delete[](v26);
            }
          }

          while (v24 != v23);
          v25 = v42;
        }

        v43 = v23;
        operator delete(v25);
      }

      if (v38 != v41)
      {
        free(v38);
      }
    }

    return v19;
  }
}

uint64_t mlir::OpTrait::impl::verifyValueSizeAttr(uint64_t a1, char *a2, unint64_t a3, char *a4, const char *a5, const char *a6)
{
  v115 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 47) || (v12 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, a2, a3), (v13 & 1) == 0))
  {
    v116.var0 = a2;
    v116.var1 = a3;
    v12 = mlir::DictionaryAttr::get((a1 + 56), v116);
  }

  if (!v12)
  {
    v98 = 0;
    goto LABEL_16;
  }

  v14 = v12;
  if (mlir::detail::DenseArrayAttrImpl<int>::classof(v12))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v98 = v15;
  if (!v15)
  {
LABEL_16:
    v96[0] = "requires dense i32 array attribute '";
    v97 = 259;
    mlir::Operation::emitOpError(a1, v96, &v103);
    if (v103)
    {
      v102 = 261;
      v99 = a2;
      v100 = a3;
      mlir::Diagnostic::operator<<(v104, &v99);
      if (v103)
      {
        LODWORD(v99) = 3;
        v100 = "'";
        v101 = 1;
        v22 = &v99;
        v23 = v105;
        if (v106 >= v107)
        {
          if (v105 <= &v99 && v105 + 24 * v106 > &v99)
          {
            v88 = &v99 - v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v23 = v105;
            v22 = (v105 + v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v22 = &v99;
            v23 = v105;
          }
        }

        v24 = &v23[24 * v106];
        v25 = *v22;
        *(v24 + 2) = v22[2];
        *v24 = v25;
        ++v106;
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
    if (v103)
    {
      mlir::InFlightDiagnostic::report(&v103);
    }

    if (v114 == 1)
    {
      if (v113 != &v114)
      {
        free(v113);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v112;
        v29 = __p;
        if (v112 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v112 = v27;
        operator delete(v29);
      }

      v30 = v109;
      if (!v109)
      {
        goto LABEL_96;
      }

      v31 = v110;
      v32 = v109;
      if (v110 == v109)
      {
        goto LABEL_95;
      }

      do
      {
        v34 = *--v31;
        v33 = v34;
        *v31 = 0;
        if (v34)
        {
          operator delete[](v33);
        }
      }

      while (v31 != v30);
      goto LABEL_94;
    }

    return v26;
  }

  v16 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v98);
  if (v17)
  {
    v18 = 0;
    while ((*(v16 + v18) & 0x80000000) == 0)
    {
      v18 += 4;
      if (4 * v17 == v18)
      {
        v19 = (v17 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v19 <= 6)
        {
          v20 = 0;
          v21 = v16;
          goto LABEL_61;
        }

        v46 = v19 + 1;
        v47 = (v19 + 1) & 0x7FFFFFFFFFFFFFF8;
        v21 = (v16 + 4 * v47);
        v48 = (v16 + 16);
        v49 = 0uLL;
        v50 = v47;
        v51 = 0uLL;
        do
        {
          v49 = vaddq_s32(v48[-1], v49);
          v51 = vaddq_s32(*v48, v51);
          v48 += 2;
          v50 -= 8;
        }

        while (v50);
        v20 = vaddvq_s32(vaddq_s32(v51, v49));
        if (v46 != v47)
        {
          do
          {
LABEL_61:
            v52 = *v21++;
            v20 += v52;
          }

          while (v21 != (v16 + 4 * v17));
        }

        v35 = v20;
        if (v20 == a6)
        {
          return 1;
        }

        goto LABEL_63;
      }
    }

    v96[0] = "'";
    v97 = 259;
    mlir::Operation::emitOpError(a1, v96, &v103);
    if (v103)
    {
      v102 = 261;
      v99 = a2;
      v100 = a3;
      mlir::Diagnostic::operator<<(v104, &v99);
      if (v103)
      {
        LODWORD(v99) = 3;
        v100 = "' attribute cannot have negative elements";
        v101 = 41;
        v36 = &v99;
        v37 = v105;
        if (v106 >= v107)
        {
          if (v105 <= &v99 && v105 + 24 * v106 > &v99)
          {
            v90 = &v99 - v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v37 = v105;
            v36 = (v105 + v90);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
            v36 = &v99;
            v37 = v105;
          }
        }

        v38 = &v37[24 * v106];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v106;
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
    if (v103)
    {
      mlir::InFlightDiagnostic::report(&v103);
    }

    if (v114 != 1)
    {
      return v26;
    }

    if (v113 != &v114)
    {
      free(v113);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v112;
      v42 = __p;
      if (v112 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v112 = v40;
      operator delete(v42);
    }

    v30 = v109;
    if (!v109)
    {
      goto LABEL_96;
    }

    v43 = v110;
    v32 = v109;
    if (v110 == v109)
    {
      goto LABEL_95;
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

    while (v43 != v30);
    goto LABEL_94;
  }

  v35 = 0;
  if (!a6)
  {
    return 1;
  }

LABEL_63:
  v97 = 257;
  mlir::Operation::emitOpError(a1, v96, &v103);
  if (v103)
  {
    v102 = 261;
    v99 = a4;
    v100 = a5;
    mlir::Diagnostic::operator<<(v104, &v99);
    if (v103)
    {
      LODWORD(v99) = 3;
      v100 = " count (";
      v101 = 8;
      v53 = &v99;
      v54 = v105;
      if (v106 >= v107)
      {
        if (v105 <= &v99 && v105 + 24 * v106 > &v99)
        {
          v89 = &v99 - v105;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
          v54 = v105;
          v53 = (v105 + v89);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
          v53 = &v99;
          v54 = v105;
        }
      }

      v55 = &v54[24 * v106];
      v56 = *v53;
      *(v55 + 2) = v53[2];
      *v55 = v56;
      v57 = ++v106;
      if (v103)
      {
        LODWORD(v99) = 5;
        v100 = a6;
        v58 = &v99;
        v59 = v105;
        if (v57 >= v107)
        {
          if (v105 <= &v99 && v105 + 24 * v57 > &v99)
          {
            v91 = &v99 - v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v57 + 1, 24);
            v59 = v105;
            v58 = (v105 + v91);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v57 + 1, 24);
            v58 = &v99;
            v59 = v105;
          }
        }

        v60 = &v59[24 * v106];
        v61 = *v58;
        *(v60 + 2) = v58[2];
        *v60 = v61;
        v62 = ++v106;
        if (v103)
        {
          LODWORD(v99) = 3;
          v100 = ") does not match with the total size (";
          v101 = 38;
          v63 = &v99;
          v64 = v105;
          if (v62 >= v107)
          {
            if (v105 <= &v99 && v105 + 24 * v62 > &v99)
            {
              v92 = &v99 - v105;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v62 + 1, 24);
              v64 = v105;
              v63 = (v105 + v92);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v62 + 1, 24);
              v63 = &v99;
              v64 = v105;
            }
          }

          v65 = &v64[24 * v106];
          v66 = *v63;
          *(v65 + 2) = v63[2];
          *v65 = v66;
          v67 = ++v106;
          if (v103)
          {
            LODWORD(v99) = 5;
            v100 = v35;
            v68 = &v99;
            v69 = v105;
            if (v67 >= v107)
            {
              if (v105 <= &v99 && v105 + 24 * v67 > &v99)
              {
                v93 = &v99 - v105;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v67 + 1, 24);
                v69 = v105;
                v68 = (v105 + v93);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v67 + 1, 24);
                v68 = &v99;
                v69 = v105;
              }
            }

            v70 = &v69[24 * v106];
            v71 = *v68;
            *(v70 + 2) = v68[2];
            *v70 = v71;
            v72 = ++v106;
            if (v103)
            {
              LODWORD(v99) = 3;
              v100 = ") specified in attribute '";
              v101 = 26;
              v73 = &v99;
              v74 = v105;
              if (v72 >= v107)
              {
                if (v105 <= &v99 && v105 + 24 * v72 > &v99)
                {
                  v94 = &v99 - v105;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v72 + 1, 24);
                  v74 = v105;
                  v73 = (v105 + v94);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v72 + 1, 24);
                  v73 = &v99;
                  v74 = v105;
                }
              }

              v75 = &v74[24 * v106];
              v76 = *v73;
              *(v75 + 2) = v73[2];
              *v75 = v76;
              ++v106;
              if (v103)
              {
                v102 = 261;
                v99 = a2;
                v100 = a3;
                mlir::Diagnostic::operator<<(v104, &v99);
                if (v103)
                {
                  LODWORD(v99) = 3;
                  v100 = "'";
                  v101 = 1;
                  v77 = &v99;
                  v78 = v105;
                  if (v106 >= v107)
                  {
                    if (v105 <= &v99 && v105 + 24 * v106 > &v99)
                    {
                      v95 = &v99 - v105;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                      v78 = v105;
                      v77 = (v105 + v95);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                      v77 = &v99;
                      v78 = v105;
                    }
                  }

                  v79 = &v78[24 * v106];
                  v80 = *v77;
                  *(v79 + 2) = v77[2];
                  *v79 = v80;
                  ++v106;
                }
              }
            }
          }
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
  if (v103)
  {
    mlir::InFlightDiagnostic::report(&v103);
  }

  if (v114 == 1)
  {
    if (v113 != &v114)
    {
      free(v113);
    }

    v81 = __p;
    if (__p)
    {
      v82 = v112;
      v83 = __p;
      if (v112 != __p)
      {
        do
        {
          v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
        }

        while (v82 != v81);
        v83 = __p;
      }

      v112 = v81;
      operator delete(v83);
    }

    v30 = v109;
    if (!v109)
    {
      goto LABEL_96;
    }

    v84 = v110;
    v32 = v109;
    if (v110 == v109)
    {
LABEL_95:
      v110 = v30;
      operator delete(v32);
LABEL_96:
      if (v105 != v108)
      {
        free(v105);
      }

      return v26;
    }

    do
    {
      v86 = *--v84;
      v85 = v86;
      *v84 = 0;
      if (v86)
      {
        operator delete[](v85);
      }
    }

    while (v84 != v30);
LABEL_94:
    v32 = v109;
    goto LABEL_95;
  }

  return v26;
}

BOOL mlir::OpTrait::impl::verifyNoRegionArguments(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v4 = 24 * (v2 & 0x7FFFFF);
  while (1)
  {
    if (v3 != *v3)
    {
      v5 = v3[1];
      v6 = v5 ? v5 - 8 : 0;
      if (((*(v6 + 56) - *(v6 + 48)) & 0x7FFFFFFF8) != 0)
      {
        break;
      }
    }

    v3 += 3;
    v4 -= 24;
    if (!v4)
    {
      return 1;
    }
  }

  if ((v2 & 0x7FFFFE) != 0)
  {
    v35[0] = "region #";
    v36 = 259;
    mlir::Operation::emitOpError(this, v35, v40);
    RegionNumber = mlir::Region::getRegionNumber(v3);
    if (v40[0])
    {
      v37 = 5;
      v38 = RegionNumber;
      v8 = &v37;
      v9 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v37 && v41 + 24 * v42 > &v37)
        {
          v33 = &v37 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v9 = v41;
          v8 = (v41 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v8 = &v37;
          v9 = v41;
        }
      }

      v10 = &v9[24 * v42];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v42;
      if (v40[0])
      {
        v37 = 3;
        v38 = " should have no arguments";
        v39 = 25;
        v13 = &v37;
        v14 = v41;
        if (v12 >= v43)
        {
          if (v41 <= &v37 && v41 + 24 * v12 > &v37)
          {
            v34 = &v37 - v41;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v12 + 1, 24);
            v14 = v41;
            v13 = (v41 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v12 + 1, 24);
            v13 = &v37;
            v14 = v41;
          }
        }

        v15 = &v14[24 * v42];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v42;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    v18 = result;
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
      result = v18;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v18;
      }

      v19 = __p;
      if (__p)
      {
        v20 = v48;
        v21 = __p;
        if (v48 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v48 = v19;
        operator delete(v21);
        result = v18;
      }

      v22 = v45;
      if (!v45)
      {
        goto LABEL_51;
      }

      v23 = v46;
      v24 = v45;
      if (v46 == v45)
      {
LABEL_50:
        v46 = v22;
        operator delete(v24);
        result = v18;
LABEL_51:
        if (v41 != v44)
        {
          free(v41);
          return v18;
        }

        return result;
      }

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
LABEL_49:
      v24 = v45;
      goto LABEL_50;
    }
  }

  else
  {
    v35[0] = "region should have no arguments";
    v36 = 259;
    mlir::Operation::emitOpError(this, v35, v40);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    v18 = result;
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
      result = v18;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v18;
      }

      v27 = __p;
      if (__p)
      {
        v28 = v48;
        v29 = __p;
        if (v48 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v48 = v27;
        operator delete(v29);
        result = v18;
      }

      v22 = v45;
      if (!v45)
      {
        goto LABEL_51;
      }

      v30 = v46;
      v24 = v45;
      if (v46 == v45)
      {
        goto LABEL_50;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v30 != v22);
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t mlir::OpTrait::impl::verifyIsIsolatedFromAbove(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v78[8] = *MEMORY[0x1E69E9840];
  v76 = v78;
  v77 = 0x800000000;
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
LABEL_31:
    Enum = 1;
    goto LABEL_72;
  }

  v4 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v5 = (v4 + 24 * (v2 & 0x7FFFFF));
  while (1)
  {
    if (HIDWORD(v77))
    {
      *v76 = v4;
      v6 = __CFADD__(v77, 1);
      v7 = v77 + 1;
      LODWORD(v77) = v77 + 1;
      if (!v6)
      {
        break;
      }

      goto LABEL_26;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, 1uLL, 8);
    v76[v77] = v4;
    v6 = __CFADD__(v77, 1);
    v7 = v77 + 1;
    LODWORD(v77) = v77 + 1;
    if (!v6)
    {
      break;
    }

LABEL_26:
    v4 = (v4 + 24);
    if (v4 == v5)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    v8 = v76[v7 - 1];
    LODWORD(v77) = v7 - 1;
    mlir::Region::OpIterator::OpIterator(&v66, v8, 0);
    mlir::Region::OpIterator::OpIterator(&v62, v8, 1);
    v9 = v67;
    v61 = v67;
    v60 = v66;
    v58 = v66;
    v59 = v67;
    v10 = v63;
    if (v67 != v63)
    {
      break;
    }

LABEL_25:
    v7 = v77;
    if (!v77)
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
    v11 = *(v9 + 44);
    if ((v11 & 0x800000) != 0)
    {
      v12 = *(v9 + 68);
      if (v12)
      {
        break;
      }
    }

LABEL_15:
    if ((v11 & 0x7FFFFF) != 0)
    {
      {
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v15 = *(v9 + 44);
        v16 = v15 & 0x7FFFFF;
        if ((v15 & 0x7FFFFF) != 0)
        {
          v17 = ((v9 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
          v18 = v77;
          v19 = 24 * v16;
          do
          {
            if (v18 >= HIDWORD(v77))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v18 + 1, 8);
              v18 = v77;
            }

            v76[v18] = v17;
            v18 = v77 + 1;
            LODWORD(v77) = v77 + 1;
            v17 += 24;
            v19 -= 24;
          }

          while (v19);
        }
      }
    }

    mlir::Region::OpIterator::operator++(&v58);
    v9 = v59;
    if (v59 == v10)
    {
      goto LABEL_25;
    }
  }

  v13 = (*(v9 + 72) + 24);
  while (1)
  {
    v57 = *v13;
    ParentRegion = mlir::Value::getParentRegion(&v57);
    if (!ParentRegion)
    {
      break;
    }

    if (v4 != ParentRegion && (mlir::Region::isProperAncestor(v4, ParentRegion) & 1) == 0)
    {
      v64[0] = "using value defined outside the region";
      v65 = 259;
      mlir::Operation::emitOpError(v9, v64, &v66);
      v38 = mlir::Diagnostic::attachNote(&v66 + 1, *(this + 3), 1);
      v39 = *(v38 + 16);
      LODWORD(v55[0]) = 3;
      v55[1] = "required by region isolation constraints";
      v55[2] = 40;
      v40 = *(v38 + 24);
      v41 = v55;
      if (v40 >= *(v38 + 28))
      {
        if (v39 <= v55 && v39 + 24 * v40 > v55)
        {
          v52 = v55 - v39;
          v53 = v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 16, v38 + 32, v40 + 1, 24);
          v38 = v53;
          v39 = *(v53 + 16);
          v41 = &v52[v39];
        }

        else
        {
          v51 = v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 16, v38 + 32, v40 + 1, 24);
          v38 = v51;
          v39 = *(v51 + 16);
          v41 = v55;
        }
      }

      v42 = v39 + 24 * *(v38 + 24);
      v43 = *v41;
      *(v42 + 16) = *(v41 + 2);
      *v42 = v43;
      ++*(v38 + 24);
      Enum = getEnumTag for MPSGraphDelegateKernelError();
      if (v66)
      {
        mlir::InFlightDiagnostic::report(&v66);
      }

      if (v75 == 1)
      {
        if (v74 != &v75)
        {
          free(v74);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v73;
          v46 = __p;
          if (v73 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v73 = v44;
          operator delete(v46);
        }

        v33 = v70;
        if (!v70)
        {
          goto LABEL_70;
        }

        v47 = v71;
        v35 = v70;
        if (v71 == v70)
        {
LABEL_69:
          v71 = v33;
          operator delete(v35);
LABEL_70:
          if (v68 != &v69)
          {
            free(v68);
          }

          goto LABEL_72;
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

        while (v47 != v33);
LABEL_68:
        v35 = v70;
        goto LABEL_69;
      }

      goto LABEL_72;
    }

    v13 += 4;
    if (!--v12)
    {
      v11 = *(v9 + 44);
      goto LABEL_15;
    }
  }

  v55[0] = "operation's operand is unlinked";
  v56 = 259;
  mlir::emitError(*(v9 + 24), v55, &v66);
  Context = mlir::Attribute::getContext((v9 + 24));
  if (mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context))
  {
    v22 = mlir::Diagnostic::attachNote(&v66 + 1, *(v9 + 24), 1);
    v23 = v22;
    v24 = *(v22 + 16);
    LODWORD(v64[0]) = 3;
    v64[1] = "see current operation: ";
    v64[2] = 23;
    v25 = *(v22 + 24);
    v26 = v64;
    if (v25 >= *(v22 + 28))
    {
      if (v24 <= v64 && v24 + 24 * v25 > v64)
      {
        v54 = v64 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 16, v22 + 32, v25 + 1, 24);
        v24 = *(v23 + 16);
        v26 = &v54[v24];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 16, v22 + 32, v25 + 1, 24);
        v24 = *(v23 + 16);
        v26 = v64;
      }
    }

    v27 = v24 + 24 * *(v23 + 24);
    v28 = *v26;
    *(v27 + 16) = *(v26 + 2);
    *v27 = v28;
    ++*(v23 + 24);
    mlir::OpPrintingFlags::OpPrintingFlags(v64);
    v29 = mlir::OpPrintingFlags::printGenericOpForm(v64, 1);
    mlir::Diagnostic::appendOp(v23, v9, v29);
  }

  Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v75 == 1)
  {
    if (v74 != &v75)
    {
      free(v74);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v73;
      v32 = __p;
      if (v73 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v73 = v30;
      operator delete(v32);
    }

    v33 = v70;
    if (!v70)
    {
      goto LABEL_70;
    }

    v34 = v71;
    v35 = v70;
    if (v71 == v70)
    {
      goto LABEL_69;
    }

    do
    {
      v37 = *--v34;
      v36 = v37;
      *v34 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v34 != v33);
    goto LABEL_68;
  }

LABEL_72:
  if (v76 != v78)
  {
    free(v76);
  }

  return Enum;
}

mlir::Operation *mlir::impl::ensureRegionTerminator(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v9 = a2 + 16;
  v17 = *(a2 + 16);
  v10 = *a1;
  if (*a1 == a1)
  {
    mlir::ValueRange::ValueRange(v18, 0, 0);
    mlir::OpBuilder::createBlock(a2, a1, 0, v18[0], v18[1], 0, 0);
    v10 = *a1;
  }

  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12[4];
  if (v13 == v12 + 4)
  {
    goto LABEL_10;
  }

  {
    v16 = v13;
    v13 = v16;
  }

  result = (*(**(v13 + 48) + 32))(*(v13 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
  if ((result & 1) == 0)
  {
LABEL_10:
    *(a2 + 16) = v12;
    *(a2 + 24) = v12 + 4;
    v15 = a4(a5, a2, a3);
    result = mlir::OpBuilder::insert(a2, v15);
  }

  if (v17)
  {
    *v9 = v17;
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
  }

  return result;
}

mlir::Operation *mlir::impl::ensureRegionTerminator(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v6[0] = *a2;
  memset(&v6[1], 0, 24);
  return mlir::impl::ensureRegionTerminator(a1, v6, a3, a4, a5);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::DialectFoldInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6 = 76;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

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
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}