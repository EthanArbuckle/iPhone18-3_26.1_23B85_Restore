BOOL mlir::StridedLayoutAttr::hasStaticLayout(mlir::StridedLayoutAttr *this)
{
  v1 = *this;
  if (*(*this + 8) == 0x8000000000000000)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v1 + 16);
  v5 = 8 * v3 - 8;
  do
  {
    v6 = *v4++;
    result = v6 != 0x8000000000000000;
    v7 = v6 == 0x8000000000000000 || v5 == 0;
    v5 -= 8;
  }

  while (!v7);
  return result;
}

uint64_t mlir::makeStridedLinearLayoutMap(uint64_t a1, uint64_t a2, mlir *this, mlir::MLIRContext *a4)
{
  if (this == 0x8000000000000000)
  {
    AffineSymbolExpr = mlir::getAffineSymbolExpr(0, a4, 0x8000000000000000);
    v8 = 1;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  else
  {
    AffineSymbolExpr = mlir::getAffineConstantExpr(this, a4, this);
    v8 = 0;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  v9 = 0;
  v10 = 8 * a2;
  do
  {
    v14 = *(a1 + 8 * v9);
    AffineDimExpr = mlir::getAffineDimExpr(v9, a4, AffineSymbolExpr);
    if (v14 == 0x8000000000000000)
    {
      AffineConstantExpr = mlir::getAffineSymbolExpr(v8, a4, v15);
      v8 = (v8 + 1);
    }

    else
    {
      AffineConstantExpr = mlir::getAffineConstantExpr(v14, a4, v15);
    }

    v12 = mlir::AffineExpr::operator*(&AffineDimExpr, AffineConstantExpr);
    v13 = mlir::AffineExpr::operator+(&v18, v12);
    v18 = v13;
    v9 = (v9 + 1);
    v10 -= 8;
  }

  while (v10);
  AffineSymbolExpr = v13;
  return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
}

uint64_t mlir::StridedLayoutAttr::verifyLayout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3 == *(*a1 + 24))
  {
    return 1;
  }

  a4(v23, a5);
  if (v23[0])
  {
    v20 = 3;
    v21 = "expected the number of strides to match the rank";
    v22 = 48;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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

  return v5;
}

uint64_t mlir::StringAttr::getEmptyStringAttrUnchecked(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v3 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v7[1] = this;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v11[1] = v7;
  v10[0] = "";
  v10[1] = 0;
  v10[2] = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue("", 0) << 32));
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v5 >> 31) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::StringAttr::get(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3 <= 1)
  {

    return mlir::StringAttr::get(this, a2);
  }

  v17 = v19;
  v18 = xmmword_1E096E640;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_11;
  }

  if (v3 - 5 < 2)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    goto LABEL_20;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = strlen(*a2);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_20;
    }

LABEL_11:
    llvm::Twine::toVector(a2, &v17);
    v5 = v17;
    v6 = v18;
    goto LABEL_20;
  }

  v7 = *(*a2 + 23);
  if (v7 >= 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = **a2;
  }

  if (v7 >= 0)
  {
    v6 = *(*a2 + 23);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

LABEL_20:
  v8 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v12[1] = this;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v12;
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v8;
  v10 = 0xBF58476D1CE4E5B9 * ((v8 >> 4) ^ (v8 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v5, v6) << 32));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v10 >> 31) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  if (v17 != v19)
  {
    v11 = result;
    free(v17);
    return v11;
  }

  return result;
}

{
  return *(*this + 712);
}

uint64_t mlir::StringAttr::get(unsigned __int8 *a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v14 = a2;
  v20 = v22;
  v21 = xmmword_1E096E640;
  Context = mlir::Attribute::getContext(&v14);
  v4 = a1;
  if (a1[33] != 1)
  {
    goto LABEL_14;
  }

  v5 = a1[32];
  if (v5 > 4)
  {
    if (v5 - 5 < 2)
    {
      v7 = *a1;
      v8 = *(v4 + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v7 = *a1;
    if (*v4)
    {
      v8 = strlen(*v4);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  if (v5 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a1, &v20);
    v7 = v20;
    v8 = v21;
    goto LABEL_15;
  }

  v6 = *(*a1 + 23);
  if (v6 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *(*v4 + 23);
  }

  else
  {
    v8 = *(*v4 + 8);
  }

LABEL_15:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = v7;
  v18[1] = v8;
  v10 = v14;
  v18[2] = v14;
  v11 = 0xBF58476D1CE4E5B9 * ((v10 >> 4) ^ (v10 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v7, v8) << 32));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v20 != v22)
  {
    v13 = result;
    free(v20);
    return v13;
  }

  return result;
}

double mlir::FloatAttr::getValueAsDouble(mlir::FloatAttr *this)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v1 = (*this + 24);
  v2 = *v1;
  v3 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v3 != v2)
  {
    v4 = llvm::detail::IEEEFloat::IEEEFloat(v13, v1);
    v5 = v13[0];
    v6 = llvm::APFloatBase::IEEEdouble(v4);
    if (v5 == v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v1);
  v10 = v13[0];
  v6 = llvm::APFloatBase::IEEEdouble(v9);
  if (v10 != v6)
  {
LABEL_3:
    v11 = 0;
    llvm::APFloat::convert(&v12, v6, 1, &v11);
  }

LABEL_4:
  v7 = llvm::APFloat::convertToDouble(&v12);
  if (v3 == v13[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v13);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v13);
  }

  return v7;
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  v16 = mlir::StringAttr::get(a1, v14);
  Context = mlir::Attribute::getContext(&v16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v17[1] = Context;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v21[1] = v17;
  v20[0] = v16;
  v20[1] = a4;
  v20[2] = a5;
  v9 = (v16 >> 4) ^ (v16 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a4, &a4[2 * a5]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, uint64_t a2, uint64_t a3)
{
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v12 = mlir::StringAttr::get(a1, v10);
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v17[1] = v13;
  v5 = (v12 >> 4) ^ (v12 >> 9);
  v16[1] = 0;
  v16[2] = 0;
  v16[0] = v12;
  v6 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(0, 0);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v8 >> 47) ^ v8)) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v13[1] = v9;
  v3 = (v8 >> 4) ^ (v8 >> 9);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v8;
  v4 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(0, 0);
  v5 = __ROR8__(v4 + 16, 16);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v6 >> 47) ^ v6)) ^ v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::SymbolRefAttr::get(mlir::SymbolRefAttr *this, mlir::Operation *a2)
{
  v12.var0 = "sym_name";
  v12.var1 = 8;
  v6 = mlir::Operation::getAttrOfType<mlir::StringAttr>(this, v12);
  Context = mlir::Attribute::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v7[1] = Context;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v11[1] = v7;
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = v6;
  v4 = 0x9DDFEA08EB382D69 * ((v6 >> 4) ^ (v6 >> 9) ^ 0x33C3CA6728B94E08);
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47) ^ 0xCC9265B0C5ECC2C5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v4 >> 47) ^ 0xC5ECC2C5)))) ^ 0xC2C5CC82, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::Operation::getAttrOfType<mlir::StringAttr>(mlir::Operation *this, StringRef a2)
{
  var1 = a2.var1;
  var0 = a2.var0;
  if (*(this + 47))
  {
    result = mlir::Operation::getInherentAttr(this, a2);
    if (v6)
    {
      goto LABEL_21;
    }
  }

  v7 = *(this + 7);
  v8 = (16 * *(v7 + 16)) >> 4;
  if (v8 < 1)
  {
    return 0;
  }

  v9 = *(v7 + 8);
  while (1)
  {
    v10 = v8 >> 1;
    v11 = &v9[2 * (v8 >> 1)];
    CallableRegion = mlir::CallGraphNode::getCallableRegion(v11);
    v13 = *(CallableRegion + 24);
    if (var1 >= v13)
    {
      v14 = *(CallableRegion + 24);
    }

    else
    {
      v14 = var1;
    }

    if (v14)
    {
      v15 = memcmp(*(CallableRegion + 16), var0, v14);
      if (v15)
      {
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v13 == var1)
    {
      break;
    }

    if (v13 >= var1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v9 = (v11 + 16);
    v10 = v8 + ~v10;
LABEL_6:
    v8 = v10;
    if (v10 <= 0)
    {
      return 0;
    }
  }

  result = *(v11 + 1);
LABEL_21:
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::SymbolRefAttr::getLeafReference(mlir::SymbolRefAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2)
  {
    v1 = *(*(v1 + 16) + 8 * v2 - 8);
  }

  return *(v1 + 8);
}

uint64_t mlir::IntegerAttr::getInt(mlir::IntegerAttr *this)
{
  p_p = (*this + 16);
  v2 = *(*this + 24);
  v6 = v2;
  if (v2 >= 0x41)
  {
    llvm::APInt::initSlowCase(&__p, p_p);
    v2 = v6;
    if (v6 > 0x40)
    {
      v4 = *__p;
      operator delete[](__p);
      return v4;
    }

    p_p = &__p;
  }

  if (v2)
  {
    return (*p_p << -v2) >> -v2;
  }

  else
  {
    return 0;
  }
}

void *mlir::IntegerAttr::getUInt(mlir::IntegerAttr *this)
{
  v1 = *this;
  v5 = *(*this + 24);
  if (v5 <= 0x40)
  {
    return *(v1 + 16);
  }

  llvm::APInt::initSlowCase(&__p, (v1 + 16));
  if (v5 <= 0x40)
  {
    return __p;
  }

  v3 = *__p;
  operator delete[](__p);
  return v3;
}

uint64_t mlir::IntegerAttr::getBoolAttrUnchecked(uint64_t a1, unsigned int a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  v8 = 1;
  __p = a2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v10[1] = Context;
  result = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeENS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_, v10, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v9, &__p);
  if (v8 >= 0x41)
  {
    if (__p)
    {
      v6 = result;
      operator delete[](__p);
      return v6;
    }
  }

  return result;
}

BOOL mlir::BoolAttr::getValue(mlir::BoolAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2 > 0x40)
  {
    return llvm::APInt::countLeadingZerosSlowCase((v1 + 16)) != v2;
  }

  else
  {
    return *(v1 + 16) != 0;
  }
}

BOOL mlir::BoolAttr::classof(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v5[1] = v1;
      v5[2] = v2;
      v5[0] = a1[1];
      return mlir::Type::isSignlessInteger(v5, 1);
    }
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::AttributeElementIterator::operator*(void *a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  __dst = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&__dst);
  v4 = isSplat;
  v5 = *(*isSplat + 136);
  if (isSplat && v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v33 = a1[1];
    v34 = *(v2 + 32);
    v35 = *(v2 + 24);
    __dst = *(v2 + 8);
    v36 = mlir::ElementsAttr::isSplat(&__dst);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v36);
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v33;
    }

    v39 = DenseElementBitWidth - 1;
    if (DenseElementBitWidth == 1)
    {
      v40 = (*(v34 + (v38 >> 3)) >> (v38 & 7)) & 1;
      DWORD2(__dst) = 1;
      *&__dst = v40;
    }

    else
    {
      v41 = DenseElementBitWidth != 0;
      DWORD2(__dst) = DenseElementBitWidth;
      if (DenseElementBitWidth >= 0x41)
      {
        v44 = DenseElementBitWidth;
        llvm::APInt::initSlowCase(&__dst, 0, 0);
        DenseElementBitWidth = v44;
        v42 = (v39 >> 3) + 1;
        if (DWORD2(__dst) >= 0x41)
        {
          p_dst = __dst;
        }

        else
        {
          p_dst = &__dst;
        }
      }

      else
      {
        *&__dst = 0;
        if (DenseElementBitWidth)
        {
          v42 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
        }

        else
        {
          v42 = 0;
        }

        if (!v42)
        {
          goto LABEL_73;
        }

        p_dst = &__dst;
      }

      memmove(p_dst, (v34 + ((((DenseElementBitWidth - v41 + 8 * v41) & 0xFFFFFFFFFFFFFFF8) * v38) >> 3)), v42);
    }

LABEL_73:
    result = mlir::IntegerAttr::get(v4, &__dst);
    goto LABEL_74;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v83 = isSplat;
    if (isSplat)
    {
      v22 = a1[1];
      v23 = *(v2 + 32);
      v24 = *(v2 + 24);
      __dst = *(v2 + 8);
      v25 = mlir::ElementsAttr::isSplat(&__dst);
      v26 = mlir::detail::getDenseElementBitWidth(v25);
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v83);
      *&__dst = v23;
      *(&__dst + 1) = v24;
      v87 = v22;
      v88 = v26;
      v89 = FloatSemantics;
      llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&__dst, __p);
      *&v77 = v4;
      Context = mlir::Attribute::getContext(&v77);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v94 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
      v95 = Context;
      ParametricStorageTypeImpl = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v94, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v77, __p);
      v31 = __p[1];
      if (llvm::APFloatBase::PPCDoubleDouble(ParametricStorageTypeImpl) != v31)
      {
        v32 = &__p[1];
LABEL_57:
        llvm::detail::IEEEFloat::~IEEEFloat(v32);
        return ParametricStorageTypeImpl;
      }

      v32 = &__p[1];
      goto LABEL_92;
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v46 = isSplat;
  }

  else
  {
    v46 = 0;
  }

  v79 = v46;
  if (!v46)
  {
    v55 = *(v2 + 32);
    if ((*(v2 + 24) & 1) == 0)
    {
      v55 += 2 * a1[1];
    }

    LOWORD(v89) = 261;
    v57 = *v55;
    v56 = v55[1];
    *&__dst = v57;
    *(&__dst + 1) = v56;
    return mlir::StringAttr::get(&__dst, isSplat);
  }

  Value = mlir::AffineMapAttr::getValue(&v79);
  v48 = a1[1];
  v49 = *(v2 + 24);
  *&v77 = *(v2 + 32);
  *(&v77 + 1) = v49;
  *&v78 = v48;
  __dst = *(v2 + 8);
  *&__dst = mlir::ElementsAttr::isSplat(&__dst);
  v50 = mlir::AffineMapAttr::getValue(&__dst);
  *(&v78 + 1) = mlir::detail::getDenseElementBitWidth(v50);
  if (*(*Value + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *&__dst = Value;
    v51 = mlir::FloatType::getFloatSemantics(&__dst);
    *__p = v77;
    v92 = v78;
    v93 = v51;
    mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(__p, &v94);
    mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(__p, &v94, &__dst);
    if (v97 >= 0x41)
    {
      v52 = v96;
      if (v96)
      {
        operator delete[](v96);
      }
    }

    if (v95 >= 0x41)
    {
      v52 = v94;
      if (v94)
      {
        operator delete[](v94);
      }
    }

    v53 = *(&__dst + 1);
    v54 = llvm::APFloatBase::PPCDoubleDouble(v52);
    if (v54 == v53)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v95, (&__dst + 8));
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v95, (&__dst + 8));
    }

    v80 = Value;
    v58 = mlir::Attribute::getContext(&v80);
    v59 = mlir::MLIRContext::getAttributeUniquer(v58);
    v83 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
    v84 = v58;
    v60 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(v59, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v83, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v80, &v94);
    if (v54 == v95)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v95);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v95);
    }

    if (v54 == v90[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v95, v90);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v95, v90);
    }

    v80 = Value;
    v61 = mlir::Attribute::getContext(&v80);
    v62 = mlir::MLIRContext::getAttributeUniquer(v61);
    v83 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
    v84 = v61;
    v63 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(v62, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v83, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v80, &v94);
    if (v54 == v95)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v95);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v95);
    }

    v64 = mlir::Attribute::getContext(&v79);
    v85[0] = v60;
    v85[1] = v63;
    v65 = mlir::MLIRContext::getAttributeUniquer(v64);
    v98 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v99 = v64;
    v94 = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
    v95 = &v98;
    v83 = v85;
    v84 = 2;
    v66 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v85, &__dst);
    v67 = HIDWORD(v66) ^ 0xFF51AFD7ED558CCDLL;
    v68 = 0x9DDFEA08EB382D69 * ((8 * v66 + 8) ^ v67);
    v80 = &v83;
    v81 = &v94;
    v82 = &v83;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v65, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v67 ^ (v68 >> 47) ^ v68)) >> 32) >> 15) ^ (-348639895 * (v67 ^ (v68 >> 47) ^ v68))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v82, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v80);
    if (v54 == v90[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v90);
      v32 = (&__dst + 8);
      if (v54 != *(&__dst + 1))
      {
        goto LABEL_57;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v90);
      v32 = (&__dst + 8);
      if (v54 != *(&__dst + 1))
      {
        goto LABEL_57;
      }
    }

LABEL_92:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
    return ParametricStorageTypeImpl;
  }

  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v77, &__dst);
  LODWORD(__p[1]) = DWORD2(__dst);
  if (DWORD2(__dst) > 0x40)
  {
    llvm::APInt::initSlowCase(__p, &__dst);
  }

  else
  {
    __p[0] = __dst;
  }

  v69 = mlir::IntegerAttr::get(Value, __p);
  if (LODWORD(__p[1]) >= 0x41 && __p[0])
  {
    operator delete[](__p[0]);
  }

  LODWORD(__p[1]) = v88;
  if (v88 > 0x40)
  {
    llvm::APInt::initSlowCase(__p, &v87);
  }

  else
  {
    __p[0] = v87;
  }

  v70 = mlir::IntegerAttr::get(Value, __p);
  if (LODWORD(__p[1]) >= 0x41 && __p[0])
  {
    operator delete[](__p[0]);
  }

  v71 = mlir::Attribute::getContext(&v79);
  v98 = v69;
  v99 = v70;
  v72 = mlir::MLIRContext::getAttributeUniquer(v71);
  v80 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v81 = v71;
  __p[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  __p[1] = &v80;
  v94 = &v98;
  v95 = 2;
  v73 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(&v98, &v100);
  v74 = HIDWORD(v73) ^ 0xFF51AFD7ED558CCDLL;
  v75 = 0x9DDFEA08EB382D69 * ((8 * v73 + 8) ^ v74);
  v84 = __p;
  v85[0] = &v94;
  v83 = &v94;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v72, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v74 ^ (v75 >> 47) ^ v75)) >> 32) >> 15) ^ (-348639895 * (v74 ^ (v75 >> 47) ^ v75))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v85, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v83);
  if (v88 >= 0x41 && v87)
  {
    v76 = result;
    operator delete[](v87);
    result = v76;
  }

LABEL_74:
  if (DWORD2(__dst) >= 0x41 && __dst)
  {
    ParametricStorageTypeImpl = result;
    operator delete[](__dst);
    return ParametricStorageTypeImpl;
  }

  return result;
}

void *mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *a1 = *(a2 + 32);
  a1[1] = v4;
  a1[2] = a3;
  v7 = *(a2 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v7);
  a1[3] = mlir::detail::getDenseElementBitWidth(isSplat);
  return a1;
}

uint64_t *mlir::DenseElementsAttr::IntElementIterator::operator*@<X0>(uint64_t *result@<X0>, llvm::APInt *a2@<X8>)
{
  if (result[1])
  {
    v2 = 0;
    v3 = *result;
    v4 = result[3];
    v5 = v4 - 1;
    if (v4 != 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = (*(v3 + (v2 >> 3)) >> (v2 & 7)) & 1;
    *(a2 + 2) = 1;
    *a2 = v7;
    return result;
  }

  v2 = result[2];
  v4 = result[3];
  v3 = *result;
  v5 = v4 - 1;
  if (v4 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  *(a2 + 2) = v4;
  if (v4 >= 0x41)
  {
    v8 = a2;
    llvm::APInt::initSlowCase(a2, 0, 0);
    v6 = (v5 >> 3) + 1;
    if (*(v8 + 2) >= 0x41u)
    {
      a2 = *v8;
    }

    else
    {
      a2 = v8;
    }

LABEL_14:

    return memmove(a2, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v2) >> 3)), v6);
  }

  *a2 = 0;
  if (v4)
  {
    v6 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_14;
  }

  return result;
}

void llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(llvm::APFloatBase *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = *a1;
    v6 = *(a1 + 3);
    v7 = v6 - 1;
    if (v6 != 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = ((*(v5 + (v4 >> 3)) >> (v4 & 7)) & 1);
    v14 = 1;
    __p = v10;
    goto LABEL_11;
  }

  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *a1;
  v7 = v6 - 1;
  if (v6 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v14 = v6;
  if (v6 < 0x41)
  {
    __p = 0;
    if (v6)
    {
      v8 = ((v6 - (v6 != 0)) >> 3) + 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      p_p = &__p;
      goto LABEL_17;
    }

LABEL_11:
    v11 = *(a1 + 4);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
    {
      goto LABEL_18;
    }

LABEL_12:
    llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v11, &__p);
    if (v14 < 0x41)
    {
      return;
    }

    goto LABEL_19;
  }

  llvm::APInt::initSlowCase(&__p, 0, 0);
  v8 = (v7 >> 3) + 1;
  if (v14 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

LABEL_17:
  v12 = memmove(p_p, (v5 + ((((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8) * v4) >> 3)), v8);
  v11 = *(a1 + 4);
  if (llvm::APFloatBase::PPCDoubleDouble(v12) != v11)
  {
    goto LABEL_12;
  }

LABEL_18:
  llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v11, &__p);
  if (v14 < 0x41)
  {
    return;
  }

LABEL_19:
  if (__p)
  {
    operator delete[](__p);
  }
}

void mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  if (v4 == 1)
  {
    v5 = 1;
    if ((a1[1] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
    if ((a1[1] & 1) == 0)
    {
LABEL_3:
      v6 = 2 * v5 * a1[2];
      v7 = *a1;
      v8 = v4 - 1;
      if (v4 != 1)
      {
        goto LABEL_4;
      }

LABEL_12:
      v11 = ((*(v7 + (v6 >> 3)) >> (v6 & 6)) & 1);
      v22 = 1;
      v21 = v11;
      v12 = v6 + v5;
LABEL_17:
      v13 = ((*(v7 + (v12 >> 3)) >> (v12 & 7)) & 1);
      v20 = 1;
      __p = v13;
      goto LABEL_29;
    }
  }

  v6 = 0;
  v7 = *a1;
  v8 = v4 - 1;
  if (v4 == 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v22 = a1[3];
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v21, 0, 0);
    v9 = (v8 >> 3) + 1;
    if (v22 >= 0x41)
    {
      v10 = v21;
    }

    else
    {
      v10 = &v21;
    }
  }

  else
  {
    v21 = 0;
    if (v4)
    {
      v9 = ((v4 - (v4 != 0)) >> 3) + 1;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v12 = v6 + v5;
      goto LABEL_19;
    }

    v10 = &v21;
  }

  memmove(v10, (v7 + (v6 >> 3)), v9);
  v7 = *a1;
  v4 = a1[3];
  v12 = v6 + v5;
  if (v4 == 1)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    v14 = ((v4 - 1) >> 3) + 1;
    if (v20 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    goto LABEL_28;
  }

  __p = 0;
  if (v4)
  {
    v14 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    p_p = &__p;
LABEL_28:
    memmove(p_p, (v7 + (v12 >> 3)), v14);
  }

LABEL_29:
  v16 = v22;
  *(a2 + 8) = v22;
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, &v21);
    v18 = v20;
    *(a2 + 24) = v20;
    if (v18 > 0x40)
    {
      goto LABEL_31;
    }

LABEL_35:
    *(a2 + 16) = __p;
    goto LABEL_36;
  }

  *a2 = v21;
  v17 = v20;
  *(a2 + 24) = v20;
  if (v17 <= 0x40)
  {
    goto LABEL_35;
  }

LABEL_31:
  llvm::APInt::initSlowCase(a2 + 16, &__p);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

LABEL_36:
  if (v22 >= 0x41)
  {
    if (v21)
    {
      operator delete[](v21);
    }
  }
}

void *mlir::DenseElementsAttr::BoolElementIterator::BoolElementIterator(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  *result = *(a2 + 32);
  result[1] = v3;
  result[2] = a3;
  return result;
}

uint64_t mlir::DenseElementsAttr::BoolElementIterator::operator*(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    LOBYTE(v1) = *v1;
  }

  else
  {
    LODWORD(v1) = v1[*(a1 + 16) >> 3] >> (*(a1 + 16) & 7);
  }

  return v1 & 1;
}

unint64_t mlir::detail::getDenseElementBitWidth(uint64_t a1)
{
  v6 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1)
  {
    Value = mlir::AffineMapAttr::getValue(&v5);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(Value);
    return (2 * (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0))) & 0xFFFFFFFFFFFFFFF0;
  }

  else if (mlir::Type::isIndex(&v6))
  {
    return 64;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v6);
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 1, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::detail::DenseArrayAttrImpl<signed char>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 8, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

BOOL mlir::detail::DenseArrayAttrImpl<signed char>::classof(void *a1)
{
  result = 0;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = a1[1];
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v6[0] = v5;
    return v5 && mlir::IntegerType::getWidth(v6) == 8 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 32, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 4 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + 4 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

BOOL mlir::detail::DenseArrayAttrImpl<int>::classof(void *a1)
{
  result = 0;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = a1[1];
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v6[0] = v5;
    return v5 && mlir::IntegerType::getWidth(v6) == 32 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 64, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 8 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, &a2[a3]);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void *mlir::detail::DenseArrayAttrImpl<long long>::print(void *a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2);

  return mlir::detail::DenseArrayAttrImpl<long long>::print(a1, v3);
}

void *mlir::detail::DenseArrayAttrImpl<long long>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 8)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  result = llvm::raw_ostream::operator<<(this, *v7);
  v9 = v8 - 8;
  if (v9)
  {
    v10 = v7 + 1;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8236;
        *(this + 4) += 2;
        v11 = *v10++;
        result = llvm::raw_ostream::operator<<(this, v11);
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      llvm::raw_ostream::write(this, ", ", 2uLL);
      v13 = *v10++;
      result = llvm::raw_ostream::operator<<(this, v13);
      v9 -= 8;
    }

    while (v9);
  }

LABEL_10:
  v14 = *(this + 4);
  if (*(this + 3) == v14)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v14 = 93;
    ++*(this + 4);
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    Context = mlir::AsmParser::getContext(a1);
    v3 = mlir::IntegerType::get(Context, 64, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v12[1] = Context;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v16[1] = v12;
    v5 = (v3 >> 4) ^ (v3 >> 9);
    v15[0] = v3;
    memset(&v15[1], 0, 24);
    v6 = llvm::hashing::detail::hash_combine_range_impl<char const>(0, 0);
    v7 = 0xB492B66FBE98F273 * v5 - 0x9AE16A3B2F90404FLL * v6 - 0x1A58D393752DFE12;
    v8 = (__ROR8__((0x9AE16A3B2F90404FLL * v6) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v5, 43)) ^ v7;
    v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
    v13[0] = v15;
    v13[1] = v16;
    v14 = v15;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  }

  else
  {
    v11 = mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(a1);
    if ((*(*a1 + 328))(a1))
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x600000000;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 64, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = 8 * v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(v4, &v4[v5]);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<long long>::classof(void *a1)
{
  result = 0;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = a1[1];
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v6[0] = v5;
    return v5 && mlir::IntegerType::getWidth(v6) == 64 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v96[4] = *MEMORY[0x1E69E9840];
  *&v81 = a1;
  *(&v81 + 1) = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v81);
  v80 = isSplat;
  if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v7 = isSplat;
  }

  else
  {
    v7 = 0;
  }

  v83[0] = v7;
  if (!v7)
  {
    if (mlir::Type::isIntOrIndexOrFloat(&v80))
    {
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v80);
      if (DenseElementBitWidth == 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (DenseElementBitWidth + 8 * (DenseElementBitWidth != 0) - (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
      }

      v51 = v10 * a4 - (v10 * a4 != 0);
      if (v10 * a4)
      {
        v52 = (v51 >> 3) + 1;
      }

      else
      {
        v52 = v51 >> 3;
      }

      Value = v87;
      v86 = xmmword_1E096FB00;
      if (!v52)
      {
        goto LABEL_116;
      }

      if (v52 < 9)
      {
        v53 = 0;
        v54 = v52;
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&Value, v87, v52, 1);
        v53 = v86;
        v54 = v52 - v86;
        if (v52 == v86)
        {
          goto LABEL_115;
        }
      }

      bzero(Value + v53, v54);
LABEL_115:
      *&v86 = v52;
LABEL_116:
      LODWORD(v91[0]) = 1;
      v90 = 0;
      v64 = a4;
      if (!a4)
      {
LABEL_157:
        if (a4 == 1 && mlir::Type::isInteger(&v80, 1))
        {
          if (*Value)
          {
            v76 = -1;
          }

          else
          {
            v76 = 0;
          }

          *Value = v76;
        }

        Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v81, *(&v81 + 1), Value, v86);
        if (LODWORD(v91[0]) >= 0x41 && v90)
        {
          operator delete[](v90);
        }

        v29 = Value;
        if (Value != v87)
        {
          goto LABEL_111;
        }

        return Raw;
      }

      v65 = 0;
      while (1)
      {
        v66 = *a3;
        if (*(**a3 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          DWORD2(v92) = *(v66 + 24);
          if (DWORD2(v92) > 0x40)
          {
            DenseElementBitWidth = llvm::APInt::initSlowCase(&v92, (v66 + 16));
            if (LODWORD(v91[0]) < 0x41)
            {
              goto LABEL_130;
            }
          }

          else
          {
            *&v92 = *(v66 + 16);
            if (LODWORD(v91[0]) < 0x41)
            {
              goto LABEL_130;
            }
          }

          DenseElementBitWidth = v90;
          if (v90)
          {
            operator delete[](v90);
          }

LABEL_130:
          v90 = v92;
          v70 = DWORD2(v92);
          LODWORD(v91[0]) = DWORD2(v92);
          v71 = Value;
          v79 = DWORD2(v92);
          if (DWORD2(v92) <= 0x40uLL)
          {
            goto LABEL_138;
          }

          goto LABEL_149;
        }

        v68 = *(v66 + 24);
        v67 = (v66 + 24);
        v69 = llvm::APFloatBase::PPCDoubleDouble(DenseElementBitWidth);
        if (v69 == v68)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92 + 1, v67);
          if (v69 != *(&v92 + 1))
          {
LABEL_125:
            llvm::detail::IEEEFloat::bitcastToAPInt((&v92 + 8), &v88);
            if (LODWORD(v91[0]) < 0x41)
            {
              goto LABEL_136;
            }

            goto LABEL_134;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat((&v92 + 8), v67);
          if (v69 != *(&v92 + 1))
          {
            goto LABEL_125;
          }
        }

        llvm::detail::DoubleAPFloat::bitcastToAPInt((&v92 + 8), &v88);
        if (LODWORD(v91[0]) < 0x41)
        {
          goto LABEL_136;
        }

LABEL_134:
        if (v90)
        {
          operator delete[](v90);
        }

LABEL_136:
        v90 = v88;
        LODWORD(v91[0]) = v89[0];
        LODWORD(v89[0]) = 0;
        if (v69 == *(&v92 + 1))
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v92 + 8));
          v71 = Value;
          v79 = v91[0];
          v70 = LODWORD(v91[0]);
          if (LODWORD(v91[0]) <= 0x40uLL)
          {
LABEL_138:
            __p = v90;
            if (v70 != 1)
            {
              goto LABEL_139;
            }

            goto LABEL_150;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v92 + 8));
          v71 = Value;
          v79 = v91[0];
          v70 = LODWORD(v91[0]);
          if (LODWORD(v91[0]) <= 0x40uLL)
          {
            goto LABEL_138;
          }
        }

LABEL_149:
        DenseElementBitWidth = llvm::APInt::initSlowCase(&__p, &v90);
        v70 = v79;
        if (v79 != 1)
        {
LABEL_139:
          if (v70)
          {
            v72 = ((v70 - (v70 != 0)) >> 3) + 1;
          }

          else
          {
            v72 = (v70 - (v70 != 0)) >> 3;
          }

          if (!v72)
          {
            goto LABEL_152;
          }

          if (v70 >= 0x41)
          {
            p_p = __p;
          }

          else
          {
            p_p = &__p;
          }

          DenseElementBitWidth = memmove(&v71[v65 >> 3], p_p, v72);
          if (v79 >= 0x41)
          {
LABEL_153:
            DenseElementBitWidth = __p;
            if (__p)
            {
              operator delete[](__p);
            }

            goto LABEL_118;
          }

          goto LABEL_118;
        }

LABEL_150:
        v74 = 1 << (v65 & 7);
        v75 = v65 >> 3;
        if (__p == 1)
        {
          v71[v75] |= v74;
LABEL_152:
          if (v79 >= 0x41)
          {
            goto LABEL_153;
          }

          goto LABEL_118;
        }

        v71[v75] &= ~v74;
        if (v79 >= 0x41)
        {
          goto LABEL_153;
        }

LABEL_118:
        v65 += v10;
        ++a3;
        if (!--v64)
        {
          goto LABEL_157;
        }
      }
    }

    Value = &v86 + 8;
    *&v86 = 0x800000000;
    if (a4 < 9)
    {
      v14 = 0;
      v55 = 0;
      if (!a4)
      {
LABEL_108:
        v58 = Value;
        v82 = v81;
        Context = mlir::Attribute::getContext(&v82);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v83[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
        v83[1] = Context;
        v90 = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
        v91[0] = v83;
        mlir::detail::DenseStringElementsAttrStorage::getKey(v82, *(&v82 + 1), v58, v55, v55 == 1, &v92);
        v61 = __ROR8__(v95 + 16, 16);
        v62 = 0x9DDFEA08EB382D69 * (v61 ^ 0xFF51AFD7ED558CCDLL ^ (v92 >> 4) ^ (v92 >> 9));
        v84 = &v92;
        v88 = &v92;
        v89[0] = &v90;
        Raw = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 32) >> 15) ^ (-348639895 * (v61 ^ (v62 >> 47) ^ v62)))) ^ v95, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v84, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v88);
        goto LABEL_109;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&Value, &v86 + 8, a4, 16);
      v14 = v86;
    }

    v56 = 8 * a4;
    v55 = v14;
    do
    {
      v57 = *(*a3 + 16);
      if (v55 >= DWORD1(v86))
      {
        v77 = *(*a3 + 16);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&Value, &v86 + 8, v55 + 1, 16);
        v57 = v77;
        v55 = v86;
      }

      *(Value + v55) = v57;
      v55 = v86 + 1;
      LODWORD(v86) = v86 + 1;
      ++a3;
      v56 -= 8;
    }

    while (v56);
    goto LABEL_108;
  }

  Value = mlir::AffineMapAttr::getValue(v83);
  isIntOrIndex = mlir::Type::isIntOrIndex(&Value);
  if (isIntOrIndex)
  {
    Value = &v86 + 8;
    *&v86 = 0x100000000;
    if (a4 >= 2)
    {
      llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&Value, a4);
LABEL_18:
      v15 = 8 * a4;
      while (1)
      {
        v16 = *(*a3 + 8);
        v17 = *v16;
        v18 = v16[1];
        LODWORD(v91[0]) = *(*v16 + 24);
        if (LODWORD(v91[0]) > 0x40)
        {
          llvm::APInt::initSlowCase(&v90, (v17 + 16));
          LODWORD(v89[0]) = *(v18 + 24);
          if (LODWORD(v89[0]) > 0x40)
          {
LABEL_22:
            llvm::APInt::initSlowCase(&v88, (v18 + 16));
            DWORD2(v92) = v91[0];
            if (LODWORD(v91[0]) > 0x40)
            {
              goto LABEL_23;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v90 = *(v17 + 16);
          LODWORD(v89[0]) = *(v18 + 24);
          if (LODWORD(v89[0]) > 0x40)
          {
            goto LABEL_22;
          }
        }

        v88 = *(v18 + 16);
        DWORD2(v92) = v91[0];
        if (LODWORD(v91[0]) > 0x40)
        {
LABEL_23:
          llvm::APInt::initSlowCase(&v92, &v90);
          v94 = v89[0];
          if (LODWORD(v89[0]) <= 0x40)
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

LABEL_27:
        *&v92 = v90;
        v94 = v89[0];
        if (LODWORD(v89[0]) <= 0x40)
        {
LABEL_28:
          v93 = v88;
          goto LABEL_29;
        }

LABEL_24:
        llvm::APInt::initSlowCase(&v93, &v88);
LABEL_29:
        v19 = Value;
        if (v86 >= DWORD1(v86))
        {
          if (Value <= &v92 && Value + 32 * v86 > &v92)
          {
            v22 = &v92 - Value;
            llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&Value, v86 + 1);
            v19 = Value;
            v20 = Value + v22;
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&Value, v86 + 1);
            v20 = &v92;
            v19 = Value;
          }
        }

        else
        {
          v20 = &v92;
        }

        v21 = &v19[32 * v86];
        *(v21 + 2) = *(v20 + 2);
        *v21 = *v20;
        *(v20 + 2) = 0;
        *(v21 + 6) = *(v20 + 6);
        *(v21 + 2) = *(v20 + 2);
        *(v20 + 6) = 0;
        LODWORD(v86) = v86 + 1;
        if (v94 >= 0x41 && v93)
        {
          operator delete[](v93);
        }

        if (DWORD2(v92) >= 0x41 && v92)
        {
          operator delete[](v92);
        }

        if (LODWORD(v89[0]) >= 0x41 && v88)
        {
          operator delete[](v88);
        }

        if (LODWORD(v91[0]) >= 0x41 && v90)
        {
          operator delete[](v90);
        }

        ++a3;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_47;
        }
      }
    }

    if (a4)
    {
      goto LABEL_18;
    }

LABEL_47:
    v23 = Value;
    v24 = v86;
    v92 = v81;
    v25 = mlir::ElementsAttr::isSplat(&v92);
    v26 = mlir::detail::getDenseElementBitWidth(v25);
    if (v26 == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = ((v26 - (v26 != 0) + 8 * (v26 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
    }

    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v92, *(&v92 + 1), v27, v23, 2 * v24);
    v29 = Value;
    if (!v86)
    {
LABEL_110:
      if (v29 != (&v86 + 8))
      {
        goto LABEL_111;
      }

      return Raw;
    }

    v30 = -32 * v86;
    v31 = Value + 32 * v86 - 16;
    do
    {
      if (*(v31 + 2) >= 0x41u && *v31)
      {
        operator delete[](*v31);
      }

      if (*(v31 - 2) >= 0x41u)
      {
        v32 = *(v31 - 2);
        if (v32)
        {
          operator delete[](v32);
        }
      }

      v31 -= 32;
      v30 += 32;
    }

    while (v30);
LABEL_109:
    v29 = Value;
    goto LABEL_110;
  }

  Value = &v86 + 8;
  *&v86 = 0x100000000;
  if (a4 < 2)
  {
    v33 = &v86 + 8;
    if (!a4)
    {
      goto LABEL_81;
    }
  }

  else
  {
    *&v92 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(&Value, &v86 + 8, a4, 64, &v92);
    v12 = v11;
    llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::moveElementsForGrow(&Value, v11);
    v13 = v92;
    isIntOrIndex = Value;
    if (Value != &v86 + 8)
    {
      free(Value);
    }

    Value = v12;
    DWORD1(v86) = v13;
  }

  v34 = llvm::APFloatBase::PPCDoubleDouble(isIntOrIndex);
  v35 = 8 * a4;
  do
  {
    while (1)
    {
      v36 = *(*a3 + 8);
      v37 = v36[1];
      v38 = (*v36 + 24);
      if (v34 == *v38)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v91, v38);
        v39 = (v37 + 24);
        if (v34 != *(v37 + 24))
        {
LABEL_64:
          llvm::detail::IEEEFloat::IEEEFloat(v89, v39);
          if (v34 != v91[0])
          {
            goto LABEL_65;
          }

          goto LABEL_69;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v91, v38);
        v39 = (v37 + 24);
        if (v34 != *(v37 + 24))
        {
          goto LABEL_64;
        }
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(v89, v39);
      if (v34 != v91[0])
      {
LABEL_65:
        llvm::detail::IEEEFloat::IEEEFloat((&v92 + 8), v91);
        if (v34 != v89[0])
        {
          goto LABEL_66;
        }

        goto LABEL_70;
      }

LABEL_69:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92 + 1, v91);
      if (v34 != v89[0])
      {
LABEL_66:
        llvm::detail::IEEEFloat::IEEEFloat(v96, v89);
        goto LABEL_71;
      }

LABEL_70:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v96, v89);
LABEL_71:
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::push_back(&Value, &v92);
      if (v34 != v96[0])
      {
        break;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v96);
      if (v34 == *(&v92 + 1))
      {
        goto LABEL_77;
      }

LABEL_73:
      llvm::detail::IEEEFloat::~IEEEFloat((&v92 + 8));
      if (v34 != v89[0])
      {
        goto LABEL_74;
      }

LABEL_78:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
      if (v34 != v91[0])
      {
        goto LABEL_79;
      }

LABEL_61:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v91);
      ++a3;
      v35 -= 8;
      if (!v35)
      {
        goto LABEL_80;
      }
    }

    llvm::detail::IEEEFloat::~IEEEFloat(v96);
    if (v34 != *(&v92 + 1))
    {
      goto LABEL_73;
    }

LABEL_77:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v92 + 8));
    if (v34 == v89[0])
    {
      goto LABEL_78;
    }

LABEL_74:
    llvm::detail::IEEEFloat::~IEEEFloat(v89);
    if (v34 == v91[0])
    {
      goto LABEL_61;
    }

LABEL_79:
    llvm::detail::IEEEFloat::~IEEEFloat(v91);
    ++a3;
    v35 -= 8;
  }

  while (v35);
LABEL_80:
  v33 = Value;
LABEL_81:
  v40 = v86;
  v92 = v81;
  v41 = mlir::ElementsAttr::isSplat(&v92);
  v42 = mlir::detail::getDenseElementBitWidth(v41);
  if (v42 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = ((v42 - (v42 != 0) + 8 * (v42 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  v44 = mlir::DenseIntOrFPElementsAttr::getRaw(v92, *(&v92 + 1), v43, v33, 2 * v40);
  Raw = v44;
  v45 = Value;
  v46 = v86;
  if (v86)
  {
    v47 = llvm::APFloatBase::PPCDoubleDouble(v44);
    v48 = (&v45[4 * v46 - 1] - 8);
    v49 = -64 * v46;
    while (1)
    {
      if (v47 == *v48)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v48);
        v50 = (v48 - 32);
        if (v47 != *(v48 - 4))
        {
          goto LABEL_91;
        }

LABEL_86:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v50);
        v48 = (v48 - 64);
        v49 += 64;
        if (!v49)
        {
          goto LABEL_92;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v48);
        v50 = (v48 - 32);
        if (v47 == *(v48 - 4))
        {
          goto LABEL_86;
        }

LABEL_91:
        llvm::detail::IEEEFloat::~IEEEFloat(v50);
        v48 = (v48 - 64);
        v49 += 64;
        if (!v49)
        {
LABEL_92:
          v45 = Value;
          break;
        }
      }
    }
  }

  if (v45 != (&v86 + 8))
  {
    v29 = v45;
LABEL_111:
    free(v29);
  }

  return Raw;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::push_back(unsigned int *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *a1;
  if (v4 >= a1[3])
  {
    if (v5 <= a2 && v5 + (v4 << 6) > a2)
    {
      v12 = a2 - v5;
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v12;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + (a1[2] << 6);
  v7 = *(v2 + 8);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), (v2 + 8));
    v9 = (v6 + 40);
    v10 = (v2 + 40);
    if (v8 != *(v2 + 40))
    {
      goto LABEL_4;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
    goto LABEL_7;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v6 + 8, v2 + 8);
  v9 = (v6 + 40);
  v10 = (v2 + 40);
  if (v8 == *(v2 + 40))
  {
    goto LABEL_6;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
LABEL_7:
  ++a1[2];
}

uint64_t mlir::DenseElementsAttr::get(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v11 = 0;
  mlir::DenseElementsAttr::isValidRawBuffer(a1, a2, a3, a4, &v11);
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  v14[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail31DenseIntOrFPElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_24DenseIntOrFPElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefIcEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v19[1] = v14;
  mlir::detail::DenseIntOrFPElementsAttrStorage::getKey(v12, v13, a3, a4, v11, v17);
  v8 = __ROR8__(v18 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v17[0] >> 4) ^ (v17[0] >> 9));
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = ((a4 - (a4 != 0)) >> 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = operator new(v8);
    v10 = &v9[v8];
    bzero(v9, v8);
    if (!a4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    if (!a4)
    {
      goto LABEL_29;
    }
  }

  v11 = *a3;
  if (!a4)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 1;
  do
  {
    while (1)
    {
      v14 = a3[v12];
      v15 = v14 == v11;
      v16 = 1 << (v12 & 7);
      v17 = v12 >> 3;
      if (v14 == 1)
      {
        break;
      }

      v9[v17] &= ~v16;
      v13 &= v15;
      if (a4 == ++v12)
      {
        goto LABEL_13;
      }
    }

    v9[v17] |= v16;
    v13 &= v15;
    ++v12;
  }

  while (a4 != v12);
LABEL_13:
  if (v13)
  {
LABEL_14:
    v18 = v10 - v9;
    if (v10 == v9)
    {
      v20 = 1 - v18;
      if (v18 == 1)
      {
        v19 = &v10[v20];
        bzero(v10, v20);
      }

      else
      {
        v21 = 2 * v18;
        if (2 * v18 <= 1)
        {
          v21 = 1;
        }

        if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v23 = operator new(v22);
        v19 = v23 + 1;
        bzero(&v23[v18], 1 - v18);
        memcpy(v23, v9, v10 - v9);
        if (v10)
        {
          operator delete(v9);
          LOBYTE(v11) = *a3;
        }

        v9 = v23;
      }
    }

    else if (v18 > 1)
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = v10;
    }

    *v9 = -v11;
    v10 = v19;
  }

LABEL_29:
  result = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v9, v10 - v9);
  if (v9)
  {
    v25 = result;
    operator delete(v9);
    return v25;
  }

  return result;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5 * a3 - (a5 * a3 != 0);
  if (a5 * a3)
  {
    v8 = (v7 >> 3) + 1;
  }

  else
  {
    v8 = v7 >> 3;
  }

  if (v8)
  {
    v9 = a1;
    v10 = a2;
    v11 = operator new(v8);
    v12 = &v11[v8];
    bzero(v11, v8);
    a1 = v9;
    a2 = v10;
    if (!a5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (!a5)
    {
      goto LABEL_34;
    }
  }

  v25 = a1;
  v26 = a2;
  v13 = 0;
  v14 = 16 * a5;
  v15 = a4;
  do
  {
    v17 = *(v15 + 8);
    v29 = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v15);
      v17 = v29;
      if (v29 == 1)
      {
LABEL_14:
        v18 = 1 << (v13 & 7);
        v19 = v13 >> 3;
        if (__p == 1)
        {
          v16 = v11[v19] | v18;
        }

        else
        {
          v16 = v11[v19] & ~v18;
        }

        v11[v19] = v16;
        goto LABEL_11;
      }
    }

    else
    {
      __p = *v15;
      if (v17 == 1)
      {
        goto LABEL_14;
      }
    }

    if (v17)
    {
      v20 = ((v17 - (v17 != 0)) >> 3) + 1;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      if (v17 >= 0x41)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      memmove(&v11[v13 >> 3], p_p, v20);
    }

    if (v17 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

LABEL_11:
    v15 += 16;
    v13 += a3;
    v14 -= 16;
  }

  while (v14);
  a1 = v25;
  a2 = v26;
  if (a5 == 1 && *(a4 + 8) == 1)
  {
    if (*v11)
    {
      v22 = -1;
    }

    else
    {
      v22 = 0;
    }

    *v11 = v22;
  }

LABEL_34:
  result = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v11, v12 - v11);
  if (v11)
  {
    v24 = result;
    operator delete(v11);
    return v24;
  }

  return result;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v7 = ((32 * a5) >> 5) * a3;
  v8 = v7 - (v7 != 0);
  v31 = 32 * a5;
  v9 = a4 + 32 * a5;
  if (v7)
  {
    v10 = (v8 >> 3) + 1;
  }

  else
  {
    v10 = v8 >> 3;
  }

  if (v10)
  {
    v11 = operator new(v10);
    v28 = &v11[v10];
    bzero(v11, v10);
    if (a4 != v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v28 = 0;
    v11 = 0;
    if (a4 != v9)
    {
LABEL_13:
      v15 = llvm::APFloatBase::PPCDoubleDouble(a1);
      v16 = 0;
      v17 = (a4 + 8);
      for (i = v31; i; i -= 32)
      {
        if (v15 == *v17)
        {
          a1 = llvm::detail::DoubleAPFloat::bitcastToAPInt(v17, &v34);
          v20 = v35;
          if (v35 != 1)
          {
LABEL_22:
            if (v20)
            {
              v23 = ((v20 - (v20 != 0)) >> 3) + 1;
            }

            else
            {
              v23 = (v20 - (v20 != 0)) >> 3;
            }

            if (v23)
            {
              if (v20 >= 0x41)
              {
                v24 = v34;
              }

              else
              {
                v24 = &v34;
              }

              a1 = memmove(&v11[v16 >> 3], v24, v23);
            }

            if (v20 >= 0x41)
            {
              a1 = v34;
              if (v34)
              {
                operator delete[](v34);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::bitcastToAPInt(v17, &v34);
          v20 = v35;
          if (v35 != 1)
          {
            goto LABEL_22;
          }
        }

        v21 = 1 << (v16 & 7);
        v22 = v16 >> 3;
        if (v34 == 1)
        {
          v19 = v11[v22] | v21;
        }

        else
        {
          v19 = v11[v22] & ~v21;
        }

        v11[v22] = v19;
LABEL_16:
        v16 += a3;
        v17 = (v17 + 32);
      }
    }
  }

  if (v31 == 32)
  {
    v13 = *(a4 + 8);
    v12 = (a4 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v13)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(v12, &__p);
      v14 = v33;
      if (v33 >= 0x41)
      {
LABEL_11:
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_39;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(v12, &__p);
      v14 = v33;
      if (v33 >= 0x41)
      {
        goto LABEL_11;
      }
    }

    if (v14 == 1)
    {
      if (*v11)
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      *v11 = v25;
    }
  }

LABEL_39:
  result = mlir::DenseIntOrFPElementsAttr::getRaw(v29, a2, v11, v28 - v11);
  if (v11)
  {
    v27 = result;
    operator delete(v11);
    return v27;
  }

  return result;
}

BOOL mlir::DenseElementsAttr::isValidRawBuffer(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, BOOL *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  isSplat = mlir::ElementsAttr::isSplat(v17);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v11 = 8 * a4;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v17);
  NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v13);
  *a5 = NumElements == 1;
  if (v10 != 1)
  {
    if (v11 != v10)
    {
      v15 = NumElements * v10;
      return v11 == v15;
    }

LABEL_9:
    result = 1;
    *a5 = 1;
    return result;
  }

  if (a4 == 1 && *a3 - 1 >= 0xFE)
  {
    goto LABEL_9;
  }

  v15 = (NumElements - (NumElements != 0) + 8 * (NumElements != 0)) & 0xFFFFFFFFFFFFFFF8;
  return v11 == v15;
}

uint64_t mlir::DenseElementsAttr::isValidIntOrFloat(mlir::DenseElementsAttr *this, uint64_t a2, char a3, unsigned int a4)
{
  v9 = *(*this + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v9);
  return isValidIntOrFloat(isSplat, a2, a3, a4);
}

uint64_t isValidIntOrFloat(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v15 = a1;
  if (mlir::detail::getDenseElementBitWidth(a1) != 8 * a2)
  {
    return 0;
  }

  if (a3)
  {
    if (mlir::Type::isIndex(&v15))
    {
      return 1;
    }

    v13 = v15;
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v13 = 0;
    }

    v14 = v13;
    if (v13)
    {
      if (mlir::IntegerType::getSignedness(&v14))
      {
        return (mlir::IntegerType::getSignedness(&v14) != 1) ^ a4;
      }

      return 1;
    }

    return 0;
  }

  v8 = *(*a1 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v8 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v8 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

unint64_t mlir::DenseElementsAttr::tryGetComplexIntValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *(*this + 8);
  *&v19 = mlir::ElementsAttr::isSplat(&v19);
  result = mlir::AffineMapAttr::getValue(&v19);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v7 = *(*this + 16);
    v8 = *(*this + 32);
    v9 = *(*this + 24);
    *&v19 = *(*this + 8);
    v6 = v19;
    *(&v19 + 1) = v7;
    *&v19 = mlir::ElementsAttr::isSplat(&v19);
    Value = mlir::AffineMapAttr::getValue(&v19);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(Value);
    v12 = *this;
    v19 = *(*this + 8);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v19);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v14);
    v16 = *(v12 + 32);
    v17 = *(v12 + 24);
    v19 = *(v12 + 8);
    *&v19 = mlir::ElementsAttr::isSplat(&v19);
    v18 = mlir::AffineMapAttr::getValue(&v19);
    result = mlir::detail::getDenseElementBitWidth(v18);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
    *(a2 + 48) = NumElements;
    *(a2 + 56) = result;
    v5 = 1;
    *(a2 + 64) = v6;
    *(a2 + 72) = v7;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v5;
  return result;
}

uint64_t mlir::DenseElementsAttr::getNumElements(mlir::DenseElementsAttr *this)
{
  v4 = *(*this + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v4);
  return mlir::ShapedType::getNumElements(ArgAttrsAttr, v2);
}

unint64_t mlir::DenseElementsAttr::tryGetFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v38 = *(*this + 8);
  result = mlir::ElementsAttr::isSplat(&v38);
  v5 = *(*result + 136);
  v21 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v21 && (v37 = result) != 0)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v37);
    v24 = *(*this + 16);
    v36 = *(*this + 32);
    v25 = *(*this + 24);
    *&v38 = *(*this + 8);
    v23 = v38;
    *(&v38 + 1) = v24;
    isSplat = mlir::ElementsAttr::isSplat(&v38);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
    v28 = *this;
    v38 = *(*this + 8);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v30);
    v32 = *(v28 + 32);
    v33 = *(v28 + 24);
    v38 = *(v28 + 8);
    v34 = mlir::ElementsAttr::isSplat(&v38);
    result = mlir::detail::getDenseElementBitWidth(v34);
    *a2 = v36;
    *(a2 + 8) = v25;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = FloatSemantics;
    *(a2 + 40) = v32;
    *(a2 + 48) = v33;
    *(a2 + 56) = NumElements;
    *(a2 + 64) = result;
    *(a2 + 72) = FloatSemantics;
    v35 = 1;
    *(a2 + 80) = v23;
    *(a2 + 88) = v24;
  }

  else
  {
    v35 = 0;
    *a2 = 0;
  }

  *(a2 + 96) = v35;
  return result;
}

unint64_t mlir::DenseElementsAttr::tryGetComplexFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v40 = *(*this + 8);
  result = mlir::ElementsAttr::isSplat(&v40);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  if (v5)
  {
    result = mlir::AffineMapAttr::getValue(&v39);
    v6 = *(*result + 136);
    v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (v22 && (v38 = result) != 0)
    {
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v38);
      v25 = *(*this + 16);
      v37 = *(*this + 32);
      v26 = *(*this + 24);
      *&v40 = *(*this + 8);
      v24 = v40;
      *(&v40 + 1) = v25;
      *&v40 = mlir::ElementsAttr::isSplat(&v40);
      Value = mlir::AffineMapAttr::getValue(&v40);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(Value);
      v29 = *this;
      v40 = *(*this + 8);
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
      NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v31);
      v33 = *(v29 + 32);
      v34 = *(v29 + 24);
      v40 = *(v29 + 8);
      *&v40 = mlir::ElementsAttr::isSplat(&v40);
      v35 = mlir::AffineMapAttr::getValue(&v40);
      result = mlir::detail::getDenseElementBitWidth(v35);
      *a2 = v37;
      *(a2 + 8) = v26;
      *(a2 + 16) = 0;
      *(a2 + 24) = DenseElementBitWidth;
      *(a2 + 32) = FloatSemantics;
      *(a2 + 40) = v33;
      *(a2 + 48) = v34;
      *(a2 + 56) = NumElements;
      *(a2 + 64) = result;
      *(a2 + 72) = FloatSemantics;
      v36 = 1;
      *(a2 + 80) = v24;
      *(a2 + 88) = v25;
    }

    else
    {
      v36 = 0;
      *a2 = 0;
    }

    *(a2 + 96) = v36;
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::reshape(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (*(result + 8) != a2)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(a2, a3, *(result + 32), *(result + 40));
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::bitcast(uint64_t a1, uint64_t a2)
{
  *v7 = *(*a1 + 8);
  if (mlir::ElementsAttr::isSplat(v7) == a2)
  {
    return *a1;
  }

  LOBYTE(v8) = 0;
  v9 = 0;
  v5 = mlir::ShapedType::cloneWith(v7, &v8, a2);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, *(*a1 + 32), *(*a1 + 40));
}

uint64_t mlir::DenseElementsAttr::mapValues(uint64_t *a1, uint64_t a2, void (*a3)(void **__return_ptr, uint64_t, void **), uint64_t a4)
{
  v5 = *a1;
  return mlir::DenseIntElementsAttr::mapValues(&v5, a2, a3, a4);
}

{
  v5 = *a1;
  return mlir::DenseFPElementsAttr::mapValues(&v5, a2, a3, a4);
}

uint64_t mlir::DenseIntElementsAttr::mapValues(uint64_t *a1, uint64_t a2, void (*a3)(void **__return_ptr, uint64_t, void **), uint64_t a4)
{
  v83[1] = *MEMORY[0x1E69E9840];
  v81 = v83;
  v82 = xmmword_1E096FB00;
  v76 = *(*a1 + 8);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(a2);
  NumElements = 1;
  v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  v69 = v8;
  v74[0] = mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  v74[1] = v9;
  v75 = 1;
  v77 = mlir::ShapedType::cloneWith(&v76, v74, a2);
  v78 = v10;
  if ((*(*a1 + 24) & 1) == 0)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v12);
  }

  v13 = NumElements * v69 - (NumElements * v69 != 0);
  if (NumElements * v69)
  {
    v14 = (v13 >> 3) + 1;
  }

  else
  {
    v14 = v13 >> 3;
  }

  v15 = v82;
  if (v82 != v14)
  {
    if (v82 <= v14)
    {
      if (*(&v82 + 1) < v14)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v81, v83, v14, 1);
        v15 = v82;
      }

      if (v14 != v15)
      {
        bzero(&v81[v15], v14 - v15);
      }
    }

    *&v82 = v14;
  }

  v16 = *a1;
  if (*(*a1 + 24) != 1)
  {
    v22 = *(v16 + 32);
    *v74 = *(v16 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v74);
    v24 = mlir::detail::getDenseElementBitWidth(isSplat);
    v25 = *a1;
    *v74 = *(*a1 + 8);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(v74);
    v28 = mlir::ShapedType::getNumElements(v26, v27);
    *v74 = *(v25 + 8);
    v29 = mlir::ElementsAttr::isSplat(v74);
    mlir::detail::getDenseElementBitWidth(v29);
    if (!v28)
    {
      goto LABEL_126;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v24 - (v24 != 0);
    v34 = 8;
    if (!v24)
    {
      v34 = 0;
    }

    v35 = (v33 + v34) & 0xFFFFFFFFFFFFFFF8;
    v36 = v33 >> 3;
    if (v24)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = v36;
    }

    v38 = v37;
    while (1)
    {
      if (v24 == 1)
      {
        v39 = ((*(v22 + (v32 >> 3)) >> (v32 & 7)) & 1);
        v73 = 1;
        __dst = v39;
      }

      else
      {
        v73 = v24;
        if (v24 >= 0x41)
        {
          llvm::APInt::initSlowCase(&__dst, 0, 0);
          if (v73 >= 0x41)
          {
            p_dst = __dst;
          }

          else
          {
            p_dst = &__dst;
          }

          memmove(p_dst, (v22 + (v30 >> 3)), ((v24 - 1) >> 3) + 1);
          v71 = v73;
          if (v73 > 0x40)
          {
LABEL_33:
            llvm::APInt::initSlowCase(&v70, &__dst);
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        __dst = 0;
        if (v37)
        {
          memmove(&__dst, (v22 + (v30 >> 3)), v37);
          v71 = v73;
          if (v73 > 0x40)
          {
            goto LABEL_33;
          }

LABEL_38:
          v39 = __dst;
          goto LABEL_39;
        }

        v39 = 0;
      }

      v71 = v24;
LABEL_39:
      v70 = v39;
LABEL_40:
      a3(v74, a4, &v70);
      v41 = v81;
      v42 = LODWORD(v74[1]);
      v80 = v74[1];
      if (LODWORD(v74[1]) > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, v74);
        v42 = v80;
        if (v80 != 1)
        {
LABEL_46:
          if (v42)
          {
            v45 = ((v42 - (v42 != 0)) >> 3) + 1;
          }

          else
          {
            v45 = 0;
          }

          if (v45)
          {
            if (v42 >= 0x41)
            {
              p_p = __p;
            }

            else
            {
              p_p = &__p;
            }

            memmove(&v41[v31 >> 3], p_p, v45);
          }

          if (v42 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (LODWORD(v74[1]) < 0x41)
          {
            goto LABEL_61;
          }

LABEL_58:
          if (v74[0])
          {
            operator delete[](v74[0]);
          }

          goto LABEL_61;
        }
      }

      else
      {
        __p = v74[0];
        if (LODWORD(v74[1]) != 1)
        {
          goto LABEL_46;
        }
      }

      v43 = 1 << (v31 & 7);
      v44 = v31 >> 3;
      if (__p == 1)
      {
        v41[v44] |= v43;
        if (LODWORD(v74[1]) >= 0x41)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v41[v44] &= ~v43;
        if (LODWORD(v74[1]) >= 0x41)
        {
          goto LABEL_58;
        }
      }

LABEL_61:
      if (v71 >= 0x41 && v70)
      {
        operator delete[](v70);
      }

      if (v73 >= 0x41 && __dst)
      {
        operator delete[](__dst);
      }

      ++v32;
      v31 += v69;
      v30 += v35;
      v37 = v38;
      if (v28 == v32)
      {
        goto LABEL_126;
      }
    }
  }

  if (DenseElementBitWidth != 1)
  {
    v47 = *(v16 + 32);
    *v74 = *(v16 + 8);
    v48 = mlir::ElementsAttr::isSplat(v74);
    v49 = mlir::detail::getDenseElementBitWidth(v48);
    v50 = v49 - 1;
    if (v49 == 1)
    {
      v51 = (*v47 & 1);
      v73 = 1;
      __dst = v51;
      goto LABEL_102;
    }

    v73 = v49;
    if (v49 >= 0x41)
    {
      llvm::APInt::initSlowCase(&__dst, 0, 0);
      v54 = (v50 >> 3) + 1;
      if (v73 >= 0x41)
      {
        v55 = __dst;
      }

      else
      {
        v55 = &__dst;
      }
    }

    else
    {
      __dst = 0;
      if (v49)
      {
        v54 = ((v49 - (v49 != 0)) >> 3) + 1;
      }

      else
      {
        v54 = 0;
      }

      if (!v54)
      {
LABEL_102:
        a3(v74, a4, &__dst);
        v60 = v81;
        v61 = v74[1];
        v80 = v74[1];
        if (LODWORD(v74[1]) > 0x40)
        {
          llvm::APInt::initSlowCase(&__p, v74);
          v61 = v80;
          if (v80 != 1)
          {
LABEL_104:
            if (v61)
            {
              v62 = ((v61 - (v61 != 0)) >> 3) + 1;
            }

            else
            {
              v62 = 0;
            }

            if (v62)
            {
              if (v61 >= 0x41)
              {
                v63 = __p;
              }

              else
              {
                v63 = &__p;
              }

              memmove(v60, v63, v62);
            }

            if (v61 >= 0x41 && __p)
            {
              operator delete[](__p);
              if (LODWORD(v74[1]) < 0x41)
              {
                goto LABEL_123;
              }

LABEL_120:
              if (v74[0])
              {
                operator delete[](v74[0]);
              }

LABEL_123:
              if (v73 < 0x41)
              {
                goto LABEL_126;
              }

              v59 = __dst;
              if (!__dst)
              {
                goto LABEL_126;
              }

              goto LABEL_125;
            }

            goto LABEL_119;
          }
        }

        else
        {
          __p = v74[0];
          if (LODWORD(v74[1]) != 1)
          {
            goto LABEL_104;
          }
        }

        v64 = *v60;
        if (__p != 1)
        {
          *v60 = v64 & 0xFE;
          if (LODWORD(v74[1]) < 0x41)
          {
            goto LABEL_123;
          }

          goto LABEL_120;
        }

        *v60 = v64 | 1;
LABEL_119:
        if (LODWORD(v74[1]) < 0x41)
        {
          goto LABEL_123;
        }

        goto LABEL_120;
      }

      v55 = &__dst;
    }

    memmove(v55, v47, v54);
    goto LABEL_102;
  }

  v17 = *(v16 + 32);
  *v74 = *(v16 + 8);
  v18 = mlir::ElementsAttr::isSplat(v74);
  v19 = mlir::detail::getDenseElementBitWidth(v18);
  v20 = v19 - 1;
  if (v19 == 1)
  {
    v21 = (*v17 & 1);
    v80 = 1;
    __p = v21;
    goto LABEL_86;
  }

  v80 = v19;
  if (v19 >= 0x41)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    v52 = (v20 >> 3) + 1;
    if (v80 >= 0x41)
    {
      v53 = __p;
    }

    else
    {
      v53 = &__p;
    }

    goto LABEL_85;
  }

  __p = 0;
  if (v19)
  {
    v52 = ((v19 - (v19 != 0)) >> 3) + 1;
  }

  else
  {
    v52 = 0;
  }

  if (v52)
  {
    v53 = &__p;
LABEL_85:
    memmove(v53, v17, v52);
  }

LABEL_86:
  a3(v74, a4, &__p);
  v56 = v74[1];
  if (LODWORD(v74[1]) > 0x40)
  {
    v57 = llvm::APInt::countLeadingZerosSlowCase(v74) == v56;
  }

  else
  {
    v57 = v74[0] == 0;
  }

  v58 = v57;
  *v81 = v58 - 1;
  if (LODWORD(v74[1]) >= 0x41 && v74[0])
  {
    operator delete[](v74[0]);
  }

  if (v80 >= 0x41)
  {
    v59 = __p;
    if (__p)
    {
LABEL_125:
      operator delete[](v59);
    }
  }

LABEL_126:
  result = mlir::DenseIntOrFPElementsAttr::getRaw(v77, v78, v81, v82);
  if (v81 != v83)
  {
    v66 = result;
    free(v81);
    return v66;
  }

  return result;
}

uint64_t mlir::DenseFPElementsAttr::mapValues(mlir::DenseElementsAttr *a1, uint64_t a2, void (*a3)(void **__return_ptr, uint64_t, void **), uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  __dst = &v58;
  v57 = xmmword_1E096FB00;
  *v49 = *(*a1 + 8);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(a2);
  v9 = DenseElementBitWidth;
  NumElements = 1;
  if (DenseElementBitWidth == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  *&v61 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  *(&v61 + 1) = v12;
  LOBYTE(v62) = 1;
  v50 = mlir::ShapedType::cloneWith(v49, &v61, a2);
  v51 = v13;
  if ((*(*a1 + 24) & 1) == 0)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v50);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v15);
  }

  v16 = NumElements * v11 - (NumElements * v11 != 0);
  if (NumElements * v11)
  {
    v17 = (v16 >> 3) + 1;
  }

  else
  {
    v17 = v16 >> 3;
  }

  v18 = v57;
  if (v57 != v17)
  {
    if (v57 <= v17)
    {
      if (*(&v57 + 1) < v17)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, &v58, v17, 1);
        v18 = v57;
      }

      if (v17 != v18)
      {
        bzero(__dst + v18, v17 - v18);
      }
    }

    *&v57 = v17;
  }

  if (*(*a1 + 24) != 1)
  {
    mlir::DenseElementsAttr::tryGetFloatValues(a1, &v61);
    v46 = v61;
    v47 = v62;
    v48 = v63;
    mlir::DenseElementsAttr::tryGetFloatValues(a1, &v61);
    v22 = v64;
    if (v47 == v64)
    {
LABEL_52:
      result = mlir::DenseIntOrFPElementsAttr::getRaw(v50, v51, __dst, v57);
      v34 = __dst;
      if (__dst == &v58)
      {
        return result;
      }

      goto LABEL_77;
    }

    v23 = 0;
    while (1)
    {
      llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v46, &v61);
      v24 = *(&v61 + 1);
      v26 = llvm::APFloatBase::PPCDoubleDouble(v25);
      if (v26 == v24)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v60, (&v61 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v60, (&v61 + 8));
      }

      a3(&v54, a4, &v59);
      v27 = __dst;
      v28 = v55;
      v53 = v55;
      if (v55 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, &v54);
        v28 = v53;
        if (v53 != 1)
        {
LABEL_28:
          if (v28)
          {
            v29 = ((v28 - (v28 != 0)) >> 3) + 1;
          }

          else
          {
            v29 = 0;
          }

          if (v29)
          {
            if (v28 >= 0x41)
            {
              p_p = __p;
            }

            else
            {
              p_p = &__p;
            }

            memmove(&v27[v23 >> 3], p_p, v29);
          }

          if (v28 >= 0x41 && __p)
          {
            operator delete[](__p);
            if (v55 >= 0x41)
            {
              goto LABEL_44;
            }

            goto LABEL_47;
          }

          goto LABEL_43;
        }
      }

      else
      {
        __p = v54;
        if (v55 != 1)
        {
          goto LABEL_28;
        }
      }

      v31 = 1 << (v23 & 7);
      v32 = v23 >> 3;
      if (__p == 1)
      {
        v27[v32] |= v31;
LABEL_43:
        if (v55 >= 0x41)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      v27[v32] &= ~v31;
      if (v55 >= 0x41)
      {
LABEL_44:
        if (v54)
        {
          operator delete[](v54);
        }
      }

LABEL_47:
      if (v26 == v60[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v60);
        if (v26 != *(&v61 + 1))
        {
          goto LABEL_51;
        }

LABEL_22:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v61 + 8));
        *&v47 = v47 + 1;
        v23 += v11;
        if (v47 == v22)
        {
          goto LABEL_52;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v60);
        if (v26 == *(&v61 + 1))
        {
          goto LABEL_22;
        }

LABEL_51:
        llvm::detail::IEEEFloat::~IEEEFloat((&v61 + 8));
        *&v47 = v47 + 1;
        v23 += v11;
        if (v47 == v22)
        {
          goto LABEL_52;
        }
      }
    }
  }

  if (v9 == 1)
  {
    mlir::DenseElementsAttr::tryGetFloatValues(a1, &v61);
    v46 = v61;
    v47 = v62;
    v48 = v63;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v46, &v59);
    v19 = (a3)(&v54, a4, &v59);
    v20 = v55;
    if (v55 > 0x40)
    {
      v19 = llvm::APInt::countLeadingZerosSlowCase(&v54);
      v21 = v19 == v20;
    }

    else
    {
      v21 = v54 == 0;
    }

    v40 = v21;
    *__dst = v40 - 1;
    if (v55 >= 0x41)
    {
      v19 = v54;
      if (v54)
      {
        operator delete[](v54);
      }
    }

    v41 = &v59;
    v42 = v60[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v19) != v42)
    {
LABEL_76:
      llvm::detail::IEEEFloat::~IEEEFloat((v41 + 1));
      result = mlir::DenseIntOrFPElementsAttr::getRaw(v50, v51, __dst, v57);
      v34 = __dst;
      if (__dst == &v58)
      {
        return result;
      }

      goto LABEL_77;
    }

    goto LABEL_87;
  }

  mlir::DenseElementsAttr::tryGetFloatValues(a1, &v61);
  v46 = v61;
  v47 = v62;
  v48 = v63;
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v46, &v61);
  inited = (a3)(&v59, a4, &v61);
  v36 = __dst;
  v37 = v60[0];
  v55 = v60[0];
  if (LODWORD(v60[0]) > 0x40)
  {
    inited = llvm::APInt::initSlowCase(&v54, &v59);
    v37 = v55;
    if (v55 != 1)
    {
LABEL_56:
      if (v37)
      {
        v38 = ((v37 - (v37 != 0)) >> 3) + 1;
      }

      else
      {
        v38 = 0;
      }

      if (v38)
      {
        if (v37 >= 0x41)
        {
          v39 = v54;
        }

        else
        {
          v39 = &v54;
        }

        inited = memmove(v36, v39, v38);
      }

      if (v37 >= 0x41)
      {
        inited = v54;
        if (v54)
        {
          operator delete[](v54);
          if (LODWORD(v60[0]) < 0x41)
          {
            goto LABEL_86;
          }

          goto LABEL_83;
        }
      }

      goto LABEL_82;
    }
  }

  else
  {
    v54 = v59;
    if (LODWORD(v60[0]) != 1)
    {
      goto LABEL_56;
    }
  }

  v44 = *v36;
  if (v54 != 1)
  {
    *v36 = v44 & 0xFE;
    if (LODWORD(v60[0]) < 0x41)
    {
      goto LABEL_86;
    }

    goto LABEL_83;
  }

  *v36 = v44 | 1;
LABEL_82:
  if (LODWORD(v60[0]) < 0x41)
  {
    goto LABEL_86;
  }

LABEL_83:
  inited = v59;
  if (v59)
  {
    operator delete[](v59);
  }

LABEL_86:
  v41 = &v61;
  v45 = *(&v61 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(inited) != v45)
  {
    goto LABEL_76;
  }

LABEL_87:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat((v41 + 1));
  result = mlir::DenseIntOrFPElementsAttr::getRaw(v50, v51, __dst, v57);
  v34 = __dst;
  if (__dst == &v58)
  {
    return result;
  }

LABEL_77:
  v43 = result;
  free(v34);
  return v43;
}

uint64_t mlir::DenseFPElementsAttr::classof(uint64_t a1)
{
  v1 = *(*a1 + 136);
  v3 = v1 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || a1 == 0;
  v4 = !v3;
  if (v3)
  {
    return v4 & v1;
  }

  v13 = *(a1 + 8);
  v5 = *(*mlir::ElementsAttr::isSplat(&v13) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return v4 & 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    LODWORD(v1) = 1;
    return v4 & v1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return v4 & 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return v4 & 1;
  }

  LODWORD(v1) = 1;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return v4 & v1;
  }

  v11 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v12 = v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v11;
  return v4 & v12;
}

BOOL mlir::DenseIntElementsAttr::classof(uint64_t a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1)
  {
    if (v5)
    {
      v6 = *(a1 + 8);
      isSplat = mlir::ElementsAttr::isSplat(&v6);
      return mlir::Type::isIntOrIndex(&isSplat);
    }
  }

  return result;
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v14[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v19[1] = v14;
  v6 = *a3;
  v17[0] = v13;
  v17[1] = v6;
  v18 = *(a3 + 2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ DWORD1(v6));
  v8 = 0x9DDFEA08EB382D69 * (DWORD1(v6) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, __int128 *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = a1;
  v29 = a2;
  *&v34[0] = mlir::Attribute::getContext(&v28);
  Dialect = mlir::MLIRContext::getOrLoadDialect(*&v34[0], "builtin", 7, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, v34);
  v9 = mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>(Dialect);
  v10 = v28;
  v11 = v29;
  v37 = *a5;
  v12 = *(a5 + 6);
  v38 = *(a5 + 2);
  v41 = v12;
  if (v12 >= 8)
  {
    if ((v12 & 2) != 0 && (v12 & 4) != 0)
    {
      v13 = v9;
      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 8))(&v39, a5 + 24);
      (*((v41 & 0xFFFFFFFFFFFFFFF8) + 16))(a5 + 24);
      v9 = v13;
    }

    else
    {
      v39 = *(a5 + 24);
      v40 = *(a5 + 5);
    }

    *(a5 + 6) = 0;
  }

  v42 = *(a5 + 56);
  v43 = 1;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(v9, a3, a4, &v37, &v26);
  *&v30 = v10;
  *(&v30 + 1) = v11;
  Context = mlir::Attribute::getContext(&v30);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v31[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v31[1] = Context;
  v36[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v36[1] = v31;
  v34[0] = v30;
  v34[1] = v26;
  v35 = v27;
  v16 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ DWORD1(v26));
  v17 = 0x9DDFEA08EB382D69 * (DWORD1(v26) ^ (v16 >> 47) ^ v16);
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = __ROR8__(v18 + 16, 16);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v30 >> 4) ^ (v30 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v32[0] = v34;
  v32[1] = v36;
  v33 = v34;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20)))) ^ v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v33, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
  if (v43 == 1 && v41 >= 8)
  {
    v22 = (v41 & 2) != 0 ? &v39 : v39;
    v23 = result;
    (*(v41 & 0xFFFFFFFFFFFFFFF8))(v22, v37, *(&v37 + 1), v38);
    result = v23;
    v24 = v41;
    if (v41 >= 8)
    {
      if ((v41 & 4) != 0)
      {
        if ((v41 & 2) != 0)
        {
          v25 = &v39;
        }

        else
        {
          v25 = v39;
        }

        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 16))(v25);
        result = v23;
      }

      if ((v24 & 2) == 0)
      {
        llvm::deallocate_buffer(v39, *(&v39 + 1));
      }
    }
  }

  return result;
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v9 = *(a1 + 8);
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a4 + 64) == 1)
  {
    v18 = *a4;
    v10 = *(a4 + 48);
    v19 = *(a4 + 16);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = v8;
        v12 = v9;
        v13 = a5;
        v14 = a4;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a4 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v14 + 24);
        a4 = v14;
        v9 = v12;
        v8 = v11;
        a5 = v13;
      }

      else
      {
        v20 = *(a4 + 24);
        v21 = *(a4 + 40);
      }

      *(a4 + 48) = 0;
    }

    v23 = *(a4 + 56);
    v24 = 1;
  }

  mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(v8, v9, a2, a3, &v18, a5);
  if (v24 == 1 && v22 >= 8)
  {
    v15 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v15, v18, *(&v18 + 1), v19);
    v16 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v17 = &v20;
        }

        else
        {
          v17 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
      }

      if ((v16 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1));
      }
    }
  }
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (v6)
      {
LABEL_4:
        v7 = v5;
        v8 = v6;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[2 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 2;
          v8 += ~(v8 >> 1);
          if (v12 < v4)
          {
            v7 = v11;
          }

          else
          {
            v8 = v9;
          }
        }

        while (v8);
        if (v7 != &v5[2 * v6])
        {
          if (*v7 == v4)
          {
            v13 = v7[1];
          }

          else
          {
            v13 = 0;
          }

          return mlir::ElementsAttr::getElementType(v2, v13);
        }
      }
    }

    else
    {
      v15 = v3;
      v16 = v2;
      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
      v2 = v16;
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v15 + 8);
      v6 = *(v15 + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;

    return mlir::ElementsAttr::getElementType(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getElementType(v2, v13);
}

llvm::APFloatBase *mlir::SparseElementsAttr::getZeroAttr(mlir::SparseElementsAttr *this)
{
  v39 = *MEMORY[0x1E69E9840];
  ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(this);
  v3 = *(*ElementType + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {

    return mlir::FloatAttr::get(ElementType, 0.0);
  }

  else
  {
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v21 = ElementType;
    }

    else
    {
      v21 = 0;
    }

    v33 = v21;
    if (v21)
    {
      Value = mlir::AffineMapAttr::getValue(&v33);
      v23 = *(*Value + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        v24 = mlir::FloatAttr::get(Value, 0.0);
      }

      else
      {
        v24 = mlir::IntegerAttr::get(Value, 0);
      }

      v25 = v24;
      Context = mlir::Attribute::getContext(&v33);
      v38[0] = v25;
      v38[1] = v25;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v34[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
      v34[1] = Context;
      v31[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
      v31[1] = v34;
      v37[0] = v38;
      v37[1] = 2;
      v28 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v38, &v39);
      v29 = HIDWORD(v28) ^ 0xFF51AFD7ED558CCDLL;
      v30 = 0x9DDFEA08EB382D69 * ((8 * v28 + 8) ^ v29);
      v35[0] = v37;
      v35[1] = v31;
      v36 = v37;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v35);
    }

    else if (*(**(*this + 32) + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
    {
      v32 = 257;
      return mlir::StringAttr::get(v31, ElementType);
    }

    else
    {

      return mlir::IntegerAttr::get(ElementType, 0);
    }
  }
}

void mlir::SparseElementsAttr::getFlattenedSparseIndices(mlir::SparseElementsAttr *this@<X0>, uint64_t **a2@<X8>)
{
  v2 = this;
  v3 = a2;
  v61[9] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v59 = *(*this + 24);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v59, v60);
  v4 = v60[0];
  v5 = v60[1];
  v6 = v61[0];
  if (*(v59 + 24) == 1)
  {
    v58 = *(*v2 + 8);
    mlir::CallableOpInterface::getArgAttrsAttr(&v58);
    v8 = v7;
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v60[0] = v61;
    HIDWORD(v60[1]) = 8;
    v10 = v4[v9];
    if (v7 >= 9)
    {
      LODWORD(v60[1]) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v60, v61, v7, 8);
      v11 = v60[0];
      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = v8 & 3;
      v14 = vdupq_n_s64(v10);
      v15 = (v60[0] + 16);
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != (v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
          v11[v12++] = v10;
          --v13;
        }

        while (v13);
      }

      goto LABEL_72;
    }

    if (!v7)
    {
      goto LABEL_71;
    }

    v32 = vdupq_n_s64(v7 - 1);
    v33 = v7 + 1;
    v34 = vmovn_s64(vcgeq_u64(v32, xmmword_1E09700F0));
    if (v34.i8[0])
    {
      v61[0] = v10;
      v35 = v33 & 0x1E;
      if ((v34.i8[4] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v35 = v33 & 0x1E;
      if ((v34.i8[4] & 1) == 0)
      {
LABEL_33:
        if (v35 == 2)
        {
          goto LABEL_71;
        }

        goto LABEL_55;
      }
    }

    v61[1] = v10;
    if (v35 == 2)
    {
      goto LABEL_71;
    }

LABEL_55:
    v51 = vmovn_s64(vcgtq_u64(v32, xmmword_1E0970220));
    if (v51.i8[0])
    {
      v61[2] = v10;
      if ((v51.i8[4] & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v51.i8[4] & 1) == 0)
    {
LABEL_57:
      if (v35 == 4)
      {
        goto LABEL_71;
      }

LABEL_61:
      v52 = vmovn_s64(vcgtq_u64(v32, xmmword_1E0970230));
      if (v52.i8[0])
      {
        v61[4] = v10;
        if ((v52.i8[4] & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else if ((v52.i8[4] & 1) == 0)
      {
LABEL_63:
        if (v35 == 6)
        {
          goto LABEL_71;
        }

LABEL_67:
        v53 = vmovn_s64(vcgtq_u64(v32, xmmword_1E0971C10));
        if (v53.i8[0])
        {
          v61[6] = v10;
        }

        if (v53.i8[4])
        {
          v61[7] = v10;
        }

        goto LABEL_71;
      }

      v61[5] = v10;
      if (v35 != 6)
      {
        goto LABEL_67;
      }

LABEL_71:
      v11 = v61;
LABEL_72:
      LODWORD(v60[1]) = v8;
      FlattenedIndex = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(v2, v11);
      v55 = operator new(8uLL);
      *v3 = v55;
      *v55++ = FlattenedIndex;
      v3[1] = v55;
      v3[2] = v55;
      if (v60[0] != v61)
      {
        free(v60[0]);
      }

      return;
    }

    v61[3] = v10;
    if (v35 == 4)
    {
      goto LABEL_71;
    }

    goto LABEL_61;
  }

  *v60 = *(v59 + 8);
  v17 = *mlir::CallableOpInterface::getArgAttrsAttr(v60);
  *v60 = *(*v2 + 8);
  mlir::CallableOpInterface::getArgAttrsAttr(v60);
  if (v17)
  {
    v19 = v18;
    v57 = v2;
    if (v5)
    {
      v20 = 0;
      v21 = 0;
      while (1)
      {
        while (1)
        {
          v23 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(v2, v4);
          v24 = v3[2];
          if (v20 >= v24)
          {
            break;
          }

          *v20++ = v23;
          v22 = v21;
          v3[1] = v20;
          if (!--v17)
          {
            goto LABEL_52;
          }
        }

        v25 = v20 - v21;
        v26 = (v20 - v21) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          break;
        }

        v28 = v24 - v21;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (v29 >> 61)
          {
            v56 = v3;
            v22 = v21;
LABEL_78:
            *v56 = v22;
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v30 = v23;
          v22 = operator new(8 * v29);
          v23 = v30;
        }

        else
        {
          v22 = 0;
        }

        v31 = &v22[8 * v26];
        *v31 = v23;
        v20 = v31 + 1;
        memcpy(v22, v21, v25);
        v3[1] = v20;
        v3[2] = &v22[8 * v29];
        if (v21)
        {
          operator delete(v21);
        }

        v2 = v57;
        v3[1] = v20;
        v21 = v22;
        if (!--v17)
        {
          goto LABEL_52;
        }
      }

      v22 = v21;
    }

    else
    {
      v36 = 0;
      v22 = 0;
      v37 = 8 * v18;
      v38 = &v4[v6];
      v56 = v3;
      while (1)
      {
        while (1)
        {
          v39 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(v2, v38);
          v40 = v3[2];
          if (v36 >= v40)
          {
            break;
          }

          *v36++ = v39;
          v3[1] = v36;
          v38 += v37;
          if (!--v17)
          {
            goto LABEL_52;
          }
        }

        v41 = v36 - v22;
        v42 = (v36 - v22) >> 3;
        v43 = v42 + 1;
        if ((v42 + 1) >> 61)
        {
          break;
        }

        v44 = v40 - v22;
        if (v44 >> 2 > v43)
        {
          v43 = v44 >> 2;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          if (v45 >> 61)
          {
            goto LABEL_78;
          }

          v46 = v19;
          v47 = v37;
          v48 = v39;
          v49 = operator new(8 * v45);
          v39 = v48;
          v37 = v47;
          v19 = v46;
          v3 = v56;
        }

        else
        {
          v49 = 0;
        }

        v50 = &v49[8 * v42];
        *v50 = v39;
        v36 = v50 + 1;
        memcpy(v49, v22, v41);
        v3[1] = v36;
        v3[2] = &v49[8 * v45];
        if (v22)
        {
          operator delete(v22);
        }

        v22 = v49;
        v2 = v57;
        v3[1] = v36;
        v38 += v37;
        if (!--v17)
        {
          goto LABEL_52;
        }
      }
    }

    *v3 = v22;
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v22 = 0;
LABEL_52:
  *v3 = v22;
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = v4;
    v18 = v3;
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
    v3 = v18;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v17 + 8);
    v7 = *(v17 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v14 = v8[1];
    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  v19[0] = v3;
  v19[1] = v14;
  ArgOperands = mlir::CallOpInterface::getArgOperands(v19);
  return mlir::ElementsAttr::getFlattenedIndex(ArgOperands, a2);
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(uint64_t a1, mlir::CallableOpInterface **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  (**a2)(&v41, *(*a2 + 1));
  if (v41)
  {
    LODWORD(v38) = 3;
    v39 = "expected shape ([";
    v40 = 17;
    v4 = &v38;
    v5 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v38 && v43 + 24 * v44 > &v38)
      {
        v34 = &v38 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v5 = v43;
        v4 = (v43 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v4 = &v38;
        v5 = v43;
      }
    }

    v6 = &v5[24 * v44];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v44;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(a2[1]);
  if (v41)
  {
    v38 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(ArgAttrsAttr, &ArgAttrsAttr[v9], v42, v42, &v38);
    if (v41)
    {
      LODWORD(v38) = 3;
      v39 = "]); inferred shape of indices literal ([";
      v40 = 40;
      v10 = &v38;
      v11 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v38 && v43 + 24 * v44 > &v38)
        {
          v35 = &v38 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v11 = v43;
          v10 = (v43 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v10 = &v38;
          v11 = v43;
        }
      }

      v12 = &v11[24 * v44];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v44;
    }
  }

  v14 = mlir::CallableOpInterface::getArgAttrsAttr(a2[2]);
  if (v41)
  {
    v38 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v14, &v14[v15], v42, v42, &v38);
    if (v41)
    {
      LODWORD(v38) = 3;
      v39 = "]); inferred shape of values literal ([";
      v40 = 39;
      v16 = &v38;
      v17 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v38 && v43 + 24 * v44 > &v38)
        {
          v36 = &v38 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v17 = v43;
          v16 = (v43 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = &v38;
          v17 = v43;
        }
      }

      v18 = &v17[24 * v44];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v44;
    }
  }

  v20 = mlir::CallableOpInterface::getArgAttrsAttr(a2[3]);
  if (v41)
  {
    v38 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v20, &v20[v21], v42, v42, &v38);
    if (v41)
    {
      LODWORD(v38) = 3;
      v39 = "])";
      v40 = 2;
      v22 = &v38;
      v23 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v38 && v43 + 24 * v44 > &v38)
        {
          v37 = &v38 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v23 = v43;
          v22 = (v43 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v22 = &v38;
          v23 = v43;
        }
      }

      v24 = &v23[24 * v44];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v44;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v50;
      v28 = __p;
      if (v50 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v50 = v26;
      operator delete(v28);
    }

    v29 = v47;
    if (v47)
    {
      v30 = v48;
      v31 = v47;
      if (v48 != v47)
      {
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
        v31 = v47;
      }

      v48 = v29;
      operator delete(v31);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(uint64_t a1, void **a2, unsigned int a3, const char **a4, uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  (**a2)(&v49, (*a2)[1]);
  if (v49)
  {
    LODWORD(v46) = 3;
    v47 = "sparse index #";
    v48 = 14;
    v10 = &v46;
    v11 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v46 && v51 + 24 * v52 > &v46)
      {
        v41 = &v46 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v11 = v51;
        v10 = (v51 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v10 = &v46;
        v11 = v51;
      }
    }

    v12 = &v11[24 * v52];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v52;
    if (v49)
    {
      LODWORD(v46) = 5;
      v47 = a3;
      v15 = &v46;
      v16 = v51;
      if (v14 >= v53)
      {
        if (v51 <= &v46 && v51 + 24 * v14 > &v46)
        {
          v42 = &v46 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v14 + 1, 24);
          v16 = v51;
          v15 = (v51 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v14 + 1, 24);
          v15 = &v46;
          v16 = v51;
        }
      }

      v17 = &v16[24 * v52];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v52;
      if (v49)
      {
        LODWORD(v46) = 3;
        v47 = " is not contained within the value shape, with index=[";
        v48 = 54;
        v20 = &v46;
        v21 = v51;
        if (v19 >= v53)
        {
          if (v51 <= &v46 && v51 + 24 * v19 > &v46)
          {
            v43 = &v46 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v19 + 1, 24);
            v21 = v51;
            v20 = (v51 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v19 + 1, 24);
            v20 = &v46;
            v21 = v51;
          }
        }

        v22 = &v21[24 * v52];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v52;
        if (v49)
        {
          v46 = ", ";
          llvm::interleave<unsigned long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(llvm::ArrayRef<unsigned long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(void)#1},void>(a4, &a4[a5], v50, v50, &v46);
          if (v49)
          {
            LODWORD(v46) = 3;
            v47 = "], and type=";
            v48 = 12;
            v24 = &v46;
            v25 = v51;
            if (v52 >= v53)
            {
              if (v51 <= &v46 && v51 + 24 * v52 > &v46)
              {
                v44 = &v46 - v51;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                v25 = v51;
                v24 = (v51 + v44);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                v24 = &v46;
                v25 = v51;
              }
            }

            v26 = &v25[24 * v52];
            v27 = *v24;
            *(v26 + 2) = v24[2];
            *v26 = v27;
            ++v52;
            if (v49)
            {
              v28 = *a2[1];
              v29 = &v46;
              mlir::DiagnosticArgument::DiagnosticArgument(&v46, v28);
              v30 = v51;
              if (v52 >= v53)
              {
                if (v51 <= &v46 && v51 + 24 * v52 > &v46)
                {
                  v45 = &v46 - v51;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                  v30 = v51;
                  v29 = (v51 + v45);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                  v29 = &v46;
                  v30 = v51;
                }
              }

              v31 = &v30[24 * v52];
              v32 = *v29;
              *(v31 + 2) = v29[2];
              *v31 = v32;
              ++v52;
            }
          }
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v49);
  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v58;
      v35 = __p;
      if (v58 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v58 = v33;
      operator delete(v35);
    }

    v36 = v55;
    if (v55)
    {
      v37 = v56;
      v38 = v55;
      if (v56 != v55)
      {
        do
        {
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            operator delete[](v39);
          }
        }

        while (v37 != v36);
        v38 = v55;
      }

      v56 = v36;
      operator delete(v38);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }
}

void *mlir::DistinctAttr::create(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Attribute::getContext(&v4);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v4);
  {
    mlir::DistinctAttr::create();
  }

  *Storage = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context);
  return Storage;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v14);
    result = mlir::ShapedType::getNumElements(ArgAttrsAttr, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

__n128 llvm::interleave<unsigned long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(llvm::ArrayRef<unsigned long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(void)#1},void>(const char **a1, const char **a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v38 = v5;
    v39 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    v35 = 5;
    v36 = v13;
    v14 = *(a3 + 24);
    v15 = &v35;
    if (v14 >= *(a3 + 28))
    {
      v33 = a1;
      if (v11 <= &v35 && v11 + 24 * v14 > &v35)
      {
        v34 = &v35 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v34[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v35;
      }

      a1 = v33;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      if (*a5)
      {
        v20 = strlen(*a5);
        v35 = 3;
        v36 = v19;
        v37 = v20;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v35 = 3;
        v36 = 0;
        v37 = 0;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      if (v22 > &v35 || v22 + 24 * v21 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v21 + 1, 24);
        v22 = *(a4 + 16);
LABEL_8:
        v23 = &v35;
        goto LABEL_9;
      }

      v31 = &v35 - v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v21 + 1, 24);
      v22 = *(a4 + 16);
      v23 = &v31[v22];
LABEL_9:
      v24 = v22 + 24 * *(a4 + 24);
      v25 = *v23;
      *(v24 + 16) = *(v23 + 2);
      *v24 = v25;
      ++*(a4 + 24);
      v26 = *i;
      v35 = 5;
      v36 = v26;
      v27 = *(a3 + 24);
      v28 = *(a3 + 16);
      if (v27 >= *(a3 + 28))
      {
        if (v28 <= &v35 && v28 + 24 * v27 > &v35)
        {
          v32 = &v35 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v27 + 1, 24);
          v28 = *v12;
          v29 = &v32[*v12];
          goto LABEL_11;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a3 + 32, v27 + 1, 24);
        v28 = *v12;
      }

      v29 = &v35;
LABEL_11:
      v30 = (v28 + 24 * *(a3 + 24));
      result = *v29;
      v30[1].n128_u64[0] = v29[1].n128_u64[0];
      *v30 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(_DWORD *a1, _DWORD *a2)
{
  v78[1] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v67 = 0;
  }

  else
  {
    v2 = (*a1 >> 4) ^ (*a1 >> 9);
    *&v74 = v2;
    if (a1 + 2 == a2)
    {
      v67 = 8;
    }

    else
    {
      v3 = (a1[2] >> 4) ^ (a1[2] >> 9);
      *(&v74 + 1) = v3;
      if (a1 + 4 == a2)
      {
        v67 = 16;
      }

      else
      {
        v4 = (a1[4] >> 4) ^ (a1[4] >> 9);
        *&v75 = v4;
        if (a1 + 6 == a2)
        {
          v67 = 24;
        }

        else
        {
          v5 = (a1[6] >> 4) ^ (a1[6] >> 9);
          *(&v75 + 1) = v5;
          if (a1 + 8 == a2)
          {
            v67 = 32;
          }

          else
          {
            v6 = (a1[8] >> 4) ^ (a1[8] >> 9);
            *&v76 = v6;
            if (a1 + 10 == a2)
            {
              v67 = 40;
            }

            else
            {
              v7 = (a1[10] >> 4) ^ (a1[10] >> 9);
              *(&v76 + 1) = v7;
              if (a1 + 12 == a2)
              {
                v67 = 48;
              }

              else
              {
                v8 = (a1[12] >> 4) ^ (a1[12] >> 9);
                *&v77 = v8;
                if (a1 + 14 == a2)
                {
                  v67 = 56;
                }

                else
                {
                  v9 = (a1[14] >> 4) ^ (a1[14] >> 9);
                  *(&v77 + 1) = v9;
                  v10 = a1 + 16;
                  if (a1 + 16 != a2)
                  {
                    v73 = &v75 + 8;
                    v11 = v6 + 0x4BF62CB950C3753ALL;
                    *(&v13 + 1) = v7 + v8 + v6 + 0x4BF62CB950C3753ALL;
                    *&v13 = 0x4BF62CB900000000;
                    v12 = v13 >> 44;
                    v14 = *(&v13 + 1) + v9;
                    *(&v13 + 1) = v8 + 0x61299596E4;
                    *&v13 = 0xBEB4006120000000;
                    v15 = v12 + v11;
                    v16 = v7 - 0x4B6D499041670D8DLL * (v13 >> 42) - 0x7323D61940A0DA1FLL;
                    v17 = v15 + __ROR8__(v16 + v4 + v11 + v9, 21);
                    v18 = v2 + 0x298DF016A9F64655;
                    v19 = v2 + 0x298DF016A9F64655 + v3 + v4;
                    v20 = v19 + v5;
                    *(&v13 + 1) = v19;
                    *&v13 = 0x298DF00000000000;
                    v21 = (v13 >> 44) + v18;
                    *(&v13 + 1) = v3 + 0x1EACB4B2AELL;
                    *&v13 = 0x8C2DD9BEA0000000;
                    v22 = (0xB492B66FBE98F273 * (v13 >> 37)) ^ 0xF7ACCA5326449396;
                    v23 = v21 + __ROR8__(v22 + v18 + v5 - 0xAE502812AB8D92, 21);
                    v24 = 0x544962662A7EE1A4;
                    v25 = 64;
                    while (1)
                    {
                      v32 = v10 + 2;
                      *&v74 = (*v10 >> 4) ^ (*v10 >> 9);
                      v33 = v10 + 2 == a2;
                      if (v10 + 2 == a2)
                      {
                        v35 = 0;
                        v36 = &v74 + 8;
                        v37 = 8;
                      }

                      else
                      {
                        *(&v74 + 1) = (v10[2] >> 4) ^ (v10[2] >> 9);
                        v32 = v10 + 4;
                        v33 = v10 + 4 == a2;
                        if (v10 + 4 == a2)
                        {
                          v35 = 8;
                          v36 = &v75;
                          v37 = 16;
                        }

                        else
                        {
                          *&v75 = (v10[4] >> 4) ^ (v10[4] >> 9);
                          v32 = v10 + 6;
                          v33 = v10 + 6 == a2;
                          if (v10 + 6 == a2)
                          {
                            v35 = 16;
                            v36 = v73;
                            v37 = 24;
                          }

                          else
                          {
                            *(&v75 + 1) = (v10[6] >> 4) ^ (v10[6] >> 9);
                            v32 = v10 + 8;
                            v33 = v10 + 8 == a2;
                            if (v10 + 8 == a2)
                            {
                              v35 = 24;
                              v36 = &v76;
                              v37 = 32;
                            }

                            else
                            {
                              *&v76 = (v10[8] >> 4) ^ (v10[8] >> 9);
                              v32 = v10 + 10;
                              v33 = v10 + 10 == a2;
                              if (v10 + 10 == a2)
                              {
                                v35 = 32;
                                v36 = &v76 + 8;
                                v37 = 40;
                              }

                              else
                              {
                                *(&v76 + 1) = (v10[10] >> 4) ^ (v10[10] >> 9);
                                v32 = v10 + 12;
                                v33 = v10 + 12 == a2;
                                if (v10 + 12 == a2)
                                {
                                  v35 = 40;
                                  v36 = &v77;
                                  v37 = 48;
                                }

                                else
                                {
                                  *&v77 = (v10[12] >> 4) ^ (v10[12] >> 9);
                                  v32 = v10 + 14;
                                  v33 = v10 + 14 == a2;
                                  if (v10 + 14 != a2)
                                  {
                                    v34 = (v10[14] >> 4) ^ (v10[14] >> 9);
                                    v10 += 16;
                                    *(&v77 + 1) = v34;
                                    v33 = v10 == a2;
                                    v35 = 56;
                                    v36 = v78;
                                    v37 = 64;
                                    goto LABEL_28;
                                  }

                                  v35 = 48;
                                  v36 = &v77 + 8;
                                  v37 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v32;
LABEL_28:
                      if ((v37 & 0x38) != 0)
                      {
                        v38 = 56 - v35;
                        v39 = v37;
                        if (v37 != 56 - v35)
                        {
                          do
                          {
                            v46 = v39;
                            v39 = v38;
                            v38 = v46 % v38;
                          }

                          while (v38);
                          v47 = (&v74 + v39);
                          do
                          {
                            v49 = *(v47 - 1);
                            v47 = (v47 - 1);
                            v48 = v49;
                            v50 = (v47 + v37);
                            v51 = v47;
                            do
                            {
                              v52 = v51;
                              v51 = v50;
                              *v52 = *v50;
                              v53 = v37 < v78 - v50;
                              v54 = &v74 + v37 - (v78 - v50);
                              v50 = (v50 + v37);
                              if (!v53)
                              {
                                v50 = v54;
                              }
                            }

                            while (v50 != v47);
                            *v51 = v48;
                          }

                          while (v47 != &v74);
                          goto LABEL_11;
                        }

                        v40 = v35 | 7;
                        if (55 - v35 < (v35 | 7uLL))
                        {
                          v40 = 55 - v35;
                        }

                        v41 = &v74;
                        if (&v74 < (&v74 | 9) + v35 + v40)
                        {
                          v42 = v37;
                          if (v36 < &v74 + v40 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v40 >= 0x1F)
                        {
                          v56 = v40 + 1;
                          v55 = (v40 + 1) & 0x60;
                          v57 = v74;
                          v58 = v75;
                          v59 = *(v36 + 1);
                          v74 = *(&v74 + v37);
                          v75 = v59;
                          *(&v74 + v37) = v57;
                          *(v36 + 1) = v58;
                          if (v55 != 32)
                          {
                            v60 = v76;
                            v61 = v77;
                            v62 = *(v36 + 3);
                            v76 = *(v36 + 2);
                            v77 = v62;
                            *(v36 + 2) = v60;
                            *(v36 + 3) = v61;
                          }

                          if (v56 == v55)
                          {
                            goto LABEL_11;
                          }

                          if ((v56 & 0x18) == 0)
                          {
                            v41 = &v74 + v55;
                            v42 = v37 + v55;
LABEL_34:
                            v43 = v41 + 1;
                            do
                            {
                              v44 = *(v43 - 1);
                              *(v43 - 1) = *(&v74 + v42);
                              *(&v74 + v42) = v44;
                              if (v43 == v36)
                              {
                                break;
                              }

                              ++v43;
                            }

                            while (v42++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v55 = 0;
                        }

                        v63 = &v36[v55];
                        v64 = (&v74 + v55);
                        v65 = v40 - v55 + 1;
                        do
                        {
                          v66 = *v64;
                          *v64++ = *v63;
                          *v63 = v66;
                          v63 += 8;
                          v65 -= 8;
                        }

                        while (v65);
                      }

LABEL_11:
                      v26 = v16 + v20 + v24;
                      v16 = *(&v76 + 1) + v20 - 0x4B6D499041670D8DLL * __ROR8__(v16 + v23 + v77, 42);
                      v27 = v74 - 0x4B6D499041670D8DLL * v23;
                      v28 = v27 + *(&v74 + 1) + v75;
                      v29 = __ROR8__(v22 + v14, 33);
                      v30 = (0xB492B66FBE98F273 * __ROR8__(v26 + *(&v74 + 1), 37)) ^ v17;
                      v23 = __ROR8__(v28, 44) + v27 + __ROR8__(v30 + v14 + v27 + *(&v75 + 1), 21);
                      v24 = 0xB492B66FBE98F273 * v29;
                      v31 = 0xB492B66FBE98F273 * v29 + v17 + v76;
                      v20 = v28 + *(&v75 + 1);
                      v17 = __ROR8__(v16 + v75 + v31 + *(&v77 + 1), 21) + v31 + __ROR8__(*(&v76 + 1) + v77 + v31, 44);
                      v14 = *(&v76 + 1) + v77 + v31 + *(&v77 + 1);
                      v25 += v37;
                      v22 = v30;
                      if (v33)
                      {
                        v68 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v14)));
                        v69 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v17)));
                        v70 = 0x9DDFEA08EB382D69 * (v69 ^ (v69 >> 47)) - 0x4B6D499041670D8DLL * ((v25 ^ (v25 >> 47)) + v29);
                        v71 = 0x9DDFEA08EB382D69 * (v70 ^ (v30 - 0x4B6D499041670D8DLL * (v16 ^ (v16 >> 47)) - 0x622015F714C7D297 * (v68 ^ (v68 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) ^ ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) >> 47));
                      }
                    }
                  }

                  v67 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v74, v67, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::ArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::ArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 8 * v2;
  a1[10] += 8 * v2;
  Slow = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + 8 * v2;
  if (v3)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v18 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
    a1 = v18;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v7;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
LABEL_7:
      v10 = Slow;
      v11 = v4;
      if (Slow - v4 >= 0x20)
      {
        v12 = (v9 >> 3) + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = (Slow + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (Slow + 16);
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
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v10 = Slow;
  v11 = v4;
  do
  {
LABEL_15:
    v19 = *v11++;
    *v10++ = v19;
  }

  while (v11 != (v4 + 8 * v2));
LABEL_16:
  v3 = *a1;
LABEL_17:
  a1[10] += 24;
  v20 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 3;
  if (v3)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = Slow;
  v20[2] = v2;
  return v20;
}

void *mlir::detail::DenseArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_23;
  }

  a1[10] += v4;
  Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v4;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v17 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v4, v4, 3);
    a1 = v17;
    if (v4 < 8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *a1 = v7;
    if (v4 < 8)
    {
LABEL_20:
      v15 = Slow;
      v16 = v5;
      goto LABEL_21;
    }
  }

  if (Slow - v5 < 0x20)
  {
    goto LABEL_20;
  }

  if (v4 < 0x20)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = v4 & 0xFFFFFFFFFFFFFFE0;
  v10 = (v5 + 16);
  v11 = (Slow + 16);
  v12 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v13 = *v10;
    *(v11 - 1) = *(v10 - 1);
    *v11 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 32;
  }

  while (v12);
  if (v4 == v9)
  {
    goto LABEL_22;
  }

  if ((v4 & 0x18) != 0)
  {
LABEL_14:
    v14 = v4 & 0xFFFFFFFFFFFFFFF8;
    v15 = (Slow + (v4 & 0xFFFFFFFFFFFFFFF8));
    v16 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
    do
    {
      *(Slow + v9) = *(v5 + v9);
      v9 += 8;
    }

    while (v14 != v9);
    if (v4 == v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = (v5 + v9);
  v15 = (Slow + v9);
  do
  {
LABEL_21:
    v18 = *v16++;
    *v15++ = v18;
  }

  while (v16 != (v5 + v4));
LABEL_22:
  v5 = Slow;
LABEL_23:
  a1[10] += 40;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19 + 5;
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = v2;
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v4;
  return v19;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && *(a2 + 16) == v2[1] && (v3 = *(a2 + 32), v3 == v2[3]))
  {
    return memcmp(*(a2 + 24), v2[2], v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::DenseStringElementsAttrStorage::getKey@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = result;
  v22 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = llvm::hash_value(*a3, *(a3 + 8));
    v12 = result;
    if (a5)
    {
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = a4;
      *(a6 + 32) = result;
      *(a6 + 40) = 1;
      return result;
    }

    v13 = a4 - 1;
    if (a4 == 1)
    {
LABEL_6:
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = 1;
      *(a6 + 32) = v12;
      *(a6 + 40) = 1;
      return result;
    }

    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = *a3;
      v16 = a3 + 16;
      while (v14 == *(v16 + 8))
      {
        result = memcmp(v15, *v16, v14);
        if (result)
        {
          break;
        }

        v16 += 16;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v16 = a3 + 16;
      while (!*(v16 + 8))
      {
        v16 += 16;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v20 = 0;
    v21 = 0xFF51AFD7ED558CCDLL;
    v17[0] = v12;
    v17[1] = llvm::hashing::detail::hash_combine_range_impl<llvm::StringRef const*>(v16, a3 + 16 * a4);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine(v17, 0, v18, v19);
    *a6 = v8;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
  }

  *(a6 + 40) = 0;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::StringRef const*>(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v30 = 0;
  }

  else
  {
    v4 = llvm::hash_value(*a1, *(a1 + 8));
    v89 = v4;
    if (a1 + 16 == a2)
    {
      v30 = 8;
    }

    else
    {
      v5 = v4;
      v6 = llvm::hash_value(*(a1 + 16), *(a1 + 24));
      v90 = v6;
      if (a1 + 32 == a2)
      {
        v30 = 16;
      }

      else
      {
        v7 = v6;
        v8 = llvm::hash_value(*(a1 + 32), *(a1 + 40));
        v91 = v8;
        if (a1 + 48 == a2)
        {
          v30 = 24;
        }

        else
        {
          v9 = v8;
          v10 = llvm::hash_value(*(a1 + 48), *(a1 + 56));
          v92 = v10;
          if (a1 + 64 == a2)
          {
            v30 = 32;
          }

          else
          {
            v87 = v10;
            v11 = llvm::hash_value(*(a1 + 64), *(a1 + 72));
            v93 = v11;
            if (a1 + 80 == a2)
            {
              v30 = 40;
            }

            else
            {
              v12 = v11;
              v13 = llvm::hash_value(*(a1 + 80), *(a1 + 88));
              v94 = v13;
              if (a1 + 96 == a2)
              {
                v30 = 48;
              }

              else
              {
                v14 = v13;
                v15 = llvm::hash_value(*(a1 + 96), *(a1 + 104));
                v95 = v15;
                if (a1 + 112 == a2)
                {
                  v30 = 56;
                }

                else
                {
                  v16 = v15;
                  v17 = llvm::hash_value(*(a1 + 112), *(a1 + 120));
                  v96 = v17;
                  v18 = a1 + 128;
                  if (a1 + 128 != a2)
                  {
                    v84 = v17;
                    llvm::hash_value(*(a1 + 128), *(a1 + 136));
                    v19 = v14 + v16 + v12 + 0x4BF62CB950C3753ALL + v84;
                    v20 = __ROR8__(v14 + v16 + v12 + 0x4BF62CB950C3753ALL, 44) + v12 + 0x4BF62CB950C3753ALL;
                    v21 = v14 - 0x4B6D499041670D8DLL * __ROR8__(v16 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v22 = v20 + __ROR8__(v21 + v9 + v12 + 0x4BF62CB950C3753ALL + v84, 21);
                    v23 = v5 + 0x298DF016A9F64655;
                    v24 = v5 + 0x298DF016A9F64655 + v7 + v9;
                    v25 = v24 + v87;
                    v26 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v27 = __ROR8__(v24, 44) + v23 + __ROR8__(v26 + v23 + v87 - 0xAE502812AB8D92, 21);
                    v83 = ~&v89;
                    v28 = 0x544962662A7EE1A4;
                    v29 = 64;
                    while (1)
                    {
                      v85 = v26;
                      v86 = v19;
                      v88 = v22;
                      v89 = llvm::hash_value(*v18, *(v18 + 8));
                      v38 = v18 + 16;
                      if (v18 + 16 == a2)
                      {
                        v39 = &v90;
                        v40 = &v90;
                        v31 = 8;
                      }

                      else
                      {
                        v90 = llvm::hash_value(*(v18 + 16), *(v18 + 24));
                        v38 = v18 + 32;
                        if (v18 + 32 == a2)
                        {
                          v39 = &v91;
                          v40 = &v91;
                          v31 = 16;
                        }

                        else
                        {
                          v91 = llvm::hash_value(*(v18 + 32), *(v18 + 40));
                          v38 = v18 + 48;
                          if (v18 + 48 == a2)
                          {
                            v39 = &v92;
                            v40 = &v92;
                            v31 = 24;
                          }

                          else
                          {
                            v92 = llvm::hash_value(*(v18 + 48), *(v18 + 56));
                            v38 = v18 + 64;
                            if (v18 + 64 == a2)
                            {
                              v39 = &v93;
                              v40 = &v93;
                              v31 = 32;
                            }

                            else
                            {
                              v93 = llvm::hash_value(*(v18 + 64), *(v18 + 72));
                              v38 = v18 + 80;
                              if (v18 + 80 == a2)
                              {
                                v39 = &v94;
                                v40 = &v94;
                                v31 = 40;
                              }

                              else
                              {
                                v94 = llvm::hash_value(*(v18 + 80), *(v18 + 88));
                                v38 = v18 + 96;
                                if (v18 + 96 == a2)
                                {
                                  v39 = &v95;
                                  v40 = &v95;
                                  v31 = 48;
                                }

                                else
                                {
                                  v95 = llvm::hash_value(*(v18 + 96), *(v18 + 104));
                                  v38 = v18 + 112;
                                  if (v18 + 112 != a2)
                                  {
                                    v96 = llvm::hash_value(*(v18 + 112), *(v18 + 120));
                                    v38 = v18 + 128;
                                    if (v18 + 128 != a2)
                                    {
                                      llvm::hash_value(*(v18 + 128), *(v18 + 136));
                                    }

                                    v31 = 64;
                                    goto LABEL_19;
                                  }

                                  v39 = &v96;
                                  v40 = &v96;
                                  v31 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v41 = 64 - v31;
                      v42 = v31;
                      if (v31 != 64 - v31)
                      {
                        do
                        {
                          v49 = v42;
                          v42 = v41;
                          v41 = v49 % v41;
                        }

                        while (v41);
                        v50 = (&v89 + v42);
                        do
                        {
                          v52 = *(v50 - 1);
                          v50 = (v50 - 1);
                          v51 = v52;
                          v53 = &v50[v31 / 8];
                          v54 = v50;
                          do
                          {
                            v55 = v54;
                            v54 = v53;
                            *v55 = *v53;
                            v56 = (&v97 - v53);
                            v57 = __OFSUB__(v31, v56);
                            v59 = v31 - v56;
                            v58 = (v59 < 0) ^ v57;
                            v53 = (&v89 + v59);
                            if (v58)
                            {
                              v53 = &v54[v31 / 8];
                            }
                          }

                          while (v53 != v50);
                          *v54 = v51;
                        }

                        while (v50 != &v89);
                        goto LABEL_19;
                      }

                      v43 = v31 ^ 0x3F;
                      if (v39 + v83 < (v31 ^ 0x3FuLL))
                      {
                        v43 = v39 + v83;
                      }

                      v44 = &v89;
                      if (v43 < 3 || &v89 < (&v89 + v43 + v31 + 1) && v40 < (&v89 + v43 + 1))
                      {
                        v45 = v31;
                        goto LABEL_43;
                      }

                      v60 = v43 + 1;
                      if (v43 >= 0xF)
                      {
                        v61 = v60 & 0x70;
                        v62 = v89;
                        v63 = v90;
                        v64 = v40[1];
                        v89 = *(&v89 + v31);
                        v90 = v64;
                        *(&v89 + v31) = v62;
                        v40[1] = v63;
                        if (v61 != 16)
                        {
                          v65 = v91;
                          v66 = v92;
                          v67 = v40[3];
                          v91 = v40[2];
                          v92 = v67;
                          v40[2] = v65;
                          v40[3] = v66;
                          if (v61 != 32)
                          {
                            v68 = v93;
                            v69 = v94;
                            v70 = v40[5];
                            v93 = v40[4];
                            v94 = v70;
                            v40[4] = v68;
                            v40[5] = v69;
                            if (v61 != 48)
                            {
                              v71 = v95;
                              v72 = v96;
                              v73 = v40[7];
                              v95 = v40[6];
                              v96 = v73;
                              v40[6] = v71;
                              v40[7] = v72;
                            }
                          }
                        }

                        if (v60 == v61)
                        {
                          goto LABEL_19;
                        }

                        if ((v60 & 0xC) == 0)
                        {
                          v44 = (&v89 + v61);
                          v45 = v31 + v61;
LABEL_43:
                          v46 = (v44 + 1);
                          do
                          {
                            v47 = *(v46 - 1);
                            *(v46 - 1) = *(&v89 + v45);
                            *(&v89 + v45) = v47;
                            if (v46 == v39)
                            {
                              break;
                            }

                            v46 = (v46 + 1);
                          }

                          while (v45++ != 63);
                          goto LABEL_19;
                        }
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v45 = v31 + (v60 & 0x7C);
                      v44 = (&v89 + (v60 & 0x7C));
                      v74 = (v40 + v61);
                      v75 = (&v89 + v61);
                      v76 = v61 - (v60 & 0x7C);
                      do
                      {
                        v77 = *v75;
                        *v75++ = *v74;
                        *v74++ = v77;
                        v76 += 4;
                      }

                      while (v76);
                      if (v60 != (v60 & 0x7C))
                      {
                        goto LABEL_43;
                      }

LABEL_19:
                      v32 = __ROR8__(v21 + v25 + v28 + v90, 37);
                      v21 = v94 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v21 + v27 + v95, 42);
                      v33 = v89 - 0x4B6D499041670D8DLL * v27;
                      v34 = v33 + v90 + v91;
                      v35 = (0xB492B66FBE98F273 * v32) ^ v88;
                      v36 = __ROR8__(v85 + v86, 33);
                      v27 = __ROR8__(v34, 44) + v33 + __ROR8__(v35 + v86 + v33 + v92, 21);
                      v28 = 0xB492B66FBE98F273 * v36;
                      v37 = 0xB492B66FBE98F273 * v36 + v88 + v93;
                      v25 = v34 + v92;
                      v22 = __ROR8__(v21 + v91 + v37 + v96, 21) + v37 + __ROR8__(v94 + v95 + v37, 44);
                      v19 = v94 + v95 + v37 + v96;
                      v29 += v31;
                      v18 = v38;
                      v26 = v35;
                      if (v38 == a2)
                      {
                        v78 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v19)));
                        v79 = v35 - 0x4B6D499041670D8DLL * (v21 ^ (v21 >> 47)) - 0x622015F714C7D297 * (v78 ^ (v78 >> 47));
                        v80 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v22)));
                        v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v80 >> 47)) - 0x4B6D499041670D8DLL * ((v29 ^ (v29 >> 47)) + v36);
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) ^ ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) >> 47));
                      }
                    }
                  }

                  v30 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v89, v30, 0xFF51AFD7ED558CCDLL);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != a2[1])
  {
    return 0;
  }

  v3 = v2[3];
  if (v3 != a2[5])
  {
    return 0;
  }

  if (v3)
  {
    v4 = v2[2];
    v5 = a2[4];
    v6 = v4 + 16 * v3;
    while (1)
    {
      v7 = *(v4 + 8);
      if (v7 != *(v5 + 8) || v7 && memcmp(*v4, *v5, v7))
      {
        break;
      }

      v4 += 16;
      v5 += 16;
      if (v4 == v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__n128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[2];
  v10[1] = (*a1)[1];
  v10[2] = v4;
  v10[0] = v3;
  v6 = mlir::detail::DenseStringElementsAttrStorage::construct(a2, v10);
  v7 = v5;
  v8 = a1[1];
  if (v8->n128_u64[0])
  {
    (v8->n128_u64[0])(v8->n128_u64[1], v5, v6);
  }

  return v7;
}

__n128 mlir::detail::DenseStringElementsAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v4 = a2[1].n128_u64[1];
  if (!v4)
  {
    a1[10] += 48;
    v10 = a1[1];
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = Slow + 48;
    if (*a1)
    {
      v13 = v12 > v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
    }

    else
    {
      *a1 = v12;
    }

    v14 = a2[2].n128_u8[8];
    result = *a2;
    *Slow = 0;
    *(Slow + 8) = result;
    *(Slow + 24) = v14;
    *(Slow + 32) = 0;
    *(Slow + 40) = 0;
    return result;
  }

  v5 = a2[1].n128_u64[0];
  if (a2[2].n128_u8[8])
  {
    LODWORD(v4) = 1;
  }

  v6 = v4;
  v7 = 16 * v4;
  if (v4 < 1)
  {
    v9 = 16 * v4;
  }

  else
  {
    if (v4 > 4)
    {
      v16 = v4 & 3;
      if ((v6 & 3) == 0)
      {
        v16 = 4;
      }

      v8 = v6 - v16;
      v17 = 0uLL;
      v18 = v7;
      v19 = (v5 + 40);
      v20 = v8;
      do
      {
        v21 = v19 - 4;
        v22 = vld2q_f64(v21);
        v23 = vld2q_f64(v19);
        v18 = vaddq_s64(v22, v18);
        v17 = vaddq_s64(v23, v17);
        v19 += 8;
        v20 -= 4;
      }

      while (v20);
      v9 = vaddvq_s64(vaddq_s64(v17, v18));
    }

    else
    {
      v8 = 0;
      v9 = v7;
    }

    v24 = (v5 + 16 * v8 + 8);
    v25 = v6 - v8;
    do
    {
      v26 = *v24;
      v24 += 2;
      v9 += v26;
      --v25;
    }

    while (v25);
  }

  a1[10] += v9;
  v27 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v27 + v9;
  if (*a1)
  {
    v29 = v28 > a1[1];
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v27 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v9, v9, 3);
    if (v6 >= 1)
    {
LABEL_26:
      v30 = (v27 + v7);
      v31 = (v5 + 8);
      v32 = (v27 + 8);
      v33 = v6;
      do
      {
        memcpy(v30, *(v31 - 1), *v31);
        v34 = *v31;
        v31 += 2;
        *(v32 - 1) = v30;
        *v32 = v34;
        v30 += v34;
        v32 += 2;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    *a1 = v28;
    if (v6 >= 1)
    {
      goto LABEL_26;
    }
  }

  a1[10] += 48;
  if (*a1 && (v35 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v35 + 48 <= a1[1]))
  {
    *a1 = v35 + 48;
  }

  else
  {
    v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  }

  v36 = a2[2].n128_u8[8];
  result = *a2;
  *v35 = 0;
  *(v35 + 8) = result;
  *(v35 + 24) = v36;
  *(v35 + 32) = v27;
  *(v35 + 40) = v6;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::FloatAttrStorage::construct(llvm::APFloatBase *a1, __n128 *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2->n128_u64[0];
  v4 = a2 + 1;
  v5 = a2[1].n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, v4);
    *(a1 + 10) += 48;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v12, v4);
    *(a1 + 10) += 48;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  Slow = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((Slow + 6) <= *(a1 + 1))
  {
    *a1 = Slow + 6;
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_7:
    llvm::detail::IEEEFloat::IEEEFloat(&v11, &v12);
    *Slow = 0;
    Slow[1] = v3;
    v9 = (Slow + 3);
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_14;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v9, &v11);
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_12:
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  if (v6 != v12.n128_u64[0])
  {
    goto LABEL_7;
  }

LABEL_13:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, &v12);
  *Slow = 0;
  Slow[1] = v3;
  v9 = (Slow + 3);
  if (v6 != v11.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v11);
  if (v6 == v11.n128_u64[0])
  {
LABEL_15:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_9:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
  if (v6 == v12.n128_u64[0])
  {
LABEL_16:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    return Slow;
  }

LABEL_10:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 8);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a6);
    LODWORD(v8) = v17;
  }

  else
  {
    __p = *a6;
  }

  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&__p, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (__p)
    {
      v14 = result;
      operator delete[](__p);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 8);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a6);
    LODWORD(v8) = v17;
  }

  else
  {
    __p = *a6;
  }

  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&__p, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (__p)
    {
      v14 = result;
      operator delete[](__p);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]) && (!v3 || (v4 = a2, v5 = memcmp(*(a2 + 16), v2[1], v3), a2 = v4, !v5)))
  {
    return *(a2 + 32) == v2[3];
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::OpaqueAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::OpaqueAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[3];
  if (!v3)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v5 = a2[1];
  a1[10] += v3 + 1;
  Slow = *a1;
  v7 = v3 + 1 + *a1;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *a1 = v7;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v9 = Slow;
    v10 = v5;
    goto LABEL_22;
  }

  v20 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v3 + 1, v3 + 1, 0);
  a1 = v20;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v9 = Slow;
  v10 = v5;
  if ((Slow - v5) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v11 = v3 & 0xFFFFFFFFFFFFFFE0;
    v12 = (v5 + 16);
    v13 = (Slow + 16);
    v14 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 32;
    }

    while (v14);
    if (v3 == v11)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v9 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
      v10 = (v5 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v16 = (v5 + v11);
      v17 = (Slow + v11);
      v18 = v11 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v19 = *v16++;
        *v17++ = v19;
        v18 += 8;
      }

      while (v18);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v10 = (v5 + v11);
    v9 = (Slow + v11);
  }

  do
  {
LABEL_22:
    v21 = *v10++;
    *v9++ = v21;
  }

  while (v10 != (v5 + v3));
LABEL_23:
  *(Slow + v3) = 0;
LABEL_24:
  a1[10] += 40;
  v22 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 5;
  if (*a1)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  v22[1] = v2;
  v22[2] = Slow;
  v22[3] = v3;
  v22[4] = v4;
  return v22;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::StridedLayoutAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::StridedLayoutAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *a1;
  if (!v3)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v5 = a2[1];
  v6 = 8 * v3;
  a1[10] += 8 * v3;
  Slow = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + 8 * v3;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v3, 8 * v3, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = Slow;
      v12 = v5;
      if (Slow - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (Slow + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (Slow + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = Slow;
  v12 = v5;
  do
  {
LABEL_15:
    v20 = *v12++;
    *v11++ = v20;
  }

  while (v12 != (v5 + 8 * v3));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 32;
  v21 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 + 4;
  if (v4)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = Slow;
  v21[3] = v3;
  return v21;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::SymbolRefAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::SymbolRefAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (v3)
  {
    v4 = a2[1];
    v5 = 8 * v3;
    a1[10] += 8 * v3;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = Slow + 8 * v3;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v3, 8 * v3, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = Slow;
        v11 = v4;
        if (Slow - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (Slow + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (Slow + 16);
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
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = Slow;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v3));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v2;
  v20[2] = Slow;
  v20[3] = v3;
  return v20;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t *mlir::Dialect::addAttribute<mlir::AffineMapAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::AffineMapAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::ArrayAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ArrayAttr,mlir::Attribute,mlir::detail::ArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v24 = "builtin.array";
  v25 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::DenseArrayAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v24 = "builtin.dense_array";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::DenseIntOrFPElementsAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::DenseStringElementsAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::DenseResourceElementsAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::DictionaryAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::DictionaryAttr,mlir::Attribute,mlir::detail::DictionaryAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v24 = "builtin.dictionary";
  v25 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::FloatAttr>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::FloatAttr>(a1, v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::FloatAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, v10);
}

uint64_t *mlir::Dialect::addAttribute<mlir::IntegerAttr>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::IntegerAttr>(a1, v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::IntegerAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, v10);
}

uint64_t *mlir::Dialect::addAttribute<mlir::IntegerSetAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::IntegerSetAttr,mlir::Attribute,mlir::detail::IntegerSetAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSB_21IntegerSetAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSA_21IntegerSetAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v24 = "builtin.integer_set";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::OpaqueAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::OpaqueAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::SparseElementsAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::StridedLayoutAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::StringAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::StringAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::SymbolRefAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::SymbolRefAttr,mlir::Attribute,mlir::detail::SymbolRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v24 = "builtin.symbol_ref";
  v25 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::TypeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::TypeAttr,mlir::Attribute,mlir::detail::TypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v24 = "builtin.type";
  v25 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, 0, v9);
}

uint64_t mlir::Dialect::addAttribute<mlir::UnitAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::UnitAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = v11;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v24 = "builtin.unit";
  v25 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_8UnitAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::AbstractAttribute::get<mlir::AffineMapAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::AffineMapAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSB_20AffineMapAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSA_20AffineMapAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  *(a2 + 144) = "builtin.affine_map";
  *(a2 + 152) = 18;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::AffineMapAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::getAffineMap;
  v2[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::isIdentity;
  v2[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::verifyLayout;
  {
    v5 = v2;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface::Trait<Empty>]";
  v6 = 95;
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