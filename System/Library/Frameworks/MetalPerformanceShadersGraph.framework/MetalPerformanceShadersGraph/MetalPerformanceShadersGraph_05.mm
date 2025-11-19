uint64_t mlir::arith::CmpIOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "predicate", 9, *a2);
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

unint64_t mlir::arith::CmpIOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x7461636964657270 ? (v4 = *(a3 + 8) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::arith::CmpIOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9 && *a2 == 0x7461636964657270 && *(a2 + 8) == 101)
  {
    if (a4)
    {
      v5 = result;
      v7 = mlir::arith::CmpIPredicateAttr::classof(a4);
      result = v5;
      if (v7)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      *v5 = v8;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::arith::CmpIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "predicate", 9, *a2);
  }
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || (mlir::arith::CmpIPredicateAttr::classof(a1) & 1) != 0)
  {
    return 1;
  }

  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v29) = 3;
    v30 = "attribute '";
    v31 = 11;
    v11 = &v29;
    v12 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v27 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v12 = v35;
        v11 = v35 + v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v11 = &v29;
        v12 = v35;
      }
    }

    v13 = &v12[24 * v36];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v36;
    if (v33)
    {
      v32 = 261;
      v29 = a2;
      v30 = a3;
      mlir::Diagnostic::operator<<(&v34, &v29);
      if (v33)
      {
        LODWORD(v29) = 3;
        v30 = "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9";
        v31 = 99;
        v15 = &v29;
        v16 = v35;
        if (v36 >= v37)
        {
          if (v35 <= &v29 && v35 + 24 * v36 > &v29)
          {
            v28 = &v29 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v16 = v35;
            v15 = v35 + v28;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v15 = &v29;
            v16 = v35;
          }
        }

        v17 = &v16[24 * v36];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v36;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v9;
}

BOOL mlir::arith::CmpIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpIPredicateAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::CmpIOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpIPredicateAttr>(a1, *(a2 + 256));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpIPredicateAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::arith::CmpIPredicateAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::CmpIPredicateAttr]";
  v38 = 80;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

void mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v22 = a5;
  v23 = a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v7 = *(a2 + 256);
  if (!v7)
  {
    v8 = operator new(8uLL);
    *v8 = 0;
    *(a2 + 256) = v8;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::arith::CmpIOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v7 = *(a2 + 256);
  }

  *v7 = a3;
  __src = v28;
  v27 = 0x200000000;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v10 = mlir::ValueRange::ValueRange(&v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpFOp::inferReturnTypes(v10, v11, v12, v25[0], v25[1], v13, v14, v15, v20, v21, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = __src;
  v17 = v27;
  v18 = *(a2 + 72);
  v19 = v18 + v27;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v28)
  {
    free(__src);
  }
}

void mlir::arith::CmpIOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v25 = a5;
  v26 = a4;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v8 = mlir::IntegerType::get(*a1, 64, 0);
  v9 = mlir::IntegerAttr::get(v8, a3);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::arith::CmpIOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = v9;
  __src = v31;
  v30 = 0x200000000;
  mlir::ValueRange::ValueRange(v28, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = mlir::ValueRange::ValueRange(&v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpFOp::inferReturnTypes(v13, v14, v15, v28[0], v28[1], v16, v17, v18, v23, v24, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v30;
  v21 = *(a2 + 72);
  v22 = v21 + v30;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v31)
  {
    free(__src);
  }
}

void mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
      v18 = operator new(8uLL);
      *v18 = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::arith::CmpIOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

BOOL mlir::arith::CmpIOp::verifyInvariantsImpl(mlir::arith::CmpIOp *this)
{
  v96 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    *&v84 = v2;
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(v3, "predicate", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps5(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps5(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
    {
      return 0;
    }

    if (*(*this + 36))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    v6 = *this;
    v80 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (mlir::Type::isSignlessInteger(&v80, 1))
    {
      goto LABEL_96;
    }

    v7 = v80;
    v8 = *v80;
    v9 = *(*v80 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
LABEL_46:
      if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_66;
      }

      {
        v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v31 = *(v8 + 8);
        v32 = *(v8 + 16);
        if (v32)
        {
          goto LABEL_53;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v31 = *(v8 + 8);
        v32 = *(v8 + 16);
        if (v32)
        {
LABEL_53:
          v33 = v31;
          v34 = v32;
          do
          {
            v35 = v34 >> 1;
            v36 = &v33[2 * (v34 >> 1)];
            v38 = *v36;
            v37 = v36 + 2;
            v34 += ~(v34 >> 1);
            if (v38 < v30)
            {
              v33 = v37;
            }

            else
            {
              v34 = v35;
            }
          }

          while (v34);
LABEL_61:
          if (v33 != &v31[2 * v32] && *v33 == v30)
          {
            v39 = v33[1];
          }

          else
          {
            v39 = 0;
          }

          v77 = v7;
          v78 = v39;
          isSplat = mlir::ElementsAttr::isSplat(&v77);
          if (mlir::Type::isSignlessInteger(&isSplat, 1))
          {
            goto LABEL_96;
          }

LABEL_66:
          v79 = 261;
          v77 = "result";
          v78 = 6;
          mlir::Operation::emitOpError(v6, &v77, &v84);
          if (v84)
          {
            LODWORD(isSplat) = 3;
            v82 = " #";
            v83 = 2;
            p_isSplat = &isSplat;
            v41 = v86;
            if (v87 >= v88)
            {
              if (v86 <= &isSplat && v86 + 24 * v87 > &isSplat)
              {
                v73 = &isSplat - v86;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                v41 = v86;
                p_isSplat = v86 + v73;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                p_isSplat = &isSplat;
                v41 = v86;
              }
            }

            v42 = &v41[24 * v87];
            v43 = *p_isSplat;
            *(v42 + 2) = *(p_isSplat + 2);
            *v42 = v43;
            v44 = ++v87;
            if (v84)
            {
              LODWORD(isSplat) = 5;
              v82 = 0;
              v45 = &isSplat;
              v46 = v86;
              if (v44 >= v88)
              {
                if (v86 <= &isSplat && v86 + 24 * v44 > &isSplat)
                {
                  v74 = &isSplat - v86;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v44 + 1, 24);
                  v46 = v86;
                  v45 = v86 + v74;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v44 + 1, 24);
                  v45 = &isSplat;
                  v46 = v86;
                }
              }

              v47 = &v46[24 * v87];
              v48 = *v45;
              *(v47 + 2) = *(v45 + 2);
              *v47 = v48;
              v49 = ++v87;
              if (v84)
              {
                LODWORD(isSplat) = 3;
                v82 = " must be BOOL-like, but got ";
                v83 = 28;
                v50 = &isSplat;
                v51 = v86;
                if (v49 >= v88)
                {
                  if (v86 <= &isSplat && v86 + 24 * v49 > &isSplat)
                  {
                    v75 = &isSplat - v86;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v49 + 1, 24);
                    v51 = v86;
                    v50 = v86 + v75;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v49 + 1, 24);
                    v50 = &isSplat;
                    v51 = v86;
                  }
                }

                v52 = &v51[24 * v87];
                v53 = *v50;
                *(v52 + 2) = *(v50 + 2);
                *v52 = v53;
                ++v87;
                if (v84)
                {
                  v54 = &isSplat;
                  mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v80);
                  v55 = v86;
                  if (v87 >= v88)
                  {
                    if (v86 <= &isSplat && v86 + 24 * v87 > &isSplat)
                    {
                      v76 = &isSplat - v86;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                      v55 = v86;
                      v54 = v86 + v76;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                      v54 = &isSplat;
                      v55 = v86;
                    }
                  }

                  v56 = &v55[24 * v87];
                  v57 = *v54;
                  *(v56 + 2) = *(v54 + 2);
                  *v56 = v57;
                  ++v87;
                }
              }
            }
          }

          v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
          if (v84)
          {
            mlir::InFlightDiagnostic::report(&v84);
          }

          if (v95 == 1)
          {
            if (v94 != &v95)
            {
              free(v94);
            }

            v59 = __p;
            if (__p)
            {
              v60 = v93;
              v61 = __p;
              if (v93 != __p)
              {
                do
                {
                  v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
                }

                while (v60 != v59);
                v61 = __p;
              }

              v93 = v59;
              operator delete(v61);
            }

            v62 = v90;
            if (v90)
            {
              v63 = v91;
              v64 = v90;
              if (v91 != v90)
              {
                do
                {
                  v66 = *--v63;
                  v65 = v66;
                  *v63 = 0;
                  if (v66)
                  {
                    operator delete[](v65);
                  }
                }

                while (v63 != v62);
                v64 = v90;
              }

              v91 = v62;
              operator delete(v64);
            }

            if (v86 != v89)
            {
              free(v86);
            }
          }

          if (v58)
          {
LABEL_96:
            isSplat = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            Context = mlir::Attribute::getContext(&isSplat);
            v68 = mlir::IntegerType::get(Context, 1, 0);
            v77 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(isSplat);
            v78 = v69;
            if (v77)
            {
              LOBYTE(v84) = 0;
              v85 = 0;
              v70 = mlir::ShapedType::cloneWith(&v77, &v84, v68);
            }

            else
            {
              if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
              {
LABEL_102:
                if (*(*this + 36))
                {
                  v72 = *this - 16;
                }

                else
                {
                  v72 = 0;
                }

                if (v68 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
                {
                  return 1;
                }

                v77 = "failed to verify that result type has i1 element type and same shape as operands";
                v79 = 259;
                mlir::OpState::emitOpError(this, &v77, &v84);
                v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
                if (v84)
                {
                  mlir::InFlightDiagnostic::report(&v84);
                }

                if (v95 == 1)
                {
                  mlir::Diagnostic::~Diagnostic((&v84 + 8));
                }

                return v19;
              }

              v70 = mlir::UnrankedTensorType::get(v68);
            }

            v68 = v70;
            goto LABEL_102;
          }

          return 0;
        }
      }

      v32 = 0;
      v33 = v31;
      goto LABEL_61;
    }

    {
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      if (v12)
      {
LABEL_12:
        v13 = v11;
        v14 = v12;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[2 * (v14 >> 1)];
          v18 = *v16;
          v17 = v16 + 2;
          v14 += ~(v14 >> 1);
          if (v18 < v10)
          {
            v13 = v17;
          }

          else
          {
            v14 = v15;
          }
        }

        while (v14);
        goto LABEL_40;
      }
    }

    v12 = 0;
    v13 = v11;
LABEL_40:
    if (v13 != &v11[2 * v12] && *v13 == v10)
    {
      v28 = v13[1];
    }

    else
    {
      v28 = 0;
    }

    *&v84 = v7;
    *(&v84 + 1) = v28;
    isSplat = mlir::ElementsAttr::isSplat(&v84);
    if (mlir::Type::isSignlessInteger(&isSplat, 1))
    {
      goto LABEL_96;
    }

    v7 = v80;
    v8 = *v80;
    v9 = *(*v80 + 136);
    goto LABEL_46;
  }

  v77 = "requires attribute 'predicate'";
  v79 = 259;
  mlir::OpState::emitOpError(this, &v77, &v84);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
  if (v84)
  {
    mlir::InFlightDiagnostic::report(&v84);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v93;
      v22 = __p;
      if (v93 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v93 = v20;
      operator delete(v22);
    }

    v23 = v90;
    if (v90)
    {
      v24 = v91;
      v25 = v90;
      if (v91 != v90)
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
        v25 = v90;
      }

      v91 = v23;
      operator delete(v25);
    }

    if (v86 != v89)
    {
      free(v86);
    }
  }

  return v19;
}

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v72 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v72))
  {
    return 1;
  }

  v11 = v72;
  v12 = *v72;
  v13 = *(*v72 + 136);
  if (v13 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    goto LABEL_21;
  }

  {
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v12 + 8);
    v16 = *(v12 + 16);
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v65 = v12;
    v67 = v11;
    mlir::arith::ExtUIOp::fold();
    v11 = v67;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v65 + 8);
    v16 = *(v65 + 16);
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 != &v15[2 * v16] && *v17 == v14)
  {
    v23 = v17[1];
    goto LABEL_19;
  }

LABEL_17:
  v23 = 0;
LABEL_19:
  v76[0] = v11;
  v76[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v76);
  if (mlir::Type::isSignlessIntOrIndex(&isSplat))
  {
    return 1;
  }

  v11 = v72;
  v12 = *v72;
  v13 = *(*v72 + 136);
LABEL_21:
  if (v13 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_41;
  }

  {
    v66 = v12;
    v68 = v11;
    mlir::arith::ExtUIOp::fold();
    v11 = v68;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v66 + 8);
    v27 = *(v66 + 16);
    if (v27)
    {
      goto LABEL_28;
    }

LABEL_38:
    v34 = 0;
    goto LABEL_40;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v12 + 8);
  v27 = *(v12 + 16);
  if (!v27)
  {
    goto LABEL_38;
  }

LABEL_28:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_38;
  }

  v34 = v28[1];
LABEL_40:
  v69 = v11;
  v70 = v34;
  isSplat = mlir::ElementsAttr::isSplat(&v69);
  if (mlir::Type::isSignlessIntOrIndex(&isSplat))
  {
    return 1;
  }

LABEL_41:
  v71 = 261;
  v69 = a3;
  v70 = a4;
  mlir::Operation::emitOpError(a1, &v69, v76);
  if (v76[0])
  {
    LODWORD(isSplat) = 3;
    v74 = " #";
    v75 = 2;
    p_isSplat = &isSplat;
    v36 = v77;
    if (v78 >= v79)
    {
      if (v77 <= &isSplat && v77 + 24 * v78 > &isSplat)
      {
        v61 = &isSplat - v77;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        v36 = v77;
        p_isSplat = (v77 + v61);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        p_isSplat = &isSplat;
        v36 = v77;
      }
    }

    v37 = &v36[24 * v78];
    v38 = *p_isSplat;
    *(v37 + 2) = p_isSplat[2];
    *v37 = v38;
    v39 = ++v78;
    if (v76[0])
    {
      LODWORD(isSplat) = 5;
      v74 = a5;
      v40 = &isSplat;
      v41 = v77;
      if (v39 >= v79)
      {
        if (v77 <= &isSplat && v77 + 24 * v39 > &isSplat)
        {
          v62 = &isSplat - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v39 + 1, 24);
          v41 = v77;
          v40 = (v77 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v39 + 1, 24);
          v40 = &isSplat;
          v41 = v77;
        }
      }

      v42 = &v41[24 * v78];
      v43 = *v40;
      *(v42 + 2) = v40[2];
      *v42 = v43;
      v44 = ++v78;
      if (v76[0])
      {
        LODWORD(isSplat) = 3;
        v74 = " must be signless-integer-like, but got ";
        v75 = 40;
        v45 = &isSplat;
        v46 = v77;
        if (v44 >= v79)
        {
          if (v77 <= &isSplat && v77 + 24 * v44 > &isSplat)
          {
            v63 = &isSplat - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v44 + 1, 24);
            v46 = v77;
            v45 = (v77 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v44 + 1, 24);
            v45 = &isSplat;
            v46 = v77;
          }
        }

        v47 = &v46[24 * v78];
        v48 = *v45;
        *(v47 + 2) = v45[2];
        *v47 = v48;
        ++v78;
        if (v76[0])
        {
          v49 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v72);
          v50 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &isSplat && v77 + 24 * v78 > &isSplat)
            {
              v64 = &isSplat - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v50 = v77;
              v49 = (v77 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v49 = &isSplat;
              v50 = v77;
            }
          }

          v51 = &v50[24 * v78];
          v52 = *v49;
          *(v51 + 2) = v49[2];
          *v51 = v52;
          ++v78;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
  if (v76[0])
  {
    mlir::InFlightDiagnostic::report(v76);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v84;
      v55 = __p;
      if (v84 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v84 = v53;
      operator delete(v55);
    }

    v56 = v81;
    if (v81)
    {
      v57 = v82;
      v58 = v81;
      if (v82 != v81)
      {
        do
        {
          v60 = *--v57;
          v59 = v60;
          *v57 = 0;
          if (v60)
          {
            operator delete[](v59);
          }
        }

        while (v57 != v56);
        v58 = v81;
      }

      v82 = v56;
      operator delete(v58);
    }

    if (v77 != v80)
    {
      free(v77);
    }
  }

  return v9;
}

uint64_t mlir::arith::CmpIOp::parse(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  v59[0] = v60;
  v59[1] = 1;
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  v55 = 1;
  v56 = 0;
  v54.var0 = 0;
  v54.var1 = &v56;
  AttrData = 0;
  v75 = v77;
  v76 = 0x400000000;
  v78 = 4;
  v4 = (*(*a1 + 40))(a1);
  v68[4] = xmmword_1E86D2750;
  v68[5] = *&off_1E86D2760;
  v69 = xmmword_1E86D2770;
  v70 = *&off_1E86D2780;
  v68[0] = xmmword_1E86D2710;
  v68[1] = *&off_1E86D2720;
  v68[2] = xmmword_1E86D2730;
  v68[3] = *&off_1E86D2740;
  v66 = xmmword_1E86D26F0;
  v67 = *&off_1E86D2700;
  if ((*(*a1 + 424))(a1, &AttrData, &v66, 10))
  {
    v5.var0 = v54.var0;
    if (!v54.var0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v51[0] = 0;
    v19 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v19, v20);
    v22 = (*(*a1 + 472))(a1, v51, NoneType);
    if ((v22 & 0x100) == 0)
    {
      isSplat = "expected string or keyword containing one of the following enum values for attribute 'predicate' [eq, ne, slt, sle, sgt, sge, ult, ule, ugt, uge]";
      v65 = 259;
      (*(*a1 + 24))(&v66, a1, v4, &isSplat);
      v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
      if (v66)
      {
        mlir::InFlightDiagnostic::report(&v66);
      }

      if (v74 != 1)
      {
        goto LABEL_67;
      }

      if (v73 != &v74)
      {
        free(v73);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v72;
        v26 = __p;
        if (v72 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v72 = v24;
        operator delete(v26);
      }

      v27 = *(&v69 + 1);
      if (!*(&v69 + 1))
      {
        goto LABEL_65;
      }

      v28 = v70;
      v29 = *(&v69 + 1);
      if (v70 == *(&v69 + 1))
      {
        goto LABEL_64;
      }

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
      goto LABEL_63;
    }

    if ((v22 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_67;
    }

    mlir::NamedAttrList::append(&v75, "predicate", 9, v51[0]);
    AttrData = mlir::OpaqueAttr::getAttrData(v51);
    v54.var0 = v5.var0;
    if (!v5.var0)
    {
      goto LABEL_9;
    }
  }

  v6 = mlir::arith::symbolizeCmpIPredicate(AttrData, v5);
  if (v7)
  {
    v8 = v6;
    v9 = (*(*a1 + 32))(a1);
    v10 = mlir::IntegerType::get(*v9, 64, 0);
    v11 = mlir::IntegerAttr::get(v10, v8);
    v12 = a2[32];
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      a2[32] = v13;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = &v66;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = &v66;
      {
        mlir::arith::CmpIOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = a2[32];
    }

    *v12 = v11;
LABEL_9:
    if (v75 != v77)
    {
      free(v75);
    }

    if ((*(*a1 + 120))(a1))
    {
      v14 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 704))(a1, v60, 1) & 1) != 0 && ((*(*a1 + 120))(a1))
      {
        (*(*a1 + 40))(a1);
        if ((*(*a1 + 704))(a1, v57, 1))
        {
          v75 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v15 = a2[1];
            *&v66 = a1;
            *(&v66 + 1) = &v75;
            *&v67 = a2;
            if (mlir::arith::CmpIOp::verifyInherentAttrs(v15, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v66) && ((*(*a1 + 104))(a1) & 1) != 0)
            {
              *&v66 = 0;
              if ((*(*a1 + 536))(a1, &v66))
              {
                v56 = v66;
                var1 = v54.var1;
                if (v55)
                {
                  v17 = 8 * v55;
                  v18 = v54.var1;
                  do
                  {
                    v51[0] = *v18;
                    if (!mlir::Type::isSignlessIntOrIndex(v51))
                    {
                      v42 = *(*v51[0] + 136);
                      if (v42 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
                      {
                        *&v66 = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
                        *(&v66 + 1) = v43;
                        isSplat = mlir::ElementsAttr::isSplat(&v66);
                        if (mlir::Type::isSignlessIntOrIndex(&isSplat))
                        {
                          goto LABEL_69;
                        }

                        v42 = *(*v51[0] + 136);
                      }

                      v44 = v42 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v42 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
                      if (!v44 || (v75 = llvm::cast<mlir::ShapedType,mlir::Type>(v51), v76 = v45, isSplat = mlir::ElementsAttr::isSplat(&v75), !mlir::Type::isSignlessIntOrIndex(&isSplat)))
                      {
                        v46 = (*(*a1 + 16))(a1);
                        v77[8] = 257;
                        (*(*a1 + 24))(&v66, a1, v46, &v75);
                        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v66, "'lhs' must be signless-integer-like, but got ");
                        mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v47, v51);
                        v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
                        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v66);
                        return v23;
                      }
                    }

LABEL_69:
                    ++v18;
                    v17 -= 8;
                  }

                  while (v17);
                }

                *&v66 = getI1SameShape(*var1);
                mlir::OperationState::addTypes(a2, &v66, 1);
                if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v59, &v54.var1, v14, (a2 + 2)))
                {
                  return (*(*a1 + 728))(a1, v57, *v54.var1, a2 + 2) & 1;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  v51[0] = "invalid ";
  v52 = 259;
  (*(*a1 + 24))(&v66, a1, v4, v51);
  if (v66)
  {
    LODWORD(isSplat) = 3;
    var0 = "predicate attribute specification: ";
    v64 = 36;
    p_isSplat = &isSplat;
    v33 = *(&v67 + 1);
    if (LODWORD(v68[0]) >= DWORD1(v68[0]))
    {
      if (*(&v67 + 1) <= &isSplat && *(&v67 + 1) + 24 * LODWORD(v68[0]) > &isSplat)
      {
        v50 = &isSplat - *(&v67 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67 + 8, v68 + 8, LODWORD(v68[0]) + 1, 24);
        v33 = *(&v67 + 1);
        p_isSplat = &v50[*(&v67 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67 + 8, v68 + 8, LODWORD(v68[0]) + 1, 24);
        p_isSplat = &isSplat;
        v33 = *(&v67 + 1);
      }
    }

    v34 = v33 + 24 * LODWORD(v68[0]);
    v35 = *p_isSplat;
    *(v34 + 16) = p_isSplat[2];
    *v34 = v35;
    ++LODWORD(v68[0]);
    if (v66)
    {
      v65 = 261;
      isSplat = AttrData;
      var0 = v54.var0;
      mlir::Diagnostic::operator<<(&v66 + 8, &isSplat);
      if (v66)
      {
        mlir::Diagnostic::operator<<(&v66 + 8, 34);
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v74)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v72;
      v38 = __p;
      if (v72 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v72 = v36;
      operator delete(v38);
    }

    v27 = *(&v69 + 1);
    if (!*(&v69 + 1))
    {
      goto LABEL_65;
    }

    v39 = v70;
    v29 = *(&v69 + 1);
    if (v70 == *(&v69 + 1))
    {
LABEL_64:
      *&v70 = v27;
      operator delete(v29);
LABEL_65:
      if (*(&v67 + 1) != (v68 + 8))
      {
        free(*(&v67 + 1));
      }

      goto LABEL_67;
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

    while (v39 != v27);
LABEL_63:
    v29 = *(&v69 + 1);
    goto LABEL_64;
  }

LABEL_67:
  if (v75 != v77)
  {
    free(v75);
  }

  return v23;
}

uint64_t mlir::arith::symbolizeCmpIPredicate(mlir::arith *this, StringRef a2)
{
  if (a2.var0 == 3)
  {
    if (*this == 27763 && *(this + 2) == 116)
    {
      return 2;
    }

    else if (*this == 27763 && *(this + 2) == 101)
    {
      return 3;
    }

    else if (*this == 26483 && *(this + 2) == 116)
    {
      return 4;
    }

    else if (*this == 26483 && *(this + 2) == 101)
    {
      return 5;
    }

    else if (*this == 27765 && *(this + 2) == 116)
    {
      return 6;
    }

    else if (*this == 27765 && *(this + 2) == 101)
    {
      return 7;
    }

    else if (*this == 26485 && *(this + 2) == 116)
    {
      return 8;
    }

    else if (*this ^ 0x6775 | *(this + 2) ^ 0x65)
    {
      return 0;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a2.var0 != 2)
    {
      return 0;
    }

    return *this != 29029 && *this == 25966;
  }
}

void mlir::arith::CmpIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  v29 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Int = mlir::IntegerAttr::getInt(&v29);
  if (Int <= 4)
  {
    if (Int > 1)
    {
      if (Int == 2)
      {
        v7 = 0;
        v8 = "slt";
        v9 = 3;
      }

      else
      {
        v7 = 0;
        if (Int == 3)
        {
          v8 = "sle";
        }

        else
        {
          v8 = "sgt";
        }

        v9 = 3;
      }

      goto LABEL_28;
    }

    if (!Int)
    {
      v7 = 0;
      v8 = "eq";
      v9 = 2;
      goto LABEL_28;
    }

    if (Int == 1)
    {
      v7 = 0;
      v8 = "ne";
      v9 = 2;
      goto LABEL_28;
    }

LABEL_27:
    v9 = 0;
    v8 = "";
    v7 = 1;
    goto LABEL_28;
  }

  if (Int > 6)
  {
    switch(Int)
    {
      case 7:
        v7 = 0;
        v8 = "ule";
        v9 = 3;
        goto LABEL_28;
      case 8:
        v7 = 0;
        v8 = "ugt";
        v9 = 3;
        goto LABEL_28;
      case 9:
        v7 = 0;
        v8 = "uge";
        v9 = 3;
        goto LABEL_28;
    }

    goto LABEL_27;
  }

  v7 = 0;
  if (Int == 5)
  {
    v8 = "sge";
  }

  else
  {
    v8 = "ult";
  }

  v9 = 3;
LABEL_28:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ",", 1uLL);
  }

  else
  {
    *v13 = 44;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, ",", 1uLL);
  }

  else
  {
    *v17 = 44;
    ++v16[4];
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v29 = v31;
  v31[0] = "predicate";
  v31[1] = 9;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v29, v30);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::arith::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v42 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      v43 = 3;
      v44 = "expected DictionaryAttr to set properties";
      v45 = 41;
      v13 = &v43;
      v14 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v14 = v47;
          v13 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = &v43;
          v14 = v47;
        }
      }

      v15 = &v14[24 * v48];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v54;
      v19 = __p;
      if (v54 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v54 = v17;
      operator delete(v19);
    }

    v20 = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v21 = v52;
    v22 = v51;
    if (v52 == v51)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  v58.var0 = "value";
  v58.var1 = 5;
  v8 = mlir::DictionaryAttr::get(&v42, v58);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v46, a4);
  if (v46[0])
  {
    v43 = 3;
    v45 = 50;
    v25 = &v43;
    v26 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v40 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v26 = v47;
        v25 = (v47 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v25 = &v43;
        v26 = v47;
      }
    }

    v27 = &v26[24 * v48];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    ++v48;
    if (v46[0])
    {
      v29 = &v43;
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v9);
      v30 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v41 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v30 = v47;
          v29 = (v47 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v29 = &v43;
          v30 = v47;
        }
      }

      v31 = &v30[24 * v48];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v54;
      v35 = __p;
      if (v54 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v54 = v33;
      operator delete(v35);
    }

    v20 = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v36 = v52;
    v22 = v51;
    if (v52 == v51)
    {
LABEL_48:
      v52 = v20;
      operator delete(v22);
LABEL_49:
      if (v47 != v50)
      {
        free(v47);
      }

      return 0;
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
LABEL_47:
    v22 = v51;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::arith::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "value", 5, *a2);
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

unint64_t mlir::arith::ConstantOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::ConstantOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      v5 = result;
      v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
      result = v5;
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      *result = 0;
      result[1] = 0;
    }
  }

  return result;
}

void mlir::arith::ConstantOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "value", 5, *a2);
  }
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(uint64_t *a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v7 = *a1;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = a5;
    v38 = a4;
    mlir::arith::ConstantOp::materialize();
    a5 = v37;
    a4 = v38;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    return 1;
  }

LABEL_14:
  a4(&v43, a5);
  if (v43)
  {
    LODWORD(v39) = 3;
    v40 = "attribute '";
    v41 = 11;
    v17 = &v39;
    v18 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v39 && v45 + 24 * v46 > &v39)
      {
        v35 = &v39 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v18 = v45;
        v17 = v45 + v35;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v17 = &v39;
        v18 = v45;
      }
    }

    v19 = &v18[24 * v46];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    ++v46;
    if (v43)
    {
      v42 = 261;
      v39 = a2;
      v40 = a3;
      mlir::Diagnostic::operator<<(&v44, &v39);
      if (v43)
      {
        LODWORD(v39) = 3;
        v40 = "' failed to satisfy constraint: TypedAttr instance";
        v41 = 50;
        v21 = &v39;
        v22 = v45;
        if (v46 >= v47)
        {
          if (v45 <= &v39 && v45 + 24 * v46 > &v39)
          {
            v36 = &v39 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v22 = v45;
            v21 = v45 + v36;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v21 = &v39;
            v22 = v45;
          }
        }

        v23 = &v22[24 * v46];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v46;
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    mlir::InFlightDiagnostic::report(&v43);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
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
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

BOOL mlir::arith::ConstantOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, v3);
  }

  v6 = operator new(0x10uLL);
  *v6 = 0;
  v6[1] = 0;
  a2[32] = v6;
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::arith::ConstantOp::build();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, a2[32]);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v36);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]";
  v38 = 65;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

void *mlir::arith::ConstantOp::getValueAttr(mlir::arith::ConstantOp *this)
{
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::arith::ConstantOp::materialize();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

void mlir::arith::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 256);
  if (!v7)
  {
    v8 = operator new(0x10uLL);
    *v8 = 0;
    v8[1] = 0;
    *(a2 + 256) = v8;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::arith::ConstantOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v7 = *(a2 + 256);
  }

  *v7 = a3;
  v7[1] = a4;
  __src = v28;
  v27 = 0x200000000;
  mlir::ValueRange::ValueRange(&v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  v12 = mlir::ValueRange::ValueRange(&v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::ConstantOp::inferReturnTypes(v12, v13, v14, v15, v16, Dictionary, v11, v17, v22, v23, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = __src;
  v19 = v27;
  v20 = *(a2 + 72);
  v21 = v20 + v27;
  if (v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v21, 8);
    LODWORD(v20) = *(a2 + 72);
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v20), v18, 8 * v19);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::arith::ConstantOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = a6;
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (*(a11 + 12))
      {
        v13 = 0;
LABEL_6:
        bzero((*a11 + 8 * v13), 8 - 8 * v13);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v13 = *(a11 + 8);
      if (v13 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  if (a7)
  {
    v16 = *a7;
    result = v16;
    if (!v16)
    {
      return result;
    }

    goto LABEL_10;
  }

  v18.var0 = "value";
  v18.var1 = 5;
  result = mlir::DictionaryAttr::get(&v17, v18);
  if (result)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
    *&v16 = result;
    *(&v16 + 1) = v15;
    if (result)
    {
LABEL_10:
      **a11 = mlir::CallOpInterface::getCallableForCallee(&v16);
      return 1;
    }
  }

  return result;
}

BOOL mlir::arith::ConstantOp::verifyInvariantsImpl(mlir::arith::ConstantOp *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v29[0] = v2;
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29) & 1) == 0)
    {
      return 0;
    }

    if (*(*this + 36))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    v29[0] = mlir::arith::ConstantOp::getValueAttr(this);
    v29[1] = v5;
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v29);
    if (*(*this + 36))
    {
      v7 = *this - 16;
    }

    else
    {
      v7 = 0;
    }

    if (CallableForCallee == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = *(*this + 36) ? *this - 16 : 0;
      v9 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v27[0] = mlir::arith::ConstantOp::getValueAttr(this);
      v27[1] = v10;
      if (v9 == mlir::CallOpInterface::getCallableForCallee(v27))
      {
        return 1;
      }
    }

    v27[0] = "failed to verify that all of {value, result} have same type";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, v29);
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

      v20 = __p;
      if (__p)
      {
        v21 = v35;
        v22 = __p;
        if (v35 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v35 = v20;
        operator delete(v22);
      }

      v15 = v32;
      if (!v32)
      {
        goto LABEL_50;
      }

      v23 = v33;
      v17 = v32;
      if (v33 == v32)
      {
LABEL_49:
        v33 = v15;
        operator delete(v17);
LABEL_50:
        if (v30 != &v31)
        {
          free(v30);
        }

        return v11;
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
LABEL_48:
      v17 = v32;
      goto LABEL_49;
    }
  }

  else
  {
    v27[0] = "requires attribute 'value'";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, v29);
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
      if (!v32)
      {
        goto LABEL_50;
      }

      v16 = v33;
      v17 = v32;
      if (v33 == v32)
      {
        goto LABEL_49;
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
      goto LABEL_48;
    }
  }

  return v11;
}

uint64_t mlir::arith::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v13 = 0uLL;
  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v11[0] = a1;
  v11[1] = &v12;
  v11[2] = a2;
  v5 = mlir::NamedAttrList::get(a2 + 112, **(v4 + 96));
  if (v5)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(v5, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(0x10uLL);
      *v7 = 0;
      v7[1] = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v11;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v11;
      {
        mlir::arith::ConstantOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
    }

    *v6 = v13;
  }

  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v13);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = CallableForCallee;
  ++*(a2 + 72);
  return 1;
}

void mlir::arith::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v12[0] = "value";
  v12[1] = 5;
  v11 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v5, v10, v11);
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  (*(*a2 + 40))(a2, ValueAttr);
  if (v10 != v12)
  {
    free(v10);
  }
}

BOOL mlir::arith::DivFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::DivFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::DivFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::arith::DivFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::arith::DivFOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v28;
  v27 = 0x200000000;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::ValueRange::ValueRange(&v25, *(a2 + 224), *(a2 + 232));
  v29[0] = a3;
  v29[1] = a4;
  if (v27 != 1)
  {
    if (!v27)
    {
      if (HIDWORD(v27))
      {
        v19 = 0;
LABEL_19:
        bzero(__src + 8 * v19, 8 - 8 * v19);
        goto LABEL_20;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v28, 1uLL, 8);
      v19 = v27;
      if (v27 != 1)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    LODWORD(v27) = 1;
  }

  v20 = mlir::ValueRange::dereference_iterator(v29, 0);
  v21 = __src;
  *__src = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v22 = v27;
  v23 = *(a2 + 72);
  v24 = v23 + v27;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::arith::DivFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::DivFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::DivSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::DivUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::ExtFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::ExtFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

BOOL mlir::arith::ExtFOp::verifyInvariantsImpl(mlir::arith::ExtFOp *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v45[0] = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v6 = *this;
  v7 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v45[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(v45);
    v11 = v9;
    v6 = *this;
  }

  else
  {
    v11 = 0;
    Value = 0;
  }

  v13 = *(v6 + 36);
  v14 = v6 - 16;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 36))
    {
      v18 = *this - 16;
    }

    else
    {
      v18 = 0;
    }

    v41[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = mlir::ArrayAttr::getValue(v41);
    if (v11 != v20)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v19 = 0;
    if (v11)
    {
      goto LABEL_49;
    }
  }

  if (!memcmp(Value, v19, 8 * v11))
  {
    v21 = *(*this + 36) ? *this - 16 : 0;
    v22 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v24 = *(*this + 36) ? *this - 16 : 0;
      v44 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v27 = mlir::ArrayAttr::getValue(&v44);
      v26 = v25;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v28 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v28 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v43 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v31 = mlir::ArrayAttr::getValue(&v43);
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    if (v26 == v30 && !memcmp(v27, v31, 8 * v26))
    {
      return 1;
    }
  }

LABEL_49:
  v41[0] = "failed to verify that input and output have the same tensor dimensions";
  v42 = 259;
  mlir::OpState::emitOpError(this, v41, v45);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
  v32 = result;
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
    result = v32;
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
      result = v32;
    }

    v33 = __p;
    if (__p)
    {
      v34 = v51;
      v35 = __p;
      if (v51 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v51 = v33;
      operator delete(v35);
      result = v32;
    }

    v36 = v48;
    if (v48)
    {
      v37 = v49;
      v38 = v48;
      if (v49 != v48)
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
        v38 = v48;
      }

      v49 = v36;
      operator delete(v38);
      result = v32;
    }

    if (v46 != &v47)
    {
      free(v46);
      return v32;
    }
  }

  return result;
}

uint64_t mlir::arith::ExtFOp::parse(uint64_t a1, void *a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14 = 0;
  v15 = 0;
  v13[0] = &v14;
  v13[1] = 1;
  v12 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v15, 0))
    {
      return 0;
    }

    v5 = v15;
    if (v15)
    {
      v6 = a2[32];
      if (!v6)
      {
        v7 = operator new(8uLL);
        *v7 = 0;
        a2[32] = v7;
        a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
        a2[35] = v19;
        a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
        a2[37] = v19;
        {
          mlir::arith::ExtFOp::readProperties();
        }

        a2[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
        v6 = a2[32];
        v5 = v15;
      }

      *v6 = v5;
    }
  }

  v11 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v8 = a2[1];
    v19[0] = a1;
    v19[1] = &v11;
    v19[2] = a2;
    v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
    if (!v9 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ExtFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19)) && ((*(*a1 + 104))(a1))
    {
      v19[0] = 0;
      if ((*(*a1 + 536))(a1, v19))
      {
        v14 = v19[0];
        v20 = 257;
        if ((*(*a1 + 400))(a1, "to", 2, v19))
        {
          v19[0] = 0;
          if ((*(*a1 + 536))(a1, v19))
          {
            v12 = v19[0];
            mlir::OperationState::addTypes(a2, &v12, 1);
            return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v13, v4, (a2 + 2)) & 1;
          }
        }
      }
    }
  }

  return 0;
}

void mlir::arith::ExtFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *this;
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 7uLL)
    {
      *v10 = 0x6874616D74736166;
      v9[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v9, "fastmath", 8uLL);
    }

    v30 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v11 = (*(*a2 + 16))(a2);
      v12 = (*(*v11 + 80))(v11) + v11[4] - v11[2];
      mlir::arith::FastMathFlagsAttr::print(&v30, a2);
      if (v12 == (*(*v11 + 80))(v11) + v11[4] - v11[2])
      {
        (*(*a2 + 40))(a2, v30);
      }
    }

    v6 = *this;
  }

  v30 = v32;
  v32[0] = "fastmath";
  v32[1] = 8;
  v31 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(v6);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v14, v30, v31);
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] == v18)
  {
    llvm::raw_ostream::write(v17, ":", 1uLL);
  }

  else
  {
    *v18 = 58;
    ++v17[4];
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = v23[4];
  if (v23[3] - v24 > 1uLL)
  {
    *v24 = 28532;
    v23[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v23, "to", 2uLL);
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  if (*(*this + 9))
  {
    v27 = *this - 16;
  }

  else
  {
    v27 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v30 != v32)
  {
    free(v30);
  }
}

void mlir::arith::ExtSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
}

BOOL mlir::arith::ExtSIOp::verifyInvariantsImpl(mlir::arith::ExtSIOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Value = 0;
  }

  v11 = *(v4 + 36);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 36))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::ArrayAttr::getValue(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Value, v17, 8 * v9))
  {
    if (*(*this + 36))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 36))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::ArrayAttr::getValue(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::ArrayAttr::getValue(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v72 = a2;
  if (mlir::Type::isSignlessInteger(&v72))
  {
    return 1;
  }

  v11 = v72;
  v12 = *v72;
  v13 = *(*v72 + 136);
  if (v13 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    goto LABEL_21;
  }

  {
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v12 + 8);
    v16 = *(v12 + 16);
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v65 = v12;
    v67 = v11;
    mlir::arith::ExtUIOp::fold();
    v11 = v67;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v65 + 8);
    v16 = *(v65 + 16);
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 != &v15[2 * v16] && *v17 == v14)
  {
    v23 = v17[1];
    goto LABEL_19;
  }

LABEL_17:
  v23 = 0;
LABEL_19:
  v76[0] = v11;
  v76[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v76);
  if (mlir::Type::isSignlessInteger(&isSplat))
  {
    return 1;
  }

  v11 = v72;
  v12 = *v72;
  v13 = *(*v72 + 136);
LABEL_21:
  if (v13 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_41;
  }

  {
    v66 = v12;
    v68 = v11;
    mlir::arith::ExtUIOp::fold();
    v11 = v68;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v66 + 8);
    v27 = *(v66 + 16);
    if (v27)
    {
      goto LABEL_28;
    }

LABEL_38:
    v34 = 0;
    goto LABEL_40;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v12 + 8);
  v27 = *(v12 + 16);
  if (!v27)
  {
    goto LABEL_38;
  }

LABEL_28:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_38;
  }

  v34 = v28[1];
LABEL_40:
  v69 = v11;
  v70 = v34;
  isSplat = mlir::ElementsAttr::isSplat(&v69);
  if (mlir::Type::isSignlessInteger(&isSplat))
  {
    return 1;
  }

LABEL_41:
  v71 = 261;
  v69 = a3;
  v70 = a4;
  mlir::Operation::emitOpError(a1, &v69, v76);
  if (v76[0])
  {
    LODWORD(isSplat) = 3;
    v74 = " #";
    v75 = 2;
    p_isSplat = &isSplat;
    v36 = v77;
    if (v78 >= v79)
    {
      if (v77 <= &isSplat && v77 + 24 * v78 > &isSplat)
      {
        v61 = &isSplat - v77;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        v36 = v77;
        p_isSplat = (v77 + v61);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        p_isSplat = &isSplat;
        v36 = v77;
      }
    }

    v37 = &v36[24 * v78];
    v38 = *p_isSplat;
    *(v37 + 2) = p_isSplat[2];
    *v37 = v38;
    v39 = ++v78;
    if (v76[0])
    {
      LODWORD(isSplat) = 5;
      v74 = a5;
      v40 = &isSplat;
      v41 = v77;
      if (v39 >= v79)
      {
        if (v77 <= &isSplat && v77 + 24 * v39 > &isSplat)
        {
          v62 = &isSplat - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v39 + 1, 24);
          v41 = v77;
          v40 = (v77 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v39 + 1, 24);
          v40 = &isSplat;
          v41 = v77;
        }
      }

      v42 = &v41[24 * v78];
      v43 = *v40;
      *(v42 + 2) = v40[2];
      *v42 = v43;
      v44 = ++v78;
      if (v76[0])
      {
        LODWORD(isSplat) = 3;
        v74 = " must be signless-fixed-width-integer-like, but got ";
        v75 = 52;
        v45 = &isSplat;
        v46 = v77;
        if (v44 >= v79)
        {
          if (v77 <= &isSplat && v77 + 24 * v44 > &isSplat)
          {
            v63 = &isSplat - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v44 + 1, 24);
            v46 = v77;
            v45 = (v77 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v44 + 1, 24);
            v45 = &isSplat;
            v46 = v77;
          }
        }

        v47 = &v46[24 * v78];
        v48 = *v45;
        *(v47 + 2) = v45[2];
        *v47 = v48;
        ++v78;
        if (v76[0])
        {
          v49 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v72);
          v50 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &isSplat && v77 + 24 * v78 > &isSplat)
            {
              v64 = &isSplat - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v50 = v77;
              v49 = (v77 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v49 = &isSplat;
              v50 = v77;
            }
          }

          v51 = &v50[24 * v78];
          v52 = *v49;
          *(v51 + 2) = v49[2];
          *v51 = v52;
          ++v78;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
  if (v76[0])
  {
    mlir::InFlightDiagnostic::report(v76);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v84;
      v55 = __p;
      if (v84 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v84 = v53;
      operator delete(v55);
    }

    v56 = v81;
    if (v81)
    {
      v57 = v82;
      v58 = v81;
      if (v82 != v81)
      {
        do
        {
          v60 = *--v57;
          v59 = v60;
          *v57 = 0;
          if (v60)
          {
            operator delete[](v59);
          }
        }

        while (v57 != v56);
        v58 = v81;
      }

      v82 = v56;
      operator delete(v58);
    }

    if (v77 != v80)
    {
      free(v77);
    }
  }

  return v9;
}

uint64_t mlir::arith::ExtSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::arith::ExtUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

BOOL mlir::arith::FPToSIOp::verifyInvariantsImpl(mlir::arith::FPToSIOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Value = 0;
  }

  v11 = *(v4 + 36);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 36))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::ArrayAttr::getValue(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Value, v17, 8 * v9))
  {
    if (*(*this + 36))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 36))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::ArrayAttr::getValue(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::ArrayAttr::getValue(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::FPToSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::arith::FPToUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::arith::FloorDivSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::IndexCastOp::verifyInvariantsImpl(mlir::arith::IndexCastOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps9(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps9(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Value = 0;
  }

  v11 = *(v4 + 36);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 36))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::ArrayAttr::getValue(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Value, v17, 8 * v9))
  {
    if (*(*this + 36))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 36))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::ArrayAttr::getValue(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::ArrayAttr::getValue(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps9(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v91 = *MEMORY[0x1E69E9840];
  v76 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v76))
  {
    return 1;
  }

  v11 = *v76;
  {
    v70 = v11;
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
    v11 = v70;
  }

  v12 = (v11 + 72);
  v13 = *(v11 + 96);
  if ((v13 & 2) == 0)
  {
    v12 = *v12;
  }

  if (!(*(v13 & 0xFFFFFFFFFFFFFFF8))(v12, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_24;
  }

  v14 = v76;
  if (!v76)
  {
    goto LABEL_22;
  }

  v15 = *v76;
  {
    v68 = v15;
    v71 = v14;
    mlir::arith::ExtUIOp::fold();
    v14 = v71;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v68 + 8);
    v18 = *(v68 + 16);
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_12:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_22;
  }

  v25 = v19[1];
LABEL_23:
  v80[0] = v14;
  v80[1] = v25;
  isSplat = mlir::ElementsAttr::isSplat(v80);
  if (mlir::Type::isSignlessIntOrIndex(&isSplat))
  {
    return 1;
  }

LABEL_24:
  v26 = v76;
  v27 = *v76;
  if (*(*v76 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v55 = *(v27 + 8);
      v56 = *(v27 + 16);
      if (!v56)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v69 = v27;
      v72 = v26;
      mlir::arith::ExtUIOp::fold();
      v26 = v72;
      v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v55 = *(v69 + 8);
      v56 = *(v69 + 16);
      if (!v56)
      {
        goto LABEL_79;
      }
    }

    v57 = v55;
    v58 = v56;
    do
    {
      v59 = v58 >> 1;
      v60 = &v57[2 * (v58 >> 1)];
      v62 = *v60;
      v61 = v60 + 2;
      v58 += ~(v58 >> 1);
      if (v62 < v54)
      {
        v57 = v61;
      }

      else
      {
        v58 = v59;
      }
    }

    while (v58);
    if (v57 != &v55[2 * v56] && *v57 == v54)
    {
      v63 = v57[1];
      goto LABEL_81;
    }

LABEL_79:
    v63 = 0;
LABEL_81:
    v73 = v26;
    v74 = v63;
    isSplat = mlir::ElementsAttr::isSplat(&v73);
    if (!mlir::Type::isSignlessInteger(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_25;
    }

    return 1;
  }

LABEL_25:
  v75 = 261;
  v73 = a3;
  v74 = a4;
  mlir::Operation::emitOpError(a1, &v73, v80);
  if (v80[0])
  {
    LODWORD(isSplat) = 3;
    v78 = " #";
    v79 = 2;
    p_isSplat = &isSplat;
    v29 = v81;
    if (v82 >= v83)
    {
      if (v81 <= &isSplat && v81 + 24 * v82 > &isSplat)
      {
        v64 = &isSplat - v81;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
        v29 = v81;
        p_isSplat = (v81 + v64);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
        p_isSplat = &isSplat;
        v29 = v81;
      }
    }

    v30 = &v29[24 * v82];
    v31 = *p_isSplat;
    *(v30 + 2) = p_isSplat[2];
    *v30 = v31;
    v32 = ++v82;
    if (v80[0])
    {
      LODWORD(isSplat) = 5;
      v78 = a5;
      v33 = &isSplat;
      v34 = v81;
      if (v32 >= v83)
      {
        if (v81 <= &isSplat && v81 + 24 * v32 > &isSplat)
        {
          v65 = &isSplat - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v32 + 1, 24);
          v34 = v81;
          v33 = (v81 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v32 + 1, 24);
          v33 = &isSplat;
          v34 = v81;
        }
      }

      v35 = &v34[24 * v82];
      v36 = *v33;
      *(v35 + 2) = v33[2];
      *v35 = v36;
      v37 = ++v82;
      if (v80[0])
      {
        LODWORD(isSplat) = 3;
        v78 = " must be signless-integer-like or memref of signless-integer, but got ";
        v79 = 70;
        v38 = &isSplat;
        v39 = v81;
        if (v37 >= v83)
        {
          if (v81 <= &isSplat && v81 + 24 * v37 > &isSplat)
          {
            v66 = &isSplat - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v37 + 1, 24);
            v39 = v81;
            v38 = (v81 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v37 + 1, 24);
            v38 = &isSplat;
            v39 = v81;
          }
        }

        v40 = &v39[24 * v82];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v82;
        if (v80[0])
        {
          v42 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v76);
          v43 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &isSplat && v81 + 24 * v82 > &isSplat)
            {
              v67 = &isSplat - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v43 = v81;
              v42 = (v81 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v42 = &isSplat;
              v43 = v81;
            }
          }

          v44 = &v43[24 * v82];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v82;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
  if (v80[0])
  {
    mlir::InFlightDiagnostic::report(v80);
  }

  if (v90 == 1)
  {
    if (v89 != &v90)
    {
      free(v89);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v88;
      v48 = __p;
      if (v88 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v88 = v46;
      operator delete(v48);
    }

    v49 = v85;
    if (v85)
    {
      v50 = v86;
      v51 = v85;
      if (v86 != v85)
      {
        do
        {
          v53 = *--v50;
          v52 = v53;
          *v50 = 0;
          if (v53)
          {
            operator delete[](v52);
          }
        }

        while (v50 != v49);
        v51 = v85;
      }

      v86 = v49;
      operator delete(v51);
    }

    if (v81 != v84)
    {
      free(v81);
    }
  }

  return v9;
}

uint64_t mlir::arith::IndexCastOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::arith::IndexCastUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

BOOL mlir::arith::MaxNumFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::MaxNumFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::MaxNumFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::MaxNumFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaxNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::MaxSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::MaxUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::MaximumFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::MaximumFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::MaximumFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::MaximumFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaximumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::arith::MinNumFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::MinNumFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::MinNumFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::MinNumFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::MinSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::MinUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::MinimumFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::MinimumFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::MinimumFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::MinimumFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinimumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::arith::MulFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::MulFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::MulFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::arith::MulFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::arith::MulFOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v28;
  v27 = 0x200000000;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::ValueRange::ValueRange(&v25, *(a2 + 224), *(a2 + 232));
  v29[0] = a3;
  v29[1] = a4;
  if (v27 != 1)
  {
    if (!v27)
    {
      if (HIDWORD(v27))
      {
        v19 = 0;
LABEL_19:
        bzero(__src + 8 * v19, 8 - 8 * v19);
        goto LABEL_20;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v28, 1uLL, 8);
      v19 = v27;
      if (v27 != 1)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    LODWORD(v27) = 1;
  }

  v20 = mlir::ValueRange::dereference_iterator(v29, 0);
  v21 = __src;
  *__src = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v22 = v27;
  v23 = *(a2 + 72);
  v24 = v23 + v27;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::arith::MulFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::arith::MulIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::MulIOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::MulIOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::arith::MulIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::arith::MulIOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v28;
  v27 = 0x200000000;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::ValueRange::ValueRange(&v25, *(a2 + 224), *(a2 + 232));
  v29[0] = a3;
  v29[1] = a4;
  if (v27 != 1)
  {
    if (!v27)
    {
      if (HIDWORD(v27))
      {
        v19 = 0;
LABEL_19:
        bzero(__src + 8 * v19, 8 - 8 * v19);
        goto LABEL_20;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v28, 1uLL, 8);
      v19 = v27;
      if (v27 != 1)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    LODWORD(v27) = 1;
  }

  v20 = mlir::ValueRange::dereference_iterator(v29, 0);
  v21 = __src;
  *__src = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v22 = v27;
  v23 = *(a2 + 72);
  v24 = v23 + v27;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::arith::MulIOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v6, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::MulSIExtendedOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "low", 3);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);

  return (a2)(a3, v9, "high", 4);
}

void mlir::arith::MulSIExtendedOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  v6 = v18;
  if (v18 != 2)
  {
    if (v18 <= 2)
    {
      if (HIDWORD(v18) > 1 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v19, 2uLL, 8), v6 = v18, v18 != 2))
      {
        bzero(__src + 8 * v6, 16 - 8 * v6);
      }
    }

    LODWORD(v18) = 2;
  }

  v7 = *(mlir::ValueRange::dereference_iterator(&v20, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(mlir::ValueRange::dereference_iterator(&v20, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = __src;
  *__src = v7;
  v9[1] = v8;
  v10 = v18;
  v11 = *(a2 + 72);
  v12 = v11 + v18;
  if (v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v12, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  if (v10)
  {
    memcpy((*(a2 + 64) + 8 * v11), v9, 8 * v10);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::arith::MulSIExtendedOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a4;
  v16[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 2)
  {
    if (v11 <= 2)
    {
      if (*(a11 + 12) > 1u || (llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 2uLL, 8), v11 = *(a11 + 8), v11 != 2))
      {
        bzero((*a11 + 8 * v11), 16 - 8 * v11);
      }
    }

    *(a11 + 8) = 2;
  }

  v12 = *(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  v14 = *a11;
  *v14 = v12;
  v14[1] = v13;
  return 1;
}

BOOL mlir::arith::MulSIExtendedOp::verifyInvariantsImpl(mlir::arith::MulSIExtendedOp *this)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 36) ? *this - 16 : 0;
  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u) & 1) == 0)
  {
    return 0;
  }

  v7 = *this;
  v8 = *(*this + 72);
  v9 = *(*(v8 + 56) + 8);
  if ((v9 ^ *(*(v8 + 24) + 8)) > 7 || ((v10 = *(v7 + 36), v11 = v7 - 16, v10) ? (v12 = v11) : (v12 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) ^ v9) > 7 || (*(*this + 36) ? (v13 = *this - 16) : (v13 = 0), (v14 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8), *(*this + 36)) ? (v15 = *this - 16) : (v15 = 0), (v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 1), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) ^ v14) > 7) || (*(*this + 36) ? (v17 = *this - 16) : (v17 = 0), v18 = 1, v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 1), (*(*(*(*this + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) + 8)) >= 8))))
  {
    v29 = "failed to verify that all of {lhs, rhs, low, high} have same type";
    v30 = 259;
    mlir::OpState::emitOpError(this, &v29, v31);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
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

      v23 = v34;
      if (v34)
      {
        v24 = v35;
        v25 = v34;
        if (v35 != v34)
        {
          do
          {
            v28 = *--v24;
            v27 = v28;
            *v24 = 0;
            if (v28)
            {
              operator delete[](v27);
            }
          }

          while (v24 != v23);
          v25 = v34;
        }

        v35 = v23;
        operator delete(v25);
      }

      if (v32 != &v33)
      {
        free(v32);
      }
    }
  }

  return v18;
}

uint64_t mlir::arith::MulSIExtendedOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (v8 = v6, mlir::OperationState::addTypes(a2, &v8, 1), mlir::OperationState::addTypes(a2, &v8, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, *v7[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::MulSIExtendedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v19 = v21;
  v20 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v19, v20);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::arith::MulUIExtendedOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (v8 = v6, mlir::OperationState::addTypes(a2, &v8, 1), mlir::OperationState::addTypes(a2, &v8, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, *v7[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::NegFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::NegFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

void mlir::arith::NegFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v9 = mlir::arith::FastMathFlagsAttr::get(*a1, a5);
  v10 = v9;
  v11 = *(a2 + 256);
  if (v11)
  {
    *v11 = v9;
    v12 = *(a2 + 72);
    if (v12 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v12 + 1, 8);
      LODWORD(v12) = *(a2 + 72);
    }
  }

  else
  {
    v13 = operator new(8uLL);
    *v13 = 0;
    *(a2 + 256) = v13;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v16;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v15;
    {
      mlir::arith::NegFOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v10;
    v12 = *(a2 + 72);
    if (v12 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
}

BOOL mlir::arith::NegFOp::verifyInvariantsImpl(mlir::arith::NegFOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::arith::NegFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v14, 0))
  {
    return 0;
  }

  v4 = v14;
  if (v14)
  {
    v5 = *(a2 + 256);
    if (!v5)
    {
      v6 = operator new(8uLL);
      *v6 = 0;
      *(a2 + 256) = v6;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v12;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v12;
      {
        mlir::arith::NegFOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v5 = *(a2 + 256);
      v4 = v14;
    }

    *v5 = v4;
  }

LABEL_10:
  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = a2;
  v8 = mlir::NamedAttrList::get(a2 + 112, **(v7 + 96));
  if (v8)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::NegFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v9 = v12[0];
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = v9;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v15, v9, a2 + 16) & 1;
}

void mlir::arith::NegFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v6 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if (v10[3] - v11 > 7uLL)
    {
      *v11 = 0x6874616D74736166;
      v10[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "fastmath", 8uLL);
    }

    v29 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v12 = (*(*a2 + 16))(a2);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::arith::FastMathFlagsAttr::print(&v29, a2);
      if (v13 == (*(*v12 + 80))(v12) + v12[4] - v12[2])
      {
        (*(*a2 + 40))(a2, v29);
      }
    }
  }

  v29 = v31;
  v31[0] = "fastmath";
  v31[1] = 8;
  v30 = 0x200000001;
  v14 = mlir::Attribute::getContext((*this + 24));
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(v14, 0))
  {
    v16 = v30;
    if (v30 >= HIDWORD(v30))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 16);
      v16 = v30;
    }

    v17 = v29 + 16 * v16;
    *v17 = "fastmath";
    v17[1] = 8;
    LODWORD(v30) = v30 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v19, v29, v30);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  if (*(*this + 9))
  {
    v26 = *this - 16;
  }

  else
  {
    v26 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::arith::OrIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::RemFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::RemFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::RemFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::RemFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::RemFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::RemSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::RemUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::SIToFPOp::verifyInvariantsImpl(mlir::arith::SIToFPOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Value = 0;
  }

  v11 = *(v4 + 36);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 36))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::ArrayAttr::getValue(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Value, v17, 8 * v9))
  {
    if (*(*this + 36))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 36))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::ArrayAttr::getValue(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::ArrayAttr::getValue(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::SIToFPOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

BOOL mlir::arith::ShLIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::ShLIOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::ShLIOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::ShLIOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v6, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ShLIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::ShRSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::ShRUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::SubFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::SubFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::SubFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::arith::SubFOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::arith::SubIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::SubIOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::SubIOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::arith::SubIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::arith::SubIOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v28;
  v27 = 0x200000000;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::ValueRange::ValueRange(&v25, *(a2 + 224), *(a2 + 232));
  v29[0] = a3;
  v29[1] = a4;
  if (v27 != 1)
  {
    if (!v27)
    {
      if (HIDWORD(v27))
      {
        v19 = 0;
LABEL_19:
        bzero(__src + 8 * v19, 8 - 8 * v19);
        goto LABEL_20;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v28, 1uLL, 8);
      v19 = v27;
      if (v27 != 1)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    LODWORD(v27) = 1;
  }

  v20 = mlir::ValueRange::dereference_iterator(v29, 0);
  v21 = __src;
  *__src = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v22 = v27;
  v23 = *(a2 + 72);
  v24 = v23 + v27;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::arith::SubIOp::parse(uint64_t a1, void *a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v5 = a2[1];
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    v6 = mlir::NamedAttrList::get((a2 + 14), **(v5 + 96));
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v6, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        v8[0] = v9;
        mlir::OperationState::addTypes(a2, v8, 1);
        if ((*(*a1 + 728))(a1, v13, v8[0], a2 + 2))
        {
          return (*(*a1 + 728))(a1, v11, v8[0], a2 + 2) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::TruncFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
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

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_72;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_71;
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
    goto LABEL_70;
  }

  v74.var0 = "fastmath";
  v74.var1 = 8;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (!v8)
  {
LABEL_46:
    v75.var0 = "roundingmode";
    v75.var1 = 12;
    v36 = mlir::DictionaryAttr::get(&v58, v75);
    if (v36)
    {
      v37 = v36;
      if (!mlir::arith::RoundingModeAttr::classof(v36))
      {
        a3(v62, a4);
        if (v62[0])
        {
          v59 = 3;
          v61 = 57;
          v39 = &v59;
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v56);
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
            mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
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

        if ((v72 & 1) == 0)
        {
          return 0;
        }

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

        v21 = v67;
        if (!v67)
        {
          goto LABEL_72;
        }

        v50 = v68;
        v23 = v67;
        if (v68 == v67)
        {
          goto LABEL_71;
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

        while (v50 != v21);
        goto LABEL_70;
      }

      a1[1] = v37;
    }

    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v8;
    goto LABEL_46;
  }

  v9 = v8;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 53;
    v10 = &v59;
    v11 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v54 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v11 = v63;
        v10 = (v63 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v10 = &v59;
        v11 = v63;
      }
    }

    v12 = &v11[24 * v64];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v64;
    if (v62[0])
    {
      v14 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
      v15 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v55 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v15 = v63;
          v14 = (v63 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v14 = &v59;
          v15 = v63;
        }
      }

      v16 = &v15[24 * v64];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
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

  v18 = __p;
  if (__p)
  {
    v19 = v70;
    v20 = __p;
    if (v70 != __p)
    {
      do
      {
        v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
      }

      while (v19 != v18);
      v20 = __p;
    }

    v70 = v18;
    operator delete(v20);
  }

  v21 = v67;
  if (v67)
  {
    v22 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_71;
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
LABEL_70:
    v23 = v67;
LABEL_71:
    v68 = v21;
    operator delete(v23);
  }

LABEL_72:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::arith::TruncFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "fastmath", 8, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "roundingmode", 12, v8);
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

unint64_t mlir::arith::TruncFOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 12)
  {
    if (a4 == 8 && *a3 == 0x6874616D74736166)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x676E69646E756F72 || *(a3 + 8) != 1701080941)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::arith::TruncFOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12)
  {
    if (*a2 == 0x676E69646E756F72 && *(a2 + 8) == 1701080941)
    {
      if (a4)
      {
        v5 = result;
        v7 = mlir::arith::RoundingModeAttr::classof(a4);
        result = v5;
        if (v7)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[1] = v8;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::TruncFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "fastmath", 8, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "roundingmode", 12, v5);
  }
}

BOOL mlir::arith::TruncFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v9, "roundingmode", 0xC, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || (mlir::arith::RoundingModeAttr::classof(a1) & 1) != 0)
  {
    return 1;
  }

  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v29) = 3;
    v30 = "attribute '";
    v31 = 11;
    v11 = &v29;
    v12 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v27 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v12 = v35;
        v11 = v35 + v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v11 = &v29;
        v12 = v35;
      }
    }

    v13 = &v12[24 * v36];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v36;
    if (v33)
    {
      v32 = 261;
      v29 = a2;
      v30 = a3;
      mlir::Diagnostic::operator<<(&v34, &v29);
      if (v33)
      {
        LODWORD(v29) = 3;
        v30 = "' failed to satisfy constraint: Floating point rounding mode";
        v31 = 60;
        v15 = &v29;
        v16 = v35;
        if (v36 >= v37)
        {
          if (v35 <= &v29 && v35 + 24 * v36 > &v29)
          {
            v28 = &v29 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v16 = v35;
            v15 = v35 + v28;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v15 = &v29;
            v16 = v35;
          }
        }

        v17 = &v16[24 * v36];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v36;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v9;
}

BOOL mlir::arith::TruncFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::arith::TruncFOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(uint64_t a1, uint64_t *a2)
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

  v5 = mlir::arith::RoundingModeAttr::classof(v37);
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

  v38 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::RoundingModeAttr]";
  v39 = 79;
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

uint64_t mlir::arith::TruncFOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::arith::TruncFOp::verifyInvariantsImpl(mlir::arith::TruncFOp *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v40 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v4, "roundingmode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v40) & 1) == 0)
  {
    return 0;
  }

  v40 = *this;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v40) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v6 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v8 = *this;
  v9 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v40 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(&v40);
    v13 = v11;
    v8 = *this;
  }

  else
  {
    v13 = 0;
    Value = 0;
  }

  v15 = *(v8 + 36);
  v16 = v8 - 16;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 36))
    {
      v20 = *this - 16;
    }

    else
    {
      v20 = 0;
    }

    v36[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v21 = mlir::ArrayAttr::getValue(v36);
    if (v13 != v22)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v21 = 0;
    if (v13)
    {
      goto LABEL_50;
    }
  }

  if (!memcmp(Value, v21, 8 * v13))
  {
    v23 = *(*this + 36) ? *this - 16 : 0;
    v24 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v26 = *(*this + 36) ? *this - 16 : 0;
      v39 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v29 = mlir::ArrayAttr::getValue(&v39);
      v28 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v30 = *(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v30 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v38 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v33 = mlir::ArrayAttr::getValue(&v38);
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    if (v28 == v32 && !memcmp(v29, v33, 8 * v28))
    {
      return 1;
    }
  }

LABEL_50:
  v36[0] = "failed to verify that input and output have the same tensor dimensions";
  v37 = 259;
  mlir::OpState::emitOpError(this, v36, &v40);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
  if (v40)
  {
    v34 = result;
    mlir::InFlightDiagnostic::report(&v40);
    result = v34;
  }

  if (v41[192] == 1)
  {
    v35 = result;
    mlir::Diagnostic::~Diagnostic(v41);
    return v35;
  }

  return result;
}

BOOL mlir::arith::TruncFOp::parse(uint64_t a1, void *a2)
{
  v64[9] = *MEMORY[0x1E69E9840];
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v47[0] = v48;
  v47[1] = 1;
  v45 = 0;
  v46 = 0;
  v44[0] = &v45;
  v44[1] = 1;
  v43.var1 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v48, 1) & 1) == 0)
  {
    return 0;
  }

  AttrData = 0;
  v43.var0 = 0;
  v63[0] = v64;
  v63[1] = 0x400000000;
  v64[8] = 4;
  v5 = (*(*a1 + 40))(a1);
  v56[0] = xmmword_1E86D27B0;
  v56[1] = *&off_1E86D27C0;
  v56[2] = xmmword_1E86D27D0;
  v54 = xmmword_1E86D2790;
  v55 = *&off_1E86D27A0;
  if (((*(*a1 + 424))(a1, &AttrData, &v54, 5) & 1) != 0 || (*&v54 = 0, v7 = (*(*a1 + 32))(a1), NoneType = mlir::Builder::getNoneType(v7, v8), v10 = (*(*a1 + 472))(a1, &v54, NoneType), (v10 & 0x100) == 0))
  {
LABEL_6:
    v6.var0 = v43.var0;
    if (v43.var0)
    {
      v11 = mlir::arith::symbolizeRoundingMode(AttrData, v6);
      if ((v11 & 0x100000000) == 0)
      {
        v40 = "invalid ";
        v41 = 259;
        (*(*a1 + 24))(&v54, a1, v5, &v40);
        if (v54)
        {
          LODWORD(v50) = 3;
          var0 = "roundingmode attribute specification: ";
          v52 = 39;
          v12 = &v50;
          v13 = *(&v55 + 1);
          if (LODWORD(v56[0]) >= DWORD1(v56[0]))
          {
            if (*(&v55 + 1) <= &v50 && *(&v55 + 1) + 24 * LODWORD(v56[0]) > &v50)
            {
              v39 = &v50 - *(&v55 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55 + 8, v56 + 8, LODWORD(v56[0]) + 1, 24);
              v13 = *(&v55 + 1);
              v12 = &v39[*(&v55 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55 + 8, v56 + 8, LODWORD(v56[0]) + 1, 24);
              v12 = &v50;
              v13 = *(&v55 + 1);
            }
          }

          v14 = v13 + 24 * LODWORD(v56[0]);
          v15 = *v12;
          *(v14 + 16) = v12[2];
          *v14 = v15;
          ++LODWORD(v56[0]);
          if (v54)
          {
            v53 = 261;
            v50 = AttrData;
            var0 = v43.var0;
            mlir::Diagnostic::operator<<(&v54 + 8, &v50);
            if (v54)
            {
              mlir::Diagnostic::operator<<(&v54 + 8, 34);
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
        v17 = result;
        if (v54)
        {
          mlir::InFlightDiagnostic::report(&v54);
          result = v17;
        }

        if (v62)
        {
          if (v61 != &v62)
          {
            free(v61);
            result = v17;
          }

          v18 = __p;
          if (__p)
          {
            v19 = v60;
            v20 = __p;
            if (v60 != __p)
            {
              do
              {
                v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
              }

              while (v19 != v18);
              v20 = __p;
            }

            v60 = v18;
            operator delete(v20);
            result = v17;
          }

          v21 = v57;
          if (v57)
          {
            v22 = v58;
            v23 = v57;
            if (v58 != v57)
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
              v23 = v57;
            }

            v58 = v21;
            operator delete(v23);
            result = v17;
          }

          if (*(&v55 + 1) != (v56 + 8))
          {
            free(*(&v55 + 1));
            result = v17;
          }
        }

        goto LABEL_61;
      }

      v26 = v11;
      v27 = (*(*a1 + 32))(a1);
      v28 = mlir::IntegerType::get(*v27, 32, 0);
      v29 = mlir::IntegerAttr::get(v28, v26);
      v30 = a2[32];
      if (!v30)
      {
        v31 = operator new(0x10uLL);
        *v31 = 0;
        v31[1] = 0;
        a2[32] = v31;
        a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
        a2[35] = &v54;
        a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
        a2[37] = &v54;
        {
          mlir::arith::TruncFOp::readProperties();
        }

        a2[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
        v30 = a2[32];
      }

      *(v30 + 8) = v29;
    }

    if (v63[0] != v64)
    {
      free(v63[0]);
    }

    if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
    {
      goto LABEL_44;
    }

    if (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v46, 0))
    {
      v32 = v46;
      if (v46)
      {
        v33 = a2[32];
        if (!v33)
        {
          v34 = operator new(0x10uLL);
          *v34 = 0;
          v34[1] = 0;
          a2[32] = v34;
          a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
          a2[35] = &v54;
          a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
          a2[37] = &v54;
          {
            mlir::arith::TruncFOp::readProperties();
          }

          a2[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
          v33 = a2[32];
          v32 = v46;
        }

        *v33 = v32;
      }

LABEL_44:
      v63[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        v35 = a2[1];
        *&v54 = a1;
        *(&v54 + 1) = v63;
        *&v55 = a2;
        v36 = mlir::NamedAttrList::get((a2 + 14), **(v35 + 96));
        if (!v36 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v36, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v54) & 1) != 0)
        {
          v37 = mlir::NamedAttrList::get((a2 + 14), *(*(v35 + 96) + 8));
          if (!v37 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v37, "roundingmode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v54)) && ((*(*a1 + 104))(a1))
          {
            *&v54 = 0;
            if ((*(*a1 + 536))(a1, &v54))
            {
              v45 = v54;
              LOWORD(v56[0]) = 257;
              if ((*(*a1 + 400))(a1, "to", 2, &v54))
              {
                *&v54 = 0;
                if ((*(*a1 + 536))(a1, &v54))
                {
                  v43.var1 = v54;
                  mlir::OperationState::addTypes(a2, &v43.var1, 1);
                  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v47, v44, v4, (a2 + 2)) & 1;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v10)
  {
    mlir::NamedAttrList::append(v63, "roundingmode", 12, v54);
    AttrData = mlir::OpaqueAttr::getAttrData(&v54);
    v43.var0 = v6.var0;
    goto LABEL_6;
  }

  result = 0;
LABEL_61:
  if (v63[0] != v64)
  {
    v38 = result;
    free(v63[0]);
    return v38;
  }

  return result;
}