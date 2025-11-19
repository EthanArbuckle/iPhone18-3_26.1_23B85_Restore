uint64_t mlir::mps::LocalConvolutionDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "data_layout", 11, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "dilation_rates", 14, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "kernel_sizes", 12, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 14)
  {
    result = memcmp(__s1, "dilation_rates", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *(v5 + 8) = v8;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "kernel_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 16) = v7;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v9, "dilation_rates", 0xE, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v10, "kernel_sizes", 0xC, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v57 + 8);
      v13 = *(v57 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v62 = a1;
      v63 = v21;
      Type = mlir::ElementsAttr::getType(&v62);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v62 = a1;
    v63 = 0;
    Type = mlir::ElementsAttr::getType(&v62);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v22;
      v58 = Type;
      mlir::arith::ExtUIOp::fold();
      Type = v58;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v56 + 8);
      v25 = *(v56 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v66 = Type;
    v67 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
    v78 = 2;
    if (v34 == 1 && *ArgAttrsAttr == v78)
    {
      v59 = a1;
      v60[0] = mlir::ArrayAttr::getValue(&v59);
      v60[1] = v35;
      isSplat = mlir::ElementsAttr::isSplat(v60);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v66, a5);
  if (v66)
  {
    LODWORD(v62) = 3;
    v63 = "attribute '";
    v64 = 11;
    v37 = &v62;
    v38 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v62 && v68 + 24 * v69 > &v62)
      {
        v54 = &v62 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v38 = v68;
        v37 = v68 + v54;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v37 = &v62;
        v38 = v68;
      }
    }

    v39 = &v38[24 * v69];
    v40 = *v37;
    *(v39 + 2) = *(v37 + 2);
    *v39 = v40;
    ++v69;
    if (v66)
    {
      v65 = 261;
      v62 = a2;
      v63 = a3;
      mlir::Diagnostic::operator<<(&v67, &v62);
      if (v66)
      {
        LODWORD(v62) = 3;
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {2}";
        v64 = 68;
        v41 = &v62;
        v42 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v62 && v68 + 24 * v69 > &v62)
          {
            v55 = &v62 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v42 = v68;
            v41 = v68 + v55;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v41 = &v62;
            v42 = v68;
          }
        }

        v43 = &v42[24 * v69];
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        ++v69;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v75;
      v47 = __p;
      if (v75 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v75 = v45;
      operator delete(v47);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            operator delete[](v51);
          }
        }

        while (v49 != v48);
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v36;
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::LocalConvolutionDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2);
  }

  return 0;
}

void mlir::mps::LocalConvolutionDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a3;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v37[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v37[1] = v12;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v35 = v37;
  v33 = a5;
  v14 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v14);
  v32 = &v33;
  v38 = &v33;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v17 = ParametricStorageTypeImpl;
  v18 = *(a2 + 256);
  if (v18)
  {
    *v18 = ParametricStorageTypeImpl;
    v19 = *(a2 + 256);
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = operator new(0x18uLL);
    v21[1] = 0;
    v21[2] = 0;
    *v21 = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::LocalConvolutionDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v17;
    v19 = *(a2 + 256);
    if (v19)
    {
LABEL_3:
      *(v19 + 16) = a6;
      v20 = *(a2 + 256);
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v22 = operator new(0x18uLL);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  *(a2 + 256) = v22;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::LocalConvolutionDataGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 16) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
LABEL_11:
    v23 = operator new(0x18uLL);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    *(a2 + 256) = v23;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::LocalConvolutionDataGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

LABEL_14:
  *(v20 + 8) = a7;
  __src = v36;
  v35 = 0x200000000;
  v24 = *a1;
  mlir::ValueRange::ValueRange(&v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v37, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = __src;
  v27 = v35;
  v28 = *(a2 + 72);
  v29 = v28 + v35;
  if (v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29, 8);
    LODWORD(v28) = *(a2 + 72);
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v28), v26, 8 * v27);
    LODWORD(v28) = *(a2 + 72);
  }

  *(a2 + 72) = v28 + v27;
  if (__src != v36)
  {
    free(__src);
  }
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::verifyInvariantsImpl(mlir::mps::LocalConvolutionDataGradientOp *this)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v3 + 16);
      if (v6)
      {
        v34[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v2, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v6, "kernel_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 36))
        {
          v8 = *this - 16;
        }

        else
        {
          v8 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
      }

      v32[0] = "requires attribute 'kernel_sizes'";
      v33 = 259;
      mlir::OpState::emitOpError(this, v32, v34);
      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

        v25 = __p;
        if (__p)
        {
          v26 = v40;
          v27 = __p;
          if (v40 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v40 = v25;
          operator delete(v27);
        }

        v14 = v37;
        if (!v37)
        {
          goto LABEL_64;
        }

        v28 = v38;
        v16 = v37;
        if (v38 == v37)
        {
LABEL_63:
          v38 = v14;
          operator delete(v16);
LABEL_64:
          if (v35 != &v36)
          {
            free(v35);
          }

          return v10;
        }

        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v28 != v14);
LABEL_62:
        v16 = v37;
        goto LABEL_63;
      }
    }

    else
    {
      v32[0] = "requires attribute 'dilation_rates'";
      v33 = 259;
      mlir::OpState::emitOpError(this, v32, v34);
      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

        v14 = v37;
        if (!v37)
        {
          goto LABEL_64;
        }

        v22 = v38;
        v16 = v37;
        if (v38 == v37)
        {
          goto LABEL_63;
        }

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

        while (v22 != v14);
        goto LABEL_62;
      }
    }
  }

  else
  {
    v32[0] = "requires attribute 'data_layout'";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, v34);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

      v11 = __p;
      if (__p)
      {
        v12 = v40;
        v13 = __p;
        if (v40 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v40 = v11;
        operator delete(v13);
      }

      v14 = v37;
      if (!v37)
      {
        goto LABEL_64;
      }

      v15 = v38;
      v16 = v37;
      if (v38 == v37)
      {
        goto LABEL_63;
      }

      do
      {
        v18 = *--v15;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          operator delete[](v17);
        }
      }

      while (v15 != v14);
      goto LABEL_62;
    }
  }

  return v10;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LocalConvolutionDataGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.local_convolution_data_gradient", 35, a3, v10, a4, a5);
  *v11 = &unk_1F5B28FA0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

BOOL mlir::mps::LocalConvolutionOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::LocalConvolutionOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2);
  }

  return 0;
}

void mlir::mps::LocalConvolutionOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a3;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v37[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v37[1] = v12;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v35 = v37;
  v33 = a5;
  v14 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v14);
  v32 = &v33;
  v38 = &v33;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v17 = ParametricStorageTypeImpl;
  v18 = *(a2 + 256);
  if (v18)
  {
    *v18 = ParametricStorageTypeImpl;
    v19 = *(a2 + 256);
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = operator new(0x18uLL);
    v21[1] = 0;
    v21[2] = 0;
    *v21 = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::LocalConvolutionOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v17;
    v19 = *(a2 + 256);
    if (v19)
    {
LABEL_3:
      *(v19 + 16) = a6;
      v20 = *(a2 + 256);
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v22 = operator new(0x18uLL);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  *(a2 + 256) = v22;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::LocalConvolutionOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 16) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
LABEL_11:
    v23 = operator new(0x18uLL);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    *(a2 + 256) = v23;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::LocalConvolutionOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

LABEL_14:
  *(v20 + 8) = a7;
  __src = v36;
  v35 = 0x200000000;
  v24 = *a1;
  mlir::ValueRange::ValueRange(&v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v37, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = __src;
  v27 = v35;
  v28 = *(a2 + 72);
  v29 = v28 + v35;
  if (v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29, 8);
    LODWORD(v28) = *(a2 + 72);
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v28), v26, 8 * v27);
    LODWORD(v28) = *(a2 + 72);
  }

  *(a2 + 72) = v28 + v27;
  if (__src != v36)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LocalConvolutionOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.local_convolution", 21, a3, v10, a4, a5);
  *v11 = &unk_1F5B29040;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

BOOL mlir::mps::LocalConvolutionWeightGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::LocalConvolutionWeightGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2);
  }

  return 0;
}

void mlir::mps::LocalConvolutionWeightGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = a4;
  v35 = a3;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v41 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v42 = v12;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v39 = &v41;
  v37 = a5;
  v14 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v14);
  v36 = &v37;
  v43 = &v37;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v43);
  v17 = ParametricStorageTypeImpl;
  v18 = *(a2 + 256);
  if (v18)
  {
    *v18 = ParametricStorageTypeImpl;
    v19 = *(a2 + 256);
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = operator new(0x18uLL);
    v21[1] = 0;
    v21[2] = 0;
    *v21 = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::LocalConvolutionWeightGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v17;
    v19 = *(a2 + 256);
    if (v19)
    {
LABEL_3:
      *(v19 + 16) = a6;
      v20 = *(a2 + 256);
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v22 = operator new(0x18uLL);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  *(a2 + 256) = v22;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::LocalConvolutionWeightGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 16) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
LABEL_11:
    v23 = operator new(0x18uLL);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    *(a2 + 256) = v23;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::LocalConvolutionWeightGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LocalConvolutionWeightGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

LABEL_14:
  *(v20 + 8) = a7;
  __src = v40;
  v39 = 0x200000000;
  v24 = *a1;
  v25 = *a2;
  mlir::ValueRange::ValueRange(&v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v28 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v41, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LocalConvolutionWeightGradientOp::inferReturnTypes(v24, v25, 1, v43, p_src, Dictionary, v28, v29, v41, v42, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v30 = __src;
  v31 = v39;
  v32 = *(a2 + 72);
  v33 = v32 + v39;
  if (v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v33, 8);
    LODWORD(v32) = *(a2 + 72);
  }

  if (v31)
  {
    memcpy((*(a2 + 64) + 8 * v32), v30, 8 * v31);
    LODWORD(v32) = *(a2 + 72);
  }

  *(a2 + 72) = v32 + v31;
  if (__src != v40)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LocalConvolutionWeightGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.local_convolution_weight_gradient", 37, a3, v10, a4, a5);
  *v11 = &unk_1F5B290E0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LogarithmBase10Op>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.logarithm_base_10", 21, a3, v10, a4, a5);
  *v11 = &unk_1F5B29180;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LogarithmBase2Op>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.logarithm_base_2", 20, a3, v10, a4, a5);
  *v11 = &unk_1F5B29220;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LogarithmOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.logarithm", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B292C0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::MatMulOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v13 = &v59;
      v14 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v14 = v63;
          v13 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v13 = &v59;
          v14 = v63;
        }
      }

      v15 = &v14[24 * v64];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v70;
      v19 = __p;
      if (v70 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v70 = v17;
      operator delete(v19);
    }

    v20 = v67;
    if (!v67)
    {
      goto LABEL_72;
    }

    v21 = v68;
    v22 = v67;
    if (v68 == v67)
    {
      goto LABEL_71;
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
    goto LABEL_70;
  }

  v74.var0 = "transpose_lhs";
  v74.var1 = 13;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 58;
        v25 = &v59;
        v26 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v26 = v63;
            v25 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v25 = &v59;
            v26 = v63;
          }
        }

        v27 = &v26[24 * v64];
        v28 = *v25;
        *(v27 + 2) = *(v25 + 2);
        *v27 = v28;
        ++v64;
        if (v62[0])
        {
          v29 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v30 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v30 = v63;
              v29 = (v63 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v29 = &v59;
              v30 = v63;
            }
          }

          v31 = &v30[24 * v64];
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v70;
        v35 = __p;
        if (v70 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v70 = v33;
        operator delete(v35);
      }

      v20 = v67;
      if (!v67)
      {
        goto LABEL_72;
      }

      v36 = v68;
      v22 = v67;
      if (v68 == v67)
      {
        goto LABEL_71;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          operator delete[](v37);
        }
      }

      while (v36 != v20);
      goto LABEL_70;
    }

    *a1 = v9;
  }

  v75.var0 = "transpose_rhs";
  v75.var1 = 13;
  v10 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  if (mlir::BoolAttr::classof(v10))
  {
    a1[1] = v11;
    return 1;
  }

  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 58;
    v39 = &v59;
    v40 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v40 = v63;
        v39 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = &v59;
        v40 = v63;
      }
    }

    v41 = &v40[24 * v64];
    v42 = *v39;
    *(v41 + 2) = *(v39 + 2);
    *v41 = v42;
    ++v64;
    if (v62[0])
    {
      v43 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v11);
      v44 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v44 = v63;
          v43 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = &v59;
          v44 = v63;
        }
      }

      v45 = &v44[24 * v64];
      v46 = *v43;
      *(v45 + 2) = *(v43 + 2);
      *v45 = v46;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v70;
      v49 = __p;
      if (v70 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v70 = v47;
      operator delete(v49);
    }

    v20 = v67;
    if (!v67)
    {
      goto LABEL_72;
    }

    v50 = v68;
    v22 = v67;
    if (v68 == v67)
    {
LABEL_71:
      v68 = v20;
      operator delete(v22);
LABEL_72:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v52 = *--v50;
      v51 = v52;
      *v50 = 0;
      if (v52)
      {
        operator delete[](v51);
      }
    }

    while (v50 != v20);
LABEL_70:
    v22 = v67;
    goto LABEL_71;
  }

  return 0;
}

uint64_t mlir::mps::MatMulOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "transpose_lhs", 13, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "transpose_rhs", 13, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

BOOL mlir::mps::MatMulOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, a2[32]))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::mps::MatMulOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

void mlir::mps::MatMulOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  if (a5)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      v11 = operator new(0x10uLL);
      *v11 = 0;
      v11[1] = 0;
      *(a2 + 256) = v11;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::MatMulOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v10 = *(a2 + 256);
    }

    *v10 = a5;
  }

  if (a6)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(0x10uLL);
      *v13 = 0;
      v13[1] = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::MatMulOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    *(v12 + 8) = a6;
  }

  __src = v30;
  v29 = 0x200000000;
  v14 = *a1;
  v15 = *a2;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::MatMulOp::inferReturnTypes(v14, v15, 1, v27[0], v27[1], Dictionary, v18, v19, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v29;
  v22 = *(a2 + 72);
  v23 = v22 + v29;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v30)
  {
    free(__src);
  }
}

void mlir::mps::MatMulOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir::MLIRContext *a5, mlir::MLIRContext *a6)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v27 = a3;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a5);
  v11 = *(a2 + 256);
  if (!v11)
  {
    v12 = operator new(0x10uLL);
    *v12 = 0;
    v12[1] = 0;
    *(a2 + 256) = v12;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::MatMulOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v11 = *(a2 + 256);
  }

  *v11 = BoolAttr;
  v13 = mlir::Builder::getBoolAttr(a1, a6);
  v14 = *(a2 + 256);
  if (!v14)
  {
    v15 = operator new(0x10uLL);
    *v15 = 0;
    v15[1] = 0;
    *(a2 + 256) = v15;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::MatMulOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v14 = *(a2 + 256);
  }

  *(v14 + 8) = v13;
  __src = v32;
  v31 = 0x200000000;
  v16 = *a1;
  v17 = *a2;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v20 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::MatMulOp::inferReturnTypes(v16, v17, 1, v29[0], v29[1], Dictionary, v20, v21, v28[0], v28[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = __src;
  v23 = v31;
  v24 = *(a2 + 72);
  v25 = v24 + v31;
  if (v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v25, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v23);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v32)
  {
    free(__src);
  }
}

void mlir::mps::MatMulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v13 = *(a2 + 120);
  if (a8 + v13 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a8 + v13, 16);
    LODWORD(v13) = *(a2 + 120);
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v13), a7, 16 * a8);
    LODWORD(v13) = *(a2 + 120);
  }

  *(a2 + 120) = v13 + a8;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v14, 8);
    v14 = *(a2 + 72);
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
      ++v15;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      v18 = operator new(0x10uLL);
      *v18 = 0;
      v18[1] = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::MatMulOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MatMulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v17 = *(a2 + 256);
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v20 + 144))(v20, v19, v17, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }
}

uint64_t mlir::mps::MatMulOp::verifyInvariantsImpl(mlir::mps::MatMulOp *this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v9 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v4, "transpose_lhs", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0)
  {
    return 0;
  }

  v9 = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "transpose_rhs", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MatMulOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.matmul", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B29360;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
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

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "storage_type";
  v56.var1 = 12;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 57;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

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
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "storage_type", 12, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps33(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid SparseTensorStorage";
        v29 = 57;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::SparseTensorStorageAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::MaterializeSparseTensorOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::SparseTensorStorageAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::SparseTensorStorageAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::SparseTensorStorageAttr]";
  v38 = 84;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
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

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

void mlir::mps::MaterializeSparseTensorOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7)
{
  v22 = a4;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v13 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id;
  v23[1] = v13;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30SparseTensorStorageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23SparseTensorStorageAttrEJNS2_19SparseTensorStorageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v27[1] = v23;
  v26 = a7;
  v15 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v16 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v15);
  v24[0] = &v26;
  v24[1] = v27;
  v25 = &v26;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 32) >> 15) ^ (-348639895 * (v15 ^ (v16 >> 47) ^ v16))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
  v18 = ParametricStorageTypeImpl;
  v19 = *(a2 + 256);
  if (v19)
  {
    *v19 = ParametricStorageTypeImpl;
    v20 = *(a2 + 72);
    if (v20 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20 + 1, 8);
      LODWORD(v20) = *(a2 + 72);
    }
  }

  else
  {
    v21 = operator new(8uLL);
    *v21 = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v27;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v27;
    {
      mlir::mps::MaterializeSparseTensorOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::MaterializeSparseTensorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v18;
    v20 = *(a2 + 72);
    if (v20 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v20) = a3;
  ++*(a2 + 72);
}

BOOL mlir::mps::MaterializeSparseTensorOp::verifyInvariantsImpl(const char **this)
{
  v286 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *&(*this)[16 * ((*(*this + 11) >> 23) & 1) + 64];
  if (!v3)
  {
    v265 = "requires attribute 'storage_type'";
    v267 = 259;
    mlir::OpState::emitOpError(this, &v265, &v274);
    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v274);
    if (v274)
    {
      mlir::InFlightDiagnostic::report(&v274);
    }

    if (v285 == 1)
    {
      if (v284 != &v285)
      {
        free(v284);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v283;
        v38 = __p;
        if (v283 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v283 = v36;
        operator delete(v38);
      }

      v39 = v280;
      if (v280)
      {
        v40 = v281;
        v41 = v280;
        if (v281 != v280)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              operator delete[](v42);
            }
          }

          while (v40 != v39);
          v41 = v280;
        }

        v281 = v39;
        operator delete(v41);
      }

      if (v276 != v279)
      {
        free(v276);
      }
    }

    return v35;
  }

  v274 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps33(v3, "storage_type", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps33(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v274) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_5;
    }

    goto LABEL_222;
  }

  {
    v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v45 = *(v6 + 8);
    v46 = *(v6 + 16);
    if (!v46)
    {
      goto LABEL_80;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v45 = *(v6 + 8);
    v46 = *(v6 + 16);
    if (!v46)
    {
      goto LABEL_80;
    }
  }

  v47 = v45;
  v48 = v46;
  do
  {
    v49 = v48 >> 1;
    v50 = &v47[2 * (v48 >> 1)];
    v52 = *v50;
    v51 = v50 + 2;
    v48 += ~(v48 >> 1);
    if (v52 < v44)
    {
      v47 = v51;
    }

    else
    {
      v48 = v49;
    }
  }

  while (v48);
  if (v47 != &v45[2 * v46] && *v47 == v44)
  {
    v53 = v47[1];
    goto LABEL_82;
  }

LABEL_80:
  v53 = 0;
LABEL_82:
  v274 = v5;
  v275 = v53;
  isSplat = mlir::ElementsAttr::isSplat(&v274);
  if (mlir::Type::isF32(&isSplat))
  {
    goto LABEL_83;
  }

  v6 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

LABEL_222:
  {
    v157 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v158 = *(v6 + 8);
    v159 = *(v6 + 16);
    if (!v159)
    {
      goto LABEL_235;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v157 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v158 = *(v6 + 8);
    v159 = *(v6 + 16);
    if (!v159)
    {
      goto LABEL_235;
    }
  }

  v160 = v158;
  v161 = v159;
  do
  {
    v162 = v161 >> 1;
    v163 = &v160[2 * (v161 >> 1)];
    v165 = *v163;
    v164 = v163 + 2;
    v161 += ~(v161 >> 1);
    if (v165 < v157)
    {
      v160 = v164;
    }

    else
    {
      v161 = v162;
    }
  }

  while (v161);
  if (v160 == &v158[2 * v159] || *v160 != v157)
  {
LABEL_235:
    v265 = v5;
    v266 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v265))
    {
      goto LABEL_5;
    }

    goto LABEL_238;
  }

  v166 = v160[1];
  v265 = v5;
  v266 = v166;
  if (!mlir::CallOpInterface::getArgOperands(&v265))
  {
    goto LABEL_5;
  }

LABEL_238:
  v167 = *v5;
  {
    v168 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v169 = *(v167 + 8);
    v170 = *(v167 + 16);
    if (!v170)
    {
      goto LABEL_264;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v168 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v169 = *(v167 + 8);
    v170 = *(v167 + 16);
    if (!v170)
    {
      goto LABEL_264;
    }
  }

  v171 = v169;
  v172 = v170;
  do
  {
    v173 = v172 >> 1;
    v174 = &v171[2 * (v172 >> 1)];
    v176 = *v174;
    v175 = v174 + 2;
    v172 += ~(v172 >> 1);
    if (v176 < v168)
    {
      v171 = v175;
    }

    else
    {
      v172 = v173;
    }
  }

  while (v172);
  if (v171 == &v169[2 * v170] || *v171 != v168)
  {
LABEL_264:
    v271 = v5;
    v272 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v271);
    if (v188 != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_267;
  }

  v189 = v171[1];
  v271 = v5;
  v272 = v189;
  mlir::CallableOpInterface::getArgAttrsAttr(&v271);
  if (v190 != 1)
  {
    goto LABEL_5;
  }

LABEL_267:
  v191 = *v5;
  {
    v192 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v193 = *(v191 + 8);
    v194 = *(v191 + 16);
    if (v194)
    {
      goto LABEL_269;
    }

LABEL_297:
    v194 = 0;
    v195 = v193;
    goto LABEL_298;
  }

  mlir::arith::ExtUIOp::fold();
  v192 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v193 = *(v191 + 8);
  v194 = *(v191 + 16);
  if (!v194)
  {
    goto LABEL_297;
  }

LABEL_269:
  v195 = v193;
  v196 = v194;
  do
  {
    v197 = v196 >> 1;
    v198 = &v195[2 * (v196 >> 1)];
    v200 = *v198;
    v199 = v198 + 2;
    v196 += ~(v196 >> 1);
    if (v200 < v192)
    {
      v195 = v199;
    }

    else
    {
      v196 = v197;
    }
  }

  while (v196);
LABEL_298:
  if (v195 != &v193[2 * v194] && *v195 == v192)
  {
    v217 = v195[1];
  }

  else
  {
    v217 = 0;
  }

  v268 = v5;
  v269 = v217;
  isSplat = mlir::ElementsAttr::isSplat(&v268);
  if (!mlir::Type::isF32(&isSplat))
  {
LABEL_5:
    v267 = 261;
    v265 = "operand";
    v266 = 7;
    mlir::Operation::emitOpError(v4, &v265, &v274);
    if (v274)
    {
      LODWORD(v271) = 3;
      v272 = " #";
      v273 = 2;
      v8 = &v271;
      v9 = v276;
      if (v277 >= v278)
      {
        if (v276 <= &v271 && v276 + 24 * v277 > &v271)
        {
          v201 = &v271 - v276;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
          v9 = v276;
          v8 = (v276 + v201);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
          v8 = &v271;
          v9 = v276;
        }
      }

      v10 = &v9[24 * v277];
      v11 = *v8;
      *(v10 + 2) = v8[2];
      *v10 = v11;
      v12 = ++v277;
      if (v274)
      {
        LODWORD(v271) = 5;
        v272 = 0;
        v13 = &v271;
        v14 = v276;
        if (v12 >= v278)
        {
          if (v276 <= &v271 && v276 + 24 * v12 > &v271)
          {
            v216 = &v271 - v276;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v12 + 1, 24);
            v14 = v276;
            v13 = (v276 + v216);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v12 + 1, 24);
            v13 = &v271;
            v14 = v276;
          }
        }

        v15 = &v14[24 * v277];
        v16 = *v13;
        *(v15 + 2) = v13[2];
        *v15 = v16;
        v17 = ++v277;
        if (v274)
        {
          LODWORD(v271) = 3;
          v272 = " must be unranked tensor of 32-bit float values or 1D tensor of 32-bit float values, but got ";
          v273 = 93;
          v18 = &v271;
          v19 = v276;
          if (v17 >= v278)
          {
            if (v276 <= &v271 && v276 + 24 * v17 > &v271)
            {
              v218 = &v271 - v276;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v17 + 1, 24);
              v19 = v276;
              v18 = (v276 + v218);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v17 + 1, 24);
              v18 = &v271;
              v19 = v276;
            }
          }

          v20 = &v19[24 * v277];
          v21 = *v18;
          *(v20 + 2) = v18[2];
          *v20 = v21;
          ++v277;
          if (v274)
          {
            v22 = &v271;
            mlir::DiagnosticArgument::DiagnosticArgument(&v271, v5);
            v23 = v276;
            if (v277 >= v278)
            {
              if (v276 <= &v271 && v276 + 24 * v277 > &v271)
              {
                v230 = &v271 - v276;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
                v23 = v276;
                v22 = (v276 + v230);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
                v22 = &v271;
                v23 = v276;
              }
            }

            v24 = &v23[24 * v277];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            ++v277;
          }
        }
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v274);
    if (v274)
    {
      mlir::InFlightDiagnostic::report(&v274);
    }

    if (v285 == 1)
    {
      if (v284 != &v285)
      {
        free(v284);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v283;
        v29 = __p;
        if (v283 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v283 = v27;
        operator delete(v29);
      }

      v30 = v280;
      if (v280)
      {
        v31 = v281;
        v32 = v280;
        if (v281 != v280)
        {
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
          v32 = v280;
        }

        v281 = v30;
        operator delete(v32);
      }

      if (v276 != v279)
      {
        free(v276);
      }
    }

    if (!v26)
    {
      return 0;
    }
  }

LABEL_83:
  v54 = *this;
  if ((*this)[46] < 0)
  {
    v55 = *(v54 + 68);
    v56 = v55 - 1;
    if (v55 == 1)
    {
      goto LABEL_204;
    }

    v57 = *(v54 + 72) + 32;
  }

  else
  {
    v56 = -1;
    v57 = 32;
  }

  v58 = 0;
  v59 = 1;
  do
  {
    v60 = *this;
    v61 = (*(*(v57 + 32 * v58 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v62 = *v61;
    v63 = *(*v61 + 136);
    if (v63 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v63 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_91;
      }

      goto LABEL_152;
    }

    {
      v91 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v92 = *(v62 + 8);
      v93 = *(v62 + 16);
      if (!v93)
      {
        goto LABEL_147;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v91 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v92 = *(v62 + 8);
      v93 = *(v62 + 16);
      if (!v93)
      {
        goto LABEL_147;
      }
    }

    v94 = v92;
    v95 = v93;
    do
    {
      v96 = v95 >> 1;
      v97 = &v94[2 * (v95 >> 1)];
      v99 = *v97;
      v98 = v97 + 2;
      v95 += ~(v95 >> 1);
      if (v99 < v91)
      {
        v94 = v98;
      }

      else
      {
        v95 = v96;
      }
    }

    while (v95);
    if (v94 != &v92[2 * v93] && *v94 == v91)
    {
      v100 = v94[1];
      goto LABEL_149;
    }

LABEL_147:
    v100 = 0;
LABEL_149:
    v274 = v61;
    v275 = v100;
    isSplat = mlir::ElementsAttr::isSplat(&v274);
    if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
    {
      goto LABEL_88;
    }

    v62 = *v61;
    if (*(*v61 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_91;
    }

LABEL_152:
    {
      v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v102 = *(v62 + 8);
      v103 = *(v62 + 16);
      if (!v103)
      {
        goto LABEL_164;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v102 = *(v62 + 8);
      v103 = *(v62 + 16);
      if (!v103)
      {
        goto LABEL_164;
      }
    }

    v104 = v102;
    v105 = v103;
    do
    {
      v106 = v105 >> 1;
      v107 = &v104[2 * (v105 >> 1)];
      v109 = *v107;
      v108 = v107 + 2;
      v105 += ~(v105 >> 1);
      if (v109 < v101)
      {
        v104 = v108;
      }

      else
      {
        v105 = v106;
      }
    }

    while (v105);
    if (v104 != &v102[2 * v103] && *v104 == v101)
    {
      v110 = v104[1];
      v265 = v61;
      v266 = v110;
      if (!mlir::CallOpInterface::getArgOperands(&v265))
      {
        goto LABEL_91;
      }

      goto LABEL_167;
    }

LABEL_164:
    v265 = v61;
    v266 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v265))
    {
      goto LABEL_91;
    }

LABEL_167:
    v111 = *v61;
    {
      v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v113 = *(v111 + 8);
      v114 = *(v111 + 16);
      if (!v114)
      {
        goto LABEL_179;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v113 = *(v111 + 8);
      v114 = *(v111 + 16);
      if (!v114)
      {
        goto LABEL_179;
      }
    }

    v115 = v113;
    v116 = v114;
    do
    {
      v117 = v116 >> 1;
      v118 = &v115[2 * (v116 >> 1)];
      v120 = *v118;
      v119 = v118 + 2;
      v116 += ~(v116 >> 1);
      if (v120 < v112)
      {
        v115 = v119;
      }

      else
      {
        v116 = v117;
      }
    }

    while (v116);
    if (v115 != &v113[2 * v114] && *v115 == v112)
    {
      v122 = v115[1];
      v271 = v61;
      v272 = v122;
      mlir::CallableOpInterface::getArgAttrsAttr(&v271);
      if (v123 != 1)
      {
        goto LABEL_91;
      }

LABEL_182:
      v124 = *v61;
      {
        v125 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v126 = *(v124 + 8);
        v127 = *(v124 + 16);
        if (!v127)
        {
          goto LABEL_196;
        }

LABEL_184:
        v128 = v126;
        v129 = v127;
        do
        {
          v130 = v129 >> 1;
          v131 = &v128[2 * (v129 >> 1)];
          v133 = *v131;
          v132 = v131 + 2;
          v129 += ~(v129 >> 1);
          if (v133 < v125)
          {
            v128 = v132;
          }

          else
          {
            v129 = v130;
          }
        }

        while (v129);
        if (v128 != &v126[2 * v127] && *v128 == v125)
        {
          v136 = v128[1];
        }

        else
        {
LABEL_196:
          v136 = 0;
        }

        v268 = v61;
        v269 = v136;
        isSplat = mlir::ElementsAttr::isSplat(&v268);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          goto LABEL_88;
        }

        goto LABEL_91;
      }

      mlir::arith::ExtUIOp::fold();
      v125 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v126 = *(v124 + 8);
      v127 = *(v124 + 16);
      if (v127)
      {
        goto LABEL_184;
      }

      goto LABEL_196;
    }

LABEL_179:
    v271 = v61;
    v272 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v271);
    if (v121 == 1)
    {
      goto LABEL_182;
    }

LABEL_91:
    v267 = 261;
    v265 = "operand";
    v266 = 7;
    mlir::Operation::emitOpError(v60, &v265, &v274);
    if (v274)
    {
      LODWORD(v271) = 3;
      v272 = " #";
      v273 = 2;
      v64 = v276;
      if (v277 >= v278)
      {
        if (v276 <= &v271 && v276 + 24 * v277 > &v271)
        {
          v134 = &v271 - v276;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
          v64 = v276;
          v65 = (v276 + v134);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
          v65 = &v271;
          v64 = v276;
        }
      }

      else
      {
        v65 = &v271;
      }

      v66 = &v64[24 * v277];
      v67 = *v65;
      *(v66 + 2) = v65[2];
      *v66 = v67;
      v68 = ++v277;
      if (v274)
      {
        LODWORD(v271) = 5;
        v272 = v59;
        v69 = v276;
        if (v68 >= v278)
        {
          if (v276 <= &v271 && v276 + 24 * v68 > &v271)
          {
            v135 = &v271 - v276;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v68 + 1, 24);
            v69 = v276;
            v70 = (v276 + v135);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v68 + 1, 24);
            v70 = &v271;
            v69 = v276;
          }
        }

        else
        {
          v70 = &v271;
        }

        v71 = &v69[24 * v277];
        v72 = *v70;
        *(v71 + 2) = v70[2];
        *v71 = v72;
        v73 = ++v277;
        if (v274)
        {
          LODWORD(v271) = 3;
          v272 = " must be variadic of unranked tensor of 32/64-bit signed integer values or 1D tensor of 32/64-bit signed integer values, but got ";
          v273 = 129;
          v74 = v276;
          if (v73 >= v278)
          {
            if (v276 <= &v271 && v276 + 24 * v73 > &v271)
            {
              v137 = &v271 - v276;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v73 + 1, 24);
              v74 = v276;
              v75 = (v276 + v137);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v73 + 1, 24);
              v75 = &v271;
              v74 = v276;
            }
          }

          else
          {
            v75 = &v271;
          }

          v76 = &v74[24 * v277];
          v77 = *v75;
          *(v76 + 2) = v75[2];
          *v76 = v77;
          ++v277;
          if (v274)
          {
            v78 = &v271;
            mlir::DiagnosticArgument::DiagnosticArgument(&v271, v61);
            v79 = v276;
            if (v277 >= v278)
            {
              if (v276 <= &v271 && v276 + 24 * v277 > &v271)
              {
                v138 = &v271 - v276;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
                v79 = v276;
                v78 = (v276 + v138);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
                v78 = &v271;
                v79 = v276;
              }
            }

            v80 = &v79[24 * v277];
            v81 = *v78;
            *(v80 + 2) = v78[2];
            *v80 = v81;
            ++v277;
          }
        }
      }
    }

    v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v274);
    if (v274)
    {
      mlir::InFlightDiagnostic::report(&v274);
    }

    if (v285 == 1)
    {
      if (v284 != &v285)
      {
        free(v284);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v283;
        v85 = __p;
        if (v283 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v283 = v83;
        operator delete(v85);
      }

      v86 = v280;
      if (v280)
      {
        v87 = v281;
        v88 = v280;
        if (v281 != v280)
        {
          do
          {
            v90 = *--v87;
            v89 = v90;
            *v87 = 0;
            if (v90)
            {
              operator delete[](v89);
            }
          }

          while (v87 != v86);
          v88 = v280;
        }

        v281 = v86;
        operator delete(v88);
      }

      if (v276 != v279)
      {
        free(v276);
      }
    }

    if (!v82)
    {
      return 0;
    }

LABEL_88:
    ++v59;
    ++v58;
  }

  while (v58 != v56);
  v54 = *this;
LABEL_204:
  v139 = *(v54 + 36);
  v140 = v54 - 16;
  if (v139)
  {
    v141 = v140;
  }

  else
  {
    v141 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v141, 0);
  v143 = *this;
  v144 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v145 = *v144;
  v146 = *(*v144 + 136);
  if (v146 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v146 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v148 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v149 = *(v145 + 8);
      v150 = *(v145 + 16);
      if (!v150)
      {
        goto LABEL_250;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v148 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v149 = *(v145 + 8);
      v150 = *(v145 + 16);
      if (!v150)
      {
        goto LABEL_250;
      }
    }

    v151 = v149;
    v152 = v150;
    do
    {
      v153 = v152 >> 1;
      v154 = &v151[2 * (v152 >> 1)];
      v156 = *v154;
      v155 = v154 + 2;
      v152 += ~(v152 >> 1);
      if (v156 < v148)
      {
        v151 = v155;
      }

      else
      {
        v152 = v153;
      }
    }

    while (v152);
    if (v151 != &v149[2 * v150] && *v151 == v148)
    {
      v177 = v151[1];
LABEL_252:
      v274 = v144;
      v275 = v177;
      isSplat = mlir::ElementsAttr::isSplat(&v274);
      if (!mlir::Type::isF32(&isSplat))
      {
        goto LABEL_328;
      }

      v178 = *v144;
      {
        v179 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v180 = *(v178 + 8);
        v181 = *(v178 + 16);
        if (v181)
        {
          goto LABEL_255;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v179 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v180 = *(v178 + 8);
        v181 = *(v178 + 16);
        if (v181)
        {
LABEL_255:
          v182 = v180;
          v183 = v181;
          do
          {
            v184 = v183 >> 1;
            v185 = &v182[2 * (v183 >> 1)];
            v187 = *v185;
            v186 = v185 + 2;
            v183 += ~(v183 >> 1);
            if (v187 < v179)
            {
              v182 = v186;
            }

            else
            {
              v183 = v184;
            }
          }

          while (v183);
LABEL_278:
          if (v182 != &v180[2 * v181] && *v182 == v179)
          {
            v202 = v182[1];
            v265 = v144;
            v266 = v202;
            if (!mlir::CallOpInterface::getArgOperands(&v265))
            {
              goto LABEL_328;
            }
          }

          else
          {
            v265 = v144;
            v266 = 0;
            if (!mlir::CallOpInterface::getArgOperands(&v265))
            {
              goto LABEL_328;
            }
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v265);
          if (v204)
          {
            v205 = 8 * v204;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v205 -= 8;
              if (!v205)
              {
                goto LABEL_287;
              }
            }

            goto LABEL_328;
          }

LABEL_287:
          v206 = *v144;
          {
            v207 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v208 = *(v206 + 8);
            v209 = *(v206 + 16);
            if (v209)
            {
              goto LABEL_289;
            }
          }

          else
          {
            mlir::arith::ExtUIOp::fold();
            v207 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v208 = *(v206 + 8);
            v209 = *(v206 + 16);
            if (v209)
            {
LABEL_289:
              v210 = v208;
              v211 = v209;
              do
              {
                v212 = v211 >> 1;
                v213 = &v210[2 * (v211 >> 1)];
                v215 = *v213;
                v214 = v213 + 2;
                v211 += ~(v211 >> 1);
                if (v215 < v207)
                {
                  v210 = v214;
                }

                else
                {
                  v211 = v212;
                }
              }

              while (v211);
LABEL_307:
              if (v210 != &v208[2 * v209] && *v210 == v207)
              {
                v219 = v210[1];
              }

              else
              {
                v219 = 0;
              }

              v271 = v144;
              v272 = v219;
              if (!mlir::CallOpInterface::getArgOperands(&v271))
              {
                goto LABEL_328;
              }

              v220 = *v144;
              {
                v221 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v222 = *(v220 + 8);
                v223 = *(v220 + 16);
                if (v223)
                {
                  goto LABEL_314;
                }
              }

              else
              {
                mlir::arith::ExtUIOp::fold();
                v221 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v222 = *(v220 + 8);
                v223 = *(v220 + 16);
                if (v223)
                {
LABEL_314:
                  v224 = v222;
                  v225 = v223;
                  do
                  {
                    v226 = v225 >> 1;
                    v227 = &v224[2 * (v225 >> 1)];
                    v229 = *v227;
                    v228 = v227 + 2;
                    v225 += ~(v225 >> 1);
                    if (v229 < v221)
                    {
                      v224 = v228;
                    }

                    else
                    {
                      v225 = v226;
                    }
                  }

                  while (v225);
                  goto LABEL_323;
                }
              }

              v223 = 0;
              v224 = v222;
LABEL_323:
              if (v224 != &v222[2 * v223] && *v224 == v221)
              {
                v231 = v224[1];
              }

              else
              {
                v231 = 0;
              }

              v268 = v144;
              v269 = v231;
              mlir::CallableOpInterface::getArgAttrsAttr(&v268);
              if (v232 != 2)
              {
                goto LABEL_328;
              }

              return 1;
            }
          }

          v209 = 0;
          v210 = v208;
          goto LABEL_307;
        }
      }

      v181 = 0;
      v182 = v180;
      goto LABEL_278;
    }

LABEL_250:
    v177 = 0;
    goto LABEL_252;
  }

LABEL_328:
  v267 = 261;
  v265 = "result";
  v266 = 6;
  mlir::Operation::emitOpError(v143, &v265, &v274);
  if (v274)
  {
    LODWORD(v271) = 3;
    v272 = " #";
    v273 = 2;
    v233 = &v271;
    v234 = v276;
    if (v277 >= v278)
    {
      if (v276 <= &v271 && v276 + 24 * v277 > &v271)
      {
        v261 = &v271 - v276;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
        v234 = v276;
        v233 = (v276 + v261);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
        v233 = &v271;
        v234 = v276;
      }
    }

    v235 = &v234[24 * v277];
    v236 = *v233;
    *(v235 + 2) = v233[2];
    *v235 = v236;
    v237 = ++v277;
    if (v274)
    {
      LODWORD(v271) = 5;
      v272 = 0;
      v238 = &v271;
      v239 = v276;
      if (v237 >= v278)
      {
        if (v276 <= &v271 && v276 + 24 * v237 > &v271)
        {
          v262 = &v271 - v276;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v237 + 1, 24);
          v239 = v276;
          v238 = (v276 + v262);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v237 + 1, 24);
          v238 = &v271;
          v239 = v276;
        }
      }

      v240 = &v239[24 * v277];
      v241 = *v238;
      *(v240 + 2) = v238[2];
      *v240 = v241;
      v242 = ++v277;
      if (v274)
      {
        LODWORD(v271) = 3;
        v272 = " must be static-shape defined tensor with rank equal to any of:2, but got ";
        v273 = 74;
        v243 = &v271;
        v244 = v276;
        if (v242 >= v278)
        {
          if (v276 <= &v271 && v276 + 24 * v242 > &v271)
          {
            v263 = &v271 - v276;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v242 + 1, 24);
            v244 = v276;
            v243 = (v276 + v263);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v242 + 1, 24);
            v243 = &v271;
            v244 = v276;
          }
        }

        v245 = &v244[24 * v277];
        v246 = *v243;
        *(v245 + 2) = v243[2];
        *v245 = v246;
        ++v277;
        if (v274)
        {
          v247 = &v271;
          mlir::DiagnosticArgument::DiagnosticArgument(&v271, v144);
          v248 = v276;
          if (v277 >= v278)
          {
            if (v276 <= &v271 && v276 + 24 * v277 > &v271)
            {
              v264 = &v271 - v276;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
              v248 = v276;
              v247 = (v276 + v264);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
              v247 = &v271;
              v248 = v276;
            }
          }

          v249 = &v248[24 * v277];
          v250 = *v247;
          *(v249 + 2) = v247[2];
          *v249 = v250;
          ++v277;
        }
      }
    }
  }

  v251 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v274);
  if (v274)
  {
    mlir::InFlightDiagnostic::report(&v274);
  }

  if (v285 == 1)
  {
    if (v284 != &v285)
    {
      free(v284);
    }

    v252 = __p;
    if (__p)
    {
      v253 = v283;
      v254 = __p;
      if (v283 != __p)
      {
        do
        {
          v253 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v253 - 1);
        }

        while (v253 != v252);
        v254 = __p;
      }

      v283 = v252;
      operator delete(v254);
    }

    v255 = v280;
    if (v280)
    {
      v256 = v281;
      v257 = v280;
      if (v281 != v280)
      {
        do
        {
          v259 = *--v256;
          v258 = v259;
          *v256 = 0;
          if (v259)
          {
            operator delete[](v258);
          }
        }

        while (v256 != v255);
        v257 = v280;
      }

      v281 = v255;
      operator delete(v257);
    }

    if (v276 != v279)
    {
      free(v276);
    }
  }

  return v251;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MaterializeSparseTensorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.materialize_sparse_tensor", 29, a3, v10, a4, a5);
  *v11 = &unk_1F5B29400;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::MatrixDecompositionLUOp::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v5 = *a1;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::MatrixDecompositionLUOp::inferReturnTypes(v5, v6, 1, v19[0], v19[1], v8, v9, v10, v15, v16, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = __src;
  v12 = v21;
  v13 = *(a2 + 72);
  v14 = v13 + v21;
  if (v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v12);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::mps::MatrixDecompositionLUOp::verifyInvariantsImpl(mlir::mps::MatrixDecompositionLUOp *this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps36(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps36(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 36) ? *this - 16 : 0;
  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps37(*this, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 2);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 2u) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps36(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v101 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_59;
    }

    goto LABEL_7;
  }

  {
    v31 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v31 + 8);
    v24 = *(v31 + 16);
    if (v24)
    {
      goto LABEL_18;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_30;
  }

  v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v23 = *(v10 + 8);
  v24 = *(v10 + 16);
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_18:
  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
    goto LABEL_28;
  }

  v32 = v25[1];
LABEL_30:
  v90[0] = a2;
  v90[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v90);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v10 = *a2;
  v33 = *(*a2 + 136);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v33 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_59;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v35 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v35 + 8);
    v15 = *(v35 + 16);
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v36 = v16[1];
    goto LABEL_43;
  }

LABEL_41:
  v36 = 0;
LABEL_43:
  v83 = a2;
  v84 = v36;
  isSplat = mlir::ElementsAttr::isSplat(&v83);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_59;
  }

  v37 = *a2;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v47 = v37;
    mlir::arith::ExtUIOp::fold();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v47 + 8);
    v40 = *(v47 + 16);
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v76 = v41[1];
    v87 = a2;
    v88 = v76;
    mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    if (v77 < 2)
    {
      goto LABEL_59;
    }

    return 1;
  }

LABEL_58:
  v87 = a2;
  v88 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  if (v48 >= 2)
  {
    return 1;
  }

LABEL_59:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, v90);
  if (v90[0])
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v49 = &v87;
    v50 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v87 && v91 + 24 * v92 > &v87)
      {
        v79 = &v87 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v50 = v91;
        v49 = v91 + v79;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v49 = &v87;
        v50 = v91;
      }
    }

    v51 = &v50[24 * v92];
    v52 = *v49;
    *(v51 + 2) = *(v49 + 2);
    *v51 = v52;
    v53 = ++v92;
    if (v90[0])
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v54 = &v87;
      v55 = v91;
      if (v53 >= v93)
      {
        if (v91 <= &v87 && v91 + 24 * v53 > &v87)
        {
          v80 = &v87 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
          v55 = v91;
          v54 = v91 + v80;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
          v54 = &v87;
          v55 = v91;
        }
      }

      v56 = &v55[24 * v92];
      v57 = *v54;
      *(v56 + 2) = *(v54 + 2);
      *v56 = v57;
      v58 = ++v92;
      if (v90[0])
      {
        LODWORD(v87) = 3;
        v88 = " must be unranked tensor of floating point values or ranked tensor type with rank equal to or greater than 2, but got ";
        v89 = 118;
        v59 = &v87;
        v60 = v91;
        if (v58 >= v93)
        {
          if (v91 <= &v87 && v91 + 24 * v58 > &v87)
          {
            v81 = &v87 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
            v60 = v91;
            v59 = v91 + v81;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
            v59 = &v87;
            v60 = v91;
          }
        }

        v61 = &v60[24 * v92];
        v62 = *v59;
        *(v61 + 2) = *(v59 + 2);
        *v61 = v62;
        ++v92;
        if (v90[0])
        {
          v63 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v64 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v87 && v91 + 24 * v92 > &v87)
            {
              v82 = &v87 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v64 = v91;
              v63 = v91 + v82;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v63 = &v87;
              v64 = v91;
            }
          }

          v65 = &v64[24 * v92];
          v66 = *v63;
          *(v65 + 2) = *(v63 + 2);
          *v65 = v66;
          ++v92;
        }
      }
    }
  }

  v67 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
  if (v90[0])
  {
    mlir::InFlightDiagnostic::report(v90);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v68 = __p;
    if (__p)
    {
      v69 = v98;
      v70 = __p;
      if (v98 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v98 = v68;
      operator delete(v70);
    }

    v71 = v95;
    if (v95)
    {
      v72 = v96;
      v73 = v95;
      if (v96 != v95)
      {
        do
        {
          v75 = *--v72;
          v74 = v75;
          *v72 = 0;
          if (v75)
          {
            operator delete[](v74);
          }
        }

        while (v72 != v71);
        v73 = v95;
      }

      v96 = v71;
      operator delete(v73);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v67;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps37(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v101 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    if (!v24)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v43 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v43 + 8);
    v24 = *(v43 + 16);
    if (!v24)
    {
      goto LABEL_43;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 != &v23[2 * v24] && *v25 == v22)
  {
    v44 = v25[1];
    goto LABEL_45;
  }

LABEL_43:
  v44 = 0;
LABEL_45:
  v90[0] = a2;
  v90[1] = v44;
  isSplat = mlir::ElementsAttr::isSplat(v90);
  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    return 1;
  }

  v10 = *a2;
  v45 = *(*a2 + 136);
  if (v45 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v45 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_55;
  }

LABEL_7:
  {
    v31 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v31 + 8);
    v15 = *(v31 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_30;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v10 + 8);
  v15 = *(v10 + 16);
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_28;
  }

  v32 = v16[1];
LABEL_30:
  v83 = a2;
  v84 = v32;
  isSplat = mlir::ElementsAttr::isSplat(&v83);
  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v33 = *a2;
    {
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v47 = v33;
      mlir::arith::ExtUIOp::fold();
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v47 + 8);
      v36 = *(v47 + 16);
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    v37 = v35;
    v38 = v36;
    do
    {
      v39 = v38 >> 1;
      v40 = &v37[2 * (v38 >> 1)];
      v42 = *v40;
      v41 = v40 + 2;
      v38 += ~(v38 >> 1);
      if (v42 < v34)
      {
        v37 = v41;
      }

      else
      {
        v38 = v39;
      }
    }

    while (v38);
    if (v37 != &v35[2 * v36] && *v37 == v34)
    {
      v76 = v37[1];
      v87 = a2;
      v88 = v76;
      mlir::CallableOpInterface::getArgAttrsAttr(&v87);
      if (v77 < 2)
      {
        goto LABEL_55;
      }

      return 1;
    }

LABEL_54:
    v87 = a2;
    v88 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    if (v48 < 2)
    {
      goto LABEL_55;
    }

    return 1;
  }

LABEL_55:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, v90);
  if (v90[0])
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v49 = &v87;
    v50 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v87 && v91 + 24 * v92 > &v87)
      {
        v79 = &v87 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v50 = v91;
        v49 = v91 + v79;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v49 = &v87;
        v50 = v91;
      }
    }

    v51 = &v50[24 * v92];
    v52 = *v49;
    *(v51 + 2) = *(v49 + 2);
    *v51 = v52;
    v53 = ++v92;
    if (v90[0])
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v54 = &v87;
      v55 = v91;
      if (v53 >= v93)
      {
        if (v91 <= &v87 && v91 + 24 * v53 > &v87)
        {
          v80 = &v87 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
          v55 = v91;
          v54 = v91 + v80;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
          v54 = &v87;
          v55 = v91;
        }
      }

      v56 = &v55[24 * v92];
      v57 = *v54;
      *(v56 + 2) = *(v54 + 2);
      *v56 = v57;
      v58 = ++v92;
      if (v90[0])
      {
        LODWORD(v87) = 3;
        v88 = " must be unranked tensor of 32-bit unsigned integer values or ranked tensor type with rank equal to or greater than 2, but got ";
        v89 = 127;
        v59 = &v87;
        v60 = v91;
        if (v58 >= v93)
        {
          if (v91 <= &v87 && v91 + 24 * v58 > &v87)
          {
            v81 = &v87 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
            v60 = v91;
            v59 = v91 + v81;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
            v59 = &v87;
            v60 = v91;
          }
        }

        v61 = &v60[24 * v92];
        v62 = *v59;
        *(v61 + 2) = *(v59 + 2);
        *v61 = v62;
        ++v92;
        if (v90[0])
        {
          v63 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v64 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v87 && v91 + 24 * v92 > &v87)
            {
              v82 = &v87 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v64 = v91;
              v63 = v91 + v82;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v63 = &v87;
              v64 = v91;
            }
          }

          v65 = &v64[24 * v92];
          v66 = *v63;
          *(v65 + 2) = *(v63 + 2);
          *v65 = v66;
          ++v92;
        }
      }
    }
  }

  v67 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
  if (v90[0])
  {
    mlir::InFlightDiagnostic::report(v90);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v68 = __p;
    if (__p)
    {
      v69 = v98;
      v70 = __p;
      if (v98 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v98 = v68;
      operator delete(v70);
    }

    v71 = v95;
    if (v95)
    {
      v72 = v96;
      v73 = v95;
      if (v96 != v95)
      {
        do
        {
          v75 = *--v72;
          v74 = v75;
          *v72 = 0;
          if (v75)
          {
            operator delete[](v74);
          }
        }

        while (v72 != v71);
        v73 = v95;
      }

      v96 = v71;
      operator delete(v73);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v67;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MatrixDecompositionLUOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.matrix_decomposition_lu", 27, a3, v10, a4, a5);
  *v11 = &unk_1F5B294A0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::MatrixInverseOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v4 = *a2;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v6 = mlir::ValueRange::ValueRange(&v17, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::MatrixInverseOp::inferReturnTypes(v6, v4, 1, v18[0], v18[1], v7, v8, v9, v14, v15, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v10 = __src;
  v11 = v20;
  v12 = *(a2 + 72);
  v13 = v12 + v20;
  if (v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v13, 8);
    LODWORD(v12) = *(a2 + 72);
  }

  if (v11)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v11);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MatrixInverseOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.matrix_inverse", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B29540;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::MatrixSolverLUOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v22 = v24;
  v23 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v8 = mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::MatrixSolverLUOp::inferReturnTypes(v8, v6, 1, v21[0], v21[1], v9, v10, v11, v15, v16, &v22))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v22;
  v13 = v23;
  v14 = *(a2 + 72);
  if (v14 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14 + v23, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v13);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (v22 != v24)
  {
    free(v22);
  }
}

uint64_t mlir::mps::MatrixSolverLUOp::verifyInvariantsImpl(mlir::mps::MatrixSolverLUOp *this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps36(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps37(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps36(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps36(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MatrixSolverLUOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.matrix_solver_lu", 20, a3, v10, a4, a5);
  *v11 = &unk_1F5B295E0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MaximumOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.maximum", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B29680;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MinimumOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.minimum", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B29720;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ModuloOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.modulo", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B297C0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::MultiplyOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.multiply", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B29860;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::NReluOp::verifyInvariantsImpl(mlir::mps::NReluOp *this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NReluOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.n_relu", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B29900;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NandOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.nand", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B299A0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NegativeOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.negative", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B29A40;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  if (!v6)
  {
    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v72 = "expected DictionaryAttr to set properties";
      v73 = 41;
      v26 = &v71;
      v27 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v27 = v76;
          v26 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v26 = &v71;
          v27 = v76;
        }
      }

      v28 = &v27[24 * v77];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }

    if (v85 != 1)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v83;
      v32 = __p;
      if (v83 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v83 = v30;
      operator delete(v32);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_70;
    }

    v33 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_69:
      v81 = v21;
      operator delete(v23);
LABEL_70:
      if (v76 != v79)
      {
        free(v76);
      }

      return 0;
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

    while (v33 != v21);
LABEL_68:
    v23 = v80;
    goto LABEL_69;
  }

  v87.var0 = "coordinate_mode";
  v87.var1 = 15;
  v8 = mlir::DictionaryAttr::get(&v70, v87);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 60;
        v10 = &v71;
        v11 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v11 = v76;
            v10 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v10 = &v71;
            v11 = v76;
          }
        }

        v12 = &v11[24 * v77];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v77;
        if (v74)
        {
          v14 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v15 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v65 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v15 = v76;
              v14 = (v76 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v14 = &v71;
              v15 = v76;
            }
          }

          v16 = &v15[24 * v77];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v83;
        v20 = __p;
        if (v83 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v83 = v18;
        operator delete(v20);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v88.var0 = "max_boxes";
  v88.var1 = 9;
  v36 = mlir::DictionaryAttr::get(&v70, v88);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v37 = v36;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 54;
        v38 = &v71;
        v39 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v66 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v39 = v76;
            v38 = (v76 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v38 = &v71;
            v39 = v76;
          }
        }

        v40 = &v39[24 * v77];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v77;
        if (v74)
        {
          v42 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v37);
          v43 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v67 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v43 = v76;
              v42 = (v76 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v42 = &v71;
              v43 = v76;
            }
          }

          v44 = &v43[24 * v77];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v83;
        v48 = __p;
        if (v83 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v83 = v46;
        operator delete(v48);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v49 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v89.var0 = "per_class_suppression";
  v89.var1 = 21;
  v53 = mlir::DictionaryAttr::get(&v70, v89);
  if (!v53)
  {
    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[2] = v53;
    return 1;
  }

  v54 = v53;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 66;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v68 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v55 = &v71;
        v56 = v76;
      }
    }

    v57 = &v56[24 * v77];
    v58 = *v55;
    *(v57 + 2) = *(v55 + 2);
    *v57 = v58;
    ++v77;
    if (v74)
    {
      v59 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v54);
      v60 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v60 = v76;
          v59 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v59 = &v71;
          v60 = v76;
        }
      }

      v61 = &v60[24 * v77];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }
  }

  if (v85 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v75);
  }

  return 0;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "coordinate_mode", 15, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "max_boxes", 9, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "per_class_suppression", 21, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 9)
  {
    result = memcmp(__s1, "max_boxes", 9uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *(v5 + 8) = v8;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 21)
  {
    result = memcmp(__s1, "per_class_suppression", 0x15uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 16) = v7;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 15 && *__s1 == 0x616E6964726F6F63 && *(__s1 + 7) == 0x65646F6D5F657461)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::NonMaximumSuppressionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(v8, "coordinate_mode", 0xF, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v9, "max_boxes", 9, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v10, "per_class_suppression", 0x15, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::mps::NonMaximumSuppressionOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::CropResizeCoordinateModeAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::NonMaximumSuppressionOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::CropResizeCoordinateModeAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2);
  }

  return 0;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::getMaxBoxes(mlir::mps::NonMaximumSuppressionOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &__p);
  if (v6 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

  v2 = *p_p;
  if (v6 >= 0x41 && __p != 0)
  {
    operator delete[](__p);
  }

  return v2 | 0x100000000;
}

void mlir::mps::NonMaximumSuppressionOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned int a9, uint64_t a10)
{
  v52 = *MEMORY[0x1E69E9840];
  v41 = a4;
  v42 = a3;
  v39 = a6;
  v40 = a5;
  v38 = a7;
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v40, 1uLL);
  }

  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v14);
    v16 = *(a2 + 256);
    if (!v16)
    {
      v17 = operator new(0x18uLL);
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      *(a2 + 256) = v17;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::NonMaximumSuppressionOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v16 = *(a2 + 256);
    }

    *(v16 + 16) = UnitAttr;
  }

  v18 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v48 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v49 = v18;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v46 = &v48;
  v44 = a9;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v21 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 47) ^ v20);
  v43 = &v44;
  v50 = &v44;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((v21 >> 47) ^ v21), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v43, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v50);
  v23 = *(a2 + 256);
  if (!v23)
  {
    v24 = operator new(0x18uLL);
    v24[1] = 0;
    v24[2] = 0;
    *v24 = 0;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::NonMaximumSuppressionOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v23 = *(a2 + 256);
  }

  *v23 = ParametricStorageTypeImpl;
  if (a10)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      v26 = operator new(0x18uLL);
      v26[1] = 0;
      v26[2] = 0;
      *v26 = 0;
      *(a2 + 256) = v26;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::NonMaximumSuppressionOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v25 = *(a2 + 256);
    }

    *(v25 + 8) = a10;
  }

  __src = v47;
  v46 = 0x200000000;
  v27 = *a1;
  mlir::ValueRange::ValueRange(&v50, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v30 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v48, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(v27, v31, v32, v50, p_src, Dictionary, v30, v33, v48, v49, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v34 = __src;
  v35 = v46;
  v36 = *(a2 + 72);
  v37 = v36 + v46;
  if (v37 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v37, 8);
    LODWORD(v36) = *(a2 + 72);
  }

  if (v35)
  {
    memcpy((*(a2 + 64) + 8 * v36), v34, 8 * v35);
    LODWORD(v36) = *(a2 + 72);
  }

  *(a2 + 72) = v36 + v35;
  if (__src != v47)
  {
    free(__src);
  }
}

BOOL mlir::mps::NonMaximumSuppressionOp::verifyInvariantsImpl(const char **this)
{
  v247 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[16 * ((*(*this + 11) >> 23) & 1)];
  v5 = *(v3 + 8);
  v4 = *(v3 + 9);
  v6 = *(v3 + 10);
  v235 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v6, "per_class_suppression", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v235) & 1) == 0)
  {
    return 0;
  }

  v235 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(v5, "coordinate_mode", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v235) & 1) == 0)
  {
    return 0;
  }

  v235 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v4, "max_boxes", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v235) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v7 = *this;
  v8 = *(*(*(*this + 9) + 56) + 8);
  LODWORD(v229) = 2;
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(v7, (v8 & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v11 = *this;
  if (((*this)[46] & 0x80) == 0)
  {
    v14 = 4294967292;
    goto LABEL_8;
  }

  v12 = *(v11 + 68);
  v13 = (v12 - 2);
  v14 = v13 - 2;
  if ((v13 - 2) > 1)
  {
LABEL_8:
    v223 = "operand group starting at #";
    v225 = 259;
    mlir::OpState::emitOpError(this, &v223, &v235);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&v235, &v229);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, " requires 0 or 1 element, but found ");
    v232 = v14;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v16, &v232);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v235);
    return v18;
  }

  if (v12 != 4)
  {
    v20 = *(v11 + 72) + 88;
    v21 = 2;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v21) & 1) != 0)
    {
      ++v21;
      v20 += 32;
      if (v13 == v21)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  LODWORD(v21) = 2;
LABEL_15:
  ODSOperands = mlir::mps::NonMaximumSuppressionOp::getODSOperands(this, 3u, v9, v10);
  if (v23)
  {
    v26 = v23;
    v27 = ODSOperands + 24;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps38(*this, (*(*v27 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v21) & 1) != 0)
    {
      LODWORD(v21) = v21 + 1;
      v27 += 32;
      if (!--v26)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

LABEL_19:
  v28 = mlir::mps::NonMaximumSuppressionOp::getODSOperands(this, 4u, v24, v25);
  if (v29)
  {
    v30 = v29;
    v31 = v28 + 24;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps38(*this, (*(*v31 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v21) & 1) != 0)
    {
      LODWORD(v21) = v21 + 1;
      v31 += 32;
      if (!--v30)
      {
        goto LABEL_23;
      }
    }

    return 0;
  }

LABEL_23:
  if (*(*this + 9))
  {
    v32 = (*this - 16);
  }

  else
  {
    v32 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0);
  v34 = *this;
  v35 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = *(*v35 + 136);
  if (v37 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v37 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_93;
    }

    goto LABEL_28;
  }

  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v36 + 8);
    v49 = *(v36 + 16);
    if (v49)
    {
      goto LABEL_38;
    }

LABEL_46:
    v49 = 0;
    v50 = v48;
    goto LABEL_47;
  }

  mlir::arith::ExtUIOp::fold();
  v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v48 = *(v36 + 8);
  v49 = *(v36 + 16);
  if (!v49)
  {
    goto LABEL_46;
  }

LABEL_38:
  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
LABEL_47:
  if (v50 != &v48[2 * v49] && *v50 == v47)
  {
    v56 = v50[1];
  }

  else
  {
    v56 = 0;
  }

  v235 = v35;
  v236 = v56;
  v228[0] = mlir::ElementsAttr::isSplat(&v235);
  if (mlir::Type::isSignedInteger(v228, 32) || mlir::Type::isSignedInteger(v228, 64))
  {
    goto LABEL_123;
  }

  v36 = *v35;
  if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_93;
  }

LABEL_28:
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v36 + 8);
    v40 = *(v36 + 16);
    if (v40)
    {
      goto LABEL_30;
    }

LABEL_56:
    v40 = 0;
    v41 = v39;
    goto LABEL_57;
  }

  mlir::arith::ExtUIOp::fold();
  v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v39 = *(v36 + 8);
  v40 = *(v36 + 16);
  if (!v40)
  {
    goto LABEL_56;
  }

LABEL_30:
  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
LABEL_57:
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v57 = v41[1];
  }

  else
  {
    v57 = 0;
  }

  v223 = v35;
  v224 = v57;
  if (!mlir::CallOpInterface::getArgOperands(&v223))
  {
    goto LABEL_93;
  }

  v58 = *v35;
  {
    v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    if (v61)
    {
      goto LABEL_64;
    }

LABEL_71:
    v61 = 0;
    v62 = v60;
    goto LABEL_72;
  }

  mlir::arith::ExtUIOp::fold();
  v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v60 = *(v58 + 8);
  v61 = *(v58 + 16);
  if (!v61)
  {
    goto LABEL_71;
  }

LABEL_64:
  v62 = v60;
  v63 = v61;
  do
  {
    v64 = v63 >> 1;
    v65 = &v62[2 * (v63 >> 1)];
    v67 = *v65;
    v66 = v65 + 2;
    v63 += ~(v63 >> 1);
    if (v67 < v59)
    {
      v62 = v66;
    }

    else
    {
      v63 = v64;
    }
  }

  while (v63);
LABEL_72:
  if (v62 != &v60[2 * v61] && *v62 == v59)
  {
    v68 = v62[1];
  }

  else
  {
    v68 = 0;
  }

  v232 = v35;
  v233 = v68;
  mlir::CallableOpInterface::getArgAttrsAttr(&v232);
  if (v69 == 3)
  {
    v70 = *v35;
    {
      v71 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v72 = *(v70 + 8);
      v73 = *(v70 + 16);
      if (v73)
      {
        goto LABEL_79;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v71 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v72 = *(v70 + 8);
      v73 = *(v70 + 16);
      if (v73)
      {
LABEL_79:
        v74 = v72;
        v75 = v73;
        do
        {
          v76 = v75 >> 1;
          v77 = &v74[2 * (v75 >> 1)];
          v79 = *v77;
          v78 = v77 + 2;
          v75 += ~(v75 >> 1);
          if (v79 < v71)
          {
            v74 = v78;
          }

          else
          {
            v75 = v76;
          }
        }

        while (v75);
LABEL_87:
        if (v74 != &v72[2 * v73] && *v74 == v71)
        {
          v80 = v74[1];
        }

        else
        {
          v80 = 0;
        }

        v229 = v35;
        v230 = v80;
        v228[0] = mlir::ElementsAttr::isSplat(&v229);
        if (mlir::Type::isSignedInteger(v228, 32) || mlir::Type::isSignedInteger(v228, 64))
        {
          goto LABEL_123;
        }

        goto LABEL_93;
      }
    }

    v73 = 0;
    v74 = v72;
    goto LABEL_87;
  }

LABEL_93:
  v225 = 261;
  v223 = "result";
  v224 = 6;
  mlir::Operation::emitOpError(v34, &v223, &v235);
  if (v235)
  {
    LODWORD(v232) = 3;
    v233 = " #";
    v234 = 2;
    v81 = &v232;
    v82 = v237;
    if (v238 >= v239)
    {
      if (v237 <= &v232 && v237 + 24 * v238 > &v232)
      {
        v145 = &v232 - v237;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
        v82 = v237;
        v81 = (v237 + v145);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
        v81 = &v232;
        v82 = v237;
      }
    }

    v83 = &v82[24 * v238];
    v84 = *v81;
    *(v83 + 2) = v81[2];
    *v83 = v84;
    v85 = ++v238;
    if (v235)
    {
      LODWORD(v232) = 5;
      v233 = 0;
      v86 = &v232;
      v87 = v237;
      if (v85 >= v239)
      {
        if (v237 <= &v232 && v237 + 24 * v85 > &v232)
        {
          v146 = &v232 - v237;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v85 + 1, 24);
          v87 = v237;
          v86 = (v237 + v146);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v85 + 1, 24);
          v86 = &v232;
          v87 = v237;
        }
      }

      v88 = &v87[24 * v238];
      v89 = *v86;
      *(v88 + 2) = v86[2];
      *v88 = v89;
      v90 = ++v238;
      if (v235)
      {
        LODWORD(v232) = 3;
        v233 = " must be unranked tensor of mps index type values or 3D tensor of mps index type values, but got ";
        v234 = 97;
        v91 = &v232;
        v92 = v237;
        if (v90 >= v239)
        {
          if (v237 <= &v232 && v237 + 24 * v90 > &v232)
          {
            v219 = &v232 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v90 + 1, 24);
            v92 = v237;
            v91 = (v237 + v219);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v90 + 1, 24);
            v91 = &v232;
            v92 = v237;
          }
        }

        v93 = &v92[24 * v238];
        v94 = *v91;
        *(v93 + 2) = v91[2];
        *v93 = v94;
        ++v238;
        if (v235)
        {
          v95 = &v232;
          mlir::DiagnosticArgument::DiagnosticArgument(&v232, v35);
          v96 = v237;
          if (v238 >= v239)
          {
            if (v237 <= &v232 && v237 + 24 * v238 > &v232)
            {
              v221 = &v232 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
              v96 = v237;
              v95 = (v237 + v221);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
              v95 = &v232;
              v96 = v237;
            }
          }

          v97 = &v96[24 * v238];
          v98 = *v95;
          *(v97 + 2) = v95[2];
          *v97 = v98;
          ++v238;
        }
      }
    }
  }

  v99 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
  if (v235)
  {
    mlir::InFlightDiagnostic::report(&v235);
  }

  if (v246 == 1)
  {
    if (v245 != &v246)
    {
      free(v245);
    }

    v100 = __p;
    if (__p)
    {
      v101 = v244;
      v102 = __p;
      if (v244 != __p)
      {
        do
        {
          v101 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v101 - 1);
        }

        while (v101 != v100);
        v102 = __p;
      }

      v244 = v100;
      operator delete(v102);
    }

    v103 = v241;
    if (v241)
    {
      v104 = v242;
      v105 = v241;
      if (v242 != v241)
      {
        do
        {
          v107 = *--v104;
          v106 = v107;
          *v104 = 0;
          if (v107)
          {
            operator delete[](v106);
          }
        }

        while (v104 != v103);
        v105 = v241;
      }

      v242 = v103;
      operator delete(v105);
    }

    if (v237 != v240)
    {
      free(v237);
    }
  }

  if (!v99)
  {
    return 0;
  }

LABEL_123:
  if (*(*this + 9))
  {
    v108 = (*this - 16);
  }

  else
  {
    v108 = 0;
  }

  v109 = mlir::detail::OpResultImpl::getNextResultAtOffset(v108, 1);
  v110 = mlir::detail::OpResultImpl::getNextResultAtOffset(v109, 0);
  v111 = *this;
  v112 = (*(v110 + 8) & 0xFFFFFFFFFFFFFFF8);
  v113 = *v112;
  if (*(*v112 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_187;
  }

  {
    v114 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v115 = *(v113 + 8);
    v116 = *(v113 + 16);
    if (v116)
    {
      goto LABEL_129;
    }

LABEL_148:
    v116 = 0;
    v117 = v115;
    goto LABEL_149;
  }

  mlir::arith::ExtUIOp::fold();
  v114 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v115 = *(v113 + 8);
  v116 = *(v113 + 16);
  if (!v116)
  {
    goto LABEL_148;
  }

LABEL_129:
  v117 = v115;
  v118 = v116;
  do
  {
    v119 = v118 >> 1;
    v120 = &v117[2 * (v118 >> 1)];
    v122 = *v120;
    v121 = v120 + 2;
    v118 += ~(v118 >> 1);
    if (v122 < v114)
    {
      v117 = v121;
    }

    else
    {
      v118 = v119;
    }
  }

  while (v118);
LABEL_149:
  if (v117 != &v115[2 * v116] && *v117 == v114)
  {
    v123 = v117[1];
  }

  else
  {
    v123 = 0;
  }

  v235 = v112;
  v236 = v123;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v235);
  v113 = *v112;
  if (!ArgOperands)
  {
    goto LABEL_187;
  }

  {
    v125 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v126 = *(v113 + 8);
    v127 = *(v113 + 16);
    if (v127)
    {
      goto LABEL_156;
    }

LABEL_163:
    v127 = 0;
    v128 = v126;
    goto LABEL_164;
  }

  mlir::arith::ExtUIOp::fold();
  v125 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v126 = *(v113 + 8);
  v127 = *(v113 + 16);
  if (!v127)
  {
    goto LABEL_163;
  }

LABEL_156:
  v128 = v126;
  v129 = v127;
  do
  {
    v130 = v129 >> 1;
    v131 = &v128[2 * (v129 >> 1)];
    v133 = *v131;
    v132 = v131 + 2;
    v129 += ~(v129 >> 1);
    if (v133 < v125)
    {
      v128 = v132;
    }

    else
    {
      v129 = v130;
    }
  }

  while (v129);
LABEL_164:
  if (v128 != &v126[2 * v127] && *v128 == v125)
  {
    v134 = v128[1];
  }

  else
  {
    v134 = 0;
  }

  v223 = v112;
  v224 = v134;
  mlir::CallableOpInterface::getArgAttrsAttr(&v223);
  v113 = *v112;
  if (v135)
  {
    goto LABEL_187;
  }

  {
    v136 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v137 = *(v113 + 8);
    v138 = *(v113 + 16);
    if (v138)
    {
      goto LABEL_171;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v136 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v137 = *(v113 + 8);
    v138 = *(v113 + 16);
    if (v138)
    {
LABEL_171:
      v139 = v137;
      v140 = v138;
      do
      {
        v141 = v140 >> 1;
        v142 = &v139[2 * (v140 >> 1)];
        v144 = *v142;
        v143 = v142 + 2;
        v140 += ~(v140 >> 1);
        if (v144 < v136)
        {
          v139 = v143;
        }

        else
        {
          v140 = v141;
        }
      }

      while (v140);
      goto LABEL_181;
    }
  }

  v138 = 0;
  v139 = v137;
LABEL_181:
  if (v139 != &v137[2 * v138] && *v139 == v136)
  {
    v147 = v139[1];
  }

  else
  {
    v147 = 0;
  }

  v232 = v112;
  v233 = v147;
  isSplat = mlir::ElementsAttr::isSplat(&v232);
  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    return 1;
  }

  v113 = *v112;
LABEL_187:
  if (*(v113 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_234;
  }

  {
    v148 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v149 = *(v113 + 8);
    v150 = *(v113 + 16);
    if (v150)
    {
      goto LABEL_190;
    }

LABEL_197:
    v150 = 0;
    v151 = v149;
    goto LABEL_198;
  }

  mlir::arith::ExtUIOp::fold();
  v148 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v149 = *(v113 + 8);
  v150 = *(v113 + 16);
  if (!v150)
  {
    goto LABEL_197;
  }

LABEL_190:
  v151 = v149;
  v152 = v150;
  do
  {
    v153 = v152 >> 1;
    v154 = &v151[2 * (v152 >> 1)];
    v156 = *v154;
    v155 = v154 + 2;
    v152 += ~(v152 >> 1);
    if (v156 < v148)
    {
      v151 = v155;
    }

    else
    {
      v152 = v153;
    }
  }

  while (v152);
LABEL_198:
  if (v151 != &v149[2 * v150] && *v151 == v148)
  {
    v157 = v151[1];
  }

  else
  {
    v157 = 0;
  }

  v229 = v112;
  v230 = v157;
  v158 = mlir::CallOpInterface::getArgOperands(&v229);
  v113 = *v112;
  if (!v158)
  {
    goto LABEL_234;
  }

  {
    v159 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v160 = *(v113 + 8);
    v161 = *(v113 + 16);
    if (v161)
    {
      goto LABEL_205;
    }

LABEL_212:
    v161 = 0;
    v162 = v160;
    goto LABEL_213;
  }

  mlir::arith::ExtUIOp::fold();
  v159 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v160 = *(v113 + 8);
  v161 = *(v113 + 16);
  if (!v161)
  {
    goto LABEL_212;
  }

LABEL_205:
  v162 = v160;
  v163 = v161;
  do
  {
    v164 = v163 >> 1;
    v165 = &v162[2 * (v163 >> 1)];
    v167 = *v165;
    v166 = v165 + 2;
    v163 += ~(v163 >> 1);
    if (v167 < v159)
    {
      v162 = v166;
    }

    else
    {
      v163 = v164;
    }
  }

  while (v163);
LABEL_213:
  if (v162 != &v160[2 * v161] && *v162 == v159)
  {
    v168 = v162[1];
  }

  else
  {
    v168 = 0;
  }

  v228[0] = v112;
  v228[1] = v168;
  mlir::CallableOpInterface::getArgAttrsAttr(v228);
  v113 = *v112;
  if (v169 != 1)
  {
    goto LABEL_234;
  }

  {
    v170 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v171 = *(v113 + 8);
    v172 = *(v113 + 16);
    if (v172)
    {
      goto LABEL_220;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v170 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v171 = *(v113 + 8);
    v172 = *(v113 + 16);
    if (v172)
    {
LABEL_220:
      v173 = v171;
      v174 = v172;
      do
      {
        v175 = v174 >> 1;
        v176 = &v173[2 * (v174 >> 1)];
        v178 = *v176;
        v177 = v176 + 2;
        v174 += ~(v174 >> 1);
        if (v178 < v170)
        {
          v173 = v177;
        }

        else
        {
          v174 = v175;
        }
      }

      while (v174);
      goto LABEL_228;
    }
  }

  v172 = 0;
  v173 = v171;
LABEL_228:
  if (v173 != &v171[2 * v172] && *v173 == v170)
  {
    v179 = v173[1];
  }

  else
  {
    v179 = 0;
  }

  v227[0] = v112;
  v227[1] = v179;
  isSplat = mlir::ElementsAttr::isSplat(v227);
  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    return 1;
  }

  v113 = *v112;
LABEL_234:
  if (*(v113 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_250;
  }

  {
    v180 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v181 = *(v113 + 8);
    v182 = *(v113 + 16);
    if (v182)
    {
      goto LABEL_237;
    }

LABEL_244:
    v182 = 0;
    v183 = v181;
    goto LABEL_245;
  }

  mlir::arith::ExtUIOp::fold();
  v180 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v181 = *(v113 + 8);
  v182 = *(v113 + 16);
  if (!v182)
  {
    goto LABEL_244;
  }

LABEL_237:
  v183 = v181;
  v184 = v182;
  do
  {
    v185 = v184 >> 1;
    v186 = &v183[2 * (v184 >> 1)];
    v188 = *v186;
    v187 = v186 + 2;
    v184 += ~(v184 >> 1);
    if (v188 < v180)
    {
      v183 = v187;
    }

    else
    {
      v184 = v185;
    }
  }

  while (v184);
LABEL_245:
  if (v183 != &v181[2 * v182] && *v183 == v180)
  {
    v189 = v183[1];
  }

  else
  {
    v189 = 0;
  }

  v226[0] = v112;
  v226[1] = v189;
  isSplat = mlir::ElementsAttr::isSplat(v226);
  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    return 1;
  }

LABEL_250:
  v225 = 261;
  v223 = "result";
  v224 = 6;
  mlir::Operation::emitOpError(v111, &v223, &v235);
  if (v235)
  {
    LODWORD(v232) = 3;
    v233 = " #";
    v234 = 2;
    v190 = &v232;
    v191 = v237;
    if (v238 >= v239)
    {
      if (v237 <= &v232 && v237 + 24 * v238 > &v232)
      {
        v217 = &v232 - v237;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
        v191 = v237;
        v190 = (v237 + v217);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
        v190 = &v232;
        v191 = v237;
      }
    }

    v192 = &v191[24 * v238];
    v193 = *v190;
    *(v192 + 2) = v190[2];
    *v192 = v193;
    v194 = ++v238;
    if (v235)
    {
      LODWORD(v232) = 5;
      v233 = 1;
      v195 = &v232;
      v196 = v237;
      if (v194 >= v239)
      {
        if (v237 <= &v232 && v237 + 24 * v194 > &v232)
        {
          v218 = &v232 - v237;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v194 + 1, 24);
          v196 = v237;
          v195 = (v237 + v218);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v194 + 1, 24);
          v195 = &v232;
          v196 = v237;
        }
      }

      v197 = &v196[24 * v238];
      v198 = *v195;
      *(v197 + 2) = v195[2];
      *v197 = v198;
      v199 = ++v238;
      if (v235)
      {
        LODWORD(v232) = 3;
        v233 = " must be 0D tensor of 32-bit unsigned integer values or 1D tensor of 32-bit unsigned integer values or unranked tensor of 32-bit unsigned integer values, but got ";
        v234 = 162;
        v200 = &v232;
        v201 = v237;
        if (v199 >= v239)
        {
          if (v237 <= &v232 && v237 + 24 * v199 > &v232)
          {
            v220 = &v232 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v199 + 1, 24);
            v201 = v237;
            v200 = (v237 + v220);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v199 + 1, 24);
            v200 = &v232;
            v201 = v237;
          }
        }

        v202 = &v201[24 * v238];
        v203 = *v200;
        *(v202 + 2) = v200[2];
        *v202 = v203;
        ++v238;
        if (v235)
        {
          v204 = &v232;
          mlir::DiagnosticArgument::DiagnosticArgument(&v232, v112);
          v205 = v237;
          if (v238 >= v239)
          {
            if (v237 <= &v232 && v237 + 24 * v238 > &v232)
            {
              v222 = &v232 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
              v205 = v237;
              v204 = (v237 + v222);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
              v204 = &v232;
              v205 = v237;
            }
          }

          v206 = &v205[24 * v238];
          v207 = *v204;
          *(v206 + 2) = v204[2];
          *v206 = v207;
          ++v238;
        }
      }
    }
  }

  v208 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
  if (v235)
  {
    mlir::InFlightDiagnostic::report(&v235);
  }

  if (v246 == 1)
  {
    if (v245 != &v246)
    {
      free(v245);
    }

    v209 = __p;
    if (__p)
    {
      v210 = v244;
      v211 = __p;
      if (v244 != __p)
      {
        do
        {
          v210 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v210 - 1);
        }

        while (v210 != v209);
        v211 = __p;
      }

      v244 = v209;
      operator delete(v211);
    }

    v212 = v241;
    if (v241)
    {
      v213 = v242;
      v214 = v241;
      if (v242 != v241)
      {
        do
        {
          v216 = *--v213;
          v215 = v216;
          *v213 = 0;
          if (v216)
          {
            operator delete[](v215);
          }
        }

        while (v213 != v212);
        v214 = v241;
      }

      v242 = v212;
      operator delete(v214);
    }

    if (v237 != v240)
    {
      free(v237);
    }
  }

  return v208;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps38(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    if (!v24)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v84 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v84 + 8);
    v24 = *(v84 + 16);
    if (!v24)
    {
      goto LABEL_103;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
LABEL_103:
    v130 = a2;
    v131 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v130);
    v10 = *a2;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_106;
  }

  v86 = v25[1];
  v130 = a2;
  v131 = v86;
  v87 = mlir::CallOpInterface::getArgOperands(&v130);
  v10 = *a2;
  if (!v87)
  {
    goto LABEL_2;
  }

LABEL_106:
  {
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v10 + 8);
    v90 = *(v10 + 16);
    if (!v90)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v119 = v10;
    mlir::arith::ExtUIOp::fold();
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v119 + 8);
    v90 = *(v119 + 16);
    if (!v90)
    {
      goto LABEL_127;
    }
  }

  v91 = v89;
  v92 = v90;
  do
  {
    v93 = v92 >> 1;
    v94 = &v91[2 * (v92 >> 1)];
    v96 = *v94;
    v95 = v94 + 2;
    v92 += ~(v92 >> 1);
    if (v96 < v88)
    {
      v91 = v95;
    }

    else
    {
      v92 = v93;
    }
  }

  while (v92);
  if (v91 != &v89[2 * v90] && *v91 == v88)
  {
    v99 = v91[1];
    v120 = a2;
    v121 = v99;
    mlir::CallableOpInterface::getArgAttrsAttr(&v120);
    v10 = *a2;
    if (!v100)
    {
      goto LABEL_130;
    }

LABEL_2:
    v11 = *(v10 + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_49;
    }

    goto LABEL_7;
  }

LABEL_127:
  v120 = a2;
  v121 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v120);
  v10 = *a2;
  if (v98)
  {
    goto LABEL_2;
  }

LABEL_130:
  {
    v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v102 = *(v10 + 8);
    v103 = *(v10 + 16);
    if (!v103)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v111 = v10;
    mlir::arith::ExtUIOp::fold();
    v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v102 = *(v111 + 8);
    v103 = *(v111 + 16);
    if (!v103)
    {
      goto LABEL_143;
    }
  }

  v104 = v102;
  v105 = v103;
  do
  {
    v106 = v105 >> 1;
    v107 = &v104[2 * (v105 >> 1)];
    v109 = *v107;
    v108 = v107 + 2;
    v105 += ~(v105 >> 1);
    if (v109 < v101)
    {
      v104 = v108;
    }

    else
    {
      v105 = v106;
    }
  }

  while (v105);
  if (v104 != &v102[2 * v103] && *v104 == v101)
  {
    v112 = v104[1];
    goto LABEL_145;
  }

LABEL_143:
  v112 = 0;
LABEL_145:
  v127 = a2;
  v128 = v112;
  isSplat = mlir::ElementsAttr::isSplat(&v127);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v10 = *a2;
  v114 = *(*a2 + 136);
  if (v114 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v114 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_49;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v31 + 8);
    v15 = *(v31 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v32 = v16[1];
    goto LABEL_30;
  }

LABEL_28:
  v32 = 0;
LABEL_30:
  v125[0] = a2;
  v125[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v125);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_49;
  }

  v33 = *a2;
  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v43 = v33;
    mlir::arith::ExtUIOp::fold();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v43 + 8);
    v36 = *(v43 + 16);
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 != &v35[2 * v36] && *v37 == v34)
  {
    v44 = v37[1];
    goto LABEL_47;
  }

LABEL_45:
  v44 = 0;
LABEL_47:
  v124[0] = a2;
  v124[1] = v44;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v124);
  v142 = 1;
  if (v46 == 1 && *ArgAttrsAttr == v142)
  {
    return 1;
  }

LABEL_49:
  v47 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = *(v47 + 8);
      v77 = *(v47 + 16);
      if (!v77)
      {
        goto LABEL_118;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = *(v47 + 8);
      v77 = *(v47 + 16);
      if (!v77)
      {
        goto LABEL_118;
      }
    }

    v78 = v76;
    v79 = v77;
    do
    {
      v80 = v79 >> 1;
      v81 = &v78[2 * (v79 >> 1)];
      v83 = *v81;
      v82 = v81 + 2;
      v79 += ~(v79 >> 1);
      if (v83 < v75)
      {
        v78 = v82;
      }

      else
      {
        v79 = v80;
      }
    }

    while (v79);
    if (v78 != &v76[2 * v77] && *v78 == v75)
    {
      v97 = v78[1];
      goto LABEL_120;
    }

LABEL_118:
    v97 = 0;
LABEL_120:
    v123[0] = a2;
    v123[1] = v97;
    isSplat = mlir::ElementsAttr::isSplat(v123);
    if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_50;
    }

    return 1;
  }

LABEL_50:
  v122 = 261;
  v120 = a3;
  v121 = a4;
  mlir::Operation::emitOpError(a1, &v120, &v130);
  if (v130)
  {
    LODWORD(v127) = 3;
    v128 = " #";
    v129 = 2;
    v48 = &v127;
    v49 = v132;
    if (v133 >= v134)
    {
      if (v132 <= &v127 && v132 + 24 * v133 > &v127)
      {
        v110 = &v127 - v132;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v49 = v132;
        v48 = v132 + v110;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v48 = &v127;
        v49 = v132;
      }
    }

    v50 = &v49[24 * v133];
    v51 = *v48;
    *(v50 + 2) = *(v48 + 2);
    *v50 = v51;
    v52 = ++v133;
    if (v130)
    {
      LODWORD(v127) = 5;
      v128 = a5;
      v53 = &v127;
      v54 = v132;
      if (v52 >= v134)
      {
        if (v132 <= &v127 && v132 + 24 * v52 > &v127)
        {
          v116 = &v127 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v52 + 1, 24);
          v54 = v132;
          v53 = v132 + v116;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v52 + 1, 24);
          v53 = &v127;
          v54 = v132;
        }
      }

      v55 = &v54[24 * v133];
      v56 = *v53;
      *(v55 + 2) = *(v53 + 2);
      *v55 = v56;
      v57 = ++v133;
      if (v130)
      {
        LODWORD(v127) = 3;
        v128 = " must be 0D tensor of floating point values or static-shape defined tensor with shape equal to [1] or unranked tensor of floating point values, but got ";
        v129 = 152;
        v58 = &v127;
        v59 = v132;
        if (v57 >= v134)
        {
          if (v132 <= &v127 && v132 + 24 * v57 > &v127)
          {
            v117 = &v127 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v57 + 1, 24);
            v59 = v132;
            v58 = v132 + v117;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v57 + 1, 24);
            v58 = &v127;
            v59 = v132;
          }
        }

        v60 = &v59[24 * v133];
        v61 = *v58;
        *(v60 + 2) = *(v58 + 2);
        *v60 = v61;
        ++v133;
        if (v130)
        {
          v62 = &v127;
          mlir::DiagnosticArgument::DiagnosticArgument(&v127, a2);
          v63 = v132;
          if (v133 >= v134)
          {
            if (v132 <= &v127 && v132 + 24 * v133 > &v127)
            {
              v118 = &v127 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v63 = v132;
              v62 = v132 + v118;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v62 = &v127;
              v63 = v132;
            }
          }

          v64 = &v63[24 * v133];
          v65 = *v62;
          *(v64 + 2) = *(v62 + 2);
          *v64 = v65;
          ++v133;
        }
      }
    }
  }

  v66 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
  if (v130)
  {
    mlir::InFlightDiagnostic::report(&v130);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v67 = __p;
    if (__p)
    {
      v68 = v139;
      v69 = __p;
      if (v139 != __p)
      {
        do
        {
          v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
        }

        while (v68 != v67);
        v69 = __p;
      }

      v139 = v67;
      operator delete(v69);
    }

    v70 = v136;
    if (v136)
    {
      v71 = v137;
      v72 = v136;
      if (v137 != v136)
      {
        do
        {
          v74 = *--v71;
          v73 = v74;
          *v71 = 0;
          if (v74)
          {
            operator delete[](v73);
          }
        }

        while (v71 != v70);
        v72 = v136;
      }

      v137 = v70;
      operator delete(v72);
    }

    if (v132 != v135)
    {
      free(v132);
    }
  }

  return v66;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NonMaximumSuppressionOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.non_maximum_suppression", 27, a3, v10, a4, a5);
  *v11 = &unk_1F5B29AE0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::NonZeroOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v17, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::NonZeroOp::inferReturnTypes(v5, v8, v9, v18[0], v18[1], Dictionary, v10, v11, v17[0], v17[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = __src;
  v13 = v20;
  v14 = *(a2 + 72);
  v15 = v14 + v20;
  if (v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v13);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v21)
  {
    free(__src);
  }
}