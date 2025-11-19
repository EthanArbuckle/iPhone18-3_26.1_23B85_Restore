uint64_t mlir::tensor::GatherOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v28 = &v59;
      v29 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v29 = v63;
          v28 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v28 = &v59;
          v29 = v63;
        }
      }

      v30 = &v29[24 * v64];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
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

    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
    }

    v23 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v35 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v23);
    goto LABEL_68;
  }

  v74.var0 = "gather_dims";
  v74.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    v9 = v8;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
    {
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 56;
        v38 = &v59;
        v39 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v39 = v63;
            v38 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v38 = &v59;
            v39 = v63;
          }
        }

        v40 = &v39[24 * v64];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v64;
        if (v62[0])
        {
          v42 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v43 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v43 = v63;
              v42 = (v63 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v42 = &v59;
              v43 = v63;
            }
          }

          v44 = &v43[24 * v64];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
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

      v46 = __p;
      if (__p)
      {
        v47 = v70;
        v48 = __p;
        if (v70 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v70 = v46;
        operator delete(v48);
      }

      v23 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v49 = v68;
      v25 = v67;
      if (v68 == v67)
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

      while (v49 != v23);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v75.var0 = "unique";
  v75.var1 = 6;
  v10 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 51;
    v12 = &v59;
    v13 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v13 = v63;
        v12 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v12 = &v59;
        v13 = v63;
      }
    }

    v14 = &v13[24 * v64];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v64;
    if (v62[0])
    {
      v16 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v11);
      v17 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v17 = v63;
          v16 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v16 = &v59;
          v17 = v63;
        }
      }

      v18 = &v17[24 * v64];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
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

  v20 = __p;
  if (__p)
  {
    v21 = v70;
    v22 = __p;
    if (v70 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v70 = v20;
    operator delete(v22);
  }

  v23 = v67;
  if (v67)
  {
    v24 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

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
LABEL_68:
    v25 = v67;
LABEL_69:
    v68 = v23;
    operator delete(v25);
  }

LABEL_70:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::tensor::GatherOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "gather_dims", 11, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "unique", 6, v8);
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

unint64_t mlir::tensor::GatherOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 6)
  {
    if (a4 == 11 && *a3 == 0x645F726568746167 && *(a3 + 3) == 0x736D69645F726568)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1902734965 || *(a3 + 4) != 25973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::tensor::GatherOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x645F726568746167 && *(a2 + 3) == 0x736D69645F726568)
  {
    if (a4)
    {
      v7 = result;
      v9 = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
      result = v7;
      if (v9)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *v7 = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::tensor::GatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "gather_dims", 11, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "unique", 6, v5);
  }
}

BOOL mlir::tensor::GatherOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "gather_dims", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "unique", 6, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::GatherOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, a2[32]))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::tensor::GatherOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x10uLL);
    *v3 = 0;
    v3[1] = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::GatherOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::tensor::GatherOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::tensor::GatherOp::verifyInvariantsImpl(mlir::tensor::GatherOp *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v22[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v4, "gather_dims", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) != 0 && (v22[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if (*(*this + 36))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'gather_dims'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
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
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_18;
  }

  v10 = a1;
  {
    v54 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v54 + 8);
    v13 = *(v54 + 16);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_14;
  }

  v20 = v14[1];
LABEL_16:
  v60[0] = a2;
  v60[1] = v20;
  v55[0] = mlir::ElementsAttr::isSplat(v60);
  isSignlessIntOrIndex = mlir::Type::isSignlessIntOrIndex(v55);
  a1 = v10;
  if (isSignlessIntOrIndex)
  {
    return 1;
  }

LABEL_18:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v60);
  if (v60[0])
  {
    v57 = 3;
    v58 = " #";
    v59 = 2;
    v23 = &v57;
    v24 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v57 && v61 + 24 * v62 > &v57)
      {
        v50 = &v57 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v24 = v61;
        v23 = (v61 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v23 = &v57;
        v24 = v61;
      }
    }

    v25 = &v24[24 * v62];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v62;
    if (v60[0])
    {
      v57 = 5;
      v58 = a5;
      v28 = &v57;
      v29 = v61;
      if (v27 >= v63)
      {
        if (v61 <= &v57 && v61 + 24 * v27 > &v57)
        {
          v51 = &v57 - v61;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v27 + 1, 24);
          v29 = v61;
          v28 = (v61 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v27 + 1, 24);
          v28 = &v57;
          v29 = v61;
        }
      }

      v30 = &v29[24 * v62];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v62;
      if (v60[0])
      {
        v57 = 3;
        v58 = " must be ranked tensor of signless integer or index values, but got ";
        v59 = 68;
        v33 = &v57;
        v34 = v61;
        if (v32 >= v63)
        {
          if (v61 <= &v57 && v61 + 24 * v32 > &v57)
          {
            v52 = &v57 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v32 + 1, 24);
            v34 = v61;
            v33 = (v61 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v32 + 1, 24);
            v33 = &v57;
            v34 = v61;
          }
        }

        v35 = &v34[24 * v62];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v62;
        if (v60[0])
        {
          v37 = &v57;
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, a2);
          v38 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v53 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v38 = v61;
              v37 = (v61 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v37 = &v57;
              v38 = v61;
            }
          }

          v39 = &v38[24 * v62];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v62;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
  if (v60[0])
  {
    mlir::InFlightDiagnostic::report(v60);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v68;
      v43 = __p;
      if (v68 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v68 = v41;
      operator delete(v43);
    }

    v44 = v65;
    if (v65)
    {
      v45 = v66;
      v46 = v65;
      if (v66 != v65)
      {
        do
        {
          v48 = *--v45;
          v47 = v48;
          *v45 = 0;
          if (v48)
          {
            operator delete[](v47);
          }
        }

        while (v45 != v44);
        v46 = v65;
      }

      v66 = v44;
      operator delete(v46);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return v22;
}

uint64_t mlir::tensor::GatherOp::parse(uint64_t *a1, void *a2)
{
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  Inputs = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "gather_dims", 11, &v24) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v17, 0))
  {
    return 0;
  }

  if (v17)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2);
    *v4 = v17;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "unique", 6))
  {
    v5 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v5, v6);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2) + 8) = UnitAttr;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v24 = a1;
  v25 = &v14;
  v26 = a2;
  if (!mlir::tensor::GatherOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v14))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(&v14);
  v16 = v9;
  Results = mlir::FunctionType::getResults(&v14);
  mlir::OperationState::addTypes(a2, Results, v11);
  v24 = v21;
  v25 = v18;
  v12 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v24, &Inputs, v12, (a2 + 2)) & 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  v22[0] = a1;
  if (((*(*a1 + 448))(a1, &v21, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIxEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_, v22) & 1) == 0)
  {
    return 0;
  }

  v7 = v21;
  if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v21))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  if (v8)
  {
    return 1;
  }

  v19 = "invalid kind of attribute specified";
  v20 = 259;
  (*(*a1 + 24))(v22, a1, v6, &v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v28;
      v13 = __p;
      if (v28 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v28 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v25;
    if (v25)
    {
      v15 = v26;
      v16 = v25;
      if (v26 != v25)
      {
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
        v16 = v25;
      }

      v26 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::tensor::GenerateOp::verifyInvariantsImpl(mlir::tensor::GenerateOp *this)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0 && (v3 = *(v2 + 68), v3))
  {
    v4 = 0;
    v5 = *(v2 + 72) + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0)
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v6 = *(v2 + 36);
    v7 = v2 - 16;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      return mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(*this, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), "body", 4, 0) & 1;
    }
  }

  return 0;
}

uint64_t mlir::tensor::GenerateOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = 0x400000000;
  v4 = operator new(0x18uLL);
  *v4 = v4;
  *(v4 + 1) = v4;
  *(v4 + 2) = 0;
  v19 = v4;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (((*(*a1 + 776))(a1, v4, 0, 0, 0) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = (*(*a1 + 32))(a1);
  mlir::impl::ensureRegionTerminator(v4, v6, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::GenerateOp>::buildTerminator);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v18))
  {
    goto LABEL_13;
  }

  v7 = v18;
  mlir::OperationState::addRegion(a2, &v19);
  v8 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v8, v9);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = v7;
  ++*(a2 + 72);
  if (v21)
  {
    v12 = v20;
    v13 = 32 * v21;
    while (((*(*a1 + 728))(a1, v12, IndexType, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v14 = 1;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    v14 = 0;
LABEL_14:
    v15 = v19;
    v19 = 0;
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = 1;
  v15 = v19;
  v19 = 0;
  if (v15)
  {
LABEL_15:
    mlir::Region::~Region(v15, v5);
    operator delete(v16);
  }

LABEL_16:
  if (v20 != v22)
  {
    free(v20);
  }

  return v14;
}

uint64_t mlir::tensor::InsertOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::tensor::InsertOp::verifyInvariantsImpl(mlir::tensor::InsertOp *this)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 68);
    if (v3 == 2)
    {
      goto LABEL_4;
    }

    if (mlir::tensor::InsertOp::verifyInvariantsImpl(*(v2 + 72) + 64, this, v3, v28))
    {
      return 0;
    }
  }

  else if (mlir::tensor::InsertOp::verifyInvariantsImpl(64, this, 0, v28))
  {
    return 0;
  }

  v2 = v28[0];
LABEL_4:
  v4 = *(v2 + 36);
  v5 = v2 - 16;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v8 = *(*(*(*this + 72) + 56) + 8);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) ^ v8) >= 8)
  {
    v26[0] = "failed to verify that result type matches type of dest";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v34;
        v14 = __p;
        if (v34 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v34 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_48;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_47;
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
      goto LABEL_46;
    }
  }

  else
  {
    v28[0] = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (mlir::TensorType::getElementType(v28) == (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v26[0] = "failed to verify that scalar type matches element type of dest";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v20 = __p;
      if (__p)
      {
        v21 = v34;
        v22 = __p;
        if (v34 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v34 = v20;
        operator delete(v22);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_48;
      }

      v23 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_47:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_48:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
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
LABEL_46:
      v17 = v31;
      goto LABEL_47;
    }
  }

  return result;
}

BOOL mlir::tensor::InsertOp::parse(uint64_t a1, uint64_t a2)
{
  v42[16] = *MEMORY[0x1E69E9840];
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v40 = v42;
  v41 = 0x400000000;
  v31[1] = 1;
  v32 = 0;
  v31[0] = &v32;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v36, 1) & 1) == 0)
  {
    goto LABEL_34;
  }

  v39 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v38) & 1) == 0)
  {
    goto LABEL_34;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v40, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  v38[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v38))
  {
    goto LABEL_34;
  }

  v5 = v38[0];
  v32 = v38[0];
  v30 = v38[0];
  v6 = *v38[0];
  if (*(*v38[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = (*(*a1 + 16))(a1);
    v29[16] = 257;
    (*(*a1 + 24))(v38, a1, v7, v29);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "'dest' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v8, &v30);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
    v11 = v40;
    if (v40 == v42)
    {
      return v10;
    }

    goto LABEL_36;
  }

  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v6 + 8);
    v14 = *(v6 + 16);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_22:
    v14 = 0;
    v15 = v13;
    goto LABEL_23;
  }

  mlir::arith::ExtUIOp::fold();
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_15:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
LABEL_23:
  if (v15 != &v13[2 * v14] && *v15 == v12)
  {
    v21 = v15[1];
  }

  else
  {
    v21 = 0;
  }

  v38[0] = v5;
  v38[1] = v21;
  mlir::ElementsAttr::isSplat(v38);
  v22 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v22, v23);
  mlir::OperationState::addTypes(a2, v31[0], 1);
  v38[0] = *v31[0];
  ElementType = mlir::TensorType::getElementType(v38);
  if ((*(*a1 + 728))(a1, v36, ElementType, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v31, v4, a2 + 16))
  {
    if (!v41)
    {
      v10 = 1;
      v11 = v40;
      if (v40 == v42)
      {
        return v10;
      }

      goto LABEL_36;
    }

    v26 = v40;
    v27 = 32 * v41;
    while (((*(*a1 + 728))(a1, v26, IndexType, a2 + 16) & 1) != 0)
    {
      v26 += 4;
      v10 = 1;
      v27 -= 32;
      if (!v27)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v10 = 0;
LABEL_35:
  v11 = v40;
  if (v40 != v42)
  {
LABEL_36:
    free(v11);
  }

  return v10;
}

uint64_t mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 72), 0, 0);
  }

  return a1;
}

BOOL mlir::tensor::InsertSliceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v16 = &v72;
      v17 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v17 = v77;
          v16 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v16 = &v72;
          v17 = v77;
        }
      }

      v18 = &v17[24 * v78];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v84;
      v22 = __p;
      if (v84 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v84 = v20;
      operator delete(v22);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v24 = v82;
    v25 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v23;
      operator delete(v25);
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

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
LABEL_76:
    v25 = v81;
    goto LABEL_77;
  }

  v88.var0 = "static_offsets";
  v88.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v71, v88);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 59;
      v28 = &v72;
      v29 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v29 = v77;
          v28 = (v77 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v28 = &v72;
          v29 = v77;
        }
      }

      v30 = &v29[24 * v78];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v78;
      if (v75)
      {
        v32 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
        v33 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v33 = v77;
            v32 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v32 = &v72;
            v33 = v77;
          }
        }

        v34 = &v33[24 * v78];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v84;
      v38 = __p;
      if (v84 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v84 = v36;
      operator delete(v38);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v39 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
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

    while (v39 != v23);
    goto LABEL_76;
  }

  *a1 = v9;
LABEL_8:
  v89.var0 = "static_sizes";
  v89.var1 = 12;
  v10 = mlir::DictionaryAttr::get(&v71, v89);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v10))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 57;
      v42 = &v72;
      v43 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v66 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v43 = v77;
          v42 = (v77 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v42 = &v72;
          v43 = v77;
        }
      }

      v44 = &v43[24 * v78];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v78;
      if (v75)
      {
        v46 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v11);
        v47 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v47 = v77;
            v46 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v46 = &v72;
            v47 = v77;
          }
        }

        v48 = &v47[24 * v78];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v84;
      v52 = __p;
      if (v84 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v84 = v50;
      operator delete(v52);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v53 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        operator delete[](v54);
      }
    }

    while (v53 != v23);
    goto LABEL_76;
  }

  a1[1] = v11;
LABEL_11:
  v90.var0 = "static_strides";
  v90.var1 = 14;
  v12 = mlir::DictionaryAttr::get(&v71, v90);
  if (v12)
  {
    v13 = v12;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v12))
    {
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 59;
        v56 = &v72;
        v57 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v68 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v57 = v77;
            v56 = (v77 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v56 = &v72;
            v57 = v77;
          }
        }

        v58 = &v57[24 * v78];
        v59 = *v56;
        *(v58 + 2) = *(v56 + 2);
        *v58 = v59;
        ++v78;
        if (v75)
        {
          v60 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v13);
          v61 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v61 = v77;
              v60 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v60 = &v72;
              v61 = v77;
            }
          }

          v62 = &v61[24 * v78];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v91.var0 = "operandSegmentSizes";
  v91.var1 = 19;
  v14 = mlir::DictionaryAttr::get(&v71, v91);
  if (!v14)
  {
    v92.var0 = "operand_segment_sizes";
    v92.var1 = 21;
    v14 = mlir::DictionaryAttr::get(&v71, v92);
    if (!v14)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 5, v14, a3, a4) & 1) != 0;
}

uint64_t mlir::tensor::InsertSliceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "static_offsets", 14, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "static_sizes", 12, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "static_strides", 14, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 5);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 19, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

unint64_t mlir::tensor::InsertSliceOp::computePropertiesHash(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = 0xB492B66FBE98F273 * a1[3];
  v11 = a1[4];
  v12 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v13 = __ROR8__(v10 - v11, 43) - 0x3C5A37A36834CED9 * *(a1 + 28) + __ROR8__(v12 ^ 0xFF51AFD7ED558CCDLL, 30);
  v14 = v10 + __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v12 + 20;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v24 = 0;
  v25 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) >> 47));
  v21[0] = v3;
  v21[1] = v6;
  v19 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v21, &v19, v22, v23, v9);
  v20 = v19;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v21, &v20, v16, v23, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v21, v20, v17, v23);
}

uint64_t mlir::tensor::InsertSliceOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 5);
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::InsertSliceOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v8 = result ? a4 : 0;
      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 5)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 3, result, 4 * v9);
          }
        }
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[1] = v7;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *v5 = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[2] = v11;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  return result;
}

void mlir::tensor::InsertSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 14, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 12, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 14, v7);
  }

  v8 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 5);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v8);
}

BOOL mlir::tensor::InsertSliceOp::readProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    v5 = operator new(0x30uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 28) = 0u;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 6)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                operator delete[](v12);
              }
            }

            while (v10 != v9);
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 5) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x30uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 28) = 0u;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v4 + 3, 5);
    (*(*a2 + 16))(a2, v6);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 1));
  (*(*a2 + 16))(a2, *(v4 + 2));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v4 + 6, 5);
  }

  return result;
}

void mlir::tensor::InsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18)
{
  v36 = a5;
  v37 = a4;
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v22 = *(a2 + 256);
  if (!v22)
  {
    v23 = operator new(0x30uLL);
    *v23 = 0u;
    v23[1] = 0u;
    *(v23 + 28) = 0u;
    *(a2 + 256) = v23;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v38;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v38;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v22 = *(a2 + 256);
  }

  *(v22 + 24) = 0x100000001;
  *(v22 + 32) = a7;
  *(v22 + 36) = a10;
  *(v22 + 40) = a12;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a13, a14);
  v25 = *(a2 + 256);
  if (!v25)
  {
    v26 = operator new(0x30uLL);
    *v26 = 0u;
    v26[1] = 0u;
    *(v26 + 28) = 0u;
    *(a2 + 256) = v26;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v38;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v38;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v25 = *(a2 + 256);
  }

  *v25 = DenseI64ArrayAttr;
  v27 = mlir::Builder::getDenseI64ArrayAttr(a1, a15, a16);
  v28 = *(a2 + 256);
  if (!v28)
  {
    v29 = operator new(0x30uLL);
    *v29 = 0u;
    v29[1] = 0u;
    *(v29 + 28) = 0u;
    *(a2 + 256) = v29;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v38;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v38;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v28 = *(a2 + 256);
  }

  *(v28 + 8) = v27;
  v30 = mlir::Builder::getDenseI64ArrayAttr(a1, a17, a18);
  v31 = v30;
  v32 = *(a2 + 256);
  if (v32)
  {
    *(v32 + 16) = v30;
    v33 = *(a2 + 72);
    if (v33 >= *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v33 + 1, 8);
      LODWORD(v33) = *(a2 + 72);
    }
  }

  else
  {
    v34 = operator new(0x30uLL);
    *v34 = 0u;
    v34[1] = 0u;
    *(v34 + 28) = 0u;
    *(a2 + 256) = v34;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v38;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v38;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 16) = v31;
    v33 = *(a2 + 72);
    if (v33 >= *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  *(*(a2 + 64) + 8 * v33) = a3;
  ++*(a2 + 72);
}

BOOL mlir::tensor::InsertSliceOp::verifyInvariantsImpl(mlir::tensor::InsertSliceOp *this)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v56[0] = "requires attribute 'static_offsets'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 != 1)
    {
      return v32;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v64;
      v35 = __p;
      if (v64 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v64 = v33;
      operator delete(v35);
    }

    v36 = v61;
    if (v61)
    {
      v37 = v62;
      v38 = v61;
      if (v62 == v61)
      {
        goto LABEL_82;
      }

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
LABEL_81:
      v38 = v61;
LABEL_82:
      v62 = v36;
      operator delete(v38);
    }

LABEL_83:
    if (v59 != &v60)
    {
      free(v59);
    }

    return v32;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v56[0] = "requires attribute 'static_sizes'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 != 1)
    {
      return v32;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v64;
      v43 = __p;
      if (v64 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v64 = v41;
      operator delete(v43);
    }

    v36 = v61;
    if (v61)
    {
      v44 = v62;
      v38 = v61;
      if (v62 == v61)
      {
        goto LABEL_82;
      }

      do
      {
        v46 = *--v44;
        v45 = v46;
        *v44 = 0;
        if (v46)
        {
          operator delete[](v45);
        }
      }

      while (v44 != v36);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v56[0] = "requires attribute 'static_strides'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 != 1)
    {
      return v32;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v64;
      v49 = __p;
      if (v64 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v64 = v47;
      operator delete(v49);
    }

    v36 = v61;
    if (v61)
    {
      v50 = v62;
      v38 = v61;
      if (v62 == v61)
      {
        goto LABEL_82;
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

      while (v50 != v36);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v58[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v4, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v58) & 1) == 0)
  {
    return 0;
  }

  v58[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v7, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v58) & 1) == 0)
  {
    return 0;
  }

  v58[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v58) & 1) == 0)
  {
    return 0;
  }

  v9 = *(*this + 44);
  v10 = *(*this + 16 * ((v9 >> 23) & 1) + 88);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 72);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12) & 1) != 0)
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      return 0;
    }
  }

LABEL_12:
  ODSOperands = mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  v18 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  v22 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  v26 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 4u);
  if (v27)
  {
    v28 = v27;
    v29 = v26 + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v29 += 32;
      if (!--v28)
      {
        goto LABEL_28;
      }
    }

    return 0;
  }

LABEL_28:
  v30 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v32 = 1;
  v54 = *(*(mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u) + 24) + 8);
  if (*(*this + 36))
  {
    v55 = *this - 16;
  }

  else
  {
    v55 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v55, 0) + 8) ^ v54) >= 8)
  {
    v56[0] = "failed to verify that expected result type to match dest type";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v58);
  }

  return v32;
}

BOOL mlir::tensor::InsertSliceOp::parse(uint64_t a1, void *a2)
{
  v63[16] = *MEMORY[0x1E69E9840];
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v48[0] = v49;
  v48[1] = 1;
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  v45[0] = v46;
  v45[1] = 1;
  v61 = v63;
  v62 = 0x400000000;
  v43 = 0;
  v44 = 0;
  v58 = v60;
  v59 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v41 = 0;
  v42 = 0;
  v40[0] = &v41;
  v40[1] = 1;
  v38 = 1;
  v39 = 0;
  v37 = &v39;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v49, 1) & 1) == 0)
  {
    goto LABEL_40;
  }

  v54 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v51) & 1) == 0)
  {
    goto LABEL_40;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v46, 1) & 1) == 0)
  {
    goto LABEL_40;
  }

  (*(*a1 + 40))(a1);
  v51 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v61, &v44, &v51, 0))
  {
    goto LABEL_40;
  }

  v6 = a2[32];
  if (!v6)
  {
    v7 = operator new(0x30uLL);
    *v7 = 0u;
    v7[1] = 0u;
    *(v7 + 28) = 0u;
    a2[32] = v7;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v51;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v51;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v6 = a2[32];
  }

  *v6 = v44;
  (*(*a1 + 40))(a1);
  v51 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v58, &v43, &v51, 0))
  {
    goto LABEL_40;
  }

  v8 = a2[32];
  if (!v8)
  {
    v9 = operator new(0x30uLL);
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 28) = 0u;
    a2[32] = v9;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v51;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v51;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v8 = a2[32];
  }

  *(v8 + 8) = v43;
  (*(*a1 + 40))(a1);
  v51 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v55, &v42, &v51, 0))
  {
    goto LABEL_40;
  }

  v10 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v10 + 16) = v42;
  v34[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_40;
  }

  v11 = a2[1];
  v51 = a1;
  v52 = v34;
  v53 = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v11, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v51))
  {
    goto LABEL_40;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_40;
  }

  v51 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v51))
  {
    goto LABEL_40;
  }

  v41 = v51;
  v54 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v51) & 1) == 0)
  {
    goto LABEL_40;
  }

  v51 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v51))
  {
    goto LABEL_40;
  }

  v39 = v51;
  v12 = v62;
  v13 = v59;
  v14 = v56;
  v15 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = v12;
  *(v15 + 36) = v13;
  *(v15 + 40) = v14;
  v33 = v37;
  if (!v38)
  {
LABEL_25:
    v19 = (*(*a1 + 32))(a1);
    IndexType = mlir::Builder::getIndexType(v19, v20);
    mlir::OperationState::addTypes(a2, v33, 1);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v48, v40, v4, (a2 + 2)) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v45, &v37, v5, (a2 + 2)))
    {
      if (v62)
      {
        v21 = v61;
        v22 = 32 * v62;
        while (((*(*a1 + 728))(a1, v21, IndexType, a2 + 2) & 1) != 0)
        {
          v21 += 32;
          v22 -= 32;
          if (!v22)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
LABEL_31:
        if (v59)
        {
          v23 = v58;
          v24 = 32 * v59;
          while (((*(*a1 + 728))(a1, v23, IndexType, a2 + 2) & 1) != 0)
          {
            v23 += 32;
            v24 -= 32;
            if (!v24)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_35:
          if (!v56)
          {
            v27 = 1;
            goto LABEL_41;
          }

          v25 = v55;
          v26 = 32 * v56;
          while (((*(*a1 + 728))(a1, v25, IndexType, a2 + 2) & 1) != 0)
          {
            v25 += 32;
            v27 = 1;
            v26 -= 32;
            if (!v26)
            {
              goto LABEL_41;
            }
          }
        }
      }
    }

LABEL_40:
    v27 = 0;
    goto LABEL_41;
  }

  v16 = 8 * v38;
  v17 = v37;
  while (1)
  {
    v36 = *v17;
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      break;
    }

    v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v36);
    v52 = v18;
    mlir::ElementsAttr::isSplat(&v51);
    ++v17;
    v16 -= 8;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  v29 = (*(*a1 + 16))(a1);
  v35 = 257;
  (*(*a1 + 24))(&v51, a1, v29, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v51, "'dest' must be ranked tensor of any type values, but got ");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v30, &v36);
  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
LABEL_41:
  if (v55 != v57)
  {
    free(v55);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  return v27;
}

BOOL mlir::tensor::PackOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v16 = &v72;
      v17 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v17 = v77;
          v16 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v16 = &v72;
          v17 = v77;
        }
      }

      v18 = &v17[24 * v78];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v84;
      v22 = __p;
      if (v84 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v84 = v20;
      operator delete(v22);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v24 = v82;
    v25 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v23;
      operator delete(v25);
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

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
LABEL_76:
    v25 = v81;
    goto LABEL_77;
  }

  v88.var0 = "inner_dims_pos";
  v88.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v71, v88);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 59;
      v28 = &v72;
      v29 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v29 = v77;
          v28 = (v77 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v28 = &v72;
          v29 = v77;
        }
      }

      v30 = &v29[24 * v78];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v78;
      if (v75)
      {
        v32 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
        v33 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v33 = v77;
            v32 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v32 = &v72;
            v33 = v77;
          }
        }

        v34 = &v33[24 * v78];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v84;
      v38 = __p;
      if (v84 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v84 = v36;
      operator delete(v38);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v39 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
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

    while (v39 != v23);
    goto LABEL_76;
  }

  *a1 = v9;
LABEL_8:
  v89.var0 = "outer_dims_perm";
  v89.var1 = 15;
  v10 = mlir::DictionaryAttr::get(&v71, v89);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v10))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 60;
      v42 = &v72;
      v43 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v66 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v43 = v77;
          v42 = (v77 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v42 = &v72;
          v43 = v77;
        }
      }

      v44 = &v43[24 * v78];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v78;
      if (v75)
      {
        v46 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v11);
        v47 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v47 = v77;
            v46 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v46 = &v72;
            v47 = v77;
          }
        }

        v48 = &v47[24 * v78];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v84;
      v52 = __p;
      if (v84 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v84 = v50;
      operator delete(v52);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v53 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        operator delete[](v54);
      }
    }

    while (v53 != v23);
    goto LABEL_76;
  }

  a1[1] = v11;
LABEL_11:
  v90.var0 = "static_inner_tiles";
  v90.var1 = 18;
  v12 = mlir::DictionaryAttr::get(&v71, v90);
  if (v12)
  {
    v13 = v12;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v12))
    {
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 63;
        v56 = &v72;
        v57 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v68 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v57 = v77;
            v56 = (v77 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v56 = &v72;
            v57 = v77;
          }
        }

        v58 = &v57[24 * v78];
        v59 = *v56;
        *(v58 + 2) = *(v56 + 2);
        *v58 = v59;
        ++v78;
        if (v75)
        {
          v60 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v13);
          v61 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v61 = v77;
              v60 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v60 = &v72;
              v61 = v77;
            }
          }

          v62 = &v61[24 * v78];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v91.var0 = "operandSegmentSizes";
  v91.var1 = 19;
  v14 = mlir::DictionaryAttr::get(&v71, v91);
  if (!v14)
  {
    v92.var0 = "operand_segment_sizes";
    v92.var1 = 21;
    v14 = mlir::DictionaryAttr::get(&v71, v92);
    if (!v14)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 4, v14, a3, a4) & 1) != 0;
}

uint64_t mlir::tensor::PackOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "inner_dims_pos", 14, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "outer_dims_perm", 15, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "static_inner_tiles", 18, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 19, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

uint64_t mlir::tensor::PackOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 17)
  {
    if (__n == 18)
    {
      if (!memcmp(__s1, "static_inner_tiles", 0x12uLL))
      {
        return a2[2];
      }
    }

    else if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);
    }

    return 0;
  }

  if (__n != 14)
  {
    if (__n == 15 && !memcmp(__s1, "outer_dims_perm", 0xFuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (*__s1 != 0x69645F72656E6E69 || *(__s1 + 6) != 0x736F705F736D6964)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::PackOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 <= 17)
  {
    if (a3 == 14)
    {
      if (*__s1 == 0x69645F72656E6E69 && *(__s1 + 6) == 0x736F705F736D6964)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          *v5 = v11;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 15)
    {
      result = memcmp(__s1, "outer_dims_perm", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          v5[1] = v6;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }
  }

  else if (a3 == 18)
  {
    result = memcmp(__s1, "static_inner_tiles", 0x12uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[2] = v7;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 3, result, 4 * v9);
          }
        }
      }
    }
  }

  return result;
}

void mlir::tensor::PackOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inner_dims_pos", 14, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "outer_dims_perm", 15, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "static_inner_tiles", 18, v7);
  }

  v8 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v8);
}

BOOL mlir::tensor::PackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "inner_dims_pos", 0xE, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v9, "outer_dims_perm", 0xF, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v10, "static_inner_tiles", 0x12, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::PackOp::readProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, a2[32]))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 4) = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::tensor::PackOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3))
    {
      return 0;
    }
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 5)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                operator delete[](v12);
              }
            }

            while (v10 != v9);
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 4) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::PackOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (((*(*a1 + 56))(a1, &v37) & 1) == 0)
  {
    return 0;
  }

  v4 = v37;
  if (!v37)
  {
    return 1;
  }

  v5 = mlir::detail::DenseArrayAttrImpl<long long>::classof(v37);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v36[16] = 257;
  (*(*a1 + 16))(&v42, a1, v36);
  if (v42)
  {
    LODWORD(v38) = 3;
    v39 = "expected ";
    v40 = 9;
    v8 = &v38;
    v9 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v38 && v44 + 24 * v45 > &v38)
      {
        v33 = &v38 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v9 = v44;
        v8 = (v44 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v8 = &v38;
        v9 = v44;
      }
    }

    v10 = &v9[24 * v45];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v45;
  }

  v38 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int64_t>]";
  v39 = 91;
  v12 = llvm::StringRef::find(&v38, "DesiredTypeName = ", 0x12uLL, 0);
  if (v42)
  {
    if (v39 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v39;
    }

    v14 = 18;
    if (v39 - v13 < 0x12)
    {
      v14 = v39 - v13;
    }

    v15 = v39 - v13 - v14;
    if (v15 >= v15 - 1)
    {
      --v15;
    }

    v41 = 261;
    v38 += v13 + v14;
    v39 = v15;
    mlir::Diagnostic::operator<<(&v43, &v38);
    if (v42)
    {
      LODWORD(v38) = 3;
      v39 = ", but got: ";
      v40 = 11;
      v16 = &v38;
      v17 = v44;
      if (v45 >= v46)
      {
        if (v44 <= &v38 && v44 + 24 * v45 > &v38)
        {
          v34 = &v38 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
          v17 = v44;
          v16 = (v44 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
          v16 = &v38;
          v17 = v44;
        }
      }

      v18 = &v17[24 * v45];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v45;
      if (v42)
      {
        v20 = &v38;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, v37);
        v21 = v44;
        if (v45 >= v46)
        {
          if (v44 <= &v38 && v44 + 24 * v45 > &v38)
          {
            v35 = &v38 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v21 = v44;
            v20 = (v44 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v20 = &v38;
            v21 = v44;
          }
        }

        v22 = &v21[24 * v45];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v45;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
  v24 = result;
  if (v42)
  {
    mlir::InFlightDiagnostic::report(&v42);
    result = v24;
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
      result = v24;
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
      result = v24;
    }

    v28 = v48;
    if (v48)
    {
      v29 = v49;
      v30 = v48;
      if (v49 != v48)
      {
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
        v30 = v48;
      }

      v49 = v28;
      operator delete(v30);
      result = v24;
    }

    if (v44 != v47)
    {
      free(v44);
      return v24;
    }
  }

  return result;
}

uint64_t mlir::tensor::PackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 3, 4);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 16))(a2, *(v5 + 2));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 6, 4);
  }

  return result;
}

BOOL mlir::tensor::PackOp::verifyInvariantsImpl(mlir::tensor::PackOp *this)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v55[0] = "requires attribute 'inner_dims_pos'";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 != 1)
    {
      return v16;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v63;
      v19 = __p;
      if (v63 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v63 = v17;
      operator delete(v19);
    }

    v20 = v60;
    if (v60)
    {
      v21 = v61;
      v22 = v60;
      if (v61 == v60)
      {
        goto LABEL_45;
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
LABEL_44:
      v22 = v60;
LABEL_45:
      v61 = v20;
      operator delete(v22);
    }

LABEL_46:
    if (v58 != &v59)
    {
      free(v58);
    }

    return v16;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v55[0] = "requires attribute 'static_inner_tiles'";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 != 1)
    {
      return v16;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v63;
      v27 = __p;
      if (v63 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v63 = v25;
      operator delete(v27);
    }

    v20 = v60;
    if (v60)
    {
      v28 = v61;
      v22 = v60;
      if (v61 == v60)
      {
        goto LABEL_45;
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

      while (v28 != v20);
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v8 = *(v4 + 8);
  v57[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "outer_dims_perm", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v57) & 1) == 0)
  {
    return 0;
  }

  v57[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "inner_dims_pos", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v57) & 1) == 0)
  {
    return 0;
  }

  v57[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v7, "static_inner_tiles", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v57) & 1) == 0)
  {
    return 0;
  }

  v54 = 0;
  v9 = *(*this + 44);
  v10 = *(*this + 16 * ((v9 >> 23) & 1) + 88);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 72);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_8:
      v12 = 0;
      v13 = v11 + 24;
      while (1)
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v54 = v12 + 1;
        if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(v14, v15 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12) & 1) == 0)
        {
          return 0;
        }

        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_50;
        }
      }
    }
  }

  LODWORD(v12) = 0;
LABEL_50:
  ODSOperands = mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u);
  if (v32)
  {
    v33 = v32;
    v34 = ODSOperands + 24;
    while (1)
    {
      v35 = *this;
      v36 = *(*v34 + 8);
      v37 = v12 + 1;
      v54 = v12 + 1;
      if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(v35, v36 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12) & 1) == 0)
      {
        return 0;
      }

      v34 += 32;
      LODWORD(v12) = v12 + 1;
      if (!--v33)
      {
        goto LABEL_56;
      }
    }
  }

  v37 = v12;
LABEL_56:
  mlir::memref::ReinterpretCastOp::getODSOperands(this, 2u);
  v39 = v38;
  if (v38 > 1)
  {
    v55[0] = "operand group starting at #";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v57, &v54);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v40, " requires 0 or 1 element, but found ");
    v53 = v39;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v41, &v53);
LABEL_58:
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v57);
    return v16;
  }

  v43 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 3u);
  if (v44)
  {
    v45 = v44;
    v46 = v37 + v39;
    v47 = v43 + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v47 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v46) & 1) != 0)
    {
      ++v46;
      v47 += 32;
      if (!--v45)
      {
        goto LABEL_63;
      }
    }

    return 0;
  }

LABEL_63:
  v48 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v16 = 1;
  v51 = *(*(mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u) + 24) + 8);
  if (*(*this + 36))
  {
    v52 = *this - 16;
  }

  else
  {
    v52 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) ^ v51) >= 8)
  {
    v55[0] = "failed to verify that result type matches type of dest";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    v42 = v57;
    goto LABEL_58;
  }

  return v16;
}

uint64_t *mlir::RewritePatternSet::add<mlir::tensor::PackOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "tensor.pack", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B0A6B8;
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

BOOL mlir::tensor::PackOp::parse(void *a1, void *a2)
{
  v60[16] = *MEMORY[0x1E69E9840];
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v46[0] = v47;
  v46[1] = 1;
  v58 = v60;
  v59 = 0x400000000;
  v56[0] = &v57;
  v56[1] = 0x100000000;
  v44 = 0;
  v45 = 0;
  v53 = v55;
  v54 = 0x400000000;
  v43 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  v38[1] = 1;
  v39 = 0;
  v37 = 0;
  v38[0] = &v39;
  v36[0] = &v37;
  v36[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v47, 1) & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((*(*a1 + 408))(a1, "padding_value", 13))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_50;
    }

    v5 = (*(*a1 + 40))(a1);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v6 = (*(*a1 + 712))(a1, &v49, 1);
    if ((v6 & 0x100) != 0)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_50;
      }

      v7 = &v49;
      v8 = v58;
      if (v59 >= HIDWORD(v59))
      {
        if (v58 <= &v49 && &v58[32 * v59] > &v49)
        {
          v32 = &v49 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 32);
          v8 = v58;
          v7 = &v58[v32];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 32);
          v7 = &v49;
          v8 = v58;
        }
      }

      v9 = &v8[32 * v59];
      v10 = *(v7 + 1);
      *v9 = *v7;
      *(v9 + 1) = v10;
      LODWORD(v59) = v59 + 1;
    }

    if (((*(*a1 + 104))(a1) & 1) == 0)
    {
      goto LABEL_50;
    }

    v49 = 0;
    v11 = (*(*a1 + 552))(a1, &v49);
    if ((v11 & 0x100) != 0)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_50;
      }

      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v56, v49);
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(*a1 + 408))(a1, "outer_dims_perm", 15))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v45, 0))
    {
      goto LABEL_50;
    }

    if (v45)
    {
      v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
      *(v12 + 8) = v45;
    }
  }

  v52 = 257;
  if (((*(*a1 + 400))(a1, "inner_dims_pos", 14, &v49) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v44, 0))
  {
    goto LABEL_50;
  }

  if (v44)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
    *v13 = v44;
  }

  v52 = 257;
  if (((*(*a1 + 400))(a1, "inner_tiles", 11, &v49) & 1) == 0)
  {
    goto LABEL_50;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_50;
  }

  (*(*a1 + 40))(a1);
  v49 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v53, &v43, &v49, 0))
  {
    goto LABEL_50;
  }

  v14 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v14 + 16) = v43;
  v52 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v49) & 1) == 0)
  {
    goto LABEL_50;
  }

  v15 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    goto LABEL_50;
  }

  v33[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_50;
  }

  v16 = a2[1];
  v49 = a1;
  v50 = v33;
  v51 = a2;
  if (!mlir::tensor::PackOp::verifyInherentAttrs(v16, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v49))
  {
    goto LABEL_50;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_50;
  }

  v49 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v49))
  {
    goto LABEL_50;
  }

  v39 = v49;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_50;
  }

  v49 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v49))
  {
    goto LABEL_50;
  }

  v37 = v49;
  v17 = v59;
  v18 = v54;
  v19 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v19 + 24) = 0x100000001;
  *(v19 + 32) = v17;
  *(v19 + 36) = v18;
  v35 = v37;
  if (*(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = (*(*a1 + 16))(a1);
    v34 = 257;
    (*(*a1 + 24))(&v49, a1, v20, v33);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v49, "'dest' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v21, &v35);
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
    v24 = v53;
    if (v53 == v55)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v49 = llvm::cast<mlir::ShapedType,mlir::Type>(&v35);
  v50 = v25;
  mlir::ElementsAttr::isSplat(&v49);
  v26 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v26, v27);
  mlir::OperationState::addTypes(a2, &v37, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v46, v38, v4, (a2 + 2)) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v36, v15, (a2 + 2)) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v58, v56, v5, (a2 + 2)) & 1) == 0)
  {
    goto LABEL_50;
  }

  if (!v54)
  {
    v23 = 1;
    v24 = v53;
    if (v53 == v55)
    {
      goto LABEL_53;
    }

LABEL_52:
    free(v24);
    goto LABEL_53;
  }

  v29 = v53;
  v30 = 32 * v54;
  while (((*(*a1 + 728))(a1, v29, IndexType, a2 + 2) & 1) != 0)
  {
    v29 += 32;
    v23 = 1;
    v30 -= 32;
    if (!v30)
    {
      goto LABEL_51;
    }
  }

LABEL_50:
  v23 = 0;
LABEL_51:
  v24 = v53;
  if (v53 != v55)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (v56[0] != &v57)
  {
    free(v56[0]);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  return v23;
}

BOOL mlir::tensor::PadOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v26 = &v72;
      v27 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v27 = v77;
          v26 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v26 = &v72;
          v27 = v77;
        }
      }

      v28 = &v27[24 * v78];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v84;
      v32 = __p;
      if (v84 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v84 = v30;
      operator delete(v32);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v33 = v82;
    v23 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v21;
      operator delete(v23);
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
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
    goto LABEL_76;
  }

  v88.var0 = "nofold";
  v88.var1 = 6;
  v8 = mlir::DictionaryAttr::get(&v71, v88);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 51;
        v10 = &v72;
        v11 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v65 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v11 = v77;
            v10 = (v77 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v10 = &v72;
            v11 = v77;
          }
        }

        v12 = &v11[24 * v78];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v78;
        if (v75)
        {
          v14 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
          v15 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v66 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v15 = v77;
              v14 = (v77 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v14 = &v72;
              v15 = v77;
            }
          }

          v16 = &v15[24 * v78];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v84;
        v20 = __p;
        if (v84 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v84 = v18;
        operator delete(v20);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_78;
      }

      v22 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_77;
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
      goto LABEL_76;
    }

    *a1 = v8;
  }

  v89.var0 = "static_high";
  v89.var1 = 11;
  v36 = mlir::DictionaryAttr::get(&v71, v89);
  if (v36)
  {
    v37 = v36;
    if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 56;
      v42 = &v72;
      v43 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v67 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v43 = v77;
          v42 = (v77 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v42 = &v72;
          v43 = v77;
        }
      }

      v44 = &v43[24 * v78];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v78;
      if (v75)
      {
        v46 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v37);
        v47 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v47 = v77;
            v46 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v46 = &v72;
            v47 = v77;
          }
        }

        v48 = &v47[24 * v78];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v84;
      v52 = __p;
      if (v84 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v84 = v50;
      operator delete(v52);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v53 = v82;
    v23 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        operator delete[](v54);
      }
    }

    while (v53 != v21);
LABEL_76:
    v23 = v81;
    goto LABEL_77;
  }

LABEL_49:
  v90.var0 = "static_low";
  v90.var1 = 10;
  v38 = mlir::DictionaryAttr::get(&v71, v90);
  if (v38)
  {
    v39 = v38;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v38))
    {
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 55;
        v56 = &v72;
        v57 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v68 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v57 = v77;
            v56 = (v77 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v56 = &v72;
            v57 = v77;
          }
        }

        v58 = &v57[24 * v78];
        v59 = *v56;
        *(v58 + 2) = *(v56 + 2);
        *v58 = v59;
        ++v78;
        if (v75)
        {
          v60 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v39);
          v61 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v61 = v77;
              v60 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v60 = &v72;
              v61 = v77;
            }
          }

          v62 = &v61[24 * v78];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v91.var0 = "operandSegmentSizes";
  v91.var1 = 19;
  v40 = mlir::DictionaryAttr::get(&v71, v91);
  if (!v40)
  {
    v92.var0 = "operand_segment_sizes";
    v92.var1 = 21;
    v40 = mlir::DictionaryAttr::get(&v71, v92);
    if (!v40)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 3, v40, a3, a4) & 1) != 0;
}

uint64_t mlir::tensor::PadOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "nofold", 6, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "static_high", 11, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "static_low", 10, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 3);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 19, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

uint64_t mlir::tensor::PadOp::getInherentAttr(uint64_t *a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "static_high", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 3);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 3);
    }

    return 0;
  }

  if (__n != 6)
  {
    if (__n == 10 && !memcmp(__s1, "static_low", 0xAuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (*__s1 != 1868984174 || *(__s1 + 2) != 25708)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::PadOp::setInherentAttr(uint64_t result, _WORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 <= 10)
  {
    if (a3 == 6)
    {
      if (*__s1 == 1868984174 && __s1[2] == 25708)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          *result = v11;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 10)
    {
      result = memcmp(__s1, "static_low", 0xAuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          v5[2] = v6;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  else if (a3 == 11)
  {
    result = memcmp(__s1, "static_high", 0xBuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[1] = v7;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 3, result, 4 * v9);
          }
        }
      }
    }
  }

  return result;
}

void mlir::tensor::PadOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "nofold", 6, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_high", 11, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "static_low", 10, v7);
  }

  v8 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 3);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v8);
}

BOOL mlir::tensor::PadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "nofold", 6, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v9, "static_high", 0xB, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v10, "static_low", 0xA, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::PadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 8) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v17;
    {
      mlir::tensor::PadOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 4)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                operator delete[](v12);
              }
            }

            while (v10 != v9);
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::PadOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::tensor::PadOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 3, 3);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 16))(a2, *(v5 + 1));
  (*(*a2 + 16))(a2, *(v5 + 2));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 6, 3);
  }

  return result;
}

uint64_t mlir::tensor::PadOp::verifyInvariantsImpl(mlir::tensor::PadOp *this)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = v1 + 64;
  if (v4)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      *v28 = *this;
      if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_low", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      *v28 = *this;
      if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v4, "static_high", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      *v28 = *this;
      if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "nofold", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      mlir::tensor::PadOp::verifyInvariantsImpl();
      return v28[0];
    }

    v26[0] = "requires attribute 'static_low'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (*v28)
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v34;
        v18 = __p;
        if (v34 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v34 = v16;
        operator delete(v18);
      }

      v19 = v31;
      if (v31)
      {
        v20 = v32;
        v21 = v31;
        if (v32 != v31)
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
          v21 = v31;
        }

        v32 = v19;
        operator delete(v21);
      }

      v24 = v29;
      if (v29 != v30)
      {
LABEL_46:
        free(v24);
      }
    }
  }

  else
  {
    v26[0] = "requires attribute 'static_high'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (*v28)
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (v31)
      {
        v12 = v32;
        v13 = v31;
        if (v32 != v31)
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
          v13 = v31;
        }

        v32 = v11;
        operator delete(v13);
      }

      v24 = v29;
      if (v29 != v30)
      {
        goto LABEL_46;
      }
    }
  }

  return v7;
}

uint64_t mlir::tensor::PadOp::parse(uint64_t a1, uint64_t *a2)
{
  v50[16] = *MEMORY[0x1E69E9840];
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  v48 = v50;
  v49 = 0x400000000;
  v38 = 0;
  v39 = 0;
  v45 = v47;
  v46 = 0x400000000;
  v4 = operator new(0x18uLL);
  *v4 = v4;
  *(v4 + 1) = v4;
  *(v4 + 2) = 0;
  v36 = 0;
  v37 = v4;
  v35[0] = &v36;
  v35[1] = 1;
  v34 = 0;
  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((*(*a1 + 408))(a1, "nofold", 6))
  {
    v7 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v7, v8);
    v10 = a2[32];
    if (!v10)
    {
      v11 = operator new(0x28uLL);
      *v11 = 0u;
      v11[1] = 0u;
      *(v11 + 8) = 0;
      a2[32] = v11;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v43;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v43;
      {
        mlir::tensor::PadOp::build();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v10 = a2[32];
    }

    *v10 = UnitAttr;
  }

  v44 = 257;
  if (((*(*a1 + 400))(a1, "low", 3, v43) & 1) == 0)
  {
    goto LABEL_37;
  }

  (*(*a1 + 40))(a1);
  v43[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v48, &v39, v43, 0))
  {
    goto LABEL_37;
  }

  v12 = a2[32];
  if (!v12)
  {
    v13 = operator new(0x28uLL);
    *v13 = 0u;
    v13[1] = 0u;
    *(v13 + 8) = 0;
    a2[32] = v13;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v43;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v43;
    {
      mlir::tensor::PadOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v12 = a2[32];
  }

  *(v12 + 16) = v39;
  v44 = 257;
  if (((*(*a1 + 400))(a1, "high", 4, v43) & 1) == 0)
  {
    goto LABEL_37;
  }

  (*(*a1 + 40))(a1);
  v43[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v45, &v38, v43, 0))
  {
    goto LABEL_37;
  }

  v14 = a2[32];
  if (!v14)
  {
    v15 = operator new(0x28uLL);
    *v15 = 0u;
    v15[1] = 0u;
    *(v15 + 8) = 0;
    a2[32] = v15;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v43;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v43;
    {
      mlir::tensor::PadOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v14 = a2[32];
  }

  v16 = v37;
  *(v14 + 8) = v38;
  if (((*(*a1 + 776))(a1, v16, 0, 0, 0) & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = (*(*a1 + 32))(a1);
  mlir::impl::ensureRegionTerminator(v16, v17, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::PadOp>::buildTerminator);
  v33 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_37;
  }

  v18 = a2[1];
  v43[0] = a1;
  v43[1] = &v33;
  v43[2] = a2;
  if (!mlir::tensor::PadOp::verifyInherentAttrs(v18, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v43))
  {
    goto LABEL_37;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_37;
  }

  v43[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v43))
  {
    goto LABEL_37;
  }

  v36 = v43[0];
  v44 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v43) & 1) == 0)
  {
    goto LABEL_37;
  }

  v43[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v43))
  {
    goto LABEL_37;
  }

  v34 = v43[0];
  mlir::OperationState::addRegion(a2, &v37);
  v19 = v49;
  v20 = v46;
  v21 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a2);
  v21[6] = 1;
  v21[7] = v19;
  v21[8] = v20;
  v22 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v22, v23);
  mlir::OperationState::addTypes(a2, &v34, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v35, v5, (a2 + 2)) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v49)
  {
    v25 = v48;
    v26 = 32 * v49;
    while (((*(*a1 + 728))(a1, v25, IndexType, a2 + 2) & 1) != 0)
    {
      v25 += 32;
      v26 -= 32;
      if (!v26)
      {
        goto LABEL_32;
      }
    }

LABEL_37:
    v29 = 0;
LABEL_38:
    v30 = v37;
    v37 = 0;
    if (v30)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_32:
  if (v46)
  {
    v27 = v45;
    v28 = 32 * v46;
    while (((*(*a1 + 728))(a1, v27, IndexType, a2 + 2) & 1) != 0)
    {
      v27 += 32;
      v29 = 1;
      v28 -= 32;
      if (!v28)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  v29 = 1;
  v30 = v37;
  v37 = 0;
  if (v30)
  {
LABEL_39:
    mlir::Region::~Region(v30, v6);
    operator delete(v31);
  }

LABEL_40:
  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v29;
}

BOOL mlir::tensor::ParallelInsertSliceOp::readProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    v5 = operator new(0x30uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 28) = 0u;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::tensor::ParallelInsertSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 6)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                operator delete[](v12);
              }
            }

            while (v10 != v9);
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 5) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x30uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 28) = 0u;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::ParallelInsertSliceOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl(mlir::tensor::ParallelInsertSliceOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

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
LABEL_56:
      v14 = v38;
LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          operator delete[](v21);
        }
      }

      while (v20 != v12);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::parse(uint64_t a1, void *a2)
{
  v52[16] = *MEMORY[0x1E69E9840];
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v39[0] = v40;
  v39[1] = 1;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36[0] = v37;
  v36[1] = 1;
  v50 = v52;
  v51 = 0x400000000;
  v34 = 0;
  v35 = 0;
  v47 = v49;
  v48 = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  v32 = 0;
  v33 = 0;
  v31[0] = &v32;
  v31[1] = 1;
  v29[1] = 1;
  v30 = 0;
  v29[0] = &v30;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v40, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v43 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v42) & 1) == 0)
  {
    goto LABEL_36;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v37, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*a1 + 40))(a1);
  v42[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v50, &v35, v42, 0))
  {
    goto LABEL_36;
  }

  v6 = a2[32];
  if (!v6)
  {
    v7 = operator new(0x30uLL);
    *v7 = 0u;
    v7[1] = 0u;
    *(v7 + 28) = 0u;
    a2[32] = v7;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v42;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v42;
    {
      mlir::tensor::ParallelInsertSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v6 = a2[32];
  }

  *v6 = v35;
  (*(*a1 + 40))(a1);
  v42[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v47, &v34, v42, 0))
  {
    goto LABEL_36;
  }

  v8 = a2[32];
  if (!v8)
  {
    v9 = operator new(0x30uLL);
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 28) = 0u;
    a2[32] = v9;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v42;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v42;
    {
      mlir::tensor::ParallelInsertSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v8 = a2[32];
  }

  *(v8 + 8) = v34;
  (*(*a1 + 40))(a1);
  v42[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v44, &v33, v42, 0))
  {
    goto LABEL_36;
  }

  v10 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v10 + 16) = v33;
  v28 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_36;
  }

  v11 = a2[1];
  v42[0] = a1;
  v42[1] = &v28;
  v42[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v11, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v42))
  {
    goto LABEL_36;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v42[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v42))
  {
    goto LABEL_36;
  }

  v32 = v42[0];
  v43 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v42) & 1) == 0)
  {
    goto LABEL_36;
  }

  v42[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v42))
  {
    goto LABEL_36;
  }

  v30 = v42[0];
  v12 = v51;
  v13 = v48;
  v14 = v45;
  v15 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = v12;
  *(v15 + 36) = v13;
  *(v15 + 40) = v14;
  v16 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v16, v17);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v39, v31, v4, (a2 + 2)) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v36, v29, v5, (a2 + 2)) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v51)
  {
    v19 = v50;
    v20 = 32 * v51;
    while (((*(*a1 + 728))(a1, v19, IndexType, a2 + 2) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_27;
      }
    }

LABEL_36:
    v25 = 0;
LABEL_37:
    v26 = v44;
    if (v44 != v46)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_27:
  if (v48)
  {
    v21 = v47;
    v22 = 32 * v48;
    while (((*(*a1 + 728))(a1, v21, IndexType, a2 + 2) & 1) != 0)
    {
      v21 += 32;
      v22 -= 32;
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

LABEL_31:
  if (v45)
  {
    v23 = v44;
    v24 = 32 * v45;
    while (((*(*a1 + 728))(a1, v23, IndexType, a2 + 2) & 1) != 0)
    {
      v23 += 32;
      v25 = 1;
      v24 -= 32;
      if (!v24)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  v25 = 1;
  v26 = v44;
  if (v44 != v46)
  {
LABEL_38:
    free(v26);
  }

LABEL_39:
  if (v47 != v49)
  {
    free(v47);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  return v25;
}

uint64_t mlir::tensor::RankOp::verifyInvariantsImpl(mlir::tensor::RankOp *this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 36))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::RankOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v10))
  {
    return 0;
  }

  v12 = v10;
  v5 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = IndexType;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v11, v4, a2 + 16) & 1;
}

uint64_t mlir::tensor::ReshapeOp::verifyInvariantsImpl(mlir::tensor::ReshapeOp *this)
{
  v95 = *MEMORY[0x1E69E9840];
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    v78 = 261;
    v76 = "operand";
    v77 = 7;
    mlir::Operation::emitOpError(v2, &v76, &v83);
    if (v83)
    {
      LODWORD(v80) = 3;
      v81 = " #";
      v82 = 2;
      v5 = &v80;
      v6 = v85;
      if (v86 >= v87)
      {
        if (v85 <= &v80 && v85 + 24 * v86 > &v80)
        {
          v69 = &v80 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v6 = v85;
          v5 = (v85 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v5 = &v80;
          v6 = v85;
        }
      }

      v7 = &v6[24 * v86];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v86;
      if (v83)
      {
        LODWORD(v80) = 5;
        v81 = 1;
        v10 = &v80;
        v11 = v85;
        if (v9 >= v87)
        {
          if (v85 <= &v80 && v85 + 24 * v9 > &v80)
          {
            v70 = &v80 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v9 + 1, 24);
            v11 = v85;
            v10 = (v85 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v9 + 1, 24);
            v10 = &v80;
            v11 = v85;
          }
        }

        v12 = &v11[24 * v86];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v86;
        if (v83)
        {
          LODWORD(v80) = 3;
          v81 = " must be 1D tensor of signless integer or index values, but got ";
          v82 = 64;
          v15 = &v80;
          v16 = v85;
          if (v14 >= v87)
          {
            if (v85 <= &v80 && v85 + 24 * v14 > &v80)
            {
              v73 = &v80 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v14 + 1, 24);
              v16 = v85;
              v15 = (v85 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v14 + 1, 24);
              v15 = &v80;
              v16 = v85;
            }
          }

          v17 = &v16[24 * v86];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v86;
          if (v83)
          {
            v19 = &v80;
            mlir::DiagnosticArgument::DiagnosticArgument(&v80, v3);
            v20 = v85;
            if (v86 >= v87)
            {
              if (v85 <= &v80 && v85 + 24 * v86 > &v80)
              {
                v74 = &v80 - v85;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
                v20 = v85;
                v19 = (v85 + v74);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
                v19 = &v80;
                v20 = v85;
              }
            }

            v21 = &v20[24 * v86];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v86;
          }
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
    if (v83)
    {
      mlir::InFlightDiagnostic::report(&v83);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v92;
        v26 = __p;
        if (v92 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v92 = v24;
        operator delete(v26);
      }

      v27 = v89;
      if (v89)
      {
        v28 = v90;
        v29 = v89;
        if (v90 != v89)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              operator delete[](v30);
            }
          }

          while (v28 != v27);
          v29 = v89;
        }

        v90 = v27;
        operator delete(v29);
      }

      if (v85 != v88)
      {
        free(v85);
      }
    }

    if (v23)
    {
      goto LABEL_42;
    }

    return 0;
  }

  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v4 + 8);
    v34 = *(v4 + 16);
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v44 = v4;
    mlir::arith::ExtUIOp::fold();
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v44 + 8);
    v34 = *(v44 + 16);
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
  if (v35 == &v33[2 * v34] || *v35 != v32)
  {
LABEL_62:
    v83 = v3;
    v84 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v83))
    {
      goto LABEL_3;
    }

    goto LABEL_65;
  }

  v45 = v35[1];
  v83 = v3;
  v84 = v45;
  if (!mlir::CallOpInterface::getArgOperands(&v83))
  {
    goto LABEL_3;
  }

LABEL_65:
  v46 = *v3;
  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v46 + 8);
    v49 = *(v46 + 16);
    if (!v49)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v75 = v46;
    mlir::arith::ExtUIOp::fold();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v75 + 8);
    v49 = *(v75 + 16);
    if (!v49)
    {
      goto LABEL_77;
    }
  }

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
  if (v50 == &v48[2 * v49] || *v50 != v47)
  {
LABEL_77:
    v76 = v3;
    v77 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v76);
    if (v56 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_80;
  }

  v57 = v50[1];
  v76 = v3;
  v77 = v57;
  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v58 != 1)
  {
    goto LABEL_3;
  }

LABEL_80:
  v59 = *v3;
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v71 = v59;
    mlir::arith::ExtUIOp::fold();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v71 + 8);
    v62 = *(v71 + 16);
    if (!v62)
    {
      goto LABEL_94;
    }
  }

  v63 = v61;
  v64 = v62;
  do
  {
    v65 = v64 >> 1;
    v66 = &v63[2 * (v64 >> 1)];
    v68 = *v66;
    v67 = v66 + 2;
    v64 += ~(v64 >> 1);
    if (v68 < v60)
    {
      v63 = v67;
    }

    else
    {
      v64 = v65;
    }
  }

  while (v64);
  if (v63 != &v61[2 * v62] && *v63 == v60)
  {
    v72 = v63[1];
    goto LABEL_96;
  }

LABEL_94:
  v72 = 0;
LABEL_96:
  v80 = v3;
  v81 = v72;
  isSplat = mlir::ElementsAttr::isSplat(&v80);
  if (!mlir::Type::isSignlessInteger(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_3;
  }

LABEL_42:
  if (*(*this + 36))
  {
    v41 = *this - 16;
  }

  else
  {
    v41 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::tensor::ReshapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10))
  {
    return 0;
  }

  v11[0] = mlir::FunctionType::getInputs(&v10);
  v11[1] = v4;
  Results = mlir::FunctionType::getResults(&v10);
  mlir::OperationState::addTypes(a2, Results, v6);
  v9[0] = v15;
  v9[1] = v12;
  v7 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v9, v11, v7, a2 + 16) & 1;
}

uint64_t mlir::tensor::ScatterOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v28 = &v59;
      v29 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v29 = v63;
          v28 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v28 = &v59;
          v29 = v63;
        }
      }

      v30 = &v29[24 * v64];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
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

    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
    }

    v23 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v35 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v23);
    goto LABEL_68;
  }

  v74.var0 = "scatter_dims";
  v74.var1 = 12;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    v9 = v8;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
    {
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 57;
        v38 = &v59;
        v39 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v39 = v63;
            v38 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v38 = &v59;
            v39 = v63;
          }
        }

        v40 = &v39[24 * v64];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v64;
        if (v62[0])
        {
          v42 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v43 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v43 = v63;
              v42 = (v63 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v42 = &v59;
              v43 = v63;
            }
          }

          v44 = &v43[24 * v64];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
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

      v46 = __p;
      if (__p)
      {
        v47 = v70;
        v48 = __p;
        if (v70 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v70 = v46;
        operator delete(v48);
      }

      v23 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v49 = v68;
      v25 = v67;
      if (v68 == v67)
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

      while (v49 != v23);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v75.var0 = "unique";
  v75.var1 = 6;
  v10 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 51;
    v12 = &v59;
    v13 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v13 = v63;
        v12 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v12 = &v59;
        v13 = v63;
      }
    }

    v14 = &v13[24 * v64];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v64;
    if (v62[0])
    {
      v16 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v11);
      v17 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v17 = v63;
          v16 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v16 = &v59;
          v17 = v63;
        }
      }

      v18 = &v17[24 * v64];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
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

  v20 = __p;
  if (__p)
  {
    v21 = v70;
    v22 = __p;
    if (v70 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v70 = v20;
    operator delete(v22);
  }

  v23 = v67;
  if (v67)
  {
    v24 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

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
LABEL_68:
    v25 = v67;
LABEL_69:
    v68 = v23;
    operator delete(v25);
  }

LABEL_70:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::tensor::ScatterOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "scatter_dims", 12, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "unique", 6, v8);
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

unint64_t mlir::tensor::ScatterOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 6)
  {
    if (a4 == 12 && *a3 == 0x5F72657474616373 && *(a3 + 8) == 1936550244)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1902734965 || *(a3 + 4) != 25973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::tensor::ScatterOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 12 && *a2 == 0x5F72657474616373 && *(a2 + 8) == 1936550244)
  {
    if (a4)
    {
      v7 = result;
      v9 = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
      result = v7;
      if (v9)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *v7 = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::tensor::ScatterOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "scatter_dims", 12, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "unique", 6, v5);
  }
}

BOOL mlir::tensor::ScatterOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "scatter_dims", 0xC, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "unique", 6, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::ScatterOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, a2[32]))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::tensor::ScatterOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x10uLL);
    *v3 = 0;
    v3[1] = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::ScatterOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::tensor::ScatterOp::verifyInvariantsImpl(mlir::tensor::ScatterOp *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v22[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v4, "scatter_dims", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) != 0 && (v22[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u))
    {
      if (*(*this + 36))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'scatter_dims'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
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
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::tensor::ScatterOp::parse(void **a1, void *a2)
{
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  Inputs = 0;
  (*(*a1 + 5))(a1);
  if (((*(*a1 + 88))(a1, v25, 1) & 1) == 0)
  {
    return 0;
  }

  v30 = 257;
  if (((*(*a1 + 50))(a1, "into", 4, &v27) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 5))(a1);
  if (((*(*a1 + 88))(a1, v22, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 39))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 5))(a1);
  if (((*(*a1 + 88))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 41))(a1) & 1) == 0)
  {
    return 0;
  }

  v30 = 257;
  if (((*(*a1 + 50))(a1, "scatter_dims", 12, &v27) & 1) == 0 || ((*(*a1 + 35))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v17, 0))
  {
    return 0;
  }

  if (v17)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2);
    *v4 = v17;
  }

  if (((*(*a1 + 37))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 51))(a1, "unique", 6))
  {
    v5 = (*(*a1 + 4))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v5, v6);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2) + 8) = UnitAttr;
  }

  v14 = (*(*a1 + 5))(a1);
  if (((*(*a1 + 61))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v27 = a1;
  v28 = &v14;
  v29 = a2;
  if (!mlir::tensor::ScatterOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27))
  {
    return 0;
  }

  if (((*(*a1 + 13))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v14))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(&v14);
  v16 = v9;
  Results = mlir::FunctionType::getResults(&v14);
  mlir::OperationState::addTypes(a2, Results, v11);
  v27 = v24;
  v28 = v21;
  v29 = v18;
  v12 = (*(*a1 + 2))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v27, &Inputs, v12, (a2 + 2)) & 1;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, void ***a2, void *a3, uint64_t a4, uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = a2[2];
  v9 = **a2;
  v10 = (*a2)[1];
  v11 = &v9[32 * v10];
  v12 = *v7;
  v13 = v7[1];
  v14 = *v7 + 32 * v13;
  v15 = *v8;
  v16 = v8[1];
  v17 = &v15[32 * v16];
  if (v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13 == 0;
  }

  v19 = 0;
  if (!v18 || v16 != 0)
  {
    v21 = **a2;
    v22 = v12;
    v23 = v15;
    do
    {
      v24 = v23 + 32;
      v25 = v22 + 32;
      if (v22 == v14)
      {
        v25 = v14;
      }

      else
      {
        v24 = v23;
      }

      if (v21 == v11)
      {
        v23 = v24;
        v22 = v25;
        v21 = v11;
      }

      else
      {
        v21 += 32;
      }

      ++v19;
    }

    while (v21 != v11 || v22 != v14 || v23 != v17);
  }

  v26 = a3[1];
  if (v19 == v26)
  {
    v27 = *a3;
    v64 = **a2;
    v65 = v12;
    v66 = v15;
    v67 = v11;
    v68 = v14;
    v69 = v17;
    v70 = v27;
    v28 = v11;
    while (v9 != v11 || v12 != v14 || v15 != v17 || v28 != v11 || v68 != v14 || v69 != v17)
    {
      v29 = 0;
      v79 = 0;
      v77[3] = 0;
      v77[1] = 0;
      v77[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>;
      v77[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>;
      v78 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>;
      do
      {
        while (1)
        {
          v31 = v77[v29];
          v32 = v77[v29 + 1];
          v33 = (&v64 + (v32 >> 1));
          if (v32)
          {
            break;
          }

          v30 = v31(v33);
          v29 += 2;
          if (v30)
          {
            goto LABEL_32;
          }
        }

        v30 = (*(*v33 + v31))();
        v29 += 2;
      }

      while (!v30);
LABEL_32:
      if (((*(*a1 + 728))(a1, v30, *v70, a5) & 1) == 0)
      {
        return 0;
      }

      v9 = v64;
      v28 = v67;
      if (v64 == v67)
      {
        v12 = v65;
        if (v65 == v68)
        {
          if (v66 != v69)
          {
            v66 += 32;
          }
        }

        else
        {
          v12 = v65 + 32;
          v65 += 32;
        }
      }

      else
      {
        v9 = v64 + 32;
        v64 += 32;
        v12 = v65;
      }

      v15 = v66;
      ++v70;
    }

    return 1;
  }

  else
  {
    LOWORD(v78) = 257;
    (*(*a1 + 24))(&v64, a1, a4, v77);
    if (v64)
    {
      v61 = 5;
      v62 = v19;
      v34 = &v61;
      v35 = v67;
      if (v68 >= HIDWORD(v68))
      {
        if (v67 <= &v61 && v67 + 24 * v68 > &v61)
        {
          v58 = &v61 - v67;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v68 + 1, 24);
          v35 = v67;
          v34 = (v67 + v58);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v68 + 1, 24);
          v34 = &v61;
          v35 = v67;
        }
      }

      v36 = &v35[24 * v68];
      v37 = *v34;
      *(v36 + 2) = *(v34 + 2);
      *v36 = v37;
      v38 = (v68 + 1);
      LODWORD(v68) = v68 + 1;
      if (v64)
      {
        v61 = 3;
        v62 = " operands present, but expected ";
        v63 = 32;
        v39 = &v61;
        v40 = v67;
        if (v38 >= HIDWORD(v68))
        {
          if (v67 <= &v61 && v67 + 24 * v38 > &v61)
          {
            v59 = &v61 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v38 + 1, 24);
            v40 = v67;
            v39 = (v67 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v38 + 1, 24);
            v39 = &v61;
            v40 = v67;
          }
        }

        v41 = &v40[24 * v68];
        v42 = *v39;
        *(v41 + 2) = *(v39 + 2);
        *v41 = v42;
        v43 = (v68 + 1);
        LODWORD(v68) = v68 + 1;
        if (v64)
        {
          v61 = 5;
          v62 = v26;
          v44 = &v61;
          v45 = v67;
          if (v43 >= HIDWORD(v68))
          {
            if (v67 <= &v61 && v67 + 24 * v43 > &v61)
            {
              v60 = &v61 - v67;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v43 + 1, 24);
              v45 = v67;
              v44 = (v67 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v43 + 1, 24);
              v44 = &v61;
              v45 = v67;
            }
          }

          v46 = &v45[24 * v68];
          v47 = *v44;
          *(v46 + 2) = *(v44 + 2);
          *v46 = v47;
          LODWORD(v68) = v68 + 1;
        }
      }
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
    if (v64)
    {
      mlir::InFlightDiagnostic::report(&v64);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v49 = __p;
      if (__p)
      {
        v50 = v74;
        v51 = __p;
        if (v74 != __p)
        {
          do
          {
            v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
          }

          while (v50 != v49);
          v51 = __p;
        }

        v74 = v49;
        operator delete(v51);
      }

      v52 = v71;
      if (v71)
      {
        v53 = v72;
        v54 = v71;
        if (v72 != v71)
        {
          do
          {
            v56 = *--v53;
            v55 = v56;
            *v53 = 0;
            if (v56)
            {
              operator delete[](v55);
            }
          }

          while (v53 != v52);
          v54 = v71;
        }

        v72 = v52;
        operator delete(v54);
      }

      if (v67 != &v69)
      {
        free(v67);
      }
    }
  }

  return v48;
}

BOOL mlir::tensor::SplatOp::verifyInvariantsImpl(mlir::tensor::SplatOp *this)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v75 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::Type::isSignlessInteger(&v75))
  {
    v3 = *(*v75 + 136);
    v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
    v5 = v4 || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v6 = v5 || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v7 = v6 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v8 = v7 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v9 = v8 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v10 = v9 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v11 = v10 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v12 = v11 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v13 = v12 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v14 = v13 || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v15 = v14 || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v16 = v15 || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v17 = v16 || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v18 = v17 || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v19 = v18 || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (!v19 && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v74 = 261;
      v73[0] = "operand";
      v73[1] = 7;
      mlir::Operation::emitOpError(v2, v73, v79);
      if (v79[0])
      {
        v76 = 3;
        v77 = " #";
        v78 = 2;
        v42 = &v76;
        v43 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v76 && v80 + 24 * v81 > &v76)
          {
            v69 = &v76 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v43 = v80;
            v42 = (v80 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v42 = &v76;
            v43 = v80;
          }
        }

        v44 = &v43[24 * v81];
        v45 = *v42;
        *(v44 + 2) = *(v42 + 2);
        *v44 = v45;
        v46 = ++v81;
        if (v79[0])
        {
          v76 = 5;
          v77 = 0;
          v47 = &v76;
          v48 = v80;
          if (v46 >= v82)
          {
            if (v80 <= &v76 && v80 + 24 * v46 > &v76)
            {
              v70 = &v76 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v46 + 1, 24);
              v48 = v80;
              v47 = (v80 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v46 + 1, 24);
              v47 = &v76;
              v48 = v80;
            }
          }

          v49 = &v48[24 * v81];
          v50 = *v47;
          *(v49 + 2) = *(v47 + 2);
          *v49 = v50;
          v51 = ++v81;
          if (v79[0])
          {
            v76 = 3;
            v77 = " must be integer/index/float type, but got ";
            v78 = 43;
            v52 = &v76;
            v53 = v80;
            if (v51 >= v82)
            {
              if (v80 <= &v76 && v80 + 24 * v51 > &v76)
              {
                v71 = &v76 - v80;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v51 + 1, 24);
                v53 = v80;
                v52 = (v80 + v71);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v51 + 1, 24);
                v52 = &v76;
                v53 = v80;
              }
            }

            v54 = &v53[24 * v81];
            v55 = *v52;
            *(v54 + 2) = *(v52 + 2);
            *v54 = v55;
            ++v81;
            if (v79[0])
            {
              v56 = &v76;
              mlir::DiagnosticArgument::DiagnosticArgument(&v76, v75);
              v57 = v80;
              if (v81 >= v82)
              {
                if (v80 <= &v76 && v80 + 24 * v81 > &v76)
                {
                  v72 = &v76 - v80;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
                  v57 = v80;
                  v56 = (v80 + v72);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
                  v56 = &v76;
                  v57 = v80;
                }
              }

              v58 = &v57[24 * v81];
              v59 = *v56;
              *(v58 + 2) = *(v56 + 2);
              *v58 = v59;
              ++v81;
            }
          }
        }
      }

      v60 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
      if (v79[0])
      {
        mlir::InFlightDiagnostic::report(v79);
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
        }

        v61 = __p;
        if (__p)
        {
          v62 = v87;
          v63 = __p;
          if (v87 != __p)
          {
            do
            {
              v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v87 = v61;
          operator delete(v63);
        }

        v64 = v84;
        if (v84)
        {
          v65 = v85;
          v66 = v84;
          if (v85 != v84)
          {
            do
            {
              v68 = *--v65;
              v67 = v68;
              *v65 = 0;
              if (v68)
              {
                operator delete[](v67);
              }
            }

            while (v65 != v64);
            v66 = v84;
          }

          v85 = v64;
          operator delete(v66);
        }

        if (v80 != v83)
        {
          free(v80);
        }
      }

      if (!v60)
      {
        return 0;
      }
    }
  }

  v21 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v23 = -1;
    v24 = 32;
LABEL_58:
    v25 = v24 + 24;
    v26 = 1;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v26) & 1) != 0)
    {
      ++v26;
      v25 += 32;
      if (!--v23)
      {
        v21 = *this;
        goto LABEL_62;
      }
    }

    return 0;
  }

  v22 = *(v21 + 68);
  v23 = v22 - 1;
  if (v22 != 1)
  {
    v24 = *(v21 + 72) + 32;
    goto LABEL_58;
  }

LABEL_62:
  v27 = *(v21 + 36);
  v28 = v21 - 16;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v31 = *this - 16;
  }

  else
  {
    v31 = 0;
  }

  v79[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::getElementType(v79) == (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v73[0] = "failed to verify that operand type matches element type of result";
  v74 = 259;
  mlir::OpState::emitOpError(this, v73, v79);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
  v33 = result;
  if (v79[0])
  {
    mlir::InFlightDiagnostic::report(v79);
    result = v33;
  }

  if (v89 == 1)
  {
    if (v88 != &v89)
    {
      free(v88);
      result = v33;
    }

    v34 = __p;
    if (__p)
    {
      v35 = v87;
      v36 = __p;
      if (v87 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v87 = v34;
      operator delete(v36);
      result = v33;
    }

    v37 = v84;
    if (v84)
    {
      v38 = v85;
      v39 = v84;
      if (v85 != v84)
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
        v39 = v84;
      }

      v85 = v37;
      operator delete(v39);
      result = v33;
    }

    if (v80 != v83)
    {
      free(v80);
      return v33;
    }
  }

  return result;
}