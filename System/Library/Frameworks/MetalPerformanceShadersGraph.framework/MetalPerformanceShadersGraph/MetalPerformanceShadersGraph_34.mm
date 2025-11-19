uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSA_20AffineMapAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(LHS);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v12[1] = LHS;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v12 = a2;
  if (a4 >= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a4;
  }

  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseArrayAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseArrayAttr>(uint64_t a1, int64x2_t *a2, int64x2_t *a3)
{
  v39[5] = *MEMORY[0x1E69E9840];
  v23 = a1;
  v3 = *(a1 + 24);
  v22[0] = *(a1 + 8);
  v22[1] = v3;
  v4 = *a2;
  v21[0] = *a3;
  v21[1] = v4;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Type,long long,llvm::ArrayRef<char>>,void>::replace(v22, v21, &v35);
  mlir::Attribute::getContext(&v23);
  v5 = v35;
  v6 = v36;
  v30 = v35;
  v31 = v36;
  v32 = v34;
  v33 = xmmword_1E09700D0;
  v7 = v38;
  if (!v38)
  {
    v10 = v34;
    goto LABEL_9;
  }

  if (v38 < 0x29)
  {
    v9 = v34;
    v8 = v38;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v32, v34, v38, 1);
  v8 = v38;
  if (v38)
  {
    v9 = v32;
LABEL_7:
    memcpy(v9, v37, v8);
  }

  *&v33 = v7;
  v5 = v30;
  v6 = v31;
  v10 = v32;
LABEL_9:
  v11 = *v6;
  v24 = v5;
  Context = mlir::Attribute::getContext(&v24);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v25[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v25[1] = Context;
  v29[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v29[1] = v25;
  v28[0] = v24;
  v28[1] = v11;
  v28[2] = v10;
  v28[3] = v7;
  v14 = (v24 >> 4) ^ (v24 >> 9);
  v15 = llvm::hashing::detail::hash_combine_range_impl<char const>(v10, v10 + v7);
  v16 = __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v14 - 0x9AE16A3B2F90404FLL * v15 + 24;
  v17 = (__ROR8__(0xB492B66FBE98F273 * v14 - v11, 43) - 0x3C5A37A36834CED9 * v11 + __ROR8__((0x9AE16A3B2F90404FLL * v15) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v16;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * v17) >> 47) ^ (0x9DDFEA08EB382D69 * v17));
  v26[0] = v28;
  v26[1] = v29;
  v27 = v28;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
  if (v32 != v34)
  {
    free(v32);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<mlir::Type,long long,llvm::ArrayRef<char>>,void>::replace(uint64_t a1@<X0>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v4 = a1 + 8;
  if (*a1)
  {
    v5 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_1E09721B0);
    v6 = *v5.i64[0];
  }

  else
  {
    v6 = 0;
  }

  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<char>,void>::replace(*(a1 + 16), *(a1 + 24), &__src);
  v7 = (a3 + 40);
  *(a3 + 16) = a3 + 40;
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 24) = xmmword_1E09700D0;
  v8 = __src;
  if ((a3 + 16) == &__src)
  {
    goto LABEL_14;
  }

  v9 = __n;
  if (!__n)
  {
    goto LABEL_14;
  }

  if (__src != v14)
  {
    *(a3 + 16) = __src;
    *(a3 + 24) = v9;
    *(a3 + 32) = v13;
    return;
  }

  if (__n < 0x29)
  {
    v10 = __n;
    goto LABEL_12;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a3 + 16, (a3 + 40), __n, 1);
  v8 = __src;
  v10 = __n;
  if (__n)
  {
    v7 = *(a3 + 16);
LABEL_12:
    memcpy(v7, v8, v10);
    v8 = __src;
  }

  *(a3 + 24) = v9;
  __n = 0;
LABEL_14:
  if (v8 != v14)
  {
    free(v8);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<char>,void>::replace(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v3 = xmmword_1E09700D0;
  v15 = xmmword_1E09700D0;
  if (a2)
  {
    do
    {
      while (v15 < *(&v15 + 1))
      {
        v4 = *a1++;
        *(v14 + v15) = v4;
        *&v15 = v15 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v5 = a1;
      v6 = a2;
      v7 = a3;
      v13 = v3;
      llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(&v14, a1);
      v3 = v13;
      a3 = v7;
      a1 = v5 + 1;
      a2 = v6 - 1;
    }

    while (v6 != 1);
LABEL_6:
    v8 = v14;
    v9 = v15;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v9 && &v14 != a3)
    {
      if (v8 != v16)
      {
        *a3 = v8;
        *(a3 + 8) = v9;
        *(a3 + 16) = *(&v15 + 1);
        return;
      }

      v10 = v9;
      if (v9 < 0x29 || (v11 = a3, llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, (a3 + 24), v9, 1), a3 = v11, v8 = v14, (v10 = v15) != 0))
      {
        v12 = a3;
        memcpy(*a3, v8, v10);
        a3 = v12;
        v8 = v14;
      }

      *(a3 + 8) = v9;
      *&v15 = 0;
    }

    if (v8 != v16)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_1E09700D0;
  }
}

uint64_t llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(void *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if ((v3 + 1) > a1[2])
  {
    v7 = a1;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v3 + 1, 1);
    a1 = v7;
    v3 = v7[1];
  }

  *(*a1 + v3) = v2;
  v4 = *a1;
  v5 = a1[1] + 1;
  a1[1] = v5;
  return v4 + v5 - 1;
}

void mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseIntOrFPElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseIntOrFPElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::DenseIntOrFPElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSB_31DenseIntOrFPElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSA_31DenseIntOrFPElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_int_or_fp_elements";
  *(a2 + 152) = 32;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseIntOrFPElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseIntOrFPElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(&v8, a2, v9);
  if (v11 == 1)
  {
    v5 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v5 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return;
    }

    v6 = v10;
    v10 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<unsigned char>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned char]";
  v6 = 63;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 8)
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<unsigned short>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned short]";
  v6 = 64;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 16)
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<unsigned int>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned int]";
  v6 = 62;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 32)
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<signed char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<unsigned long long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned long long]";
  v6 = 68;
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<signed char>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = signed char]";
  v6 = 61;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<signed char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 8)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<short>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = short]";
  v6 = 55;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 16)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<int>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = int]";
  v6 = 53;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 32)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<long long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = long long]";
  v6 = 59;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = long]";
  v6 = 54;
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<unsigned long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned long]";
  v6 = 63;
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned char>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned char>]";
  v6 = 77;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned short>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned short>]";
  v6 = 78;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 16 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned int>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned int>]";
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned long long>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned long long>]";
  v6 = 82;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<signed char>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<signed char>]";
  v6 = 75;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<short>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<short>]";
  v6 = 69;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 16 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<int>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<int>]";
  v6 = 67;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<float,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<long long>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<long long>]";
  v6 = 73;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v15);
  *&v15 = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<double,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<float>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = float]";
  v6 = 55;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<float,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v31);
  result = mlir::detail::getDenseElementBitWidth(isSplat);
  if (result == 32 && ((v6 = *(*isSplat + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), !v20 ? (v21 = v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), v22))
  {
    v23 = *a1;
    v24 = *(*a1 + 32);
    v25 = *(v23 + 24);
    v27 = *(v23 + 16);
    *&v31 = *(v23 + 8);
    v26 = v31;
    *(&v31 + 1) = v27;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
    result = mlir::ShapedType::getNumElements(ArgAttrsAttr, v29);
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = 0;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    *(a2 + 40) = result;
    v30 = 1;
    *(a2 + 48) = v26;
    *(a2 + 56) = v27;
  }

  else
  {
    v30 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v30;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<double>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = double]";
  v6 = 56;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<double,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v31);
  result = mlir::detail::getDenseElementBitWidth(isSplat);
  if (result == 64 && ((v6 = *(*isSplat + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), !v20 ? (v21 = v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), v22))
  {
    v23 = *a1;
    v24 = *(*a1 + 32);
    v25 = *(v23 + 24);
    v27 = *(v23 + 16);
    *&v31 = *(v23 + 8);
    v26 = v31;
    *(&v31 + 1) = v27;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
    result = mlir::ShapedType::getNumElements(ArgAttrsAttr, v29);
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = 0;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    *(a2 + 40) = result;
    v30 = 1;
    *(a2 + 48) = v26;
    *(a2 + 56) = v27;
  }

  else
  {
    v30 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v30;
  return result;
}

void _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }
  }

  else
  {
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v11 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v11);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v6))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(a1, &v11);
    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }

    v7 = *(*a1 + 24);
    if (BYTE8(v11))
    {
      v8 = 0;
    }

    else
    {
      v8 = v12;
    }

    v9 = v11 + 16 * v8;
    *a3 = 1;
    *(a3 + 1) = v7;
    *(a3 + 8) = v9;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<float>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<float>]";
  v6 = 69;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v30);
  Value = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(Value);
  if (result == 32 && ((v6 = *(*Value + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    v21 = *a1;
    v22 = *(*a1 + 32);
    v23 = *(v21 + 24);
    v25 = *(v21 + 16);
    *&v30 = *(v21 + 8);
    v24 = v30;
    *(&v30 + 1) = v25;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
    result = mlir::ShapedType::getNumElements(ArgAttrsAttr, v27);
    *a2 = v22;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = result;
    v28 = 1;
    *(a2 + 48) = v24;
    *(a2 + 56) = v25;
  }

  else
  {
    v28 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v28;
  return result;
}

const char *llvm::getTypeName<std::complex<double>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<double>]";
  v6 = 70;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v30);
  Value = mlir::AffineMapAttr::getValue(&isSplat);
  result = mlir::detail::getDenseElementBitWidth(Value);
  if (result == 64 && ((v6 = *(*Value + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    v21 = *a1;
    v22 = *(*a1 + 32);
    v23 = *(v21 + 24);
    v25 = *(v21 + 16);
    *&v30 = *(v21 + 8);
    v24 = v30;
    *(&v30 + 1) = v25;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
    result = mlir::ShapedType::getNumElements(ArgAttrsAttr, v27);
    *a2 = v22;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = result;
    v28 = 1;
    *(a2 + 48) = v24;
    *(a2 + 56) = v25;
  }

  else
  {
    v28 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v28;
  return result;
}

void *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    v10 = a2;
    v11 = a3;
    v9 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v9;
    a2 = v10;
    a3 = v11;
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != v10)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = *a1;
    v12 = *(*a1 + 8);
    v5 = a1;
    v6 = a3;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v12);
    mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
    LOBYTE(v5) = *(*v5 + 24);
    result = operator new(0x18uLL);
    *result = &unk_1F5AF5CC8;
    result[1] = v4;
    result[2] = 0;
    *v6 = 0;
    *(v6 + 1) = v5;
    *(v6 + 8) = result;
    *(v6 + 16) = 1;
    return result;
  }

  if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_7;
  }

LABEL_3:

  return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(a1, a2, a3);
}

void *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = a3;
    v7 = a1;
    result = mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(a1, &v15);
    if (v17)
    {
      v8 = v15;
      v18[0] = v16[0];
      *(v18 + 15) = *(v16 + 15);
      v9 = *(*v7 + 24);
      result = operator new(0x28uLL);
      *result = &unk_1F5AF5D38;
      *(result + 8) = v8;
      *(result + 9) = v18[0];
      *(result + 3) = *(v18 + 15);
      *(v6 + 1) = v9;
      *(v6 + 8) = result;
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    *v6 = 0;
    *(v6 + 16) = v10;
    return result;
  }

  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(a1, a2, a3);
    }
  }

  else
  {
    v14 = a3;
    v11 = a1;
    v12 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v12;
    a1 = v11;
    a3 = v14;
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != v12)
    {
      goto LABEL_5;
    }
  }

  return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<BOOL>(a1, a3);
}

const char *llvm::getTypeName<mlir::Attribute>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::Attribute]";
  v6 = 65;
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

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::AttributeElementIterator,mlir::Attribute>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_1F5AF5CC8;
  result = *(a1 + 8);
  *(v4 + 8) = result;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::AttributeElementIterator,mlir::Attribute>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) + a2;
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v4);
}

unint64_t mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *(*a1 + 8);
  *&v19 = mlir::ElementsAttr::isSplat(&v19);
  result = mlir::Type::isIntOrIndex(&v19);
  if (result)
  {
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 24);
    *&v19 = *(*a1 + 8);
    v5 = v19;
    *(&v19 + 1) = v6;
    isSplat = mlir::ElementsAttr::isSplat(&v19);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
    v11 = *a1;
    v19 = *(*a1 + 8);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v19);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v13);
    v15 = *(v11 + 32);
    v16 = *(v11 + 24);
    v19 = *(v11 + 8);
    v17 = mlir::ElementsAttr::isSplat(&v19);
    result = mlir::detail::getDenseElementBitWidth(v17);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = NumElements;
    *(a2 + 56) = result;
    v18 = 1;
    *(a2 + 64) = v5;
    *(a2 + 72) = v6;
  }

  else
  {
    v18 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v18;
  return result;
}

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::IntElementIterator,llvm::APInt>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_1F5AF5D38;
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 24) = result;
  *a2 = v4;
  return result;
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::IntElementIterator,llvm::APInt>::at@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = result[1];
  v4 = result[4];
  if (result[2])
  {
    v5 = 0;
  }

  else
  {
    v5 = result[3] + a2;
  }

  if (v4 == 1)
  {
    v6 = (*(v3 + (v5 >> 3)) >> (v5 & 7)) & 1;
    *(a3 + 2) = 1;
    *a3 = v6;
    return result;
  }

  *(a3 + 2) = v4;
  if (v4 >= 0x41)
  {
    v8 = a3;
    llvm::APInt::initSlowCase(a3, 0, 0);
    v7 = ((v4 - 1) >> 3) + 1;
    if (*(v8 + 2) >= 0x41u)
    {
      a3 = *v8;
    }

    else
    {
      a3 = v8;
    }

LABEL_15:

    return memmove(a3, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v5) >> 3)), v7);
  }

  *a3 = 0;
  if (v4)
  {
    v7 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_15;
  }

  return result;
}

void *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<BOOL>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(*a1 + 8);
  *&v11 = mlir::ElementsAttr::isSplat(&v11);
  result = mlir::Type::isInteger(&v11, 1);
  if (result)
  {
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 24);
    v11 = *(*a1 + 8);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v11);
    mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
    v9 = *(*a1 + 24);
    result = operator new(0x20uLL);
    *result = &unk_1F5AF5D98;
    result[1] = v5;
    result[2] = v6;
    result[3] = 0;
    *(a2 + 1) = v9;
    *(a2 + 8) = result;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *a2 = 0;
  *(a2 + 16) = v10;
  return result;
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  {
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(a1, a2, a3);
    }
  }

  else
  {
    v11 = a3;
    v4 = a1;
    v5 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v5;
    a1 = v4;
    a3 = v11;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  result = mlir::DenseElementsAttr::tryGetComplexIntValues(a1, &v12);
  if (v14)
  {
    v8 = v12;
    v15[0] = v13[0];
    *(v15 + 15) = *(v13 + 15);
    v9 = *(*v7 + 24);
    result = operator new(0x28uLL);
    *result = &unk_1F5AF5DF8;
    *(result + 8) = v8;
    *(result + 9) = v15[0];
    *(result + 24) = *(v15 + 15);
    *(v6 + 1) = v9;
    *(v6 + 8) = result;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *v6 = 0;
  *(v6 + 16) = v10;
  return result;
}

const char *llvm::getTypeName<BOOL>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = BOOL]";
  v6 = 54;
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

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::BoolElementIterator,BOOL>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F5AF5D98;
  result = *(a1 + 8);
  *(v4 + 8) = result;
  *(v4 + 3) = *(a1 + 24);
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::BoolElementIterator,BOOL>::at(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 24) + a2;
  }

  return (*(*(a1 + 8) + (v2 >> 3)) >> (v2 & 7)) & 1;
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  {
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
    }
  }

  else
  {
    v12 = a3;
    v4 = a1;
    v5 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v5;
    a1 = v4;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  result = mlir::DenseElementsAttr::tryGetFloatValues(a1, &v13);
  if (v16)
  {
    v8 = v13;
    v17 = v14;
    *v18 = v15[0];
    *&v18[15] = *(v15 + 15);
    v9 = *(*v7 + 24);
    result = operator new(0x30uLL);
    *result = &unk_1F5AF5E58;
    *(result + 8) = v8;
    v10 = *v18;
    *(result + 9) = v17;
    *(result + 25) = v10;
    *(result + 40) = *&v18[15];
    *(v6 + 1) = v9;
    *(v6 + 8) = result;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  *v6 = 0;
  *(v6 + 16) = v11;
  return result;
}

const char *llvm::getTypeName<std::complex<llvm::APInt>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<llvm::APInt>]";
  v6 = 75;
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

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APInt>>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_1F5AF5DF8;
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 24) = result;
  *a2 = v4;
  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APInt>>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 32);
  v5 = *(a1 + 24) + a2;
  v6 = v3;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v4, a3);
}

unint64_t _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1_@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  {
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return result;
    }
  }

  else
  {
    v10 = result;
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1__cold_1();
    result = v10;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v5 = result;
  result = mlir::DenseElementsAttr::tryGetComplexFloatValues(result, &v11);
  if (v14)
  {
    v6 = v11;
    v15 = v12;
    *v16 = v13[0];
    *&v16[15] = *(v13 + 15);
    v7 = *(*v5 + 24);
    result = operator new(0x30uLL);
    *result = &unk_1F5AF5EB8;
    *(result + 8) = v6;
    v8 = *v16;
    *(result + 9) = v15;
    *(result + 25) = v8;
    *(result + 40) = *&v16[15];
    *(a3 + 1) = v7;
    *(a3 + 8) = result;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a3 = 0;
  *(a3 + 16) = v9;
  return result;
}

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::FloatElementIterator,llvm::APFloat>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_1F5AF5E58;
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 24) = result;
  *(v4 + 5) = *(a1 + 40);
  *a2 = v4;
  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::FloatElementIterator,llvm::APFloat>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = v3 + a2;
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v4, a3);
}

const char *llvm::getTypeName<std::complex<llvm::APFloat>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<llvm::APFloat>]";
  v6 = 77;
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

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexFloatElementIterator,std::complex<llvm::APFloat>>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_1F5AF5EB8;
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 24) = result;
  *(v4 + 5) = *(a1 + 40);
  *a2 = v4;
  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexFloatElementIterator,std::complex<llvm::APFloat>>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, &v8);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v5, &v8, a3);
  if (v11 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[](v8);
    }
  }
}

BOOL mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  else
  {
    v5 = a1;
    mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
    a1 = v5;
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ElementsAttr::Trait<Empty>]";
  v6 = 82;
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

void mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseStringElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseStringElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::DenseStringElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseStringElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_23DenseStringElementsAttrENS1_17DenseElementsAttrENSB_30DenseStringElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_23DenseStringElementsAttrENS1_17DenseElementsAttrENSA_30DenseStringElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_string_elements";
  *(a2 + 152) = 29;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseStringElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseStringElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getValuesImpl(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(&v8, a2, v9);
  if (v11 == 1)
  {
    v5 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v5 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return;
    }

    v6 = v10;
    v10 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplINS_9AttributeEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

void _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }
  }

  else
  {
    _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v12 = *(*a1 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v12);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v7))
  {
    v8 = *(*a1 + 32);
    v12 = *(*a1 + 8);
    v9 = mlir::CallableOpInterface::getArgAttrsAttr(&v12);
    mlir::ShapedType::getNumElements(v9, v10);
    v11 = *(*a1 + 24);
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  *a3 = 1;
  *(a3 + 1) = v11;
  *(a3 + 8) = v8;
  *(a3 + 16) = 1;
}

const char *llvm::getTypeName<llvm::StringRef>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::StringRef]";
  v6 = 65;
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

void *_ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplINS_9AttributeEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    v10 = result;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    result = v10;
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = *result;
    v11 = *(*result + 8);
    v6 = result;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v11);
    mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
    LOBYTE(v6) = *(*v6 + 24);
    result = operator new(0x18uLL);
    *result = &unk_1F5AF5CC8;
    result[1] = v5;
    result[2] = 0;
    *(a3 + 1) = v6;
    *(a3 + 8) = result;
    v4 = 1;
    goto LABEL_6;
  }

  if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 0;
LABEL_6:
  *a3 = 0;
  *(a3 + 16) = v4;
  return result;
}

void mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseResourceElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseResourceElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::DenseResourceElementsAttr,mlir::Attribute,mlir::detail::DenseResourceElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSB_32DenseResourceElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSA_32DenseResourceElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_resource_elements";
  *(a2 + 152) = 31;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseResourceElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseResourceElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(void **a1)
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

          return mlir::ElementsAttr::getNumElements(v2, v13);
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

    return mlir::ElementsAttr::getNumElements(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getNumElements(v2, v13);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSB_32DenseResourceElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSA_32DenseResourceElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseResourceElementsAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseResourceElementsAttr>(uint64_t a1, __int128 *a2, int64x2_t *a3)
{
  v18 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v5 = *a2;
  v16 = *a3;
  v17 = v5;
  v6 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v3, v4, &v17, &v16);
  v8 = v7;
  mlir::Attribute::getContext(&v18);
  *&v21 = v6;
  *(&v21 + 1) = v8;
  Context = mlir::Attribute::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v22[1] = Context;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v27[1] = v22;
  v25[0] = v21;
  v25[1] = v19;
  v26 = v20;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (LODWORD(v25[0]) >> 4) ^ (LODWORD(v25[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v24 = v25;
  v23[0] = v25;
  v23[1] = v27;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14)))) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void *mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(void *result, uint64_t a2, uint64_t a3, int64x2_t *a4)
{
  if (result)
  {
    v4 = *a4;
    *a4 = vaddq_s64(*a4, xmmword_1E09721B0);
    result = *v4.i64[0];
    if (*v4.i64[0])
    {
      v5 = *result;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          return result;
        }
      }

      else
      {
        v15 = v5;
        v16 = result;
        mlir::TensorType::operator mlir::ShapedType();
        result = v16;
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v15 + 8);
        v8 = *(v15 + 16);
        if (!v8)
        {
          return result;
        }
      }

      v9 = v7;
      v10 = v8;
      do
      {
        v11 = v10 >> 1;
        v12 = &v9[2 * (v10 >> 1)];
        v14 = *v12;
        v13 = v12 + 2;
        v10 += ~(v10 >> 1);
        if (v14 < v6)
        {
          v9 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
    }
  }

  return result;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = *v7++;
      v12 = v9;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v12);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, CallableRegion);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, *(&v12 + 1));
      v8 -= 16;
    }

    while (v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5.i64[0] = a3;
  v5.i64[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DictionaryAttr>(a2, &v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::DictionaryAttr>(uint64_t a1, int64x2_t *a2)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v2 = *(a1 + 8);
  v11 = *a2;
  v12 = v2;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::NamedAttribute>>,void>::replace(&v12, &v11, &v17);
  Context = mlir::Attribute::getContext(&v13);
  v14 = v16;
  v15 = 0x300000000;
  v4 = v18;
  if (v18)
  {
    v5 = Context;
    if (v18 < 4)
    {
      v7 = v16;
      v6 = v18;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v18, 16);
      v6 = v18;
      if (!v18)
      {
        goto LABEL_9;
      }

      v7 = v14;
    }

    memcpy(v7, v17, 16 * v6);
LABEL_9:
    LODWORD(v15) = v4;
    v8 = mlir::DictionaryAttr::get(v5, v14, v4);
    v9 = v14;
    if (v14 == v16)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = mlir::DictionaryAttr::get(Context, v16, 0);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_10:
    free(v9);
  }

LABEL_11:
  if (v17 != v19)
  {
    free(v17);
  }

  return v8;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::NamedAttribute>>,void>::replace(uint64_t a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::NamedAttribute>,void>::replace(*(a1 + 8), a2, &__src);
  v4 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x300000000;
  v5 = v11;
  v6 = __src;
  if (v11)
  {
    v7 = &__src == a3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  if (__src == v13)
  {
    if (v11 < 4)
    {
      v9 = v11;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v11, 16);
      v9 = v11;
      v6 = __src;
      if (!v11)
      {
LABEL_12:
        *(a3 + 8) = v5;
        goto LABEL_13;
      }

      v4 = *a3;
    }

    memcpy(v4, v6, 16 * v9);
    v6 = __src;
    goto LABEL_12;
  }

  *a3 = __src;
  v8 = v12;
  *(a3 + 8) = v5;
  *(a3 + 12) = v8;
  __src = v13;
  v12 = 0;
  v6 = v13;
LABEL_13:
  v11 = 0;
LABEL_14:
  if (v6 != v13)
  {
    free(v6);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::NamedAttribute>,void>::replace(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v14[6] = *MEMORY[0x1E69E9840];
  __src = v14;
  v13 = 0x300000000;
  if (a1)
  {
    v5 = 16 * a1;
    do
    {
      while (1)
      {
        v6 = *a2;
        *a2 = vaddq_s64(*a2, xmmword_1E09721C0);
        mlir::NamedAttribute::NamedAttribute(&v11, *v6.i64[0], *(v6.i64[0] + 8));
        if (v13 >= HIDWORD(v13))
        {
          break;
        }

        *(__src + v13) = v11;
        LODWORD(v13) = v13 + 1;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      llvm::SmallVectorTemplateBase<llvm::SMRange,true>::growAndEmplaceBack<llvm::SMRange>(&__src, &v11);
      v5 -= 16;
    }

    while (v5);
LABEL_7:
    v7 = v13;
    v8 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
    if (v7 && &__src != a3)
    {
      if (v8 == v14)
      {
        v10 = v7;
        if (v7 < 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v7, 16), v10 = v13, v8 = __src, v13))
        {
          memcpy(*a3, v8, 16 * v10);
          v8 = __src;
        }

        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = v8;
        v9 = HIDWORD(v13);
        *(a3 + 8) = v7;
        *(a3 + 12) = v9;
        __src = v14;
        HIDWORD(v13) = 0;
        v8 = v14;
      }

      LODWORD(v13) = 0;
    }

    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
  }
}

void mlir::AbstractAttribute::get<mlir::FloatAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::FloatAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSB_16FloatAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  *(a2 + 144) = "builtin.float";
  *(a2 + 152) = 13;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void mlir::detail::walkImmediateSubElementsImpl<mlir::FloatAttr>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v9 = (a1 + 3);
  v10 = a1[3];
  v13 = a1[1];
  v11 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v9);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v14, v9);
  }

  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  mlir::AttrTypeImmediateSubElementWalker::walk(v12, v13);
  if (v11 == v14[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FloatAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FloatAttr>(void *a1, uint64_t a2, uint64_t **a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v12 = a1;
  v4 = (a1 + 3);
  v5 = a1[3];
  v15 = a1[1];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v4);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v17, v4);
    if (v15)
    {
LABEL_3:
      v7 = **a3;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  mlir::Attribute::getContext(&v12);
  v13 = v7;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v14[1] = Context;
  v10 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v13, &v16);
  if (v6 == v17[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
  }

  return v10;
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::FloatAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  }

  else
  {

    llvm::detail::IEEEFloat::~IEEEFloat(v2);
  }
}

void mlir::AbstractAttribute::get<mlir::IntegerAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::IntegerAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  *(a2 + 144) = "builtin.integer";
  *(a2 + 152) = 15;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 8);
  v13 = v11;
  v15 = *(a2 + 24);
  if (v15 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, (a2 + 16));
    v11 = v13;
  }

  else
  {
    __p = *(a2 + 16);
  }

  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v12, v11);
  if (v15 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v13 = a2;
  v6 = *(a2 + 8);
  v10 = v6;
  v12 = *(a2 + 24);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, (a2 + 16));
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *(a2 + 16);
    if (v6)
    {
LABEL_3:
      v7 = *a5;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  mlir::Attribute::getContext(&v13);
  result = mlir::IntegerAttr::get(v7, &__p);
  if (v12 >= 0x41)
  {
    if (__p)
    {
      v9 = result;
      operator delete[](__p);
      return v9;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::IntegerAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) >= 0x41u)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      operator delete[](v2);
    }
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSA_21IntegerSetAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::IntegerSet::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void mlir::AbstractAttribute::get<mlir::OpaqueAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::OpaqueAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSB_17OpaqueAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSA_17OpaqueAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  *(a2 + 144) = "builtin.opaque";
  *(a2 + 152) = 14;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSB_17OpaqueAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getReplaceImmediateSubElementsFn(void)::{lambda(mlir::OpaqueAttr,llvm::ArrayRef<mlir::Attribute>,llvm::ArrayRef<mlir::Type>)#1}::operator()<mlir::Attribute>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v20 = a2;
  v5 = a2[4];
  if (!a2[1])
  {
    v6 = 0;
    v7 = a2[2];
    v8 = a2[3];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = *a3;
  v7 = a2[2];
  v8 = a2[3];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *a5;
LABEL_6:
  mlir::Attribute::getContext(&v20);
  v21 = v6;
  Context = mlir::Attribute::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  v22[1] = Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v26[1] = v22;
  v25[0] = v21;
  v25[1] = v7;
  v25[2] = v8;
  v25[3] = v9;
  v12 = (v21 >> 4) ^ (v21 >> 9);
  v13 = llvm::hash_value(v7, v8);
  v14 = 0x9AE16A3B2F90404FLL * ((v9 >> 4) ^ (v9 >> 9));
  v15 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v16 = 0xB492B66FBE98F273 * v12 - v14 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 + 24;
  v17 = (v15 + __ROR8__(0xB492B66FBE98F273 * v12 - v13, 43)) ^ v16;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * v17) >> 47) ^ (0x9DDFEA08EB382D69 * v17));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::SparseElementsAttr>,mlir::ElementsAttr::Trait<mlir::SparseElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  *(a2 + 144) = "builtin.sparse_elements";
  *(a2 + 152) = 23;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::SparseElementsAttr>,mlir::ElementsAttr::Trait<mlir::SparseElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getValuesImpl(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1;
  {
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<llvm::APInt,BOOL,unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(&v5, a2, a3);
      return;
    }
  }

  else
  {
    v3 = a2;
    v4 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v3;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<mlir::Attribute>(&v5, a3);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<mlir::Attribute>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<mlir::Attribute>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<llvm::APInt,BOOL,unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APInt>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<BOOL>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<mlir::Attribute>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  ZeroAttr = mlir::SparseElementsAttr::getZeroAttr(a1);
  v5 = *(*a1 + 32);
  v23[0] = *(v5 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v23);
  mlir::ShapedType::getNumElements(ArgAttrsAttr, v7);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v19);
  v8 = v19;
  v9 = v20 - v19;
  if (v20 == v19)
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = operator new(v20 - v19);
    v11 = &v10[v9];
    memcpy(v10, v8, v9);
  }

  v12 = operator new(0x38uLL);
  *v12 = &unk_1F5AF5F18;
  v12[1] = v10;
  v12[2] = v11;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = 0;
  v12[6] = ZeroAttr;
  v27 = v12;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v13 = (*(*v12 + 16))(v12);
  v22 = v13;
  *&v23[0] = 0;
  if (!v13)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *&v23[0];
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_13:
    v16 = (a2 + 32);
    goto LABEL_14;
  }

  if (v13 == v21)
  {
    v24 = (v23 + 8);
    (*(*v13 + 24))(v13, v23 + 8);
    v15 = v24;
  }

  else
  {
    v15 = (*(*v13 + 16))(v13);
    v24 = v15;
  }

  v25 = 1;
  *a2 = *&v23[0];
  *(a2 + 8) = 0;
  v14 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v15)
  {
    goto LABEL_13;
  }

  if (v15 == (v23 + 8))
  {
    *(a2 + 32) = v14;
    (*(*v15 + 24))(v15);
    v18 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v16 = &v24;
  *(a2 + 32) = v15;
LABEL_14:
  *v16 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_15:
  if (v24 == (v23 + 8))
  {
    (*(*v24 + 32))(v24, v14);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_19:
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22, v14);
    v17 = v27;
    if (v27 != v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v22)
    {
      (*(*v22 + 40))();
    }

    v17 = v27;
    if (v27 != v26)
    {
LABEL_23:
      if (v17)
      {
        (*(*v17 + 40))(v17, v14);
      }

      if (v8)
      {
        goto LABEL_26;
      }

      return;
    }
  }

  (*(*v17 + 32))(v17, v14);
  if (v8)
  {
LABEL_26:
    operator delete(v8);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF5FA8;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEED1Ev(void *result)
{
  *result = &unk_1F5AF5F18;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF5F18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_1F5AF5F18;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  *(v2 + 2) = *(a1 + 32);
  v2[6] = *(a1 + 48);
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7__cloneEPNS0_6__baseIST_EE(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_1F5AF5F18;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  v5 = a1->n128_u64[1];
  v4 = a1[1].n128_u64[0];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    a2->n128_u64[1] = v7;
    a2[1].n128_u64[0] = v7;
    v8 = &v7[v6];
    a2[1].n128_u64[1] = &v7[v6];
    memcpy(v7, v5, v6);
    a2[1].n128_u64[0] = v8;
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEEclEOl(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return a1[6];
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return a1[6];
    }
  }

  v8 = a1[5] - v4;
  v9[0] = a1[4];
  v9[1] = v8;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09728C1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09728C1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09728C1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09728C1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF5FA8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF5FA8;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF5FA8;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APInt>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APInt>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<llvm::APInt>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<llvm::APInt>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v26[0] = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a1);
  Width = mlir::IntegerType::getWidth(v26);
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
  }

  else
  {
    __p = 0;
  }

  v23[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(v23, v26);
  if ((v29 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    goto LABEL_30;
  }

  v4 = v26[0];
  v25[0] = *(v26 + 1);
  *(v25 + 15) = v26[1];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v17);
  v5 = v17;
  v6 = v18 - v17;
  if (v18 == v17)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v18 - v17);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = Width;
  v10 = __p;
  Width = 0;
  v11 = operator new(0x50uLL);
  *v11 = &unk_1F5AF5FF0;
  *(v11 + 1) = v7;
  *(v11 + 2) = v8;
  *(v11 + 3) = v8;
  v11[32] = v4;
  *(v11 + 33) = v25[0];
  *(v11 + 3) = *(v25 + 15);
  *(v11 + 18) = v9;
  *(v11 + 8) = v10;
  v24 = v11;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  if (!v24)
  {
    v22 = 0;
    *&v26[0] = 0;
    goto LABEL_15;
  }

  if (v24 == v23)
  {
    v22 = v21;
    (*(*v24 + 24))();
    v12 = v22;
    *&v26[0] = 0;
    if (v22)
    {
      goto LABEL_38;
    }

LABEL_15:
    v27 = 0;
    v28 = 1;
    *a2 = *&v26[0];
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_16:
    v13 = (a2 + 32);
    goto LABEL_17;
  }

  v12 = (*(*v24 + 16))();
  v22 = v12;
  *&v26[0] = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_38:
  if (v12 == v21)
  {
    v27 = (v26 + 8);
    (*(*v12 + 24))(v12, v26 + 8);
    v15 = v27;
  }

  else
  {
    v15 = (*(*v12 + 16))(v12);
    v27 = v15;
  }

  v28 = 1;
  *a2 = *&v26[0];
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  if (!v15)
  {
    goto LABEL_16;
  }

  if (v15 == (v26 + 8))
  {
    *(a2 + 32) = a2 + 8;
    (*(*v15 + 24))(v15);
    v16 = v28;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v13 = &v27;
  *(a2 + 32) = v15;
LABEL_17:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_18:
  if (v27 == (v26 + 8))
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))();
  }

LABEL_22:
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
    v14 = v24;
    if (v24 != v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v22)
    {
      (*(*v22 + 40))();
    }

    v14 = v24;
    if (v24 != v23)
    {
LABEL_26:
      if (v14)
      {
        (*(*v14 + 40))(v14);
      }

      if (v5)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  (*(*v14 + 32))(v14);
  if (v5)
  {
LABEL_29:
    operator delete(v5);
  }

LABEL_30:
  if (Width >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF6080;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5AF5FF0;
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *__p)
{
  *__p = &unk_1F5AF5FF0;
  if (*(__p + 18) >= 0x41u)
  {
    v2 = __p[8];
    if (v2)
    {
      operator delete[](v2);
    }
  }

  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x50uLL);
  *v2 = &unk_1F5AF5FF0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  v9 = *(a1 + 72);
  *(v2 + 18) = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase((v2 + 8), (a1 + 64));
  }

  else
  {
    v2[8] = *(a1 + 64);
  }

  return v2;
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(void *result, uint64_t a2)
{
  v3 = result;
  *a2 = &unk_1F5AF5FF0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = result[1];
  v4 = result[2];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    result = memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  v9 = *(v3 + 3);
  *(a2 + 32) = *(v3 + 2);
  *(a2 + 48) = v9;
  v10 = *(v3 + 18);
  *(a2 + 72) = v10;
  if (v10 > 0x40)
  {

    return llvm::APInt::initSlowCase(a2 + 64, v3 + 8);
  }

  else
  {
    *(a2 + 64) = v3[8];
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = a1;
      operator delete[](v2);
      a1 = v3;
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;

    operator delete(v4);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 18) >= 0x41u)
  {
    v2 = __p[8];
    if (v2)
    {
      operator delete[](v2);
    }
  }

  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0972C66)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0972C66 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0972C66))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0972C66 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS2_9FailureOrINS2_15mapped_iteratorINS2_6detail15SafeIntIteratorIlLb0EEENSt3__18functionIFT_lEEEDTclclsr3stdE7declvalISD_EEdeclL_ZNS9_7declvalB8nn200100IS8_EEDTclsr3stdE9__declvalISB_ELi0EEEvEEEEEEEENS_6detail17ElementsAttrTraitIS0_E13OverloadTokenISB_EEENKUllE_clEl@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = *result;
  v4 = (*(result + 1) - *result) >> 3;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = *v3++;
      if (v6 == a2)
      {
        break;
      }

      --v5;
      LODWORD(v4) = v4 - 1;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(result + 3);
    v10 = *(result + 6);
    if (*(result + 32))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 5) - v5;
    }

    if (v10 == 1)
    {
      v8 = (*(v9 + (v11 >> 3)) >> (v11 & 7)) & 1;
      *(a3 + 2) = 1;
      goto LABEL_15;
    }

    *(a3 + 2) = v10;
    if (v10 >= 0x41)
    {
      v13 = a3;
      llvm::APInt::initSlowCase(a3, 0, 0);
      v12 = ((v10 - 1) >> 3) + 1;
      if (*(v13 + 2) >= 0x41u)
      {
        a3 = *v13;
      }

      else
      {
        a3 = v13;
      }
    }

    else
    {
      *a3 = 0;
      if (v10)
      {
        v12 = ((v10 - (v10 != 0)) >> 3) + 1;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        return result;
      }
    }

    return memmove(a3, (v9 + ((((v10 - (v10 != 0) + 8 * (v10 != 0)) & 0xFFFFFFFFFFFFFFF8) * v11) >> 3)), v12);
  }

  else
  {
LABEL_5:
    v7 = *(result + 16);
    *(a3 + 2) = v7;
    if (v7 <= 0x40)
    {
      v8 = *(result + 7);
LABEL_15:
      *a3 = v8;
      return result;
    }

    return llvm::APInt::initSlowCase(a3, result + 7);
  }
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6080;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6080;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6080;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<BOOL>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<BOOL>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<BOOL>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned char>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<BOOL>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 32);
  v24[0] = *(v4 + 8);
  *&v24[0] = mlir::ElementsAttr::isSplat(v24);
  if (!mlir::Type::isInteger(v24, 1))
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 24);
  v24[0] = *(v4 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v20);
  v9 = v20;
  v10 = v21 - v20;
  if (v21 == v20)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = operator new(v21 - v20);
    v12 = &v11[v10];
    memcpy(v11, v9, v10);
  }

  v13 = operator new(0x40uLL);
  *v13 = &unk_1F5AF60C8;
  v13[1] = v11;
  v13[2] = v12;
  v13[3] = v12;
  v13[4] = v5;
  v13[5] = v6;
  v13[6] = 0;
  v13[7] = 0;
  v28 = v13;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v14 = (*(*v13 + 16))(v13);
  v23 = v14;
  *&v24[0] = 0;
  if (!v14)
  {
    v25 = 0;
    v26 = 1;
    *a2 = *&v24[0];
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v17 = (a2 + 32);
    goto LABEL_16;
  }

  if (v14 == v22)
  {
    v25 = (v24 + 8);
    (*(*v14 + 24))(v14, v24 + 8);
    v16 = v25;
  }

  else
  {
    v16 = (*(*v14 + 16))(v14);
    v25 = v16;
  }

  v26 = 1;
  *a2 = *&v24[0];
  *(a2 + 8) = 0;
  v15 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v16)
  {
    goto LABEL_15;
  }

  if (v16 == (v24 + 8))
  {
    *(a2 + 32) = v15;
    (*(*v16 + 24))(v16);
    v19 = v26;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v17 = &v25;
  *(a2 + 32) = v16;
LABEL_16:
  *v17 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v25 == (v24 + 8))
  {
    (*(*v25 + 32))(v25, v15);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

LABEL_21:
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23, v15);
    v18 = v28;
    if (v28 != v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 40))();
    }

    v18 = v28;
    if (v28 != v27)
    {
LABEL_25:
      if (v18)
      {
        (*(*v18 + 40))(v18, v15);
      }

      if (v9)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v18 + 32))(v18, v15);
  if (v9)
  {
LABEL_28:
    operator delete(v9);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF6158;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED1Ev(void *result)
{
  *result = &unk_1F5AF60C8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF60C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF60C8;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 1) = v6;
    *(v2 + 2) = v6;
    v7 = &v6[v5];
    *(v2 + 3) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 2) = v7;
  }

  *(v2 + 2) = *(a1 + 32);
  *(v2 + 41) = *(a1 + 41);
  *(v2 + 57) = 0;
  *(v2 + 15) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF60C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56) & 1;
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56) & 1;
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return (*(*(a1 + 32) + (v8 >> 3)) >> (v8 & 7)) & 1;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0972FEDLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0972FEDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0972FEDLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0972FEDLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6158;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6158;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6158;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned char>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned char>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<unsigned char>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<unsigned char>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(v20, v23);
  if ((v26 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v23[0];
  v22[0] = *&v23[1];
  *(v22 + 15) = *&v23[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v16);
  v5 = v16;
  v6 = v17 - v16;
  if (v17 == v16)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v17 - v16);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x40uLL);
  *v9 = &unk_1F5AF61A0;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v22[0];
  *(v9 + 6) = *(v22 + 15);
  *(v9 + 7) = 0;
  v21 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v10 = (*(*v9 + 16))(v9);
  v19 = v10;
  *v23 = 0;
  if (!v10)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *v23;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v13 = (a2 + 32);
    goto LABEL_16;
  }

  if (v10 == v18)
  {
    v24 = &v23[8];
    (*(*v10 + 24))(v10, &v23[8]);
    v12 = v24;
  }

  else
  {
    v12 = (*(*v10 + 16))(v10);
    v24 = v12;
  }

  v25 = 1;
  *a2 = *v23;
  *(a2 + 8) = 0;
  v11 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 == &v23[8])
  {
    *(a2 + 32) = v11;
    (*(*v12 + 24))(v12);
    v15 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v13 = &v24;
  *(a2 + 32) = v12;
LABEL_16:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v24 == &v23[8])
  {
    (*(*v24 + 32))(v24, v11);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19, v11);
    v14 = v21;
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v14 = v21;
    if (v21 != v20)
    {
LABEL_25:
      if (v14)
      {
        (*(*v14 + 40))(v14, v11);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v14 + 32))(v14, v11);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF6230;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED1Ev(void *result)
{
  *result = &unk_1F5AF61A0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF61A0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF61A0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 1) = v6;
    *(v2 + 2) = v6;
    v7 = &v6[v5];
    *(v2 + 3) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 2) = v7;
  }

  *(v2 + 2) = *(a1 + 32);
  *(v2 + 41) = *(a1 + 41);
  *(v2 + 57) = 0;
  *(v2 + 15) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF61A0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097335CLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097335CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097335CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097335CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6230;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6230;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6230;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<unsigned short>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long long>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<unsigned short>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(v20, v23);
  if ((v26 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v23[0];
  v22[0] = *&v23[1];
  *(v22 + 15) = *&v23[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v16);
  v5 = v16;
  v6 = v17 - v16;
  if (v17 == v16)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v17 - v16);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x40uLL);
  *v9 = &unk_1F5AF6290;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v22[0];
  *(v9 + 6) = *(v22 + 15);
  *(v9 + 7) = 0;
  v21 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v10 = (*(*v9 + 16))(v9);
  v19 = v10;
  *v23 = 0;
  if (!v10)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *v23;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v13 = (a2 + 32);
    goto LABEL_16;
  }

  if (v10 == v18)
  {
    v24 = &v23[8];
    (*(*v10 + 24))(v10, &v23[8]);
    v12 = v24;
  }

  else
  {
    v12 = (*(*v10 + 16))(v10);
    v24 = v12;
  }

  v25 = 1;
  *a2 = *v23;
  *(a2 + 8) = 0;
  v11 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 == &v23[8])
  {
    *(a2 + 32) = v11;
    (*(*v12 + 24))(v12);
    v15 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v13 = &v24;
  *(a2 + 32) = v12;
LABEL_16:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v24 == &v23[8])
  {
    (*(*v24 + 32))(v24, v11);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19, v11);
    v14 = v21;
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v14 = v21;
    if (v21 != v20)
    {
LABEL_25:
      if (v14)
      {
        (*(*v14 + 40))(v14, v11);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v14 + 32))(v14, v11);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF6320;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEED1Ev(void *result)
{
  *result = &unk_1F5AF6290;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6290;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6290;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 1) = v6;
    *(v2 + 2) = v6;
    v7 = &v6[v5];
    *(v2 + 3) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 2) = v7;
  }

  *(v2 + 2) = *(a1 + 32);
  *(v2 + 42) = *(a1 + 42);
  *(v2 + 58) = 0;
  *(v2 + 31) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6290;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097371FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097371FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097371FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097371FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6320;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6320;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6320;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<unsigned int>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<unsigned int>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v20, v23);
  if ((v26 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v23[0];
  v22[0] = *&v23[1];
  *(v22 + 15) = *&v23[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v16);
  v5 = v16;
  v6 = v17 - v16;
  if (v17 == v16)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v17 - v16);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x40uLL);
  *v9 = &unk_1F5AF6380;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v22[0];
  *(v9 + 6) = *(v22 + 15);
  *(v9 + 7) = 0;
  v21 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v10 = (*(*v9 + 16))(v9);
  v19 = v10;
  *v23 = 0;
  if (!v10)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *v23;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v13 = (a2 + 32);
    goto LABEL_16;
  }

  if (v10 == v18)
  {
    v24 = &v23[8];
    (*(*v10 + 24))(v10, &v23[8]);
    v12 = v24;
  }

  else
  {
    v12 = (*(*v10 + 16))(v10);
    v24 = v12;
  }

  v25 = 1;
  *a2 = *v23;
  *(a2 + 8) = 0;
  v11 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 == &v23[8])
  {
    *(a2 + 32) = v11;
    (*(*v12 + 24))(v12);
    v15 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v13 = &v24;
  *(a2 + 32) = v12;
LABEL_16:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v24 == &v23[8])
  {
    (*(*v24 + 32))(v24, v11);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19, v11);
    v14 = v21;
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v14 = v21;
    if (v21 != v20)
    {
LABEL_25:
      if (v14)
      {
        (*(*v14 + 40))(v14, v11);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v14 + 32))(v14, v11);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF6410;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}